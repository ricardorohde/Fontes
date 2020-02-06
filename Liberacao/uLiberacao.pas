unit uLiberacao;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, Vcl.Forms, IPPeerClient, REST.Response.Adapter,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,StrUtils, AdvPanel,
  Vcl.ExtCtrls, AdvGlowButton, dxGDIPlusClasses;

type
  TfrmLiberacao = class(TForm)
    txtRazao: TEdit;
    txtCnpj: TEdit;
    txtSerialHd: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    txtMensagem: TEdit;
    Label6: TLabel;
    txtDesenvolvedora: TEdit;
    Label7: TLabel;
    txtChaveKey: TEdit;
    Label8: TLabel;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    DADOS: TFDMemTable;
    DADOSID: TWideStringField;
    DADOSIDUSUARIO: TWideStringField;
    DADOSIDEMPRESA: TWideStringField;
    DADOSSERIALHD: TWideStringField;
    DADOSOBS: TWideStringField;
    DADOSDATA_INICIAL: TWideStringField;
    DADOSDATA_FINAL: TWideStringField;
    DADOSLIBERADO: TWideStringField;
    DADOSUID: TWideStringField;
    DADOSREVENDA: TWideStringField;
    DADOSEID: TWideStringField;
    DADOSRAZAO: TWideStringField;
    DADOSCNPJ: TWideStringField;
    btnLiberar: TAdvGlowButton;
    pnBotoes: TFlowPanel;
    pnPrincipal: TAdvPanel;
    btnCancelar: TAdvGlowButton;
    Image1: TImage;
    Label10: TLabel;
    lbNomeSistema: TLabel;
    lbDescritivo: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnLiberarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure CriarLiberacao(DataInicial, DataFinal : TDate; SerialHD : string);
    procedure FormShow(Sender: TObject);
    procedure txtSerialHdEnter(Sender: TObject);
  private
    { Private declarations }
    function Conectado: boolean;

  public
    { Public declarations }
    LiberadoJson: string;
    Liberado:Integer;
  end;

var
  frmLiberacao: TfrmLiberacao;

implementation

uses
  Winapi.Windows, System.Win.Registry, uSocketPing, uFuncoes,
  uMenu;

{$R *.dfm}
{ TForm1 }



procedure TfrmLiberacao.btnCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmLiberacao.btnLiberarClick(Sender: TObject);
var
  DataInicial, DataFinal,ResultDataInicial,ResultDataFinal,
  IDia,IMes,IAno,FDia,FMes,FAno, chave, serialhd: string;
  Segredo,Resultado, dv: Integer;
  DataAtual: TDateTime;
  myYear, myMonth, myDay : Word;
  procedure invalida_aborta;
  begin
    Application.MessageBox('Chave de ativação inválida!', 'Atenção', MB_ICONWARNING);
    Abort;
  end;
begin
  chave :=txtChaveKey.Text;
  if trim(chave)='' then
  begin
    if Liberado = 1 then
    begin
      CriarLiberacao(dtpDataInicial.Date, dtpDataFinal.Date, txtSerialHd.Text) ;
      Application.MessageBox('Liberação efetivada com sucesso!', 'Atenção', MB_ICONINFORMATION);
      self.Tag :=1;
      self.close;
    end
    else
    begin
      Application.MessageBox('Sistema bloqueado! Entre em contato com o suporte', 'Atenção', MB_ICONWARNING);
    end;
  end
  else
  begin
    try
      chave := Crypt('D',chave);
    except
      invalida_aborta;
    end;

    if Length(chave) = 29 then
    begin
      //OBTEM A DATA INICIAL QUE VEIO INVERTIDA
      DataInicial := ReverseString(Copy(chave,1,8));
      IDia := Copy(DataInicial,1,2);
      IMes := Copy(DataInicial,3,2);
      IAno := Copy(DataInicial,5,8);
      ResultDataInicial := IDia+'/'+IMes+'/'+IAno;
      //OBTEM A DATA FINAL QUE VEIO INVERTIDA
      DataFinal := ReverseString(Copy(chave,10,8));
      FDia := Copy(DataFinal,1,2);
      FMes := Copy(DataFinal,3,2);
      FAno := Copy(DataFinal,5,8);
      ResultDataFinal := FDia+'/'+FMes+'/'+FAno;
      // VERIFICA SE A DATA INICIAL É VALIDA
      if not StrIsDate(ResultDataInicial) then invalida_aborta;
      // VERIFICA SE A DATA FINAL É VALIDA
      if not StrIsDate(ResultDataFinal) then  invalida_aborta;

      serialhd := Copy(chave,19,8);
      //verifica se o serial do hd é o mesmo da máquina atual
      if serialhd <> txtSerialHd.Text  then invalida_aborta;

      //pega o verificador
      dv := StrToInt(Copy(chave,28,2));

      DataAtual := Date;
      DataAtual := IncMonth(DataAtual);
      DecodeDate(DataAtual, myYear, myMonth, myDay);

      //SEGREDO DA LIBERACAO DO SISTEMA
      Segredo := 17;
      //SOMA O VALOR DO SEGREDO + DIA ATUAL
      Resultado := Segredo + myDay;

      // VERIFICA DIGITO PRA VALIDAR LIBERACAO
      if Resultado = dv then
      begin
        CriarLiberacao(StrToDate(copy(ResultDataInicial,1,10)), StrToDate(copy(ResultDataFinal,1,10)), txtSerialHd.Text);
        Application.MessageBox('Liberação efetivada com sucesso!', 'Atenção', MB_ICONINFORMATION);
        self.Tag :=1;
        self.close;
      end;
    end
    else
      invalida_aborta;
  end;
end;

function TfrmLiberacao.Conectado: boolean;
var
  R: Integer;
begin
  R := uSocketPing.Ping(10000, 'www.google.com.br', 80);
  if R = 0 then
    Result := True
  else
    Result := False;
end;

procedure TfrmLiberacao.CriarLiberacao(DataInicial, DataFinal : TDate ; SerialHD : string) ;
var
  assinatura : string;
begin
  // monta a string de assinatura
  assinatura := FormatDateTime('dd/mm/yyyy',DataInicial) +  //10 posicoes
                FormatDateTime('dd/mm/yyyy',DataFinal) +    //10 posicoes
                FormatDateTime('dd/mm/yyyy',Date) +          //10 posicoes - data atual
                copy(trim(SerialHD), 1, 8) ;         //8 posicoes - nro de serie do HD
  //criptografa a bagaça
  assinatura := Crypt('C',assinatura);
  //Grava no XML de config
  GravaStringConfig('ASSINATURA_VALIDACAO', assinatura, frmMenu.cdsCFG.FileName);
end;

procedure TfrmLiberacao.FormCreate(Sender: TObject);
var
  DATA_INICIAL:string;
begin
// Preenche o serial do HD //
  txtSerialHd.Text := SerialHardDrive('C');

  if Conectado = True then
  begin
    RESTRequest1.ResetToDefaults;

    if uppercase( copy(frmmenu.Caption, 1, 9))='GRCONTROL'  then
      RESTClient1.BaseURL   := 'http://grsolution.com.br/license/api/v1/computador/show/'
    else
      RESTClient1.BaseURL   := 'http://rpsistema.com.br/license/api/v1/computador/show/';  // Faz liberação do site

    RESTRequest1.Resource := '{serial}';
    RESTRequest1.Params.AddUrlSegment('serial',txtSerialHd.Text);
    RESTRequest1.Execute;


    // *****Preenche os campos com os dados vindo do banco*****//
    txtDesenvolvedora.Text := DADOS.FieldByName('REVENDA').AsString;
    txtRazao.Text          := DADOS.FieldByName('RAZAO').AsString;
    txtCnpj.Text           := DADOS.FieldByName('CNPJ').AsString;
    if DADOS.FieldByName('DATA_INICIAL').AsString = '' then
    begin
    dtpDataInicial.Date := Date;
    end
    else
    begin
    dtpDataInicial.Date       := STRTODATE(DADOS.FieldByName('DATA_INICIAL').AsString);
    end;
    if DADOS.FieldByName('DATA_INICIAL').AsString = '' then
    begin
    dtpDataFinal.Date := Date;
    end
    else
    begin
    dtpDataFinal.Date         := STRTODATE(DADOS.FieldByName('DATA_FINAL').AsString);
    end;
    LiberadoJson           := DADOS.FieldByName('LIBERADO').AsString;
    Liberado := StrToIntDef(LiberadoJson,0);

    if Liberado = 1 then
    begin
      txtMensagem.Text := 'Licença registrada!';
      LiberadoJson := 'S';
    end
    else
    begin
      txtMensagem.Text := 'Sistema bloqueado!';
      LiberadoJson := 'N';
    end;
  end
  else
  begin
    btnLiberar.Enabled := True;
    txtChaveKey.Enabled := true;
  end;
end;

procedure TfrmLiberacao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
  begin
    txtSerialHd.Enabled := true;
  end;
end;

procedure TfrmLiberacao.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
  begin
    txtSerialHd.Enabled := false;
  end;
end;

procedure TfrmLiberacao.FormShow(Sender: TObject);
begin
  if uppercase( copy(frmmenu.Caption, 1, 9))='GRCONTROL'  then
  begin
    lbNomeSistema.Caption:= 'GrControl ' + GetFileVersion(ParamStr(0));
    lbDescritivo.Caption:='Esta versão do sistema não está liberada para uso neste computador' + sLineBreak+
                          'Obtenha com a Gr Solution o código de ativação' + sLineBreak+
                          '(85) 988024258  fixo (85) 3224-6638 '+sLineBreak+
                          'CONTATO@GRSOLUTION.COM.BR'
  end
  else
    lbNomeSistema.Caption:= lbNomeSistema.Caption + ' '+ GetFileVersion(ParamStr(0))
end;

procedure TfrmLiberacao.txtSerialHdEnter(Sender: TObject);
begin
txtSerialHd.SelectAll;
end;

end.
