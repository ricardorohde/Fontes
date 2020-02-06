unit uCaixaLancaMovimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.StdCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, Vcl.ExtCtrls, Vcl.DBCtrls,
  Datasnap.DBClient, frxClass, AdvGlowButton, AdvPanel, UPrinters,
  uPosPrinterTeste;

type
  TfrmCaixaLancaMovimento = class(TForm)
    qrAux1: TUniQuery;
    qrListaFormaPgto: TUniQuery;
    cdsFormaPgto: TClientDataSet;
    cdsFormaPgtoid_formapgto: TIntegerField;
    dsFormaPgto: TDataSource;
    dsListaFormapgto: TDataSource;
    repCaixaMovSuprRetirada: TfrxReport;
    btCancela: TAdvGlowButton;
    Panel1: TPanel;
    Label3: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edValor: TJvValidateEdit;
    edObservacao: TEdit;
    cbFormapgto: TDBLookupComboBox;
    cbCategoria: TComboBox;
    pnTopo: TPanel;
    lbTipoMovimentoCaixa: TLabel;
    Label1: TLabel;
    lbUsuario: TLabel;
    Label2: TLabel;
    lbData: TLabel;
    rgTipoMovimento: TRadioGroup;
    btConfirma: TAdvGlowButton;
    btAbrirGaveta: TAdvGlowButton;
    constructor Create(sender: tcomponent ;  tipomovimento : string = 'E');
    procedure FormShow(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure CarregaParametrosConfig;
    procedure btAbrirGavetaClick(Sender: TObject);
  private
    { Private declarations }
    sCamImpCaixa : string;
  public
   id_usuario_caixa:integer;
  end;

var
  frmCaixaLancaMovimento: TfrmCaixaLancaMovimento;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uFuncoes, uPadrao;

procedure TfrmCaixaLancaMovimento.CarregaParametrosConfig;
var tmpFrmPadrao : TfrmPadrao;
begin
  tmpFrmPadrao := TfrmPadrao.Create(nil);
  tmpFrmPadrao.fSufix:='CONFIGURACAO';
  tmpFrmPadrao.AbreXMLCFG;
  //pega o caminho da impressora nas configuração
  sCamImpCaixa:= tmpFrmPadrao.LerString('CAMIMPCAIXA');
  tmpFrmPadrao.Free;

  if sCamImpCaixa='' then application.MessageBox('O caminho da impressora do caixa não está definido!', 'Atenção', MB_ICONWARNING);

end;



procedure TfrmCaixaLancaMovimento.btAbrirGavetaClick(Sender: TObject);
begin
  frmMenu.AbrirGaveta;
end;

procedure TfrmCaixaLancaMovimento.btCancelaClick(Sender: TObject);
begin
  self.Tag:=0;
  close;
end;

procedure TfrmCaixaLancaMovimento.btConfirmaClick(Sender: TObject);
var str_sql, tipo_m, categoria_m, titulo_rep,str_impressao : string;
impressora_modo_pos:boolean;

begin
  if edValor.AsFloat<=0 then
  begin
    Application.MessageBox('Valor inválido!', 'Atenção', MB_ICONINFORMATION);
    edValor.SetFocus;
    abort;
  end;

  if not frmMenu.ConfirmacaoSenha('b_acesso_mov_caixa', id_usuario_caixa) then abort;

  { categorias de movimento
    R - Retirada / Sangria (tipo Saída)
    S - Suprimento (tipo Entrada)
    C - Outros Creditos (tipo Entrada)
    D - Outros débitos (tipo Saída)
  }

  if rgTipoMovimento.ItemIndex=0 then
  begin
    tipo_m := 'S';
    if cbCategoria.ItemIndex=0 then
      categoria_m:='R'
    else
      categoria_m:='D';
    titulo_rep:='RELATÓRIO DE RETIRADA DE CAIXA';
  end
  else
  begin
    tipo_m := 'E';
    if cbCategoria.ItemIndex=0 then
      categoria_m:='S'
    else
      categoria_m:='C';
    titulo_rep:='RELATÓRIO DE SUPRIMENTO DE CAIXA';
  end ;

  str_sql:=' insert into caixaitem ' +
           ' (id_caixa, id_empresa, item, tipo_movimento, valor, id_formapgto, data, ' +
           ' hora, observacao, classificacao,id_usuario ) ' +
           ' values (:id_caixa, :emp, ' +
           ' (select coalesce(max(item),0)+1 as item from caixaitem where '+
           ' id_empresa=:emp and id_caixa=:id_caixa),'+
           ' :tipo_m, :valor, :formapgto,' +
           ' localtimestamp, localtime,  :obs, :categoria,:id_usuario_caixa) ';

  qraux1:=tuniquery.Create(self);
  qraux1.Connection:=frmMenu.conexao;
  qrAux1.Close;
  qrAux1.SQL.Clear;
  qrAux1.SQL.Add(str_sql);
  qraux1.ParamByName('id_caixa').AsInteger:=RecProj.iIDCaixa;
  qraux1.ParamByName('emp').AsInteger:=RecProj.iEmp;
  qraux1.ParamByName('tipo_m').AsString:=tipo_m;
  qraux1.ParamByName('valor').Asfloat:=edvalor.value;
  qraux1.ParamByName('formapgto').AsInteger:= cbFormapgto.KeyValue;
  qrAux1.ParamByName('obs').AsString:=edObservacao.Text;
  qraux1.ParamByName('categoria').AsString:=categoria_m;
  qraux1.ParamByName('id_usuario_caixa').Asinteger:=id_usuario_caixa;
  qrAux1.execute;

  qrAux1.Close;
  qrAux1.SQL.Clear;
  qrAux1.SQL.Text:= 'select usu_002 from usuarios where usu_001 = :usuario';
  qraux1.ParamByName('usuario').AsInteger:= id_usuario_caixa;
  qrAux1.open;

  impressora_modo_pos := LerIntegerConfig('CXMODOIMPCAIXA',frmmenu.cdsCFG.FileName)=1;

  if impressora_modo_pos then
  begin
    str_impressao :=  '</zera>' +  sLineBreak+
               '<n>'+ AcertaTexto(titulo_rep, 'C', 42, ' ')+'</n>' + slinebreak +
               '------------------------------------------' + sLineBreak +
               'USUARIO DO CAIXA: ' + qrAux1.FieldByName('usu_002').AsString +
               '  CAIXA N: ' + IntToStr( RecProj.iIDCaixa )+ slinebreak +
               'DATA ABERTURA:   ' + formatdatetime('dd/mm/yyyy hh:mm',RecProj.dCaixaDataAbertura+ RecProj.dCaixaHoraAbertura) + slinebreak +
               'DATA LANCAMENTO: ' + formatdatetime('dd/mm/yyyy hh:mm', Now) + slinebreak +
               cbCategoria.Text+': R$ ' + edvalor.text +sLineBreak +
               '------------------------------------------' + sLineBreak +
               'OBSERVAÇÃO'+Slinebreak+AcertaTexto(edObservacao.Text, 'E', 44, ' ') +Slinebreak+Slinebreak+Slinebreak+Slinebreak+
               '------------------------------------------' + sLineBreak +
               'ASSINATURA' +SlineBreak+'</corte_total>';

    if frmmenu.ConfiguraImpressoraPOS('CAIXA') then
      frmmenu.ACBrPosPrinter1.Imprimir(str_impressao);
  end
  else
  begin
    //imprime relatorio grafico     09/04/2018
    repCaixaMovSuprRetirada.PrintOptions.Printer := sCamImpCaixa;
    repCaixaMovSuprRetirada.Variables['sTituloRep'] := QuotedStr(titulo_rep);
    repCaixaMovSuprRetirada.Variables['sUsuario'] := QuotedStr(qrAux1.FieldByName('usu_002').AsString);
    repCaixaMovSuprRetirada.Variables['sDataHora'] := QuotedStr(formatdatetime('dd/mm/yyyy hh:mm',now));
    repCaixaMovSuprRetirada.Variables['sDescricaomov'] := QuotedStr(edObservacao.Text);
    repCaixaMovSuprRetirada.Variables['sValor'] := QuotedStr(FloatToStr(edValor.AsCurrency));
    repCaixaMovSuprRetirada.Variables['sHoraabertura'] := QuotedStr(formatdatetime('hh:mm',RecProj.dCaixaHoraAbertura));
    repCaixaMovSuprRetirada.Variables['sDataabertura'] := QuotedStr(formatdatetime('dd/mm/yyyy',RecProj.dCaixaDataAbertura));
    repCaixaMovSuprRetirada.Variables['sFormapgto'] := QuotedStr(cbFormapgto.Text);
    repCaixaMovSuprRetirada.PrepareReport;
    repCaixaMovSuprRetirada.ShowReport;
  end;

  Application.MessageBox('Movimento de caixa inserido com sucesso!', 'Atenção', MB_ICONINFORMATION);
  self.tag:=1;
  close;
end;





constructor TfrmCaixaLancaMovimento.Create(sender: TComponent; tipomovimento: string = 'E');
var str_aux : string;
    acesso_caixa : boolean;
begin
  inherited Create(sender);
  if not frmMenu.ConfirmacaoSenha('b_acesso_mov_caixa',id_usuario_caixa ) then abort;



  //verifica se existe caixa aberto
  if  RecProj.iIDCaixa = 0 then
  begin
    Application.MessageBox(pchar('Não existe caixa aberto para o usuário '
                           + recproj.sUsuario+'!'), 'Atenção', MB_ICONINFORMATION);
    abort;
  end;


  //se for saída, lista apenas as formas de pagamento dinheiro
  if tipomovimento = 'S' then
  begin
    qrListaFormaPgto.Filter:='dinheiro=true';
    qrListaFormaPgto.Filtered:=true;
    lbTipoMovimentoCaixa.Caption := 'MOVIMENTO DE CAIXA - RETIRADA' ;
    rgTipoMovimento.ItemIndex:=0;
    cbCategoria.Items.Add('Retirada/Sangria');
    cbCategoria.Items.Add('Outro débito');
  end
  else
  begin
    qrListaFormaPgto.Filter:='';
    qrListaFormaPgto.Filtered:=false;
    lbTipoMovimentoCaixa.Caption := 'MOVIMENTO DE CAIXA - SUPRIMENTO' ;
    rgTipoMovimento.ItemIndex:=1;
    cbCategoria.Items.Add('Suprimento');
    cbCategoria.Items.Add('Outro crédito');
  end;

  cbCategoria.ItemIndex:=0;
  qrListaFormaPgto.ParamByName('emp').AsInteger := RecProj.iEmp;
  qrListaFormaPgto.Open;

  cdsFormaPgto.CreateDataSet;
  cdsFormaPgto.Append;
  cdsFormaPgto.Fields[0].AsInteger:=  qrListaFormaPgto.Fields[0].AsInteger;

  lbUsuario.Caption:= RecProj.sUsuario;
  DateTimeToString(str_aux, 'dd/mm/yyyy hh:nn', Date + Time);
  lbData.Caption := str_aux;
  CarregaParametrosConfig;
  btAbrirGaveta.Visible := LerBooleanConfig('CKUTILIZAGAVETA',frmMenu.cdsCFG.FileName);
end;

procedure TfrmCaixaLancaMovimento.FormShow(Sender: TObject);
begin

  edValor.SetFocus;
end;

end.
