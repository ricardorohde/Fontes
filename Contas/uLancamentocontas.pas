unit uLancamentocontas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  Data.DB, MemDS, DBAccess, Uni, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxGDIPlusClasses, cxMaskEdit,
  cxDropDownEdit, cxCalc, cxDBEdit, Vcl.StdCtrls, cxTextEdit, Vcl.DBCtrls,
  AdvGroupBox, JvExStdCtrls, JvCombobox, JvDBCombobox, JvDataSource,
  System.Actions, Vcl.ActnList, cxButtonEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, AdvGlowButton, Vcl.ComCtrls, cxImageComboBox, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmLancamentocontas = class(TfrmModelo)
    AdvGroupBox1: TAdvGroupBox;
    lblAgencia: TLabel;
    lblConta: TLabel;
    lblTitular: TLabel;
    lblSaldoatual: TLabel;
    Label5: TLabel;
    Image1: TImage;
    ActionList1: TActionList;
    acBuscaconta: TAction;
    qraux1: TUniQuery;
    edBuscaconta: TcxButtonEdit;
    lblBanco: TLabel;
    dtpDataFinal: TDateTimePicker;
    dtpDataInicial: TDateTimePicker;
    btPesquisar: TAdvGlowButton;
    Label2: TLabel;
    Label1: TLabel;
    btSair: TAdvGlowButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qrLista: TUniQuery;
    dsLista: TDataSource;
    qrListaid_movimento: TIntegerField;
    qrListadata_emissao: TDateField;
    qrListavalor: TFloatField;
    qrListaid_contacorrente: TIntegerField;
    cxGrid1DBTableView1tipo: TcxGridDBColumn;
    cxGrid1DBTableView1data_emissao: TcxGridDBColumn;
    cxGrid1DBTableView1valor: TcxGridDBColumn;
    cxGrid1DBTableView1documento: TcxGridDBColumn;
    cxGrid1DBTableView1observacao: TcxGridDBColumn;
    cxGrid1DBTableView1compensado: TcxGridDBColumn;
    qrConsultaconta: TUniQuery;
    qrListatipo: TWideMemoField;
    qrListadocumento: TWideMemoField;
    qrListaobservacao: TWideMemoField;
    qrListacompensado: TIntegerField;
    btExcluir: TAdvGlowButton;
    qrListaidentificador: TWideMemoField;
    LBLSALDO: TLabel;
    btEditar: TAdvGlowButton;
    btIncluir: TAdvGlowButton;
    btCompensar: TAdvGlowButton;
    btTransferencia: TAdvGlowButton;
    Label6: TLabel;
    Shape3: TShape;
    Shape2: TShape;
    Label3: TLabel;
    procedure acBuscacontaExecute(Sender: TObject);
    procedure edBuscacontaExit(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btPesquisarClick(Sender: TObject);
    procedure calculo_conta;
    procedure calculo_cartao;
    procedure btSairClick(Sender: TObject);
    constructor Create (sender : Tcomponent); reintroduce;
    procedure FormShow(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btCompensarClick(Sender: TObject);
    procedure LimpaCampos;
    procedure btTransferenciaClick(Sender: TObject);

  public
    id_contacorrente,id_usuario_lancamento_contas:integer;
  end;

var
  frmLancamentocontas: TfrmLancamentocontas;

implementation

{$R *.dfm}

uses uMenu, uFuncoes, uBuscaRegistro, Funcao_DB, uLancamentocontasinclusao,
  uTransferenciacontas;


constructor tfrmLancamentocontas.create(sender: TComponent);
begin
  inherited create(sender);
  if not frmMenu.ConfirmacaoSenha('b_acesso_cpagar_creceber', id_usuario_lancamento_contas) then
    abort;
end;

procedure TfrmLancamentocontas.acBuscacontaExecute(Sender: TObject);
var
str_sql:string;
begin
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
end;

procedure TfrmLancamentocontas.btEditarClick(Sender: TObject);
begin
  inherited;

  if qrLista.RecordCount = 0 then
    Exit;

  if qrlista.FieldByName('identificador').AsString='V' then
  begin
    Application.MessageBox('NÃO É POSSÍVEL ALTERAR UMA VENDA','ALERTA',+MB_ICONEXCLAMATION+MB_OK);
    abort;
  end;

  if qrlista.FieldByName('compensado').AsInteger=0 then
  begin
    Application.MessageBox('ESSE TÍTULO JÁ FOI COMPENSADO, NÃO É POSSÍVEL ALTERAR','ALERTA',+MB_ICONEXCLAMATION+MB_OK);
    abort
  end;

  frmLancamentocontasinclusao:=tfrmLancamentocontasinclusao.Create(self);
  frmLancamentocontasinclusao.flag_tipo:= 'A'; //ALTERAÇÃO
  frmLancamentocontasinclusao.ShowModal;
  frmLancamentocontasinclusao.Free;
  qrLista.refresh;
  edBuscacontaExit(nil);
end;

procedure TfrmLancamentocontas.btExcluirClick(Sender: TObject);
var
str_sql:string;
begin
  inherited;

  if qrLista.RecordCount = 0 then
    Exit;

  if qrlista.FieldByName('identificador').AsString='V' then
  begin
    Application.MessageBox('NÃO É POSSÍVEL EXCLUIR UMA VENDA, PARA EXCLUIR VÁ ATE O MENU - VENDAS - (CANCELAR CUPOM) ','ALERTA',+MB_ICONEXCLAMATION+MB_OK);
    abort;
  end;

  str_sql:= 'select id_movimento,valor,id_contacorrente,tipo,id_situacao,compensado from tipo_movimento '+
            'where id_movimento=:id_movimento and id_empresa=:id_empresa and id_contacorrente=:id_contacorrente' ;
  qraux1:=tuniquery.Create(self);
  qraux1.Connection:=frmmenu.conexao;
  qraux1.SQL.Clear;
  qraux1.SQL.Add(str_sql);
  qraux1.ParamByName('id_movimento').AsInteger:=qrlista.FieldByName('id_movimento').AsInteger;
  qraux1.ParamByName('id_empresa').AsInteger:=RecProj.iEmp;
  qraux1.ParamByName('id_contacorrente').AsInteger:=qrlista.FieldByName('id_contacorrente').AsInteger;
  qraux1.Open;

  if qraux1.RecordCount>0 then
  begin
    if qraux1.FieldByName('compensado').AsInteger=0 then
    begin
      Application.MessageBox('ESSE TÍTULO JÁ FOI COMPENSADO, NÃO É POSSÍVEL EXCLUIR','ALERTA',+MB_ICONEXCLAMATION+MB_OK);
      abort
    end;

    if qraux1.FieldByName('id_situacao').AsInteger<>4 then
    begin
      Application.MessageBox('ESSE TÍTULO JÁ FOI BAIXADO OU CANCELADO ANTERIORMENTE','ALERTA',+MB_ICONEXCLAMATION+MB_OK);
      abort;
    end;

    str_sql:= 'update tipo_movimento set id_situacao=:id_situacao where id_movimento=:id_movimento and id_empresa=:id_empresa and id_contacorrente=:id_contacorrente';
    ExecutaComandoSQL(str_sql, vararrayof([2, qraux1.FieldByName('id_movimento').AsInteger, RecProj.iEmp, qraux1.FieldByName('id_contacorrente').AsInteger]));

    qrlista.Refresh;
    edBuscacontaExit(nil);

    Application.MessageBox('LANÇAMENTO EXCLUÍDO COM SUCESSO','ALERTA',+MB_ICONINFORMATION+MB_OK);
  end
  else
    Application.MessageBox('NÃO EXISTE LANÇAMENTO A SER EXCLUÍDO','ALERTA',+MB_ICONEXCLAMATION+MB_OK);
end;

procedure TfrmLancamentocontas.btIncluirClick(Sender: TObject);
begin
  inherited;
  if edBuscaconta.Text='' then
  begin
    Application.MessageBox('PREENCHA A CONTA CORRENTE ANTES DE FAZER O LANÇAMENTO','ALERTA',+MB_ICONEXCLAMATION+MB_OK);
    edbuscaconta.setfocus;
    abort;
  end;
  if id_contacorrente=0 then
  begin
     Application.MessageBox('PREENCHA A CONTA CORRENTE ANTES DE FAZER O LANÇAMENTO','ALERTA',+MB_ICONEXCLAMATION+MB_OK);
    edbuscaconta.setfocus;
    abort
  end;

  frmLancamentocontasinclusao:=tfrmLancamentocontasinclusao.Create(self);
  frmLancamentocontasinclusao.flag_tipo:= 'I'; //INCLUSAO
  frmLancamentocontasinclusao.ShowModal;
  frmLancamentocontasinclusao.Free;

  qrLista.refresh;

  edBuscacontaExit(nil);
end;

procedure TfrmLancamentocontas.btPesquisarClick(Sender: TObject);
var str_sql: string;
    saldo_atual: Double;
begin
  if edBuscaconta.Text='' then
  begin
    Application.MessageBox('PREENCHA A CONTA CORRENTE','ALERTA',+MB_ICONEXCLAMATION+MB_OK);
    edbuscaconta.setfocus;
    abort;
  end;

  if id_contacorrente=0 then
  begin
     Application.MessageBox('PREENCHA A CONTA CORRENTE','ALERTA',+MB_ICONEXCLAMATION+MB_OK);
    edbuscaconta.setfocus;
    abort
  end;

  qrlista.Close;
  qrlista.ParamByName('DTINI').AsDate:=dtpDataInicial.Date;
  qrlista.ParamByName('DTFIM').AsDate:=dtpDataFinal.Date;
  qrlista.ParamByName('id_empresa').AsInteger:=RecProj.iEmp;
  qrlista.ParamByName('id_contacorrente').AsInteger:=id_contacorrente;
  qrlista.Open;

  qrlista.First;
  qrlista.DisableControls;
  while not qrlista.Eof do
  begin
    if qrlista.FieldByName('tipo').AsString='1' then
    begin
      qrlista.Edit;
      qrlista.FieldByName('valor').AsFloat:=  qrlista.FieldByName('valor').AsFloat *-1;
      qrlista.Post;
    end;
      qrlista.Next;
  end;

  qrlista.EnableControls;
  qrlista.First;


  saldo_atual:= 0;

  str_sql := ' select saldo from contacorrente where id_situacao=4 and id_empresa='+IntToStr(RecProj.iEmp) +
             ' and id_contacorrente='+ IntToStr(id_contacorrente);
  ExecutaConsultaSQL(qrAux1, str_sql);   // Procedure de consulta no banco

  saldo_atual:= qraux1.FieldByName('saldo').AsFloat;

  str_sql:= 'select sum (valor) as saldo from ( '+
            'select sum (case when tipo= ''0'' then valor else -valor end) as valor '+
            'from tipo_movimento '+
            'where (data_emissao BETWEEN :DTINI AND :DTFIM) and (id_contacorrente=:id_contacorrente) and (id_empresa=:id_empresa) and (compensado = 1) and (id_situacao=4)'+
            'union '+
            'select sum (cast (e.ite_003-((e.ite_003*coalesce(f.taxa_cartao,0))/100)as numeric(15,2))) as valor '+
            'from encerravendaitem e '+
            'join formapgto f on f.for_001=e.id_formapgto '+
            'join encerravenda ev on ev.enc_001=e.enc_001 '+
            'where e.ite_002::date + coalesce (f.prazo_cartao,0) BETWEEN :DTINI AND :DTFIM and id_contacorrente=:id_contacorrente and e.emp_001=:id_empresa and ev.sit_001 = 1 and compensado = 1) as valor_total';

  qraux1.Close;
  qraux1.SQL.Clear;
  qraux1.SQL.Add(str_sql);
  qraux1.ParamByName('DTINI').AsDate:=dtpDataInicial.Date;
  qraux1.ParamByName('DTFIM').AsDate:=dtpDataFinal.Date;
  qraux1.ParamByName('id_empresa').AsInteger:=RecProj.iEmp;
  qraux1.ParamByName('id_contacorrente').AsInteger:=id_contacorrente;
  qraux1.Open;

  if qraux1.RecordCount > 0 then
    LBLSALDO.Caption:= 'VALOR PREVISTO EM ' + FormatDateTime('dd/mm/yyyy', dtpDataFinal.Date) + ' R$ ' + FormatFloat('###,###,##0.00', saldo_atual + qraux1.FieldByName('saldo').Asfloat)
  else
    LBLSALDO.Caption:= 'VALOR PREVISTO EM ' + FormatDateTime('dd/mm/yyyy', dtpDataFinal.Date) + ' R$ ' + FormatFloat('###,###,##0.00', saldo_atual);
end;
procedure TfrmLancamentocontas.btSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmLancamentocontas.btTransferenciaClick(Sender: TObject);
begin
  inherited;
  Perform(WM_NEXTDLGCTL,0,0);
   if id_contacorrente>0 then
   begin
    frmtransferenciacontas:=tfrmtransferenciacontas.Create(self);
    frmtransferenciacontas.ShowModal;
    frmtransferenciacontas.Free;
    edBuscacontaExit(nil);
   end;
end;

procedure TfrmLancamentocontas.btCompensarClick(Sender: TObject);
var str_sql: string;
    valor: double;
begin
  inherited;
  if qrLista.RecordCount = 0 then
    Exit;

  if qrlista.FieldByName('identificador').AsString='V' then
  begin
    Application.MessageBox('NÃO É POSSÍVEL COMPENSAR UMA VENDA','ALERTA',+MB_ICONEXCLAMATION+MB_OK);
    abort;
  end;

  if qrlista.FieldByName('compensado').AsInteger=0 then
  begin
    Application.MessageBox('ESSE TÍTULO JÁ FOI COMPENSADO','ALERTA',+MB_ICONEXCLAMATION+MB_OK);
    abort
  end;

  str_sql:= 'update tipo_movimento set compensado = 0 where id_movimento=:id_movimento and id_empresa=:id_empresa and id_contacorrente=:id_contacorrente';
  ExecutaComandoSQL(str_sql, vararrayof([qrlista.FieldByName('id_movimento').AsInteger, RecProj.iEmp, qrlista.FieldByName('id_contacorrente').AsInteger]));

  if qrLista.FieldByName('tipo').AsString = '0' then
    valor:= qrLista.FieldByName('valor').AsFloat //Entrada
  else
    valor:= qrLista.FieldByName('valor').AsFloat * -1; //Saída

  str_sql:='update contacorrente set saldo = (saldo + :saldo) where id_contacorrente=:id_contacorrente and id_empresa=:id_empresa';
  ExecutaComandoSQL(str_sql, vararrayof([valor, qrlista.FieldByName('id_contacorrente').AsInteger, RecProj.iEmp]));
  qrlista.Refresh;
  edBuscacontaExit(nil);
  Application.MessageBox('LANÇAMENTO COMPENSADO COM SUCESSO','ALERTA',+MB_ICONINFORMATION+MB_OK);
end;

procedure TfrmLancamentocontas.edBuscacontaExit(Sender: TObject);
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
      LimpaCampos;
      edBuscaconta.SetFocus;
      Abort;
    end;

    str_sql := ' select conta,agencia,banco,saldo,titular  from contacorrente where id_situacao=4 and id_empresa='+IntToStr(RecProj.iEmp) +
               ' and id_contacorrente='+ IntToStr(id_contacorrente);
    ExecutaConsultaSQL(qrAux1, str_sql);   // Procedure de consulta no banco
    if qrAux1.RecordCount>0 then
    begin
      calculo_conta;
      calculo_cartao;
      qrAux1.Refresh;
      lblBanco.Caption      := ' Banco: '+' '+ qrAux1.FieldByName('banco').AsString;
      lblAgencia.Caption    := ' Agencia: '+qrAux1.FieldByName('agencia').AsString;
      lblConta.Caption      := ' Conta: ' +' '+qrAux1.FieldByName('conta').AsString;
      lblTitular.Caption    := ' Titular: '+' '+ qrAux1.FieldByName('titular').AsString;
      lblSaldoatual.Caption := format('O Saldo atual: R$%.2f ',[qraux1.FieldByName('saldo').Asfloat]);
      btPesquisar.Click;
    end
    else
    begin
      Application.MessageBox('CONTA CORRENTE NÃO ENCONTRADA', 'Atenção', MB_ICONEXCLAMATION+MB_OK);

      LimpaCampos;

      edBuscaconta.SetFocus;
    end;
  end
  else
    LimpaCampos;
end;

procedure TfrmLancamentocontas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key= vk_return then
  Perform(WM_NEXTDLGCTL,0,0)
end;

procedure TfrmLancamentocontas.FormShow(Sender: TObject);
begin
  inherited;
  dtpDataInicial.Date:=date;
  dtpDataFinal.Date:=date;
  LimpaCampos;
end;

procedure TfrmLancamentocontas.LimpaCampos;
begin
  edBuscaconta.Text     :='';
  lblBanco.Caption      :='';
  lblAgencia.Caption    :='';
  lblConta.Caption      :='';
  lblTitular.Caption    :='';
  lblSaldoatual.Caption :='';
  LBLSALDO.Caption      :='';
  qrLista.Close;
  id_contacorrente:=0;
end;

procedure tfrmlancamentocontas.calculo_conta;
var
str_sql:string;
saldo:double;
begin
  // Busca o Saldo da Conta Corrente
  str_sql:= 'select saldo from contacorrente where id_contacorrente=:id_contacorrente and id_empresa=:id_empresa';
  qrConsultaconta.Close;
  qrConsultaconta:=tuniquery.Create(self);
  qrConsultaconta.Connection:=frmmenu.conexao;
  qrConsultaconta.SQL.Add(str_sql);
  qrConsultaconta.ParamByName('id_contacorrente').AsInteger:=id_contacorrente;
  qrConsultaconta.ParamByName('id_empresa').Asinteger:=RecProj.iEmp;
  qrConsultaconta.Open;
  saldo:=qrConsultaconta.FieldByName('saldo').asfloat;
  qrConsultaconta.Close;

  // Busca o tipo movimento
  str_sql:= 'select tipo,valor from tipo_movimento where id_contacorrente=:id_contacorrente and data_emissao<=:data_emissao and compensado=1 and id_empresa=:id_empresa';
  qrConsultaconta:=tuniquery.Create(self);
  qrConsultaconta.Connection:=frmmenu.conexao;
  qrConsultaconta.SQL.Add(str_sql);
  qrConsultaconta.ParamByName('id_contacorrente').AsInteger:=id_contacorrente;
  qrConsultaconta.ParamByName('data_emissao').AsDate:=date;
  qrConsultaconta.ParamByName('id_empresa').Asinteger:=RecProj.iEmp;
  qrConsultaconta.Open;
  if qrConsultaconta.RecordCount>0 then
  begin
    qrConsultaconta.First;
    while not qrConsultaconta.Eof do
    begin
      if qrConsultaconta.FieldByName('tipo').AsString='0' then   // Tipo 0 é entrada
        saldo:=saldo+qrConsultaconta.FieldByName('valor').AsFloat;

      if qrConsultaconta.FieldByName('tipo').AsString='1' then  // Tipo 1 é Saida
        saldo:=saldo- qrConsultaconta.FieldByName('valor').AsFloat;

      qrConsultaconta.Next;
    end;

    qrConsultaconta.close;
    qrConsultaconta.sql.clear;
    // Update no tipo movimento mudando o status do compensando de 1 para 0
    str_sql:= 'update tipo_movimento set compensado=0 where id_contacorrente=:id_contacorrente and id_empresa=:id_empresa and data_emissao<=:data_emissao';
    qrConsultaconta.Connection:=frmmenu.conexao;
    qrConsultaconta.SQL.Add(str_sql);
    qrConsultaconta.ParamByName('id_contacorrente').AsInteger:=id_contacorrente;
    qrConsultaconta.ParamByName('id_empresa').Asinteger:=RecProj.iEmp;
    qrConsultaconta.ParamByName('data_emissao').AsDate:=date;
    qrConsultaconta.execute;
    qrConsultaconta.Close;

    qrConsultaconta.sql.clear;
    // Update no saldo da conta corrente
    str_sql:= 'update contacorrente set saldo=:saldo where id_contacorrente=:id_contacorrente and id_empresa=:id_empresa';
    qrConsultaconta.Connection:=frmmenu.conexao;
    qrConsultaconta.SQL.Add(str_sql);
    qrConsultaconta.ParamByName('id_contacorrente').AsInteger:=id_contacorrente;
    qrConsultaconta.ParamByName('id_empresa').Asinteger:=RecProj.iEmp;
    qrConsultaconta.ParamByName('saldo').AsFloat:=saldo;
    qrConsultaconta.execute;
    qrConsultaconta.Close;
   end;
end;

procedure TfrmLancamentocontas.calculo_cartao;
var
str_sql:string;
saldo:double;
begin
  // Busca o Saldo da Conta Corrente
  str_sql:= 'select saldo from contacorrente where id_contacorrente=:id_contacorrente and id_empresa=:id_empresa';
  qrConsultaconta.Close;
  qrConsultaconta:=tuniquery.Create(self);
  qrConsultaconta.Connection:=frmmenu.conexao;
  qrConsultaconta.SQL.Add(str_sql);
  qrConsultaconta.ParamByName('id_contacorrente').AsInteger:=id_contacorrente;
  qrConsultaconta.ParamByName('id_empresa').Asinteger:=RecProj.iEmp;
  qrConsultaconta.Open;
  saldo:=qrConsultaconta.FieldByName('saldo').asfloat;
  qrConsultaconta.Close;

  // Busca o movimento
  str_sql:= 'select cast(e.ite_003-((e.ite_003*coalesce(f.taxa_cartao, 0))/100)as numeric(15,2)) as valor from encerravendaitem e '+
            'join formapgto f on f.for_001=e.id_formapgto '+
            'join encerravenda ev on ev.enc_001=e.enc_001 '+
            'where id_contacorrente=:id_contacorrente and ev.sit_001 = 1 '+
            'and e.ite_002::date + coalesce(f.prazo_cartao, 0) <=:data_emissao and e.compensado=1 and e.emp_001=:id_empresa';
  qrConsultaconta:=tuniquery.Create(self);
  qrConsultaconta.Connection:=frmmenu.conexao;
  qrConsultaconta.SQL.Add(str_sql);
  qrConsultaconta.ParamByName('id_contacorrente').AsInteger:=id_contacorrente;
  qrConsultaconta.ParamByName('data_emissao').AsDate:=date;
  qrConsultaconta.ParamByName('id_empresa').Asinteger:=RecProj.iEmp;
  qrConsultaconta.Open;
  if qrConsultaconta.RecordCount>0 then
  begin
    qrConsultaconta.First;
    while not qrConsultaconta.Eof do
    begin
      saldo:=saldo+qrConsultaconta.FieldByName('valor').AsFloat;
      qrConsultaconta.Next;
    end;

    qrConsultaconta.close;
    qrConsultaconta.sql.clear;
    // Update na encerravendaitem mudando o status do compensando de 1 para 0
    str_sql:= 'update encerravendaitem set compensado=0 from encerravendaitem e '+
              'join formapgto f on f.for_001=e.id_formapgto '+
              'join encerravenda ev on ev.enc_001=e.enc_001 '+
              'where id_contacorrente=:id_contacorrente and e.emp_001=:id_empresa '+
              'and e.ite_002::date + coalesce(f.prazo_cartao, 0) <= :data_emissao and ev.sit_001 = 1';
    qrConsultaconta.Connection:=frmmenu.conexao;
    qrConsultaconta.SQL.Add(str_sql);
    qrConsultaconta.ParamByName('id_contacorrente').AsInteger:=id_contacorrente;
    qrConsultaconta.ParamByName('id_empresa').Asinteger:=RecProj.iEmp;
    qrConsultaconta.ParamByName('data_emissao').AsDate:=date;
    qrConsultaconta.execute;
    qrConsultaconta.Close;

    qrConsultaconta.sql.clear;
    // Update no saldo da conta corrente
    str_sql:= 'update contacorrente set saldo=:saldo where id_contacorrente=:id_contacorrente and id_empresa=:id_empresa';
    qrConsultaconta.Connection:=frmmenu.conexao;
    qrConsultaconta.SQL.Add(str_sql);
    qrConsultaconta.ParamByName('id_contacorrente').AsInteger:=id_contacorrente;
    qrConsultaconta.ParamByName('id_empresa').Asinteger:=RecProj.iEmp;
    qrConsultaconta.ParamByName('saldo').AsFloat:=saldo;
    qrConsultaconta.execute;
    qrConsultaconta.Close;
   end;
end;

end.
