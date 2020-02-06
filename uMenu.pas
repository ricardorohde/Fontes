unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Winapi.ShellAPI, System.DateUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer, StrUtils,
  cxEdit, Vcl.ActnList, Vcl.Menus, cxImage, Vcl.ImgList, Uni, Data.DB,
  DBAccess, UniProvider,
  SQLServerUniProvider, cxStyles, cxClasses, Vcl.StdCtrls, AdvGlowButton,
  Vcl.ExtCtrls, Vcl.DBActns, AdvOfficeStatusBar, PostgreSQLUniProvider,
  MemDS, cxSplitter, Datasnap.DBClient, DASQLMonitor,
  UniSQLMonitor, Midas, MidasLib, Vcl.Imaging.jpeg, uPadrao, Data.Win.ADODB,
  Vcl.ComCtrls, dxSkinsCore, dxSkinsDefaultPainters, cxEditRepositoryItems,
  ACBrBase, ACBrSAT, Vcl.Grids, Vcl.DBGrids, dxRibbonSkins, dxRibbon, dxBar,
  cxLabel, cxMaskEdit, cxProgressBar, cxBarEditItem, dxGDIPlusClasses, Printers,
  PgErrorUni,
  dxStatusBar, frxClass, frxDBSet, dxRibbonCustomizationForm, System.ImageList,
  System.Actions, madExceptVcl, System.IniFiles, ACBrPosPrinter, dxBarExtItems,
  uTransferenciaestoque, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxRibbonPainter,
  dxSkinsdxBarPainter;

type
  TfrmMenu = class(Tform)
    ActionList1: TActionList;
    act_Sair: TAction;
    act_Logoff: TAction;
    cxStyleRepository1: TcxStyleRepository;
    cxZebra1: TcxStyle;
    cxZebra2: TcxStyle;
    cxIncSearch: TcxStyle;
    act_Empresa: TAction;
    cxImageList1: TcxImageList;
    imagePrincipal: TcxImageList;
    conexao: TUniConnection;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    imgLOGO: TImage;
    StatusBar1: TAdvOfficeStatusBar;
    cxDestaque: TcxStyle;
    cxRiscado: TcxStyle;
    act_Usuarios: TAction;
    OpenDlg: TOpenDialog;
    ImgLsBmp: TImageList;
    SaveDialog: TSaveDialog;
    cxNegrito: TcxStyle;
    cdsConexao: TClientDataSet;
    cdsConexaoSERVER: TStringField;
    cxPago: TcxStyle;
    cxNaoAutorizado: TcxStyle;
    UniSQLMonitor1: TUniSQLMonitor;
    ImgList24: TcxImageList;
    imgSituacao: TcxImageList;
    act_FormaPgto: TAction;
    act_LimpaGradeUsuario: TAction;
    qrEmpresa: TUniQuery;
    qrEmpresaemp_001: TIntegerField;
    qrEmpresaemp_002: TWideStringField;
    qrEmpresaemp_003: TWideStringField;
    qrEmpresaemp_004: TWideStringField;
    qrEmpresaemp_005: TWideStringField;
    qrEmpresaemp_006: TWideStringField;
    qrEmpresaemp_007: TWideStringField;
    qrEmpresaemp_008: TWideStringField;
    qrEmpresaemp_011: TBlobField;
    qrEmpresaemp_012: TIntegerField;
    qrEmpresacep_002: TWideStringField;
    qrEmpresacep_003: TWideStringField;
    qrEmpresacep_004: TWideStringField;
    dsEmpresa: TDataSource;
    qrEmpresaemp_013: TWideStringField;
    qrEmpresaemp_014: TWideStringField;
    TmImpMobile: TTimer;
    cdsCFG: TClientDataSet;
    cdsCFGNOME: TStringField;
    cdsCFGNUMERO: TFloatField;
    cdsCFGTEXTO: TStringField;
    cdsCFGLOGICO: TBooleanField;
    cdsCFGDATA: TDateTimeField;
    qrAux1: TUniQuery;
    qrAux3: TUniQuery;
    qrAux2: TUniQuery;
    cxImageList24_original: TcxImageList;
    ImgList16: TcxImageList;
    cxDesconto: TcxStyle;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarButton4: TdxBarButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarButton5: TdxBarButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    btIngredientes: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    btCaixa: TdxBarLargeButton;
    btAberturacaixa: TdxBarLargeButton;
    btFechamentocaixa: TdxBarLargeButton;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarLargeButton20: TdxBarLargeButton;
    dxRibbon1: TdxRibbon;
    rbCadastros: TdxRibbonTab;
    rbEstoque: TdxRibbonTab;
    rbCaixa: TdxRibbonTab;
    dxRibbon1Tab5: TdxRibbonTab;
    rbRelatorios: TdxRibbonTab;
    btCadMesas: TdxBarLargeButton;
    dxBarLargeButton22: TdxBarLargeButton;
    dxBarLargeButton23: TdxBarLargeButton;
    dxBarLargeButton24: TdxBarLargeButton;
    dxBarLargeButton25: TdxBarLargeButton;
    rbFinanceiro: TdxRibbonTab;
    rbGrafico: TdxRibbonTab;
    dxRibbon1Tab8: TdxRibbonTab;
    dxBarManager1Bar4: TdxBar;
    btMesa: TdxBarLargeButton;
    btComanda: TdxBarLargeButton;
    btDelivery: TdxBarLargeButton;
    cxBarEditItem1: TcxBarEditItem;
    btBalcao: TdxBarLargeButton;
    cxBarEditItem2: TcxBarEditItem;
    cxBarEditItem3: TcxBarEditItem;
    dxBarButton6: TdxBarButton;
    btEntrada: TdxBarLargeButton;
    btSaida: TdxBarLargeButton;
    dxBarLargeButton32: TdxBarLargeButton;
    btPdv: TdxBarLargeButton;
    dxBarManager1Bar5: TdxBar;
    dxBarLargeButton34: TdxBarLargeButton;
    dxBarLargeButton35: TdxBarLargeButton;
    dxBarLargeButton36: TdxBarLargeButton;
    dxBarLargeButton37: TdxBarLargeButton;
    dxBarLargeButton38: TdxBarLargeButton;
    dxBarLargeButton39: TdxBarLargeButton;
    dxBarLargeButton40: TdxBarLargeButton;
    dxBarManager1Bar6: TdxBar;
    dxBarSubItem2: TdxBarSubItem;
    dxBarLargeButton41: TdxBarLargeButton;
    btHistorico: TdxBarLargeButton;
    btRanking: TdxBarLargeButton;
    btTaxaServico: TdxBarLargeButton;
    dxBarManager1Bar7: TdxBar;
    dxBarLargeButton45: TdxBarLargeButton;
    btPromocoes: TdxBarLargeButton;
    dxBarLargeButton47: TdxBarLargeButton;
    dxBarLargeButton48: TdxBarLargeButton;
    dxBarLargeButton49: TdxBarLargeButton;
    rbCancelacupom: TdxBarLargeButton;
    rbSatemitidos: TdxBarLargeButton;
    dxBarLargeButton52: TdxBarLargeButton;
    dxBarManager1Bar8: TdxBar;
    dxBarLargeButton53: TdxBarLargeButton;
    dxBarLargeButton54: TdxBarLargeButton;
    dxBarLargeButton55: TdxBarLargeButton;
    dxBarManager1Bar9: TdxBar;
    dxBarLargeButton56: TdxBarLargeButton;
    dxBarLargeButton57: TdxBarLargeButton;
    dxBarLargeButton58: TdxBarLargeButton;
    dxBarManager1Bar10: TdxBar;
    dxBarLargeButton59: TdxBarLargeButton;
    dxBarLargeButton60: TdxBarLargeButton;
    dxBarLargeButton61: TdxBarLargeButton;
    cxFundoVerde: TcxStyle;
    cxFundoAmarelo: TcxStyle;
    cxFundoVermelho: TcxStyle;
    dxBarLargeButton62: TdxBarLargeButton;
    ImgList48: TcxImageList;
    tmStatus: TTimer;
    cxFundoAzul: TcxStyle;
    btOpcionais: TdxBarLargeButton;
    qrImpressaoCozinha: TUniQuery;
    qrImpressaoCozinhacod_produto: TIntegerField;
    qrImpressaoCozinhaproduto: TWideStringField;
    qrImpressaoCozinhaobservacao: TWideStringField;
    qrImpressaoCozinhanro_venda: TIntegerField;
    qrImpressaoCozinhamesa_delivery: TWideStringField;
    qrImpressaoCozinhagarcom: TWideStringField;
    qrImpressaoCozinhaitem: TIntegerField;
    qrImpressaoCozinhaIngr: TUniQuery;
    qrImpressaoCozinhaIngrdescricao: TWideStringField;
    qrImpressaoCozinhaIngrquantidade: TFloatField;
    qrImpressaoCozinhaIngrunidade: TWideStringField;
    qrImpressaoCozinhaIngrid_material: TIntegerField;
    qrImpressaoCozinhaObs: TUniQuery;
    repImpressaoCozinha: TfrxReport;
    dsImpressaoCozinha: TDataSource;
    dbImpressaoCozinha: TfrxDBDataset;
    dbImpressaoCozinhaIngr: TfrxDBDataset;
    dbImpressaoCozinhaObs: TfrxDBDataset;
    qrImpressaoCozinhaCli: TUniQuery;
    qrImpressaoCozinhaClicli_002: TWideStringField;
    dbImpressaoCozinhaCli: TfrxDBDataset;
    qrImpressaoCozinhaObsite_001: TIntegerField;
    qrImpressaoCozinhaObsobservacao: TWideStringField;
    qrImpressaoCozinhaObsord: TIntegerField;
    MadExceptionHandler1: TMadExceptionHandler;
    rbReimprimirCupom: TdxBarLargeButton;
    qrImpressaoCozinhaitem_fracionado: TIntegerField;
    dxBarButton7: TdxBarButton;
    dxBarLargeButton65: TdxBarLargeButton;
    dxBarLargeButton66: TdxBarLargeButton;
    dxBarManager1Bar11: TdxBar;
    dxBarManager1Bar12: TdxBar;
    dxBarLargeButton67: TdxBarLargeButton;
    imgListMenu40: TcxImageList;
    dxBarButton8: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarLargeButton68: TdxBarLargeButton;
    btTouch: TdxBarLargeButton;
    ACBrPosPrinter1: TACBrPosPrinter;
    dxBarLargeButton70: TdxBarLargeButton;
    dxBarLargeButton71: TdxBarLargeButton;
    dxBarManager1Bar13: TdxBar;
    dxBarLargeButton72: TdxBarLargeButton;
    dxBarLargeButton73: TdxBarLargeButton;
    dxBarLargeButton74: TdxBarLargeButton;
    dxBarLargeButton75: TdxBarLargeButton;
    rbDevolucao: TdxBarLargeButton;
    dxBarLargeButton77: TdxBarLargeButton;
    dxBarLargeButton78: TdxBarLargeButton;
    dxBarLargeButton79: TdxBarLargeButton;
    dxBarManager1Bar14: TdxBar;
    dxBarManager1Bar15: TdxBar;
    btCaixinha: TdxBarLargeButton;
    dbEmpresa: TfrxDBDataset;
    dxBarLargeButton81: TdxBarLargeButton;
    dxBarLargeButton82: TdxBarLargeButton;
    dxBarLargeButton83: TdxBarLargeButton;
    dxBarLargeButton84: TdxBarLargeButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarLargeButton85: TdxBarLargeButton;
    dxBarLargeButton86: TdxBarLargeButton;
    btExportarArquivBalancaMGV6: TdxBarLargeButton;
    cdsFiltroImpressorasPedido: TClientDataSet;
    cdsFiltroImpressorasPedidoid_venda: TIntegerField;
    cdsFiltroImpressorasPedidofiltro_impressoras: TStringField;
    btNfe: TdxBarLargeButton;
    PopupMenu1: TPopupMenu;
    dxBarLargeButton26: TdxBarLargeButton;
    dxBarCombo1: TdxBarCombo;
    dxBarColorCombo1: TdxBarColorCombo;
    btExportarArquivoBalanca: TdxBarSubItem;
    btExportarArquivoBalancaMGV6: TdxBarLargeButton;
    btExportarArquivoBalancaSmart: TdxBarLargeButton;
    qrImpressaoCozinhaquantidade: TWideStringField;
    qrImpressaoCozinhaClicep_003: TWideStringField;
    qrImpressaoCozinhaClicep_004: TWideStringField;
    dxRibbon1Tab9: TdxRibbonTab;
    dxBarSubItem5: TdxBarSubItem;
    dxBarLargeButton27: TdxBarLargeButton;
    dxBarLargeButton28: TdxBarLargeButton;
    qrImpressaoCozinhaqtde_fracao: TWideMemoField;
    qrImpressaoCozinhanome_mesa: TWideStringField;
    qrImpressaoCozinhatipo_venda: TWideStringField;
    ImgList64A: TcxImageList;
    ImgList64B: TcxImageList;
    ImgList32: TcxImageList;
    btOrcamento: TdxBarLargeButton;
    dxBarButton10: TdxBarButton;
    dxBarLargeButton33: TdxBarLargeButton;
    dxBarLargeButton69: TdxBarLargeButton;
    dxBarButton11: TdxBarButton;
    dxBarManager1Bar16: TdxBar;
    dxBarButton12: TdxBarButton;
    qrEmpresatempo_espera_delivery: TIntegerField;
    dxBarLargeButton87: TdxBarLargeButton;
    dxBarLargeButton88: TdxBarLargeButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarLargeButton89: TdxBarLargeButton;
    btFecharconta: TdxBarLargeButton;
    dxBarLargeButton91: TdxBarLargeButton;
    qrImpressaoCozinhab_taxa_entrega: TBooleanField;
    qrImpressaoCozinhadata_agendamento: TDateTimeField;
    qrImpressaoCozinhahora_agendamento: TTimeField;
    dxBarLargeButton92: TdxBarLargeButton;
    dxBarButton13: TdxBarButton;
    dxBarLargeButton93: TdxBarLargeButton;
    dxBarButton14: TdxBarButton;
    dxBarLargeButton94: TdxBarLargeButton;
    cxFundoAzulNegrito: TcxStyle;
    cxTextoNegrito12: TcxStyle;
    cxTexto12: TcxStyle;
    cxFundoAzulEscuroNegrito: TcxStyle;
    btMonitorPreparo: TdxBarLargeButton;
    btMonitorEntrega: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarManager1Bar17: TdxBar;
    dxBarButton15: TdxBarButton;
    btAjudaSite: TdxBarLargeButton;
    btAjudaSuporte: TdxBarLargeButton;
    dxBarManager1Bar18: TdxBar;
    dxBarLargeButton18: TdxBarLargeButton;
    Button1: TButton;
    dxbrManager1Bar: TdxBar;
    dxbrlrgbtn1: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton29: TdxBarLargeButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarLargeButton30: TdxBarLargeButton;
    dxBarLargeButton31: TdxBarLargeButton;
    qrEmpresacelular: TWideStringField;
    dxBarLargeButton42: TdxBarLargeButton;
    dxBarLargeButton43: TdxBarLargeButton;
    dxBarLargeButton44: TdxBarLargeButton;
    dxBarLargeButton46: TdxBarLargeButton;
    dxBarLargeButton50: TdxBarLargeButton;
    dxBarLargeButton51: TdxBarLargeButton;
    procedure act_SairExecute(Sender: TObject);
    procedure act_LogoffExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure act_UsuariosExecute(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    Procedure ExecutaBackup(exibe_alertas: boolean = true);
    procedure act_FormaPgtoExecute(Sender: TObject);
    procedure act_LimpaGradeUsuarioExecute(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure Categoria1Click(Sender: TObject);
    procedure btVendasClick(Sender: TObject);
    procedure qrEmpresaBeforeOpen(DataSet: TDataSet);
    procedure Sistema2Click(Sender: TObject);
    procedure carregaCaixaUsuario;
    procedure TmImpMobileTimer(Sender: TObject);
    procedure Bairros1Click(Sender: TObject);
    function ConfirmacaoSenha(campo_permissao: string; out id_usuario: integer)
      : boolean; overload;
    function ConfirmacaoSenhaSimples: boolean;
    function SeqPedido: integer;
    procedure FluxodeCaixa1Click(Sender: TObject);
    procedure Abertura1Click(Sender: TObject);
    procedure EntradaSuprimento1Click(Sender: TObject);
    procedure SadaRetirada1Click(Sender: TObject);
    procedure dxBarLargeButton12Click(Sender: TObject);
    procedure dxBarLargeButton13Click(Sender: TObject);
    procedure btIngredientesClick(Sender: TObject);
    procedure dxBarLargeButton20Click(Sender: TObject);
    procedure btCadMesasClick(Sender: TObject);
    procedure dxBarLargeButton23Click(Sender: TObject);
    procedure dxBarLargeButton24Click(Sender: TObject);
    procedure dxBarLargeButton25Click(Sender: TObject);
    procedure dxBarLargeButton35Click(Sender: TObject);
    procedure btAberturacaixaClick(Sender: TObject);
    procedure btFechamentocaixaClick(Sender: TObject);
    procedure btEntradaClick(Sender: TObject);
    procedure btSaidaClick(Sender: TObject);
    procedure btMesaClick(Sender: TObject);
    procedure dxBarLargeButton45Click(Sender: TObject);
    procedure btCaixaClick(Sender: TObject);
    procedure btDeliveryClick(Sender: TObject);
    procedure dxBarLargeButton37Click(Sender: TObject);
    procedure dxBarLargeButton38Click(Sender: TObject);
    procedure dxBarLargeButton49Click(Sender: TObject);
    procedure dxBarLargeButton62Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure ImprimePedidoProducao;
    procedure ImprimePrefechamentoMobile;
    Procedure VerificaPermissaoAcesso(flag: boolean);
    procedure dxBarLargeButton59Click(Sender: TObject);
    procedure dxBarLargeButton60Click(Sender: TObject);
    procedure dxBarLargeButton61Click(Sender: TObject);
    procedure dxBarLargeButton8Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton48Click(Sender: TObject);
    procedure btTaxaServicoClick(Sender: TObject);
    procedure tmStatusTimer(Sender: TObject);
    procedure rbSatemitidosClick(Sender: TObject);
    procedure dxBarLargeButton52Click(Sender: TObject);
    procedure btOpcionaisClick(Sender: TObject);
    procedure VerificaCaixaAberto;
    Procedure AbreXMLCFG;
    Function LerBoolean(sNome: String; Default: boolean = False): boolean;
    Function LerString(sNome: String; Default: String = ''): String;
    procedure btPdvClick(Sender: TObject);
    procedure btBalcaoClick(Sender: TObject);
    procedure rbCancelacupomClick(Sender: TObject);
    procedure rbReimprimirCupomClick(Sender: TObject);
    procedure btComandaClick(Sender: TObject);
    procedure conexaoAfterConnect(Sender: TObject);
    procedure dxBarLargeButton15Click(Sender: TObject);
    procedure dxBarLargeButton65Click(Sender: TObject);
    procedure dxBarLargeButton66Click(Sender: TObject);
    procedure btHistoricoClick(Sender: TObject);
    procedure dxBarLargeButton68Click(Sender: TObject);
    procedure dxBarLargeButton54Click(Sender: TObject);
    procedure btTouchClick(Sender: TObject);
    procedure AbrirGaveta(abortar_a_erro: boolean = False);
    procedure dxBarLargeButton70Click(Sender: TObject);
    procedure dxBarLargeButton67Click(Sender: TObject);
    procedure dxBarLargeButton71Click(Sender: TObject);
    procedure dxBarLargeButton72Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarLargeButton73Click(Sender: TObject);
    procedure dxBarLargeButton74Click(Sender: TObject);
    procedure dxBarLargeButton77Click(Sender: TObject);
    function ConfiguraImpressoraPOS(impressora: string): boolean;
    procedure StatusBar1DblClick(Sender: TObject);
    procedure ImprimeCupomPOS(dsVenda, dsDadosCliente, dsVendaItem,
      dsVendaItemOpcional, dsVendaItemFracionadoRep,
      dsVendaItemFracionadoOpcional, dsParcelasPagamentos, dsCreceberFiado
      : TDataSet; variacao_relatorio: integer = 1;
      mensagem_couvert: string = ''; mensagem_final: string = '';
      mensagem_comanda: string = '';
      suprimir_cabecalho_rodape_cupom: boolean = False;
      entregador_delivery: string = ''; impressora: string = 'CAIXA';
      numero_vias: integer = 1; Pre_Fechamento: boolean = False;
      pre_visualizar_relatorio: boolean = False);
    procedure btCaixinhaClick(Sender: TObject);
    procedure AbreFormRelatoriosVendas(indice: integer = 0);
    procedure AbreFormRelatoriosEstoque(indice: integer = 0);
    procedure dxBarLargeButton81Click(Sender: TObject);
    procedure AvisaEsoqueMinimo(id_material: integer; tipo_venda: string;
      qtd_mov: double);
    procedure dxBarLargeButton82Click(Sender: TObject);
    procedure dxBarLargeButton83Click(Sender: TObject);
    procedure btNfeClick(Sender: TObject);
    procedure ExportaArquivoBalanca(fabricante: String);
    procedure btExportarArquivoBalancaMGV6Click(Sender: TObject);
    procedure btExportarArquivoBalancaSmartClick(Sender: TObject);
    procedure dxBarLargeButton34Click(Sender: TObject);
    procedure BackupAutomatico;
    procedure dxBarLargeButton27Click(Sender: TObject);
    procedure dxBarLargeButton28Click(Sender: TObject);
    procedure dxBarLargeButton36Click(Sender: TObject);
    procedure dxBarLargeButton53Click(Sender: TObject);
    procedure dxBarLargeButton87Click(Sender: TObject);
    procedure dxBarLargeButton88Click(Sender: TObject);
    procedure dxBarLargeButton89Click(Sender: TObject);
    procedure dxBarLargeButton10Click(Sender: TObject);
    procedure btFecharcontaClick(Sender: TObject);
    procedure dxBarLargeButton91Click(Sender: TObject);
    procedure dxBarLargeButton94Click(Sender: TObject);
    procedure btMonitorPreparoClick(Sender: TObject);
    procedure btMonitorEntregaClick(Sender: TObject);
    procedure btAjudaSiteClick(Sender: TObject);
    procedure btAjudaSuporteClick(Sender: TObject);
    procedure dxBarLargeButton18Click(Sender: TObject);
    procedure dxbrlrgbtn1Click(Sender: TObject);
    procedure dxBarLargeButton56Click(Sender: TObject);
    procedure verifica_modulo_sistema;
    procedure dxBarLargeButton29Click(Sender: TObject);
    procedure dxBarLargeButton30Click(Sender: TObject);
    procedure ExportaTara;
    procedure dxBarLargeButton31Click(Sender: TObject);
    procedure dxBarLargeButton44Click(Sender: TObject);
    procedure dxBarLargeButton46Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dxBarLargeButton50Click(Sender: TObject);
    procedure dxBarLargeButton51Click(Sender: TObject);
  private
    procedure Fechar_Filhos;
    procedure Chama_Login;
    function AbreDATABASE: boolean;
    procedure Ler_Menu(Menu: TMenuItem; Query: TUniQuery);

  public
    cabecalho: string;
    usa_touch: boolean;
  end;

type
  Projeto = record
    iEmp: integer; // Id empresa
    sEmp: String;
    sEmpFantasia: String;
    iUsuario: integer; // id usuario
    sUsuario, // Nome do usario
    sUsuarioCaixa, sLoginUsuario, sInfoDevSistema1, // Dados do sistema
    sInfoDevSistema2, sSiteDevSistema, sSoftwareHouse: String;
    bSalvaLayoutCons: boolean;
    bFiltroCreate: boolean;
    bUsaEntregaParcialMat: boolean;
    bUsaControleEstoque: boolean;
    bQualidade: boolean;
    iMaterial: integer;
    dEstoque: double;
    dReserva: double;
    bVersaoAvaliacao: boolean;
    sFoneCliente: String;
    iIDCaixa: integer; // Id Caixa
    dCaixaDataAbertura: TDateTime; // Abertura do caixa
    dCaixaHoraAbertura: TDateTime; // Horario fechamento caixa

    // envio de email
    MailPort: integer;
    MailHost, MailUsername, MailPassword: string;

    // dados da liceça e validação
    dInicioLiberacao: TDate;
    dValidadeLiberacao: TDate;
    dUltimoAcesso: TDate;

    // TEF
    dTEF_REQ, dTEF_REP, dTEF_VIAS: String;
    dTEF_TIPO: SmallInt;

  end;

const
  sSenhaMaster: String = '159357';
  //
  sMskCEP: String = '99999-999';
  sMskTel: String = '(99)9999-9999';
  sMskCel: String = '(99)99999-9999';
  //
  sMskVlMat: String = '#,##0.00';
  sMskQtdeMat: String = '#,##0.00';
  //
  sMskVlTotal: String = '#,##0.00';
  //
  sMskCNPJ: String = '99.999.999/9999-99';
  sMskCPF: String = '999.999.999-99';
  sMskRG: String = '99.999.999-9';

var
  frmMenu: TfrmMenu;
  RecProj: Projeto;

function Chama_Justificativa(Nome_Janela, Titulo, Corpo_Titulo: String): String;
procedure Chama_Historico(Nome_Janela, Titulo, Corpo_Titulo, Historico: String);
function Retorna_Situacao(Index: integer): String;

implementation

{$R *.dfm}

uses Traducoes, uLogin, uFuncoes,
  uConsUsuarios,
  uConsUnidade,
  uServidor,
  uMemo, Funcao_DB, uConsFormaPgto,
  uConsCategoria, uPadraoDetalhe,
  uConfiguracao,
  uConsBairro,
  uControleMesa,
  uConfirmacaoSenha, uBuscaRegistro, uCaixaAberturaFechamento,
  uCaixaStatus, uCaixaLancaMovimento, uDetalheProduto, uConsProduto,
  uRelatorioVendas, uControleDelivery,
  uConsCliente, uDetalheComposicao, uConsComposicao,
  uGraficoVendas, uMovimentoEstoque, uRelatorioEstoque,
  uPosPrinterTeste, uConsVendaSAT, uGeradorSAT, uDetalheOpcional,
  uConsOpcionais, uConsMesa, uPDV,
  uVendaBalcaoTouch, uReimprimirCancelarCupom, uConsFornecedor, uConsConta,
  uControleContasPagar, uConsContaCorrente,
  uRelatorioHistoricoVendasCliente, uControleContasReceberFiado, uVendaTouch,
  uProdutoReajustePreco, uDetalheCondicaoPagamento, uConsCondicaoPagamento,
  uRelatorioMovimentoContaCliente, uVendaBalcao, uRelatorioAniversariantes,
  uControleDeliveryDetalheVenda, uLiberacao, uEnvioCFe,
  uControleDevolucaoConsultaVenda, uRelatorioABC, uRelatorioABCPagamentos,
  uDetalheNotaSaida,
  uControleNotaFiscalSaida, uEnvioEmail, uMonitorpreparo,
  uControleNotaFiscalEntrada, uConsCidade,
  uDetalhesmesa, uConsSetor, uControleMesaRelatorios,
  uJuncaoefechamentocomanda, uVisualizaRelatorioTexto, uAjusteestoque,
  uCadastroclientes, UCasanoturnacadastroclientes,
  uContasareceberinclusao, uImportarcomanda, uLancamentocontas,
  uAnalisefinanceira, frm_xml, uControleMesaFechamento, uConsIBPT, uConsTara,
  uConsComandas, uBloqueiocomanda, uResumodacasa;

procedure TfrmMenu.BackupAutomatico;
var
  executa_backup, conf_apaga_antigos, apagar_antigos: boolean;
  caminho_pg_dump, caminho_backup, data_nome_arquivo: string;
  listagem_zips, listagem_logs: Tstringlist;
  csdListaArquivos: TClientDataSet;
  I, dias: integer;
  formato_data_hora: TFormatSettings;
begin
  executa_backup := LerBooleanConfig('CKBACKUPAUTOMATICO', cdsCFG.filename);
  conf_apaga_antigos := LerBooleanConfig('CKBACKUPAUTOMATICOEXCLUIRANTIGOS',
    cdsCFG.filename);
  caminho_pg_dump := LerStringConfig('EDCAMINHOPGDUMP', cdsCFG.filename);
  caminho_backup := FormatarCaminhoDir(LerStringConfig('EDREPOSITORIOBKP',
    cdsCFG.filename));
  formato_data_hora := TFormatSettings.Create;
  formato_data_hora.ShortDateFormat := 'dd_mm_yyyy_hh_nn';
  formato_data_hora.DateSeparator := '_';
  formato_data_hora.TimeSeparator := '_';
  apagar_antigos := False;

  csdListaArquivos := TClientDataSet.Create(self);
  csdListaArquivos.FieldDefs.Clear;
  csdListaArquivos.FieldDefs.add('caminho', ftString, 1000);
  csdListaArquivos.FieldDefs.add('tipo', ftString, 3);
  csdListaArquivos.FieldDefs.add('data_hora', ftDateTime);
  // índice decrescente de data
  with csdListaArquivos.IndexDefs.AddIndexDef do
  begin
    Name := 'DataDesc';
    Fields := 'data_hora';
    Options := [];
  end;
  csdListaArquivos.CreateDataSet;
  csdListaArquivos.IndexName := 'DataDesc';
  csdListaArquivos.IndexFieldNames := 'data_hora';

  if executa_backup then
  begin
    try
      screen.Cursor := crHourGlass;
      // verifica se existe pgdump...
      if not FileExists(caminho_pg_dump) then
        exit;

      // verifica se existem arquivos no diretorio de backup
      if DirectoryExists(caminho_backup) then
      begin
        listagem_zips := GetFileList(caminho_backup + '*.zip');
        listagem_logs := GetFileList(caminho_backup + '*.txt');

        // adiciona os arquivos .zip ao cds
        for I := 0 to listagem_zips.Count - 1 do
        begin
          // pega só a data e hora que estão no nome do arquivo... deve estar no formato BKP_01_01_2020_12_30
          data_nome_arquivo := copy(listagem_zips[I], 5, 16);
          try
            csdListaArquivos.Append;
            csdListaArquivos.FieldByName('caminho').Asstring := caminho_backup +
              listagem_zips[I];
            csdListaArquivos.FieldByName('tipo').Asstring := 'zip';
            csdListaArquivos.FieldByName('data_hora').AsDateTime :=
              StrToDateTime(data_nome_arquivo, formato_data_hora);
            csdListaArquivos.post;
          except
          end;
        end;
        // adiciona os arquivos de log .txt ao cds
        for I := 0 to listagem_logs.Count - 1 do
        begin
          // pega só a data e hora que estão no nome do arquivo... deve estar no formato LOG_01_01_2020_12_30
          data_nome_arquivo := copy(listagem_logs[I], 5, 16);
          try
            csdListaArquivos.Append;
            csdListaArquivos.FieldByName('caminho').Asstring := caminho_backup +
              listagem_logs[I];
            csdListaArquivos.FieldByName('tipo').Asstring := 'txt';
            csdListaArquivos.FieldByName('data_hora').AsDateTime :=
              StrToDateTime(data_nome_arquivo, formato_data_hora);
            csdListaArquivos.post;
          except
          end;
        end;
        // analisa se deve executar o backup e excluir antigos...
        if csdListaArquivos.RecordCount > 0 then
        begin
          csdListaArquivos.filter := 'tipo=''zip''';
          csdListaArquivos.filtered := true;
          csdListaArquivos.last;
          // vai pro ultimo registro, o mais novo pela ordenação...
          apagar_antigos := conf_apaga_antigos and
            (csdListaArquivos.RecordCount >= 4);
          dias := DaysBetween(csdListaArquivos.FieldByName('data_hora')
            .AsDateTime, Date);
          executa_backup := dias >= 7;
        end
        else
          executa_backup := true;
      end
      else
        executa_backup := true;

      if executa_backup then
      begin
        ExecutaBackup(true);
        // apaga os arquivos antigos
        if apagar_antigos then
        begin
          // apaga os arquivos zip, dos mais antigos para os mais novos
          csdListaArquivos.last;
          while csdListaArquivos.RecordCount >= 4 do
          begin
            if FileExists(csdListaArquivos.FieldByName('caminho').Asstring) then
              DeleteFile(csdListaArquivos.FieldByName('caminho').Asstring);

            csdListaArquivos.Delete;
            csdListaArquivos.prior;
          end;
          // apaga os arquivos txt, dos mais antigos para os mais novos
          csdListaArquivos.filtered := False;
          csdListaArquivos.filter := 'tipo=''txt''';
          csdListaArquivos.filtered := true;
          csdListaArquivos.last;
          while csdListaArquivos.RecordCount >= 4 do
          begin
            if FileExists(csdListaArquivos.FieldByName('caminho').Asstring) then
              DeleteFile(csdListaArquivos.FieldByName('caminho').Asstring);

            csdListaArquivos.Delete;
            csdListaArquivos.prior;
          end;
        end;
      end;
    finally
      screen.Cursor := crDefault;
    end;

  end;
end;

procedure TfrmMenu.AvisaEsoqueMinimo(id_material: integer; tipo_venda: string;
  qtd_mov: double);
var
  avisa: boolean;
  str_sql, msg: string;
  qry: TUniQuery;
  Formato: TFormatSettings;
begin
  tipo_venda := uppercase(tipo_venda);

  if tipo_venda = 'M' then
    avisa := LerBooleanConfig('CKAVISAESTOQUEMINIMOMESA',
      frmMenu.cdsCFG.filename)
  else if tipo_venda = 'D' then
    avisa := LerBooleanConfig('CKAVISAESTOQUEMINIMODELIVERY',
      frmMenu.cdsCFG.filename)
  else if tipo_venda = 'C' then
    avisa := LerBooleanConfig('CKAVISAESTOQUEMINIMOCOMANDA',
      frmMenu.cdsCFG.filename)
  else if tipo_venda = 'B' then
    avisa := LerBooleanConfig('CKAVISAESTOQUEMINIMOBALCAO',
      frmMenu.cdsCFG.filename)
  else
    avisa := LerBooleanConfig('CKAVISAESTOQUEMINIMOPDV',
      frmMenu.cdsCFG.filename);

  if avisa then
  begin
    qry := TUniQuery.Create(self);
    qry.Connection := conexao;

    Formato.DecimalSeparator := '.';
    str_sql :=
      format(' select ((coalesce(stm.quantidade,0.0)-%s<=coalesce(m.mat_014,0.0)) and (m.mat_014>0.0)) as atingiu_minimo, '
      + ' m.mat_014 as minimo, coalesce(stm.quantidade, 0.0) as estoque, m.mat_003 as descricao '
      + ' from materiais m ' +
      ' left join setor_estoque_material stm on stm.id_material=m.mat_001 and stm.id_empresa=m.emp_001 and stm.id_setor=m.id_setor '
      + ' where m.mat_001=%d and m.emp_001=%d ',
      [FormatFloat('0.###', qtd_mov, Formato), id_material,recproj.iEmp]);
    ExecutaConsultaSQL(qry, str_sql);
    if qry.FieldByName('atingiu_minimo').AsBoolean then
    begin
      msg := format('O produto %s atingiu seu estoque mínimo!%s' +
        'Estoque atual: %.3f%sEstoque mínimo: %.3f',
        [qry.FieldByName('descricao').Asstring, slinebreak,
        qry.FieldByName('estoque').AsFloat, slinebreak,
        qry.FieldByName('minimo').AsFloat]);
      application.MessageBox(pchar(msg), 'Atenção', MB_Iconerror);
    end;
  end;

end;

procedure TfrmMenu.ImprimeCupomPOS(dsVenda, dsDadosCliente, dsVendaItem,
  dsVendaItemOpcional, dsVendaItemFracionadoRep, dsVendaItemFracionadoOpcional,
  dsParcelasPagamentos, dsCreceberFiado: TDataSet;
  variacao_relatorio: integer = 1; mensagem_couvert: string = '';
  mensagem_final: string = ''; mensagem_comanda: string = '';
  suprimir_cabecalho_rodape_cupom: boolean = False;
  entregador_delivery: string = ''; impressora: string = 'CAIXA';
  numero_vias: integer = 1; Pre_Fechamento: boolean = False;
  pre_visualizar_relatorio: boolean = False); // Rafael 14/09/2017
var
  str_impressao, tipo_venda, str_aux, str_aux2, str_aux3, str_aux4: string;
  ultimo_fracionado, I: integer;
  config_imp: string;
  numero_colunas: integer;
begin
  tipo_venda := uppercase(dsVenda.FieldByName('tipo_venda').Asstring);
  config_imp := ExtractFilePath(application.ExeName) + 'CONF\IMP_' +
    impressora + '.xml';
  numero_colunas := lerintegerconfig('COLUNAS', config_imp, 48);

  case numero_colunas of
    48:
      begin
        // monta o cabeçalho da empresa
        str_impressao := '</zera>' + slinebreak +
          '</ce><n>*** CUPOM PARA SIMPLES CONFERENCIA ***' + slinebreak +
          '</ce>*** NAO É DOCUMENTO FISCAL *** </n>' + slinebreak;

        if not suprimir_cabecalho_rodape_cupom then
        begin
          str_impressao := str_impressao + '</ae>' + qrEmpresa.FieldByName
            ('emp_003').Asstring + slinebreak +
            AcertaTexto(qrEmpresa.FieldByName('cep_004').Asstring, 'E', 40) +
            AcertaTexto(qrEmpresa.FieldByName('emp_007').Asstring, 'E', 8) +
            slinebreak + AcertaTexto(qrEmpresa.FieldByName('cep_003').Asstring,
            'E', 48) + slinebreak + 'FONE: ' +
            AcertaTexto(qrEmpresa.FieldByName('emp_013').Asstring, 'E', 40) +
            slinebreak + '</linha_simples>' + slinebreak;
        end;

        // cabeçalho especifico para mesa e comanda
        if (tipo_venda = 'M') or (tipo_venda = 'C') then
        begin
          if Pre_Fechamento then
            str_impressao := str_impressao + '<n>' +
              dsVenda.FieldByName('descricao_mesa').Asstring + '</n>' +
              slinebreak + 'Cliente:    ' + slinebreak + 'Abertura:   ' +
              formatdatetime('dd/mm/yyyy hh:nn',
              dsVenda.FieldByName('data_abertura').AsDateTime) + slinebreak +
              'Fechamento: ' + formatdatetime('dd/mm/yyyy hh:nn',
              dsVenda.FieldByName('data_atual').AsDateTime) + slinebreak +
              '</linha_simples>' + slinebreak
          else
            str_impressao := str_impressao + '<n>' +
              dsVenda.FieldByName('descricao_mesa').Asstring + '</n>' +
              slinebreak + 'Abertura: ' + formatdatetime('dd/mm/yyyy hh:nn',
              dsVenda.FieldByName('data_abertura').AsDateTime) + slinebreak +
              'Fechamento: ' + formatdatetime('dd/mm/yyyy hh:nn',
              dsVenda.FieldByName('data_atual').AsDateTime) + slinebreak +
              'Cupom: ' + dsVenda.FieldByName('numero_cupom').Asstring +
              slinebreak + 'Operador: ' + RecProj.sUsuario + slinebreak +
              '</linha_simples>' + slinebreak;
        end
        // DELIVERY...
        else if tipo_venda = 'D' then
        begin
          if not suprimir_cabecalho_rodape_cupom then
            str_impressao := str_impressao + 'Venda: ' +
              dsVenda.FieldByName('nro_venda').Asstring + slinebreak + 'Data: '
              + formatdatetime('dd/mm/yyyy hh:nn',
              dsVenda.FieldByName('data_abertura').AsDateTime) + slinebreak +
              'Cupom: ' + dsVenda.FieldByName('numero_cupom').Asstring +
              slinebreak + 'Operador: ' + RecProj.sUsuario + slinebreak +
              '</linha_simples>' + slinebreak;
        end
        else if tipo_venda = 'P' then // PDV
        begin
          str_impressao := str_impressao + 'Venda:' +
            dsVenda.FieldByName('nro_venda').Asstring + slinebreak + 'Cupom: ' +
            dsVenda.FieldByName('numero_cupom').Asstring + slinebreak + 'Data: '
            + formatdatetime('dd/mm/yyyy hh:nn',
            dsVenda.FieldByName('data_abertura').AsDateTime) + slinebreak +
          // Numero da venda do PDV
            'Operador: ' + RecProj.sUsuario + slinebreak + 'Vendedor: ' +
            dsVenda.FieldByName('nome_vendedor').Asstring + slinebreak +
            '</linha_simples>' + slinebreak;
        end
        else
        begin
          str_impressao := str_impressao + 'Venda: ' +
            dsVenda.FieldByName('nro_venda').Asstring + ' Cupom: ' +
            dsVenda.FieldByName('numero_cupom').Asstring + slinebreak +
          // Numero da venda do PDV
            'Data: ' + formatdatetime('dd/mm/yyyy hh:nn',
            dsVenda.FieldByName('data_abertura').AsDateTime) + slinebreak +
            'Operador: ' + RecProj.sUsuario + slinebreak + '</linha_simples>' +
            slinebreak;
        end;
        // ----------------------------------------------------------------------//

        // dados do cliente

        if dsDadosCliente <> nil then
        begin
          if dsDadosCliente.RecordCount > 0 then
          begin
            if tipo_venda = 'D' then // Delivery
            begin
              if dsVenda.FieldByName('b_taxa_entrega').AsBoolean then
                str_aux := ''
              else
                str_aux := 'RETIRADA NO BALCÃO' + slinebreak;

              if not suprimir_cabecalho_rodape_cupom then
              begin
                str_impressao :=
                  '</ce><n>*** CUPOM PARA SIMPLES CONFERENCIA ***' + slinebreak
                  + '</ce>*** NAO É DOCUMENTO FISCAL *** </n>' + slinebreak +
                  AcertaTexto(qrEmpresa.FieldByName('emp_003').Asstring, 'E',
                  48) + AcertaTexto(qrEmpresa.FieldByName('cep_004').Asstring,
                  'E', 40) + AcertaTexto(qrEmpresa.FieldByName('emp_007')
                  .Asstring, 'E', 8) + slinebreak +
                  AcertaTexto(qrEmpresa.FieldByName('cep_003').Asstring, 'E',
                  48) + slinebreak +
                  AcertaTexto('FONE: ' + qrEmpresa.FieldByName('emp_013')
                  .Asstring, 'E', 21) +
                  AcertaTexto('CELULAR: ' + qrEmpresa.FieldByName('celular')
                  .Asstring, 'E', 27) + slinebreak + '</linha_simples>' +
                  slinebreak;

              end
              else
              begin

                str_impressao :=
                  '</ce><n>*** CUPOM PARA SIMPLES CONFERENCIA ***' + slinebreak
                  + '</ce>*** NAO É DOCUMENTO FISCAL *** </n>' + slinebreak +
                  '</linha_simples>' + slinebreak;
              end;
              // Rafael 2.47     Inclusão data na impressão do cupom
              str_impressao := str_impressao + str_aux + '</ae>' +
                '<n>PEDIDO:</n>' + dsVenda.FieldByName('nro_venda').Asstring +
                '<n>   HORÁRIO:</n>' + formatdatetime('hh:nn',dsVenda.FieldByName('data_abertura').AsDateTime) +
                '<n>    Data: ' + formatdatetime('dd/mm/yyyy',dsVenda.FieldByName('data_abertura').AsDateTime )+

                 slinebreak +
                '</linha_simples>' + slinebreak + '<n>CLIENTE: </n>' +
                dsVenda.FieldByName('nome_cliente').Asstring + slinebreak +
                '<n>END.: </n>' + dsVenda.FieldByName('endereco').Asstring +
                slinebreak + '<n>NRO.: </n>' +
                AcertaTexto(dsDadosCliente.FieldByName('endereco_numero')
                .Asstring, 'E', 10) + '<n>COMPL.:</n>' +
                AcertaTexto(dsDadosCliente.FieldByName('endereco_complemento')
                .Asstring, 'E', 63) + slinebreak + '<n>BAIRRO: </n>' +
                AcertaTexto(dsDadosCliente.FieldByName('bairro').Asstring, 'E',
                40) + slinebreak + '<n>CIDADE: </n>' +
                AcertaTexto(dsDadosCliente.FieldByName('cidade_desc').Asstring,
                'E', 40) + slinebreak + '<n>PONTO DE REFERÊNCIA: </n>' +
                dsDadosCliente.FieldByName('endereco_referencia').Asstring +
                slinebreak + '<n>TELEFONES.: </n>' + slinebreak +
                AcertaTexto(dsDadosCliente.FieldByName('telefone1').Asstring,
                'E', 14) + ' | ' +
                AcertaTexto(dsDadosCliente.FieldByName('telefone2').Asstring,
                'E', 14) + ' | ' + dsDadosCliente.FieldByName('celular1')
                .Asstring + slinebreak + '<n>OBS.: ' + str_aux +
                dsVenda.FieldByName('observacoes').Asstring + slinebreak +
                '</n></linha_simples>' + slinebreak;
            end
            else
            begin
              str_impressao := str_impressao + 'Cliente:  ' +
                dsDadosCliente.FieldByName('nome').Asstring + slinebreak +
                'Endereço: ' + dsDadosCliente.FieldByName('endereco').Asstring +
                slinebreak + 'Bairro:   ' + dsDadosCliente.FieldByName('bairro')
                .Asstring + slinebreak + 'Cidade:   ' +
                dsDadosCliente.FieldByName('cidade_desc').Asstring + slinebreak
                + 'Telefone: ' + dsDadosCliente.FieldByName('telefone1')
                .Asstring + slinebreak + 'CPF:      ' +
                dsDadosCliente.FieldByName('cpf').Asstring + slinebreak +
                '</linha_simples>' + slinebreak;
            end;
          end;
        end;

        // relatório 2 é o mesmo relatorio, porem a quantidade vem antes da descrição,
        // apenas o fechamento do balcão trouch faz essa chamada (v2.6)
        if variacao_relatorio = 1 then
          str_aux := 'Descrição do item          Valor  Qtde.    Total'
        else
          str_aux := 'Qtde.  Descrição do item          Valor    Total';

        str_impressao := str_impressao + str_aux + slinebreak +
          '</linha_simples>' + slinebreak;

        // Monta os itens
        dsVendaItem.first;
        while not dsVendaItem.Eof do
        begin
          if variacao_relatorio = 1 then
            str_aux := QuebraLinhaItemCupom
              (dsVendaItem.FieldByName('descricao_item').Asstring, 23, '',
              AcertaTexto(format('%.2f', [dsVendaItem.FieldByName('vlrvenda')
              .AsFloat]), 'D', 9) + AcertaTexto(format('%.3f',
              [dsVendaItem.FieldByName('qtdevenda').AsFloat]), 'D', 7) +
              AcertaTexto(format('%.2f', [dsVendaItem.FieldByName('valor_total')
              .AsFloat]), 'D', 9))
          else
            str_aux := QuebraLinhaItemCupom
              (dsVendaItem.FieldByName('descricao_item').Asstring, 23,
              AcertaTexto(format('%.3f', [dsVendaItem.FieldByName('qtdevenda')
              .AsFloat]), 'E', 7),
              AcertaTexto(format('%.2f', [dsVendaItem.FieldByName('vlrvenda')
              .AsFloat]), 'D', 9) + AcertaTexto(format('%.2f',
              [dsVendaItem.FieldByName('valor_total').AsFloat]), 'D', 9));

          str_impressao := str_impressao + str_aux + slinebreak;

          // adiciona os opcionais
          while not dsVendaItemOpcional.Eof do
          begin
            str_impressao := str_impressao + '<n>' + QuebraLinhaItemCupom
              (dsVendaItemOpcional.FieldByName('descricao').Asstring, 44,
              '    ', '') + '</n>' + slinebreak;
            dsVendaItemOpcional.Next;
          end;

          dsVendaItem.Next;
        end;

        // adiciona os itens fracionados
        if dsVendaItemFracionadoRep.RecordCount > 0 then
        begin
          str_impressao := str_impressao + '</linha_simples>' + slinebreak;
          ultimo_fracionado := 0;
          dsVendaItemFracionadoRep.first;
          while not dsVendaItemFracionadoRep.Eof do
          begin
            if ultimo_fracionado <> dsVendaItemFracionadoRep.FieldByName
              ('item_fracionado').AsInteger then
            begin
              str_impressao := str_impressao +
                '</ce><n>---------------- Item Fracionado ---------------</n></ae>'
                + slinebreak;
            end;
            ultimo_fracionado := dsVendaItemFracionadoRep.FieldByName
              ('item_fracionado').AsInteger;

            if variacao_relatorio = 1 then
              str_aux := QuebraLinhaItemCupom
                (dsVendaItemFracionadoRep.FieldByName('descricao_item')
                .Asstring, 23, '',
                AcertaTexto(format('%.2f',
                [dsVendaItemFracionadoRep.FieldByName('vlrvenda').AsFloat]),
                'D', 9) + AcertaTexto(dsVendaItemFracionadoRep.FieldByName
                ('qtd_fracao').Asstring, 'D', 7) + AcertaTexto(format('%.2f',
                [dsVendaItemFracionadoRep.FieldByName('valor_total').AsFloat]
                ), 'D', 9))
            else
              str_aux := QuebraLinhaItemCupom
                (dsVendaItemFracionadoRep.FieldByName('descricao_item')
                .Asstring, 23,
                AcertaTexto(dsVendaItemFracionadoRep.FieldByName('qtd_fracao')
                .Asstring, 'E', 7),
                AcertaTexto(format('%.2f',
                [dsVendaItemFracionadoRep.FieldByName('vlrvenda').AsFloat]),
                'D', 9) + AcertaTexto(format('%.2f',
                [dsVendaItemFracionadoRep.FieldByName('valor_total').AsFloat]
                ), 'D', 9));

            str_impressao := str_impressao + str_aux + slinebreak;

            // adiciona os opcionais
            dsVendaItemFracionadoOpcional.first;
            while not dsVendaItemFracionadoOpcional.Eof do
            begin
              str_impressao := str_impressao + '<n>' +
                QuebraLinhaItemCupom(dsVendaItemFracionadoOpcional.FieldByName
                ('descricao').Asstring, 44, '    ', '') + '</n>' + slinebreak;
              dsVendaItemFracionadoOpcional.Next;
            end;

            // verifica se o proximo item faz parte da composição de fracionados e adiciona uma linha para fechar
            if dsVendaItemFracionadoRep.RecNo < dsVendaItemFracionadoRep.RecordCount
            then
            begin
              dsVendaItemFracionadoRep.Next;
              if ultimo_fracionado <> dsVendaItemFracionadoRep.FieldByName
                ('item_fracionado').AsInteger then
                str_impressao := str_impressao + '</linha_simples>' +
                  slinebreak;

              // volta...
              dsVendaItemFracionadoRep.prior;
            end;

            dsVendaItemFracionadoRep.Next;
          end;
        end;

        // prepara as varições de texto nos totais para cada tipo de venda...
        str_aux2 := '';
        str_aux3 := '';
        str_aux4 := '';

        if (tipo_venda = 'M') or (tipo_venda = 'C') then
        begin
          str_aux := 'Taxa de serviço (+)';
          str_aux2 := AcertaTexto(mensagem_couvert, 'E', 38, '.') + ':' +
            AcertaTexto(format('%.2f', [dsVenda.FieldByName('total_couvert')
            .AsFloat]), 'D', 9) + slinebreak;
          str_aux3 := 'Qtde. de pessoas: ' +
            format('%d', [dsVenda.FieldByName('nro_pessoas').AsInteger]) +
            slinebreak;
          str_aux4 := 'Total por pessoa: ' +
            format('R$%.2f', [dsVenda.FieldByName('valor_pessoa').AsFloat]) +
            slinebreak;
        end
        else
        begin
          if tipo_venda = 'D' then
            str_aux := 'Taxa de Entrega (+)'
          else
            str_aux := 'Acréscimos (+)';
        end;

        // monta os totais
        str_impressao := str_impressao + '</linha_simples>' + slinebreak +
          'Sub total.............................:' +
          AcertaTexto(format('%.2f', [dsVenda.FieldByName('total_itens')
          .AsFloat]), 'D', 9) + slinebreak + '    Desconto nos itens: ' +
          format('%.2f', [dsVenda.FieldByName('valor_desconto_itens').AsFloat])
          + slinebreak;

        if not Pre_Fechamento then
          str_impressao := str_impressao +
            'Desconto (-)..........................:' +
            AcertaTexto(format('%.2f', [dsVenda.FieldByName('desconto').AsFloat]
            ), 'D', 9) + slinebreak;

        // Testo aqui para ver se pega o acrescimo da taxa de entrega ou do campo acrescimo - Rafael 14-03-2018

        // Verifico se é Delivery , mesa ou Balcão touch Obs: Balcao touch não tinha essa opção, verifico se é touch  usa_touch
        // Rafael Luiz 06/04/2018   48 Colunas
        if (tipo_venda = 'D') or (tipo_venda = 'M') or (tipo_venda = 'C') or
          (usa_touch) then
          str_impressao := str_impressao + AcertaTexto(str_aux, 'E', 38, '.') +
            ':' + AcertaTexto(format('%.2f',
            [dsVenda.FieldByName('valor_tx').AsFloat]), 'D', 9) + slinebreak
        else if (tipo_venda = 'P') or (tipo_venda = 'B') then
          str_impressao := str_impressao + AcertaTexto(str_aux, 'E', 38, '.') +
            ':' + AcertaTexto(format('%.2f',
            [dsVenda.FieldByName('acrescimo').AsFloat]), 'D', 9) + slinebreak;

        str_impressao := str_impressao + str_aux2 +
          AcertaTexto('_______________', 'D', 48) + slinebreak +
          '<n><e>TOTAL PEDIDO' +
          AcertaTexto(format('R$ %.2f',
          [dsVenda.FieldByName('valor_total_venda').AsFloat]), 'D', 12) +
          '</e></n>' + slinebreak + '</linha_simples>' + slinebreak +
          'Qtde. de itens: ' + dsVenda.FieldByName('nro_itens').Asstring +
          slinebreak + str_aux3 + str_aux4 + '</linha_simples>' + slinebreak;

        if tipo_venda = 'D' then
        begin
          str_aux := 'TROCO SOLICITADO';
          str_aux2 := 'TOTAL EM ';
        end
        else
        begin
          str_aux := 'TROCO';
          str_aux2 := '';
        end;

        // monta os pagamentos
        dsParcelasPagamentos.first;

        while not dsParcelasPagamentos.Eof do
        begin
          str_impressao := str_impressao +
            AcertaTexto(str_aux2 + dsParcelasPagamentos.FieldByName
            ('desc_formapag').Asstring, 'E', 39) +
            AcertaTexto(format('%.2f',
            [dsParcelasPagamentos.FieldByName('valor').AsFloat]), 'D', 9) +
            slinebreak;
          dsParcelasPagamentos.Next;
        end;

        if not Pre_Fechamento then
          str_impressao := str_impressao + '<n><e>' + AcertaTexto(str_aux, 'E',
            16) + AcertaTexto(format('%.2f',
            [dsVenda.FieldByName('valor_troco').AsFloat]), 'D', 8) + '</e></n>'
            + slinebreak;

        if not Pre_Fechamento then
        begin
          // monta o relatorio de fiado..
          if dsCreceberFiado.RecordCount > 0 then
          begin
            str_impressao := str_impressao + '</linha_simples>' + slinebreak +
              'Documento         Vencimento               Valor' + slinebreak;

            while not dsCreceberFiado.Eof do
            begin
              str_impressao := str_impressao +
                AcertaTexto(dsCreceberFiado.FieldByName('documento').Asstring,
                'E', 18, '.') + formatdatetime('dd/mm/yyyy',
                dsCreceberFiado.FieldByName('data_vencimento').AsDateTime) +
                AcertaTexto(format('%.2f', [dsCreceberFiado.FieldByName('valor')
                .AsFloat]), 'D', 20, '.') + slinebreak;
              dsCreceberFiado.Next;
            end;

            str_impressao := str_impressao + '</linha_simples>' + slinebreak +
              slinebreak + slinebreak + '</ce>' + ReplicarCaracter('_', 40) +
              slinebreak + 'Assinatura do Cliente' + slinebreak + '</zera>';
          end;
        end;

        // mensagem final...
        if trim(mensagem_final) <> '' then
          str_impressao := str_impressao + '</linha_simples>' + slinebreak +
            '</ce><n>' + mensagem_final + '</n>' + slinebreak;

        if not Pre_Fechamento then
        begin
          // Entregador...
          if trim(entregador_delivery) <> '' then
            str_impressao := str_impressao + '</linha_simples>' + slinebreak +
              'Entregador: ' + entregador_delivery + slinebreak;
        end;

        // monta o rodapé dev sistema
        if not suprimir_cabecalho_rodape_cupom then
          str_aux := '</ce>' + RecProj.sInfoDevSistema2 + slinebreak + 'Versão '
            + GetFileVersion(ParamStr(0)) + slinebreak + '</linha_simples>' +
            slinebreak
        else
          str_aux := '';

        str_impressao := str_impressao + '</linha_simples>' + slinebreak
          + str_aux;

        // rodape comanda
        if trim(mensagem_comanda) <> '' then
          str_impressao := str_impressao + slinebreak + '<ce><e><n>' +
            mensagem_comanda + slinebreak;

        str_impressao := str_impressao + slinebreak + '</corte_total>';
      end;

    // Impressão na impressora de 42 colunas    Rafael 06/06/2018    V 2.41
    42:
      begin
        str_impressao := '</zera>' + slinebreak +
          '</ce><n>*** CUPOM PARA SIMPLES CONFERENCIA ***' + slinebreak +
          '</ce>*** NAO É DOCUMENTO FISCAL *** </n>' + slinebreak;

        if not suprimir_cabecalho_rodape_cupom then
        begin
          str_impressao := str_impressao + '</ae>' +
            AcertaTexto(qrEmpresa.FieldByName('emp_003').Asstring, 'E', 42) +
            AcertaTexto(qrEmpresa.FieldByName('cep_004').Asstring, 'E', 34) +
            AcertaTexto(qrEmpresa.FieldByName('emp_007').Asstring, 'E', 8) +
            slinebreak + AcertaTexto(qrEmpresa.FieldByName('cep_003').Asstring,
            'E', 40) + slinebreak + 'FONE: ' +
            AcertaTexto(qrEmpresa.FieldByName('emp_013').Asstring, 'E', 40) +
            slinebreak + '</linha_simples>' + slinebreak;
        end;

        // cabeçalho especifico para mesa e comanda
        if (tipo_venda = 'M') or (tipo_venda = 'C') then
        begin
          str_impressao := str_impressao + '<n>' + dsVenda.FieldByName
            ('descricao_mesa').Asstring + '</n>' + slinebreak + 'Abertura: ' +
            formatdatetime('dd/mm/yyyy hh:nn',
            dsVenda.FieldByName('data_abertura').AsDateTime) + slinebreak +
            'Fechamento: ' + formatdatetime('dd/mm/yyyy hh:nn',
            dsVenda.FieldByName('data_atual').AsDateTime) + slinebreak;
        end
        // DELIVERY...
        else if tipo_venda = 'D' then
        begin
          if not suprimir_cabecalho_rodape_cupom then
            str_impressao := str_impressao + 'Venda: ' +
              dsVenda.FieldByName('nro_venda').Asstring + slinebreak + 'Data: '
              + formatdatetime('dd/mm/yyyy hh:nn',
              dsVenda.FieldByName('data_abertura').AsDateTime) + slinebreak +
              'Cupom: ' + dsVenda.FieldByName('numero_cupom').Asstring +
              slinebreak;
        end
        else if tipo_venda = 'P' then // PDV
        begin
          str_impressao := str_impressao + 'Venda:' +
            dsVenda.FieldByName('nro_venda').Asstring + slinebreak + 'Cupom: ' +
            dsVenda.FieldByName('numero_cupom').Asstring + slinebreak + 'Data: '
            + formatdatetime('dd/mm/yyyy hh:nn',
            dsVenda.FieldByName('data_abertura').AsDateTime) + slinebreak +
          // Numero da venda do PDV
            'Operador: ' + RecProj.sUsuario + slinebreak + 'Vendedor: ' +
            dsVenda.FieldByName('nome_vendedor').Asstring + slinebreak +
            '</linha_simples>' + slinebreak;
        end
        else
        begin
          str_impressao := str_impressao + 'Cupom: ' +
            dsVenda.FieldByName('numero_cupom').Asstring + slinebreak +
            'Operador: ' + RecProj.sUsuario + slinebreak + '</linha_simples>' +
            slinebreak;
        end;

        // dados do cliente
        if dsDadosCliente <> nil then
        begin
          if dsDadosCliente.RecordCount > 0 then
          begin
            if tipo_venda = 'D' then
            begin
              if dsVenda.FieldByName('b_taxa_entrega').AsBoolean then
                str_aux := ''
              else
                str_aux := 'RETIRADA NO BALCÃO' + slinebreak;

              if not suprimir_cabecalho_rodape_cupom then
              begin
                str_impressao :=
                  '</ce><n>*** CUPOM PARA SIMPLES CONFERENCIA ***' + slinebreak
                  + '</ce>*** NAO É DOCUMENTO FISCAL *** </n>' + slinebreak +
                  '</ae>' + AcertaTexto(qrEmpresa.FieldByName('emp_003')
                  .Asstring, 'E', 42) + slinebreak +
                  AcertaTexto(qrEmpresa.FieldByName('cep_004').Asstring, 'E',
                  34) + AcertaTexto(qrEmpresa.FieldByName('emp_007').Asstring,
                  'E', 8) + slinebreak +
                  AcertaTexto(qrEmpresa.FieldByName('cep_003').Asstring, 'E',
                  42) + slinebreak +
                  AcertaTexto('FONE:' + qrEmpresa.FieldByName('emp_013')
                  .Asstring, 'E', 19) +
                  AcertaTexto('CELULAR: ' + qrEmpresa.FieldByName('celular')
                  .Asstring, 'E', 23) + slinebreak + '</linha_simples>' +
                  slinebreak;

              end
              else
              begin

                str_impressao :=
                  '</ce><n>*** CUPOM PARA SIMPLES CONFERENCIA ***' + slinebreak
                  + '</ce>*** NAO É DOCUMENTO FISCAL *** </n>' + slinebreak +
                  '</linha_simples>' + slinebreak;
              end;

              str_impressao := str_impressao + str_aux + '</ae>' +
                '<n>PEDIDO:</n>' + dsVenda.FieldByName('nro_venda').Asstring +
                '<n>    HORÁRIO DO PEDIDO:</n>' + formatdatetime('hh:nn',
                dsVenda.FieldByName('data_abertura').AsDateTime) + slinebreak +
                '</linha_simples>' + slinebreak + '<n>CLIENTE: </n>' +
                dsVenda.FieldByName('nome_cliente').Asstring + slinebreak +
                '<n>END.: </n>' + dsVenda.FieldByName('endereco').Asstring +
                slinebreak + '<n>NRO.: </n>' +
                AcertaTexto(dsDadosCliente.FieldByName('endereco_numero')
                .Asstring, 'E', 10) + '<n>COMPL.: </n>' +
                AcertaTexto(dsDadosCliente.FieldByName('endereco_complemento')
                .Asstring, 'E', 10) + slinebreak + '<n>BAIRRO: </n>' +
                AcertaTexto(dsDadosCliente.FieldByName('bairro').Asstring, 'E',
                38) + slinebreak + '<n>CIDADE: </n>' +
                AcertaTexto(dsDadosCliente.FieldByName('cidade_desc').Asstring,
                'E', 38) + slinebreak + '<n>PONTO DE REFERÊNCIA: </n>' +
                dsDadosCliente.FieldByName('endereco_referencia').Asstring +
                slinebreak + '<n>TELEFONES.: </n>' + slinebreak +
                AcertaTexto(dsDadosCliente.FieldByName('telefone1').Asstring,
                'E', 14) + ' | ' +
                AcertaTexto(dsDadosCliente.FieldByName('telefone2').Asstring,
                'E', 14) + ' | ' + dsDadosCliente.FieldByName('celular1')
                .Asstring + slinebreak + '<n>OBS.: ' + str_aux +
                dsVenda.FieldByName('observacoes').Asstring + slinebreak +
                '</linha_simples>' + slinebreak;
            end
            else
            begin
              str_impressao := str_impressao + 'Cliente:  ' +
                dsDadosCliente.FieldByName('nome').Asstring + slinebreak +
                'Endereço: ' + dsDadosCliente.FieldByName('endereco').Asstring +
                slinebreak + 'Bairro:   ' + dsDadosCliente.FieldByName('bairro')
                .Asstring + slinebreak + 'Cidade:   ' +
                dsDadosCliente.FieldByName('cidade_desc').Asstring + slinebreak
                + 'Telefone: ' + dsDadosCliente.FieldByName('telefone1')
                .Asstring + slinebreak + 'CPF:      ' +
                dsDadosCliente.FieldByName('cpf').Asstring + slinebreak +
                '</linha_simples>' + slinebreak;
            end;
          end;
        end;

        // relatório 2 é o mesmo relatorio, porem a quantidade vem antes da descrição,
        // apenas o fechamento do balcão trouch faz essa chamada (v2.6)
        if variacao_relatorio = 1 then
          str_aux := 'Descrição do item   Valor   Qtde.  Total'
        else
          str_aux := 'Qtde.  Descrição do item   Valor   Total';

        str_impressao := str_impressao + str_aux + slinebreak +
          '</linha_simples>' + slinebreak;

        // Monta os itens
        dsVendaItem.first;
        while not dsVendaItem.Eof do
        begin
          if variacao_relatorio = 1 then
            str_aux := QuebraLinhaItemCupom
              (dsVendaItem.FieldByName('descricao_item').Asstring, 17, '',
              // ALTERADO DE 23 PARA 19
              AcertaTexto(format('%.2f', [dsVendaItem.FieldByName('vlrvenda')
              .AsFloat]), 'D', 9) + AcertaTexto(format('%.3f',
              [dsVendaItem.FieldByName('qtdevenda').AsFloat]), 'D', 7) +
              AcertaTexto(format('%.2f', [dsVendaItem.FieldByName('valor_total')
              .AsFloat]), 'D', 9))
          else
            str_aux := QuebraLinhaItemCupom
              (dsVendaItem.FieldByName('descricao_item').Asstring, 17,
              // ALTERADO DE 23 PARA 19
              AcertaTexto(format('%.3f', [dsVendaItem.FieldByName('qtdevenda')
              .AsFloat]), 'E', 7),
              AcertaTexto(format('%.2f', [dsVendaItem.FieldByName('vlrvenda')
              .AsFloat]), 'D', 9) + AcertaTexto(format('%.2f',
              [dsVendaItem.FieldByName('valor_total').AsFloat]), 'D', 9));

          str_impressao := str_impressao + str_aux + slinebreak;

          // adiciona os opcionais
          while not dsVendaItemOpcional.Eof do
          begin
            str_impressao := str_impressao + '<n>' + QuebraLinhaItemCupom
              (dsVendaItemOpcional.FieldByName('descricao').Asstring, 40,
              '    ', '') + '</n>' + slinebreak;
            dsVendaItemOpcional.Next;
          end;

          dsVendaItem.Next;
        end;

        // adiciona os itens fracionados
        if dsVendaItemFracionadoRep.RecordCount > 0 then
        begin
          str_impressao := str_impressao + '</linha_simples>' + slinebreak;
          ultimo_fracionado := 0;
          dsVendaItemFracionadoRep.first;
          while not dsVendaItemFracionadoRep.Eof do
          begin
            if ultimo_fracionado <> dsVendaItemFracionadoRep.FieldByName
              ('item_fracionado').AsInteger then
            begin
              str_impressao := str_impressao +
                '</ce><n>------------- Item Fracionado ------------</n></ae>' +
                slinebreak;
            end;
            ultimo_fracionado := dsVendaItemFracionadoRep.FieldByName
              ('item_fracionado').AsInteger;

            if variacao_relatorio = 1 then
              str_aux := QuebraLinhaItemCupom
                (dsVendaItemFracionadoRep.FieldByName('descricao_item')
                .Asstring, 17, '', // ALTERADO DE 23 PARA 17
                AcertaTexto(format('%.2f',
                [dsVendaItemFracionadoRep.FieldByName('vlrvenda').AsFloat]
                ), 'D', 9) +
                // AcertaTexto(format('%.3f',[dsVendaItemFracionadoRep.FieldByName('qtdevenda').asfloat]), 'D', 7)+
                AcertaTexto(dsVendaItemFracionadoRep.FieldByName('qtd_fracao')
                .Asstring, 'D', 7) + AcertaTexto(format('%.2f',
                [dsVendaItemFracionadoRep.FieldByName('valor_total').AsFloat]
                ), 'D', 9))
            else
              str_aux := QuebraLinhaItemCupom
                (dsVendaItemFracionadoRep.FieldByName('descricao_item')
                .Asstring, 17, // ALTERADO DE 23 PARA 17
                // AcertaTexto(format('%.3f',[dsVendaItemFracionadoRep.FieldByName('qtdevenda').asfloat]), 'D', 7),
                AcertaTexto(dsVendaItemFracionadoRep.FieldByName('qtd_fracao')
                .Asstring, 'E', 7),
                AcertaTexto(format('%.2f',
                [dsVendaItemFracionadoRep.FieldByName('vlrvenda').AsFloat]),
                'D', 9) + AcertaTexto(format('%.2f',
                [dsVendaItemFracionadoRep.FieldByName('valor_total').AsFloat]
                ), 'D', 9));

            str_impressao := str_impressao + str_aux + slinebreak;

            // adiciona os opcionais
            dsVendaItemFracionadoOpcional.first;
            while not dsVendaItemFracionadoOpcional.Eof do
            begin
              str_impressao := str_impressao + '<n>' +
                QuebraLinhaItemCupom(dsVendaItemFracionadoOpcional.FieldByName
                ('descricao').Asstring, 44, '    ', '') + '</n>' + slinebreak;
              dsVendaItemFracionadoOpcional.Next;
            end;

            // verifica se o proximo item faz parte da composição de fracionados e adiciona uma linha para fechar
            if dsVendaItemFracionadoRep.RecNo < dsVendaItemFracionadoRep.RecordCount
            then
            begin
              dsVendaItemFracionadoRep.Next;
              if ultimo_fracionado <> dsVendaItemFracionadoRep.FieldByName
                ('item_fracionado').AsInteger then
                str_impressao := str_impressao + '</linha_simples>' +
                  slinebreak;

              // volta...
              dsVendaItemFracionadoRep.prior;
            end;

            dsVendaItemFracionadoRep.Next;
          end;
        end;

        // prepara as varições de texto nos totais para cada tipo de venda...
        str_aux2 := '';
        str_aux3 := '';
        str_aux4 := '';

        if (tipo_venda = 'M') or (tipo_venda = 'C') then
        begin
          str_aux := 'Taxa de serviço (+)';
          str_aux2 := AcertaTexto(mensagem_couvert, 'E', 32, '.') + ':' +
            AcertaTexto(format('%.2f', [dsVenda.FieldByName('total_couvert')
            .AsFloat]), 'D', 9) + slinebreak;
          str_aux3 := 'Qtde. de pessoas: ' +
            format('%d', [dsVenda.FieldByName('nro_pessoas').AsInteger]) +
            slinebreak;
          str_aux4 := 'Total por pessoa: ' +
            format('R$%.2f', [dsVenda.FieldByName('valor_pessoa').AsFloat]) +
            slinebreak;
        end
        else
        begin
          if tipo_venda = 'D' then
            str_aux := 'Taxa de Entrega (+)'
          else
            str_aux := 'Acréscimos (+)';
        end;

        // monta os totais
        str_impressao := str_impressao + '</linha_simples>' + slinebreak +
          'Sub total.....................:' +
          AcertaTexto(format('%.2f', [dsVenda.FieldByName('total_itens')
          .AsFloat]), 'D', 9) + slinebreak + '    Desconto nos itens: ' +
          format('%.2f', [dsVenda.FieldByName('valor_desconto_itens').AsFloat])
          + slinebreak;

        if not Pre_Fechamento then
          str_impressao := str_impressao + 'Desconto (-)...................:' +
            AcertaTexto(format('%.2f', [dsVenda.FieldByName('desconto').AsFloat]
            ), 'D', 9) + slinebreak;

        // Testo aqui para ver se pega o acrescimo da taxa de entrega ou do campo acrescimo - Bruno 14-03-2018
        if (tipo_venda = 'D') or (tipo_venda = 'M') or (tipo_venda = 'C') or
          (usa_touch) then
          str_impressao := str_impressao + AcertaTexto(str_aux, 'E', 32, '.') +
            ':' + AcertaTexto(format('%.2f',
            [dsVenda.FieldByName('valor_tx').AsFloat]), 'D', 9) + slinebreak
        else if (tipo_venda = 'P') or (tipo_venda = 'B') then
          str_impressao := str_impressao + AcertaTexto(str_aux, 'E', 32, '.') +
            ':' + AcertaTexto(format('%.2f',
            [dsVenda.FieldByName('acrescimo').AsFloat]), 'D', 9) + slinebreak;

        str_impressao := str_impressao + str_aux2 + AcertaTexto('_______', 'D',
          32) + slinebreak + // ERA 40 COLOCAMOS PARA 32
          '<n>TOTAL PEDIDO' + AcertaTexto
          (format('R$ %.2f', [dsVenda.FieldByName('valor_total_venda').AsFloat]
          ), 'D', 12) + '</n>' + slinebreak + '</linha_simples>' + slinebreak +
          'Qtde. de itens: ' + dsVenda.FieldByName('nro_itens').Asstring +
          slinebreak + str_aux3 + str_aux4 + '</linha_simples>' + slinebreak;

        if tipo_venda = 'D' then
        begin
          str_aux := 'TROCO SOLICITADO';
          str_aux2 := 'TOTAL EM ';
        end
        else
        begin
          str_aux := 'TROCO';
          str_aux2 := '';
        end;

        // monta os pagamentos
        dsParcelasPagamentos.first;
        while not dsParcelasPagamentos.Eof do
        begin
          str_impressao := str_impressao +
            AcertaTexto(str_aux2 + dsParcelasPagamentos.FieldByName
            ('desc_formapag').Asstring, 'E', 31) + // ANALISAR
            AcertaTexto(format('%.2f',
            [dsParcelasPagamentos.FieldByName('valor').AsFloat]), 'D', 9) +
            slinebreak;
          dsParcelasPagamentos.Next;
        end;

        if not Pre_Fechamento then
          str_impressao := str_impressao + '<n><e>' + AcertaTexto(str_aux, 'E',
            12) + AcertaTexto(format('%.2f',
            [dsVenda.FieldByName('valor_troco').AsFloat]), 'D', 8) + '</e></n>'
            + slinebreak;

        if not Pre_Fechamento then
        begin
          // monta o relatorio de fiado..
          if dsCreceberFiado.RecordCount > 0 then
          begin
            str_impressao := str_impressao + '</linha_simples>' + slinebreak +
              'Documento         Vencimento         Valor' + slinebreak;
            while not dsCreceberFiado.Eof do
            begin
              str_impressao := str_impressao +
                AcertaTexto(dsCreceberFiado.FieldByName('documento').Asstring,
                'E', 18, '.') + formatdatetime('dd/mm/yyyy',
                dsCreceberFiado.FieldByName('data_vencimento').AsDateTime) +
                AcertaTexto(format('%.2f', [dsCreceberFiado.FieldByName('valor')
                .AsFloat]), 'D', 14, '.') + slinebreak;
              dsCreceberFiado.Next;
            end;

            str_impressao := str_impressao + '</linha_simples>' + slinebreak +
              slinebreak + slinebreak + '</ce>' + ReplicarCaracter('_', 40) +
              slinebreak + 'Assinatura do Cliente' + slinebreak + '</zera>';
          end;
        end;

        // mensagem final...
        if trim(mensagem_final) <> '' then
          str_impressao := str_impressao + '</linha_simples>' + slinebreak +
            '</ce><n>' + mensagem_final + '</n>' + slinebreak;

        if not Pre_Fechamento then
        begin
          // Entregador...
          if trim(entregador_delivery) <> '' then
            str_impressao := str_impressao + '</linha_simples>' + slinebreak +
              'Entregador: ' + entregador_delivery + slinebreak;
        end;

        // monta o rodapé dev sistema
        if not suprimir_cabecalho_rodape_cupom then
          str_aux := '</ce>' + RecProj.sInfoDevSistema2 + slinebreak + 'Versão '
            + GetFileVersion(ParamStr(0)) + slinebreak + '</linha_simples>' +
            slinebreak
        else
          str_aux := '';

        str_impressao := str_impressao + '</linha_simples>' + slinebreak
          + str_aux;

        // rodape comanda
        if trim(mensagem_comanda) <> '' then
          str_impressao := str_impressao + slinebreak + '<ce><e><n>' +
            mensagem_comanda + slinebreak;

        str_impressao := str_impressao + slinebreak + '</corte_total>';
      end;
  end;
  // -----------------------------------------------------------------------------------------
  if pre_visualizar_relatorio then
  begin
    frmVisualizaRelatorioTexto := TfrmVisualizaRelatorioTexto.Create(self,
      impressora, str_impressao);
    frmVisualizaRelatorioTexto.ShowModal;
    FreeAndNil(frmVisualizaRelatorioTexto);
  end
  else
  begin
    if ConfiguraImpressoraPOS(impressora) then
    begin
      for I := 1 to numero_vias do
        ACBrPosPrinter1.Imprimir(str_impressao);
    end;
  end;
end;

procedure TfrmMenu.AbrirGaveta(abortar_a_erro: boolean = False);
var
  erro: string;
begin
  if ACBrPosPrinter1.Ativo then
    ACBrPosPrinter1.Desativar;
  ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo
    (lerintegerconfig('CBMODELOIMPGAVETA', cdsCFG.filename));
  ACBrPosPrinter1.Porta := LerStringConfig('CBPORTAIMPGAVETA', cdsCFG.filename);
  try
    ACBrPosPrinter1.Ativar;
    ACBrPosPrinter1.AbrirGaveta;
    ACBrPosPrinter1.Desativar;
  Except
    on E: Exception do
    begin
      erro := E.Message;
      application.MessageBox
        (pchar('Erro ao abrir a gaveta, verifique as configurações! Detalhes do erro:'
        + #13#10 + erro), 'Atenção', MB_ICONWARNING);
      ACBrPosPrinter1.Desativar;
      if abortar_a_erro then
        abort;
    end;
  end;
end;

Procedure TfrmMenu.VerificaPermissaoAcesso(flag: boolean);
begin
  if not flag then
  begin
    application.MessageBox(pchar(format('Acesso negado para o usuário %s!',
      [RecProj.sUsuario])), 'Atenção', MB_ICONWARNING);
    abort;
  end;
end;

Procedure TfrmMenu.VerificaCaixaAberto;
begin
  if RecProj.iIDCaixa = 0 then
  begin
    application.MessageBox(pchar('Não existe caixa aberto para o usuário ' +
      RecProj.sUsuario + '!'), 'Atenção', MB_ICONINFORMATION);
    abort;
  end;
end;

function TfrmMenu.ConfirmacaoSenha(campo_permissao: string;
  out id_usuario: integer): boolean;
// Retorna o usuario informado no login se tiver a permissão desejada
begin
  frmConfirmacaoSenha := TfrmConfirmacaoSenha.Create(nil, campo_permissao);
  frmConfirmacaoSenha.ShowModal;
  id_usuario := frmConfirmacaoSenha.id_usuario_retorno;
  result := frmConfirmacaoSenha.Tag = 1;
  FreeAndNil(frmConfirmacaoSenha);
end;

function TfrmMenu.ConfirmacaoSenhaSimples: boolean;
// Apenas verifica se o usuario é o mesmo logado
begin
  frmConfirmacaoSenha := TfrmConfirmacaoSenha.Create(nil, 'true');
  frmConfirmacaoSenha.ShowModal;
  result := frmConfirmacaoSenha.Tag = 1;
  FreeAndNil(frmConfirmacaoSenha);
end;

function Retorna_Situacao(Index: integer): String;
var
  qrAux: TUniQuery;
begin
  qrAux := TUniQuery.Create(Nil);
  with qrAux, SQL do
  begin
    Connection := frmMenu.conexao;
    add(' SELECT FN_SITUACOES(:IDX) ');
    ParamByName('IDX').AsInteger := Index;
    Open;
    result := Fields[0].Asstring;
  end;
  FreeAndNil(qrAux);
end;

function Chama_Justificativa(Nome_Janela, Titulo, Corpo_Titulo: String): String;
begin
  result := '';
  frmMemo := TfrmMemo.Criar_Justificativa(Nome_Janela, Titulo, Corpo_Titulo);
  frmMemo.ShowModal;
  if frmMemo.ModalResult = mrOk then
    result := frmMemo.Memo1.Lines.Text;
  FreeAndNil(frmMemo);
end;

procedure Chama_Historico(Nome_Janela, Titulo, Corpo_Titulo, Historico: String);
begin
  frmMemo := TfrmMemo.Criar_Historico(Nome_Janela, Titulo, Corpo_Titulo,
    Historico);
  frmMemo.ShowModal;
  FreeAndNil(frmMemo);
end;

procedure TfrmMenu.AbreXMLCFG;
begin
  if cdsCFG.Active then
    cdsCFG.Close;
  if Not DirectoryExists(ExtractFilePath(application.ExeName) + 'CONF') then
    ForceDirectories(ExtractFilePath(application.ExeName) + 'CONF');
  cdsCFG.filename := ExtractFilePath(application.ExeName) +
    'CONF\CONFIGURACAO.XML';
  if not FileExists(cdsCFG.filename) then
  begin
    cdsCFG.CreateDataSet;
    cdsCFG.Append;
    cdsCFG.FieldByName('NOME').Asstring := 'VERSAO';
    cdsCFG.FieldByName('TEXTO').Asstring := GetFileVersion(ParamStr(0));
    cdsCFG.post;
    cdsCFG.Close;
  end;
end;

procedure TfrmMenu.act_FormaPgtoExecute(Sender: TObject);
begin
  Chama_Form(TfrmConsFormaPgto, frmConsFormaPgto, 'frmConsFormaPgto');
end;

procedure TfrmMenu.act_LimpaGradeUsuarioExecute(Sender: TObject);
var
  qrAux: TUniQuery;
begin
  qrAux := TUniQuery.Create(nil);
  with qrAux, SQL do
  begin
    Connection := conexao;
    Close;
    Clear;
    add('DELETE FROM LAYOUT_CONS WHERE EMP_001 = :EMP AND USU_001 = :USU');
    ParamByName('EMP').AsInteger := RecProj.iEmp;
    ParamByName('USU').AsInteger := RecProj.iUsuario;
    ExecSQL;
  end;
  //
  FreeAndNil(qrAux);
end;

procedure TfrmMenu.act_LogoffExecute(Sender: TObject);
begin
  Fechar_Filhos;
  Chama_Login;
end;

procedure TfrmMenu.Chama_Login;
begin
  application.CreateForm(TfrmLogin, frmLogin);
  if frmLogin.ShowModal <> mrOk then
    application.Terminate;
  FreeAndNil(frmLogin);
end;

procedure TfrmMenu.conexaoAfterConnect(Sender: TObject);
var
  qry: TUniQuery;
  msg: string;
begin
  qry := TUniQuery.Create(self);
  qry.Connection := conexao;
  ExecutaConsultaSQL(qry,
    'select versao, data_lancamento from log_versao order by data_lancamento desc limit 1');
  if trim(qry.Fields[0].Asstring) <> trim(GetFileVersion(ParamStr(0))) then
  begin
    msg := format
      ('A versão do sistema é diferente da versão registrada no banco de dados!'
      + #13#10 + 'Versão do sistema: %s' + #13#10 + 'Versão do BD: %s',
      [trim(GetFileVersion(ParamStr(0))), trim(qry.Fields[0].Asstring)]);
    application.MessageBox(pchar(msg), 'Atenção', MB_ICONINFORMATION);
  end;
end;

// Verifica quais módulos o sistema ira carregar   10/04/2018 V2.36.0.0  Rafael
procedure TfrmMenu.verifica_modulo_sistema;
begin
  if LerBooleanConfig('ckPermiteacessomesaecomanda', frmMenu.cdsCFG.filename)
  then
  begin
    btMesa.Visible := ivAlways;
    btComanda.Visible := ivAlways;
    btTouch.Visible := ivAlways
  end
  else
  begin
    btMesa.Visible := ivNever;
    btComanda.Visible := ivNever;
    btTouch.Visible := ivNever;
  end;

  if LerBooleanConfig('ckPermiteacessopdv', frmMenu.cdsCFG.filename) then
  begin
    btPdv.Visible := ivAlways;
  end
  else
  begin
    btPdv.Visible := ivNever;
  end;

  if LerBooleanConfig('ckPermiteacessodelivery', frmMenu.cdsCFG.filename) then
  begin
    btDelivery.Visible := ivAlways;
  end
  else
  begin
    btDelivery.Visible := ivNever;
  end;

  if LerBooleanConfig('ckPermiteacessofechamentodecontas',
    frmMenu.cdsCFG.filename) then
  begin
    btFecharconta.Visible := ivAlways;
  end
  else
  begin
    btFecharconta.Visible := ivNever;
  end;

  if LerBooleanConfig('ckPermiteacessomonitorpreparo', frmMenu.cdsCFG.filename)
  then
  begin
    btMonitorPreparo.Visible := ivAlways;
    btMonitorEntrega.Visible := ivAlways;
  end
  else
  begin
    btMonitorPreparo.Visible := ivNever;
    btMonitorEntrega.Visible := ivNever;
  end;

  if LerBooleanConfig('ckPermiteacessobalcao', frmMenu.cdsCFG.filename) then
  begin
    btBalcao.Visible := ivAlways;
  end
  else
  begin
    btBalcao.Visible := ivNever;
  end;

  if LerBooleanConfig('CheckBox1', frmMenu.cdsCFG.filename) then
  begin
    dxBarLargeButton46.Visible := ivAlways;
  end
  else
  begin
    dxBarLargeButton46.Visible := ivNever;
  end;

  if LerBooleanConfig('CheckBox2', frmMenu.cdsCFG.filename) then
  begin
    btCadMesas.Visible := ivAlways;
    dxBarLargeButton44.Visible := ivAlways;
    dxBarLargeButton29.Visible := ivAlways;
  end
  else
  begin
    btCadMesas.Visible := ivNever;
    dxBarLargeButton44.Visible := ivNever;
    dxBarLargeButton29.Visible := ivNever;
  end;

end;

procedure TfrmMenu.dxBarLargeButton10Click(Sender: TObject);
begin
  AbreFormRelatoriosEstoque(6);
end;

procedure TfrmMenu.dxBarLargeButton12Click(Sender: TObject);
begin
  frmConsProduto := TfrmConsProduto.Create(self);
  frmConsProduto.tela := 0;
  frmConsProduto.ShowModal;
  FreeAndNil(frmConsProduto);
end;

procedure TfrmMenu.dxBarLargeButton13Click(Sender: TObject);
begin

  frmConsCliente := tfrmConsCliente.Create(self,
    'select cli_001, emp_001, Cli_002, ' +
    ' CLI_012, CLI_013, codigo_fidelidade, cidade_desc, ' +
    ' cast(fn_situacoes(SIT_001) as varchar(100)) as situacao from clientes',
    // Select
    CriaIntegerArray([0, 2, 3, 4, 5, 6, 7]), // Campos visiveis
    CriaIntegerArray([0, 2, 3, 4, 5, 6]), // Campos diponiveis para filtro
    CriaStringArray(['Código', 'Nome', 'Telefone 1', 'Telefone 2',
    'Cód. Fidelidade', 'Cidade', 'Status']), // Caption dos campos
    1, ' emp_001=' + IntToStr(RecProj.iEmp));
  frmConsCliente.ShowModal;
  FreeAndNil(frmConsCliente);
end;

procedure TfrmMenu.btIngredientesClick(Sender: TObject);
begin
  frmConsComposicao := TfrmConsComposicao.Create(self,
    ' SELECT id_composicao, descricao, valor_custo, estoque_minimo, ' +
    ' cast(fn_situacoes(id_situacao) as varchar(200)) as staus_desc FROM composicao',
    // Select
    CriaIntegerArray([0, 1, 2, 3, 4]), // Campos Visiveis
    CriaIntegerArray([0, 1]), // Campos para filtro
    CriaStringArray(['Código', 'Descrição', 'Valor Custo', 'Estoque Min.',
    'Status']), // Descrição das colunas
    1, // Indice do campo padrão do filtro 1=nome
    ' id_empresa=' + IntToStr(RecProj.iEmp)); // Filtro where
  frmConsComposicao.ShowModal;
  FreeAndNil(frmConsComposicao);
end;

procedure TfrmMenu.dxBarLargeButton15Click(Sender: TObject);
begin

  frmConsFornecedor := TfrmConsFornecedor.Create(self,
    'select id_fornecedor, nome_fantasia, razao_social, ' +
    ' cast(case when tipo_pessoa=''J'' then ''Jurídica'' else ''Física'' end as varchar(10)) as tipo_p, '
    + ' cnpj, cpf, nome_contato1, telefone1, telefone2, celular1, ' +
    ' cast(fn_situacoes(id_situacao) as varchar(100)) as situacao from fornecedor ',
    // Select
    CriaIntegerArray([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]), // Campos visiveis
    CriaIntegerArray([0, 1, 2, 4, 5, 6, 7]), // Campos diponiveis para filtro
    CriaStringArray(['Código', 'Fornecedor', 'Razão Social', 'Tipo', 'CNPJ',
    'CPF', 'Contato', 'Telefone 1', 'Telefone 2', 'Celular', 'Status']),
    // Caption dos campos
    1, ' id_empresa=' + IntToStr(RecProj.iEmp));
  frmConsFornecedor.ShowModal;
  FreeAndNil(frmConsFornecedor);
end;

procedure TfrmMenu.dxBarLargeButton18Click(Sender: TObject);
begin
  frmlancamentocontas := tfrmlancamentocontas.Create(self);
  frmlancamentocontas.ShowModal;
  FreeAndNil(frmlancamentocontas);
end;

procedure TfrmMenu.btCaixaClick(Sender: TObject);
begin
  frmCaixaStatus := TfrmCaixaStatus.Create(self);
  frmCaixaStatus.ShowModal;
  FreeAndNil(frmCaixaStatus);
end;

procedure TfrmMenu.btAberturacaixaClick(Sender: TObject);
begin
  frmCaixaAberturaFechamento := tfrmCaixaAberturaFechamento.Create(self, 'A');
  frmCaixaAberturaFechamento.ShowModal;
  FreeAndNil(frmCaixaAberturaFechamento);
end;

procedure TfrmMenu.btAjudaSiteClick(Sender: TObject);
var
  str_sql: string;
  qrAux2: TUniQuery;
begin

  ShowMessage('Em breve estaremos disponibilizando videos para vocês.');
 { str_sql := ' select identificador from empresas where  emp_001=:emp';
  qrAux2 := TUniQuery.Create(self);
  qrAux2.Connection := frmMenu.conexao;
  qrAux2.SQL.add(str_sql);
  qrAux2.ParamByName('emp').AsInteger := RecProj.iEmp;
  qrAux2.Open;
  if qrAux2.FieldByName('identificador').Asstring = 'S8' then
  begin
    ShellExecute(Handle, 'open', 'www.s8sistemas.com.br/ajuda', nil, nil,
      SW_SHOWMAXIMIZED);

  end
  else
  begin
    ShellExecute(Handle, 'open',
      'www.sistemalechef.com.br/Publicacoes.aspx?tema=1409', nil, nil,
      SW_SHOWMAXIMIZED);
  end;  }
end;

procedure TfrmMenu.btAjudaSuporteClick(Sender: TObject);
var
  str_sql: string;
  qraux2: TUniQuery;
begin
  ShowMessage('Tel: (17)99606-4615');
 { str_sql := ' select identificador from empresas where  emp_001=:emp';
  qrAux2 := TUniQuery.Create(self);
  qrAux2.Connection := frmMenu.conexao;
  qrAux2.SQL.add(str_sql);
  qrAux2.ParamByName('emp').AsInteger := RecProj.iEmp;
  qrAux2.Open;
  if qrAux2.FieldByName('identificador').Asstring = 'S8' then
  begin
    ShellExecute(Handle, 'open', 'www.s8sistemas.com.br/contato', nil, nil,
      SW_SHOWMAXIMIZED);

  end
  else
  begin

    ShellExecute(Handle, 'open', 'www.sistemalechef.com.br/Contato.aspx', nil,
      nil, SW_SHOWMAXIMIZED);
  end;  }

end;

procedure TfrmMenu.btFechamentocaixaClick(Sender: TObject);
begin
  frmCaixaAberturaFechamento := tfrmCaixaAberturaFechamento.Create(self, 'F');
  frmCaixaAberturaFechamento.ShowModal;
  FreeAndNil(frmCaixaAberturaFechamento);
end;

procedure TfrmMenu.dxBarLargeButton20Click(Sender: TObject);
begin
  frmConsUsuarios := TfrmConsUsuarios.Create(self);
  frmConsUsuarios.ShowModal;
  FreeAndNil(frmConsUsuarios);
end;

procedure TfrmMenu.btCadMesasClick(Sender: TObject);
var
  str_sql: string;
begin
  frmDetalhemesa := tfrmdetalhemesa.Create(self);
  frmDetalhemesa.ShowModal;
  FreeAndNil(frmDetalhemesa);
end;

procedure TfrmMenu.dxBarLargeButton23Click(Sender: TObject);
begin
  frmConsUnidade := TfrmConsUnidade.Create(self,
    ' select uni_001,uni_002,uni_003 from unidades ', // select
    CriaIntegerArray([0, 1, 2]), // Campos Visiveis
    CriaIntegerArray([0, 1, 2]), // Campos disponíveis para filtro
    CriaStringArray(['Código', 'Unidade', 'Sigla']), // Descrição das colunas
    1, // Indice do campo padrão do filtro 1=descricao
    ' emp_001=' + IntToStr(RecProj.iEmp)); // Filtro where
  frmConsUnidade.ShowModal;
  FreeAndNil(frmConsUnidade);
end;

procedure TfrmMenu.dxBarLargeButton24Click(Sender: TObject);
begin
  frmConsFormaPgto := TfrmConsFormaPgto.Create(self,
    'select for_001, for_002, cast(fn_situacoes(sit_001)  as varchar(100)) as desc_status from formapgto',
    CriaIntegerArray([0, 1, 2]), CriaIntegerArray([0, 1]),
    CriaStringArray(['Código', 'Descrição', 'Status']), 1,
    ' emp_001=' + IntToStr(RecProj.iEmp));
  frmConsFormaPgto.ShowModal;
  FreeAndNil(frmConsFormaPgto);
end;

procedure TfrmMenu.dxBarLargeButton25Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmMenu.dxBarLargeButton27Click(Sender: TObject);
begin
  frmConsCidade := TfrmConsCidade.Create(self,
    'select c.cid_001, c.cid_002, c.cid_003, e.est_003 from cidades c join estados e on c.est_001=e.est_001',
    CriaIntegerArray([0, 1, 2, 3]), CriaIntegerArray([1, 2]),
    CriaStringArray(['Código', 'Cidade', 'Código IBGE', 'UF']));
  frmConsCidade.ShowModal;
  FreeAndNil(frmConsCidade);
end;

procedure TfrmMenu.dxBarLargeButton28Click(Sender: TObject);
begin
  frmControleNotaFiscalEntrada := TfrmControleNotaFiscalEntrada.Create(self);
  frmControleNotaFiscalEntrada.ShowModal;
  FreeAndNil(frmControleNotaFiscalEntrada);
end;

procedure TfrmMenu.dxBarLargeButton29Click(Sender: TObject);
begin
  frmConsProduto := TfrmConsProduto.Create(self);
  frmConsProduto.tela := 1;
  frmConsProduto.ShowModal;
  FreeAndNil(frmConsProduto);
end;

procedure TfrmMenu.btExportarArquivoBalancaMGV6Click(Sender: TObject);
begin
  ExportaArquivoBalanca('T');
end;

procedure TfrmMenu.btExportarArquivoBalancaSmartClick(Sender: TObject);
begin
  ExportaArquivoBalanca('F');
end;

procedure TfrmMenu.btMesaClick(Sender: TObject);
begin
  frmControleMesa := TfrmControleMesa.Create(self);
  frmControleMesa.ShowModal;
  FreeAndNil(frmControleMesa);
end;

procedure TfrmMenu.btComandaClick(Sender: TObject);
begin
  frmControleMesa := TfrmControleMesa.Create(self, 'C');
  frmControleMesa.ShowModal;
  FreeAndNil(frmControleMesa);
end;

procedure TfrmMenu.btDeliveryClick(Sender: TObject);
begin
  frmControleDelivery := TfrmControleDelivery.Create(self);
  frmControleDelivery.ShowModal;
  FreeAndNil(frmControleDelivery);
end;

procedure TfrmMenu.btBalcaoClick(Sender: TObject);
begin
  if LerBooleanConfig('CKBALCAOMODOTOUCH', frmMenu.cdsCFG.filename) then
  begin
    frmVendaBalcaoTouch := tfrmVendaBalcaoTouch.Create(self);
    frmVendaBalcaoTouch.ShowModal;
    FreeAndNil(frmVendaBalcaoTouch);
  end
  else
  begin
    frmVendaBalcao := tfrmVendaBalcao.Create(self);
    frmVendaBalcao.ShowModal;
    FreeAndNil(frmVendaBalcao);
  end;
end;

procedure TfrmMenu.btEntradaClick(Sender: TObject);
begin
  frmCaixaLancaMovimento := tfrmCaixaLancaMovimento.Create(self, 'E');
  frmCaixaLancaMovimento.ShowModal;
  FreeAndNil(frmCaixaLancaMovimento);
end;

procedure TfrmMenu.btSaidaClick(Sender: TObject);
begin
  frmCaixaLancaMovimento := tfrmCaixaLancaMovimento.Create(self, 'S');
  frmCaixaLancaMovimento.ShowModal;
  FreeAndNil(frmCaixaLancaMovimento);
end;

procedure TfrmMenu.dxBarLargeButton30Click(Sender: TObject);
begin
  ExportaTara;
end;

procedure TfrmMenu.dxBarLargeButton31Click(Sender: TObject);
begin
  frmConsTara := TfrmConsTara.Create(self,
    'select tar_001, emp_001, descricao, peso, sit_001 from tara',
    CriaIntegerArray([0, 2]), // Campos Visiveis
    CriaIntegerArray([0, 2]), // Campos para filtro
    CriaStringArray(['Código', 'Descrição']), // Descrição das colunas
    1, // Indice do campo padrão do filtro 1=nome
    ' emp_001=' + IntToStr(RecProj.iEmp));
  frmConsTara.ShowModal;
  FreeAndNil(frmConsTara);
end;

procedure TfrmMenu.ExportaTara;
var
  dlg_salvar: TSaveDialog;
  qr_consulta: TUniQuery;
  str_sql, conteudo_arq: string;
  arquivo: TextFile;
begin
  // Apenas Balanças Toledo Prix 4 Due, Prix 5, Prix 5 Plus e Prix 6 Touch
  dlg_salvar := TSaveDialog.Create(self);
  dlg_salvar.filter := 'Txt|*.txt';
  dlg_salvar.filename := 'tara.txt';

  if dlg_salvar.Execute then
  begin
    qr_consulta := TUniQuery.Create(self);
    qr_consulta.Connection := frmMenu.conexao;

    str_sql :=
      format(' select * from tara where sit_001=4 and emp_001=%d order by tar_001',
      [RecProj.iEmp]);

    if ExecutaConsultaSQL(qr_consulta, str_sql) then
    begin
      try
        conteudo_arq := GeraArquivoTaraBalancaMGV6(qr_consulta);

        AssignFile(arquivo, dlg_salvar.filename);
        ReWrite(arquivo);
        write(arquivo, conteudo_arq);
        CloseFile(arquivo);
        application.MessageBox(pchar('Arquivo gerado com sucesso!'), 'Atenção',
          MB_ICONINFORMATION);
      except
        on E: Exception do
        begin
          application.MessageBox(pchar('Erro ao gerar o arquivo! Detalhes:' +
            slinebreak + E.Message), 'Atenção', MB_Iconerror);
        end;
      end;
    end
    else
    begin
      application.MessageBox(pchar('Nenhuma tara encontrada para exportação!'),
        'Atenção', MB_ICONINFORMATION);
    end;

    qr_consulta.Free;
  end;
  dlg_salvar.Free;
end;

procedure TfrmMenu.dxBarLargeButton34Click(Sender: TObject);
begin
  AbreFormRelatoriosVendas(19);
end;

procedure TfrmMenu.btPdvClick(Sender: TObject);
begin
  frmpdv := tfrmpdv.Create(self);
  frmpdv.ShowModal;
  FreeAndNil(frmpdv);
end;

procedure TfrmMenu.dxBarLargeButton35Click(Sender: TObject);
begin
  AbreFormRelatoriosVendas(1);
end;

procedure TfrmMenu.dxBarLargeButton36Click(Sender: TObject);
begin
  AbreFormRelatoriosVendas(21);
end;

procedure TfrmMenu.dxBarLargeButton37Click(Sender: TObject);
begin
  AbreFormRelatoriosVendas(0);
end;

procedure TfrmMenu.dxBarLargeButton38Click(Sender: TObject);
begin
  AbreFormRelatoriosVendas(2);
end;

procedure TfrmMenu.dxBarLargeButton3Click(Sender: TObject);
begin
  AbreFormRelatoriosEstoque(0);
end;

procedure TfrmMenu.btHistoricoClick(Sender: TObject);
begin
  frmRelatorioHistoricoVendasCliente :=
    TfrmRelatorioHistoricoVendasCliente.Create(self);
  frmRelatorioHistoricoVendasCliente.ShowModal;
  FreeAndNil(frmRelatorioHistoricoVendasCliente);
end;

procedure TfrmMenu.btTaxaServicoClick(Sender: TObject);
begin
  AbreFormRelatoriosVendas(4);
end;

procedure TfrmMenu.dxBarLargeButton44Click(Sender: TObject);
begin
  frmConsComanda := TfrmConsComanda.Create(self,
    'select com_001, emp_001, com_002, com_003 from comanda', // Select
    CriaIntegerArray([0, 2, 3]), // Campos Visiveis
    CriaIntegerArray([0, 2, 3]), // Campos para filtro
    CriaStringArray(['Código', 'Descrição', 'Número']), // Descrição das colunas
    1, // Indice do campo padrão do filtro
    'sit_001 = 4 and emp_001=' + IntToStr(RecProj.iEmp));
  frmConsComanda.ShowModal;
  FreeAndNil(frmConsComanda);
end;

procedure TfrmMenu.dxBarLargeButton45Click(Sender: TObject);
begin
  frmConfiguracao := TfrmConfiguracao.Create(self);
  frmConfiguracao.ShowModal;
  FreeAndNil(frmConfiguracao);
  qrEmpresa.Refresh;
  carregaCaixaUsuario;
  verifica_modulo_sistema;
end;

procedure TfrmMenu.dxBarLargeButton46Click(Sender: TObject);
begin
  frmBloqueiocomanda :=tfrmBloqueiocomanda.Create(self);
  frmbloqueiocomanda.showmodal;
  FreeAndNil(frmbloqueiocomanda);
end;

procedure TfrmMenu.dxBarLargeButton48Click(Sender: TObject);
begin
  if application.MessageBox('Confirma a execução da rotina de backup?',
    'Atenção', MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    ExecutaBackup(true);
  end;
end;

procedure TfrmMenu.ExecutaBackup(exibe_alertas: boolean = true);
var
  cmd, caminho_pg_dump, caminho_backup, caminho_backup_copia, host, user, pass,
    arquivo_bkp, diretorio_exe, banco, caminho_7za, arquivo_bat, arquivo_zip,
    arquivo_log, caminho_config: string;
  Porta: integer;
  bat: TextFile;
  lStartUpInfo: TStartUpInfo;
  lProcesso: TProcessInformation;
  Data, hora: TDateTime;
begin
  caminho_pg_dump := LerStringConfig('EDCAMINHOPGDUMP', cdsCFG.filename);
  caminho_backup := FormatarCaminhoDir(LerStringConfig('EDREPOSITORIOBKP',
    cdsCFG.filename));
  caminho_backup_copia := LerStringConfig('EDREPOSITORIOBKP2', cdsCFG.filename);
  if trim(caminho_backup_copia) <> '' then
    caminho_backup_copia := FormatarCaminhoDir(caminho_backup_copia);

  diretorio_exe := FormatarCaminhoDir(ExtractFilePath(application.ExeName));
  caminho_7za := diretorio_exe + '7za\7za.exe';
  caminho_config := diretorio_exe + 'CONF\';
  host := conexao.Server;
  Porta := conexao.Port;
  user := conexao.Username;
  banco := conexao.database;
  pass := conexao.Password;
  // verifica se o diretorio de backup, senão, tenta criar
  criarDiretorio(caminho_backup);
  // verifica se encontrou o pg_dump.exe
  if not FileExists(caminho_pg_dump) then
  begin
    if exibe_alertas then
      application.MessageBox
        (pchar(format
        ('Não foi possível acessar o aplicativo pg_dump no caminho:' + #13#10 +
        '%s!', [caminho_pg_dump])), 'Atenção', MB_ICONWARNING);
    exit;
  end;
  Data := Date;
  hora := Now;
  arquivo_bkp := caminho_backup + 'BKP' + formatdatetime('_dd_mm_yyyy_', Data) +
    formatdatetime('hh_nn', hora) + '.backup';
  arquivo_log := caminho_backup + 'Log' + formatdatetime('_dd_mm_yyyy_', Data) +
    formatdatetime('hh_nn', hora) + '.txt';
  arquivo_zip := replaceStr(arquivo_bkp, '.backup', '.zip');
  arquivo_bat := caminho_backup + 'bkp.bat';
  AssignFile(bat, arquivo_bat);
  ReWrite(bat);
  writeln(bat, '@echo off');
  writeln(bat, 'echo Executando backup.. Aguarde...');
  writeln(bat, format('SET PGPASSWORD=%s', [pass]));
  writeln(bat,
    format('"%s" --host %s --port %d --username "%s" --format tar --blobs --verbose --file "%s" "%s" 2>"%s"',
    [caminho_pg_dump, host, Porta, user, arquivo_bkp, banco, arquivo_log]));
  CloseFile(bat);
  // monta o comando
  cmd := format('cmd /c "%s"', [arquivo_bat]);
  lStartUpInfo.cb := 2048;
  lStartUpInfo.lpReserved := NIL;
  lStartUpInfo.lpDesktop := NIL;
  lStartUpInfo.lpTitle := NIL;
  lStartUpInfo.dwFlags := STARTF_USESHOWWINDOW;
  if exibe_alertas then
    lStartUpInfo.wShowWindow := SW_SHOWNORMAL
    // SW_Hide; //para não aparecer na tela!
  else
    lStartUpInfo.wShowWindow := SW_HIDE;

  lStartUpInfo.cbReserved2 := 0;
  lStartUpInfo.lpReserved2 := NIL;

  if not CreateProcess(NIL, pchar(cmd), NIL, NIL, False, 0, NIL,
    pchar(diretorio_exe), lStartUpInfo, lProcesso) then
  begin
    if exibe_alertas then
      application.MessageBox('Erro ao executar o backup!', 'Backup',
        MB_OK + MB_Iconerror);
    DeleteFile(arquivo_bat);
    exit;
  end
  else
    WaitForSingleObject(lProcesso.hProcess, INFINITE);
  DeleteFile(arquivo_bat);

  // verifica se o utilitario do 7zip está presente e compacta o arquivo de backup
  if FileExists(caminho_7za) then
  begin
    cmd := format('cmd /c ""%s" a -tzip -mx7 "%s" "%s" "%s" "',
      [caminho_7za, arquivo_zip, arquivo_bkp, caminho_config]);
    if not CreateProcess(NIL, pchar(cmd), NIL, NIL, False, 0, NIL,
      pchar(diretorio_exe), lStartUpInfo, lProcesso) then
    begin
      if exibe_alertas then
        application.MessageBox('Erro ao compactar o arquivo!', 'Backup',
          MB_OK + MB_Iconerror);
      exit;
    end
    else
    begin
      WaitForSingleObject(lProcesso.hProcess, INFINITE);
      if FileExists(arquivo_bkp) then
        DeleteFile(arquivo_bkp);
    end;
  end;

  // faz a cópia dos arquivos para o diretório 2
  if DirectoryExists(caminho_backup_copia) then
  begin
    cmd := format('cmd /c "robocopy "%s "  "%s " *.* /xn"',
      [caminho_backup, caminho_backup_copia]);
    if not CreateProcess(NIL, pchar(cmd), NIL, NIL, False, 0, NIL,
      pchar(diretorio_exe), lStartUpInfo, lProcesso) then
    begin
      if exibe_alertas then
        application.MessageBox(pchar(format('Erro ao copiar ao diretório %s!',
          [caminho_backup_copia])), 'Backup', MB_OK + MB_Iconerror);
    end
    else
    begin
      WaitForSingleObject(lProcesso.hProcess, INFINITE);
    end;
  end;
  if exibe_alertas then
    application.MessageBox(pchar(format('Backup criado com sucesso no caminho:'
      + #13#10 + '%s', [caminho_backup])), 'Atenção', MB_ICONINFORMATION);
end;

procedure TfrmMenu.dxBarLargeButton49Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmMenu.rbCancelacupomClick(Sender: TObject);
begin
  frmReimpressaoCupom := TfrmReimpressaoCupom.Create(self);
  frmReimpressaoCupom.ShowModal;
  FreeAndNil(frmReimpressaoCupom);
end;

procedure TfrmMenu.rbSatemitidosClick(Sender: TObject);
begin
  frmConsVendaSAT := TfrmConsVendaSAT.Create(self);
  frmConsVendaSAT.ShowModal;
  FreeAndNil(frmConsVendaSAT);
end;

procedure TfrmMenu.dxBarLargeButton50Click(Sender: TObject);
begin
frmResumodacasa:=TfrmResumodacasa.Create(self);
frmResumodacasa.ShowModal;
FreeAndNil(frmResumodacasa);
end;

procedure TfrmMenu.dxBarLargeButton51Click(Sender: TObject);
begin
  AbreFormRelatoriosVendas(28);
end;

procedure TfrmMenu.dxBarLargeButton52Click(Sender: TObject);
begin
  AbreFormRelatoriosVendas(7);
end;

procedure TfrmMenu.dxBarLargeButton53Click(Sender: TObject);
begin
  frmControleContasPagar := TfrmControleContasPagar.Create(self);
  frmControleContasPagar.ShowModal;
  FreeAndNil(frmControleContasPagar);
end;

procedure TfrmMenu.dxBarLargeButton54Click(Sender: TObject);
begin
  frmControleContasReceberFiado := TfrmControleContasReceberFiado.Create(self);
  frmControleContasReceberFiado.ShowModal;
  FreeAndNil(frmControleContasReceberFiado);
end;

procedure TfrmMenu.dxBarLargeButton56Click(Sender: TObject);
begin
  frmGraficoVendas := TfrmGraficoVendas.Create(self, 5);
  frmGraficoVendas.ShowModal;
  FreeAndNil(frmGraficoVendas);
end;

procedure TfrmMenu.dxBarLargeButton59Click(Sender: TObject);
begin
  frmGraficoVendas := TfrmGraficoVendas.Create(self, 0);
  frmGraficoVendas.ShowModal;
  FreeAndNil(frmGraficoVendas);
end;

procedure TfrmMenu.dxBarLargeButton60Click(Sender: TObject);
begin
  frmGraficoVendas := TfrmGraficoVendas.Create(self, 1);
  frmGraficoVendas.ShowModal;
  FreeAndNil(frmGraficoVendas);
end;

procedure TfrmMenu.dxBarLargeButton61Click(Sender: TObject);
begin
  frmGraficoVendas := TfrmGraficoVendas.Create(self, 2);
  frmGraficoVendas.ShowModal;
  FreeAndNil(frmGraficoVendas);
end;

procedure TfrmMenu.dxBarLargeButton62Click(Sender: TObject);
begin
  frmConsBairro := TfrmConsBairro.Create(self,
    'select bai_001, emp_001, bai_002, bai_003,sit_001, ' +
    ' fn_situacoes(sit_001) as situacao_desc from bairro', // Select
    CriaIntegerArray([0, 2, 3, 5]), // Campos Visiveis
    CriaIntegerArray([0, 2, 3]), // Campos para filtro
    CriaStringArray(['Código', 'Bairro', 'Taxa', 'Status']),
    // Descrição das colunas
    1, // Indice do campo padrão do filtro 1=nome
    ' emp_001=' + IntToStr(RecProj.iEmp));
  frmConsBairro.ShowModal;
  FreeAndNil(frmConsBairro);
end;

procedure TfrmMenu.btOpcionaisClick(Sender: TObject);
begin
  frmConsOpcionais := TfrmConsOpcionais.Create(self,
    ' select id_opcional, descricao, valor, ' +
    ' cast(fn_situacoes(id_situacao) as varchar(200)) as staus_desc from opcional',
    // Select
    CriaIntegerArray([0, 1, 2, 3]), // Campos Visiveis
    CriaIntegerArray([0, 1, 2]), // Campos disponíveis para filtro
    CriaStringArray(['Código', 'Descrição', 'Valor', 'Status']),
    // Descrição das colunas
    1, // Indice do campo padrão do filtro 1=descricao
    ' id_empresa=' + IntToStr(RecProj.iEmp)); // Filtro where
  frmConsOpcionais.ShowModal;
  FreeAndNil(frmConsOpcionais);
end;

procedure TfrmMenu.rbReimprimirCupomClick(Sender: TObject);
begin
  frmReimpressaoCupom := TfrmReimpressaoCupom.Create(self, 'I');
  frmReimpressaoCupom.ShowModal;
  FreeAndNil(frmReimpressaoCupom);
end;

procedure TfrmMenu.dxBarLargeButton65Click(Sender: TObject);
begin
  frmConsConta := TfrmConsConta.Create(self, 'select c.id_conta, c.descricao, '
    + ' cast(case when c.b_pagar then ''SIM'' else ''NÃO'' end as varchar(3))as b_pagar, '
    + ' cast(case when c.b_receber then ''SIM'' else ''NÃO'' end as varchar(3)) as  b_receber, '
    + ' cast(fn_situacoes(c.id_situacao) as varchar(100)) as status ' +
    ' from conta  c ', CriaIntegerArray([0, 1, 2, 3, 4]), // Campos visiveis
    CriaIntegerArray([0, 1]), // Campos diponiveis para filtro
    CriaStringArray(['Código', 'Conta', 'C. Pagar', 'C. Receber', 'Status']),
    // Caption dos campos
    1, ' id_empresa=' + IntToStr(RecProj.iEmp));
  frmConsConta.ShowModal;
  FreeAndNil(frmConsConta);
end;

procedure TfrmMenu.dxBarLargeButton66Click(Sender: TObject);
begin
  frmConsContaCorrente := TfrmConsContaCorrente.Create(self,
    ' select id_contacorrente, ' + ' agencia, conta, banco, saldo, ' +
    ' cast(fn_situacoes(id_situacao) as varchar(100)) as status' +
    ' from contacorrente ', CriaIntegerArray([0, 1, 2, 3, 4, 5]),
    // Campos visiveis
    CriaIntegerArray([0, 1, 2, 3]), // Campos diponiveis para filtro
    CriaStringArray(['Código', 'Agência', 'Conta', 'Banco', 'Saldo', 'Status']),
    // Caption dos campos
    1, ' id_empresa=' + IntToStr(RecProj.iEmp));
  frmConsContaCorrente.ShowModal;
  FreeAndNil(frmConsContaCorrente);
end;

procedure TfrmMenu.dxBarLargeButton67Click(Sender: TObject);
begin
  frmConsCondicaoPagamento := TfrmConsCondicaoPagamento.Create(self,
    ' select id_condicaopagamento, descricao, numero_parcelas, ' +
    ' fn_situacoes(id_situacao) as desc_situacao ' + ' from condicaopagamento',
    CriaIntegerArray([0, 1, 2, 3]), // Campos visiveis
    CriaIntegerArray([0, 1]), // Campos diponiveis para filtro
    CriaStringArray(['Código', 'Descrição', 'Nro. Parcelas', 'Status']),
    // Caption dos campos
    1, ' id_empresa=' + IntToStr(RecProj.iEmp));
  frmConsCondicaoPagamento.ShowModal;
  FreeAndNil(frmConsCondicaoPagamento);
end;

procedure TfrmMenu.dxBarLargeButton68Click(Sender: TObject);
begin
  frmConsCategoria := TfrmConsCategoria.Create(self,
    'select cat_001,cat_002 from categoria', CriaIntegerArray([0, 1]),
    CriaIntegerArray([0, 1]), CriaStringArray(['Código', 'Descrição']), 1,
    ' emp_001=' + IntToStr(RecProj.iEmp));
  frmConsCategoria.ShowModal;
  FreeAndNil(frmConsCategoria);
end;

procedure TfrmMenu.btTouchClick(Sender: TObject);
begin
  frmVendaTouch := TfrmVendaTouch.Create(self);
  frmVendaTouch.ShowModal;
  FreeAndNil(frmVendaTouch);
end;

procedure TfrmMenu.dxBarLargeButton70Click(Sender: TObject);
begin
  frmProdutoReajustePreco := TfrmProdutoReajustePreco.Create(self);
  frmProdutoReajustePreco.ShowModal;
  FreeAndNil(frmProdutoReajustePreco);
end;

procedure TfrmMenu.dxBarLargeButton71Click(Sender: TObject);
begin
  frmRelatorioMovimentoContaCliente :=
    TfrmRelatorioMovimentoContaCliente.Create(self);
  frmRelatorioMovimentoContaCliente.ShowModal;
  FreeAndNil(frmRelatorioMovimentoContaCliente);
end;

procedure TfrmMenu.dxBarLargeButton72Click(Sender: TObject);
begin
  frmRelatorioAniversariantes := TfrmRelatorioAniversariantes.Create(self);
  frmRelatorioAniversariantes.ShowModal;
  FreeAndNil(frmRelatorioAniversariantes);
end;

procedure TfrmMenu.dxBarLargeButton73Click(Sender: TObject);
begin
  frmGraficoVendas := TfrmGraficoVendas.Create(self, 3);
  frmGraficoVendas.ShowModal;
  FreeAndNil(frmGraficoVendas);
end;

procedure TfrmMenu.dxBarLargeButton74Click(Sender: TObject);
begin
  frmEnvioCFe := TfrmEnvioCFe.Create(self);
  frmEnvioCFe.ShowModal;
  FreeAndNil(frmEnvioCFe);
end;

function TfrmMenu.ConfiguraImpressoraPOS(impressora: string): boolean;
var
  config_imp: string;
begin
  impressora := uppercase(impressora);
  config_imp := ExtractFilePath(application.ExeName) + 'CONF\IMP_' +
    impressora + '.xml';

  if ACBrPosPrinter1.Ativo then
    ACBrPosPrinter1.Desativar;

  try
    if not FileExists(config_imp) then
    begin
      raise Exception.Create(pchar('Configuração do modo ESC/POS da impressora '
        + impressora + ' não encontrada!'));
    end;

    ACBrPosPrinter1.cortapapel := true;
    ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo(lerintegerconfig('MODELO',
      config_imp));
    ACBrPosPrinter1.Porta := LerStringConfig('PORTA', config_imp);
    ACBrPosPrinter1.ArqLOG := LerStringConfig('ARQLOG', config_imp);
    ACBrPosPrinter1.LinhasBuffer := lerintegerconfig('LINHASBUFFER',
      config_imp);
    ACBrPosPrinter1.LinhasEntreCupons := lerintegerconfig('LINHASPULAR',
      config_imp);
    ACBrPosPrinter1.EspacoEntreLinhas := lerintegerconfig('ESPACOENTRELINHAS',
      config_imp);
    ACBrPosPrinter1.ColunasFonteNormal := lerintegerconfig('COLUNAS',
      config_imp);
    ACBrPosPrinter1.ControlePorta := LerBooleanConfig('CONTROLEPORTA',
      config_imp);
    ACBrPosPrinter1.TraduzirTags := LerBooleanConfig('TRADUZIRTAGS',
      config_imp);
    ACBrPosPrinter1.IgnorarTags := LerBooleanConfig('IGNORARTAGS', config_imp);
    ACBrPosPrinter1.PaginaDeCodigo :=
      TACBrPosPaginaCodigo(lerintegerconfig('PAGINADECODIGO', config_imp));
    ACBrPosPrinter1.ConfigBarras.MostrarCodigo :=
      LerBooleanConfig('HRI', config_imp);
    ACBrPosPrinter1.ConfigBarras.LarguraLinha :=
      lerintegerconfig('LARGURA', config_imp);
    ACBrPosPrinter1.ConfigBarras.Altura := lerintegerconfig('ALTURA',
      config_imp);
    ACBrPosPrinter1.ConfigQRCode.Tipo := lerintegerconfig('TIPO', config_imp);
    ACBrPosPrinter1.ConfigQRCode.LarguraModulo :=
      lerintegerconfig('LARGURAMODULO', config_imp);
    ACBrPosPrinter1.ConfigQRCode.ErrorLevel := lerintegerconfig('ERRORLEVEL',
      config_imp);
    ACBrPosPrinter1.ConfigLogo.KeyCode1 := lerintegerconfig('KC1', config_imp);
    ACBrPosPrinter1.ConfigLogo.KeyCode2 := lerintegerconfig('KC2', config_imp);
    ACBrPosPrinter1.ConfigLogo.FatorX := lerintegerconfig('FATORX', config_imp);
    ACBrPosPrinter1.ConfigLogo.FatorY := lerintegerconfig('FATORY', config_imp);
    ACBrPosPrinter1.Ativar;
    result := true;

  Except
    on E: Exception do
    begin
      application.MessageBox(pchar('Erro ao iniciar a impressora! Detalhes:' +
        slinebreak + E.Message), 'Atenção', MB_Iconerror);

      result := False;
    end;
  end;
end;

procedure TfrmMenu.dxBarLargeButton77Click(Sender: TObject);
var
  caminho: string;
begin
  caminho := ExtractFilePath(application.ExeName) +
    'Suporte\SuporteQS_pt-idc8vsmd4n.exe';
  if FileExists(caminho) then
  begin
    ShellExecute(application.Handle, pchar('open'), pchar(caminho), nil, nil,
      SW_SHOWNORMAL);
  end
  else
    application.MessageBox
      ('Aplicativo de suporte não encontrado no diretório do sistema!',
      'Atenção', MB_ICONINFORMATION);
end;

procedure TfrmMenu.AbreFormRelatoriosVendas(indice: integer = 0);
begin
  frmRelatorioVendas := TfrmRelatorioVendas.Create(self, indice);
  frmRelatorioVendas.ShowModal;
  FreeAndNil(frmRelatorioVendas);
end;

procedure TfrmMenu.AbreFormRelatoriosEstoque(indice: integer = 0);
begin
  frmRelatorioEstoque := tfrmRelatorioEstoque.Create(self, indice);
  frmRelatorioEstoque.ShowModal;
  FreeAndNil(frmRelatorioEstoque);
end;

procedure TfrmMenu.btCaixinhaClick(Sender: TObject);
begin
  AbreFormRelatoriosVendas(12);
end;

procedure TfrmMenu.dxBarLargeButton81Click(Sender: TObject);
begin
  AbreFormRelatoriosVendas(13);
end;

procedure TfrmMenu.dxBarLargeButton82Click(Sender: TObject);
begin
  frmRelatorioABC := TfrmRelatorioABC.Create(self);
  frmRelatorioABC.ShowModal;
  FreeAndNil(frmRelatorioABC);
end;

procedure TfrmMenu.dxBarLargeButton83Click(Sender: TObject);
begin
  frmRelatorioABCPagamentos := TfrmRelatorioABCPagamentos.Create(self);
  frmRelatorioABCPagamentos.ShowModal;
  FreeAndNil(frmRelatorioABCPagamentos);
end;

procedure TfrmMenu.dxBarLargeButton87Click(Sender: TObject);
begin
  AbreFormRelatoriosVendas(25);
end;

procedure TfrmMenu.dxBarLargeButton88Click(Sender: TObject);
begin
  frmConsIBPT := TfrmConsIBPT.Create(self,
    'select ibpt_001, ncm, descricao from IBPT', // Select
    CriaIntegerArray([1, 2]), // Campos Visiveis
    CriaIntegerArray([1, 2]), // Campos para filtro
    CriaStringArray(['NCM', 'Descrição']), // Descrição das colunas
    1, // Indice do campo padrão do filtro
    '');
  frmConsIBPT.ShowModal;
  FreeAndNil(frmConsIBPT);
end;

procedure TfrmMenu.dxBarLargeButton89Click(Sender: TObject);
begin
  frmConsSetor := TfrmConsSetor.Create(self, 'select id_setor, descricao, ' +
    ' cast(fn_situacoes(id_situacao) as varchar(100)) as situacao  from setor_estoque',
    // Select
    CriaIntegerArray([0, 1, 2]), // campos visiveis
    CriaIntegerArray([0, 1]), // Campos disponiveis para filtro
    CriaStringArray(['Código', 'Setor', 'Status']),
    // descricao dos campos na grade
    1, // indice do filtro padrao
    'id_empresa=' + IntToStr(RecProj.iEmp)); // filtro where da consulta
  frmConsSetor.ShowModal;
  FreeAndNil(frmConsSetor);
end;

procedure TfrmMenu.ExportaArquivoBalanca(fabricante: String);
var
  dlg_salvar: TSaveDialog;
  qr_consulta: TUniQuery;
  str_sql, conteudo_arq: string;
  arquivo: TextFile;
begin
  fabricante := uppercase(fabricante);
  dlg_salvar := TSaveDialog.Create(self);
  dlg_salvar.filter := 'Txt|*.txt';
  if fabricante = 'T' then // toledo
    dlg_salvar.filename := 'ITENSMGV.txt'
  else // filizola
    dlg_salvar.filename := 'CADTXT.txt';

  if dlg_salvar.Execute then
  begin
    qr_consulta := TUniQuery.Create(self);
    qr_consulta.Connection := frmMenu.conexao;
    str_sql :=
      format(' select m.mat_004 as codigo, m.mat_003 as descricao, m.mat_008 as valor_unitario, '
      + ' c.codigo_departamento_balanca as departamento, m.dias_validade, m.tara_balanca, '
      + ' upper(u.uni_003) as unidade, coalesce(m.tar_001, 0) as tar_001 ' +
      ' from materiais m' +
      ' join categoria c on c.cat_001=m.cat_001 and c.emp_001=m.emp_001' +
      ' join unidades u on u.uni_001=m.uni_001 and c.emp_001=m.emp_001' +
      ' where m.emp_001=%d and m.b_exporta_peso_balanca and m.sit_001=4',
      [RecProj.iEmp]);
    if ExecutaConsultaSQL(qr_consulta, str_sql) then
    begin
      try
        if fabricante = 'T' then // toledo
          conteudo_arq := GeraArquivoItensBalancaMGV6(qr_consulta)
        else // filizola
          conteudo_arq := GeraArquivoItensBalancaSmartRDC360(qr_consulta);

        AssignFile(arquivo, dlg_salvar.filename);
        ReWrite(arquivo);
        write(arquivo, conteudo_arq);
        CloseFile(arquivo);
        application.MessageBox(pchar('Arquivo gerado com sucesso!'), 'Atenção',
          MB_ICONINFORMATION);
      except
        on E: Exception do
        begin
          application.MessageBox(pchar('Erro ao gerar o arquivo! Detalhes:' +
            slinebreak + E.Message), 'Atenção', MB_Iconerror);
        end;
      end;
    end
    else
    begin
      application.MessageBox
        (pchar('Nenhum produto marcado para exportação encontrado!'), 'Atenção',
        MB_ICONINFORMATION);
    end;

    qr_consulta.Free;
  end;
  dlg_salvar.Free;
end;

procedure TfrmMenu.btNfeClick(Sender: TObject);
begin
  frmControleNotaFiscalSaida := TfrmControleNotaFiscalSaida.Create(self);
  frmControleNotaFiscalSaida.ShowModal;
  FreeAndNil(frmControleNotaFiscalSaida);
end;

procedure TfrmMenu.dxBarLargeButton8Click(Sender: TObject);
begin
  frmMovimentoEstoque := TfrmMovimentoEstoque.Create(self);
  frmMovimentoEstoque.ShowModal;
  FreeAndNil(frmMovimentoEstoque);
end;

procedure TfrmMenu.btFecharcontaClick(Sender: TObject);
begin
  frmJuncaoefechamentocomanda := TfrmJuncaoefechamentocomanda.Create(self);
  frmJuncaoefechamentocomanda.ShowModal;
  FreeAndNil(frmJuncaoefechamentocomanda);
end;

procedure TfrmMenu.dxBarLargeButton91Click(Sender: TObject);
begin
  frmTransferenciaestoque := TfrmTransferenciaestoque.Create(self);
  frmTransferenciaestoque.ShowModal;
  FreeAndNil(frmTransferenciaestoque);
end;

procedure TfrmMenu.dxBarLargeButton94Click(Sender: TObject);
begin
  frmajusteestoque := tfrmajusteestoque.Create(self);
  frmajusteestoque.ShowModal;
  FreeAndNil(frmajusteestoque);
end;

procedure TfrmMenu.dxbrlrgbtn1Click(Sender: TObject);
begin
  frmAnalisefinanceira := TfrmAnalisefinanceira.Create(self);
  frmAnalisefinanceira.ShowModal;
  FreeAndNil(frmAnalisefinanceira);
end;

procedure TfrmMenu.btMonitorPreparoClick(Sender: TObject);
begin
  frmMonitorpreparo := TfrmMonitorpreparo.Create(self, 1);
  frmMonitorpreparo.ShowModal;
  FreeAndNil(frmMonitorpreparo);
end;

procedure TfrmMenu.btMonitorEntregaClick(Sender: TObject);
begin
  frmMonitorpreparo := TfrmMonitorpreparo.Create(self, 2);
  frmMonitorpreparo.ShowModal;
  FreeAndNil(frmMonitorpreparo);
end;

procedure TfrmMenu.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not Key in [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] then
    Key := 0
end;

procedure TfrmMenu.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']) then
    Key := #0
end;

procedure TfrmMenu.EntradaSuprimento1Click(Sender: TObject);
begin
  frmCaixaLancaMovimento := tfrmCaixaLancaMovimento.Create(self, 'E');
  frmCaixaLancaMovimento.ShowModal;
  FreeAndNil(frmCaixaLancaMovimento);
end;

procedure TfrmMenu.act_SairExecute(Sender: TObject);
begin
  if Confirma('Deseja sair do sistema?', 'ATENÇÃO') then
    application.Terminate;
end;

procedure TfrmMenu.act_UsuariosExecute(Sender: TObject);
begin
  Chama_Form(TfrmConsUsuarios, frmConsUsuarios, 'frmConsUsuarios');
end;

procedure TfrmMenu.AdvGlowButton1Click(Sender: TObject);
begin
  Fechar_Filhos;
  Chama_Login;
end;

procedure TfrmMenu.AdvGlowButton2Click(Sender: TObject);
begin
  if Confirma('Deseja sair do sistema?', 'ATENÇÃO') then
    application.Terminate;
end;

procedure TfrmMenu.AdvGlowButton5Click(Sender: TObject);
begin
  frmConsProduto := TfrmConsProduto.Create(self);
  frmConsProduto.ShowModal;
  FreeAndNil(frmConsProduto);
end;

procedure TfrmMenu.Bairros1Click(Sender: TObject);
begin
  Chama_Form(TfrmConsBairro, frmConsBairro, 'frmConsBairro');
end;

procedure TfrmMenu.btVendasClick(Sender: TObject);
begin
  frmControleMesa := TfrmControleMesa.Create(self);
  frmControleMesa.ShowModal;
  FreeAndNil(frmControleMesa);
end;

procedure TfrmMenu.Button1Click(Sender: TObject);
begin
frmResumodacasa:=TfrmResumodacasa.Create(self);
frmResumodacasa.ShowModal;
FreeAndNil(frmResumodacasa);
end;

procedure TfrmMenu.Fechar_Filhos;
var
  X: Byte;
begin
  if MDIChildCount > 0 then
    for X := 0 to Pred(MDIChildCount) do
      MDIChildren[X].Close;
end;

procedure TfrmMenu.FluxodeCaixa1Click(Sender: TObject);
begin
  frmCaixaStatus := TfrmCaixaStatus.Create(self);
  frmCaixaStatus.ShowModal;
  FreeAndNil(frmCaixaStatus);
end;

procedure TfrmMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Date > RecProj.dUltimoAcesso then
  begin
    frmLiberacao.CriarLiberacao(RecProj.dInicioLiberacao,
      RecProj.dValidadeLiberacao, SerialHardDrive('C'));
  end;
end;

procedure TfrmMenu.FormCreate(Sender: TObject);

begin
  TmImpMobile.Enabled := False;
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY HH24:MM:SS';
  AbreDATABASE;

  // Ajustar as regras da Configuração da Empresa
  RecProj.bSalvaLayoutCons := true;
  RecProj.bQualidade := False;
  RecProj.bUsaEntregaParcialMat := true;
  RecProj.bUsaControleEstoque := true;
  RecProj.bVersaoAvaliacao := False;
  AbreXMLCFG;
  // Ler Configs de TEF
  RecProj.dTEF_REQ := LerString('TEF_REQ');
  RecProj.dTEF_REP := LerString('TEF_REP');
  RecProj.dTEF_VIAS := LerString('TEF_VIAS');
  RecProj.dTEF_TIPO := lerintegerconfig('CBXGP', cdsCFG.filename);
end;

procedure TfrmMenu.Categoria1Click(Sender: TObject);
begin
  Chama_Form(TfrmConsCategoria, frmConsCategoria, 'frmConsCategoria');
end;

function TfrmMenu.LerBoolean(sNome: String; Default: boolean): boolean;
begin
  if FileExists(cdsCFG.filename) then
    cdsCFG.Open
  else
    cdsCFG.CreateDataSet;
  if (cdsCFG.Locate('NOME', sNome, [])) then
    result := cdsCFGLOGICO.AsBoolean
  else
    result := Default;
  cdsCFG.Close;
end;

function TfrmMenu.LerString(sNome, Default: String): String;
begin
  if FileExists(cdsCFG.filename) then
    cdsCFG.Open
  else
    cdsCFG.CreateDataSet;
  if (cdsCFG.Locate('NOME', sNome, [])) then
    result := cdsCFGTEXTO.Asstring
  else
    result := Default;
  cdsCFG.Close;
end;

procedure TfrmMenu.Ler_Menu(Menu: TMenuItem; Query: TUniQuery);
var
  I: integer;
begin
  for I := 0 to Pred(Menu.Count) do
  begin
    if Menu.Items[I].Tag > 0 then
      if Query <> Nil then
      begin
        if Not Query.Locate('ACS_001', Menu.Items[I].Tag, []) then
          Menu.Items[I].Visible := False
        else
          Menu.Items[I].Visible := true;
      end
      else
        Menu.Items[I].Visible := true;
    //
    Ler_Menu(Menu.Items[I], Query);
  end;
end;

procedure TfrmMenu.carregaCaixaUsuario;
var
  str_sql, filtro: string;
  pdv_coletivo: boolean;
  pdv_nao_coletivo: boolean;
  ckcaixa_garcom: boolean;
begin
  // verifica se for PDV coletivo e busca o caixa aberto      Rafael 22/12/2017
  buscacampo(pdv_coletivo,
    format('select b_pdv_coletivo from empresas where emp_001=%d',
    [RecProj.iEmp]), '', False);
  if pdv_coletivo then // Verifica se for PDV coletivo e busca o caixa aberto
  begin
    filtro := ' true '
  end;

  // Configuração  micro somente lançamento do Garçom, marcado essa opção, desabilitara algumas opçoes Exemplo Cadastro produto, cadastro cliente enfim
  ckcaixa_garcom := LerBooleanConfig('ckcaixa_garcom', frmMenu.cdsCFG.filename);
  if ckcaixa_garcom then
  begin
    filtro := ' true ';
    rbCadastros.Visible := False;
    rbEstoque.Visible := False;
    rbCaixa.Visible := False;
    rbFinanceiro.Visible := False;
    rbRelatorios.Visible := False;
    rbGrafico.Visible := False;
    rbSatemitidos.Enabled := False;
    rbCancelacupom.Enabled := False;
    rbReimprimirCupom.Enabled := False;
    rbDevolucao.Enabled := False;
  end
  else
  begin
    filtro := ' true ';
    rbCadastros.Visible := true;
    rbEstoque.Visible := true;
    rbCaixa.Visible := true;
    rbFinanceiro.Visible := true;
    rbRelatorios.Visible := true;
    rbGrafico.Visible := true;
    rbSatemitidos.Enabled := true;
    rbCancelacupom.Enabled := true;
    rbReimprimirCupom.Enabled := true;
    rbDevolucao.Enabled := true;
  end;

  buscacampo(pdv_nao_coletivo,
    format('select b_pdv_nao_coletivo from empresas where emp_001=%d',
    [RecProj.iEmp]), '', False);
  if pdv_nao_coletivo then
  // Pdv não coletivo  - O caixa é aberto por terminal, cada usuario tera seu caixa
  begin
    filtro := ' c.terminal=' + QuotedStr(NomeDoTerminal);
  end;
  str_sql :=
    ' select c.id_caixa, c.data_abertura, c.hora_abertura,  u.usu_002 as usuario_caixa '
    + ' from caixa c ' + ' join usuarios u on u.usu_001=c.id_usuario ' +
    ' where ' + filtro + ' and c.id_situacao=4 and c.id_empresa=' +
    IntToStr(RecProj.iEmp) +
    ' order by c.data_abertura desc, c.hora_abertura desc limit 1';
  ExecutaConsultaSQL(qrAux1, str_sql);
  if qrAux1.RecordCount < 1 then
  begin
    RecProj.iIDCaixa := 0;
    RecProj.sUsuarioCaixa := '';
  end
  else
  begin
    RecProj.iIDCaixa := qrAux1.Fields[0].AsInteger;
    RecProj.dCaixaDataAbertura := qrAux1.Fields[1].AsDateTime;
    RecProj.dCaixaHoraAbertura := qrAux1.Fields[2].AsDateTime;
    RecProj.sUsuarioCaixa := qrAux1.Fields[3].Asstring;
  end;
end;

procedure TfrmMenu.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Perform(WM_NEXTDLGCTL, 0, 0);
  if Key = #27 then
    Perform(WM_NEXTDLGCTL, 0, 1);
end;

procedure TfrmMenu.FormShow(Sender: TObject);
begin
  inherited;

  if Not conexao.Connected then
    application.Terminate
  else
    Chama_Login;
  BackupAutomatico;
  qrEmpresa.Close;
  qrEmpresa.Open;
  RecProj.sEmpFantasia := qrEmpresaemp_003.Asstring;

  // verifica se existe caixa aberto para o usuario atual
  carregaCaixaUsuario;
  dxRibbon1.Tabs[0].Active := true;
  tmStatusTimer(nil);
  TmImpMobile.Enabled := true;
  try
//    imgLOGO.Picture.LoadFromFile(ExtractFilePath(application.ExeName) +
//      '\imagens\FUNDO.jpg');
  except
  end;
  verifica_modulo_sistema;
  usa_touch := False;

end;

procedure TfrmMenu.Abertura1Click(Sender: TObject);
begin
  frmCaixaAberturaFechamento := tfrmCaixaAberturaFechamento.Create(self, 'A');
  frmCaixaAberturaFechamento.ShowModal;
  FreeAndNil(frmCaixaAberturaFechamento);
end;

function TfrmMenu.AbreDATABASE: boolean;
var
  iRet: integer;
  nome_server, msg: string;
begin
  result := False;
  //
  if Not DirectoryExists(ExtractFilePath(application.ExeName) + 'CONF') then
    ForceDirectories(ExtractFilePath(application.ExeName) + 'CONF');
  //
  cdsConexao.Close;
  cdsConexao.filename := ExtractFilePath(application.ExeName) +
    'CONF\SERVER.XML';
  try
    try
      cdsConexao.Open;
    except
      cdsConexao.CreateDataSet;
    end;
    nome_server := cdsConexaoSERVER.Asstring;
    //
    if nome_server = '' then
    begin
      frmServidor := TfrmServidor.Create(Nil);
      iRet := frmServidor.ShowModal;
      if iRet = mrOk then
      begin
        cdsConexao.Edit;
        nome_server := frmServidor.edServidor.Text;
        cdsConexaoSERVER.Asstring := nome_server;
        cdsConexao.post;
      end;
      FreeAndNil(frmServidor);
      if iRet <> 1 then
        abort;
    end;

    try
      // tenta conectar se for IP caso nao seja vai dar erro e irá tentar localizar pelo nome da maquina
      conexao.Server := nome_server;
      conexao.Connect;
    except
      // tenta buscar o IP pelo nome da maquina
      conexao.Server := GetIP(nome_server);
      conexao.Connect;
    end;
    //
    result := true;

  except
    on E: Exception do
    begin
      nome_server := nome_server + ' ';
      msg := 'Houve um problema ao conectar-se ao banco de dados. Verifique:' +
        #13#10 + #13#10 +
        ' - Há conexão de rede e as configurações estão corretas' + #13#10 +
        ' - O servidor %sestá ligado e conectado à rede' + #13#10 +
        ' - O serviço de banco de dados (Postgres) está funcionando no servidor';
      application.MessageBox(PWideChar(format(msg, [nome_server])), 'ATENÇÃO',
        MB_ICONWARNING);
      // cdsConexao.EmptyDataSet;
    end;
  end;
end;

procedure TfrmMenu.qrEmpresaBeforeOpen(DataSet: TDataSet);
begin
  qrEmpresa.ParamByName('EMP').AsInteger := RecProj.iEmp;
end;

procedure TfrmMenu.Sistema2Click(Sender: TObject);
begin
  frmConfiguracao := TfrmConfiguracao.Create(self);
  frmConfiguracao.ShowModal;
  FreeAndNil(frmConfiguracao);
end;

procedure TfrmMenu.StatusBar1DblClick(Sender: TObject);
var
  msg: string;
  I: integer;
begin
  msg := '';
  for I := 0 to StatusBar1.Panels.Count - 1 do
  begin
    msg := msg + StatusBar1.Panels[I].Text + slinebreak;
  end;
  msg := msg + 'VERSÃO ' + GetFileVersion(ParamStr(0));

  application.MessageBox(pchar(msg), 'Informações', MB_ICONINFORMATION);

end;

procedure TfrmMenu.TmImpMobileTimer(Sender: TObject);
var
  imprime_cozinha: boolean;
begin
  imprime_cozinha := LerBooleanConfig('CKIMPRIMEPEDIDOSCOZINHA',
    cdsCFG.filename);

  // verifica se essa máquina está habilitada pra fazer as impressões mobile
  if imprime_cozinha then
  begin
    ImprimePedidoProducao;
    ImprimePrefechamentoMobile;
  end;
end;

procedure TfrmMenu.ImprimePedidoProducao;
var
  bImprimeIngrMesa, bImprimeIngrDelivery, bImprimeIngrComanda,
    bImprimeIngredientes, flag_fracionado, flag_ingredientes, flag_opcionais,
    fonte_expandida, bImprimeDestaque: boolean;
  // variaveis p/ itens
  ultimo_fracionado, int_aux: integer;
  str_sql, sImpressora, sImpressoraPOS, str_datahora, str_impressao,
    tag_expandida, tag_expandida_fechar, str_aux: string;
  qr_aux1: TUniQuery;
  modo_pos_cozinha, modo_pos_balcao, modo_pos_bar, replica_impressao,
    imprime_endereco_cliente: boolean; // cozinha2=bar
  i_filtro_imp, quantidade_vias, I, largura_colunas, largura_colunas_expandido,
    largura_aux: integer;
begin
  bImprimeDestaque := LerBooleanConfig('CKIMPRIMEDESTAQUE',cdsCFG.filename);
  bImprimeIngrMesa := LerBooleanConfig('CKIMPRIMIRINGREDIENTESCOZINHAMESA',
    cdsCFG.filename);
  bImprimeIngrDelivery := LerBooleanConfig
    ('CKIMPRIMIRINGREDIENTESCOZINHADELIVERY', cdsCFG.filename);
  bImprimeIngrComanda := LerBooleanConfig
    ('CKIMPRIMIRINGREDIENTESCOZINHACOMANDA', cdsCFG.filename);
  modo_pos_balcao := lerintegerconfig('CXMODOIMPBALCAO', cdsCFG.filename) = 1;
  modo_pos_cozinha := lerintegerconfig('CXMODOIMPCOZINHA', cdsCFG.filename) = 1;
  modo_pos_bar := lerintegerconfig('CXMODOIMPBAR', cdsCFG.filename) = 1;
  replica_impressao := LerBooleanConfig('CKREPLICAIMPRESSAOCOZINHA',
    cdsCFG.filename);
  imprime_endereco_cliente :=
    LerBooleanConfig('ckImprimirDadosEndClienteCozinhaDelivery',
    cdsCFG.filename);
  quantidade_vias := lerintegerconfig('edQtdeViasProducao', cdsCFG.filename, 1);
  fonte_expandida := LerBooleanConfig('ckImpressaoProducaoExpandido',
    cdsCFG.filename);
  largura_colunas_expandido := 24;

  // Fonte expandida é horrível! Cliente Velho Armazen pediu, mas não pagou kkkkkkkkkk  18/03/2018 Rafael
  if fonte_expandida then
  begin
    tag_expandida := '<e>';
    tag_expandida_fechar := '</e>';
  end
  else
  begin
    tag_expandida := '';
    tag_expandida_fechar := '';
  end;
  if quantidade_vias < 1 then
    quantidade_vias := 1;
  qr_aux1 := TUniQuery.Create(self);
  qr_aux1.Connection := conexao;
  TmImpMobile.Enabled := False;
  try
    // define a linha onde está o filtro da impressora para os itens
    i_filtro_imp := qrImpressaoCozinha.SQL.Count - 2;
    // carrega os itens de vendas pendentes para impressao
    str_sql :=
      'SELECT distinct VEN.ven_001,VEN.cli_001, ven.VEN_024, MES.MES_002 , ite.ite_013 '
      + '  FROM VENDA VEN ' +
      '  join vendaitem ite on ite.emp_001=ven.emp_001 and ite.ven_001=ven.ven_001 '
      + '  LEFT OUTER JOIN MESA MES ON (MES.EMP_001 = VEN.EMP_001) AND (MES.MES_001 = VEN.VEN_025)'
      + '  WHERE VEN.VEN_024 in (''M'', ''D'', ''B'', ''C'')  ' +
      '   AND VEN.VEN_023 = ''N''' + '   AND ITE.SIT_001 = 4 ' +
      '   AND ITE.ITE_013 in (1,2,3,4,5)' + '   AND ITE.ITE_008 =''N'' ' +
      '   AND ITE.ITE_011 =''S'' ';
    ExecutaConsultaSQL(qr_aux1, str_sql);
    if cdsFiltroImpressorasPedido.Active then
      cdsFiltroImpressorasPedido.EmptyDataSet
    else
      cdsFiltroImpressorasPedido.CreateDataSet;

    qr_aux1.first;
    if (qr_aux1.RecordCount > 0) and replica_impressao then
    begin
      while not qr_aux1.Eof do
      begin
        if cdsFiltroImpressorasPedido.Locate('id_venda',
          qr_aux1.FieldByName('ven_001').AsInteger, []) then
        begin
          cdsFiltroImpressorasPedido.Edit;
          cdsFiltroImpressorasPedido.FieldByName('filtro_impressoras').Asstring
            := cdsFiltroImpressorasPedido.FieldByName('filtro_impressoras')
            .Asstring + ',' + IntToStr(qr_aux1.FieldByName('ite_013')
            .AsInteger);
          cdsFiltroImpressorasPedido.post;
        end
        else
        begin
          cdsFiltroImpressorasPedido.Append;
          cdsFiltroImpressorasPedido.FieldByName('id_venda').AsInteger :=
            qr_aux1.FieldByName('ven_001').AsInteger;
          cdsFiltroImpressorasPedido.FieldByName('filtro_impressoras').Asstring
            := IntToStr(qr_aux1.FieldByName('ite_013').AsInteger);
          cdsFiltroImpressorasPedido.post;
        end;
        qr_aux1.Next;
      end;
    end;

    qr_aux1.first;
    while not qr_aux1.Eof do
    // Faz a impressão para as impressoras de Produção  17/12/2017   Rafael
    begin
      case qr_aux1.FieldByName('ITE_013').AsInteger of
        // Impressoras de produção
        1:
          begin
            sImpressora := LerStringConfig('CAMIMPBALCAO',
              frmMenu.cdsCFG.filename);
            sImpressoraPOS := 'BALCAO';
            largura_colunas := lerintegerconfig('COLUNAS',
              ExtractFilePath(application.ExeName) + 'CONF\IMP_BALCAO.xml');
          end;
        2:
          begin
            sImpressora := LerStringConfig('CAMIMPCOZINHA',
              frmMenu.cdsCFG.filename);
            sImpressoraPOS := 'COZINHA';
            largura_colunas := lerintegerconfig('COLUNAS',
              ExtractFilePath(application.ExeName) + 'CONF\IMP_COZINHA.xml');
          end;
        3:
          begin
            sImpressora := LerStringConfig('CAMIMPBAR1',
              frmMenu.cdsCFG.filename);
            sImpressoraPOS := 'BAR';
            largura_colunas := lerintegerconfig('COLUNAS',
              ExtractFilePath(application.ExeName) + 'CONF\IMP_BAR.xml');
          end;
        4:
          begin
            sImpressora := LerStringConfig('CAMIMPCOZINHA2',
              frmMenu.cdsCFG.filename);
            sImpressoraPOS := 'SALAO';
            largura_colunas := lerintegerconfig('COLUNAS',
              ExtractFilePath(application.ExeName) + 'CONF\IMP_SALAO.xml');
          end;
        5:
          begin
            sImpressora := LerStringConfig('CAMIMPBAR2',
              frmMenu.cdsCFG.filename);
            sImpressoraPOS := 'AMBIENTE';
            largura_colunas := lerintegerconfig('COLUNAS',
              ExtractFilePath(application.ExeName) + 'CONF\IMP_AMBIENTE.xml');
          end;

      end;

      try
        str_datahora := formatdatetime('dd/mm/yyyy hh:nn', Now());
        if qr_aux1.FieldByName('VEN_024').Asstring = 'M' then
          bImprimeIngredientes := bImprimeIngrMesa
        else if qr_aux1.FieldByName('VEN_024').Asstring = 'D' then
          bImprimeIngredientes := bImprimeIngrDelivery
        else if qr_aux1.FieldByName('VEN_024').Asstring = 'C' then
          bImprimeIngredientes := bImprimeIngrComanda;

        qrImpressaoCozinha.Close;
        qrImpressaoCozinha.ParamByName('VEN').AsInteger :=
          qr_aux1.FieldByName('ven_001').AsInteger;
        qrImpressaoCozinha.ParamByName('EMP').AsInteger := RecProj.iEmp;

        // replicao a impressão dos itens em taodas as impressoras do pedido, se configurado
        if replica_impressao then
        begin
          cdsFiltroImpressorasPedido.Locate('id_venda',
            qr_aux1.FieldByName('ven_001').AsInteger, []);
          qrImpressaoCozinha.SQL[i_filtro_imp] := ' AND ITE.ITE_013 in (' +
            cdsFiltroImpressorasPedido.FieldByName('filtro_impressoras')
            .Asstring + ') ';
        end
        else
        begin
          qrImpressaoCozinha.SQL[i_filtro_imp] := ' AND ITE.ITE_013 = ' +
            qr_aux1.FieldByName('ite_013').Asstring;
        end;

        qrImpressaoCozinha.Open;
        qrImpressaoCozinhaIngr.Close;
        qrImpressaoCozinhaIngr.ParamByName('impressao_ingr').AsBoolean :=
          bImprimeIngredientes;
        qrImpressaoCozinhaIngr.ParamByName('id_empresa').AsInteger :=
          RecProj.iEmp;
        qrImpressaoCozinhaIngr.Open;

        qrImpressaoCozinhaObs.Close;
        qrImpressaoCozinhaObs.ParamByName('VEN').AsInteger :=
          qr_aux1.FieldByName('ven_001').AsInteger;
        qrImpressaoCozinhaObs.ParamByName('EMP').AsInteger := RecProj.iEmp;
        qrImpressaoCozinhaObs.Open;

        qrImpressaoCozinhaCli.Close;
        qrImpressaoCozinhaCli.ParamByName('id_cliente').AsInteger :=
          qr_aux1.FieldByName('cli_001').AsInteger;
        qrImpressaoCozinhaCli.ParamByName('EMP').AsInteger := RecProj.iEmp;
        qrImpressaoCozinhaCli.Open;

        // imprime no relatorio grafico

        if ((qr_aux1.FieldByName('ITE_013').AsInteger = 1) and
          not modo_pos_balcao) or
          ((qr_aux1.FieldByName('ITE_013').AsInteger = 2) and
          not modo_pos_cozinha) or
          ((qr_aux1.FieldByName('ITE_013').AsInteger = 3) and not modo_pos_bar)
        then
        begin
          repImpressaoCozinha.PrintOptions.Printer := sImpressora;
          repImpressaoCozinha.Variables['sDataHora'] := QuotedStr(str_datahora);
          //repImpressaoCozinha.LoadFromFile('C:\EliteFood\Relatorios\IMPRESSAOCOZINHA.fr3');
          repImpressaoCozinha.PrepareReport;

          for I := 1 to quantidade_vias do
            repImpressaoCozinha.Print;

        end
        else // imprime na impressora pos
        begin
          //
          if fonte_expandida then // -- expandidada consome 24 colunas
            largura_aux := largura_colunas_expandido
          else
            largura_aux := largura_colunas;

          // monta o cabeçalho  para Mesa e Comanda
          if (qrImpressaoCozinha.FieldByName('tipo_venda').Asstring = 'M') or
            (qrImpressaoCozinha.FieldByName('tipo_venda').Asstring = 'C') then
          begin
            str_aux := qrImpressaoCozinha.FieldByName('mesa_delivery').Asstring
              + ' NOME : ' +
              uppercase(qrImpressaoCozinha.FieldByName('nome_mesa').Asstring);
          end
          // Monta o cabeçalho para delivery
          else if qrImpressaoCozinha.FieldByName('tipo_venda').Asstring = 'D'
          then
          begin
            str_aux := qrImpressaoCozinha.FieldByName('mesa_delivery').Asstring;
            if not qrImpressaoCozinha.FieldByName('b_taxa_entrega').AsBoolean
            then
            begin
              str_aux := str_aux + ' - RETIRADA NO BALCÃO';
            end;
          end
          else // balcão
          begin
            str_aux := qrImpressaoCozinha.FieldByName('mesa_delivery').Asstring;
          end;

          ultimo_fracionado := 0;
          int_aux := Length('PEDIDO: ' + qrImpressaoCozinha.FieldByName
            ('nro_venda').Asstring + ' ');

          str_impressao := '</zera>' + slinebreak;

          if (qrImpressaoCozinha.FieldByName('tipo_venda').Asstring = 'B') and (bImprimeDestaque) then
          begin
            str_impressao := str_impressao + '<n><e><ce>' + 'P E D I D O: ' + qrImpressaoCozinha.FieldByName('nro_venda').Asstring + '</ce></e></n>' + slinebreak;
          end;

//          str_impressao := '</zera>' + slinebreak + '</linha_dupla>' +
          str_impressao := str_impressao + '</linha_dupla>' +
            slinebreak + tag_expandida + '<n>' + str_aux + '</n>' +
            tag_expandida_fechar + slinebreak + '</linha_dupla>' + tag_expandida
            + slinebreak + 'EMISSÃO: ' + str_datahora + slinebreak +
            QuebraLinhaItemCupom(qrImpressaoCozinha.FieldByName('GARCOM')
            .Asstring, largura_aux - int_aux,
            'PEDIDO: ' + qrImpressaoCozinha.FieldByName('nro_venda').Asstring +
            ' ') + tag_expandida_fechar + slinebreak;

          if qrImpressaoCozinhaCli.RecordCount > 0 then
          begin
            str_impressao := str_impressao + tag_expandida + 'CLIENTE: ' +
              qrImpressaoCozinhaCli.FieldByName('cli_002').Asstring +
              tag_expandida_fechar + slinebreak;
            if imprime_endereco_cliente then
            begin
              str_impressao := str_impressao + tag_expandida +
                qrImpressaoCozinhaCli.FieldByName('cep_004').Asstring +
                slinebreak + qrImpressaoCozinhaCli.FieldByName('cep_003')
                .Asstring + tag_expandida_fechar + slinebreak;
            end;

            // Se houver dado de agendamento do delivery
            if (qrImpressaoCozinha.FieldByName('tipo_venda').Asstring = 'D') and
              (not qrImpressaoCozinha.FieldByName('data_agendamento').IsNull)
            then
            begin
              str_impressao := str_impressao + tag_expandida +
                'DATA AGENDAMENTO: ' + formatdatetime('dd/mm/yyyy hh:nn',
                qrImpressaoCozinha.FieldByName('data_agendamento').AsDateTime +
                qrImpressaoCozinha.FieldByName('hora_agendamento').AsDateTime) +
                tag_expandida_fechar + slinebreak;
            end;

          end;

          str_impressao := str_impressao + '</linha_dupla>' + tag_expandida +
            slinebreak + 'QTDE   DESCRIÇÃO' + tag_expandida_fechar + slinebreak
            + '</linha_dupla>' + slinebreak;

          // fim do cabeçalho

          // adiciona os itens
          qrImpressaoCozinha.first;
          while not qrImpressaoCozinha.Eof do
          begin
            flag_fracionado := qrImpressaoCozinha.FieldByName('item_fracionado')
              .AsInteger > 0;
            flag_ingredientes := qrImpressaoCozinhaIngr.RecordCount > 0;
            flag_opcionais := qrImpressaoCozinhaObs.RecordCount > 0;

            // inicia os itens fracionados com uma linha... ou caso haja observação
            if flag_fracionado then
            begin
              if qrImpressaoCozinha.FieldByName('item_fracionado').AsInteger <> ultimo_fracionado
              then
                str_impressao := str_impressao + tag_expandida + '</ce><n>' +
                  AcertaTexto('ITEM FRACIONADO', 'C', largura_aux, '-') + '</n>'
                  + tag_expandida_fechar + slinebreak + '</ae>';

              ultimo_fracionado := qrImpressaoCozinha.FieldByName
                ('item_fracionado').AsInteger;
            end
            else if flag_ingredientes or flag_opcionais then
            begin
              str_impressao := str_impressao + '</linha_simples>' + slinebreak;
            end;

            int_aux :=
              Length(AcertaTexto(qrImpressaoCozinha.FieldByName('quantidade')
              .Asstring, 'E', 7, ' '));

            str_impressao := str_impressao + tag_expandida +
              QuebraLinhaItemCupom(qrImpressaoCozinha.FieldByName('produto')
              .Asstring, largura_aux - int_aux,
              AcertaTexto(qrImpressaoCozinha.FieldByName('quantidade').Asstring,
              'E', 7, ' ')) + tag_expandida_fechar + slinebreak;

            // imprime ingredientes
            if flag_ingredientes then
            begin
              str_impressao := str_impressao + '<n>' + ReplicarCaracter(' ', 5)
                + 'INGREDIENTES' + slinebreak;
              // anteriormente eram 9 espaços a esquerda
              qrImpressaoCozinhaIngr.first;
              while not qrImpressaoCozinhaIngr.Eof do
              begin
                int_aux := Length(ReplicarCaracter(' ', 5) +
                  // anteriormente eram 9 espaços a esquerda
                  AcertaTexto(format('%.3f',
                  [qrImpressaoCozinhaIngr.FieldByName('quantidade').AsFloat]),
                  'E', 7, ' '));

                str_impressao := str_impressao + QuebraLinhaItemCupom
                  (qrImpressaoCozinhaIngr.FieldByName('unidade').Asstring + ' '
                  + qrImpressaoCozinhaIngr.FieldByName('descricao').Asstring,
                  largura_colunas - int_aux, ReplicarCaracter(' ', 5) +
                  // anteriormente eram 9 espaços a esquerda
                  AcertaTexto(format('%.3f',
                  [qrImpressaoCozinhaIngr.FieldByName('quantidade').AsFloat]),
                  'E', 7, ' ')) + slinebreak;
                qrImpressaoCozinhaIngr.Next;
              end;
              str_impressao := str_impressao + '</n>';
            end;

            // imprime as observações / adicionais
            if flag_opcionais then
            begin
              qrImpressaoCozinhaObs.first;
              while not qrImpressaoCozinhaObs.Eof do
              begin
                str_impressao := str_impressao + tag_expandida + '<n>' + '    '
                  + qrImpressaoCozinhaObs.FieldByName('observacao').Asstring +
                  '</n>' + tag_expandida_fechar + slinebreak;
                qrImpressaoCozinhaObs.Next;
              end;
            end;

            if (flag_ingredientes or flag_opcionais) and (not flag_fracionado)
            then
            begin
              str_impressao := str_impressao + '</linha_simples>' + slinebreak;
            end
            else if flag_fracionado then
            begin
              // verifica se o proximo item faz parte da composição de fracionados
              if qrImpressaoCozinha.RecNo < qrImpressaoCozinha.RecordCount then
              begin
                qrImpressaoCozinha.Next;
                if ultimo_fracionado <> qrImpressaoCozinha.FieldByName
                  ('item_fracionado').AsInteger then
                  str_impressao := str_impressao + '</linha_simples>' +
                    slinebreak;

                // volta...
                qrImpressaoCozinha.prior;
              end;

            end;
            qrImpressaoCozinha.Next;
          end;
          str_impressao := str_impressao + '</linha_dupla>' + slinebreak +
            '</corte_total>';

          if frmMenu.ConfiguraImpressoraPOS(sImpressoraPOS) then
          begin
            for I := 1 to quantidade_vias do
              frmMenu.ACBrPosPrinter1.Imprimir(str_impressao);
          end;
        end;

      except
        on E: Exception do
        begin
          application.MessageBox
            (pchar('Não foi possível imprimir os pedidos na impressora ' +
            sImpressora + slinebreak + 'Detalhes do erro: ' + E.Message),
            'Atenção', MB_ICONWARNING);
          // volta o status do item para pendente de impressao
          str_sql := ' UPDATE VENDAITEM SET ITE_008 = ''N'', ITE_011 = ''N''' +
            ' WHERE VEN_001 = :VEN ' + ' AND ITE_013 = :IMP ' +
            ' AND EMP_001 = :EMP ';
          executacomandosql(str_sql,
            vararrayof([qr_aux1.FieldByName('ven_001').AsInteger,
            qr_aux1.FieldByName('ite_013').AsInteger, RecProj.iEmp]));
        end;
      end;
      qr_aux1.Next;
    end;

    // Atualiza o Status do Item do Pedido pra não ser mais impresso
    qr_aux1.first;
    while not qr_aux1.Eof do
    begin
      str_sql :=
        ' UPDATE VENDAITEM SET ITE_008 = ''S'', ITE_011 = ''N'', quantidade_impressao=0'
        + ' WHERE VEN_001 = :VEN' + '   AND ITE_013 = :IMP' +
        '   AND EMP_001 = :EMP';
      executacomandosql(str_sql,
        vararrayof([qr_aux1.FieldByName('ven_001').AsInteger,
        qr_aux1.FieldByName('ite_013').AsInteger, RecProj.iEmp]));
      qr_aux1.Next;
    end;

  finally
    TmImpMobile.Enabled := true;
  end;
  qrImpressaoCozinha.Close;
  qrImpressaoCozinhaIngr.Close;
  qrImpressaoCozinhaObs.Close;
  qrImpressaoCozinhaCli.Close;
  qr_aux1.Destroy;
end;

procedure TfrmMenu.ImprimePrefechamentoMobile;
var
  formRelatoriosMesa: TfrmControleMesaRelatorios;
  qr_aux: TUniQuery;
  str_sql: string;
begin
  qr_aux := CriaUniQuery(self, conexao);
  str_sql :=
    format('select ven_001 as id_venda from venda where emp_001=%d and sit_001=21 and imprimir_prefechamento_mobile',
    [RecProj.iEmp]);
  if ExecutaConsultaSQL(qr_aux, str_sql) then
  begin
    formRelatoriosMesa := TfrmControleMesaRelatorios.Create(self);
    qr_aux.first;
    while not qr_aux.Eof do
    begin
      formRelatoriosMesa.ImprimeVenda(qr_aux.FieldByName('id_venda').AsInteger);
      // limpa o status de pendente impressao apra a venda
      str_sql :=
        format('update venda set imprimir_prefechamento_mobile=false where ven_001=%d and emp_001=%d ',
        [qr_aux.FieldByName('id_venda').AsInteger, RecProj.iEmp]);
      executacomandosql(str_sql);
      qr_aux.Next;
    end;
    formRelatoriosMesa.Free;
  end;
end;

procedure TfrmMenu.tmStatusTimer(Sender: TObject);
var
  str_aux, str_liberacao: string;
begin
  if RecProj.iIDCaixa = 0 then
  begin
    str_aux := 'CAIXA FECHADO';
  end
  else
  begin
    str_aux := format('CAIXA ABERTO: (%d - %s) ABERTURA: %s %s',
      [RecProj.iIDCaixa, RecProj.sUsuarioCaixa, formatdatetime('dd/mm/yyyy',
      RecProj.dCaixaDataAbertura), formatdatetime('hh:nn',
      RecProj.dCaixaHoraAbertura)]);
  end;

  str_liberacao := 'VALIDADE DA LICENÇA: ' + formatdatetime('dd/mm/yyyy',
    RecProj.dValidadeLiberacao);
  StatusBar1.Panels[0].Text := str_liberacao;
  StatusBar1.Panels[1].Text := RecProj.sUsuario;
  StatusBar1.Panels[2].Text := 'SERVIDOR: ' + conexao.Server;
  StatusBar1.Panels[3].Text := 'PC LOCAL: ' + NomeDoTerminal;
  StatusBar1.Panels[4].Text := str_aux;
  StatusBar1.Panels[5].Text := RecProj.sEmp;
end;

procedure TfrmMenu.SadaRetirada1Click(Sender: TObject);
begin
  frmCaixaLancaMovimento := tfrmCaixaLancaMovimento.Create(self, 'S');
  frmCaixaLancaMovimento.ShowModal;
  FreeAndNil(frmCaixaLancaMovimento);
end;

function TfrmMenu.SeqPedido: integer;
var
  qrAux: TUniQuery;
begin
  result := 1;
  //
  qrAux := TUniQuery.Create(nil);
  try
    with qrAux, SQL do
    begin
      Connection := frmMenu.conexao;
      Close;
      Clear;
      add('SELECT COALESCE(MAX(VEN_029), 0) + 1 AS SEQ FROM VENDA');
      add('WHERE VEN_024 = ''M'' ');
      add('  AND VEN_028 = ''N'' ');
      add('  AND SIT_001 IN (1, 8, 20)');
      Open;
    end;
    //
    result := (qrAux.FieldByName('SEQ').AsInteger);
  finally
    FreeAndNil(qrAux);
  end;
end;

initialization

end.
