unit uControleMesaFechamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, JvExStdCtrls,
  JvEdit, JvValidateEdit, Data.DB, MemDS, DBAccess, Uni, Vcl.ExtCtrls,
  Vcl.DBCtrls, Datasnap.Provider, Datasnap.DBClient, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, JvDataSource,
  cxEditRepositoryItems, Vcl.ActnList, cxButtonEdit, Vcl.ComCtrls, Vcl.Mask,
  cxContainer, cxTextEdit, cxDBEdit, frxClass, frxDBSet, System.Math,
  AdvGlowButton, AdvGroupBox, AdvPanel, cxMaskEdit, cxSpinEdit, cxCheckBox,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, AdvSmoothTouchKeyBoard,
  dxGDIPlusClasses, System.Actions, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, ACBrTEFDClass, Vcl.Buttons, frxDesgn;

type
  TfrmControleMesaFechamento = class(TForm)
    pmCredito: TPopupMenu;
    qrVendaMesa: TUniQuery;
    dsVendaMesa: TDataSource;
    qrVendaMesaid_mesa: TIntegerField;
    qrVendaMesaid_venda: TIntegerField;
    qrVendaMesanro_venda: TIntegerField;
    qrVendaMesanro_mesa: TIntegerField;
    qrVendaMesadescricao_mesa: TWideStringField;
    qrVendaMesacod_venda: TIntegerField;
    qrVendaMesanro_nome_mesa: TWideStringField;
    qrVendaMesadata_abertura: TDateTimeField;
    qrVendaMesavalor_venda: TFloatField;
    qrVendaMesavalor_tx: TFloatField;
    dspVendaMesa: TDataSetProvider;
    qrVendaMesadesconto: TFloatField;
    qrVendaMesatotal_pago: TFloatField;
    qrVendaMesavalor_restante: TFloatField;
    qrVendaMesavalor_troco: TFloatField;
    cdsVendaMesa: TClientDataSet;
    cdsVendaMesaid_mesa: TIntegerField;
    cdsVendaMesaid_venda: TIntegerField;
    cdsVendaMesanro_venda: TIntegerField;
    cdsVendaMesanro_mesa: TIntegerField;
    cdsVendaMesadescricao_mesa: TWideStringField;
    cdsVendaMesacod_venda: TIntegerField;
    cdsVendaMesanro_nome_mesa: TWideStringField;
    cdsVendaMesadata_abertura: TDateTimeField;
    cdsVendaMesavalor_venda: TFloatField;
    cdsVendaMesavalor_tx: TFloatField;
    cdsVendaMesadesconto: TFloatField;
    cdsVendaMesatotal_pago: TFloatField;
    cdsVendaMesavalor_restante: TFloatField;
    cdsVendaMesavalor_troco: TFloatField;
    qrAux1: TUniQuery;
    cdsParcelasPagamentos: TClientDataSet;
    cdsParcelasPagamentosid_formapgto: TIntegerField;
    cdsParcelasPagamentosdescr_formapag: TStringField;
    cdsParcelasPagamentosvalor: TFloatField;
    icMasterCard: TMenuItem;
    icVisa: TMenuItem;
    icAmericanExpress: TMenuItem;
    icOutro: TMenuItem;
    pmDebito: TPopupMenu;
    idMasterCard: TMenuItem;
    idVisa: TMenuItem;
    idAmericanExpress: TMenuItem;
    idOutro: TMenuItem;
    cdsParcelasPagamentosnro_autorizacao: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsParcelasPagamentos: TDataSource;
    cxGrid1DBTableView1descr_formapag: TcxGridDBColumn;
    cxGrid1DBTableView1valor: TcxGridDBColumn;
    pmOutros: TPopupMenu;
    jvdsVendaMesa: TJvDataSource;
    cdsVendaMesavalor_total_venda: TFloatField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cdsVendaMesadeconto_percent: TFloatField;
    cdsVendaMesavalor_pessoa: TFloatField;
    qrVendaMesadesconto_percent: TFloatField;
    qrVendaMesanro_pessoas: TIntegerField;
    cdsVendaMesanro_pessoas: TIntegerField;
    qrVendaMesacouvert_m: TFloatField;
    qrVendaMesacouvert_f: TFloatField;
    qrVendaMesanro_couvert_m: TIntegerField;
    qrVendaMesanro_couvert_f: TIntegerField;
    cdsVendaMesacouvert_m: TFloatField;
    cdsVendaMesacouvert_f: TFloatField;
    cdsVendaMesanro_couvert_m: TIntegerField;
    cdsVendaMesanro_couvert_f: TIntegerField;
    cdsVendaMesatotal_couvert: TFloatField;
    cdsParcelasPagamentosdinheiro: TBooleanField;
    qrVendaMesaid_caixa: TIntegerField;
    cdsVendaMesaid_caixa: TIntegerField;
    cdsVendaMesacpf_cliente: TWideStringField;
    RepFechaConta: TfrxReport;
    dbPedido: TfrxDBDataset;
    dbEmpresa: TfrxDBDataset;
    qrVendaMesaobs_mesa: TWideStringField;
    cdsVendaMesaobs_mesa: TWideStringField;
    qrVendaItem: TUniQuery;
    qrVendaItemid_empresa: TIntegerField;
    qrVendaItemid_venda: TIntegerField;
    qrVendaItemnro_item: TIntegerField;
    qrVendaItemqtdevenda: TFloatField;
    qrVendaItemvlrvenda: TFloatField;
    qrVendaItemdescricao_item: TWideStringField;
    qrVendaItemobservacao: TWideStringField;
    qrVendaItemcod_status: TIntegerField;
    qrVendaItemstatus: TWideMemoField;
    qrVendaItemdesconto: TFloatField;
    qrVendaItemvalor_total: TFloatField;
    qrVendaItemvalor_taxa10: TFloatField;
    qrVendaItemvalor_total_taxa10: TFloatField;
    dbPagamentos: TfrxDBDataset;
    dbItensFechamento: TfrxDBDataset;
    qrVendaItemordem_item: TLargeintField;
    qrVendaItemvalor_desconto: TFloatField;
    qrVendaItemid_produto: TIntegerField;
    cdsParcelasPagamentosantecipado: TBooleanField;
    AdvGroupBox1: TAdvGroupBox;
    Label9: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    AdvGroupBox2: TAdvGroupBox;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    Label15: TLabel;
    DBText10: TDBText;
    AdvGroupBox3: TAdvGroupBox;
    Label11: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBText13: TDBText;
    edDescontoValor: TJvValidateEdit;
    edDescontoPercent: TJvValidateEdit;
    Label12: TLabel;
    Label18: TLabel;
    H: TAdvGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    edValorPagamento: TJvValidateEdit;
    edNroAutorizacao: TEdit;
    edCpfCliente: TcxDBTextEdit;
    lpPnlBotoesFormas: TFlowPanel;
    btDinheiro: TAdvGlowButton;
    btDebito: TAdvGlowButton;
    BtCredito: TAdvGlowButton;
    btCheque: TAdvGlowButton;
    btOutros: TAdvGlowButton;
    pnBotoes: TFlowPanel;
    AdvPanel1: TAdvPanel;
    cdsVendaMesadata_atual: TDateTimeField;
    qrVendaMesacpf_cliente: TWideStringField;
    qrVendaItemFracionadoRep: TUniQuery;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    IntegerField10: TIntegerField;
    WideMemoField2: TWideMemoField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    LargeintField2: TLargeintField;
    FloatField14: TFloatField;
    IntegerField11: TIntegerField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    IntegerField12: TIntegerField;
    qrVendaItemFracionadoRepqtd_fracao: TWideMemoField;
    qrVendaItemRep: TUniQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    IntegerField4: TIntegerField;
    WideMemoField1: TWideMemoField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    LargeintField1: TLargeintField;
    FloatField7: TFloatField;
    IntegerField5: TIntegerField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    IntegerField6: TIntegerField;
    dbItensFracionadoFechamento: TfrxDBDataset;
    qrVendaMesavalor_desconto_itens: TFloatField;
    cdsVendaMesavalor_desconto_itens: TFloatField;
    qrVendaMesanro_itens: TLargeintField;
    cdsVendaMesanro_itens: TLargeintField;
    dbItensOpcional: TfrxDBDataset;
    qrVendaItemOpcional: TUniQuery;
    qrVendaItemOpcionalid_venda: TIntegerField;
    qrVendaItemOpcionalid_empresa: TIntegerField;
    qrVendaItemOpcionalid_vendaitem: TIntegerField;
    qrVendaItemOpcionalid_opcional: TIntegerField;
    qrVendaItemOpcionaldescricao: TWideStringField;
    qrVendaItemOpcionalvalor: TFloatField;
    qrVendaItemOpcionalord: TIntegerField;
    qrVendaItemFracionadoOpcional: TUniQuery;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    FloatField15: TFloatField;
    WideStringField11: TWideStringField;
    IntegerField17: TIntegerField;
    dbItensFracionadoOpcional: TfrxDBDataset;
    dsVendaItemRep: TDataSource;
    dsVendaItemFracionadoRep: TDataSource;
    edNroCouvertF: TcxDBSpinEdit;
    edNroCouvertM: TcxDBSpinEdit;
    edNroPessoas: TcxDBSpinEdit;
    qrVendaMesatipo_venda: TWideStringField;
    cdsVendaMesatipo_venda: TWideStringField;
    qrVendaMesatotal_pago_antecipado: TFloatField;
    cdsVendaMesatotal_pago_antecipado: TFloatField;
    cdsVendaMesavalor_pessoa_total: TFloatField;
    btFiado: TAdvGlowButton;
    cdsParcelasPagamentosfiado: TBooleanField;
    DBText14: TDBText;
    Label21: TLabel;
    qrVendaMesacli_001: TIntegerField;
    qrVendaMesanome_cliente: TWideStringField;
    cdsVendaMesacli_001: TIntegerField;
    cdsVendaMesanome_cliente: TWideStringField;
    pmCliente: TPopupActionBar;
    Remover1: TMenuItem;
    Alterar1: TMenuItem;
    cdsParcelasPagamentosid_conta: TIntegerField;
    grTecladoNumerico: TAdvGroupBox;
    kbTecladoNumerico: TAdvSmoothTouchKeyBoard;
    Image1: TImage;
    shAjusteBotoes: TShape;
    btConfirma: TAdvGlowButton;
    ActionList1: TActionList;
    acAbrirGaveta: TAction;
    btCancela: TAdvGlowButton;
    btClientes: TAdvGlowButton;
    ckImprimirCupom: TcxCheckBox;
    qrVendaMesanumero_cupom: TIntegerField;
    cdsVendaMesanumero_cupom: TIntegerField;
    qrCreceberFiado: TUniQuery;
    qrCreceberFiadodocumento: TWideStringField;
    qrCreceberFiadodata_vencimento: TDateField;
    qrCreceberFiadovalor: TFloatField;
    dbCreceberFiado: TfrxDBDataset;
    qrDadosCliente: TUniQuery;
    dbDadosCliente: TfrxDBDataset;
    qrDadosClientenome: TWideStringField;
    qrDadosClienteendereco: TWideStringField;
    qrDadosClientebairro: TWideStringField;
    qrDadosClientecidade_desc: TWideStringField;
    qrDadosClientetelefone1: TWideStringField;
    qrDadosClientecpf: TWideStringField;
    Label22: TLabel;
    edNomeCliente: TcxDBTextEdit;
    qrVendaItemdata_hora_lancamento: TDateTimeField;
    qrVendaItemRepdata_hora_lancamento: TDateTimeField;
    qrVendaItemFracionadoRepdata_hora_lancamento: TDateTimeField;
    ckIgnorartaxagarcom: TCheckBox;
    qrVendaMesatotal_itens: TFloatField;
    cdsVendaMesatotal_itens: TFloatField;
    edvalorcouverfem: TJvValidateEdit;
    edvalorcouvermasc: TJvValidateEdit;
    Label23: TLabel;
    Label24: TLabel;
    qrVendaItemid_setor: TIntegerField;
    repPainelSenha: TfrxReport;
    qrAuxiliar: TUniQuery;
    qrVendaItemutiliza_combo: TBooleanField;
    qrForma: TUniQuery;
    qrFormafor_001: TIntegerField;
    qrFormafor_002: TWideStringField;
    qrFormaemp_001: TIntegerField;
    qrFormab_fiado: TBooleanField;
    qrFormab_devolucao: TBooleanField;
    qrFormasfi_codigo: TIntegerField;
    qrFormatipo_integracao: TIntegerField;
    qrFormacnpjcred: TWideStringField;
    pAguardeTef: TPanel;
    MemoCupomTEF: TMemo;
    MemoCupomTEF1: TMemo;
    MemoCupomTEF3: TMemo;
    MemoCupomTEF2: TMemo;
    lMensagemOperador: TLabel;
    qrFormab_tef: TBooleanField;
    qrFormabandeira_cartao: TWideStringField;
    lMensagemCliente: TLabel;
    Action1: TAction;
    frxDesigner1: TfrxDesigner;
    constructor Create (Sender : TComponent ; id_venda: integer ; modo_touch : boolean = false);
    procedure este1Click(Sender: TObject);
    procedure teste21Click(Sender: TObject);
    procedure PopupItemClick(Sender: TObject);
    procedure habilitaItemMenuFPag(var menuItem : TMenuItem ; id_formapgto : integer );
    procedure insereParcela(id_formapgto : integer; desc_formapgto : string;
                           valor : double; nro_autorizacao : string ='';
                           flag_dinheiro : boolean = false;
                           flag_antecipado : boolean = false;
                           flag_fiado : boolean = false);
    procedure btDebitoClick(Sender: TObject);
    procedure btCreditoClick(Sender: TObject);
    procedure btOutrosClick(Sender: TObject);
    procedure btDinheiroClick(Sender: TObject);
    procedure btChequeClick(Sender: TObject);
    procedure CalculaValorPago(flag_outros : boolean = false);
    procedure cdsVendaMesaCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cdsParcelasPagamentosAfterDelete(DataSet: TDataSet);
    procedure delPagamentoExecute(Sender: TObject);
    procedure cxEditRepository1ButtonItem1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid2DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure carregaPagamentosBotoes;
    procedure edDescontoPercentExit(Sender: TObject);
    procedure aplicaDesconto(tipo : integer = 1);
    procedure edDescontoValorExit(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure udNroCouvertFClick(Sender: TObject; Button: TUDBtnType);
    procedure udNroCouvertMClick(Sender: TObject; Button: TUDBtnType);
    procedure udNroPessoasClick(Sender: TObject; Button: TUDBtnType);
    procedure cdsVendaMesadescontoChange(Sender: TField);
    procedure cdsVendaMesadeconto_percentChange(Sender: TField);
    procedure cdsVendaMesanro_couvert_mChange(Sender: TField);
    procedure cdsVendaMesanro_couvert_fChange(Sender: TField);
    procedure cdsParcelasPagamentosAfterPost(DataSet: TDataSet);
    procedure btConfirmaClick(Sender: TObject);
    procedure qrVendaItemBeforeOpen(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsVendaMesacpf_clienteChange(Sender: TField);
    function  ValorPagoAntecipado : double;
    procedure btFiadoClick(Sender: TObject);
    procedure btClientesClick(Sender: TObject);
    procedure cdsVendaMesacli_001Change(Sender: TField);
    procedure Remover1Click(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure MostraTecladoNumerico(Componente : Tcomponent ;alinhamento : integer);
    procedure EscondeTecladoNumerico;
    procedure edValorPagamentoEnter(Sender: TObject);
    procedure edValorPagamentoExit(Sender: TObject);
    procedure edNroAutorizacaoEnter(Sender: TObject);
    procedure edNroAutorizacaoExit(Sender: TObject);
    procedure edDescontoPercentEnter(Sender: TObject);
    procedure edDescontoValorEnter(Sender: TObject);
    procedure edNroCouvertFExit(Sender: TObject);
    procedure edNroCouvertMExit(Sender: TObject);
    procedure edNroPessoasExit(Sender: TObject);
    procedure edNroCouvertFEnter(Sender: TObject);
    procedure edNroCouvertMEnter(Sender: TObject);
    procedure edNroPessoasEnter(Sender: TObject);
    procedure edCpfClienteEnter(Sender: TObject);
    procedure edCpfClienteExit(Sender: TObject);
    procedure edValorPagamentoClick(Sender: TObject);
    procedure edNroAutorizacaoClick(Sender: TObject);
    procedure edCpfClienteClick(Sender: TObject);
    procedure edDescontoPercentClick(Sender: TObject);
    procedure edDescontoValorClick(Sender: TObject);
    procedure edNroCouvertFClick(Sender: TObject);
    procedure edNroCouvertMClick(Sender: TObject);
    procedure edNroPessoasClick(Sender: TObject);
    procedure acAbrirGavetaExecute(Sender: TObject);
    procedure AtualizaNumeroCupom(id_venda : integer);
    procedure ckIgnorartaxagarcomClick(Sender: TObject);
    procedure ImprimeCupom(numero_vias : integer=1);
    procedure cdsVendaMesacouvert_mChange(Sender: TField);
    procedure cdsVendaMesacouvert_fChange(Sender: TField);
    procedure ImprimePainelSenha(sVenda: string);
    procedure chamaTef(cnpjCred, bandeira, campo, numVenda : string; valorInformado : currency);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
   b_couvert, b_taxa_adicional, b_aguarda_liberacao, modo_touch, utiliza_gaveta,
   utiliza_painel_senha, emite_fiscal,
   impressora_modo_pos, cede_troco_garcom,
   b_utiliza_controle_cliente, imprime_varias_vias_cupom,
   b_permite_troco_todas_formas,
   nfce_contingencia, sugerir_nfce_contingencia, agrupa_itens_cupom : boolean;
   valor_couvert_masc, valor_couvert_fem : double;
   sMensagemTxServico,  sMensagemCouvert, sCamImpCaixa : string;
  public
    { Public declarations }
    b_imprimir_fechamento, bsat : boolean;
    IndiceTransacaoTef : integer;
    StatusTransacao, TransacaoComTef : boolean;
  end;

var
  frmControleMesaFechamento: TfrmControleMesaFechamento;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uFuncoes, uControleMesa, uGeradorSAT, uChamaFiscal,
  uBuscaRegistro, uPDVFechamento, uVendaFiadoCrediario, uGeradorNFCe,
  uGeradorECF, UTef, UImpressaoCupom, uControleMesaPessoas, uReimprimirCancelarCupom;

procedure TfrmControleMesaFechamento.ImprimeCupom(numero_vias : integer=1);
var  id_venda, id_cliente, i : integer;
begin
  id_venda := cdsVendaMesa.FieldByName('id_venda').AsInteger;
  id_cliente := cdsVendaMesa.FieldByName('cli_001').asinteger;

  qrVendaItemRep.Close;
  qrVendaItemFracionadoRep.Close;
  qrVendaItemopcional.Close;
  qrVendaItemFracionadoOpcional.Close;

  qrVendaItemRep.ParamByName('id_venda').AsInteger := id_venda;
  qrVendaItemRep.ParamByName('emp').AsInteger := recproj.iEmp;
  qrVendaItemRep.ParamByName('agrupar_itens').asboolean :=  agrupa_itens_cupom;
  qrVendaItemFracionadoRep.ParamByName('id_venda').AsInteger := id_venda;
  qrVendaItemFracionadoRep.ParamByName('emp').AsInteger := recproj.iEmp;

  qrVendaItemopcional.ParamByName('id_venda').AsInteger := id_venda;
  qrVendaItemopcional.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrVendaItemFracionadoOpcional.ParamByName('id_venda').AsInteger := id_venda;
  qrVendaItemFracionadoOpcional.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrVendaItemopcional.open;
  qrVendaItemFracionadoOpcional.open;

  if b_taxa_adicional and not ckIgnorartaxagarcom.Checked then
  begin
    qrVendaItemFracionadoRep.ParamByName('flag_taxa_10').AsInteger :=1;
    qrVendaItemRep.ParamByName('flag_taxa_10').AsInteger :=1;
  end
  else
  begin
    qrVendaItemFracionadoRep.ParamByName('flag_taxa_10').AsInteger :=0;
    qrVendaItemRep.ParamByName('flag_taxa_10').AsInteger :=0;
  end;
  qrVendaItemRep.open;
  qrVendaItemFracionadoRep.open;

  qrCreceberFiado.Close;
  qrCreceberFiado.ParamByName('id_venda').AsInteger := id_venda;
  qrCreceberFiado.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrCreceberFiado.Open;

  qrDadosCliente.Close;
  qrDadosCliente.ParamByName('id_cliente').value := id_cliente;
  qrDadosCliente.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrDadosCliente.Open;

  if impressora_modo_pos then
  begin
    frmmenu.ImprimeCupomPOS(cdsVendaMesa, qrDadosCliente, qrVendaItemRep,
                            qrVendaItemOpcional, qrVendaItemFracionadoRep,
                            qrVendaItemFracionadoOpcional, cdsParcelasPagamentos,
                            qrCreceberFiado, 1, sMensagemCouvert, sMensagemTxServico,
                            '', false, '', 'CAIXA', numero_vias);
  end
  else
  begin
    RepFechaConta.PrintOptions.Printer := sCamImpCaixa;
    RepFechaConta.Variables['sMensagemTxServico'] := QuotedStr(sMensagemTxServico);
    RepFechaConta.Variables['sMensagemCouvert'] := QuotedStr(sMensagemCouvert);
    RepFechaConta.LoadFromFile('C:\EliteFood\Relatorios\FECHAMENTOMESA.fr3');
    RepFechaConta.PrepareReport;
    //RepFechaConta.ShowReport;

    // RepFechaConta.PrintOptions.Copies :=int_aux;
    //colocado no laço for para poder cortar, se simplesmente mudar a quantidade de copias, o relatorio sai em sequencia e não corta entre os cupons
    for I := 1 to numero_vias do
      RepFechaConta.Print;
      //RepFechaConta.ShowReport;
  end;

end;



procedure TfrmControleMesaFechamento.EscondeTecladoNumerico;
begin
  //grTecladoNumerico.Visible:=false;
end;

procedure TfrmControleMesaFechamento.AtualizaNumeroCupom(id_venda : integer);
var nro_cupom : integer;
begin
  nro_cupom := novoid('venda', 'numero_cupom', recproj.iEmp, 'emp_001');
  ExecutaComandoSQL('update venda set numero_cupom=:cupom where ven_001=:id_venda and emp_001=:id_empresa',
                    VarArrayOf([nro_cupom,id_venda, recproj.iEmp ]));
  if cdsVendaMesa.State<>dsEdit then cdsVendaMesa.Edit;
  cdsVendaMesa.FieldByName('numero_cupom').asinteger := nro_cupom;
end;

procedure TfrmControleMesaFechamento.MostraTecladoNumerico(Componente : Tcomponent ; alinhamento : integer);
var lpoint : Tpoint;
begin
   exit;
end;

function TfrmControleMesaFechamento.ValorPagoAntecipado : double;
var valor :double;
begin
  valor  := 0;
  cdsParcelasPagamentos.First;
  while not cdsParcelasPagamentos.eof  do
  begin
    if cdsParcelasPagamentos.FieldByName('antecipado').AsBoolean then
      valor := valor + cdsParcelasPagamentos.FieldByName('valor').Asfloat;
    cdsParcelasPagamentos.Next;
  end;
  result := valor;
end;

procedure  TfrmControleMesaFechamento.habilitaItemMenuFPag(var menuItem : TMenuItem ; id_formapgto : integer );
begin
  menuItem.Enabled:=true;
  menuItem.OnClick := PopupItemClick;
  menuItem.Tag := id_formapgto;
end;


procedure TfrmControleMesaFechamento.btCancelaClick(Sender: TObject);
begin
  tag:=0;
  close;
end;

procedure TfrmControleMesaFechamento.btChequeClick(Sender: TObject);
begin
  insereParcela(btCheque.Tag, 'Cheque', edValorPagamento.Value, edNroAutorizacao.Text, false);
end;

procedure TfrmControleMesaFechamento.btClientesClick(Sender: TObject);
var str_sql : string; lPoint : tpoint;
begin
  if cdsVendaMesa.FieldByName('cli_001').isnull or (cdsVendaMesa.FieldByName('cli_001').asinteger=0) then
    Alterar1Click(nil)
  else
  begin
    lPoint := btClientes.ClientToScreen(Point(0,0));
    pmCliente.Popup(lPoint.X, lPoint.Y-btClientes.Height - 10 );
  end;

end;

procedure TfrmControleMesaFechamento.btConfirmaClick(Sender: TObject);
var flag_dinheiro, finaliza_venda, venda_sat, flag_fiado, venda_ecf, venda_nfce,
    erro_nfce : boolean;
    valor_dinheiro, troco, troco_insert , valor, valor_venda, valor_acrescimos,
    valor_descontos, valor_pago, valor_fiado, saldo_fiado, limite_fiado,
    valor_couvert_m, valor_couvert_f: double;
    str_sql , obs, cpf_consum, str_aux, tipo_venda, nome_cliente: string;
    id_caixa, id_venda, id_formapgto, id_encerravenda, item, aguarda_liberacao,
    id_cliente : variant;
    FGerarCFe : GerarCFe; //SAT
    FGerarNFCe : GerarNFCe;
    FGerarECF : GerarECF;
    cod_conta_fiado, nro_venda, numero_vias , i, id_forma_troco :   integer;
    utilizacontrolesituacao:integer; // Aqui declarei a variavel para confirmar a situação do cliente, ativo, spc
    bAchouFiscal: Boolean;

    procedure AbortaFechamento;
    begin
      btConfirma.Enabled:=true;
      abort;
    end;
begin
  bAchouFiscal:= false;
  venda_nfce:= false;
  venda_sat := false;
  b_imprimir_fechamento :=ckImprimirCupom.Checked;
  btConfirma.Enabled:=false;
  cdsVendaMesaCalcFields(nil);
  id_cliente := cdsVendaMesa.FieldByName('cli_001').asinteger;
  tipo_venda := cdsVendaMesa.FieldByName('tipo_venda').asstring;
  id_venda := cdsVendaMesa.FieldByName('id_venda').AsInteger;
  nro_venda:= cdsVendaMesa.FieldByName('nro_venda').AsInteger;
  valor_couvert_m:= cdsVendaMesa.FieldByName('nro_couvert_m').AsInteger * cdsVendaMesa.FieldByName('couvert_m').AsFloat;
  valor_couvert_f:= cdsVendaMesa.FieldByName('nro_couvert_f').AsInteger * cdsVendaMesa.FieldByName('couvert_f').AsFloat;

  //verifica se o valor esta pago corretamente
  valor := cdsVendaMesa.FieldByName('valor_total_venda').AsFloat;
  valor_pago := cdsVendaMesa.FieldByName('total_pago').AsFloat;
  // a comparação de duas variáveis do tipo float ( valor_pago < valor ) as vezes falha (bug do delphi)
  // para valores iguais. Para contornar, usa-se a comparação da diferença entre os dois valores
  if (RoundTo((valor_pago - valor), -2)  < -0.001  ) then
  begin
    Application.messagebox('O valor recebido é inferior ao valor da venda!', 'Atenção', MB_ICONINFORMATION + mb_ok);
    AbortaFechamento;
  end;

  //verifica se há troco e se foi informado dinheiro
  troco := cdsVendaMesa.FieldByName('valor_troco').AsFloat;
  id_forma_troco :=0;
  if troco>0 then
  begin
    cdsParcelasPagamentos.First;
    flag_dinheiro:=false;
    valor_dinheiro:=0;
    //percorre os pagamentos e verifica se foi informado dinehiro
    while not cdsParcelasPagamentos.eof do
    begin
      if not flag_dinheiro then
      begin
        flag_dinheiro := cdsParcelasPagamentos.FieldByName('dinheiro').AsBoolean;
        valor_dinheiro :=  cdsParcelasPagamentos.FieldByName('valor').AsFloat;
        if flag_dinheiro then
          id_forma_troco := cdsParcelasPagamentos.FieldByName('id_formapgto').AsInteger;
      end;
      cdsParcelasPagamentos.Next;
    end;

    if (not flag_dinheiro) and (not b_permite_troco_todas_formas) then //Não encontrou a forma de pagamento dinheiro e não permite troco para outras formas....
    begin
      Application.messagebox('O valor recebido é superior ao valor da venda!', 'Atenção', MB_ICONINFORMATION + mb_ok);
      AbortaFechamento;
    end
    else if flag_dinheiro then
    begin
      if valor_dinheiro<troco then
      begin
        id_forma_troco := 0; //limpa a forma que vai receber o troco
        if (not b_permite_troco_todas_formas) then
        begin
          Application.messagebox('Não é possivel devolver troco pois o valor recebido em dinheiro é insuficiente!', 'Atenção', MB_ICONINFORMATION + mb_ok);
          AbortaFechamento;          
        end;    
      end;      
    end;

    //seleciona qual forma de pagamento recebera o troco caso nao foi possivel no dinheiro...
    if id_forma_troco=0 then
    begin
      cdsParcelasPagamentos.First;
      while not cdsParcelasPagamentos.eof do
      begin
        if (cdsParcelasPagamentos.FieldByName('valor').AsFloat>troco) and (id_forma_troco=0) then
        begin
          id_forma_troco := cdsParcelasPagamentos.FieldByName('id_formapgto').asinteger;
        end;
        cdsParcelasPagamentos.next;  
      end;      

      //se não encontrou alguma forma para receber troco.. aborta
      if id_forma_troco=0 then
      begin
        Application.messagebox('Não é possivel devolver troco em nenhuma forma de pagamento informada!', 'Atenção', MB_ICONINFORMATION + mb_ok);
        AbortaFechamento;          
      end;            
    end;    
  end;

  //faz o controle de fiado
  cdsParcelasPagamentos.First;
  flag_fiado := false;
  valor_fiado := 0;
  cod_conta_fiado := 0;
  while not cdsParcelasPagamentos.eof do
  begin
    if cdsParcelasPagamentos.FieldByName('fiado').AsBoolean then
    begin
      flag_fiado := true;
      valor_fiado := valor_fiado + cdsParcelasPagamentos.FieldByName('valor').AsFloat;
      cod_conta_fiado :=  cdsParcelasPagamentos.FieldByName('id_conta').asInteger;
    end;
    cdsParcelasPagamentos.Next;
  end;
  if flag_fiado then
  begin
    //verifica se foi informado o cliente
    if id_cliente=0 then
    begin
      Alterar1Click(nil);
    end;

    id_cliente := cdsVendaMesa.FieldByName('cli_001').asinteger;
    //verifica novamente se o cliente foi selecionado....
    if id_cliente=0 then AbortaFechamento;


    // Inicio verificação da situação do cliente                Programador Rafael 27/04/2017
     str_sql:= 'select id_situacao_spc from clientes where    cli_001=' + IntToStr(id_cliente)+
     ' and emp_001 ='+IntToStr(RecProj.iEmp);
     ExecutaConsultaSQL(qraux1,str_sql);
     utilizacontrolesituacao:=qraux1.FieldByName('id_situacao_spc').AsInteger;

       { SITUAÇÃO DO CLIENTE
       1 - APROVADO
       2 - EM OBSERVAÇÃO
       3 - INATIVO
       4 - SPC
       5 - BLOQUEADO    }

     if utilizacontrolesituacao=2 then
     begin
        Application.MessageBox('Não foi possível fazer a venda, cadastro do cliente está em observação!','Atenção',MB_ICONINFORMATION + mb_ok);
        edValorPagamento.SetFocus;
        abortafechamento;
     end
     else if utilizacontrolesituacao=3 then
     begin
         Application.MessageBox('Não foi possível fazer a venda, cadastro do cliente está inativo!','Atenção', MB_ICONINFORMATION +mb_ok);
         edvalorpagamento.SetFocus;
         abortafechamento;
     end

     else if utilizacontrolesituacao=4 then
     begin
        Application.MessageBox('Não foi possível fazer a venda, cadastro do cliente está no SPC!','Atenção',MB_ICONINFORMATION + mb_ok);
        edvalorpagamento.SetFocus;
        AbortaFechamento ;
     end

    else if utilizacontrolesituacao=5 then
     begin
       Application.MessageBox('Não foi possível fazer a venda, cadastro do cliente está Bloqueado!','Atenção',MB_ICONINFORMATION + mb_ok);
        edvalorpagamento.SetFocus;
        AbortaFechamento ;
     end;
     // Termino 27/04/ 2017  P Rafael

    // buscar configuração controle de cliente     inicio Rafael 19/04/2017
     if b_utiliza_controle_cliente then
     begin
       str_sql:=' select 1 from creceber where  id_situacao =4 and data_vencimento <localtimestamp '+
               ' and id_cliente ='+  IntToStr(id_cliente) + ' and id_empresa='+IntToStr(RecProj.iEmp);
       ExecutaConsultaSQL(qraux1, str_sql);
       if qraux1.RecordCount>0 then
       begin
         if  Application.MessageBox('O cliente possui contas em atraso. Deseja fazer a venda mesmo com as parcelas em atraso?   ','Atenção',MB_ICONQUESTION+MB_YESNO)=mrYes then
         begin
           if not  frmMenu.ConfirmacaoSenha('b_libera_venda_conta_atraso', i) then
           begin
             AbortaFechamento;
           end;
         end
         else
         AbortaFechamento;
       end;
     end;
     //termino 19/04/2017 Rafael


    //verifica se há saldo pro cliente informado
    if not VerificaSaldoFiado(saldo_fiado, limite_fiado, id_cliente, recproj.iEmp, valor_fiado) then
    begin
      str_aux :=Format( 'O cliente %s não possui saldo suficente!' +#13#10+
                 'Saldo: %m' +#13#10+  'Limite: %m', [cdsVendaMesa.FieldByName('nome_cliente').asstring ,saldo_fiado, limite_fiado ]) ;
      Application.messagebox(pchar(str_aux), 'Atenção', MB_ICONINFORMATION + mb_ok);
      AbortaFechamento;
    end;

    //chama o form de controle de fiado
    frmVendaFiadoCrediario := TfrmVendaFiadoCrediario.Create(self, id_venda, id_cliente , valor_fiado);
    frmVendaFiadoCrediario.ShowModal;
    if frmVendaFiadoCrediario.Tag <> 1 then AbortaFechamento;
    id_cliente := frmVendaFiadoCrediario.id_cliente;
  end;

  //TEF - Bruno 02/08/2018
  cdsParcelasPagamentos.First;
  while not cdsParcelasPagamentos.eof do
  begin
    qrForma.Close;
    qrForma.ParamByName('emp').AsInteger    := RecProj.iEmp;
    qrForma.ParamByName('codigo').AsInteger := cdsParcelasPagamentosid_formapgto.AsInteger;
    qrForma.Open;

    if qrFormab_tef.AsBoolean then
    begin
      try
        chamaTef(qrForma.FieldByName('cnpjCred').AsString,
                 qrForma.FieldByName('bandeira_cartao').AsString,
                 '1',
                 IntToStr(nro_venda),
                 cdsParcelasPagamentosvalor.AsFloat);
      except
        AbortaFechamento;
      end;
    end;

    cdsParcelasPagamentos.Next;
  end;

  //Tudo OK, concretiza a venda
  if emite_fiscal then
  begin
    //Verifica se abre a tela Menu Fiscal - Bruno (27/04/2018)
    if not LerBooleanConfig('ckOcultar_menu_fiscal',frmMenu.cdsCFG.FileName)then
    begin
      frmChamaFiscal := TfrmChamaFiscal.Create(self);
      frmChamaFiscal.ShowModal;
      finaliza_venda := frmChamaFiscal.Tag=1;
      venda_sat      := frmChamaFiscal.forma_selecionada = 'SAT';
      venda_nfce     := frmChamaFiscal.forma_selecionada = 'NFCE';
      venda_ecf      := frmChamaFiscal.forma_selecionada = 'ECF';
      FreeAndNil(frmChamaFiscal);
    end
    else
    begin
      if bsat then
      begin
        ckImprimirCupom.Checked := True;
      end;

      //Verifica se alguma forma emite fiscal - Bruno (27/04/2018)
      cdsParcelasPagamentos.First;
      while not (cdsParcelasPagamentos.Eof) and (not bAchouFiscal) do
      begin
        qrAuxiliar.Close;
        qrAuxiliar.SQL.Text:= 'select emite_fiscal, tipo_fiscal from formapgto where for_001 = :forma';
        qrAuxiliar.ParamByName('forma').AsInteger:= cdsParcelasPagamentosid_formapgto.AsInteger;
        qrAuxiliar.Open;

        if (qrAuxiliar.FieldByName('emite_fiscal').AsBoolean = False) or (qrAuxiliar.FieldByName('tipo_fiscal').AsInteger = 0) then
          bAchouFiscal:= False
        else
          bAchouFiscal:= True;

        cdsParcelasPagamentos.Next;
      end;

      finaliza_venda := true;
      venda_sat      := (qrAuxiliar.FieldByName('emite_fiscal').AsBoolean) and (qrAuxiliar.FieldByName('tipo_fiscal').AsInteger = 1);
      venda_ecf      := (qrAuxiliar.FieldByName('emite_fiscal').AsBoolean) and (qrAuxiliar.FieldByName('tipo_fiscal').AsInteger = 2);
      venda_nfce     := (qrAuxiliar.FieldByName('emite_fiscal').AsBoolean) and (qrAuxiliar.FieldByName('tipo_fiscal').AsInteger = 3) and LerBooleanConfig('CKATIVARNFCE', frmMenu.cdsCFG.FileName);

      if bsat then
      begin
        venda_sat  := True;
      end;
    end
  end
  else
  begin
    finaliza_venda := true;
    venda_sat      := false;
    venda_ecf      := false;
    venda_nfce     := false;
  end;

  // pega o número de vias a imprimir...
  if imprime_varias_vias_cupom and  ckImprimirCupom.Checked then
  begin
    numero_vias :=0;
    while not ((numero_vias >0) and (numero_vias <=3)) do
    begin
      str_aux := '2';
      if InputQuery('Informe o número de vias a imprimir', 'Número de vias:', str_aux) then
      begin
        try
          numero_vias := strtoint(trim(str_aux));
        except
          numero_vias := 0;
        end;
      end
      else
        numero_vias :=1;
      if (numero_vias <= 0) or (numero_vias>3)  then
        application.MessageBox('Valor inválido! A quantidade de impressão deve ser de 1 até 3 vias!', 'Atenção', MB_ICONINFORMATION);
    end;
  end
  else
    numero_vias := 1;

  if finaliza_venda then
  begin
    cdsParcelasPagamentos.First;
    id_caixa := cdsVendaMesa.FieldByName('id_caixa').AsInteger;
    valor_venda := cdsVendaMesa.FieldByName('valor_total_venda').AsFloat;
    valor_acrescimos := cdsVendaMesa.FieldByName('valor_tx').AsFloat +
                        cdsVendaMesa.FieldByName('total_couvert').AsFloat;
    valor_descontos := cdsVendaMesa.FieldByName('desconto').AsFloat;
    cpf_consum := cdsVendaMesa.FieldByName('cpf_cliente').asstring;
    nome_cliente := cdsVendaMesa.FieldByName('nome_cliente').asstring;
    if b_aguarda_liberacao then
      aguarda_liberacao := 1
    else
      aguarda_liberacao := 0;

    if id_cliente=0 then id_cliente := null;

    str_sql:= ' update venda set cpf_cliente=:cpf, cli_001=:id_cliente, nome_cliente = :nome_cliente,  '+
              ' valor_couvert_f =:valor_couvert_f, valor_couvert_m=:valor_couvert_m ' +
              ' where ven_001=:id_venda and emp_001=:id_empresa';

    ExecutaComandoSQL(str_sql, VarArrayOf([cpf_consum, id_cliente, nome_cliente,
                    valor_couvert_f,valor_couvert_m ,id_venda, recproj.iEmp ]));

    valor := cdsVendaMesa.FieldByName('valor_total_venda').AsFloat;
    id_formapgto := cdsParcelasPagamentos.FieldByName('id_formapgto').AsInteger;
    //insere os dados de encerramento da venda
    //campos: id_encerramento, id_empresa, id_venda, id_cliente
    //        data encerramento, valor, forma de pgto, situacao
    str_sql := ' insert into encerravenda (enc_001, emp_001, ven_001 , cli_001, '+
               ' enc_002, enc_003, for_001, sit_001, enc_006, enc_007, VEN_CPFCONSUM ) '+
               ' values ((select coalesce(max(enc_001),0)+1 from encerravenda where emp_001=:emp), '+
               ' :emp , :id_venda, :id_cliente , localtimestamp,  :valor , '+
               ' :id_forma, 1, :acrescimos, :descontos, :cpf )';
    ExecutaComandoSQL(str_sql, CriaVariantArray([RecProj.iEmp,id_venda, 0, valor,
                      id_formapgto, valor_acrescimos, valor_descontos, cpf_consum]));
    ExecutaConsultaSQL(qrAux1, 'select max(enc_001) from encerravenda where emp_001='+IntToStr(RecProj.iEmp));
    id_encerravenda:= qrAux1.Fields[0].AsInteger;

    item:=1;
    while not cdsParcelasPagamentos.Eof do
    begin
      valor:= cdsParcelasPagamentos.FieldByName('valor').AsFloat;
      //se houver troco, corrige o valor na forma selecionada
      //if (troco>0) and (cdsParcelasPagamentos.FieldByName('dinheiro').AsBoolean) then
      if (troco>0) and (cdsParcelasPagamentos.FieldByName('id_formapgto').asinteger=id_forma_troco) then
      begin
        valor:=valor-troco;
        troco_insert :=  troco;
      end
      else
        troco_insert := 0;

      obs:= cdsParcelasPagamentos.FieldByName('nro_autorizacao').AsString;
      id_formapgto := cdsParcelasPagamentos.FieldByName('id_formapgto').asinteger;

      //insere os dados de item encerramento de venda
      //campos: id_empresa, id_encerramento, id item encerramento, data lançamento,
      //        nro item encerramento, valor, acrescimo, id formapgto
      str_sql := ' insert into encerravendaitem (emp_001, enc_001, ite_001, ite_002, '+
                 ' ite_004, ite_003, ite_005, id_formapgto, troco_dinheiro, autorizacao) ' +
                 ' values (:emp, :id_encerravenda, '+
                 ' :item, localtimestamp, :item,  :valor, 0, :id_forma, :troco_dinheiro, :autorizacao );';
      ExecutaComandoSQL(str_sql, CriaVariantArray([RecProj.iEmp, id_encerravenda, item, valor, id_formapgto, troco_insert, cdsParcelasPagamentos.FieldByName('nro_autorizacao').AsString ]));

      //Se for antecipado, o item já foi inserido no caixa, apenas atualiza o caixa item para pegar o item de encerravenda
      if cdsParcelasPagamentos.FieldByName('antecipado').AsBoolean then
      begin
        str_sql:= ' update caixaitem set id_encerravenda = :id_encerravenda, item_encerravenda = :item '+
                  ' where id_caixa = :id_caixa and id_empresa = :id_empresa '+
                  ' and id_formapgto = :id_forma and id_venda = :id_venda  '+
                  ' and id_encerravenda is null and item_encerravenda is null ';
        ExecutaComandoSQL(str_sql, vararrayof([id_encerravenda, item,id_caixa,
                           RecProj.iEmp, id_formapgto, id_venda ]));
      end
      else
        InserirCaixaItem(id_caixa, id_formapgto, valor, 'E',obs, id_venda, id_encerravenda, item);

      cdsParcelasPagamentos.Next;
      item:=item +1;
    end;

    //cria o form de fechamento para poder fazer as impressões do tipo balcao mais a frente
    if (tipo_venda ='B') and (frmmenu.usa_touch=false) then  // Na versão 2.35 estava com problema pois no balcao touch entrava no PdvFechamento ,Não aparecia o troco, Então foi criado uma verificação para ver se o balcão não é touch    06/04/2018  Rafael
    begin
      frmPDVFechamento := tfrmPDVFechamento.Create(self, id_venda);
      cdsParcelasPagamentos.First;
      while not cdsParcelasPagamentos.eof do
      begin
        frmPDVFechamento.insereParcela(cdsParcelasPagamentos.FieldByName('id_formapgto').asinteger,
                                       cdsParcelasPagamentos.FieldByName('desc_formapag').asstring,
                                       cdsParcelasPagamentos.FieldByName('valor').asfloat);
        cdsParcelasPagamentos.next;
      end;
      frmPDVFechamento.cdsVendaCalcFields(nil);
    end;

    //Faz o lançamento do fiado
    if flag_fiado then
    begin
      frmVendaFiadoCrediario.cdsParcelasFiado.First;
      while not frmVendaFiadoCrediario.cdsParcelasFiado.eof do
      begin
        if not frmVendaFiadoCrediario.cdsParcelasFiado.FieldByName('parcela_saldo_cliente').AsBoolean then
        begin
          str_sql :=' insert into creceber (id_empresa, data, id_cliente, id_conta, id_usuario, id_venda, '+
                    ' nota, descricao, valor_nota, valor, valor_pago, data_vencimento, id_situacao, documento) '+
                    ' values (:emp, localtimestamp, :id_cliente,:id_cont, :id_user, :id_venda , :nota, :desc, '+
                    ' :valor_nota, :valor, 0, :datavenc, 4, :documento)';
          ExecutaComandoSQL(str_sql, vararrayof([recproj.iemp,id_cliente,cod_conta_fiado, recproj.iUsuario, id_venda,
                                                id_venda, format('Venda %d', [ nro_venda]), valor_fiado,
                                                frmVendaFiadoCrediario.cdsParcelasFiado.fieldbyname('valor').AsFloat,
                                                frmVendaFiadoCrediario.cdsParcelasFiado.fieldbyname('vencimento').AsDateTime,
                                                frmVendaFiadoCrediario.cdsParcelasFiado.fieldbyname('documento').AsString]));
        end;
        frmVendaFiadoCrediario.cdsParcelasFiado.next;
      end;
      InserirMovimentoContaCliente(recproj.iemp, id_cliente, recproj.iUsuario,
         valor_fiado, 'S', '', Date + Time, id_venda, false, cod_conta_fiado);
         FreeAndNil(frmVendaFiadoCrediario);
    end;

    // envia venda ao SAT
    if venda_sat then
    begin
      try
        FGerarCFe := GerarCFe.Create;
        finaliza_venda := FGerarCFe.Autorizar(cdsVendaMesaid_venda.AsInteger, RecProj.iEmp);
        if not finaliza_venda then
        begin
          Application.MessageBox(pchar( 'Código erro SAT: '+ IntToStr(FGerarCFe.codigoRet) + #13#10 + FGerarCFe.mensagem), 'Atenção', MB_ICONWARNING);
        end;
        FreeAndNil(FGerarCFe);

      except
        on E : Exception do
        begin
          finaliza_venda := false;
          Application.MessageBox(pchar('Problema ao comunicar-se com o SAT. Detalhes do erro:'+#13#10+E.Message),'Atenção', mb_iconerror );
        end;
      end;
    end
    //
    else if venda_nfce then
    begin

      //tenta emitir uma vez, se falhar, tenta de novo em contingencia se configurado
      try
        FGerarNFCe := GerarNFCe.Create;
        erro_nfce := false;
        //se for marcado para emitir em contingencia, já cria nfce dessa forma de uma vez...
        if nfce_contingencia then
        begin
          finaliza_venda := FGerarNFCe.Autorizar(id_venda, RecProj.iEmp, true);
        end
        else
        begin
          finaliza_venda := FGerarNFCe.Autorizar(id_venda, RecProj.iEmp, false);
        end;
        FreeAndNil(FGerarNFCe);
        if not finaliza_venda then
        begin
          erro_nfce := true;
          if nfce_contingencia or (not sugerir_nfce_contingencia) then
             Application.MessageBox(pchar( 'Código erro NFCe: '+ IntToStr(FGerarNFCe.codigoRet) + #13#10 + FGerarNFCe.mensagem), 'Atenção', MB_ICONWARNING);
        end;

      except
        on E : Exception do
        begin
          finaliza_venda := false;
          erro_nfce := true;
          //exibe a mensagem de erro se for em contingência.. senão, vai tentar de novo mais a frente...
          str_aux := E.Message;
          if nfce_contingencia or (not sugerir_nfce_contingencia) then
            Application.MessageBox(pchar('Problema ao gerar NFCe. Detalhes do erro:'+ slinebreak +str_aux),'Atenção', mb_iconerror );
        end;
      end;

      //se houver erro, tenta enviar agora em contingêcia se configurado para sugerir
      if erro_nfce and sugerir_nfce_contingencia and (not nfce_contingencia) then
      begin
        str_aux := 'Problema ao gerar NFCe. Gostaria de tentar emitir em contingência?'+slinebreak + slinebreak +
                   'Se emitida em contingência, a NFCe deve ser enviada a SEFAZ em até 24 horas, certifique se que este tipo de erro não ocorrerá no envio definitivo. ' +
                   'Detalhes do erro:' + slinebreak + slinebreak + str_aux + slinebreak + slinebreak+
                   'Emitir em contingência?';
        if application.MessageBox(pchar(str_aux), 'Atenção', mb_iconwarning + MB_YESNO )=mryes then
        begin
          try
            FGerarNFCe := GerarNFCe.Create;
            finaliza_venda := FGerarNFCe.Autorizar(id_venda, RecProj.iEmp, true);
            if not finaliza_venda then
              Application.MessageBox(pchar( 'Código erro NFCe: '+ IntToStr(FGerarNFCe.codigoRet) + #13#10 + FGerarNFCe.mensagem), 'Atenção', MB_ICONWARNING);
          except
            on E : Exception do
            begin
              finaliza_venda := false;
              Application.MessageBox(pchar('Problema ao gerar NFCe. Detalhes do erro:'+#13#10+E.Message),'Atenção', mb_iconerror );
            end;
          end;
        end;
      end;

    end
    else if venda_ecf then
    begin
      try
        FGerarECF := GerarECF.Create;
        finaliza_venda := FGerarECF.Emitir(cdsVendaMesaid_venda.AsInteger, RecProj.iEmp);
        if not finaliza_venda then
        begin
          Application.MessageBox(pchar(FGerarECF.mensagem), 'Atenção', MB_ICONWARNING);
        end;
         FreeAndNil(FGerarECF) ;
      except
        on E : Exception do
        begin
          finaliza_venda := false;
          Application.MessageBox(pchar('Problema ao gerar cupom fiscal. Detalhes do erro:'+#13#10+E.Message),'Atenção', mb_iconerror );
        end;
      end;
    end;

    // venda no SAT não autorizada, exclui os itens de encerravenda, e encerravenda e caixaitem e creceber
    if not finaliza_venda then
    begin
      str_sql := 'delete from caixaitem where id_encerravenda = :id_encerravenda and id_empresa=:emp_001 and not antecipado';
      ExecutaComandoSQL(str_sql, vararrayof([id_encerravenda, RecProj.iEmp ]));
      str_sql := 'update caixaitem set id_encerravenda = null, item_encerravenda = null where id_encerravenda = :id_venda and id_empresa=:emp_001 and antecipado';
      ExecutaComandoSQL(str_sql, vararrayof([id_encerravenda, RecProj.iEmp ]));

      str_sql := 'delete from encerravendaitem where enc_001 = :id_encerra and emp_001=:emp_001';
      ExecutaComandoSQL(str_sql, vararrayof([id_encerravenda, RecProj.iEmp ]));

      str_sql := 'delete from encerravenda where enc_001 = :id_encerra and emp_001=:emp_001';
      ExecutaComandoSQL(str_sql, vararrayof([id_encerravenda, RecProj.iEmp ]));

      str_sql := 'delete from creceber where id_venda=:id_venda and id_empresa=:emp_001';
      ExecutaComandoSQL(str_sql, vararrayof([id_venda, RecProj.iEmp ]));

    end
    else
    begin
      if not (venda_sat or venda_nfce or venda_ecf ) then AtualizaNumeroCupom(id_venda);
      if (utiliza_painel_senha) and  (tipo_venda ='B') then ImprimePainelSenha(IntToStr(nro_venda));

      //insere os movimentos dos itens
      qrVendaItem.First;
      while not qrVendaItem.Eof do
      begin
        InserirMovimentoProduto(qrVendaItem.FieldByName('id_produto').AsInteger, //Id produto
                                qrVendaItem.FieldByName('qtdevenda').AsFloat,  //quantidade
                                'S','', RecProj.iUsuario,  //tipo movimento, observação, usuario
                                qrVendaItem.FieldByName('id_venda').AsInteger, // id venda
                                qrVendaItem.FieldByName('nro_item').AsInteger, //id venda item
                                'M', true, 0, 0, 0, date+time, false, qrVendaItem.FieldByName('utiliza_combo').AsBoolean, //tipo de material, movimenta composicao, id fornecedor, valor de custo, valor de venda, data movimento , atualiza valor de venda
                                qrVendaItem.FieldByName('id_setor').AsInteger);  //setor
        qrVendaItem.Next;
      end;

      //atualiza a flag de pago para os itens da venda...
      ExecutaComandoSQL('update vendaitem set ite_012=''S'' where emp_001=' +IntToStr(RecProj.iEmp) + ' and ven_001='+ IntToStr(id_venda));
      //atualiza o status da venda
      //id_venda, RecProj.iEmp,   valor_venda , valor_acrescimos, valor_descontos
      ExecutaComandoSQL(' update venda set sit_001=1, ven_009=:valor_venda, ven_015=:liberacao, ' +
                        ' ven_008=:valor_acrescimos, ven_007=:valor_descontos '+
                        ' where emp_001=:emp and ven_001=:id_venda',
                        CriaVariantArray([valor_venda,aguarda_liberacao,valor_acrescimos,
                        valor_descontos, RecProj.iEmp, id_venda ]));

      //imprime o cupom
      if b_imprimir_fechamento and (
        (not (venda_sat or venda_nfce or venda_ecf)) or // venda não fiscal
        ((venda_sat or venda_nfce or venda_ecf) and (numero_vias>1))    or // se for fiscal mas o numero de vias é maior que 1
        flag_fiado ) then// flag fiado, sempre imprime
      begin
        if (tipo_venda ='C') or (tipo_venda ='M')or (frmmenu.usa_touch)  then  // mesa ou comanda
        begin
          //já imprimiu uma via fiscal, imprime as outras não fiscal
          if (venda_sat or venda_nfce or venda_ecf) then
          begin
            if flag_fiado and (numero_vias = 1) then
              ImprimeCupom
            else
              ImprimeCupom(numero_vias -1);
          end
          else
            ImprimeCupom(numero_vias);
        end
        else // tipo balcao, chama a tela de fechamento de PDV apenas para imprimir, alimentando os campos necessários...
        begin

          frmPDVFechamento.cdsVenda.AutoCalcFields :=false;
          frmPDVFechamento.cdsVenda.FieldByName('numero_cupom').asinteger := cdsVendaMesa.FieldByName('numero_cupom').asinteger;
          frmPDVFechamento.cdsVenda.FieldByName('valor_troco').OnChange   := nil;
          frmPDVFechamento.cdsVenda.FieldByName('valor_troco').AsFloat    := troco ;
          frmPDVFechamento.cdsVenda.FieldByName('desconto').AsFloat       := cdsVendaMesa.FieldByName('desconto').AsFloat;

          //já imprimiu uma via fiscal , imprime as outras não fiscal
          if (venda_sat or venda_nfce or venda_ecf) then
          begin
            if flag_fiado and (numero_vias = 1) then
              frmPDVFechamento.ImprimeCupom(false, 1)
            else
              frmPDVFechamento.ImprimeCupom(false, numero_vias -1)
          end
          else
            frmPDVFechamento.ImprimeCupom(false, numero_vias);

        end;
      end;

      if cede_troco_garcom and (CompareValue(troco, 0)=1)then
      begin
        str_aux := format('Deseja ceder o troco de RS %.2f ao garçom?',[troco]);
        if application.MessageBox(pchar(str_aux), 'Atenção', MB_ICONQUESTION+ mb_yesno)=mrYes then
        begin
          str_sql:= ' select usu_001, usu_002 from usuarios ';
          frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,str_sql,
                              CriaIntegerArray([1]) ,
                              CriaStringArray(['Garçom']),
                              0, 0, ' sit_001=4 and b_funcao_garcom', 600, 550, modo_touch);
          frmBuscaRegistro.ShowModal;
          if frmBuscaRegistro.Tag=1 then
          begin
            str_sql := ' insert into trocogarcom (id_caixa, id_empresa, id_usuario, id_venda, valor) '+
                       ' values (:id_caixa, :id_empresa, :id_usuario, :id_venda, :valor) ';
            ExecutaComandoSQL(str_sql, vararrayof([id_caixa, recproj.iEmp,
                                                   frmBuscaRegistro.valor_retorno,
                                                   id_venda,troco]));

          end;
          FreeAndNil(frmBuscaRegistro);
        end;
      end;

      if utiliza_gaveta then frmmenu.AbrirGaveta;
      GravaBooelanConfig('PRE_FECHAMENTOMESACKIMPCUPOM', ckImprimirCupom.Checked, frmMenu.cdsCFG.FileName);
      self.Tag:=1;
      close;
    end;

    //libera o form de Fechamento PDV para vendas balcao
    if tipo_venda ='B' then
      FreeAndNil(frmPDVFechamento);
  end;

  btConfirma.Enabled:=true;

  //Venda não fiscal com TEF - Bruno 02/08/2018
  if not (venda_sat or venda_nfce or venda_ecf) then
  begin
    if TransacaoComTef then
    begin
      if application.MessageBox('Deseja imprimir TEF?', 'Atenção', MB_ICONQUESTION + MB_YESNO) = mrYes then
      begin
        Application.CreateForm(TFImpressaoCupom, FImpressaoCupom);
        FImpressaoCupom.quemChamou := 'transacaoCOmTef';
        FImpressaoCupom.ShowModal;
        freeandnil(FImpressaoCupom);
      end;
    end;
  end;
  if bsat then
  begin
    ckImprimirCupom.Checked := False;
  end;
end;

procedure TfrmControleMesaFechamento.ImprimePainelSenha(sVenda: string);
var str_impressao : string;
begin
  if impressora_modo_pos then
  begin
    str_impressao :='</zera>' +  sLineBreak+
                    '</linha_dupla>'+ sLineBreak +
                    '</fn></ce><n>' +  Recproj.sEmpFantasia  +sLineBreak+ sLineBreak+
                    '<e>COMANDA: '+ sVenda +
                    sLineBreak + sLineBreak +
                    '</n></e></ae></linha_dupla>'+ sLineBreak + '</corte_total>';
    if frmMenu.ConfiguraImpressoraPOS('CAIXA') then frmMenu.ACBrPosPrinter1.Imprimir(str_impressao);
  end
  else
  begin
    repPainelSenha.PrintOptions.Printer := sCamImpCaixa;
    repPainelSenha.PrepareReport;
    repPainelSenha.Print;
  end;
end;

procedure TfrmControleMesaFechamento.btCreditoClick(Sender: TObject);
var lPoint : tpoint;
begin
  lPoint := btCredito.ClientToScreen(Point(0,0));
  pmCredito.Popup(lPoint.X, lPoint.Y+btCredito.Height );
end;

procedure TfrmControleMesaFechamento.btDebitoClick(Sender: TObject);
var lPoint : tpoint;
begin
  lPoint := btDebito.ClientToScreen(Point(0,0));
  pmDebito.Popup(lPoint.X, lPoint.Y+btDebito.Height );
end;

procedure TfrmControleMesaFechamento.btDinheiroClick(Sender: TObject);
begin
  insereParcela(btDinheiro.Tag, 'Dinheiro', edValorPagamento.Value,edNroAutorizacao.Text, true);
end;

procedure TfrmControleMesaFechamento.btFiadoClick(Sender: TObject);
begin
  insereParcela(btFiado.Tag, 'Fiado', edValorPagamento.Value, edNroAutorizacao.Text, false, false, true);
end;

procedure TfrmControleMesaFechamento.btOutrosClick(Sender: TObject);
var lPoint : tpoint;
begin
  lPoint := btOutros.ClientToScreen(Point(0,0));
  pmOutros.Popup(lPoint.X, lPoint.Y+btOutros.Height);
end;

procedure TfrmControleMesaFechamento.Button1Click(Sender: TObject);
var id_venda : integer;
begin
  id_venda := cdsVendaMesa.FieldByName('id_venda').AsInteger;
  qrVendaItemRep.Close;
  qrVendaItemFracionadoRep.Close;
  qrVendaItemopcional.Close;
  qrVendaItemFracionadoOpcional.Close;

  qrVendaItemRep.ParamByName('id_venda').AsInteger := id_venda;
  qrVendaItemRep.ParamByName('emp').AsInteger := recproj.iEmp;
  qrVendaItemFracionadoRep.ParamByName('id_venda').AsInteger := id_venda;
  qrVendaItemFracionadoRep.ParamByName('emp').AsInteger := recproj.iEmp;

  qrVendaItemopcional.ParamByName('id_venda').AsInteger := id_venda;
  qrVendaItemopcional.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrVendaItemFracionadoOpcional.ParamByName('id_venda').AsInteger := id_venda;
  qrVendaItemFracionadoOpcional.ParamByName('id_empresa').AsInteger := recproj.iEmp;


  if b_taxa_adicional and  not ckIgnorartaxagarcom.Checked then
  begin
    qrVendaItemFracionadoRep.ParamByName('flag_taxa_10').AsInteger :=1;
    qrVendaItemRep.ParamByName('flag_taxa_10').AsInteger :=1;

  end
  else
  begin
    qrVendaItemFracionadoRep.ParamByName('flag_taxa_10').AsInteger :=0;
    qrVendaItemRep.ParamByName('flag_taxa_10').AsInteger :=0;
  end;
  qrVendaItemRep.open;
  qrVendaItemFracionadoRep.open;

  RepFechaConta.PrintOptions.Printer := sCamImpCaixa;
  RepFechaConta.Variables['sMensagemTxServico'] := QuotedStr(sMensagemTxServico);
  RepFechaConta.Variables['sMensagemCouvert'] := QuotedStr(sMensagemCouvert);
  RepFechaConta.PrepareReport;
  RepFechaConta.ShowReport;
end;

procedure TfrmControleMesaFechamento.cdsParcelasPagamentosAfterDelete(
  DataSet: TDataSet);
begin
  CalculaValorPago;
end;

procedure TfrmControleMesaFechamento.cdsParcelasPagamentosAfterPost(
  DataSet: TDataSet);
begin
  CalculaValorPago;
end;

procedure TfrmControleMesaFechamento.CalculaValorPago(flag_outros : boolean = false);
var  restante, troco : double;
begin
  cdsVendaMesaCalcFields(nil);
  troco:=0;
  if VarIsNull(cdsParcelasPagamentos.Aggregates[0].Value) then
    cdsVendaMesa.FieldByName('total_pago').AsFloat:=0
  else
    cdsVendaMesa.FieldByName('total_pago').AsFloat:= cdsParcelasPagamentos.Aggregates[0].Value;

  cdsVendaMesa.FieldByName('total_pago_antecipado').AsFloat:= ValorPagoAntecipado;

  restante := cdsVendaMesa.FieldByName('valor_total_venda').AsFloat - cdsVendaMesa.FieldByName('total_pago').AsFloat;
  if restante<0 then
  begin
    troco:=restante*(-1);
    restante:=0;
  end;
  cdsVendaMesa.FieldByName('valor_restante').AsFloat:= roundto(restante,-3);
  cdsVendaMesa.FieldByName('valor_troco').AsFloat:=roundto(troco,-3);
  if restante<=0 then
  begin
    btOutros.Enabled:=false;
    btDinheiro.Enabled:=false;
    btDebito.Enabled:=false;
    btCredito.Enabled:=false;
    btCheque.Enabled:=false;
    btFiado.Enabled :=false;
  end
  else
    carregaPagamentosBotoes;

  edNroAutorizacao.Clear;
  edValorPagamento.Value:= cdsVendaMesa.FieldByName('valor_restante').AsFloat;

  if not flag_outros then
  if self.Visible then
  begin
    edValorPagamento.SetFocus;
    edValorPagamento.SelectAll;
  end;
end;

procedure TfrmControleMesaFechamento.cdsVendaMesaCalcFields(DataSet: TDataSet);
begin
  cdsVendaMesa.FieldByName('total_couvert').AsFloat := roundto(
                                    (cdsVendaMesa.FieldByName('nro_couvert_m').AsInteger *
                                     cdsVendaMesa.FieldByName('couvert_m').AsFloat) +
                                    (cdsVendaMesa.FieldByName('nro_couvert_f').AsInteger *
                                     cdsVendaMesa.FieldByName('couvert_f').AsFloat),-2);
  cdsVendaMesa.FieldByName('valor_total_venda').AsFloat:=  roundto(
                                    cdsVendaMesa.FieldByName('total_couvert').AsFloat +
                                    cdsVendaMesa.FieldByName('valor_venda').AsFloat +
                                    cdsVendaMesa.FieldByName('valor_tx').AsFloat -
                                    cdsVendaMesa.FieldByName('desconto').AsFloat,-2);

  if cdsVendaMesa.FieldByName('nro_pessoas').asinteger = 0 then
  begin
    cdsVendaMesa.FieldByName('valor_pessoa').AsFloat := roundto(cdsVendaMesa.FieldByName('valor_total_venda').AsFloat
           - cdsVendaMesa.FieldByName('total_pago_antecipado').AsFloat, -2);
    cdsVendaMesa.FieldByName('valor_pessoa_total').AsFloat := roundto(cdsVendaMesa.FieldByName('valor_total_venda').AsFloat, -2);
  end
  else
  begin
    cdsVendaMesa.FieldByName('valor_pessoa').AsFloat := roundto(
      (cdsVendaMesa.FieldByName('valor_total_venda').AsFloat -
      cdsVendaMesa.FieldByName('total_pago_antecipado').AsFloat) /
      cdsVendaMesa.FieldByName('nro_pessoas').asinteger,-2 );
    cdsVendaMesa.FieldByName('valor_pessoa_total').AsFloat := roundto(
      cdsVendaMesa.FieldByName('valor_total_venda').AsFloat /
      cdsVendaMesa.FieldByName('nro_pessoas').asinteger,-2 );
  end;
  cdsVendaMesa.FieldByName('data_atual').AsDateTime := Date + Time;

end;


procedure TfrmControleMesaFechamento.cdsVendaMesacli_001Change(Sender: TField);
 var nome, str_sql : string;
begin
  if cdsVendaMesa.FieldByName('cli_001').isnull then
    cdsvendamesa.FieldByName('nome_cliente').AsString :=''
  else
  begin
    str_sql := format('select cli_002 from clientes where cli_001=%d and emp_001=%d', [cdsVendaMesa.FieldByName('cli_001').asinteger, recproj.Iemp]);
    buscacampo(nome, str_sql ,'cliente', false);
    cdsvendamesa.FieldByName('nome_cliente').AsString :=nome;
  end;

end;

procedure TfrmControleMesaFechamento.cdsVendaMesacouvert_fChange(
  Sender: TField);
begin
  CalculaValorPago(true);
end;

procedure TfrmControleMesaFechamento.cdsVendaMesacouvert_mChange(
  Sender: TField);
begin
CalculaValorPago(true);
end;

procedure TfrmControleMesaFechamento.cdsVendaMesacpf_clienteChange(
  Sender: TField);
begin
  if not (Valida_CPF(Sender.AsString) or  Valida_CNPJ(Sender.AsString) ) then
  begin
    Application.MessageBox('CPF/CNPJ inválido', 'Atenção', MB_ICONINFORMATION);
  end;
end;

procedure TfrmControleMesaFechamento.cdsVendaMesadeconto_percentChange(
  Sender: TField);
begin
  CalculaValorPago(true);
end;

procedure TfrmControleMesaFechamento.cdsVendaMesadescontoChange(Sender: TField);
begin
  CalculaValorPago(true);
end;

procedure TfrmControleMesaFechamento.cdsVendaMesanro_couvert_fChange(
  Sender: TField);
begin
  CalculaValorPago(true);
end;

procedure TfrmControleMesaFechamento.cdsVendaMesanro_couvert_mChange(
  Sender: TField);
begin
  CalculaValorPago(true);
end;

procedure TfrmControleMesaFechamento.ckIgnorartaxagarcomClick(Sender: TObject);
var valortaxa:double;
begin
  //case when :flag_tx_servico  then round((v.ven_009 * 0.1), 2) else 0 end as valor_tx,
   valortaxa:=(cdsvendamesa.FieldByName('valor_venda').AsFloat -
   cdsvendamesa.FieldByName('desconto').AsFloat)*0.1;
   if b_taxa_adicional and not ckIgnorartaxagarcom.Checked then
   begin
     cdsvendamesa.FieldByName('valor_tx').AsFloat:=valortaxa;

   end
   else
   begin
       cdsvendamesa.FieldByName('valor_tx').AsFloat:=0;
   end;

  CalculaValorPago;

end;

procedure TfrmControleMesaFechamento.carregaPagamentosBotoes;
var str_sql : string;
    menuItem : TMenuItem;
    i: integer;
begin

{ Tipos de forma de pagamento SAT
1, Dinheiro
2, Cheque
3, Cartao de Crédito
4, Cartao de Débito
5, Crédito Loja
6, Vale Alimentação
7, Vale Refeição
8, Vale Presente
9, Vale Combustivel
10,Outros}
  pmOutros.Items.Clear;
  for I := 0 to pmCredito.Items.Count-1 do pmCredito.Items[i].Enabled:=false;
  for I := 0 to pmDebito.Items.Count-1 do pmDebito.Items[i].Enabled:=false;

  str_sql := ' select for_001, emp_001, for_002, (sfi_codigo = 3) as credito, b_fiado as fiado, '+
             ' (sfi_codigo = 4) as debito, (sfi_codigo = 2) as cheque, '+
             ' (sfi_codigo = 1) as dinheiro, bandeira_cartao from formapgto where sit_001=4 and emp_001='+IntToStr(RecProj.iEmp)+
             ' and ( (b_fiado and id_conta is not null ) or (not b_fiado) ) and (not b_devolucao) ';
  ExecutaConsultaSQL(qrAux1, str_sql);
  qrAux1.First;
  while not qrAux1.Eof  do
  begin
    //preenche os dados do botao de dinheiro apenas uma vez
    if qrAux1.FieldByName('dinheiro').AsBoolean then
    begin
      if not btDinheiro.Enabled then
      begin
        btDinheiro.Enabled:=true;
        btDinheiro.Tag:=qrAux1.FieldByName('for_001').AsInteger;
      end;
    end;

    //habilita os botoes para credito
    if qrAux1.FieldByName('credito').AsBoolean then
    begin
      btCredito.Enabled:=true;
      if qrAux1.FieldByName('bandeira_cartao').AsString='M' then
        habilitaItemMenuFPag(icMasterCard,qrAux1.FieldByName('for_001').AsInteger);
      if qrAux1.FieldByName('bandeira_cartao').AsString='V' then
        habilitaItemMenuFPag(icVisa,qrAux1.FieldByName('for_001').AsInteger);
      if qrAux1.FieldByName('bandeira_cartao').AsString='A' then
        habilitaItemMenuFPag(icAmericanExpress,qrAux1.FieldByName('for_001').AsInteger);
      if qrAux1.FieldByName('bandeira_cartao').AsString='O' then
        habilitaItemMenuFPag(icOutro,qrAux1.FieldByName('for_001').AsInteger);
    end;

    //habilita os botoes para débito
    if qrAux1.FieldByName('debito').AsBoolean then
    begin
      btDebito.Enabled:=true;
      if qrAux1.FieldByName('bandeira_cartao').AsString='M' then
        habilitaItemMenuFPag(idMasterCard,qrAux1.FieldByName('for_001').AsInteger);
      if qrAux1.FieldByName('bandeira_cartao').AsString='V' then
        habilitaItemMenuFPag(idVisa,qrAux1.FieldByName('for_001').AsInteger);
      if qrAux1.FieldByName('bandeira_cartao').AsString='A' then
        habilitaItemMenuFPag(idAmericanExpress,qrAux1.FieldByName('for_001').AsInteger);
      if qrAux1.FieldByName('bandeira_cartao').AsString='O' then
        habilitaItemMenuFPag(idOutro,qrAux1.FieldByName('for_001').AsInteger);
    end;
    //cheque
    if qrAux1.FieldByName('cheque').AsBoolean then
    begin
      if not btCheque.Enabled then
      begin
        btCheque.Enabled:=true;
        btCheque.Tag:=qrAux1.FieldByName('for_001').AsInteger;
      end;
    end;
    //fiado
    if qrAux1.FieldByName('fiado').AsBoolean then
    begin
      if not btFiado.Enabled then
      begin
        btFiado.Enabled:=true;
        btFiado.Tag:=qrAux1.FieldByName('for_001').AsInteger;
      end;
    end;
    //adiciona as outras forma de pagamento ao botao outro
    // se nao for dinheiro, cartao, cheque  ou fiado
    if not ( qrAux1.FieldByName('dinheiro').AsBoolean or qrAux1.FieldByName('credito').AsBoolean or
             qrAux1.FieldByName('debito').AsBoolean or qrAux1.FieldByName('cheque').AsBoolean or
             qrAux1.FieldByName('fiado').AsBoolean ) then
    begin
      btOutros.Enabled:=true;
      //adiciona um item de menu ao pop up
      menuItem:= TMenuItem.Create(pmOutros);
      menuItem.Caption := qrAux1.FieldByName('for_002').AsString ;
      menuItem.Tag := qrAux1.FieldByName('for_001').AsInteger ;
      menuItem.OnClick := PopupItemClick;
      pmOutros.Items.Add(menuItem) ;
    end;
    qrAux1.Next;
  end;
end;

constructor TfrmControleMesaFechamento.Create (Sender : TComponent ; id_venda : integer; modo_touch : boolean = false );
var str_sql : string;
    query_aux : TUniQuery;
begin
  inherited create(sender);
  //verifica se existe caixa aberto
  frmMenu.carregaCaixaUsuario;
  self.modo_touch := modo_touch;
  if RecProj.iIDCaixa=0 then
  begin
    Application.MessageBox(pchar('Não existe caixa aberto para o usuário '
                         + recproj.sUsuario+'!'), 'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  query_aux := TUniQuery.Create(self);
  query_aux.Connection:=frmMenu.conexao;

  //carrega as configurações
  sCamImpCaixa:= LerStringConfig('CAMIMPCAIXA',frmMenu.cdsCFG.FileName);
  utiliza_gaveta := LerBooleanConfig('CKUTILIZAGAVETA',frmMenu.cdsCFG.FileName);
  ckImprimirCupom.Checked := LerBooleanConfig('PRE_FECHAMENTOMESACKIMPCUPOM', frmMenu.cdsCFG.FileName);
  impressora_modo_pos := LerIntegerConfig('CXMODOIMPCAIXA',frmmenu.cdsCFG.FileName)=1;
  nfce_contingencia := LerBooleanConfig('CKNFCEEMITIREMCONTINGENCIA',frmMenu.cdsCFG.FileName, false);
  sugerir_nfce_contingencia := LerBooleanConfig('CKNFCESUGERIRCONTINGENCIA',frmMenu.cdsCFG.FileName, false);

   frmmenu.usa_touch:= LerBooleanConfig('CKBALCAOMODOTOUCH', frmMenu.cdsCFG.FileName);


  //configurações da tabela empresa
  str_sql :='select b_utiliza_controle_cliente, b_permite_troco_todas_formas from empresas where emp_001='+IntToStr( RecProj.iEmp);
  ExecutaConsultaSQL(query_aux,str_sql);

  b_utiliza_controle_cliente := query_aux.FieldByName('b_utiliza_controle_cliente').AsBoolean;
  b_permite_troco_todas_formas := query_aux.FieldByName('b_permite_troco_todas_formas').AsBoolean;

  cdsVendaMesa.Close;
  qrVendaMesa.Close;
  qrVendaItem.Close;
  qrVendaMesa.ParamByName('id_venda').AsInteger:=id_venda;
  qrVendaMesa.ParamByName('emp').AsInteger:=RecProj.iEmp;
  qrVendaMesa.ParamByName('id_caixa').AsInteger := RecProj.iIDCaixa;
  qrVendaItem.ParamByName('id_venda').AsInteger:=id_venda;
  qrVendaItem.ParamByName('emp').AsInteger:=RecProj.iEmp;
  qrVendaItem.Open;
  cdsVendaMesa.Open;

  if cdsVendaMesa.FieldByName('tipo_venda').asstring='M' then
  begin
    b_taxa_adicional:= LerBooleanConfig('TAXAADICIONAL',frmMenu.cdsCFG.FileName);
    b_couvert := LerBooleanConfig('CKCOUVERTMESA', frmMenu.cdsCFG.FileName);
    valor_couvert_masc := LerFloatConfig('EDVALORCOUVERTMASC', frmMenu.cdsCFG.FileName);
    valor_couvert_fem := LerFloatConfig('EDVALORCOUVERTFEM', frmMenu.cdsCFG.FileName);
    sMensagemTxServico := LerStringConfig('EDMENSAGEMTXSERVICO',frmMenu.cdsCFG.FileName);
    sMensagemCouvert    :=LerStringConfig('EDMENSAGEMCOUVERTMESA',frmMenu.cdsCFG.FileName);
    b_aguarda_liberacao := LerBooleanConfig('CKLIBERACAOPOSFECHAMENTOMESA',frmMenu.cdsCFG.FileName);
    cede_troco_garcom := LerBooleanConfig('CKCEDERTROCOGARCOMMESA',frmMenu.cdsCFG.FileName);
    imprime_varias_vias_cupom := LerBooleanConfig('CKIMPRIMIRVARIASVIASCUPOMMESA',frmMenu.cdsCFG.FileName);
    emite_fiscal := true;
    edvalorcouverfem.Enabled :=LerBooleanConfig('ckHabilitarAlterarValorUnitariocouvertmesa',frmMenu.cdsCFG.FileName);
    edvalorcouvermasc.Enabled:= LerBooleanConfig('ckHabilitarAlterarValorUnitariocouvertmesa',frmMenu.cdsCFG.FileName);
    agrupa_itens_cupom := LerBooleanConfig('CKAGRUPARITENSIGUAISIMPRESSAOMESA',frmMenu.cdsCFG.FileName);
  end
  else if cdsVendaMesa.FieldByName('tipo_venda').asstring='C' then
  begin
    b_taxa_adicional:= LerBooleanConfig('TAXAADICIONALCOMANDA',frmMenu.cdsCFG.FileName);
    b_couvert := LerBooleanConfig('CKCOUVERTCOMANDA', frmMenu.cdsCFG.FileName);
    valor_couvert_masc := LerFloatConfig('EDVALORCOUVERTMASCCOMANDA', frmMenu.cdsCFG.FileName);
    valor_couvert_fem := LerFloatConfig('EDVALORCOUVERTFEMCOMANDA', frmMenu.cdsCFG.FileName);
    sMensagemTxServico := LerStringConfig('EDMENSAGEMTXSERVICOCOMANDA',frmMenu.cdsCFG.FileName);
    sMensagemCouvert := LerStringConfig('EDMENSAGEMCOUVERTCOMANDA',frmMenu.cdsCFG.FileName);
    b_aguarda_liberacao := LerBooleanConfig('CKLIBERACAOPOSFECHAMENTOCOMANDA',frmMenu.cdsCFG.FileName);
    cede_troco_garcom := LerBooleanConfig('CKCEDERTROCOGARCOMCOMANDA',frmMenu.cdsCFG.FileName);
    imprime_varias_vias_cupom := LerBooleanConfig('CKIMPRIMIRVARIASVIASCUPOMCOMANDA',frmMenu.cdsCFG.FileName);
    emite_fiscal := true;
    edvalorcouverfem.Enabled:= LerBooleanconfig('ckHabilitarAlterarValorUnitariocouvertcomanda',frmmenu.cdsCFG.FileName);
    edvalorcouvermasc.Enabled:=LerBooleanconfig('ckHabilitarAlterarValorUnitariocouvertcomanda',frmmenu.cdsCFG.FileName);
    agrupa_itens_cupom := LerBooleanConfig('CKAGRUPARITENSIGUAISIMPRESSAOCOMANDA',frmMenu.cdsCFG.FileName);
  end
  else //tipo balcao...
  begin
    b_taxa_adicional:= false;
    b_couvert := false ;
    valor_couvert_masc := 0;
    valor_couvert_fem := 0;
    sMensagemTxServico := '';
    sMensagemCouvert := '';
    b_aguarda_liberacao := false;
    eddescontoPercent.Enabled := LerBooleanConfig('CKPERMITEDESCONTOFECHAMENTOBALCAO',frmMenu.cdsCFG.FileName);
    edDescontoValor.Enabled   := LerBooleanConfig('CKPERMITEDESCONTOFECHAMENTOBALCAO',frmMenu.cdsCFG.FileName);
    utiliza_painel_senha := LerBooleanConfig('CKUTILIZAPAINELSENHABALCAO',frmMenu.cdsCFG.FileName);
    emite_fiscal :=  LerBooleanConfig('CKEMITEFISCALBALCAO',frmMenu.cdsCFG.FileName);
    imprime_varias_vias_cupom := LerBooleanConfig('CKIMPRIMIRVARIASVIASCUPOMBALCAO',frmMenu.cdsCFG.FileName);
    cede_troco_garcom := false;
    agrupa_itens_cupom := false;
  end;

  if trim(sMensagemCouvert) = '' then sMensagemCouvert := 'Couvert (+):';

  cdsVendaMesa.Close;
  qrVendaMesa.Close;

  qrVendaMesa.ParamByName('flag_tx_servico').AsBoolean:= b_taxa_adicional and not ckIgnorartaxagarcom.Checked;
  qrVendaMesa.ParamByName('flag_couvert_mesa').AsBoolean:= b_couvert;
  qrVendaMesa.ParamByName('valor_couvert_masc').AsFloat := valor_couvert_masc;
  qrVendaMesa.ParamByName('valor_couvert_fem').AsFloat  := valor_couvert_fem;
  cdsVendaMesa.Open;
  cdsVendaMesa.Edit;


  //localiza as formas de pagamento e atribui a id às tags dos botoes
  carregaPagamentosBotoes;
  cdsParcelasPagamentos.CreateDataSet;
  cdsParcelasPagamentos.Open;

  cdsVendaMesa.FieldByName('valor_restante').AsFloat:= cdsVendaMesa.FieldByName('valor_total_venda').AsFloat;
  edValorPagamento.Value:= cdsVendaMesa.FieldByName('valor_restante').AsFloat;
  edDescontoValor.MaxValue:= cdsVendaMesa.FieldByName('valor_total_venda').AsFloat;

  // busca os pagamentos antecipados para a mesa selecionada
  str_sql:=' select vpa.id_formapgto, vpa.valor, f.for_002 as desc_forma, (f.sfi_codigo=1) as flag_dinheiro, '+
           ' b_fiado as flag_fiado '+
           ' from venda_pag_antecipado vpa '+
           ' join formapgto f on f.emp_001=vpa.id_empresa and f.for_001=vpa.id_formapgto '+
           ' where vpa.id_situacao=4 and vpa.id_venda='+IntToStr(id_venda)+' and vpa.id_empresa='+IntToStr(RecProj.iEmp);
  ExecutaConsultaSQL(query_aux, str_sql);
  query_aux.First;
  while not query_aux.Eof  do
  begin
    insereParcela(query_aux.FieldByName('id_formapgto').AsInteger,
                  query_aux.FieldByName('desc_forma').AsString+ ' (ANTECIPADO)' ,
                  query_aux.FieldByName('valor').AsFloat, '',
                  query_aux.FieldByName('flag_dinheiro').asboolean,
                  true,
                  query_aux.FieldByName('flag_fiado').asboolean);
    query_aux.Next;
  end;

end;

procedure TfrmControleMesaFechamento.cxEditRepository1ButtonItem1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if Application.MessageBox('Deseja excluir o registro?', 'Atenção', MB_ICONQUESTION + mb_yesno)=mryes then
    cdsParcelasPagamentos.Delete;
end;

procedure TfrmControleMesaFechamento.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if cdsParcelasPagamentos.FieldByName('antecipado').AsBoolean then
  begin
    Application.MessageBox('Não é possível excluir um pagamento antecipado!', 'Atenção', MB_ICONINFORMATION);
    exit;
  end;
  if Application.MessageBox('Deseja exluir o registro?', 'Atenção', MB_ICONQUESTION + mb_yesno)=mryes then
    cdsParcelasPagamentos.Delete;
end;

procedure TfrmControleMesaFechamento.cxGrid2DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
 showmessage('teste');
end;

procedure TfrmControleMesaFechamento.delPagamentoExecute(Sender: TObject);
begin
  if cdsParcelasPagamentos.FieldByName('antecipado').AsBoolean then
  begin
    Application.MessageBox('Não é possível excluir um pagamento anteciapdo!', 'Atenção', MB_ICONINFORMATION);
    exit;
  end;

  if Application.MessageBox('Deseja exluir o registro?', 'Atenção', MB_ICONQUESTION + mb_yesno)=mryes then
    cdsParcelasPagamentos.Delete;
end;

procedure TfrmControleMesaFechamento.este1Click(Sender: TObject);
begin
  showmessage(tcomponent(sender).Name );
end;

procedure TfrmControleMesaFechamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
  begin
    if lowercase(ActiveControl.Name)=trim('edvalorpagamento') then
    begin
      if cdsVendaMesa.FieldByName('valor_restante').AsFloat=0 then
        begin
          if btConfirma.CanFocus then btConfirma.SetFocus
        end
      else
      begin
        if btDinheiro.CanFocus then btDinheiro.SetFocus;
      end;
    end
    else
      Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if key=VK_ESCAPE then
    grTecladoNumerico.Visible:=false;

end;

procedure TfrmControleMesaFechamento.FormShow(Sender: TObject);
begin
  StatusTransacao := false;
  TransacaoComTef := false;

  edValorPagamento.SetFocus;

  if modo_touch then
  begin
    self.Width := self.Constraints.MinWidth + grTecladoNumerico.Width + 6;
    self.Height := self.Constraints.MinHeight;
    shAjusteBotoes.Visible:=true;
  end
  else
  begin
    self.Width := self.Constraints.MinWidth;
    self.Height := self.Constraints.MinHeight;
    shAjusteBotoes.Visible:=false;
  end;
end;

procedure TfrmControleMesaFechamento.teste21Click(Sender: TObject);
begin
  showmessage(tcomponent(sender).Name );
end;

 procedure TfrmControleMesaFechamento.udNroCouvertFClick(Sender: TObject;
  Button: TUDBtnType);
begin
  edNroCouvertF.SetFocus;
end;

procedure TfrmControleMesaFechamento.udNroCouvertMClick(Sender: TObject;
  Button: TUDBtnType);
begin
  edNroCouvertM.SetFocus;

end;

procedure TfrmControleMesaFechamento.udNroPessoasClick(Sender: TObject;
  Button: TUDBtnType);
begin
  edNroPessoas.SetFocus;

end;

procedure TfrmControleMesaFechamento.PopupItemClick(Sender: TObject) ;
var str_aux : string;
begin
  if NOT (Sender is TMenuItem) then
    exit;

  str_aux :='';

  //opcões de cartao
  if ((TMenuItem(sender).Name='icMasterCard') or
      (TMenuItem(sender).Name= 'icVisa') or
      (TMenuItem(sender).Name= 'icAmericanExpress') or
      (TMenuItem(sender).Name= 'icOutro')) then str_aux := 'Crédito '
  else if ((TMenuItem(sender).Name='idMasterCard') or
      (TMenuItem(sender).Name= 'idVisa') or
      (TMenuItem(sender).Name= 'idAmericanExpress') or
      (TMenuItem(sender).Name= 'idOutro')) then str_aux := 'Débito ';

  qrForma.Close;
  qrForma.ParamByName('emp').AsInteger    := RecProj.iEmp;
  qrForma.ParamByName('codigo').AsInteger := TMenuItem(sender).tag;
  qrForma.Open;

  if (qrFormatipo_integracao.AsInteger = 1) then
  begin
    if qrFormab_tef.AsBoolean = False then
    begin
      if edNroAutorizacao.Text = EmptyStr then
      begin
        Application.MessageBox('Informe a Autorização de Operação!', 'Atenção', mb_iconinformation);
        edNroAutorizacao.SetFocus;
        Abort;
      end;
    end;

    if qrFormacnpjcred.AsString = '' then
    begin
      Application.MessageBox('CNPJ Credenciadora Cartão não cadastrado.' + #13 +
                             'Verifique o cadastro da forma de pagamento!', 'Atenção', mb_iconinformation);
      Abort;
    end;
  end;

  insereParcela(TMenuItem(sender).tag, trim(StringReplace(  str_aux + TMenuItem(sender).Caption, '&', '', [])), edValorPagamento.Value, edNroAutorizacao.Text);
end;

procedure TfrmControleMesaFechamento.qrVendaItemBeforeOpen(DataSet: TDataSet);
begin
  if b_taxa_adicional and  not ckIgnorartaxagarcom.Checked then
    qrVendaItem.ParamByName('flag_taxa_10').AsInteger:=1
  else
    qrVendaItem.ParamByName('flag_taxa_10').AsInteger:=0;
end;

procedure TfrmControleMesaFechamento.Remover1Click(Sender: TObject);
begin
  cdsVendaMesa.FieldByName('cli_001').value := null;
end;

procedure TfrmControleMesaFechamento.insereParcela(id_formapgto : integer;
                                        desc_formapgto : string; valor : double;
                                        nro_autorizacao : string ='' ;
                                        flag_dinheiro : boolean = false;
                                        flag_antecipado : boolean = false;
                                        flag_fiado : boolean = false);
var inserir : boolean;
    cod_conta_fiado : integer;
begin
  inserir:=true;
  cod_conta_fiado:=0;
  valor := roundto(valor, -2);     // roundto é para arredondar nesse caso 2 casas decimar
  if valor<=0 then
  begin
    Application.MessageBox('Valor inválido!', 'Atenção', MB_ICONINFORMATION + mb_ok);
    edValorPagamento.SetFocus;
    exit;
  end;

  //agrupa os valores dinheiro
  if flag_dinheiro then
  begin
    if cdsParcelasPagamentos.Locate('id_formapgto;antecipado ', vararrayof([id_formapgto ,false]), [] ) then
      begin
        inserir:=false;
        cdsParcelasPagamentos.Edit;
        cdsParcelasPagamentos.FieldByName('valor').AsFloat:= valor +
                             cdsParcelasPagamentos.FieldByName('valor').AsFloat;
        cdsParcelasPagamentos.post;
      end;
  end;

  //agrupa os valores fiado
  if flag_fiado then
  begin
    BuscaCampo(cod_conta_fiado,format('select id_conta from formapgto where for_001 =%d and emp_001=%d',
               [id_formapgto, recproj.iEmp]), '', false);

    if cdsParcelasPagamentos.Locate('id_formapgto ', vararrayof([id_formapgto]), [] ) then
      begin
        inserir:=false;
        cdsParcelasPagamentos.Edit;
        cdsParcelasPagamentos.FieldByName('valor').AsFloat:= valor +
                             cdsParcelasPagamentos.FieldByName('valor').AsFloat;
        cdsParcelasPagamentos.post;
      end;
  end;

  if inserir then
  begin
    cdsParcelasPagamentos.Append;
    cdsParcelasPagamentos.FieldByName('id_formapgto').AsInteger:=id_formapgto;
    cdsParcelasPagamentos.FieldByName('desc_formapag').AsString:=desc_formapgto;
    cdsParcelasPagamentos.FieldByName('valor').AsFloat:=valor;
    cdsParcelasPagamentos.FieldByName('nro_autorizacao').AsString:=nro_autorizacao;
    cdsParcelasPagamentos.FieldByName('dinheiro').AsBoolean:=flag_dinheiro;
    cdsParcelasPagamentos.FieldByName('antecipado').AsBoolean:=flag_antecipado;
    cdsParcelasPagamentos.FieldByName('fiado').AsBoolean:=flag_fiado;
    if flag_fiado then
      cdsParcelasPagamentos.FieldByName('id_conta').AsInteger:=cod_conta_fiado;
    cdsParcelasPagamentos.post;
  end;
end;


procedure TfrmControleMesaFechamento.edDescontoValorClick(Sender: TObject);
begin
  if modo_touch then edDescontoValor.SelectAll;
end;

procedure TfrmControleMesaFechamento.edDescontoValorEnter(Sender: TObject);
  begin
if modo_touch then MostraTecladoNumerico(edDescontoValor, 3);
end;

procedure TfrmControleMesaFechamento.edDescontoValorExit(Sender: TObject);
begin
  aplicaDesconto(2);
  if modo_touch then EscondeTecladoNumerico;
end;

procedure TfrmControleMesaFechamento.edNroAutorizacaoClick(Sender: TObject);
begin
  if modo_touch then edNroAutorizacao.SelectAll;
end;

procedure TfrmControleMesaFechamento.edNroAutorizacaoEnter(Sender: TObject);
begin
  if modo_touch then MostraTecladoNumerico(edNroAutorizacao, 3);
end;

procedure TfrmControleMesaFechamento.edNroAutorizacaoExit(Sender: TObject);
begin
  if modo_touch then EscondeTecladoNumerico;
end;

procedure TfrmControleMesaFechamento.edNroCouvertFClick(Sender: TObject);
begin
  if modo_touch then edNroCouvertF.SelectAll;
end;

procedure TfrmControleMesaFechamento.edNroCouvertFEnter(Sender: TObject);
begin
  if modo_touch then MostraTecladoNumerico(edNroCouvertF, 1);
end;

procedure TfrmControleMesaFechamento.edNroCouvertFExit(Sender: TObject);
begin
  if modo_touch then EscondeTecladoNumerico;
end;

procedure TfrmControleMesaFechamento.edNroCouvertMClick(Sender: TObject);
begin
  if modo_touch then edNroCouvertM.SelectAll;
end;

procedure TfrmControleMesaFechamento.edNroCouvertMEnter(Sender: TObject);
begin
  if modo_touch then MostraTecladoNumerico(edNroCouvertM, 1);
end;

procedure TfrmControleMesaFechamento.edNroCouvertMExit(Sender: TObject);
begin
  if modo_touch then EscondeTecladoNumerico;
end;

procedure TfrmControleMesaFechamento.edNroPessoasClick(Sender: TObject);
begin
  if modo_touch then edNroPessoas.SelectAll;
end;

procedure TfrmControleMesaFechamento.edNroPessoasEnter(Sender: TObject);
begin
  if modo_touch then MostraTecladoNumerico(edNroPessoas, 1);
end;

procedure TfrmControleMesaFechamento.edNroPessoasExit(Sender: TObject);
begin
  if modo_touch then EscondeTecladoNumerico;
end;

procedure TfrmControleMesaFechamento.edValorPagamentoClick(Sender: TObject);
begin
  if modo_touch then edValorPagamento.selectall;
end;

procedure TfrmControleMesaFechamento.edValorPagamentoEnter(Sender: TObject);
begin
  if modo_touch then MostraTecladoNumerico(edValorPagamento, 4);
  edValorPagamento.selectall;
end;

procedure TfrmControleMesaFechamento.edValorPagamentoExit(Sender: TObject);
begin
  // Muito estranho esse problema, pois estava pegando valor nulo, nem o .value resolveu, então coloquei o edValorPagamento.text e resolveu, na versão do delphi Seattle não dá problema, mas nessa versão tokyo 10.2.3 esta dando.
  // Rafael 05/06/2018
  if edValorPagamento.text='R$0,00' then
  begin
   edValorPagamento.Value:=0;
  end;

  if modo_touch then EscondeTecladoNumerico;
end;

procedure TfrmControleMesaFechamento.edCpfClienteClick(Sender: TObject);
begin
  if modo_touch then edCpfCliente.SelectAll;
end;

procedure TfrmControleMesaFechamento.edCpfClienteEnter(Sender: TObject);
begin
  if modo_touch then MostraTecladoNumerico(edCpfCliente, 3);
end;

procedure TfrmControleMesaFechamento.edCpfClienteExit(Sender: TObject);
begin
  if modo_touch then EscondeTecladoNumerico;
end;

procedure TfrmControleMesaFechamento.edDescontoPercentClick(Sender: TObject);
begin
  if modo_touch then edDescontoPercent.SelectAll;
end;

procedure TfrmControleMesaFechamento.edDescontoPercentEnter(Sender: TObject);
begin
  if modo_touch then MostraTecladoNumerico(edDescontoPercent, 3);
end;

procedure TfrmControleMesaFechamento.edDescontoPercentExit(Sender: TObject);
begin
  aplicaDesconto(1);

  if modo_touch then EscondeTecladoNumerico;
end;

procedure TfrmControleMesaFechamento.acAbrirGavetaExecute(Sender: TObject);
begin
  if utiliza_gaveta then frmMenu.AbrirGaveta;
end;

procedure TfrmControleMesaFechamento.Action1Execute(Sender: TObject);
begin
  bsat := True;
end;



procedure TfrmControleMesaFechamento.Alterar1Click(Sender: TObject);
var str_sql : string;
begin
  str_sql:= ' select cli_001, cli_002, cli_012, saldo_atual, limite_credito, fn_situacoes(sit_001) from clientes ';
  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
    str_sql,
    CriaIntegerArray([0,1,2,3,4]) ,
    CriaStringArray(['Código', 'Cliente', 'Telefone 1','Saldo Atual', 'Limite Crédito',  'Status' ]),
    0, 1, ' sit_001=4 and emp_001='+IntToStr(RecProj.iEmp), 800, 500, modo_touch,'cli_002');
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
   cdsVendaMesa.FieldByName('cli_001').value := frmBuscaRegistro.valor_retorno;
  FreeAndNil(frmBuscaRegistro);
end;

procedure TfrmControleMesaFechamento.aplicaDesconto(tipo : integer = 1);
var valor : double;
begin
  //desconto por porcentagem
  if tipo=1 then
  begin
    valor:= ( cdsVendaMesa.FieldByName('valor_venda').AsFloat +
    cdsVendaMesa.FieldByName('valor_tx').AsFloat + cdsVendaMesa.FieldByName('total_couvert').AsFloat ) *
        (cdsVendaMesa.FieldByName('desconto_percent').AsFloat / 100);
    cdsVendaMesa.FieldByName('desconto').AsFloat:= roundto(valor, -2);
  end
  //desconto por valor
  else
  begin
    valor:= (cdsVendaMesa.FieldByName('desconto').AsFloat / ( cdsVendaMesa.FieldByName('valor_venda').AsFloat +
    cdsVendaMesa.FieldByName('valor_tx').AsFloat  + cdsVendaMesa.FieldByName('total_couvert').AsFloat )) * 100;
    cdsVendaMesa.FieldByName('desconto_percent').AsFloat:=valor;
  end;
end;

procedure TfrmControleMesaFechamento.chamaTef(cnpjCred, bandeira, campo, numVenda : string; valorInformado : currency);
var index : integer;
begin
  index := 0;

  if RecProj.dTEF_TIPO > 0 then
    index := RecProj.dTEF_TIPO
  else
    index := 1;

  try
    FTEF.ACBrTEFDNFCe.BloquearMouseTeclado(true);
    pAguardeTef.Visible := true;
    pAguardeTef.repaint;
    FTef.valorInformado := valorInformado;
    FTef.campo := campo;

    if not FTef.ACBrTEFDNFCe.Inicializado then
      FTef.ACBrTEFDNFCe.Inicializar(TACBrTEFDTipo(index));

    StatusTransacao := True;
  except
    FTEF.ACBrTEFDNFCe.BloquearMouseTeclado(false);
    pAguardeTef.Visible := false;
    Application.MessageBox(
      'GP para tipo de pagamento solicitado não instalado.',
      'Informação do Sistema', MB_OK + MB_ICONINFORMATION);

    StatusTransacao := False;
  end;

  try
    FTEF.ACBrTEFDNFCe.BloquearMouseTeclado(false);
    StatusTransacao := FTEF.ACBrTEFDNFCe.CRT(ValorInformado, '02', numVenda);
    MemoCupomTEF.Visible := true;
    pAguardeTef.Visible := false;
    FTEF.ACBrTEFDNFCe.BloquearMouseTeclado(true);
  except
    On E: exception do
    begin
      BlockInput(false);
      StatusTransacao := False;
      TransacaoComTef := False;
      ShowMessage(E.ClassName + 'ERRO: ' + E.Message);
      pAguardeTef.Visible := false;
    end;
  end;

  if StatusTransacao then
  begin
    TransacaoComTef := True;

    if campo = '1' then
    begin
      cdsParcelasPagamentos.Edit;
      cdsParcelasPagamentosnro_autorizacao.AsString:= FTef.ACBrTEFDNFCe.RespostasPendentes[IndiceTransacaoTef].CodigoAutorizacaoTransacao;
      cdsParcelasPagamentos.Post;
    end;

    FTef.estadoSimuladoEcf := tpsLivre;
    FTef.ACBrTEFDNFCe.ImprimirTransacoesPendentes;
  end;
  BlockInput(false);
end;

end.
