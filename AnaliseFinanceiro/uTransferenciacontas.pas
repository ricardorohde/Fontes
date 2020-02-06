unit uTransferenciacontas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Data.DB, MemDS, DBAccess, Uni, AdvGlowButton,
  Vcl.StdCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, AdvGroupBox, System.Actions, Vcl.ActnList;

type
  TfrmTransferenciacontas = class(TfrmModelo)
    AdvGroupBox2: TAdvGroupBox;
    Label2: TLabel;
    lblBancoCreditado: TLabel;
    lblAgenciaCreditado: TLabel;
    lblContaCreditado: TLabel;
    lblTitularCreditado: TLabel;
    edBuscaconta: TcxButtonEdit;
    Label7: TLabel;
    AdvGroupBox1: TAdvGroupBox;
    Label1: TLabel;
    lblAgencia: TLabel;
    lblConta: TLabel;
    lblBanco: TLabel;
    lblTitular: TLabel;
    Label10: TLabel;
    edValor: TJvValidateEdit;
    btConfirma: TAdvGlowButton;
    btCancela: TAdvGlowButton;
    qrAux1: TUniQuery;
    lblSaldoatual: TLabel;
    ActionList1: TActionList;
    acBuscaconta: TAction;
    procedure FormShow(Sender: TObject);
    procedure acBuscacontaExecute(Sender: TObject);
    procedure edBuscacontaExit(Sender: TObject);
    procedure limpacampos;
    procedure btConfirmaClick(Sender: TObject);
    procedure edValorClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btCancelaClick(Sender: TObject);
  private
    id_contacorrente,id_contacorrente_debitar:integer;
    id_usuario:integer;
  public
    { Public declarations }
  end;

var
  frmTransferenciacontas: TfrmTransferenciacontas;

implementation

{$R *.dfm}

uses uLancamentocontas, uMenu, Funcao_DB, uBuscaRegistro, uFuncoes;
procedure Tfrmtransferenciacontas.LimpaCampos;
begin
  edBuscaconta.Text     :='';
  lblBancocreditado.Caption      :='';
  lblAgenciacreditado.Caption    :='';
  lblContacreditado.Caption      :='';
  lblTitularcreditado.Caption    :='';
  lblTitularCreditado.Caption :='';
  qraux1.Close;
  id_contacorrente:=0;
end;

procedure TfrmTransferenciacontas.acBuscacontaExecute(Sender: TObject);
var
str_sql:string;
begin
  inherited;
 edBuscaconta.SetFocus;
  str_sql:= 'select id_contacorrente, agencia,conta,titular,saldo from contacorrente';
  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
    CriaIntegerArray([0,1,2,3,4]),
    CriaStringArray(['Código', 'Agencia', 'Conta','Titular','Saldo' ]),
    0, 1, ' id_situacao=4 and id_empresa='+IntToStr(RecProj.iEmp));
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
    edbuscaconta.text:=frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.Free;
  edBuscacontaExit(nil);
  edValor.SetFocus;
end;

procedure TfrmTransferenciacontas.btCancelaClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmTransferenciacontas.btConfirmaClick(Sender: TObject);
var
str_sql,edDocumento, observacao:string;
tipo_movimento,compensado, contadebitada:integer;
data:tdatetime;
begin
  if id_contacorrente_debitar=id_contacorrente then
  begin
    Application.MessageBox('A CONTA A SER CREDITADA NÃO PODE SER A MESMA CONTA A SER DEBITADA, POR FAVOR INFORME UMA OUTRA CONTA','ALERTA',+MB_ICONINFORMATION+MB_OK);
    edbuscaconta.setfocus;
    abort;
  end;

  if (id_contacorrente>0) and (edValor.Value>0) then
  begin
    // Update na conta que entrará saldo
    str_sql:= 'update contacorrente set saldo=saldo + :valor where id_empresa=:id_empresa and id_contacorrente=:id_contacorrente';
    ExecutaComandoSQL(str_sql, vararrayof([edvalor.Value, RecProj.iemp ,id_contacorrente]));
    // Update na conta que sairá o saldo
     str_sql:= 'update contacorrente set saldo=saldo - :valor where id_empresa=:id_empresa and id_contacorrente=:id_contacorrente';
    ExecutaComandoSQL(str_sql, vararrayof([edvalor.Value, RecProj.iemp ,id_contacorrente_debitar]));

    // Insere um tipo movimento  na conta a ser debitada    Rafael 07/05/2018
    tipo_movimento:=1;
    data:=date;
    edDocumento:='Ted/Doc';
    observacao:='Transferência entre'+lblContaCreditado.Caption;
    compensado:=2;
    contadebitada:=frmLancamentocontas.id_contacorrente;
    str_sql := ' insert into tipo_movimento '+
             '(id_empresa,tipo,data_emissao,valor,documento,observacao,compensado,id_usuario_lancamento,  '+
             ' id_contacorrente,id_situacao)  '+
             ' values(:emp, :tipo, :data_emissao, :valor, :documento, :observacao, :compensado, :id_usuario_lancamento, '+
             ' :id_contacorrente, 4);';
    ExecutaComandoSQL(str_sql, vararrayof([RecProj.iemp, tipo_movimento, Date, edvalor.Value,
    edDocumento, observacao,compensado,id_usuario, contadebitada]));

    // Insere um tipo movimento  na conta creditada          Rafael 07/05/2018
    tipo_movimento:=0;
    data:=date;
    edDocumento:='Ted/Doc';
    observacao:='Transferência entre'+lblContaCreditado.Caption;
    compensado:=3;
     str_sql := ' insert into tipo_movimento '+
             '(id_empresa,tipo,data_emissao,valor,documento,observacao,compensado,id_usuario_lancamento,  '+
             ' id_contacorrente,id_situacao)  '+
             ' values(:emp, :tipo, :data_emissao, :valor, :documento, :observacao, :compensado, :id_usuario_lancamento, '+
             ' :id_contacorrente, 4);';
    ExecutaComandoSQL(str_sql, vararrayof([RecProj.iemp, tipo_movimento, Date, edvalor.Value,
    edDocumento, observacao,compensado,id_usuario, id_contacorrente]));

  end
  else
  begin
   Application.MessageBox('POR FAVOR SELECIONA UMA CONTA E O VALOR','ALERTA',+MB_ICONINFORMATION+MB_OK);
   edValor.SetFocus;
   abort;
  end;
  Application.MessageBox('LANÇAMENTO GRAVADO COM SUCESSO','ALERTA',+MB_ICONINFORMATION+MB_OK);
  close;
end;

procedure TfrmTransferenciacontas.edBuscacontaExit(Sender: TObject);
var
str_sql:string;
begin
  inherited;
  if edbuscaconta.Text<>'' then
  begin
    try
      id_contacorrente := strtoint(edbuscaconta.Text);
    except
      application.MessageBox('CODIGO DA CONTA CORRENTE INVALIDO', 'Atenção', MB_ICONEXCLAMATION+MB_OK);
      edBuscaconta.SetFocus;
      Abort;
    end;
    str_sql := ' select conta,agencia,banco,saldo,titular  from contacorrente where id_situacao=4 and id_empresa='+IntToStr(RecProj.iEmp) +
               ' and id_contacorrente='+ IntToStr(id_contacorrente);
    ExecutaConsultaSQL(qrAux1, str_sql);   // Procedure de consulta no banco
    if qrAux1.RecordCount>0 then
    begin
      qrAux1.Refresh;
      lblBancocreditado.Caption      := ' Banco: '+' '+ qrAux1.FieldByName('banco').AsString;
      lblAgenciacreditado.Caption    := ' Agencia: '+qrAux1.FieldByName('agencia').AsString;
      lblContacreditado.Caption      := ' Conta: ' +' '+qrAux1.FieldByName('conta').AsString;
      lblTitularCreditado.Caption    := ' Titular: '+' '+ qrAux1.FieldByName('titular').AsString;
    end
    else
    begin
      Application.MessageBox('CONTA CORRENTE NÃO ENCONTRADA', 'Atenção', MB_ICONEXCLAMATION+MB_OK);
      edBuscaconta.SetFocus;
      LimpaCampos;
    end;
  end
  else
    LimpaCampos;
end;

procedure TfrmTransferenciacontas.edValorClick(Sender: TObject);
begin
  inherited;
  Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TfrmTransferenciacontas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key= vk_return then
  Perform(WM_NEXTDLGCTL,0,0)
end;

procedure TfrmTransferenciacontas.FormShow(Sender: TObject);
var
str_sql:string;
begin
  inherited;
  id_contacorrente_debitar:=frmLancamentocontas.id_contacorrente;
  id_usuario:=frmlancamentocontas.id_usuario_lancamento_contas;
  qraux1.Close;
  str_sql:='select agencia,conta,banco,saldo,titular from contacorrente where id_situacao=4 and id_contacorrente='+IntToStr(id_contacorrente_debitar)+
 ' and id_empresa='+IntToStr(RecProj.iEmp) ;
  ExecutaConsultaSQL(qrAux1, str_sql);   // Procedure de consulta no banco
  qrAux1.Refresh;
  lblBanco.Caption      := ' Banco: '+' '+ qrAux1.FieldByName('banco').AsString;
  lblAgencia.Caption    := ' Agencia: '+qrAux1.FieldByName('agencia').AsString;
  lblConta.Caption      := ' Conta: ' +' '+qrAux1.FieldByName('conta').AsString;
  lblTitular.Caption    := ' Titular: '+' '+ qrAux1.FieldByName('titular').AsString;
  lblSaldoatual.Caption := format('O Saldo atual: R$%.2f ',[qraux1.FieldByName('saldo').Asfloat]);
end;

end.
