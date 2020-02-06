unit uControlemesalancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  Vcl.StdCtrls, cxDBEdit, JvExStdCtrls, JvEdit, JvValidateEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxGridLevel, cxGridCardView, cxGridDBCardView,
  cxGridCustomLayoutView, cxGridChartView, cxGridDBChartView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  MemDS, DBAccess, Uni, Vcl.DBCtrls, Vcl.ExtCtrls, AdvGlowButton, AdvPanel,
  dxGDIPlusClasses, System.Actions, Vcl.ActnList, acbrbal, acbrdevice, ACBrBase,
  System.math,
  JvDataSource, Datasnap.Provider, Datasnap.DBClient, Vcl.Menus, cxLabel,
  cxDBLabel;

type
  TfrmControlemesalancamento = class(TfrmModelo)
    Panel8: TPanel;
    dbtTotalVenda: TDBText;
    lbTotalVenda: TLabel;
    Panel11: TPanel;
    DBText9: TDBText;
    Label10: TLabel;
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
    qrVendaItemordem_item: TLargeintField;
    qrVendaItemvalor_desconto: TFloatField;
    qrVendaItemid_material: TIntegerField;
    qrVendaItemdescricao_item_sem_tamanho: TWideStringField;
    qrVendaItemdesc_tamanho: TWideStringField;
    qrVendaItemitem_fracionado: TIntegerField;
    qrVendaItemgar_001: TIntegerField;
    qrVendaItemite_013: TIntegerField;
    qrVendaItemb_venda_tamanho: TBooleanField;
    qrVendaItemtamanho: TWideStringField;
    qrVendaItemite_012: TWideStringField;
    qrVendaItemite_011: TWideStringField;
    qrVendaItemite_008: TWideStringField;
    qrVendaItemquantidade_impressao: TFloatField;
    qrVendaItemacrescimo: TFloatField;
    qrVendaItemdata_hora_lancamento: TDateTimeField;
    qrVendaItemdesconto_perc: TFloatField;
    qrVendaItemtipo_venda: TWideStringField;
    qrVendaItemdescricao_mesa: TWideStringField;
    qrVendaItemnro_venda: TIntegerField;
    qrVendaItemfracionado: TWideStringField;
    qrVendaItemb_70pc_valor_unit: TBooleanField;
    qrVendaItemqtdevenda_old: TFloatField;
    qrVendaItemnome_garcom: TWideStringField;
    qrVendaItemjustificativa_cancelamento: TWideStringField;
    dsVendaItem: TDataSource;
    cxGridVendaItem: TcxGrid;
    cxGridVendaItemDBTableView1: TcxGridDBTableView;
    cxGridVendaItemDBTableView1descricao_item: TcxGridDBColumn;
    cxGridVendaItemDBTableView1vlrvenda: TcxGridDBColumn;
    cxGridVendaItemDBTableView1qtdevenda: TcxGridDBColumn;
    cxGridVendaItemDBTableView1desconto: TcxGridDBColumn;
    cxGridVendaItemDBTableView1valor_total: TcxGridDBColumn;
    cxGridVendaItemDBTableView1hora: TcxGridDBColumn;
    cxGridVendaItemDBTableView170pc: TcxGridDBColumn;
    cxGridVendaItemDBTableView1nome_garcom: TcxGridDBColumn;
    cxGridVendaItemDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridVendaItemDBChartView1: TcxGridDBChartView;
    cxGridVendaItemDBCardView1: TcxGridDBCardView;
    cxGridVendaItemDBCardView1id_venda: TcxGridDBCardViewRow;
    cxGridVendaItemDBCardView1id_empresa: TcxGridDBCardViewRow;
    cxGridVendaItemDBCardView1nro_item: TcxGridDBCardViewRow;
    cxGridVendaItemDBCardView1id_opcional: TcxGridDBCardViewRow;
    cxGridVendaItemDBCardView1descricao: TcxGridDBCardViewRow;
    cxGridVendaItemDBCardView1valor: TcxGridDBCardViewRow;
    cxGridVendaItemDBCardView1ord: TcxGridDBCardViewRow;
    cxGridVendaItemLevel1: TcxGridLevel;
    cxGridVendaItemLevel2: TcxGridLevel;
    edCodProduto: TcxButtonEdit;
    edQuantidade: TJvValidateEdit;
    edValor: TJvValidateEdit;
    edCodGarcom: TcxDBButtonEdit;
    Label5: TLabel;
    cbImpressora: TComboBox;
    btInserir: TAdvGlowButton;
    edObservacaoItem: TEdit;
    Label1: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    imgMesa: TImage;
    ImgComanda: TImage;
    lblNumero_mesa_comanda: TLabel;
    ActionList1: TActionList;
    acPreFechamentoImprimir: TAction;
    acFecharMesa: TAction;
    acTranferenciaMesa: TAction;
    acJuntarMesas: TAction;
    acPagamentoAntecipado: TAction;
    acCancelaMesa: TAction;
    acPesquisarItem: TAction;
    acCancelaItem: TAction;
    acDescontoItem: TAction;
    acObservacaoItem: TAction;
    acReservarMesa: TAction;
    acImprimirPrevia: TAction;
    acTransferirGarcom: TAction;
    acAlterarTituloMesa: TAction;
    acPesquisaGarcom: TAction;
    acAlteraPessoas: TAction;
    acInsereProdutoFracionado: TAction;
    acOpcionaisItem: TAction;
    acTransferenciaItem: TAction;
    acAlterarQuantidadeItem: TAction;
    btConfiguracoes: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    btInserirItem: TAdvGlowButton;
    btTransf: TAdvGlowButton;
    btJuntar: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    Label8: TLabel;
    Shape1: TShape;
    ACBrBAL1: TACBrBAL;
    qrVendaMesa: TUniQuery;
    qrVendaMesaid_mesa: TIntegerField;
    qrVendaMesaid_venda: TIntegerField;
    qrVendaMesanro_mesa: TIntegerField;
    qrVendaMesadescricao_mesa: TWideStringField;
    qrVendaMesavalor_venda: TFloatField;
    qrVendaMesastatus: TIntegerField;
    qrVendaMesacod_venda: TIntegerField;
    qrVendaMesadesc_status: TWideStringField;
    qrVendaMesanro_nome_mesa: TWideStringField;
    qrVendaMesaobs_mesa: TWideStringField;
    qrVendaMesanome_reserva: TWideStringField;
    qrVendaMesatelefone_reserva: TWideStringField;
    qrVendaMesadata_reserva: TDateField;
    qrVendaMesahora_reserva: TTimeField;
    qrVendaMesadata_atual: TDateTimeField;
    qrVendaMesadata_abertura: TDateTimeField;
    qrVendaMesanro_pessoas: TIntegerField;
    qrVendaMesanro_couvert_m: TIntegerField;
    qrVendaMesanro_couvert_f: TIntegerField;
    qrVendaMesacpf_cliente: TWideStringField;
    qrVendaMesavalor_antecipado: TFloatField;
    qrVendaMesatipo_venda: TWideStringField;
    qrVendaMesavalor_pendente: TFloatField;
    dsVendaMesa: TDataSource;
    qrBuscaItem: TUniQuery;
    qrBuscaItemid_material: TIntegerField;
    qrBuscaItemdescricao: TWideStringField;
    qrBuscaItemunidade: TWideStringField;
    qrBuscaItemvalor_unit: TFloatField;
    qrBuscaItemcod_ref: TWideStringField;
    qrBuscaItemvalortotal: TCurrencyField;
    qrBuscaItemultimo_item: TIntegerField;
    qrBuscaItemid_garcom: TIntegerField;
    qrBuscaItemnome_garcom: TWideStringField;
    qrBuscaItemcod_impressora: TIntegerField;
    qrBuscaItemvalor_unit_old: TFloatField;
    qrBuscaItemquantidade: TFloatField;
    qrBuscaItemdescricao_old: TWideStringField;
    qrBuscaItemdescricao_p: TWideStringField;
    qrBuscaItemdescricao_m: TWideStringField;
    qrBuscaItemdescricao_g: TWideStringField;
    qrBuscaItemdescricao_gg: TWideStringField;
    qrBuscaItemdescricao_extra: TWideStringField;
    qrBuscaItemtamanho_padrao: TWideStringField;
    qrBuscaItemb_venda_tamanho: TBooleanField;
    qrBuscaItemvalor_tam_p: TFloatField;
    qrBuscaItemvalor_tam_m: TFloatField;
    qrBuscaItemvalor_tam_g: TFloatField;
    qrBuscaItemvalor_tam_gg: TFloatField;
    qrBuscaItemvalor_tam_extra: TFloatField;
    qrBuscaItemb_peso_balanca: TBooleanField;
    qrBuscaItemid_categoria: TIntegerField;
    qrBuscaItemb_exige_alterar_preco_venda: TBooleanField;
    qrBuscaItemsituacao: TIntegerField;
    qrBuscaItemtara_balanca: TFloatField;
    qrBuscaItemb_exige_70pc_valor_unit: TBooleanField;
    dsBuscaItem: TDataSource;
    qrInsereItem: TUniQuery;
    jvdsBuscaItem: TJvDataSource;
    Label3: TLabel;
    Label4: TLabel;
    qrVendaPagAntecipado: TUniQuery;
    qrVendaPagAntecipadoid_formapgto: TIntegerField;
    qrVendaPagAntecipadovalor: TFloatField;
    qrVendaPagAntecipadodesc_forma: TWideMemoField;
    dsVendaPagAntecipado: TDataSource;
    qrVendaItemOpcionalObs: TUniQuery;
    qrVendaItemOpcionalObsid_venda: TIntegerField;
    qrVendaItemOpcionalObsid_empresa: TIntegerField;
    qrVendaItemOpcionalObsnro_item: TIntegerField;
    qrVendaItemOpcionalObsid_opcional: TIntegerField;
    qrVendaItemOpcionalObsdescricao: TWideStringField;
    qrVendaItemOpcionalObsvalor: TFloatField;
    qrVendaItemOpcionalObsord: TIntegerField;
    dsVendaItemOpcionalObs: TDataSource;
    lbPagPendente: TLabel;
    dbtPagPendente: TDBText;
    Label9: TLabel;
    lbPagAntecipado: TLabel;
    Label14: TLabel;
    dbtPagAntecipado: TDBText;
    DBText3: TDBText;
    Panel1: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    btCancelar: TAdvGlowButton;
    btReservar: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    btFechar: TAdvGlowButton;
    puPopupOpcoesItem: TPopupMenu;
    CancelaritemF31: TMenuItem;
    DescontonoitemCtrlD1: TMenuItem;
    ObsnoitemCtrlS1: TMenuItem;
    N1: TMenuItem;
    qrAux1: TUniQuery;
    AdvGlowButton3: TAdvGlowButton;
    acImpressaoCozinha: TAction;
    AdvGlowButton10: TAdvGlowButton;
    AdvGlowButton11: TAdvGlowButton;
    AdvGlowButton12: TAdvGlowButton;
    acSalvarFechar: TAction;
    DBText1: TDBText;
    qrTotais: TUniQuery;
    qrTotaistotal_itens: TFloatField;
    qrTotaistotal_desconto: TFloatField;
    dsTotais: TDataSource;
    acTransferenciamesacomanda: TAction;
    cxDBLabel1: TcxDBLabel;
    procedure acTranferenciaMesaExecute(Sender: TObject);
    procedure CarregaParametrosConfig;
    procedure acJuntarMesasExecute(Sender: TObject);
    procedure AtualizaTotalMesa(iVenda: Integer);
    procedure acObservacaoItemExecute(Sender: TObject);
    procedure edCodProdutoExit(Sender: TObject);
    procedure edQuantidadeChange(Sender: TObject);
    procedure edQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edValorChange(Sender: TObject);
    procedure edObservacaoItemEnter(Sender: TObject);
    procedure edObservacaoItemExit(Sender: TObject);
    procedure edCodGarcomEnter(Sender: TObject);
    procedure cbImpressoraEnter(Sender: TObject);
    procedure cbImpressoraChange(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure acOpcionaisItemExecute(Sender: TObject);
    procedure acInsereProdutoFracionadoExecute(Sender: TObject);
    procedure acAlterarQuantidadeItemExecute(Sender: TObject);
    procedure acCancelaItemExecute(Sender: TObject);
    procedure acPesquisarItemExecute(Sender: TObject);
    constructor create(Sender: tcomponent; numero_mesa_comanda: Integer;
      tipo_filtro: string); reintroduce;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qrBuscaItemAfterOpen(DataSet: TDataSet);
    procedure qrBuscaItemCalcFields(DataSet: TDataSet);
    procedure qrVendaMesaAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure acDescontoItemExecute(Sender: TObject);
    procedure acReservarMesaExecute(Sender: TObject);
    procedure acPreFechamentoImprimirExecute(Sender: TObject);
    procedure acTransferenciaItemExecute(Sender: TObject);
    procedure acFecharMesaExecute(Sender: TObject);
    procedure cxGridVendaItemDBTableView1StylesGetContentStyle
      (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure acCancelaMesaExecute(Sender: TObject);
    procedure qrBuscaItemquantidadeChange(Sender: TField);
    procedure qrBuscaItemquantidadeValidate(Sender: TField);
    procedure EnviarCozinha(reimpressao: boolean);
    procedure acImpressaoCozinhaExecute(Sender: TObject);
    procedure acPagamentoAntecipadoExecute(Sender: TObject);
    procedure ValidaAcoesStatusMesas;
    procedure qrVendaMesaAfterOpen(DataSet: TDataSet);
    procedure qrVendaItemBeforeOpen(DataSet: TDataSet);
    procedure qrVendaPagAntecipadoBeforeOpen(DataSet: TDataSet);
    procedure acPesquisaGarcomExecute(Sender: TObject);
    procedure cbImpressoraExit(Sender: TObject);
    procedure qrBuscaItemid_garcomChange(Sender: TField);
    procedure acSalvarFecharExecute(Sender: TObject);
    procedure ACBrBAL1LePeso(Peso: Double; Resposta: AnsiString);
    procedure acTransferenciamesacomandaExecute(Sender: TObject);
  private
    numero: Integer;
    bAgruparItensIguais: boolean;
  public
    iTimeOutBalanca, vendaSelecionada: Integer;
    tipoVendaSelecionada, tipo_venda: string;

    bExigeSenhaTranferenciaMesa, bUtilizaBalanca,
      bAlteraValorUnitarioItemUsuario, bFracionadoMaiorValorMesa,
      bFracionadoMaiorValorComanda, bTaxaAdicionalMesa, bTaxaAdicionalComanda,
      bAlteraValorUnitarioItemMesa, bUtilizaSelecaoPrecos,
      bAlteraValorUnitarioItemcomanda, bExigeSenhaCancelamentoItemMesa,
      bExigeSenhaCancelamentoItemComanda, bAgruparItensIguaisMesa,
      bAgruparItensIguaisComanda, bOcultaValoresMesa, bOcultaValoresComanda,
      bExigeSenhaJuntarMesa, bExigeSenhaJuntarComanda, bExige70pcVlUnitMesa,
      bExige70pcVlUnitComanda, bExige70pcFracionadoCatDiffComanda,
      bExige70pcFracionadoCatDiffMesa, bExigesenhaprefechamentomesa,
      bExigesenhaprefechamentocomanda, bExigesenhafechamentocomanda,
      bLancandoItens, bExigePreFechamentoMesa, bExigePreFechamentoComanda,
      bExigesenhafechamentomesa: boolean;

    fValorCouvertMascMesa, fValorCouvertFemMesa, fValorCouvertMascComanda,
      fValorCouvertFemComanda: Double;

    largura_cod_barras, largura_cod_barras_produto, cod_barras_digito_1: Integer;
  end;

var
  frmControlemesalancamento: TfrmControlemesalancamento;

implementation

{$R *.dfm}

uses uMenu, uControleMesaJuntarTransferir, uFuncoes, uControleMesaJuntar,
  Funcao_DB, uBuscaRegistro, uControleMesaItensAcoes, uVendaSelecaoPreco,
  uVendaItemFracionado, uVendaSelecaoTamanho, uControleMesa,
  uControleMesaReservar, uFechamentoMesaComanda, uControleMesaRelatorios,
  uTransferenciaiten, uControleMesaFechamento, uLogin,
  uControleMesaImpressaoCozinha, uControleMesaPagamentoAntecipado,
  uImportamesaecomanda;

procedure TfrmControlemesalancamento.CarregaParametrosConfig;
begin
  bExigeSenhaTranferenciaMesa := LerBooleanConfig('CKEXIGIRSENHATRANSFMESA',
    frmmenu.cdsCFG.FileName);
  buscacampo(bAlteraValorUnitarioItemUsuario,
    'select b_alteracao_precou_venda from usuarios where usu_001=' +
    inttostr(recproj.iUsuario), '', false);
  bUtilizaSelecaoPrecos := LerBooleanConfig('ckUtilizar_selecao_precos',
    frmmenu.cdsCFG.FileName);
  bAlteraValorUnitarioItemMesa :=
    LerBooleanConfig('CKHABILITARALTERARVALORUNITARIO',
    frmmenu.cdsCFG.FileName);
  bAlteraValorUnitarioItemcomanda :=
    LerBooleanConfig('CKHABILITARALTERARVALORUNITARIOCOMANDA',
    frmmenu.cdsCFG.FileName);
  bAgruparItensIguaisMesa := LerBooleanConfig('CKAGRUPARITENSIGUAISMESA',
    frmmenu.cdsCFG.FileName);
  bAgruparItensIguaisComanda := LerBooleanConfig('CKAGRUPARITENSIGUAISCOMANDA',
    frmmenu.cdsCFG.FileName);
  bExigeSenhaJuntarMesa := LerBooleanConfig('CKEXIGIRSENHAJUNTARMESA',
    frmmenu.cdsCFG.FileName);
  bExigesenhaprefechamentocomanda :=
    LerBooleanConfig('CKEXIGIRSENHAPREFECHAMENTOCOMANDA',
    frmmenu.cdsCFG.FileName);
  bExigesenhafechamentocomanda :=
    LerBooleanConfig('CKEXIGIRSENHAFECHAMENTOCOMANDA', frmmenu.cdsCFG.FileName);
  bExigesenhafechamentomesa := LerBooleanConfig('CKEXIGIRSENHAFECHAMENTOMESA',
    frmmenu.cdsCFG.FileName);
  bExige70pcVlUnitMesa := LerBooleanConfig('CKEXIGIR70PCVALORUNITMESA',
    frmmenu.cdsCFG.FileName);
  bExige70pcVlUnitComanda := LerBooleanConfig('CKEXIGIR70PCVALORUNITCOMANDA',
    frmmenu.cdsCFG.FileName);
  bExige70pcFracionadoCatDiffMesa :=
    LerBooleanConfig('CKFRACIONADO70PCCATDIFFMESA', frmmenu.cdsCFG.FileName);
  bExige70pcFracionadoCatDiffComanda :=
    LerBooleanConfig('CKFRACIONADO70PCCATDIFFCOMANDA', frmmenu.cdsCFG.FileName);
  bExigeSenhaCancelamentoItemMesa :=
    LerBooleanConfig('CKEXIGIRSENHACANCELAMENTOITENS', frmmenu.cdsCFG.FileName);
  bExigeSenhaCancelamentoItemComanda :=
    LerBooleanConfig('CKEXIGIRSENHACANCELAMENTOITENSCOMANDA',
    frmmenu.cdsCFG.FileName);
  bUtilizaBalanca := LerBooleanConfig('CKUTILIZABALANCA',
    frmmenu.cdsCFG.FileName);
  bFracionadoMaiorValorMesa := LerBooleanConfig('CKFACIONADOMAIORVALORMESA',
    frmmenu.cdsCFG.FileName);
  bFracionadoMaiorValorComanda :=
    LerBooleanConfig('CKFACIONADOMAIORVALORCOMANDA', frmmenu.cdsCFG.FileName);
  bTaxaAdicionalMesa := LerBooleanConfig('TAXAADICIONAL',
    frmmenu.cdsCFG.FileName);
  bTaxaAdicionalComanda := LerBooleanConfig('TAXAADICIONALCOMANDA',
    frmmenu.cdsCFG.FileName);
  iTimeOutBalanca := LerIntegerConfig('EDBALANCATIMEOUT',
    frmmenu.cdsCFG.FileName);
  bExigePreFechamentoMesa := LerBooleanConfig('CKEXIGEPREFECHAMENTOMESA',
    frmmenu.cdsCFG.FileName);
  bExigePreFechamentoComanda := LerBooleanConfig('CKEXIGEPREFECHAMENTOCOMANDA',
    frmmenu.cdsCFG.FileName);
  bOcultaValoresMesa := LerBooleanConfig('CKOCULTARVALORESMESA',
    frmmenu.cdsCFG.FileName);
  bOcultaValoresComanda := LerBooleanConfig('CKOCULTARVALORESCOMANDA',
    frmmenu.cdsCFG.FileName);
  largura_cod_barras :=  LerIntegerConfig ('EDBALANCALARGURACODIGOBARRAS', frmMenu.cdsCFG.FileName);
  largura_cod_barras_produto:= LerIntegerConfig ('EDBALANCALARGURACODIGOPRODUTO', frmMenu.cdsCFG.FileName);
  cod_barras_digito_1 :=   LerIntegerConfig ('EDBALANCACODIGOBARRASDIGITOINICIAL', frmMenu.cdsCFG.FileName);
end;

constructor TfrmControlemesalancamento.create(Sender: tcomponent;
  numero_mesa_comanda: Integer; tipo_filtro: string);
begin
  inherited create(Sender);
  numero := numero_mesa_comanda; // Numero da Mesa ou Comanda
  tipo_venda := tipo_filtro; // Tipo de venda se é Mesa Ou Comanda
  qrVendaMesa.Close;
  qrVendaMesa.ParamByName('emp').AsInteger := recproj.iEmp;
  qrVendaMesa.Open;
  qrVendaMesa.Locate('nro_mesa;tipo_venda',
    vararrayof([numero, tipo_venda]), []);

  edCodGarcom.Enabled := not frmControleMesa.bExigeGarconLancarItem;
end;

procedure TfrmControlemesalancamento.
  cxGridVendaItemDBTableView1StylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  if ARecord.Values[cxGridVendaItemDBTableView1desconto.Index] <> 0 then
    AStyle := frmmenu.cxDesconto
  else if ARecord.Values[cxGridVendaItemDBTableView170pc.Index] = true then
    AStyle := frmmenu.cxFundoVerde;
end;

procedure TfrmControlemesalancamento.FormShow(Sender: TObject);
begin
  if tipo_venda = 'M' then
  begin
    imgMesa.Visible := true;
    ImgComanda.Visible := false;
    lblNumero_mesa_comanda.Caption := 'MESA ' + inttostr(numero);
    bAgruparItensIguais := bAgruparItensIguaisMesa;

    lbTotalVenda.Visible := not bOcultaValoresMesa;
    lbPagAntecipado.Visible := not bOcultaValoresMesa;
    lbPagPendente.Visible := not bOcultaValoresMesa;
    dbtTotalVenda.Visible := not bOcultaValoresMesa;
    dbtPagAntecipado.Visible := not bOcultaValoresMesa;
    dbtPagPendente.Visible := not bOcultaValoresMesa;

    acFecharMesa.Caption := '&Fechar mesa [F6]';
    acCancelaMesa.Caption := 'Cancelar mesa [Ctrl+W]';
    acJuntarMesas.Caption := '&Juntar mesas [F9]';
    acReservarMesa.Caption := '&Reservar mesa [Ctrl+F]';
    acTranferenciaMesa.Caption := 'Transferir mesa [F8]';
  end
  else
  begin
    ImgComanda.Visible := true;
    imgMesa.Visible := false;
    lblNumero_mesa_comanda.Caption := 'COMANDA ' + inttostr(numero);
    bAgruparItensIguais := bAgruparItensIguaisComanda;

    lbTotalVenda.Visible := not bOcultaValoresComanda;
    lbPagAntecipado.Visible := not bOcultaValoresComanda;
    lbPagPendente.Visible := not bOcultaValoresComanda;
    dbtTotalVenda.Visible := not bOcultaValoresComanda;
    dbtPagAntecipado.Visible := not bOcultaValoresComanda;
    dbtPagPendente.Visible := not bOcultaValoresComanda;

    acFecharMesa.Caption := '&Fechar comanda [F6]';
    acCancelaMesa.Caption := 'Cancelar comanda [Ctrl+W]';
    acJuntarMesas.Caption := '&Juntar comandas [F9]';
    acReservarMesa.Caption := '&Reservar comanda [Ctrl+F]';
    acTranferenciaMesa.Caption := 'Transferir comanda [F8]';
  end;
  edCodProduto.SetFocus;
end;

procedure TfrmControlemesalancamento.qrBuscaItemAfterOpen(DataSet: TDataSet);
var
  tamanho: string;
  bAlteraValorUnitarioItem: boolean;
begin
  btInserirItem.Enabled := qrBuscaItem.RecordCount > 0;
  if qrBuscaItem.RecordCount > 0 then
  begin
    if qrBuscaItem.FieldByName('situacao').AsInteger = 3 then
    // Inicio  03/05/2017    Programador Rafael 03/05/2017
    begin
      Application.MessageBox
        ('Não foi possível fazer a venda desse produto, pois se encontra inativo!',
        'Atenção', MB_ICONWARNING + MB_OK);
      qrBuscaItem.Close;
      edCodProduto.Clear;
      edCodProduto.SetFocus;
      abort;
    end; // Consulta da situação do produto   Programador Rafael  03/05/2017

    edQuantidade.Enabled := true;
    cbImpressora.ItemIndex := qrBuscaItem.FieldByName('cod_impressora')
      .AsInteger;
    if cbImpressora.ItemIndex >= 0 then
      cbImpressora.Text := cbImpressora.Items[cbImpressora.ItemIndex]
    else
      cbImpressora.Text := '';

    if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
      bAlteraValorUnitarioItem := bAlteraValorUnitarioItemMesa
    else
      bAlteraValorUnitarioItem := bAlteraValorUnitarioItemcomanda;

    edValor.Enabled := bAlteraValorUnitarioItem and
      bAlteraValorUnitarioItemUsuario;

    if not edValor.Enabled then
      edValor.Enabled := qrBuscaItem.FieldByName('b_exige_alterar_preco_venda')
        .asBoolean;

    qrBuscaItem.Edit;

    // verifica se o item é vendido por tamanho
    if qrBuscaItem.FieldByName('b_venda_tamanho').asBoolean then
    begin
      frmVendaSelecaoTamanho := TfrmVendaSelecaoTamanho.create(self,
        qrBuscaItem.FieldByName('id_material').AsInteger);
      frmVendaSelecaoTamanho.ShowModal;
      if frmVendaSelecaoTamanho.tag = 1 then
      begin
        tamanho := frmVendaSelecaoTamanho.tamanho;
        qrBuscaItem.FieldByName('tamanho_padrao').asstring := tamanho;
        if tamanho = 'P' then
        begin
          qrBuscaItem.FieldByName('descricao').asstring :=
            qrBuscaItem.FieldByName('descricao_p').asstring;
          qrBuscaItem.FieldByName('valor_unit').AsFloat :=
            qrBuscaItem.FieldByName('valor_tam_p').AsFloat;
        end
        else if tamanho = 'M' then
        begin
          qrBuscaItem.FieldByName('descricao').asstring :=
            qrBuscaItem.FieldByName('descricao_m').asstring;
          qrBuscaItem.FieldByName('valor_unit').AsFloat :=
            qrBuscaItem.FieldByName('valor_tam_m').AsFloat;
        end
        else if tamanho = 'G' then
        begin
          qrBuscaItem.FieldByName('descricao').asstring :=
            qrBuscaItem.FieldByName('descricao_g').asstring;
          qrBuscaItem.FieldByName('valor_unit').AsFloat :=
            qrBuscaItem.FieldByName('valor_tam_g').AsFloat;
        end
        else if tamanho = 'GG' then
        begin
          qrBuscaItem.FieldByName('descricao').asstring :=
            qrBuscaItem.FieldByName('descricao_gg').asstring;
          qrBuscaItem.FieldByName('valor_unit').AsFloat :=
            qrBuscaItem.FieldByName('valor_tam_gg').AsFloat;
        end
        else if tamanho = 'E' then
        begin
          qrBuscaItem.FieldByName('descricao').asstring :=
            qrBuscaItem.FieldByName('descricao_extra').asstring;
          qrBuscaItem.FieldByName('valor_unit').AsFloat :=
            qrBuscaItem.FieldByName('valor_tam_extra').AsFloat;
        end
        else
          qrBuscaItem.FieldByName('descricao').asstring :=
            qrBuscaItem.FieldByName('descricao_old').asstring;
      end;
      frmVendaSelecaoTamanho.Free;
    end;

    // verifica se o item é vendido por peso e se a balança está habilitada
    if qrBuscaItem.FieldByName('b_peso_balanca').asBoolean and bUtilizaBalanca
    then
    begin
      try
        edQuantidade.Enabled := false;
        // se houver conexão aberta, Fecha a conexão
        if ACBrBAL1.Ativo then
          ACBrBAL1.Desativar;
        // Conecta com a balança
        ACBrBAL1.Ativar;
        // lê o peso na balança
        ACBrBAL1.LePeso(iTimeOutBalanca);
        ACBrBAL1.Desativar;
      except
        on E: Exception do
        begin
          Application.MessageBox
            (pchar('Erro ao obter o peso da balança! Verifique se a balança está ligada e conectada ao computador e se as configurações estão corretas.'
            + #13#10 + E.Message + E.ClassName), 'Atenção', MB_ICONERROR);
          qrBuscaItem.FieldByName('quantidade').AsFloat := 0;
        end;
      end;

      if qrBuscaItem.FieldByName('quantidade').AsFloat <= 0 then
      begin
        qrBuscaItem.Close;
        edObservacaoItem.Clear;
        edCodProduto.Clear;
        cbImpressora.Text := '';
        if edCodProduto.CanFocus then
          edCodProduto.SetFocus;
        abort;
      end;
    end;

    if edQuantidade.CanFocus then
      edQuantidade.SetFocus
    else if edValor.CanFocus then
      edValor.SetFocus
    else
      edObservacaoItem.SetFocus;

  end;
end;

procedure TfrmControlemesalancamento.qrBuscaItemCalcFields(DataSet: TDataSet);
var
  teste: Double;
begin // Calcula o preço do produto x Quantidade

  qrBuscaItem.FieldByName('valor_total').AsFloat :=
    qrBuscaItem.FieldByName('valor_unit').AsFloat * qrBuscaItem.FieldByName
    ('quantidade').AsFloat;
end;

procedure TfrmControlemesalancamento.qrBuscaItemid_garcomChange(Sender: TField);
var
  qry_aux: TUniQuery;
begin
  if qrBuscaItem.State in [dsEdit, dsInsert] then
  begin
    // busca o nome do garçom
    if not qrBuscaItem.FieldByName('id_garcom').IsNull then
    begin
      qry_aux := TUniQuery.create(self);
      qry_aux.Connection := frmmenu.conexao;
      qry_aux.sql.Add
        ('select usu_002 from usuarios where usu_001 =:id_garcom and b_funcao_garcom ');
      qry_aux.ParamByName('id_garcom').AsInteger :=
        qrBuscaItem.FieldByName('id_garcom').AsInteger;
      qry_aux.Open;
      if qry_aux.RecordCount > 0 then
        qrBuscaItem.FieldByName('nome_garcom').asstring :=
          qry_aux.FieldByName('usu_002').asstring
      else
      begin
        qrBuscaItem.FieldByName('id_garcom').Value := null;
        Application.MessageBox('Garçom não encontrado!', 'Atenção',
          MB_ICONINFORMATION + MB_OK);
        edCodGarcom.SetFocus;
      end;
      qry_aux.Destroy;
    end;
  end;
end;

procedure TfrmControlemesalancamento.qrBuscaItemquantidadeChange
  (Sender: TField);
var
  exige70pc: boolean;
  valor_unit, valor_unit_70, quantidade: Double;
begin
  if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
    exige70pc := bExige70pcVlUnitMesa
  else
    exige70pc := bExige70pcVlUnitComanda;

  if exige70pc then
  begin
    if qrBuscaItem.FieldByName('b_exige_70pc_valor_unit').asBoolean then
    begin
      quantidade := qrBuscaItem.FieldByName('quantidade').AsFloat;
      if (quantidade < 0.7) and (quantidade > 0.0) then
      begin
        valor_unit := qrBuscaItem.FieldByName('valor_unit_old').AsFloat;
        valor_unit_70 := (valor_unit * 0.7) / quantidade;
        qrBuscaItem.FieldByName('valor_unit').AsFloat := valor_unit_70;
      end;

    end;
  end;
end;

procedure TfrmControlemesalancamento.qrBuscaItemquantidadeValidate
  (Sender: TField);
begin
  inherited;
  if Sender.IsNull then
    Sender.Value := 1;
end;

procedure TfrmControlemesalancamento.qrVendaItemBeforeOpen(DataSet: TDataSet);
var
  bTaxaAdicional: boolean;
begin
  bTaxaAdicional := false;
  if qrVendaMesa.Active then
  begin
    if qrVendaMesa.RecordCount > 0 then
    begin
      if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
        bTaxaAdicional := bTaxaAdicionalMesa
      else
        bTaxaAdicional := bTaxaAdicionalComanda;
    end;
  end;

  if bTaxaAdicional then
    qrVendaItem.ParamByName('flag_taxa_10').AsInteger := 1
  else
    qrVendaItem.ParamByName('flag_taxa_10').AsInteger := 0;
end;

procedure TfrmControlemesalancamento.qrVendaMesaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ValidaAcoesStatusMesas;
end;

procedure TfrmControlemesalancamento.qrVendaMesaAfterScroll(DataSet: TDataSet);
begin
  qrVendaItem.Close;
  qrVendaPagAntecipado.Close;
  qrVendaItemOpcionalObs.Close;
  qrTotais.Close;

  if qrVendaMesa.Active then
  begin
    if qrVendaMesa.FieldByName('id_venda').IsNull then
      vendaSelecionada := 0
    else
    begin
      vendaSelecionada := qrVendaMesa.FieldByName('id_venda').AsInteger;
      tipoVendaSelecionada := qrVendaMesa.FieldByName('tipo_venda').asstring;

      qrVendaItem.ParamByName('emp').AsInteger := recproj.iEmp;
      qrVendaItem.ParamByName('id_venda').AsInteger := vendaSelecionada;

      qrVendaPagAntecipado.ParamByName('id_venda').AsInteger :=
        vendaSelecionada;
      qrVendaPagAntecipado.ParamByName('emp').AsInteger := recproj.iEmp;

      qrVendaItemOpcionalObs.ParamByName('emp').AsInteger := recproj.iEmp;
      qrVendaItemOpcionalObs.ParamByName('id_venda').AsInteger :=
        vendaSelecionada;

      qrTotais.ParamByName('emp').AsInteger := recproj.iEmp;
      qrTotais.ParamByName('id_venda').AsInteger := vendaSelecionada;

      qrVendaItem.Open;

      qrVendaPagAntecipado.Open;
      qrVendaItemOpcionalObs.Open;

      qrTotais.Open;
    end;

    ValidaAcoesStatusMesas;
  end;
end;

procedure TfrmControlemesalancamento.qrVendaPagAntecipadoBeforeOpen
  (DataSet: TDataSet);
var
  bTaxaAdicional: boolean;
begin
  bTaxaAdicional := false;
  if qrVendaMesa.Active then
  begin
    if qrVendaMesa.RecordCount > 0 then
    begin
      if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
        bTaxaAdicional := bTaxaAdicionalMesa
      else
        bTaxaAdicional := bTaxaAdicionalComanda;
    end;
  end;

  if bTaxaAdicional then
    qrVendaPagAntecipado.ParamByName('flag_taxa_10').AsInteger := 1
  else
    qrVendaPagAntecipado.ParamByName('flag_taxa_10').AsInteger := 0;
end;

procedure TfrmControlemesalancamento.cbImpressoraEnter(Sender: TObject);
begin
  if not qrBuscaItem.Active then
    edCodProduto.SetFocus;
end;

procedure TfrmControlemesalancamento.cbImpressoraExit(Sender: TObject);
begin
  cbImpressoraChange(nil);

  if cbImpressora.ItemIndex < 0 then
    cbImpressora.ItemIndex := 0;
end;

procedure TfrmControlemesalancamento.edCodGarcomEnter(Sender: TObject);
begin
  if not qrBuscaItem.Active then
    edCodProduto.SetFocus;
end;

procedure TfrmControlemesalancamento.cbImpressoraChange(Sender: TObject);
begin
  if trim(cbImpressora.Text) = '1' then
    cbImpressora.ItemIndex := 1
  else if trim(cbImpressora.Text) = '2' then
    cbImpressora.ItemIndex := 2
  else if trim(cbImpressora.Text) = '3' then
    cbImpressora.ItemIndex := 3
  else if trim(cbImpressora.Text) = '4' then
    cbImpressora.ItemIndex := 4
  else if trim(cbImpressora.Text) = '5' then
    cbImpressora.ItemIndex := 5
  else if (not(pos(cbImpressora.Text, cbImpressora.Items.Text) > 0)) and
    (cbImpressora.Text <> '') then
    cbImpressora.Text := '';
end;

procedure TfrmControlemesalancamento.edCodProdutoExit(Sender: TObject);
var
  statusMesa: Integer;
  cod_ref, cod_ref_produto, str_qtd: string;
  flag_etiqueta_balanca: boolean;
  quantidade, valor_happy: Double;

  procedure limpa_sai;
  begin
    edCodProduto.Clear;
    qrBuscaItem.Close;
    edCodProduto.SetFocus;
    abort;
  end;

begin
  cod_ref := trim(edCodProduto.Text);
  if cod_ref <> '' then
  begin

    flag_etiqueta_balanca := (Length(cod_ref) = largura_cod_barras) and
      (cod_ref[1] = inttostr(cod_barras_digito_1));

    if flag_etiqueta_balanca then
    begin
      // pega a parte referente ao codigo do produto
      cod_ref_produto := copy(cod_ref, 2, largura_cod_barras_produto);
      // converte pra inteiro e volta para string (para remover os '0' iniciais)
      cod_ref_produto := inttostr(strtoint(cod_ref_produto));
      // pega a parte referente a quantidade
      str_qtd := copy(cod_ref, largura_cod_barras_produto + 2,
        largura_cod_barras);
      // descarta o ultimo digito, que é dv
      str_qtd := copy(str_qtd, 1, Length(str_qtd) - 1);
      try
        quantidade := StrToFloat(trim(str_qtd)) / 1000;
      except
        quantidade := 0;
        Application.MessageBox('Informações inválidas!', 'Atenção',
          MB_ICONINFORMATION);
        abort;
      end;
    end
    else
    begin
      quantidade := 1;
      cod_ref_produto := cod_ref;
    end;

    qrBuscaItem.Close;
    qrBuscaItem.ParamByName('cod_ref').asstring := cod_ref_produto;
    qrBuscaItem.ParamByName('emp').AsInteger := recproj.iEmp;
    qrBuscaItem.ParamByName('id_venda').AsInteger :=
      qrVendaMesa.FieldByName('id_venda').AsInteger;
    qrBuscaItem.Open;

    qrVendaItem.Refresh;
    // Fiz esse refresh , pois se essa tela esta aberta , e o usuario com o tablet faz um lançamento,

    if frmControleMesa.bExigeGarconLancarItem then
      qrBuscaItem.FieldByName('id_garcom').AsInteger :=
        frmControleMesa.id_garcom_selecionado;

    if qrBuscaItem.RecordCount < 1 then
    begin
      Application.MessageBox('Produto não encontrado!', 'Atenção',
        MB_ICONINFORMATION + MB_OK);
      limpa_sai;
    end;

    if flag_etiqueta_balanca then
    begin
      if not(qrBuscaItem.State = dsEdit) then
        qrBuscaItem.Edit;

      if flag_etiqueta_balanca and (compareVAlue(quantidade, 1) = -1) and
        ((qrBuscaItem.FieldByName('unidade').asstring = 'UN') or
        (qrBuscaItem.FieldByName('unidade').asstring = 'PC')) then
        quantidade := quantidade * 1000;

      qrBuscaItem.FieldByName('quantidade').AsFloat := quantidade;
    end;

    // Verifica Happy Hour - Bruno (12-04-2018)
    if BuscaHappyHour(qrVendaMesa.FieldByName('tipo_venda').asstring,
      qrBuscaItem.FieldByName('id_material').AsInteger, valor_happy) then
      qrBuscaItem.FieldByName('valor_unit').AsFloat := valor_happy
    else
    begin
      if bUtilizaSelecaoPrecos then
      begin
        frmVendaSelecaoPreco := TfrmVendaSelecaoPreco.create(self,
          qrBuscaItem.FieldByName('id_material').AsInteger);

        if frmVendaSelecaoPreco.qrTamanhoMaterial.RecordCount > 1 then
          frmVendaSelecaoPreco.ShowModal;

        if frmVendaSelecaoPreco.tag = 1 then
        begin
          qrBuscaItem.FieldByName('valor_unit').AsFloat :=
            frmVendaSelecaoPreco.valor;
        end;
      end;
    end;
  end

  else
  begin
    if qrBuscaItem.Active then
      qrBuscaItem.Close;
  end;

end;

procedure TfrmControlemesalancamento.edObservacaoItemEnter(Sender: TObject);
begin
  if not qrBuscaItem.Active then
    edCodProduto.SetFocus;
end;

procedure TfrmControlemesalancamento.edObservacaoItemExit(Sender: TObject);
begin
  if qrBuscaItem.Active then
  begin
    if qrBuscaItem.FieldByName('cod_impressora').IsNull then
      cbImpressora.SetFocus
    else if qrBuscaItem.FieldByName('id_garcom').IsNull and edCodGarcom.CanFocus
    then
      edCodGarcom.SetFocus
    else
      btInserir.SetFocus;
  end;
end;

procedure TfrmControlemesalancamento.edQuantidadeChange(Sender: TObject);
var
  valor: Double;
begin
  if edQuantidade.Text <> '' then
  begin
    try
      valor := StrToFloat(edQuantidade.Text);
      if valor > 999 then
      begin
        abort;
      end;
    except
      edQuantidade.Text := '999';
    end;
  end;
end;

procedure TfrmControlemesalancamento.edQuantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['-', '+'] then
    Key := #0
end;

procedure TfrmControlemesalancamento.edValorChange(Sender: TObject);
var
  valor: Double;
begin
  if edValor.Text <> '' then
  begin
    try
      valor := StrToFloat(edQuantidade.Text);
      if valor > 99999 then
      begin
        abort;
      end;
    except
      edQuantidade.Text := '99999,99';
    end;
  end;
end;

procedure TfrmControlemesalancamento.AtualizaTotalMesa(iVenda: Integer);
begin
  if qrBuscaItem.FieldByName('valor_total').AsFloat > 1 then
    ExecutaComandoSQL('select fn_calcula_total_venda(:idvenda,:idempresa);',
      vararrayof([iVenda, recproj.iEmp]));
end;

procedure TfrmControlemesalancamento.btInserirClick(Sender: TObject);
var
  sql, str_sql: string;
  atualiza, inserir, exige70pc: boolean;
  item: Integer;
  desconto, desconto_calc, total_calc: Double;
  tipo_desconto: Integer;
  qrAux1: TUniQuery;

begin

  str_sql :=
    'select sit_001 from venda where ven_001=:ven_001 and emp_001=:emp ';
  qrAux1 := TUniQuery.create(self);
  qrAux1.Connection := frmmenu.conexao;
  qrAux1.Close;
  qrAux1.sql.Clear;
  qrAux1.sql.Add(str_sql);
  qrAux1.ParamByName('ven_001').AsInteger := qrVendaMesa.FieldByName('id_venda')
    .AsInteger;
  qrAux1.ParamByName('emp').AsInteger := recproj.iEmp;
  qrAux1.Open;

  if qrAux1.FieldByName('sit_001').AsInteger <> 8 then
  begin
    Application.MessageBox
      ('NÃO É POSSÍVEL LANÇAR PRODUTOS, A MESA NÃO ESTÁ ABERTA!', 'Atenção',
      MB_ICONINFORMATION + MB_OK);
    edCodProduto.SetFocus;
    abort;
  end;

  // valida o item

  if qrBuscaItem.Active then
  begin
    if qrBuscaItem.RecordCount < 1 then
    begin
      Application.MessageBox('Não foi informado nenhum item a adicionar!',
        'Atenção', MB_ICONINFORMATION + MB_OK);
      edCodProduto.SetFocus;
      abort;
    end
    else
    begin
      // valida quantidade e valor unitário
      if qrBuscaItem.FieldByName('quantidade').IsNull or
        (qrBuscaItem.FieldByName('quantidade').AsFloat < 0.001) or
        (qrBuscaItem.FieldByName('quantidade').AsFloat > 999999) then
      begin
        Application.MessageBox('Quantidade inválida!', 'Atenção',
          MB_ICONINFORMATION + MB_OK);
        if edQuantidade.CanFocus then
          edQuantidade.SetFocus;
        abort;
      end;
      if (qrBuscaItem.FieldByName('valor_unit').IsNull) or
        (qrBuscaItem.FieldByName('valor_unit').AsFloat <= 0) or
        (qrBuscaItem.FieldByName('valor_unit').AsFloat > 99999999) then
      begin
        Application.MessageBox('Valor unitário inválido!', 'Atenção',
          MB_ICONINFORMATION + MB_OK);
        if edValor.CanFocus then
          edValor.SetFocus;
        abort;
      end;
    end;
  end
  else
    abort;

  if bAgruparItensIguais then
  begin
    // verifica se ja existe um item com mesmo codigo, valor
    // itens com desconto não devem agrupar!

    begin
      atualiza := qrVendaItem.Locate('id_material;vlrvenda;desconto;tamanho',
        vararrayof([qrBuscaItem.FieldByName('id_material').AsInteger,
        qrBuscaItem.FieldByName('valor_unit').AsFloat, 0.00,
        qrBuscaItem.FieldByName('tamanho_padrao').asstring]), []);
    end;

    if atualiza then
    begin

      begin
        total_calc := qrVendaItem.FieldByName('valor_total').AsFloat +
          qrBuscaItem.FieldByName('valor_total').AsFloat;
        desconto_calc := qrVendaItem.FieldByName('desconto').AsFloat;

        item := qrVendaItem.FieldByName('nro_item').AsInteger;
        ExecutaComandoSQL(' update vendaitem set ite_002=ITE_002+:quantidade, '
          + ' quantidade_impressao=quantidade_impressao+:quantidade, ' +
          ' ite_011=''N'', ite_008=''N'', ' +
          ' ite_005=:valor_total, desconto=:desconto where ' +
          ' mat_001=:id_material and ite_001=:item and EMP_001=:emp ' +
          ' and ven_001=:id_venda and ite_005 > 0.01',
          vararrayof([qrBuscaItem.FieldByName('quantidade').AsFloat, total_calc,
          desconto_calc, qrBuscaItem.FieldByName('id_material').AsInteger, item,
          recproj.iEmp, qrVendaMesa.FieldByName('id_venda').AsInteger]));
      end;
    end;
    inserir := not atualiza;
  end
  else
    inserir := true;


  if inserir then
  begin
    qrInsereItem.ParamByName('emp').AsInteger := recproj.iEmp;
    qrInsereItem.ParamByName('id_venda').AsInteger :=
      qrVendaMesa.FieldByName('id_venda').AsInteger;
    qrInsereItem.ParamByName('id_material').AsInteger :=
      qrBuscaItem.FieldByName('id_material').AsInteger;
    qrInsereItem.ParamByName('quantidade').AsFloat :=
      qrBuscaItem.FieldByName('quantidade').AsFloat;
    qrInsereItem.ParamByName('valor_unit').AsFloat :=
      qrBuscaItem.FieldByName('valor_unit').AsFloat;
    qrInsereItem.ParamByName('valor_total').AsFloat :=
      qrBuscaItem.FieldByName('valor_total').AsFloat;
    qrInsereItem.ParamByName('observacao').asstring := edObservacaoItem.Text;
    qrInsereItem.ParamByName('nro_item').AsInteger :=
      qrBuscaItem.FieldByName('ultimo_item').AsInteger + 1;
    qrInsereItem.ParamByName('id_garcom').AsInteger :=
      qrBuscaItem.FieldByName('id_garcom').AsInteger;
    qrInsereItem.ParamByName('cod_impressora').AsInteger :=
      cbImpressora.ItemIndex;
    qrInsereItem.ParamByName('b_venda_tamanho').asBoolean :=
      qrBuscaItem.FieldByName('b_venda_tamanho').asBoolean;
    qrInsereItem.ParamByName('tamanho').asstring :=
      qrBuscaItem.FieldByName('tamanho_padrao').asstring;
    qrInsereItem.ParamByName('item_fracionado').Value := null;
    qrInsereItem.ParamByName('quantidade_impressao').AsFloat :=
      qrBuscaItem.FieldByName('quantidade').AsFloat;
    qrInsereItem.ParamByName('desconto').AsFloat := 0;

    // antes de postar, verifica se existe promoção
    if BuscaPromocao(qrBuscaItem.FieldByName('b_venda_tamanho').asBoolean,
      qrBuscaItem.FieldByName('tamanho_padrao').asstring,
      qrVendaMesa.FieldByName('tipo_venda').asstring,
      qrBuscaItem.FieldByName('id_material').AsInteger, desconto, tipo_desconto)
    then
    begin
      calculaDescontoItem(tipo_desconto, desconto,
        qrBuscaItem.FieldByName('quantidade').AsFloat,
        qrBuscaItem.FieldByName('valor_unit').AsFloat, 0, desconto_calc,
        total_calc);

      qrInsereItem.ParamByName('desconto').AsFloat := desconto_calc;
      qrInsereItem.ParamByName('valor_total').AsFloat := total_calc;
    end;

    // Flag de item com exigência de valor mínimo de 70% do unitário
    qrInsereItem.ParamByName('b_70pc_valor_unit').asBoolean :=
      qrBuscaItem.FieldByName('b_exige_70pc_valor_unit').asBoolean and
      (qrBuscaItem.FieldByName('quantidade').AsFloat < 0.7) and exige70pc;

    qrInsereItem.Execute;
  end;

  frmmenu.AvisaEsoqueMinimo(qrBuscaItem.FieldByName('id_material').AsInteger,
    qrVendaMesa.FieldByName('tipo_venda').asstring,
    qrBuscaItem.FieldByName('quantidade').AsFloat);

  AtualizaTotalMesa(qrVendaMesa.FieldByName('id_venda').AsInteger);
  qrVendaMesa.Refresh;
  qrVendaMesa.Locate('nro_mesa;tipo_venda',
    vararrayof([numero, tipo_venda]), []);

  ValidaAcoesStatusMesas;

  qrBuscaItem.Close;
  edObservacaoItem.Clear;
  edCodProduto.Clear;
  cbImpressora.Text := '';
  edCodProduto.SetFocus;
  edQuantidade.Enabled := true;
end;

procedure TfrmControlemesalancamento.FormCreate(Sender: TObject);
begin
  vendaSelecionada := 0;

  CarregaParametrosConfig;

  // carrega as configurações da balança
  if bUtilizaBalanca then
  begin
    ACBrBAL1.Modelo := TACBrBALModelo(LerIntegerConfig('CBBALANCAMODELO',
      frmmenu.cdsCFG.FileName));
    ACBrBAL1.Device.HandShake :=
      TACBrHandShake(LerIntegerConfig('CBBALANCAHANDSHAKING',
      frmmenu.cdsCFG.FileName));
    ACBrBAL1.Device.Parity := TACBrSerialParity
      (LerIntegerConfig('CBBALANCAPARITY', frmmenu.cdsCFG.FileName));
    ACBrBAL1.Device.Stop :=
      TACBrSerialStop(LerIntegerConfig('CBBALANCASTOPBITS',
      frmmenu.cdsCFG.FileName));
    ACBrBAL1.Device.Data := strtoint(LerStringConfig('CBBALANCADATABITS',
      frmmenu.cdsCFG.FileName));
    ACBrBAL1.Device.Baud := strtoint(LerStringConfig('CBBALANCABAUD',
      frmmenu.cdsCFG.FileName));
    ACBrBAL1.Device.Porta := LerStringConfig('CBBALANCAPORTASERIAL',
      frmmenu.cdsCFG.FileName);
    ACBrBAL1.ArqLOG := format('%sLog\Balanca\Balanca_%s.log',
      [ExtractFilePath(Application.ExeName), FormatDateTime('ddmmyyyy', Date)]);
    // cria o diretório de log
    if Not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Log\Balanca')
    then
      ForceDirectories(ExtractFilePath(Application.ExeName) + 'Log\Balanca');
  end;
end;

procedure TfrmControlemesalancamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
    Perform(WM_NEXTDLGCTL, 0, 0)
end;

procedure TfrmControlemesalancamento.acAlterarQuantidadeItemExecute
  (Sender: TObject);
var
  id_usuario_quant: Integer;
begin
  if qrVendaItem.Active then
  begin
    if qrVendaItem.RecordCount > 0 then
    begin
      if frmmenu.ConfirmacaoSenha('b_permite_quantidade_mesa_comanda',
        id_usuario_quant) then
      begin
        frmControleMesaItensAcoes := TfrmControleMesaItensAcoes.create(self,
          qrVendaMesa.FieldByName('id_venda').AsInteger, id_usuario_quant, 5,
          false, false);
        frmControleMesaItensAcoes.ShowModal;
        frmControleMesaItensAcoes.Free;
        AtualizaTotalMesa(qrVendaMesa.FieldByName('id_venda').AsInteger);
        qrVendaMesa.Refresh;
        qrVendaMesa.Locate('nro_mesa;tipo_venda',
          vararrayof([numero, tipo_venda]), []);
      end;
    end;
  end
  else
    Application.MessageBox('Esta venda não possui itens!', 'Atenção',
      MB_ICONINFORMATION + MB_OK);
end;

procedure TfrmControlemesalancamento.acCancelaItemExecute(Sender: TObject);
var
  ok, bExigeSenhaCancelamentoItem: boolean;
  id_usuario_cancelamento: Integer;
  str_sql: string;
begin
  if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
    bExigeSenhaCancelamentoItem := bExigeSenhaCancelamentoItemMesa
  else
    bExigeSenhaCancelamentoItem := bExigeSenhaCancelamentoItemComanda;

  if qrVendaItem.Active then
  begin
    if (qrVendaItem.RecordCount > 0) then
    begin
      id_usuario_cancelamento := recproj.iUsuario;

      if bExigeSenhaCancelamentoItem then
        ok := frmmenu.ConfirmacaoSenha('b_cancelamento_mesa',
          id_usuario_cancelamento)
      else
        ok := true;

      if ok then
      begin
        frmControleMesaItensAcoes := TfrmControleMesaItensAcoes.create(self,
          qrVendaMesa.FieldByName('id_venda').AsInteger,
          id_usuario_cancelamento, 3);
        frmControleMesaItensAcoes.ShowModal;
        frmControleMesaItensAcoes.Free;
        AtualizaTotalMesa(qrVendaMesa.FieldByName('id_venda').AsInteger);
        qrVendaMesa.Refresh;
        qrVendaMesa.Locate('nro_mesa;tipo_venda',
          vararrayof([numero, tipo_venda]), []);
      end;
    end
    else
      Application.MessageBox('Esta venda não possui itens!', 'Atenção',
        MB_ICONINFORMATION + MB_OK);
  end;
end;

procedure TfrmControlemesalancamento.acCancelaMesaExecute(Sender: TObject);
var
  str_sql, sJust: string;
  id_venda, cod_venda, nro_mesa, id_usuario_cancelamento: Integer;
  ok, bExigeSenhaCancelamentoItem, acesso_cancelamento: boolean;
begin
  buscacampo(acesso_cancelamento,
    'select b_cancelamento_mesa from usuarios where usu_001=' +
    inttostr(recproj.iUsuario), '', false);

  if qrVendaMesa.Active then
  begin
    if qrVendaMesa.FieldByName('status').AsInteger in [8, 21] then
    begin
      if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
        bExigeSenhaCancelamentoItem := bExigeSenhaCancelamentoItemMesa
      else
        bExigeSenhaCancelamentoItem := bExigeSenhaCancelamentoItemComanda;

      id_venda := qrVendaMesa.FieldByName('id_venda').AsInteger;
      cod_venda := qrVendaMesa.FieldByName('cod_venda').AsInteger;
      nro_mesa := qrVendaMesa.FieldByName('nro_mesa').AsInteger;
      // verifica se existe pagamento antecipado para a mesa
      str_sql := ' select 1 from venda_pag_antecipado ' + ' where id_venda=' +
        inttostr(id_venda) + ' and id_situacao=4 and id_empresa=' +
        inttostr(recproj.iEmp);
      ExecutaConsultaSQL(qrAux1, str_sql);
      if qrAux1.RecordCount > 0 then
      begin
        Application.MessageBox
          ('A venda não pode ser cancelada pois já recebeu pagamento!',
          'Atenção', MB_ICONINFORMATION + MB_OK);
        exit;
      end;

      if Application.MessageBox('Deseja cancelar esta mesa?', 'Atenção',
        mB_ICONQUESTION + MB_yesno) = mrYes then
      begin
        // verifica se a venda não possui items
        str_sql :=
          'select 1 from vendaitem where ven_001=:id_venda and emp_001=:emp';
        PreparaQuerySQL(qrAux1, str_sql);
        qrAux1.ParamByName('id_venda').AsInteger := id_venda;
        qrAux1.ParamByName('emp').AsInteger := recproj.iEmp;
        qrAux1.Open;
        if qrAux1.RecordCount < 1 then
        begin
          str_sql :=
            'delete from venda where ven_001=:id_venda and emp_001=:emp';
          PreparaQuerySQL(qrAux1, str_sql);
          qrAux1.ParamByName('id_venda').AsInteger := id_venda;
          qrAux1.ParamByName('emp').AsInteger := recproj.iEmp;
          qrAux1.Execute;
          Application.MessageBox('Venda cancelada com sucesso!', 'Atenção',
            MB_ICONINFORMATION + MB_OK);
          bLancandoItens := false;
          qrVendaMesa.Refresh;
        end
        else
        begin
          id_usuario_cancelamento := recproj.iUsuario;
          if bExigeSenhaCancelamentoItem then
            ok := frmmenu.ConfirmacaoSenha('b_cancelamento_mesa',
              id_usuario_cancelamento)
          else
          begin
            if not acesso_cancelamento then
              ok := frmmenu.ConfirmacaoSenha('b_cancelamento_mesa',
                id_usuario_cancelamento)
            else
              ok := true;
          end;
          if ok then
          begin
            if CancelaVenda(id_venda, id_usuario_cancelamento, '') then
            begin
              bLancandoItens := false;
              frmControlemesalancamento.Close;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmControlemesalancamento.acDescontoItemExecute(Sender: TObject);
var
  id_usuario_desconto: Integer;
begin
  if qrVendaItem.Active then
  begin
    if qrVendaItem.RecordCount > 0 then
    begin
      frmControleMesaItensAcoes := TfrmControleMesaItensAcoes.create(self,
        qrVendaMesa.FieldByName('id_venda').AsInteger, id_usuario_desconto, 2,
        false, false);
      frmControleMesaItensAcoes.ShowModal;
      frmControleMesaItensAcoes.Free;
      AtualizaTotalMesa(qrVendaMesa.FieldByName('id_venda').AsInteger);
      qrVendaMesa.Refresh;
      qrVendaMesa.Locate('nro_mesa;tipo_venda',
        vararrayof([numero, tipo_venda]), []);
    end;
  end
  else
    Application.MessageBox('Esta venda não possui itens!', 'Atenção',
      MB_ICONINFORMATION + MB_OK);
end;

procedure TfrmControlemesalancamento.acFecharMesaExecute(Sender: TObject);
var
  venda, id_usuario: Integer;
  flag_valido, bExigePreFechamento, exigesenha: boolean;
begin
  if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
    exigesenha := bExigesenhafechamentomesa
  else
    exigesenha := bExigesenhafechamentocomanda;

  if exigesenha = true then
  begin
    if frmmenu.ConfirmacaoSenha('b_permite_fechamento_mesa_comanda', id_usuario)
      = false then
      abort;
  end;

  frmFechamentoMesaComanda := TfrmFechamentoMesaComanda.create(self,
    qrVendaMesa.FieldByName('nro_mesa').AsInteger,
    qrVendaMesa.FieldByName('tipo_venda').asstring);
  frmFechamentoMesaComanda.ShowModal;
  venda := frmFechamentoMesaComanda.venda_retorno;
  frmFechamentoMesaComanda.Free;

  if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
    bExigePreFechamento := bExigePreFechamentoMesa
  else
    bExigePreFechamento := bExigePreFechamentoComanda;

  if venda > 0 then
  begin
    if qrVendaMesa.Locate('id_venda', venda, []) then
    begin
      if not(qrVendaMesa.FieldByName('status').AsInteger in [8, 21]) then
        exit;

      if qrVendaItem.RecordCount < 1 then
      begin
        Application.MessageBox('Esta venda não possui itens!', 'Atenção',
          MB_ICONINFORMATION + MB_OK);
      end
      else
      begin
        if (bExigePreFechamento and (qrVendaMesa.FieldByName('status').AsInteger
          <> 21)) then
        begin
          frmControleMesaRelatorios.ImprimeVenda(venda);
          MudaStatusVendaImpresso(venda);
          qrVendaMesa.Refresh;
        end;

        AtualizaTotalMesa(venda);
        frmControleMesaFechamento := TfrmControleMesaFechamento.create
          (self, venda);
        frmControleMesaFechamento.ShowModal;
        frmControleMesaFechamento.Free;

        frmControlemesalancamento.Close;
      end;
    end;
  end;
end;

procedure TfrmControlemesalancamento.acImpressaoCozinhaExecute(Sender: TObject);
begin
  inherited;

     EnviarCozinha(true);
end;

procedure TfrmControlemesalancamento.acInsereProdutoFracionadoExecute
  (Sender: TObject);
var
  ult_reg, item_fracionado, id_venda: Integer;
  str_sql: string;
  bAlteraValorUnitarioItem, bFracionadoMaiorValor, bExige70pcCatDif: boolean;
  desconto, desconto_calc, total_calc: Double;
  tipo_desconto: Integer;
begin
  if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
  begin
    bAlteraValorUnitarioItem := bAlteraValorUnitarioItemMesa;
    bFracionadoMaiorValor := bFracionadoMaiorValorMesa;
    bExige70pcCatDif := bExige70pcFracionadoCatDiffMesa;
  end
  else
  begin
    bAlteraValorUnitarioItem := bAlteraValorUnitarioItemcomanda;
    bFracionadoMaiorValor := bFracionadoMaiorValorComanda;
    bExige70pcCatDif := bExige70pcFracionadoCatDiffComanda;
  end;

  id_venda := qrVendaMesa.FieldByName('id_venda').AsInteger;
  frmVendaItemFracionado := tfrmVendaItemFracionado.create(self,
    (bAlteraValorUnitarioItem and bAlteraValorUnitarioItemUsuario),
    bFracionadoMaiorValor, bExige70pcCatDif);
  frmVendaItemFracionado.ShowModal;

  if frmVendaItemFracionado.tag = 1 then
  begin
    // Localiza o ultimo registro e ultimo item fracionado
    str_sql :=
      format('select coalesce(max(ite_001), 0) from vendaitem where ven_001=%d and emp_001=%d ',
      [id_venda, recproj.iEmp]);
    buscacampo(ult_reg, str_sql, '', false);
    str_sql :=
      format('select coalesce(max(item_fracionado), 0)+1 from vendaitem where ven_001=%d and emp_001=%d ',
      [id_venda, recproj.iEmp]);
    buscacampo(item_fracionado, str_sql, '', false);
    frmVendaItemFracionado.cdsItens.First;
    while not frmVendaItemFracionado.cdsItens.eof do
    begin
      qrInsereItem.ParamByName('emp').AsInteger := recproj.iEmp;
      qrInsereItem.ParamByName('id_venda').AsInteger := id_venda;
      qrInsereItem.ParamByName('id_material').AsInteger :=
        frmVendaItemFracionado.cdsItens.FieldByName('id_material').AsInteger;
      qrInsereItem.ParamByName('quantidade').AsFloat :=
        frmVendaItemFracionado.cdsItens.FieldByName('quantidade').AsFloat;
      qrInsereItem.ParamByName('quantidade_impressao').AsFloat :=
        frmVendaItemFracionado.cdsItens.FieldByName('quantidade').AsFloat;
      qrInsereItem.ParamByName('valor_unit').AsFloat :=
        frmVendaItemFracionado.cdsItens.FieldByName('valor_unit').AsFloat;
      qrInsereItem.ParamByName('valor_total').AsFloat :=
        frmVendaItemFracionado.cdsItens.FieldByName('valor_fracionado').AsFloat;
      qrInsereItem.ParamByName('observacao').asstring :=
        frmVendaItemFracionado.cdsItens.FieldByName('observacao').asstring;
      qrInsereItem.ParamByName('nro_item').AsInteger := ult_reg +
        frmVendaItemFracionado.cdsItens.FieldByName('nro_item').AsInteger;
      qrInsereItem.ParamByName('cod_impressora').AsInteger :=
        frmVendaItemFracionado.cdsItens.FieldByName('cod_impressora').AsInteger;
      qrInsereItem.ParamByName('b_venda_tamanho').asBoolean :=
        frmVendaItemFracionado.cdsItens.FieldByName('tamanho').asstring <> '';
      qrInsereItem.ParamByName('tamanho').asstring :=
        frmVendaItemFracionado.cdsItens.FieldByName('tamanho').asstring;
      qrInsereItem.ParamByName('item_fracionado').AsInteger := item_fracionado;
      qrInsereItem.ParamByName('desconto').AsFloat := 0;

      // verifica se existe promoção e altera o valor e desconto antes de postar
      if BuscaPromocao(qrInsereItem.ParamByName('b_venda_tamanho').asBoolean,
        frmVendaItemFracionado.cdsItens.FieldByName('tamanho').asstring,
        qrVendaMesa.FieldByName('tipo_venda').asstring,
        frmVendaItemFracionado.cdsItens.FieldByName('id_material').AsInteger,
        desconto, tipo_desconto) then
      begin
        calculaDescontoItem(tipo_desconto, desconto,
          frmVendaItemFracionado.cdsItens.FieldByName('quantidade').AsFloat,
          frmVendaItemFracionado.cdsItens.FieldByName('valor_unit').AsFloat, 0,
          desconto_calc, total_calc);

        qrInsereItem.ParamByName('desconto').AsFloat := desconto_calc;
        qrInsereItem.ParamByName('valor_total').AsFloat := total_calc;
      end;

      qrInsereItem.ParamByName('b_70pc_valor_unit').asBoolean :=
        frmVendaItemFracionado.cdsItens.FieldByName('b_70pc_valor_unit')
        .asBoolean;

      qrInsereItem.Execute;

      frmVendaItemFracionado.cdsItens.Next;
    end;

    frmmenu.AvisaEsoqueMinimo(frmVendaItemFracionado.cdsItens.FieldByName
      ('id_material').AsInteger, qrVendaMesa.FieldByName('tipo_venda').asstring,
      frmVendaItemFracionado.cdsItens.FieldByName('quantidade').AsFloat);
  end;
  frmVendaItemFracionado.Free;

  AtualizaTotalMesa(id_venda);
  qrVendaMesa.Refresh;
  qrVendaMesa.Locate('nro_mesa;tipo_venda',
    vararrayof([numero, tipo_venda]), []);
end;

procedure TfrmControlemesalancamento.acJuntarMesasExecute(Sender: TObject);
var
  ok, bExigeSenha: boolean;
  id_usuario_canc: Integer;
begin
  id_usuario_canc := recproj.iUsuario;

  if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
    bExigeSenha := bExigeSenhaJuntarMesa
  else
    bExigeSenha := bExigeSenhaJuntarComanda;

  if bExigeSenha then
    ok := frmmenu.ConfirmacaoSenha('b_permite_juntar_mesa_comanda',
      id_usuario_canc)
  else
    ok := true;

  if ok then
  begin
    frmControleMesaJuntar := TfrmControleMesaJuntar.create(self,
      qrVendaMesa.FieldByName('id_venda').AsInteger,
      qrVendaMesa.FieldByName('tipo_venda').asstring,
      qrVendaMesa.FieldByName('descricao_mesa').asstring,
      qrVendaMesa.FieldByName('valor_venda').AsFloat);
    frmControleMesaJuntar.ShowModal;
    if frmControleMesaJuntar.tag = 1 then
      AtualizaTotalMesa(qrVendaMesa.FieldByName('id_venda').AsInteger);
    frmControleMesaJuntar.Free;
  end;

  frmControlemesalancamento.Close;
end;

procedure TfrmControlemesalancamento.acObservacaoItemExecute(Sender: TObject);
begin
  if qrVendaItem.Active then
  begin
    if qrVendaItem.RecordCount > 0 then
    begin
      // lançamento diretamente no banco
      frmControleMesaItensAcoes := TfrmControleMesaItensAcoes.create(self,
        qrVendaMesa.FieldByName('id_venda').AsInteger, recproj.iUsuario, 1,
        false, false);
      frmControleMesaItensAcoes.ShowModal;
      frmControleMesaItensAcoes.Free;
      qrVendaMesa.Refresh;
      qrVendaMesa.Locate('nro_mesa;tipo_venda',
        vararrayof([numero, tipo_venda]), []);
    end
    else
      Application.MessageBox('Esta venda não possui itens!', 'Atenção',
        MB_ICONINFORMATION + MB_OK);
  end;
end;

procedure TfrmControlemesalancamento.acOpcionaisItemExecute(Sender: TObject);
begin
  if qrVendaItem.Active then
  begin
    if qrVendaItem.RecordCount > 0 then
    begin
      frmControleMesaItensAcoes := TfrmControleMesaItensAcoes.create(self,
        qrVendaMesa.FieldByName('id_venda').AsInteger, recproj.iUsuario, 4);
      frmControleMesaItensAcoes.ShowModal;
      frmControleMesaItensAcoes.Free;
      AtualizaTotalMesa(qrVendaMesa.FieldByName('id_venda').AsInteger);
      qrVendaMesa.Refresh;
      qrVendaMesa.Locate('nro_mesa;tipo_venda',
        vararrayof([numero, tipo_venda]), []);
    end;
  end
  else
    Application.MessageBox('Esta venda não possui itens!', 'Atenção',
      MB_ICONINFORMATION + MB_OK);
end;

procedure TfrmControlemesalancamento.acPagamentoAntecipadoExecute
  (Sender: TObject);
begin
  inherited;
  frmControleMesaPagamentoAntecipado :=
    TfrmControleMesaPagamentoAntecipado.create(self,
    qrVendaMesa.FieldByName('id_venda').AsInteger);
  frmControleMesaPagamentoAntecipado.ShowModal;
  FreeAndNil(frmControleMesaPagamentoAntecipado);

  qrVendaMesa.Refresh;
  qrVendaMesa.Locate('nro_mesa;tipo_venda',
    vararrayof([numero, tipo_venda]), []);
end;

procedure TfrmControlemesalancamento.acPesquisaGarcomExecute(Sender: TObject);
begin
  if qrBuscaItem.Active then
  begin
    edCodGarcom.SetFocus;

    frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
      '  select usu_001, usu_002, usu_003 from usuarios ',
      CriaIntegerArray([0, 1, 2]), CriaStringArray(['Código', 'Nome', 'Usuário']
      ), 0, 1, ' sit_001=4 and b_funcao_garcom ');
    frmBuscaRegistro.ShowModal;
    if frmBuscaRegistro.tag = 1 then
      qrBuscaItem.FieldByName('id_garcom').Value :=
        frmBuscaRegistro.valor_retorno;
    frmBuscaRegistro.Free;
  end;
end;

procedure TfrmControlemesalancamento.acPesquisarItemExecute(Sender: TObject);
var
  str_sql: string;
begin
  edCodProduto.SetFocus;

  str_sql := 'SELECT MAT.MAT_001, MAT.MAT_004, MAT.MAT_003, ' +
    ' CAT.CAT_002, UNI.UNI_002, MAT.MAT_008 ' + ' FROM MATERIAIS MAT ' +
    ' LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND (UNI.UNI_001 = MAT.UNI_001) '
    + ' LEFT OUTER JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.CAT_001 = MAT.CAT_001)';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
    CriaIntegerArray([1, 2, 3, 4, 5]), CriaStringArray(['Código', 'Produto',
    'Categoria', 'Unidade', 'Preço']), 1, 1, ' mat.sit_001=4 and MAT.emp_001=' +
    inttostr(recproj.iEmp), 800, 500);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.tag = 1 then
    edCodProduto.Text := frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.Free;
  if edQuantidade.CanFocus then
    edQuantidade.SetFocus;
end;

procedure TfrmControlemesalancamento.acPreFechamentoImprimirExecute
  (Sender: TObject);
var
  venda, id_usuario: Integer;
  exigesenha: boolean;
begin
  if qrVendaMesa.Active then
  begin
    if qrVendaMesa.RecordCount > 0 then
    begin
      if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
        exigesenha := bExigesenhaprefechamentomesa
      else
        exigesenha := bExigesenhaprefechamentocomanda;

      if exigesenha = true then
      begin
        if frmmenu.ConfirmacaoSenha('b_permite_prefechamento_mesa_comanda',
          id_usuario) = false then
          abort;
      end;

      frmFechamentoMesaComanda := TfrmFechamentoMesaComanda.create(self,
        qrVendaMesa.FieldByName('nro_mesa').AsInteger,
        qrVendaMesa.FieldByName('tipo_venda').asstring);
      frmFechamentoMesaComanda.ShowModal;
      venda := frmFechamentoMesaComanda.venda_retorno;
      FreeAndNil(frmFechamentoMesaComanda);

      if venda > 0 then
      begin
        frmControleMesaRelatorios.ImprimeVenda(venda);
        MudaStatusVendaImpresso(venda);
        qrVendaMesa.Refresh;
        qrVendaMesa.Locate('nro_mesa;tipo_venda',
          vararrayof([numero, tipo_venda]), []);
        Close;
      end;
    end
    else
      Application.MessageBox('Esta venda não possui itens!', 'Atenção',
        MB_ICONINFORMATION + MB_OK);
  end;
end;

procedure TfrmControlemesalancamento.acReservarMesaExecute(Sender: TObject);
var
  numero_mesa: Integer;
begin
  if qrVendaMesa.RecordCount > 0 then
    numero_mesa := qrVendaMesa.FieldByName('nro_mesa').AsInteger
  else
    numero_mesa := 0;

  frmControleMesaReservar := TfrmControleMesaReservar.create(self, numero_mesa);
  frmControleMesaReservar.ShowModal;
  frmControleMesaReservar.Free;
  qrVendaMesa.Refresh;
  qrVendaMesa.Locate('nro_mesa;tipo_venda',
    vararrayof([numero, tipo_venda]), []);
end;

procedure TfrmControlemesalancamento.acSalvarFecharExecute(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Deseja imprimir este pedido?', 'Atenção',
        mB_ICONQUESTION + MB_yesno) = mrYes then
     EnviarCozinha(false);

  Close;
end;

procedure TfrmControlemesalancamento.acTranferenciaMesaExecute(Sender: TObject);
var
  ok: boolean;
  id_usuario_canc: Integer;
begin

  id_usuario_canc := recproj.iUsuario;
  if bExigeSenhaTranferenciaMesa then
    ok := frmmenu.ConfirmacaoSenha('b_transferencia_mesa', id_usuario_canc)
  else
    ok := true;

  if ok then
  begin
    frmControleMesaJuntarTransferir := TfrmControleMesaJuntarTransferir.create
      (nil, qrVendaMesa.FieldByName('id_venda').AsInteger,
      qrVendaMesa.FieldByName('nro_mesa').AsInteger, 1, id_usuario_canc);
    frmControleMesaJuntarTransferir.ShowModal;
    if frmControleMesaJuntarTransferir.tag = 1 then
    begin
      qrVendaMesa.Locate('id_mesa',
        frmControleMesaJuntarTransferir.id_mesa_destino, []);
      numero := strtoint(qrVendaMesa.FieldByName('nro_mesa').asstring);
    end;
    FreeAndNil(frmControleMesaJuntarTransferir);
    frmControlemesalancamento.Close;
  end;
end;

procedure TfrmControlemesalancamento.acTransferenciaItemExecute
  (Sender: TObject);
var
  id_usuario: Integer;
begin
  if qrVendaItem.Active then
  begin
    if qrVendaItem.RecordCount > 0 then
    begin
      // Valida a permissão de usuario para transferência de item
      if not frmmenu.ConfirmacaoSenha('b_permite_transferencia_item', id_usuario)
      then
        abort;
      frmTransferenciaitem := TfrmTransferenciaitem.create(self,
        qrVendaMesa.FieldByName('id_venda').AsInteger);
      frmTransferenciaitem.ShowModal;
      if frmTransferenciaitem.tag = 1 then
      begin
        AtualizaTotalMesa(qrVendaMesa.FieldByName('id_venda').AsInteger);
        AtualizaTotalMesa(frmTransferenciaitem.id_venda_destino);
      end;
      FreeAndNil(frmTransferenciaitem);
      frmControlemesalancamento.Close;
    end
    else
      Application.MessageBox('Esta venda não possui itens!', 'Atenção',
        MB_ICONINFORMATION + MB_OK);
  end;
end;

procedure TfrmControlemesalancamento.acTransferenciamesacomandaExecute
  (Sender: TObject);
begin
  inherited;
  frmImportamesaecomanda := TfrmImportamesaecomanda.create(self);
  frmImportamesaecomanda.id_venda := qrVendaMesa.FieldByName('id_venda')
    .AsInteger;
  frmImportamesaecomanda.ShowModal;
  FreeAndNil(frmImportamesaecomanda);
  Close;
end;

procedure TfrmControlemesalancamento.EnviarCozinha(reimpressao: boolean);
var
  str_sql: string;
  id_venda, id_usuario_reimpressao: Integer;
begin
  if qrVendaItem.RecordCount = 0 then
  begin
    if reimpressao then
      Application.MessageBox('Esta venda não possui itens!', 'Atenção',
        MB_ICONINFORMATION + MB_OK);

    exit;
  end;

  id_venda := qrVendaMesa.FieldByName('id_venda').AsInteger;

  if reimpressao then
  begin
    // Verifica acesso à reimpressão (Bruno - 16/04/2018)
    if frmmenu.ConfirmacaoSenha('b_permite_reimpressao_mesa_comanda',
      id_usuario_reimpressao) then
    begin
      frmControleMesaImpressaoCozinha := TfrmControleMesaImpressaoCozinha.create
        (self, id_venda, false, nil);
      frmControleMesaImpressaoCozinha.ShowModal;
      if frmControleMesaImpressaoCozinha.tag = 1 then
      begin
        frmControleMesaImpressaoCozinha.cdsVendaItem.ApplyUpdates(1);
      end;
      frmControleMesaImpressaoCozinha.Free;
    end;
  end;

  str_sql := 'UPDATE VENDAITEM SET ITE_011 = ''S'' where ' + '  ven_001 =   ' +
    qrVendaMesa.FieldByName('id_venda').asstring + ' and emp_001 = ' +
    inttostr(recproj.iEmp) + ' and ite_008 = ''N'' ';

  ExecutaComandoSQL(str_sql);

  frmmenu.TmImpMobileTimer(nil);
  // chama o timer de impressão de produção do menu principal
  AtualizaTotalMesa(id_venda);
  qrVendaMesa.Refresh;
  qrVendaMesa.Locate('nro_mesa;tipo_venda',
    vararrayof([numero, tipo_venda]), []);
end;

procedure TfrmControlemesalancamento.ValidaAcoesStatusMesas;
var
  codStatus: Integer;
  tipo_venda: string;
begin
  if qrVendaMesa.RecordCount > 0 then
  begin
    // habilita desabilita ações de acordo com o status da mesa
    codStatus := qrVendaMesa.FieldByName('status').AsInteger;
    tipo_venda := qrVendaMesa.FieldByName('tipo_venda').asstring;

    // Disponivel e reservada
    if codStatus in [4, 19] then
    begin
      acPreFechamentoImprimir.Enabled := true;
      acFecharMesa.Enabled := true;
      acImpressaoCozinha.Enabled := false;
      acTranferenciaMesa.Enabled := false;
      acJuntarMesas.Enabled := false;
      acPagamentoAntecipado.Enabled := false;
      acCancelaMesa.Enabled := false;
      acPesquisarItem.Enabled := false;
      acCancelaItem.Enabled := false;
      acDescontoItem.Enabled := false;
      acObservacaoItem.Enabled := false;
      acReservarMesa.Enabled := true;
      acImprimirPrevia.Enabled := false;
      acTransferirGarcom.Enabled := false;
      acAlterarTituloMesa.Enabled := false;
      acAlteraPessoas.Enabled := false;
      acInsereProdutoFracionado.Enabled := false;
      acOpcionaisItem.Enabled := false;
      acTransferenciaItem.Enabled := false;
      acAlterarQuantidadeItem.Enabled := false;
      acTransferenciamesacomanda.Enabled:=false;
    end
    // ocupada
    else if codStatus = 8 then
    begin
      acPreFechamentoImprimir.Enabled := true;
      acFecharMesa.Enabled := true;
      acImpressaoCozinha.Enabled := true;
      acPagamentoAntecipado.Enabled := true;
      acCancelaMesa.Enabled := true;
      acPesquisarItem.Enabled := true;
      acReservarMesa.Enabled := true;
      acImprimirPrevia.Enabled := true;
      acTransferirGarcom.Enabled := true;
      acAlterarTituloMesa.Enabled := true;
      acAlteraPessoas.Enabled := true;
      acInsereProdutoFracionado.Enabled := true;
      acOpcionaisItem.Enabled := true;
      acTransferenciaItem.Enabled := true;
      acJuntarMesas.Enabled := true;
      acTransferenciamesacomanda.Enabled:=true;

      if qrVendaItem.Active then
      begin
        if (qrVendaItem.RecordCount > 0) then
        begin
          acCancelaItem.Enabled := true;
          acDescontoItem.Enabled := true;
          acObservacaoItem.Enabled := true;
          acOpcionaisItem.Enabled := true;
          acTransferenciaItem.Enabled := not bLancandoItens;
          acAlterarQuantidadeItem.Enabled := true;
        end
        else
        begin
          acCancelaItem.Enabled := false;
          acDescontoItem.Enabled := false;
          acObservacaoItem.Enabled := false;
          acOpcionaisItem.Enabled := false;
          acTransferenciaItem.Enabled := false;
          acAlterarQuantidadeItem.Enabled := false;
        end;
      end;

      if tipo_venda = 'M' then
      begin
        acTranferenciaMesa.Enabled := true;
      end
      else
      begin
        acTranferenciaMesa.Enabled := false;
        acTransferenciaItem.Enabled := false;
      end;
    end
    // Pre Fechada
    else if codStatus = 21 then
    begin
      acPreFechamentoImprimir.Enabled := true;
      acFecharMesa.Enabled := true;
      acImpressaoCozinha.Enabled := false;
      acTranferenciaMesa.Enabled := false;
      acJuntarMesas.Enabled := false;
      acPagamentoAntecipado.Enabled := false;
      acCancelaMesa.Enabled := true;
      acPesquisarItem.Enabled := false;
      acCancelaItem.Enabled := false;
      acDescontoItem.Enabled := false;
      acObservacaoItem.Enabled := false;
      acReservarMesa.Enabled := false;
      acImprimirPrevia.Enabled := true;
      acTransferirGarcom.Enabled := true;
      acAlterarTituloMesa.Enabled := true;
      acAlteraPessoas.Enabled := false;
      acInsereProdutoFracionado.Enabled := false;
      acOpcionaisItem.Enabled := false;
      acTransferenciaItem.Enabled := false;
      acAlterarQuantidadeItem.Enabled := false;
      acTransferenciamesacomanda.Enabled:=false;
    end
    else if codStatus = 15 then // Aguardando liberação para limpeza
    begin
      acPreFechamentoImprimir.Enabled := false;
      acFecharMesa.Enabled := false;
      acImpressaoCozinha.Enabled := false;
      acTranferenciaMesa.Enabled := false;
      acJuntarMesas.Enabled := false;
      acPagamentoAntecipado.Enabled := false;
      acCancelaMesa.Enabled := false;
      acPesquisarItem.Enabled := false;
      acCancelaItem.Enabled := false;
      acDescontoItem.Enabled := false;
      acObservacaoItem.Enabled := false;
      acReservarMesa.Enabled := false;
      acImprimirPrevia.Enabled := false;
      acTransferirGarcom.Enabled := false;
      acAlterarTituloMesa.Enabled := false;
      acAlteraPessoas.Enabled := false;
      acInsereProdutoFracionado.Enabled := false;
      acOpcionaisItem.Enabled := false;
      acTransferenciaItem.Enabled := false;
      acAlterarQuantidadeItem.Enabled := false;
      acTransferenciamesacomanda.Enabled:=false;
    end;
  end
  else
  begin
    acPreFechamentoImprimir.Enabled := false;
    acFecharMesa.Enabled := false;
    acImpressaoCozinha.Enabled := false;
    acTranferenciaMesa.Enabled := false;
    acJuntarMesas.Enabled := false;
    acPagamentoAntecipado.Enabled := false;
    acCancelaMesa.Enabled := false;
    acPesquisarItem.Enabled := false;
    acCancelaItem.Enabled := false;
    acDescontoItem.Enabled := false;
    acObservacaoItem.Enabled := false;
    acReservarMesa.Enabled := false;
    acImprimirPrevia.Enabled := false;
    acTransferirGarcom.Enabled := false;
    acAlterarTituloMesa.Enabled := false;
    acAlteraPessoas.Enabled := false;
    acInsereProdutoFracionado.Enabled := false;
    acOpcionaisItem.Enabled := false;
    acTransferenciaItem.Enabled := false;
    acAlterarQuantidadeItem.Enabled := false;
    acTransferenciamesacomanda.Enabled:=false;
  end;
end;

procedure TfrmControlemesalancamento.ACBrBAL1LePeso(Peso: Double;
  Resposta: AnsiString);
var
  valid: Integer;
  msg: string;
  tara: Double;
begin
  if Peso <= 0 then
  begin
    valid := Trunc(ACBrBAL1.UltimoPesoLido);
    case valid of
      0:
        msg := 'Time out. A balança não respondeu a tempo ou não foi detectado peso (peso zero)';
      -1:
        msg := 'Peso instável. Faça outra leitura';
      -2:
        msg := 'Peso negativo';
      -9:
        msg := 'Erro de comunicação! Verifique se a balança está ligada e conectada ao computador e se as configurações estão corretas.';
      -10:
        msg := 'Sobrepeso';
    else
      msg := 'Erro não identificado! Verifique se a balança está ligada e conectada ao computador e se as configurações estão corretas.';
    end;
    qrBuscaItem.FieldByName('quantidade').AsFloat := 0;
    Application.MessageBox
      (pchar('Não foi possível obter o peso da balança. Detalhes:' + sLineBreak
      + msg), 'Atenção', MB_ICONWARNING);
  end
  else
  begin
    tara := qrBuscaItem.FieldByName('tara_balanca').AsFloat;
    // se o peso for menor que a tara ou se a tara estiver zerada, a quantidade é o mesmo do peso
    if (compareVAlue(Peso, tara) = -1) or (compareVAlue(tara, 0.0) = 0) then
      qrBuscaItem.FieldByName('quantidade').AsFloat := Peso
    else
      qrBuscaItem.FieldByName('quantidade').AsFloat := Peso - tara;
  end;
end;

end.
