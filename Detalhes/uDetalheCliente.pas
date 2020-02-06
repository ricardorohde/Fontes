unit uDetalheCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, AdvPageControl,
  JvExControls, JvLabel, AdvGroupBox, Vcl.ExtCtrls, AdvGlowButton, cxGroupBox,
  cxRadioGroup, Data.DB, MemDS, DBAccess, Uni, AdvPanel, cxCheckBox, cxMaskEdit,
  cxButtonEdit, Vcl.DBActns, Vcl.ActnList, cxDropDownEdit, cxCalendar,
  System.Actions, cxMemo, JvExStdCtrls, JvCombobox, JvDBCombobox, cxCalc,
  cxSpinEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ACBrBase,
  ACBrSocket, ACBrConsultaCNPJ, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Vcl.Menus;

type
  TfrmDetalheCliente = class(TForm)
    pgcontrol: TAdvPageControl;
    qrDetalhe: TUniQuery;
    qrDetalhecli_001: TIntegerField;
    qrDetalheemp_001: TIntegerField;
    qrDetalhecli_002: TWideStringField;
    qrDetalhecli_003: TWideStringField;
    qrDetalhecli_004: TWideStringField;
    qrDetalhecli_005: TWideStringField;
    qrDetalhecli_006: TWideStringField;
    qrDetalhecli_007: TWideStringField;
    qrDetalhecli_009: TWideStringField;
    qrDetalhecli_012: TWideStringField;
    qrDetalhecli_013: TWideStringField;
    qrDetalhecli_014: TWideStringField;
    qrDetalhecid_001: TIntegerField;
    qrDetalhecep_002: TWideStringField;
    qrDetalhecid_002: TWideStringField;
    qrDetalheusu_001_1: TIntegerField;
    qrDetalheusu_001_2: TIntegerField;
    qrDetalhedat_001_1: TDateTimeField;
    qrDetalhedat_001_2: TDateTimeField;
    qrDetalheinclusao: TWideStringField;
    qrDetalheedicao: TWideStringField;
    qrDetalhecli_008: TWideStringField;
    qrDetalhecep_004: TWideStringField;
    qrDetalhecep_003: TWideStringField;
    qrDetalhesituacao: TWideStringField;
    qrDetalhecli_017: TFloatField;
    qrDetalhebai_001: TIntegerField;
    dsDetalhe: TDataSource;
    qrDetalhecelular1: TWideStringField;
    qrDetalhecelular2: TWideStringField;
    qrDetalhesaldo_atual: TFloatField;
    qrDetalhelimite_credito: TFloatField;
    qrDetalhepontos_atuais: TIntegerField;
    AdvTabSheet1: TAdvTabSheet;
    cxDBTextEdit1: TcxDBTextEdit;
    edNome: TcxDBTextEdit;
    edRG: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    edCPFCNPJ: TDBEdit;
    DBEdit9: TDBEdit;
    JvLabel10: TJvLabel;
    JvLabel11: TJvLabel;
    JvLabel12: TJvLabel;
    JvLabel13: TJvLabel;
    JvLabel14: TJvLabel;
    JvLabel15: TJvLabel;
    JvLabel16: TJvLabel;
    JvLabel18: TJvLabel;
    JvLabel19: TJvLabel;
    JvLabel20: TJvLabel;
    JvLabel25: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    JvLabel9: TJvLabel;
    Label4: TLabel;
    grGrafico: TAdvGroupBox;
    JvLabel17: TJvLabel;
    JvLabel21: TJvLabel;
    dbedit20: TDBEdit;
    dbedit21: TDBEdit;
    AdvGroupBox1: TAdvGroupBox;
    DBText1: TDBText;
    pnBotoes: TFlowPanel;
    btCancelar: TAdvGlowButton;
    btSalvar: TAdvGlowButton;
    btExcluir: TAdvGlowButton;
    btEditar: TAdvGlowButton;
    btNovo: TAdvGlowButton;
    qrDetalheobservacao: TWideStringField;
    btPontosMais: TAdvGlowButton;
    btPontosMenos: TAdvGlowButton;
    ActionList1: TActionList;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetRefresh1: TDataSetRefresh;
    act_confirmar: TAction;
    act_cancelar: TAction;
    acBuscaCEP: TAction;
    acBuscaCidade: TAction;
    edIdCep: TcxDBButtonEdit;
    qrDetalhecidade_desc: TWideStringField;
    edIDCidade: TcxDBButtonEdit;
    JvLabel1: TJvLabel;
    edCidadeDesc: TcxDBTextEdit;
    edIDBairro: TcxDBButtonEdit;
    acBuscaBairro: TAction;
    DBEdit4: TDBEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    btIncluirBairro: TAdvGlowButton;
    qrDetalhecodigo_fidelidade: TWideStringField;
    qrDetalheuf: TWideStringField;
    btLancarCreditoCC: TAdvGlowButton;
    btLancarDebitoCC: TAdvGlowButton;
    cxDBCheckBox1: TcxDBCheckBox;
    qrDetalheram_001: TIntegerField;
    qrDetalhefor_001: TIntegerField;
    qrDetalhecon_001: TIntegerField;
    qrDetalheb_limite_fiado: TBooleanField;
    JvLabel2: TJvLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    qrDetalhedata_nascimento: TDateField;
    qrDetalheemail: TWideStringField;
    JvLabel22: TJvLabel;
    DBEdit1: TDBEdit;
    AdvTabSheet2: TAdvTabSheet;
    qrDetalheobs_bloqueio: TWideStringField;
    qrDetalhesit_001: TIntegerField;
    Label2: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    AdvTabSheet3: TAdvTabSheet;
    qrDetalhefiliacao_mae: TWideStringField;
    qrDetalhefiliacao_pai: TWideStringField;
    qrDetalheprofissao: TWideStringField;
    qrDetalheestado_civil: TWideStringField;
    Label5: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBComboBox1: TDBComboBox;
    cxDBTextEdit5: TcxDBTextEdit;
    Label10: TLabel;
    DBMemo1: TDBMemo;
    qrDetalhenome_conjuge: TWideStringField;
    btEditarBairro: TAdvGlowButton;
    AdvGroupBox4: TAdvGroupBox;
    btBloquear: TAdvGlowButton;
    btDesbloquear: TAdvGlowButton;
    Label1: TLabel;
    cxDBMemo1: TcxDBMemo;
    DBText4: TDBText;
    Label3: TLabel;
    AdvGroupBox2: TAdvGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    qrDetalhedata_consulta_spc: TDateField;
    qrDetalhedia_vencimento: TIntegerField;
    qrDetalhenum_dias_aviso: TIntegerField;
    qrDetalhetaxa_juros: TFloatField;
    qrDetalheid_situacao_spc: TIntegerField;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBCalcEdit1: TcxDBCalcEdit;
    JvDBComboBox1: TJvDBComboBox;
    qrDetalhenum_dias_atraso: TIntegerField;
    cxDBSpinEdit3: TcxDBSpinEdit;
    AdvTabSheet4: TAdvTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qrfinanceiro: TUniQuery;
    dsFinanceiro: TDataSource;
    JvLabel23: TJvLabel;
    qrfinanceiroid_venda: TIntegerField;
    qrfinanceiroid_empresa: TIntegerField;
    qrfinanceiroid_cliente: TIntegerField;
    qrfinanceirovalor_nota: TFloatField;
    qrfinanceirodata: TWideMemoField;
    Label17: TLabel;
    lblTotal: TLabel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    JvLabel24: TJvLabel;
    qrProdutoscomprados: TUniQuery;
    dsProdutoscomprados: TDataSource;
    qrProdutoscompradosid_produto: TIntegerField;
    qrProdutoscompradosquantidade: TFloatField;
    qrProdutoscompradosvalor_unitario: TFloatField;
    qrProdutoscompradosvalor_total: TFloatField;
    cxGrid1DBTableView1id_venda: TcxGridDBColumn;
    cxGrid1DBTableView1valor_nota: TcxGridDBColumn;
    cxGrid1DBTableView1data: TcxGridDBColumn;
    cxGrid2DBTableView1id_produto: TcxGridDBColumn;
    cxGrid2DBTableView1quantidade: TcxGridDBColumn;
    cxGrid2DBTableView1valor_unitario: TcxGridDBColumn;
    cxGrid2DBTableView1valor_total: TcxGridDBColumn;
    qrProdutoscompradosdescricao: TWideStringField;
    cxGrid2DBTableView1descricao: TcxGridDBColumn;
    qrProdutoscompradosven_001: TIntegerField;
    pgcontrolContas: TAdvPageControl;
    AdvTabSheet5: TAdvTabSheet;
    AdvTabSheet6: TAdvTabSheet;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    qrContasareceber: TUniQuery;
    dsContasareceber: TDataSource;
    qrContasareceberdata_vencimento: TDateField;
    qrContasarecebervalor_pago: TFloatField;
    qrContasarecebervalor: TFloatField;
    qrContasarecebervalor_restante: TFloatField;
    cxGrid3DBTableView1data_vencimento: TcxGridDBColumn;
    cxGrid3DBTableView1valor_pago: TcxGridDBColumn;
    cxGrid3DBTableView1valor: TcxGridDBColumn;
    cxGrid3DBTableView1valor_restante: TcxGridDBColumn;
    qrContasareceberid_cliente: TIntegerField;
    qrContasareceberid_venda: TIntegerField;
    cxGrid3DBTableView1id_venda: TcxGridDBColumn;
    qrContasrecebidas: TUniQuery;
    dsContasrecebidas: TDataSource;
    qrContasrecebidasid_empresa: TIntegerField;
    qrContasrecebidasid_cliente: TIntegerField;
    qrContasrecebidasid_venda: TIntegerField;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    qrContasrecebidasdata_vencimento: TDateField;
    qrContasrecebidasvalor_nota: TFloatField;
    qrContasrecebidasdata_pagamento: TDateTimeField;
    cxGrid4DBTableView1id_venda: TcxGridDBColumn;
    cxGrid4DBTableView1data_vencimento: TcxGridDBColumn;
    cxGrid4DBTableView1valor_nota: TcxGridDBColumn;
    cxGrid4DBTableView1data_pagamento: TcxGridDBColumn;
    cbtipopessoa: TJvDBComboBox;
    qrDetalhetipo_pessoa: TWideStringField;
    Label18: TLabel;
    JvDBComboBox3: TJvDBComboBox;
    Label19: TLabel;
    qrDetalhesituacao_ie: TWideStringField;
    qrDetalhesexo: TWideStringField;
    JvDBComboBox4: TJvDBComboBox;
    Label20: TLabel;
    btAtivar: TAdvGlowButton;
    qrDetalhetipo_cliente: TWideStringField;
    btAtualizarSintegra: TAdvGlowButton;
    ACBrConsultaCNPJ: TACBrConsultaCNPJ;
    qraux1: TUniQuery;
    btNovoSintegra: TAdvGlowButton;
    qrxAux2: TUniQuery;
    PopupMenu1: TPopupMenu;
    REIMPRIMIRCUPOM1: TMenuItem;
    qrfinanceiroid_situacao: TIntegerField;
    procedure btNovoClick(Sender: TObject);
    constructor Create(Sender: tcomponent; id_cliente: integer = 0);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure ValidaBotoes;
    procedure dsDetalheStateChange(Sender: TObject);
    procedure qrDetalheNewRecord(DataSet: TDataSet);
    procedure acBuscaCEPExecute(Sender: TObject);
    procedure acBuscaCidadeExecute(Sender: TObject);
    procedure qrDetalhecep_002Change(Sender: TField);
    procedure qrDetalhecid_001Change(Sender: TField);
    procedure qrDetalhecli_002Change(Sender: TField);
    procedure acBuscaBairroExecute(Sender: TObject);
    procedure qrDetalhebai_001Change(Sender: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btIncluirBairroClick(Sender: TObject);
    procedure qrDetalhecli_004Change(Sender: TField);
    procedure qrDetalheBeforePost(DataSet: TDataSet);
    procedure btPontosMaisClick(Sender: TObject);
    procedure btPontosMenosClick(Sender: TObject);
    procedure btLancarCreditoCCClick(Sender: TObject);
    procedure btLancarDebitoCCClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btBloquearClick(Sender: TObject);
    procedure btDesbloquearClick(Sender: TObject);
    procedure btEditarBairroClick(Sender: TObject);
    procedure qrfinanceiroBeforeOpen(DataSet: TDataSet);
    procedure qrfinanceiroAfterOpen(DataSet: TDataSet);
    procedure qrProdutoscompradosBeforeOpen(DataSet: TDataSet);
    procedure qrContasareceberBeforeOpen(DataSet: TDataSet);
    procedure qrContasrecebidasBeforeOpen(DataSet: TDataSet);
    procedure qrContasrecebidasAfterOpen(DataSet: TDataSet);
    procedure cxDBSpinEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBSpinEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBSpinEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBCalcEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure qrDetalhetipo_pessoaChange(Sender: TField);
    procedure qrDetalhesit_001Change(Sender: TField);
    procedure btAtivarClick(Sender: TObject);
    procedure btAtualizarSintegraClick(Sender: TObject);
    procedure ChamaCaptcha;
    procedure CadastraBairro;
    procedure btNovoSintegraClick(Sender: TObject);
    procedure cbtipopessoaChange(Sender: TObject);
    procedure qrDetalheAfterRefresh(DataSet: TDataSet);
    procedure REIMPRIMIRCUPOM1Click(Sender: TObject);

  private
    { Private declarations }
    bNovoReg: boolean;
  public
    { Public declarations }
    sCaptcha: string;
  end;

var
  frmDetalheCliente: TfrmDetalheCliente;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uBuscaRegistro, uDetalheBairro,
  uDetalheClienteMovimentoConta, uCaptcha, uFuncoes, uPDVFechamento;

constructor TfrmDetalheCliente.Create(Sender: tcomponent;
  id_cliente: integer = 0);
var str_aux : string;
    acesso : boolean;
begin
  inherited Create(Sender);

  str_aux := 'select b_acesso_clientes from usuarios where usu_001=' + inttostr(recproj.iUsuario);
  buscacampo( acesso, str_aux, '', false);
  frmMenu.VerificaPermissaoAcesso(acesso);

  qrDetalhe.ParamByName('ID').AsInteger := id_cliente;
  qrDetalhe.ParamByName('emp').AsInteger := RecProj.iEmp;
  qrDetalhe.Open;

  if id_cliente = 0 then
    qrDetalhe.Append;

  bNovoReg := id_cliente = 0;
  qrfinanceiro.Open;         // Abrindo a tabela do qr financeiro           Programador: Rafael 24/04/2017
  qrProdutoscomprados.Open; //  Abrindo a tela consulta produtos vendidos   Programador: Rafael 24/04/2017
  qrContasareceber.Open;   //   Abrindo consulta de contas a receber        Programador: Rafael 25/04/2017
  qrContasrecebidas.Open   //   Abrindo consulta de contas a recebidas      Programador: Rafael 25/04/2017
end;

procedure TfrmDetalheCliente.cxDBCalcEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['-']  then key:=#0
end;

procedure TfrmDetalheCliente.cxDBSpinEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['-']  then key:=#0
end;

procedure TfrmDetalheCliente.cxDBSpinEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['-']  then key:=#0
end;

procedure TfrmDetalheCliente.cxDBSpinEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['-']  then key:=#0
end;

procedure TfrmDetalheCliente.dsDetalheStateChange(Sender: TObject);
begin
  ValidaBotoes;
end;

procedure TfrmDetalheCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
  begin
       //enter não deve sair do memo de observações
    if Screen.ActiveControl is TcxCustomInnerMemo then
    begin
      if not (lowercase(TcxCustomInnerTextEdit(Screen.ActiveControl).Parent.Name) = 'meobservacaofinanceiro') then
      begin
        Perform(WM_NEXTDLGCTL, 0, 0);
      end;
    end
    else
      Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if (Key = vk_f1) and (btNovoSintegra.Enabled) then
    btNovoSintegra.Click
  else if (Key = vk_f2) and (btNovo.Enabled) then
    btNovo.Click
  else if (Key = vk_f3) and (btEditar.Enabled) then
    btEditar.Click
  else if (Key = vk_f4) and (btExcluir.Enabled) then
    btExcluir.Click
  else if (Key = vk_f5) and (btSalvar.Enabled) then
    btSalvar.Click
  else if (Key = vk_f6) and (btCancelar.Enabled) then
    btCancelar.Click;
end;

procedure TfrmDetalheCliente.FormShow(Sender: TObject);
begin
  pgcontrol.ActivePageIndex := 0;
  edNome.SetFocus;
  pgcontrolContas.ActivePageIndex :=0;
  cbTipoPessoaChange(nil);
end;

procedure TfrmDetalheCliente.qrContasareceberBeforeOpen(DataSet: TDataSet);
begin
    qrContasareceber.ParamByName('id_empresa').AsInteger:=
    qrDetalhe.FieldByName('emp_001').AsInteger;
    qrContasareceber.ParamByName('id_cliente').AsInteger :=
    qrDetalhe.FieldByName('cli_001').AsInteger;
end;

procedure TfrmDetalheCliente.qrContasrecebidasAfterOpen(DataSet: TDataSet);
begin
    qrContasareceber.Open;
end;

procedure TfrmDetalheCliente.qrContasrecebidasBeforeOpen(DataSet: TDataSet);
begin
      qrContasrecebidas.ParamByName('id_cliente').AsInteger :=
      qrdetalhe.FieldByName('cli_001').AsInteger;
      qrContasrecebidas.ParamByName('id_empresa').AsInteger :=
      qrdetalhe.FieldByName('emp_001').AsInteger;
end;

procedure TfrmDetalheCliente.qrDetalheAfterRefresh(DataSet: TDataSet);
begin
  cbTipoPessoaChange(nil);
end;

procedure TfrmDetalheCliente.qrDetalhebai_001Change(Sender: TField);
var
  bairro: string;
begin
  if Sender.IsNull then
    exit;

  if not BuscaCampo(bairro, 'select bai_002 from bairro where bai_001=' +
    QuotedStr(Sender.AsString) + ' and emp_001=' + IntToStr(RecProj.iEmp),
    'Bairro') then
  begin
    Sender.value := null;
    abort;
  end
  else
    qrDetalhe.FieldByName('cep_003').AsString := bairro;
end;

procedure TfrmDetalheCliente.qrDetalheBeforePost(DataSet: TDataSet);
begin
  pgcontrol.ActivePageIndex:= 0;

  if Trim(qrDetalhe.FieldByName('cli_002').AsString) = EmptyStr then
  begin
    Application.MessageBox('PREENCHA O CAMPO NOME/RAZÃO SOCIAL!', 'ATENÇÃO', 64);
    edNome.SetFocus;
    abort;
  end;

  if (qrDetalhe.FieldByName('situacao_ie').AsString = 'C') then
  begin
    if (Trim(qrDetalhe.FieldByName('cli_004').AsString) = EmptyStr) then
    begin
      Application.MessageBox('PREENCHA O CPF/CNPJ!', 'ATENÇÃO', 64);
      edCPFCNPJ.SetFocus;
      abort;
    end;

    if (Trim(qrDetalhe.FieldByName('cli_005').AsString) = EmptyStr) then
    begin
      Application.MessageBox('PREENCHA O RG/IE!', 'ATENÇÃO', 64);
      edRG.SetFocus;
      abort;
    end;
  end;
end;

procedure TfrmDetalheCliente.qrDetalhecep_002Change(Sender: TField);
var
  str_sql: string;
  qry: TUniQuery;
begin
  qry := TUniQuery.Create(self);
  qry.Connection := frmMenu.conexao;
  str_sql :=
    ' SELECT CEP.CEP_001, CEP.CID_001, CEP.CEP_002, CEP.CEP_004, CEP.CEP_003,   CID.CID_002, EST.EST_003, PAI.PAI_002 '
    + ' FROM CEPS CEP ' +
    ' LEFT OUTER JOIN CIDADES CID ON (CID.CID_001 = CEP.CID_001) ' +
    ' LEFT OUTER JOIN ESTADOS EST ON (EST.EST_001 = CID.EST_001) ' +
    ' LEFT OUTER JOIN PAISES PAI ON (PAI.PAI_001 = EST.PAI_001) ' +
    ' where CEP.CEP_002 = ' + QuotedStr(qrDetalhe.FieldByName('CEP_002')
    .AsString);
  ExecutaConsultaSQL(qry, str_sql);


  if qry.RecordCount > 0 then
  begin
    // preenche os campos  CEP -ENDERECO - CIDADE
      qrDetalhe.FieldByName('cid_001').Asinteger :=qry.FieldByName('cid_001').AsInteger ;
      qrDetalhe.FieldByName('cep_004').AsString := qry.FieldByName('cep_004').AsString;
      qrDetalhe.FieldByName('cidade_desc').AsString := qry.FieldByName('cid_002').AsString;
  end

end;

procedure TfrmDetalheCliente.qrDetalhecid_001Change(Sender: TField);
var
  cidade: string;
begin
  if Sender.IsNull then
    exit;

  if not BuscaCampo(cidade, 'select cid_002 from cidades where cid_001=' +
    Sender.AsString, 'Cidade') then
  begin
    Sender.value := null;
    abort;
  end
  else
  begin
    qrDetalhe.FieldByName('cidade_desc').AsString := cidade;
    BuscaCampo(cidade,
      'select e.est_003 from cidades c join estados e  on c.est_001=e.est_001 where c.cid_001='
      + Sender.AsString, 'Cidade');
    qrDetalhe.FieldByName('uf').AsString := cidade;
  end;

end;

procedure TfrmDetalheCliente.qrDetalhecli_002Change(Sender: TField);
begin
  if qrDetalhe.State in [dsInsert, dsEdit] then
    qrDetalhecli_003.AsString := qrDetalhecli_002.AsString;
end;

procedure TfrmDetalheCliente.qrDetalhecli_004Change(Sender: TField);
var
  aux: string;
begin
  if Sender.IsNull then
    exit;

  if BuscaCampo(aux,
    'select concat(cli_001, '' - '', cli_002) as cl  from clientes where cli_001 <> ' + qrDetalhecli_001.AsString + ' and ' +
    ' replace(replace(replace(cli_004, ''.'', ''''),'' '', ''''), ''-'', '''') '
    + ' like  replace(replace(replace(' + QuotedStr(Sender.AsString) +
    ', ''.'', ''''),'' '', ''''), ''-'', '''') ' + ' and emp_001=' +
    IntToStr(RecProj.iEmp), 'Cliente', false) then
  begin
    if not(Application.MessageBox
      (Pchar('O CPF/CNPJ informado já está cadastrado para o cliente: '#13#10 +
      aux + #13#10 + 'Deseja continuar com o registro mesmo assim?'), 'Atenção',
      MB_ICONQUESTION + MB_YESNO) = mrYes) then
    begin
      Sender.value := null;
      abort;
    end;
  end
end;

procedure TfrmDetalheCliente.qrDetalheNewRecord(DataSet: TDataSet);
begin
  qrDetalhe.FieldByName('emp_001').AsInteger := RecProj.iEmp;
  qrDetalhe.FieldByName('cli_001').AsInteger := 0;
  qrDetalhe.FieldByName('sexo').asstring:='N';
  qrDetalhe.FieldByName('tipo_pessoa').asstring := 'F'; // tipo   1=PJ, 2=PF
  qrDetalhe.FieldByName('b_limite_fiado').asboolean := true;
  qrDetalhe.FieldByName('dat_001_1').asDateTime := Date;
  qrDetalhe.FieldByName('id_situacao_spc').AsInteger:=1;

end;

procedure TfrmDetalheCliente.qrDetalhesit_001Change(Sender: TField);
var situacao : string;
begin
  if qrDetalhe.fieldbyname('sit_001').AsInteger=3 then
  begin
    btAtivar.Enabled :=true;
    btAtivar.caption := 'Ativar Cliente';
  end
  else if qrDetalhe.fieldbyname('sit_001').AsInteger=4 then
  begin
    btAtivar.Enabled :=true;
    btAtivar.caption := 'Desativar Cliente';
  end
  else
  begin
    btAtivar.Enabled :=false;
  end;

  btBloquear.Enabled := qrDetalhe.FieldByName('sit_001').AsInteger = 4;
  btDesbloquear.Enabled := qrDetalhe.FieldByName('sit_001').AsInteger = 5;

  BuscaCampo(situacao, format('select cast(fn_situacoes(%d) as varchar(100))',[qrDetalhe.fieldbyname('sit_001').AsInteger]) , '', false);
  qrDetalhe.fieldbyname('situacao').AsString := situacao;

end;

procedure TfrmDetalheCliente.qrDetalhetipo_pessoaChange(Sender: TField);
begin
  if qrDetalhe.state = dsInsert then
  begin
    if qrDetalhe.FieldByName('tipo_pessoa').AsString ='F'  then
    begin

      qrDetalhe.FieldByName('situacao_ie').AsString :='N';
      if qrDetalhe.FieldByName('sexo').asstring='N' then
        qrDetalhe.FieldByName('sexo').asstring:='F';
    end
    else
    begin

      qrDetalhe.FieldByName('situacao_ie').AsString :='C';
      qrDetalhe.FieldByName('sexo').asstring:='N';
    end;
  end;
end;

procedure TfrmDetalheCliente.qrfinanceiroAfterOpen(DataSet: TDataSet);
var
  soma: double;

begin
  soma := 0;
  if qrfinanceiro.RecordCount > 0 then
  begin
    while not qrfinanceiro.Eof do // EOF final de arquivo
    begin // Quando usar While e não for uma linha só, usar begin e end
      soma := soma + qrfinanceiro.FieldByName('valor_nota').AsFloat;
      qrfinanceiro.Next; // next proximo registro
    end;
  end;
  lblTotal.Caption:= format('R$ %.2f',[soma]);
end;

procedure TfrmDetalheCliente.qrfinanceiroBeforeOpen(DataSet: TDataSet);
begin
  qrfinanceiro.ParamByName('id_cliente').AsInteger :=
    qrDetalhe.FieldByName('cli_001').AsInteger;
  qrfinanceiro.ParamByName('id_empresa').AsInteger :=
    qrDetalhe.FieldByName('emp_001').AsInteger;
end;


procedure TfrmDetalheCliente.qrProdutoscompradosBeforeOpen(DataSet: TDataSet);
begin
    qrProdutoscomprados.ParamByName('id_cliente').AsInteger :=
    qrDetalhe.FieldByName('cli_001').AsInteger;
    qrProdutoscomprados.ParamByName('id_empresa').AsInteger :=
    qrDetalhe.FieldByName('emp_001').AsInteger;
end;

procedure TfrmDetalheCliente.REIMPRIMIRCUPOM1Click(Sender: TObject);
begin
  if qrfinanceiro.Active then
  begin
    if (qrfinanceiro.RecordCount>0) and (qrfinanceiro.FieldByName('id_situacao').AsInteger=4) then
    begin
      frmPDVFechamento := TfrmPDVFechamento.Create(self, qrprodutoscomprados.FieldByName('ven_001').AsInteger);
      frmPDVFechamento.ReimpressaoCupom;
      frmPDVFechamento.Free;
    end;
  end;
end;

procedure TfrmDetalheCliente.ValidaBotoes;
begin
  if qrDetalhe.Active then
  begin
    // aberto, nao editando...
    if qrDetalhe.State = dsBrowse then
    begin
      btNovo.Enabled := true;
      btNovoSintegra.Enabled := true;
      btEditar.Enabled := true;
      btExcluir.Enabled := true;
      btSalvar.Enabled := false;
      btCancelar.Enabled := false;
      btPontosMais.Enabled := false;
      btPontosMenos.Enabled := false;
      btLancarCreditoCC.Enabled := true;
      btLancarDebitoCC.Enabled := true;
      btIncluirBairro.Enabled := false;
      btEditarBairro.Enabled := false;
      if qrDetalhe.RecordCount <= 0 then
      begin
        btEditar.Enabled := false;
        btExcluir.Enabled := false;
      end;

      btBloquear.Enabled := false;
      btDesbloquear.Enabled := false;
      btAtivar.Enabled := false;
      // sit_001=5 -> bloqueado

    end
    else if qrDetalhe.State in [dsInsert, dsEdit] then
    begin
      btNovo.Enabled := false;
      btNovoSintegra.Enabled := false;
      btEditar.Enabled := false;
      btExcluir.Enabled := false;
      btSalvar.Enabled := true;
      btCancelar.Enabled := true;
      btIncluirBairro.Enabled := true;
      btEditarBairro.Enabled := true;
      btLancarCreditoCC.Enabled := false;
      btLancarDebitoCC.Enabled := false;
      if qrDetalhe.State = dsInsert then
      begin
        btPontosMais.Enabled := false;
        btPontosMenos.Enabled := false;
      end
      else
      begin
        btPontosMais.Enabled := true;
        btPontosMenos.Enabled := true;
      end;
       qrDetalhesit_001Change(nil);
    end;
  end
  else
  begin
    btNovo.Enabled := true;
    btNovoSintegra.Enabled := true;
    btEditar.Enabled := false;
    btExcluir.Enabled := false;
    btSalvar.Enabled := false;
    btCancelar.Enabled := false;
    btPontosMais.Enabled := false;
    btPontosMenos.Enabled := false;
    btLancarCreditoCC.Enabled := false;
    btLancarDebitoCC.Enabled := false;
    btIncluirBairro.Enabled := false;
    btEditarBairro.Enabled := false;
    btBloquear.Enabled := false;
    btDesbloquear.Enabled := false;
    btAtivar.Enabled := false;
  end;
end;

procedure TfrmDetalheCliente.acBuscaBairroExecute(Sender: TObject);
begin
  if qrDetalhe.Active then
  begin
    if qrDetalhe.State in [dsEdit, dsInsert] then
    begin
      edIDBairro.SetFocus;
      frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
        ' select bai_001, emp_001, bai_002, bai_003 from bairro ',
        vararrayof([2, 3]), vararrayof(['Bairro', 'Taxa de entrega']), 0, 0,
        ' sit_001=4 and emp_001= ' + IntToStr(RecProj.iEmp));
      frmBuscaRegistro.ShowModal;
      if frmBuscaRegistro.Tag = 1 then
        qrDetalhe.FieldByName('bai_001').value :=
          frmBuscaRegistro.valor_retorno;
      frmBuscaRegistro.Free;
    end;
  end;
end;

procedure TfrmDetalheCliente.acBuscaCEPExecute(Sender: TObject);
begin
  if qrDetalhe.Active then
  begin
    if qrDetalhe.State in [dsEdit, dsInsert] then
    begin
      edIdCep.SetFocus;
      frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
        ' SELECT CEP.CEP_001, CEP.CEP_002, CEP.CEP_004, CEP.CEP_003,   CID.CID_002, EST.EST_003, PAI.PAI_002 '
        + ' FROM CEPS CEP ' +
        ' LEFT OUTER JOIN CIDADES CID ON (CID.CID_001 = CEP.CID_001) ' +
        ' LEFT OUTER JOIN ESTADOS EST ON (EST.EST_001 = CID.EST_001) ' +
        ' LEFT OUTER JOIN PAISES PAI ON (PAI.PAI_001 = EST.PAI_001) ',
        vararrayof([1, 2, 3, 4, 5, 6]), vararrayof(['CEP', 'Endereço', 'Bairro',
        'Cidade', 'Estado', 'Pais']), 1, 0);
      frmBuscaRegistro.ShowModal;
      if frmBuscaRegistro.Tag = 1 then
        qrDetalhe.FieldByName('cep_002').value :=
          frmBuscaRegistro.valor_retorno;
      frmBuscaRegistro.Free;
    end;
  end;
end;

procedure TfrmDetalheCliente.acBuscaCidadeExecute(Sender: TObject);
begin
  if qrDetalhe.Active then
  begin
    if qrDetalhe.State in [dsEdit, dsInsert] then
    begin
      edIDCidade.SetFocus;
      frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
        ' SELECT CID.CID_001, CID.CID_002, EST.EST_003, PAI.PAI_002 ' +
        ' FROM CIDADES CID ' +
        ' LEFT OUTER JOIN ESTADOS EST ON (EST.EST_001 = CID.EST_001) ' +
        ' LEFT OUTER JOIN PAISES PAI ON (PAI.PAI_001 = EST.PAI_001)',
        vararrayof([1, 2, 3]), vararrayof(['Cidade', 'Estado', 'Pais']), 0, 0);
      frmBuscaRegistro.ShowModal;
      if frmBuscaRegistro.Tag = 1 then
        qrDetalhe.FieldByName('cid_001').value :=
          frmBuscaRegistro.valor_retorno;
      frmBuscaRegistro.Free;
    end;
  end;
end;

procedure TfrmDetalheCliente.btAtivarClick(Sender: TObject);
begin
  if qrDetalhe.fieldbyname('sit_001').AsInteger=3 then
    qrDetalhe.fieldbyname('sit_001').AsInteger:=4
  else if qrDetalhe.fieldbyname('sit_001').AsInteger=4 then
    qrDetalhe.fieldbyname('sit_001').AsInteger:=3;
end;

procedure TfrmDetalheCliente.btAtualizarSintegraClick(Sender: TObject);
var sTel1, sTel2: string;
begin
  //Atualiza dados do cliente com o sintegra - Bruno 09-03-2018
  //Apenas pessoas jurídicas
  if qrDetalhe.State in [dsInsert, dsEdit] then
  begin
    qrDetalhecli_004.AsString:= edCPFCNPJ.Text;
    if qrDetalhecli_004.AsString <> EmptyStr then
    begin
      if Confirma('Confirma a atualização dos dados do cliente com os dados do Sintegra?', 'ATENÇÃO', True) then
      begin
        sCaptcha := '';

        ChamaCaptcha;

        if sCaptcha <> '' then
        begin
          try
            if ACBrConsultaCNPJ.Consulta(qrDetalhecli_004.AsString, sCaptcha, True) then
            begin
              qrDetalhecli_002.AsString := ACBrConsultaCNPJ.RazaoSocial;
              qrDetalhecli_003.AsString := ACBrConsultaCNPJ.Fantasia;
              qrDetalhecep_004.AsString := ACBrConsultaCNPJ.Endereco;
              qrDetalhecli_008.AsString := ACBrConsultaCNPJ.Numero;
              qrDetalhecep_002.AsString := ACBrConsultaCNPJ.CEP;
              qrDetalheUF.AsString      := ACBrConsultaCNPJ.UF;

              sTel1:= Copy(ACBrConsultaCNPJ.Telefone, 0, 14);
              sTel2:= Copy(ACBrConsultaCNPJ.Telefone, 18, 14);

              qrDetalhecli_012.AsString := StringReplace(sTel1, ' ', EmptyStr, [rfReplaceAll]);
              qrDetalhecli_013.AsString := StringReplace(sTel2, ' ', EmptyStr, [rfReplaceAll]);

              //BAIRRO
              with qraux1 do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select bai_001, bai_002 from bairro where unaccent(bai_002) = unaccent(:BAIRRO)');
                ParamByName('BAIRRO').Value:= ACBrConsultaCNPJ.Bairro;
                Open;

                if not IsEmpty then
                begin
                  qrDetalhebai_001.AsInteger := FieldByName('bai_001').AsInteger;
                  qrDetalhecep_003.AsString  := FieldByName('bai_002').AsString;
                end
                else
                begin
                  CadastraBairro;

                  with qrxAux2 do
                  begin
                    Close;
                    SQL.Clear;
                    SQL.Add('select bai_001, bai_002 from bairro where unaccent(bai_002) = unaccent(:BAIRRO)');
                    ParamByName('BAIRRO').Value:= ACBrConsultaCNPJ.Bairro;
                    Open;

                    if not IsEmpty then
                    begin
                      qrDetalhebai_001.AsInteger := FieldByName('bai_001').AsInteger;
                      qrDetalhecep_003.AsString  := FieldByName('bai_002').AsString;
                    end;
                  end;
                end;
              end;

              //CIDADE
              with qraux1 do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select c.* from cidades c left join estados e on e.est_001 = c.est_001 where unaccent(c.cid_002) = unaccent(:cidade) and e.est_003 = :uf');
                ParamByName('CIDADE').Value:= ACBrConsultaCNPJ.Cidade;
                ParamByName('UF').Value:= ACBrConsultaCNPJ.UF;
                Open;

                if not IsEmpty then
                begin
                  qrDetalhecid_001.AsInteger     := FieldByName('cid_001').AsInteger;
                  qrDetalhecidade_desc.AsString  := FieldByName('cid_002').AsString;
                end;
              end;
            end
            else
            begin
              Application.MessageBox('Erro ao consultar SINTEGRA.' + #13 + 'Tente Novamente!', 'Atenção', MB_ICONEXCLAMATION);
              Exit;
            end;
          except
            Application.MessageBox('Erro ao consultar SINTEGRA.' + #13 + 'Tente Novamente!', 'Atenção', MB_ICONEXCLAMATION);
            Exit;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmDetalheCliente.CadastraBairro;
begin
  qrxAux2.Close;
  qrxAux2.SQL.Clear;
  qrxAux2.SQL.Text:= 'insert into bairro (emp_001, bai_002, bai_003, sit_001, usu_001_1, dat_001_1) ' +
                     'values (:emp_001, :bai_002, :bai_003, :sit_001, :usu_001_1, :dat_001_1)';
  qrxAux2.ParamByName('emp_001').AsInteger   := RecProj.iEmp;
  qrxAux2.ParamByName('bai_002').AsString    := ACBrConsultaCNPJ.Bairro;
  qrxAux2.ParamByName('bai_003').AsFloat     := 0.00;
  qrxAux2.ParamByName('sit_001').AsInteger   := 4;
  qrxAux2.ParamByName('usu_001_1').AsInteger := RecProj.iUsuario;
  qrxAux2.ParamByName('dat_001_1').AsDateTime:= Now;
  qrxAux2.Execute;
end;

procedure TfrmDetalheCliente.cbtipopessoaChange(Sender: TObject);
begin
if cbTipoPessoa.ItemIndex = 1 then
    btAtualizarSintegra.Visible:= True
  else
    btAtualizarSintegra.Visible:= False;
end;

procedure TfrmDetalheCliente.ChamaCaptcha;
begin
   Screen.Cursor := crHourGlass;
   frmCaptcha := TfrmCaptcha.Create(Application);
   try
     frmCaptcha.ShowModal;
   finally
     frmCaptcha.Release;
     frmCaptcha := nil;
     Screen.Cursor := crDefault;
   end;
end;

procedure TfrmDetalheCliente.btBloquearClick(Sender: TObject);
var
  motivo: string;
begin
  motivo := Chama_Justificativa('Motivo de bloqueio de cliente', 'Cliente',
    qrDetalhe.FieldByName('CLI_001').AsString);
  if motivo <> '' then
  begin
    //qrDetalhe.Edit;
    qrDetalhe.FieldByName('sit_001').AsInteger := 5;
    qrDetalhe.FieldByName('obs_bloqueio').AsString := motivo;

  end;
end;

procedure TfrmDetalheCliente.btCancelarClick(Sender: TObject);
begin
  qrDetalhe.Cancel;
  qrDetalhe.Refresh;
end;

procedure TfrmDetalheCliente.btDesbloquearClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma o desbloqueio do cliente?', 'Atenção',
    MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    qrDetalhe.FieldByName('sit_001').AsInteger := 4;
    qrDetalhe.FieldByName('obs_bloqueio').AsString := '';
   end;
end;

procedure TfrmDetalheCliente.btEditarBairroClick(Sender: TObject);
var
  nome_bairro: string;
begin
  if dsDetalhe.State in [dsInsert, dsEdit] then
  begin
    if qrDetalhe.FieldByName('bai_001').AsInteger > 0 then
    begin
      frmDetalheBairro := TfrmDetalheBairro.Create(self,
        qrDetalhe.FieldByName('bai_001').AsInteger);
      frmDetalheBairro.btEditar.Click;
      frmDetalheBairro.ShowModal;
      frmDetalheBairro.Free;

      BuscaCampo(nome_bairro,
        format('select bai_002 from bairro where emp_001=%d and bai_001=%d',
        [RecProj.iEmp, qrDetalhe.FieldByName('bai_001').AsInteger]), '', false);

      qrDetalhe.FieldByName('cep_003').AsString := nome_bairro;

    end;
  end;
end;

procedure TfrmDetalheCliente.btEditarClick(Sender: TObject);
begin
  qrDetalhe.Edit;
end;

procedure TfrmDetalheCliente.btExcluirClick(Sender: TObject);
var
  ret, id_cliente: integer;
begin
  if Application.MessageBox
    ('Confirma a exclusão do registro? Esta ação não pode ser desfeita',
    'Atenção', MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      id_cliente := qrDetalhe.FieldByName('cli_001').AsInteger;
      qrDetalhe.Delete;
    except
      on E: Exception do
      begin
        ret := Application.MessageBox
          (Pchar('Erro ao excluir o registro. A exclusão não é possível caso o item já tenha sido usado no sistema.'
          + ' Gostaria de inativar o item?'), 'Atenção',
          MB_ICONERROR + MB_YESNO);
        if ret = mrYes then
        begin
          ExecutaComandoSQL('update clientes set sit_001=3 where cli_001=' +
            IntToStr(id_cliente) + ' and emp_001=' + IntToStr(RecProj.iEmp))
        end
        else if ret = mrClose then
        begin
          Application.MessageBox(Pchar(E.Message), 'Detalhes do erro');
        end;
      end;
    end;
  end;
  qrDetalhe.close;
end;

procedure TfrmDetalheCliente.btIncluirBairroClick(Sender: TObject);
begin
  frmDetalheBairro := TfrmDetalheBairro.Create(self, 0);
  frmDetalheBairro.ShowModal;
  frmDetalheBairro.Free;
  edIDBairro.SetFocus;
  acBuscaBairro.Execute;
end;

procedure TfrmDetalheCliente.btLancarCreditoCCClick(Sender: TObject);
begin
  frmDetalheClienteMovimentoConta := TfrmDetalheClienteMovimentoConta.Create
    (self, qrDetalhe.FieldByName('cli_001').AsInteger, 'C');
  frmDetalheClienteMovimentoConta.ShowModal;
  frmDetalheClienteMovimentoConta.Free;
  qrDetalhe.Refresh;
end;

procedure TfrmDetalheCliente.btLancarDebitoCCClick(Sender: TObject);
var
  valor: double;
begin
  frmDetalheClienteMovimentoConta := TfrmDetalheClienteMovimentoConta.Create
    (self, qrDetalhe.FieldByName('cli_001').AsInteger, 'D');
  frmDetalheClienteMovimentoConta.ShowModal;
  frmDetalheClienteMovimentoConta.Free;
  qrDetalhe.Refresh;
end;

procedure TfrmDetalheCliente.btNovoClick(Sender: TObject);
begin
  if not qrDetalhe.Active then
    qrDetalhe.Open;
    qrDetalhe.Append; // abre o insert
    pgcontrol.ActivePageIndex := 0;
    edNome.SetFocus;
end;

procedure TfrmDetalheCliente.btNovoSintegraClick(Sender: TObject);
var sCNPJ: string;
    sTel1, sTel2: string;
begin
  sCNPJ:= EmptyStr;
  if InputQuery('Informe o CNPJ', 'CNPJ:', sCNPJ) then
  begin
    if sCNPJ = EmptyStr then
    begin
      application.MessageBox('CNPJ não informado!', 'Atenção', MB_ICONEXCLAMATION);
      Exit;
    end;

    if not qrDetalhe.Active then
      qrDetalhe.Open;

    qrDetalhe.Append; // abre o insert
    qrDetalhetipo_pessoa.AsString:= 'J';
    qrDetalhecli_004.AsString:= sCNPJ;

    //Consulta dados do cliente no sintegra - Bruno 12-03-2018
    //Apenas pessoas jurídicas
    if qrDetalhe.State in [dsInsert, dsEdit] then
    begin
      if qrDetalhecli_004.AsString <> EmptyStr then
      begin
        sCaptcha := '';

        ChamaCaptcha;

        if sCaptcha <> '' then
        begin
          try
            if ACBrConsultaCNPJ.Consulta(qrDetalhecli_004.AsString, sCaptcha, True) then
            begin
              qrDetalhecli_002.AsString := ACBrConsultaCNPJ.RazaoSocial;
              qrDetalhecli_003.AsString := ACBrConsultaCNPJ.Fantasia;
              qrDetalhecep_004.AsString := ACBrConsultaCNPJ.Endereco;
              qrDetalhecli_008.AsString := ACBrConsultaCNPJ.Numero;
              qrDetalhecep_002.AsString := ACBrConsultaCNPJ.CEP;
              qrDetalheUF.AsString      := ACBrConsultaCNPJ.UF;

              sTel1:= Copy(ACBrConsultaCNPJ.Telefone, 0, 14);
              sTel2:= Copy(ACBrConsultaCNPJ.Telefone, 18, 14);

              qrDetalhecli_012.AsString := StringReplace(sTel1, ' ', EmptyStr, [rfReplaceAll]);
              qrDetalhecli_013.AsString := StringReplace(sTel2, ' ', EmptyStr, [rfReplaceAll]);

              //BAIRRO
              with qraux1 do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select bai_001, bai_002 from bairro where unaccent(bai_002) = unaccent(:BAIRRO)');
                ParamByName('BAIRRO').Value:= ACBrConsultaCNPJ.Bairro;
                Open;

                if not IsEmpty then
                begin
                  qrDetalhebai_001.AsInteger := FieldByName('bai_001').AsInteger;
                  qrDetalhecep_003.AsString  := FieldByName('bai_002').AsString;
                end
                else
                begin
                  CadastraBairro;

                  with qrxAux2 do
                  begin
                    Close;
                    SQL.Clear;
                    SQL.Add('select bai_001, bai_002 from bairro where unaccent(bai_002) = unaccent(:BAIRRO)');
                    ParamByName('BAIRRO').Value:= ACBrConsultaCNPJ.Bairro;
                    Open;

                    if not IsEmpty then
                    begin
                      qrDetalhebai_001.AsInteger := FieldByName('bai_001').AsInteger;
                      qrDetalhecep_003.AsString  := FieldByName('bai_002').AsString;
                    end;
                  end;
                end;
              end;

              //CIDADE
              with qraux1 do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select c.* from cidades c left join estados e on e.est_001 = c.est_001 where unaccent(c.cid_002) = unaccent(:cidade) and e.est_003 = :uf');
                ParamByName('CIDADE').Value:= ACBrConsultaCNPJ.Cidade;
                ParamByName('UF').Value:= ACBrConsultaCNPJ.UF;
                Open;

                if not IsEmpty then
                begin
                  qrDetalhecid_001.AsInteger     := FieldByName('cid_001').AsInteger;
                  qrDetalhecidade_desc.AsString  := FieldByName('cid_002').AsString;
                end;
              end;
            end
            else
            begin
              Application.MessageBox('Erro ao consultar SINTEGRA.' + #13 + 'Tente Novamente!', 'Atenção', MB_ICONEXCLAMATION);
              Exit;
            end
          except
            Application.MessageBox('Erro ao consultar SINTEGRA.' + #13 + 'Tente Novamente!', 'Atenção', MB_ICONEXCLAMATION);
            Exit;
          end;
        end;
      end;
    end;

    pgcontrol.ActivePageIndex := 0;
    edNome.SetFocus;
  end;
end;

procedure TfrmDetalheCliente.btPontosMaisClick(Sender: TObject);
begin
  qrDetalhe.FieldByName('pontos_atuais').AsInteger :=
    qrDetalhe.FieldByName('pontos_atuais').AsInteger + 1;
end;

procedure TfrmDetalheCliente.btPontosMenosClick(Sender: TObject);
begin
  qrDetalhe.FieldByName('pontos_atuais').AsInteger :=
    qrDetalhe.FieldByName('pontos_atuais').AsInteger - 1;
end;

procedure TfrmDetalheCliente.btSalvarClick(Sender: TObject);
begin
  qrDetalhe.post;
  if qrDetalhe.FieldByName('cli_001').AsInteger = 0 then
    qrDetalhe.ParamByName('id').AsInteger := NovoId('clientes', 'cli_001', RecProj.iEmp) - 1







  else
    qrDetalhe.ParamByName('id').AsInteger := qrDetalhe.FieldByName('cli_001').AsInteger;
  qrDetalhe.Refresh;
end;

end.
