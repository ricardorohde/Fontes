unit uControleDeliveryDetalheVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, JvExControls, JvLabel, cxMaskEdit,
  cxButtonEdit, cxDBEdit, VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls,
  VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, AdvGlowButton,
  Vcl.StdCtrls, Vcl.DBCtrls, AdvGroupBox, system.math,
  Vcl.Mask, cxTextEdit, AdvPageControl, Vcl.ComCtrls, AdvPanel, Data.DB, MemDS,
  DBAccess, Uni, Vcl.ActnList, JvExStdCtrls, JvCombobox, JvDBCombobox,
  cxDropDownEdit, cxCalendar, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxCalc, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGridCardView, cxGridDBCardView, cxGridCustomLayoutView, JvEdit,
  JvValidateEdit, JvDataSource, Datasnap.DBClient, Datasnap.Provider, Vcl.Grids,
  Vcl.DBGrids, cxCheckBox, cxGridBandedTableView, cxGridDBBandedTableView,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, System.Actions,
  ACBrBase, ACBrBAL, ACBRDevice,  dxWheelPicker,
  dxNumericWheelPicker, dxDateTimeWheelPicker, dxDBDateTimeWheelPicker,
  cxSpinEdit, cxTimeEdit, dxGDIPlusClasses, dxSkinBlack, dxSkinBlue,
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
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

  type ItemVenda = Record
    id_venda : integer;
    item_venda : integer;
    item_fracionado : integer;
    possui_opcional : boolean;
  End;

type
  TfrmControleDeliveryDetalheVenda = class(TForm)
    pnBotoes: TFlowPanel;
    btCancelar: TAdvGlowButton;
    btSalvar: TAdvGlowButton;
    btExcluir: TAdvGlowButton;
    btEditar: TAdvGlowButton;
    btNovo: TAdvGlowButton;
    AdvPanel1: TAdvPanel;
    qrVenda: TUniQuery;
    qrVendaid_cliente: TIntegerField;
    qrVendadata_cadastro: TDateTimeField;
    qrVendatipo_venda: TWideStringField;
    qrVendavenda_orcamento: TIntegerField;
    dsVenda: TDataSource;
    ActionList1: TActionList;
    acBuscaCliente: TAction;
    AdvGroupBox1: TAdvGroupBox;
    qrBuscaItem: TUniQuery;
    qrBuscaItemid_material: TIntegerField;
    qrBuscaItemdescricao: TWideStringField;
    qrBuscaItemunidade: TWideStringField;
    qrBuscaItemvalor_unit: TFloatField;
    qrBuscaItemcod_ref: TWideStringField;
    qrBuscaItemvalortotal: TCurrencyField;
    qrBuscaItemultimo_item: TIntegerField;
    dsBuscaItem: TDataSource;
    Label6: TLabel;
    edCodProduto: TcxButtonEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    edObservacaoItem: TEdit;
    qrBuscaItemquantidade: TFloatField;
    acPesquisaItem: TAction;
    DBText1: TDBText;
    DBText6: TDBText;
    Label9: TLabel;
    btInserir: TAdvGlowButton;
    qrInsereItem: TUniQuery;
    qrVendaItem: TUniQuery;
    qrVendaItemid_empresa: TIntegerField;
    qrVendaItemid_venda: TIntegerField;
    qrVendaItemnro_item: TIntegerField;
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
    dsVendaItem: TDataSource;
    qrCliente: TUniQuery;
    dsCliente: TDataSource;
    qrClientenome: TWideStringField;
    qrClientetelefone1: TWideStringField;
    qrClientetelefone2: TWideStringField;
    qrClientecelular1: TWideStringField;
    qrClientecelular2: TWideStringField;
    qrClientecelular3: TWideStringField;
    qrClienteendereco: TWideStringField;
    qrClienteendereco_numero: TWideStringField;
    qrClientebairro: TWideStringField;
    qrClientecidade: TWideStringField;
    qrClientecep: TWideStringField;
    qrClienteid_cliente: TIntegerField;
    qrClienteid_empresa: TIntegerField;
    qrClienteendereco_complemento: TWideStringField;
    qrClienteendereco_referencia: TWideStringField;
    qrClientetaxa_delivery: TFloatField;
    qrVendasit_001: TIntegerField;
    qrVendausu_001_1: TIntegerField;
    qrVendaven_001: TIntegerField;
    qrVendaemp_001: TIntegerField;
    qrVendastatus_desc: TWideStringField;
    qrVendatotal_venda: TFloatField;
    AdvGroupBox3: TAdvGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText2: TDBText;
    qrVendatotal_itens: TFloatField;
    qrVendaacrescimo: TFloatField;
    AdvGroupBox4: TAdvGroupBox;
    Label25: TLabel;
    Label27: TLabel;
    qrVendadesconto_percent: TFloatField;
    jvdsVenda: TJvDataSource;
    qrVendadesconto: TFloatField;
    edDescontoValor: TJvValidateEdit;
    acExluirItem: TAction;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBCardView1: TcxGridDBCardView;
    cxGrid2DBTableView1nro_item: TcxGridDBColumn;
    cxGrid2DBTableView1qtdevenda: TcxGridDBColumn;
    cxGrid2DBTableView1vlrvenda: TcxGridDBColumn;
    cxGrid2DBTableView1descricao_item: TcxGridDBColumn;
    cxGrid2DBTableView1valor_total: TcxGridDBColumn;
    cxGrid2DBCardView1observacao: TcxGridDBCardViewRow;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    AdvGroupBox2: TAdvGroupBox;
    Label20: TLabel;
    btAgendar: TAdvGlowButton;
    edDescontoPercent: TJvValidateEdit;
    qrClientenro_vendas: TLargeintField;
    qrVendaid_caixa_abertura: TIntegerField;
    qrClientepontos_atuais: TIntegerField;
    cdsVendaItemFull: TClientDataSet;
    dspVendaItemFull: TDataSetProvider;
    qrVendaItemFull: TUniQuery;
    qrVendaItemFullemp_001: TIntegerField;
    qrVendaItemFullven_001: TIntegerField;
    qrVendaItemFullite_001: TIntegerField;
    qrVendaItemFullmat_001: TIntegerField;
    qrVendaItemFullcom_001: TIntegerField;
    qrVendaItemFullite_002: TFloatField;
    qrVendaItemFullite_003: TFloatField;
    qrVendaItemFullite_004: TFloatField;
    qrVendaItemFullite_005: TFloatField;
    qrVendaItemFullmat_002: TIntegerField;
    qrVendaItemFullmat_003: TIntegerField;
    qrVendaItemFullite_006: TWideStringField;
    qrVendaItemFullite_007: TIntegerField;
    qrVendaItemFullite_008: TWideStringField;
    qrVendaItemFullite_010: TDateTimeField;
    qrVendaItemFullsit_001: TIntegerField;
    qrVendaItemFullite_011: TWideStringField;
    qrVendaItemFullpes_001: TIntegerField;
    qrVendaItemFullite_012: TWideStringField;
    qrVendaItemFullite_013: TIntegerField;
    qrVendaItemFullgar_001: TIntegerField;
    qrVendaItemFulldesconto: TFloatField;
    qrVendaItemFullorm_codigo: TIntegerField;
    qrVendaItemFullcst_consumidor: TIntegerField;
    qrVendaItemFullicms_perc: TFloatField;
    qrVendaItemFullicms_valor: TFloatField;
    qrVendaItemFullpis_codigo_saida: TIntegerField;
    qrVendaItemFullpis_perc: TFloatField;
    qrVendaItemFullpis_valor: TFloatField;
    qrVendaItemFullcof_codigo_saida: TIntegerField;
    qrVendaItemFullcofins_perc: TFloatField;
    qrVendaItemFullcofins_valor: TFloatField;
    qrVendaItemFullmod_codigo: TIntegerField;
    qrVendaItemFullcfop_consumidor: TWideStringField;
    qrVendaItemFullredbasecalcst: TFloatField;
    qrVendaItemFullredbasecalcicms: TFloatField;
    qrVendaItemFullcso_codigo: TIntegerField;
    cdsVendaItemFullemp_001: TIntegerField;
    cdsVendaItemFullven_001: TIntegerField;
    cdsVendaItemFullite_001: TIntegerField;
    cdsVendaItemFullmat_001: TIntegerField;
    cdsVendaItemFullcom_001: TIntegerField;
    cdsVendaItemFullite_002: TFloatField;
    cdsVendaItemFullite_003: TFloatField;
    cdsVendaItemFullite_004: TFloatField;
    cdsVendaItemFullite_005: TFloatField;
    cdsVendaItemFullmat_002: TIntegerField;
    cdsVendaItemFullmat_003: TIntegerField;
    cdsVendaItemFullite_006: TWideStringField;
    cdsVendaItemFullite_007: TIntegerField;
    cdsVendaItemFullite_008: TWideStringField;
    cdsVendaItemFullite_010: TDateTimeField;
    cdsVendaItemFullsit_001: TIntegerField;
    cdsVendaItemFullite_011: TWideStringField;
    cdsVendaItemFullpes_001: TIntegerField;
    cdsVendaItemFullite_012: TWideStringField;
    cdsVendaItemFullite_013: TIntegerField;
    cdsVendaItemFullgar_001: TIntegerField;
    cdsVendaItemFulldesconto: TFloatField;
    cdsVendaItemFullorm_codigo: TIntegerField;
    cdsVendaItemFullcst_consumidor: TIntegerField;
    cdsVendaItemFullicms_perc: TFloatField;
    cdsVendaItemFullicms_valor: TFloatField;
    cdsVendaItemFullpis_codigo_saida: TIntegerField;
    cdsVendaItemFullpis_perc: TFloatField;
    cdsVendaItemFullpis_valor: TFloatField;
    cdsVendaItemFullcof_codigo_saida: TIntegerField;
    cdsVendaItemFullcofins_perc: TFloatField;
    cdsVendaItemFullcofins_valor: TFloatField;
    cdsVendaItemFullmod_codigo: TIntegerField;
    cdsVendaItemFullcfop_consumidor: TWideStringField;
    cdsVendaItemFullredbasecalcst: TFloatField;
    cdsVendaItemFullredbasecalcicms: TFloatField;
    cdsVendaItemFullcso_codigo: TIntegerField;
    qrVendaobservacao: TWideStringField;
    edValor: TJvValidateEdit;
    edQuantidade: TJvValidateEdit;
    JvdsBuscaItem: TJvDataSource;
    qrVendacpf_cliente: TWideStringField;
    qrClientecli_004: TWideStringField;
    DBText7: TDBText;
    DBText8: TDBText;
    qrBuscaItemcod_impressora: TIntegerField;
    qrVendab_taxa_entrega: TBooleanField;
    qrVendaItemqtdevenda: TFloatField;
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
    qrVendaItemdesc_tamanho: TWideStringField;
    cxGrid2DBTableView1desc_tamanho: TcxGridDBColumn;
    qrVendaItemFullid_usuario_cancelamento: TIntegerField;
    qrVendaItemFulltamanho: TWideStringField;
    qrVendaItemFullb_venda_tamanho: TBooleanField;
    cdsVendaItemFullid_usuario_cancelamento: TIntegerField;
    cdsVendaItemFulltamanho: TWideStringField;
    cdsVendaItemFullb_venda_tamanho: TBooleanField;
    acInsereProdutoFracionado: TAction;
    qrVendaItemitem_fracionado: TIntegerField;
    qrVendaItemOpcional: TUniQuery;
    dsVendaItemOpcional: TDataSource;
    qrVendaItemFullitem_fracionado: TIntegerField;
    qrVendaItemFullacrescimo: TFloatField;
    qrVendaItemOpcionalFull: TUniQuery;
    qrVendaItemOpcionalFullid_venda: TIntegerField;
    qrVendaItemOpcionalFullid_empresa: TIntegerField;
    qrVendaItemOpcionalFullid_vendaitem: TIntegerField;
    qrVendaItemOpcionalFullid_opcional: TIntegerField;
    dspVendaItemOpcionalFull: TDataSetProvider;
    cdsVendaItemOpcionalFull: TClientDataSet;
    cdsVendaItemOpcionalFullid_venda: TIntegerField;
    cdsVendaItemOpcionalFullid_empresa: TIntegerField;
    cdsVendaItemOpcionalFullid_vendaitem: TIntegerField;
    cdsVendaItemOpcionalFullid_opcional: TIntegerField;
    cdsVendaItemFullitem_fracionado: TIntegerField;
    cdsVendaItemFullacrescimo: TFloatField;
    cxGrid2DBCardView2: TcxGridDBCardView;
    cxGrid2Level3: TcxGridLevel;
    cxGrid2DBCardView3: TcxGridDBCardView;
    cxGrid2DBCardView3descricao: TcxGridDBCardViewRow;
    qrVendaItemOpcionalid_venda: TIntegerField;
    qrVendaItemOpcionalid_empresa: TIntegerField;
    qrVendaItemOpcionalid_vendaitem: TIntegerField;
    qrVendaItemOpcionalid_opcional: TIntegerField;
    qrVendaItemOpcionalvalor: TFloatField;
    qrVendaItemOpcionaldescricao: TWideStringField;
    qrVendaItemOpcionalord: TIntegerField;
    qrVendaItemacrescimo: TFloatField;
    cxGrid2DBTableView1acrescimo: TcxGridDBColumn;
    qrVendanro_venda: TIntegerField;
    qrVendaItemFullquantidade_impressao: TFloatField;
    qrVendaterminal_abertura: TWideStringField;
    btVendasAnteriores: TAdvGlowButton;
    ACBrBAL1: TACBrBAL;
    qrBuscaItemb_peso_balanca: TBooleanField;
    qrBuscaItemid_categoria: TIntegerField;
    acDescontoItem: TAction;
    cxGrid2DBTableView1desconto: TcxGridDBColumn;
    qrBuscaItemb_exige_alterar_preco_venda: TBooleanField;
    qrBuscaItemtara_balanca: TFloatField;
    qrBuscaItemb_exige_70pc_valor_unit: TBooleanField;
    qrBuscaItemvalor_unit_ref: TFloatField;
    pgcontroldelivery: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    AdvTabSheet2: TAdvTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    labsta: TLabel;
    Label28: TLabel;
    Label26: TLabel;
    cbTipoVenda: TJvDBComboBox;
    cbVendaOrcamento: TJvDBComboBox;
    edIdCliente: TcxDBButtonEdit;
    DBEdit1: TDBEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    edTaxaEntrega: TcxDBCalcEdit;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit3: TDBEdit;
    qrVendadata_agendamento: TDateTimeField;
    cxDBDateEdit2: TcxDBDateEdit;
    qrVendahora_agendamento: TTimeField;
    Label29: TLabel;
    Label30: TLabel;
    DBMemo2: TDBMemo;
    Label31: TLabel;
    AdvGroupBox5: TAdvGroupBox;
    AdvPanel2: TAdvPanel;
    lbNroCompra: TLabel;
    lbTotalItens: TLabel;
    lbNroPontos: TLabel;
    btEditarCliente: TAdvGlowButton;
    cxDBCheckBox1: TcxDBCheckBox;
    Image1: TImage;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBMaskEdit1: TcxDBMaskEdit;
    qrAux1: TUniQuery;
    procedure acBuscaClienteExecute(Sender: TObject);
    procedure qrVendaid_clienteChange(Sender: TField);
    procedure acPesquisaItemExecute(Sender: TObject);
    procedure ValidaBotoes;
    procedure qrVendaAfterScroll(DataSet: TDataSet);
    procedure edCodProdutoExit(Sender: TObject);
    procedure dsClienteStateChange(Sender: TObject);
    constructor Create (sender : tcomponent; id_venda: integer =0 ;
                        id_cliente : integer = 0 ; tipo_venda : string ='';
                        visualizar_somente : boolean = false);  reintroduce;
    procedure btNovoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure NovoRegistro;
    procedure FormShow(Sender: TObject);
    procedure dsVendaStateChange(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure AtualizaTotalVenda;
    procedure qrVendaAfterOpen(DataSet: TDataSet);
    procedure qrBuscaItemCalcFields(DataSet: TDataSet);
    procedure qrVendaAfterPost(DataSet: TDataSet);
    procedure qrVendaCalcFields(DataSet: TDataSet);
    procedure aplicaDesconto(tipo : integer = 1);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edDescontoPercentExit(Sender: TObject);
    procedure edDescontoValorExit(Sender: TObject);
    procedure acExluirItemExecute(Sender: TObject);
    procedure CarregaParametrosConfig;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure qrVendaItemObsSubAfterOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MostraDadosLabelCliente;
    procedure dsVendaItemStateChange(Sender: TObject);
    procedure btEditarClienteClick(Sender: TObject);
    procedure dsBuscaItemStateChange(Sender: TObject);
    procedure qrBuscaItemAfterOpen(DataSet: TDataSet);
    procedure qrVendab_taxa_entregaChange(Sender: TField);
    procedure cxDBCheckBox1Click(Sender: TObject);
    procedure acInsereProdutoFracionadoExecute(Sender: TObject);
    procedure btVendasAnterioresClick(Sender: TObject);
    function MontaFiltroItens(Itens : TArray<ItemVenda>; fracionados : boolean ) : String;
    procedure ACBrBAL1LePeso(Peso: Double; Resposta: AnsiString);
    procedure acDescontoItemExecute(Sender: TObject);
    // 08/08/2017 - Rafal
    function ValidaInsercaoProduto(texto: String; out quantidade: Double; out inserir_diretamente: Boolean): Boolean;
    procedure qrVendaacrescimoChange(Sender: TField);
    procedure edQuantidadeChange(Sender: TObject);
    procedure qrBuscaItemquantidadeChange(Sender: TField);
    procedure btAgendarClick(Sender: TObject);
  private
    { Private declarations }
    id_cliente, id_venda, iTimeOutBalanca  : integer;
    tipo_venda : string;
    bAlteraValorUnitarioItem, bFracionadoMaiorValor, bNumeracaoVendaPorCaixa,
    b_visualizar, bUtilizaBalanca, bExige70pc, bExige70pcFracionadoCatDiffComanda,
    bAlteraValorUnitarioItemUsuario,bTaxapadraodelivery, bUtilizaSelecaoPrecos : boolean;
    // 08/08/2017 - Rafael
    largura_cod_barras, largura_cod_barras_produto, cod_barras_digito_1: Integer;
    b_flag_busca_valida: Boolean;
  public
    { Public declarations }
  end;

var
  frmControleDeliveryDetalheVenda: TfrmControleDeliveryDetalheVenda;

implementation

{$R *.dfm}

uses uMenu, uBuscaRegistro, Funcao_DB, uFuncoes, uControleMesaItensAcoes,
  uControleDeliveryFinaliza, uControleDeliveryFechamento, uDetalheCliente,
  uVendaSelecaoTamanho, uVendaItemFracionado, uControleDeliveryVendaAnterior,
  uVendaSelecaoPreco;

constructor TfrmControleDeliveryDetalheVenda.Create (sender : tcomponent; id_venda: integer =0 ;
                           id_cliente : integer = 0 ; tipo_venda : string ='';
                           visualizar_somente : boolean = false );
begin
  inherited Create(sender);
  //verifica se existe caixa aberto para o usuário atual
  if  RecProj.iIDCaixa = 0 then
  begin
    Application.MessageBox(pchar('Não existe caixa aberto para o usuário '
                           + recproj.sUsuario+'!'), 'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  b_visualizar := visualizar_somente;
  qrVenda.ParamByName('id_venda').AsInteger:= id_venda;
  qrVenda.ParamByName('id_empresa').AsInteger:= RecProj.iEmp;
  qrVenda.Open;

  qrVendaItem.ParamByName('id_empresa').AsInteger:= RecProj.iEmp;
  qrVendaItemOpcional.ParamByName('id_empresa').AsInteger:= RecProj.iEmp;

  qrCliente.ParamByName('id_empresa').AsInteger :=  RecProj.iEmp;

  cbTipoVenda.ReadOnly := tipo_venda <> '';
  cbVendaOrcamento.ReadOnly := tipo_venda <> '';

  if tipo_venda='' then tipo_venda := 'B';
  self.id_cliente := id_cliente;
  self.tipo_venda :=  uppercase(tipo_venda);
  self.id_venda :=  id_venda;

  if tipo_venda='D' then
  begin
    btAgendar.visible := true;
  end
  else
  begin
    btAgendar.visible := false;
  end;

  CarregaParametrosConfig;
  edValor.Enabled := bAlteraValorUnitarioItem and bAlteraValorUnitarioItemUsuario;

  //carrega as configurações da balança
  if bUtilizaBalanca then
  begin
    ACBrBAL1.Modelo           := TACBrBALModelo(  LerIntegerConfig('CBBALANCAMODELO', frmMenu.cdsCFG.FileName));
    ACBrBAL1.Device.HandShake := TACBrHandShake(LerIntegerConfig('CBBALANCAHANDSHAKING', frmMenu.cdsCFG.FileName));
    ACBrBAL1.Device.Parity    := TACBrSerialParity(LerIntegerConfig('CBBALANCAPARITY', frmMenu.cdsCFG.FileName));
    ACBrBAL1.Device.Stop      := TACBrSerialStop(LerIntegerConfig('CBBALANCASTOPBITS', frmMenu.cdsCFG.FileName));
    ACBrBAL1.Device.Data      := StrToInt( LerStringConfig('CBBALANCADATABITS', frmMenu.cdsCFG.FileName) );
    ACBrBAL1.Device.Baud      := StrToInt( LerStringConfig('CBBALANCABAUD', frmMenu.cdsCFG.FileName) );
    ACBrBAL1.Device.Porta     := LerStringConfig('CBBALANCAPORTASERIAL', frmMenu.cdsCFG.FileName);
    ACBrBAL1.ArqLOG           := format('%sLog\Balanca\Balanca_%s.log' ,[ExtractFilePath(Application.ExeName) , FormatDateTime('ddmmyyyy', Date)]);
    //cria o diretório de log
    if Not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Log\Balanca') then
      ForceDirectories(ExtractFilePath(Application.ExeName) + 'Log\Balanca');
  end;

  edtaxaentrega.Properties.ReadOnly := not LerBooleanConfig('CKPERMITEALTERARTAXADELIVERY', frmmenu.cdsCFG.FileName);

end;

procedure TfrmControleDeliveryDetalheVenda.cxDBCheckBox1Click(Sender: TObject);
begin
  Perform(WM_NEXTDLGCTL,0,0);
  qrVendab_taxa_entregaChange(nil);
end;

procedure TfrmControleDeliveryDetalheVenda.CarregaParametrosConfig;
begin
  buscacampo( bAlteraValorUnitarioItemUsuario, 'select b_alteracao_precou_venda from usuarios where usu_001=' + inttostr(recproj.iUsuario), '', false);
   bAlteraValorUnitarioItem := LerBooleanConfig('CKHABILITARALTERARVALORUNITARIODL', frmMenu.cdsCFG.FileName);
  bFracionadoMaiorValor := LerBooleanConfig('CKFACIONADOMAIORVALORDELIVERY', frmMenu.cdsCFG.FileName);
  bNumeracaoVendaPorCaixa := LerBooleanConfig('CKNUMEROVENDAPORCAIXADELIVERY', frmMenu.cdsCFG.FileName);
  bUtilizaBalanca := LerBooleanConfig('CKUTILIZABALANCA',frmMenu.cdsCFG.FileName);
  iTimeOutBalanca := LerIntegerConfig ('EDBALANCATIMEOUT', frmMenu.cdsCFG.FileName);
  // 07/07/2017 - Rafael
  largura_cod_barras :=  LerIntegerConfig ('EDBALANCALARGURACODIGOBARRAS', frmMenu.cdsCFG.FileName);
  largura_cod_barras_produto:= LerIntegerConfig ('EDBALANCALARGURACODIGOPRODUTO', frmMenu.cdsCFG.FileName);
  cod_barras_digito_1 :=   LerIntegerConfig ('EDBALANCACODIGOBARRASDIGITOINICIAL', frmMenu.cdsCFG.FileName);
  bExige70pc := LerBooleanConfig('CKEXIGIR70PCVALORUNITDELIVERY', frmmenu.cdsCFG.FileName);
  bExige70pcFracionadoCatDiffComanda := LerBooleanConfig('CKFRACIONADO70PCCATDIFFDELIVERY', frmmenu.cdsCFG.FileName);
  //Verifica se usa taxa padrão delivery   10/04/2018   V2.36.0.0 Rafael
  bTaxapadraodelivery:= LerBooleanConfig('ckTaxadeliverypadrao', frmmenu.cdsCFG.FileName);
  bUtilizaSelecaoPrecos:= LerBooleanConfig('ckUtilizar_selecao_precos', frmMenu.cdsCFG.FileName);
end;

procedure  TfrmControleDeliveryDetalheVenda.ValidaBotoes;
begin
  if b_visualizar then
  begin
    btNovo.Enabled:=false;
    btEditar.Enabled:=false;
    btExcluir.Enabled:=false;
    btSalvar.Enabled:=false;
    btCancelar.Enabled:=false;
    btInserir.Enabled := false;
    edDescontoPercent.Enabled:=false;
    edDescontoValor.Enabled:=false;
    btAgendar.Enabled :=false;
    btEditarCliente.Enabled:=false;
    btVendasAnteriores.Enabled := false;
  end
  else
  begin
    if qrVenda.Active then
    begin
      //aberto, nao editando...
      if qrVenda.State = dsBrowse then
      begin
        btNovo.Enabled:=true;
        btEditar.Enabled:=true;
        btExcluir.Enabled:=true;
        btSalvar.Enabled:=false;
        btCancelar.Enabled:=false;
        btInserir.Enabled := false;
        btAgendar.Enabled :=true;
        btVendasAnteriores.Enabled := false;
        if qrVenda.RecordCount<=0 then
        begin
          btEditar.Enabled:=false;
          btExcluir.Enabled:=false;
          btAgendar.Enabled :=false;
        end;
        edDescontoPercent.Enabled:=false;
        edDescontoValor.Enabled:=false;
      end
      else if qrVenda.State in [dsInsert, dsEdit]  then
      begin
        btNovo.Enabled:=false;
        btEditar.Enabled:=false;
        btExcluir.Enabled:=false;
        btSalvar.Enabled:=true;
        btCancelar.Enabled:=true;
        btInserir.Enabled := true;
        edDescontoPercent.Enabled:=true;
        edDescontoValor.Enabled:=true;
        btAgendar.Enabled :=true;
        btVendasAnteriores.Enabled := true;
      end;
    end
    else
    begin
      btNovo.Enabled:=true;
      btEditar.Enabled:=false;
      btExcluir.Enabled:=false;
      btSalvar.Enabled:=false;
      btCancelar.Enabled:=false;
      btInserir.Enabled := false;
      edDescontoPercent.Enabled:=false;
      edDescontoValor.Enabled:=false;
      btAgendar.Enabled :=false;
      btVendasAnteriores.Enabled := false;
    end;
  end;
end;

function TfrmControleDeliveryDetalheVenda.ValidaInsercaoProduto(texto: String;
  out quantidade: Double; out inserir_diretamente: Boolean): Boolean;
var
  indice_qtde: Integer;
  str_qtd, cod_ref: String;
  flag_etiqueta_balanca: Boolean;
begin
  result := true;
  inserir_diretamente := false;
  texto := trim(texto);
  flag_etiqueta_balanca := (Length(texto) = largura_cod_barras) and (texto[1] = inttostr(cod_barras_digito_1));

  if Length(texto) > 0 then
  begin
    //verifica se o operador informouno formato: qtde * cod
    indice_qtde := AnsiPos('*', texto);
    if indice_qtde > 0 then
    begin
      str_qtd := copy(texto, 1, indice_qtde-1);
      cod_ref := copy(texto, indice_qtde+1, length(texto));
      //verifica se a quantidade digitada é um número
      try
        quantidade := StrToFloat(trim(str_qtd));
        inserir_diretamente := true;
      except
        quantidade := 0;
        application.MessageBox('Informações inválidas!', 'Atenção', MB_ICONINFORMATION);
        result := false;
      end;
    end
    else
    begin
      //verifica se é codigo de barras da etiqueta de balança...
      if flag_etiqueta_balanca then
      begin
        //pega a parte referente ao codigo do produto
        cod_ref := copy(texto, 2, largura_cod_barras_produto);
        //converte pra inteiro e volta para string (para remover os '0' iniciais)
        cod_ref := inttostr(strtoint(cod_ref));
        //pega a parte referente a quantidade
        str_qtd := copy(texto, largura_cod_barras_produto+2, largura_cod_barras);
        //descarta o ultimo digito, que é dv
        str_qtd := copy(str_qtd, 1, Length(str_qtd)-1);

        try
          quantidade := StrToFloat(trim(str_qtd)) / 1000;
          inserir_diretamente := true;
        except
          quantidade := 0;
          application.MessageBox('Informações inválidas!', 'Atenção', MB_ICONINFORMATION);
          result := false;
        end;
      end
      else
      begin
        quantidade := 1;
        cod_ref := texto;
      end;
      // largura_cod_barras, largura_cod_barras_produto, cod_barras_digito_1 : integer;
    end;
    // se nao houve erro na inserção do codigo e quantidade, faz a busca
    if result then
    begin
      qrBuscaItem.Close;
      qrBuscaItem.parambyname('emp').AsInteger := recproj.iEmp;
      qrBuscaItem.parambyname('cod_ref').asstring := cod_ref;
      qrBuscaItem.parambyname('id_venda').asinteger := qrvenda.FieldByName('ven_001').AsInteger;
      qrBuscaItem.Open;

      if qrBuscaItem.RecordCount > 0 then
      begin
        result := true;

        if qrBuscaItem.FieldByName('b_peso_balanca').AsBoolean and not inserir_diretamente then
          quantidade := qrBuscaItem.FieldByName('quantidade').asfloat;

        if flag_etiqueta_balanca and (compareVAlue(quantidade,1) = -1) and
           ((qrBuscaItem.FieldByName('unidade').AsString = 'UN') or
            (qrBuscaItem.FieldByName('unidade').AsString = 'PC')) then
          quantidade := quantidade * 1000;
      end
      else
        result := false;
      if not result then
        application.MessageBox('Produto não encontrado!', 'Atenção', MB_ICONINFORMATION);
    end;
  end
  else
  begin
    result := false;
    quantidade := 1;
  end;
end;

procedure TfrmControleDeliveryDetalheVenda.ACBrBAL1LePeso(Peso: Double;
  Resposta: AnsiString);
var valid : integer;
    msg : string;
    tara : double;
begin
  if Peso <= 0 then
  begin
    valid := Trunc(ACBrBAL1.UltimoPesoLido);
    case valid of
      0 : msg :=  'Time out. A balança não respondeu a tempo ou não foi detectado peso (peso zero)' ;
      -1 : msg := 'Peso instável. Faça outra leitura' ;
      -2 : msg := 'Peso negativo' ;
      -9: msg := 'Erro de comunicação! Verifique se a balança está ligada e conectada ao computador e se as configurações estão corretas.' ;
      -10 : msg := 'Sobrepeso' ;
      else
         msg := 'Erro não identificado! Verifique se a balança está ligada e conectada ao computador e se as configurações estão corretas.' ;
    end;
    qrBuscaItem.FieldByName('quantidade').AsFloat := 0;
    application.MessageBox(pchar('Não foi possível obter o peso da balança. Detalhes:' +sLineBreak + msg), 'Atenção', MB_ICONWARNING);
  end
  else
  begin
    tara := qrBuscaItem.FieldByName('tara_balanca').AsFloat;
    // se o peso for menor que a tara ou se a tara estiver zerada, a quantidade é o mesmo do peso
    if (CompareValue(Peso,tara )=-1) or (CompareValue(tara, 0.0)=0) then
      qrBuscaItem.FieldByName('quantidade').AsFloat := Peso
    else
      qrBuscaItem.FieldByName('quantidade').AsFloat :=  Peso - tara;
  end;
end;

procedure TfrmControleDeliveryDetalheVenda.acBuscaClienteExecute(Sender: TObject);
begin
  if qrVenda.State in [dsInsert, dsEdit] then
  begin
    frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
            ' select c.cli_001, c.emp_001, c.cli_002,  c.cli_012, ' +
            ' coalesce(c.cidade_desc, d.cid_002) as cidade '+
            ' from clientes c ' +
            ' left join cidades d on c.cid_001=d.cid_001 ' ,
          vararrayof([2,3,4]) ,
          vararrayof(['Nome', 'Telefone', 'Cidade']),
          0, 0, ' c.sit_001=4 and c.emp_001='+IntToStr(RecProj.iEmp) );
    frmBuscaRegistro.ShowModal;
    if frmBuscaRegistro.Tag=1 then
      qrVenda.FieldByName('id_cliente').Value:=frmBuscaRegistro.valor_retorno;
    frmBuscaRegistro.Free;
  end;
end;

procedure TfrmControleDeliveryDetalheVenda.acDescontoItemExecute(
  Sender: TObject);
begin
  if not qrVendaItem.active then exit;

  if qrVendaItem.RecordCount>0 then
  begin
    frmControleMesaItensAcoes := TfrmControleMesaItensAcoes.Create(self,qrVenda.FieldByName('ven_001').AsInteger,recproj.iUsuario,2);
    frmControleMesaItensAcoes.ShowModal;
    frmControleMesaItensAcoes.Free;
    AtualizaTotalVenda;
    qrVendaItem.Refresh;
    qrVendaItemOpcional.Refresh;
  end
  else
   Application.MessageBox('Esta venda não possui itens!', 'Atenção', MB_ICONINFORMATION + MB_OK);
end;

procedure TfrmControleDeliveryDetalheVenda.acPesquisaItemExecute(Sender: TObject);
var str_sql : string;
begin
  if qrVenda.State in [dsEdit, dsInsert] then
  begin
    edCodProduto.SetFocus;
    str_sql:= ' SELECT MAT.MAT_001, '+
              ' MAT.MAT_004, '+
              ' MAT.MAT_003, '+
              ' CAT.CAT_002, '+
              ' UNI.UNI_002, '+
              ' MAT.MAT_008 '+
              ' FROM MATERIAIS MAT '+
              ' LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND (UNI.UNI_001 = MAT.UNI_001) '+
              ' LEFT OUTER JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.CAT_001 = MAT.CAT_001)';
     frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
        vararrayof([1,2,3,4,5]) ,
        vararrayof(['Código', 'Produto', 'Categoria','Unidade', 'Preço' ]),
        1, 1, ' mat.sit_001=4 and MAT.emp_001='+IntToStr(RecProj.iEmp), 800, 500);
     frmBuscaRegistro.ShowModal;
     if frmBuscaRegistro.Tag=1 then
       edCodProduto.Text:=frmBuscaRegistro.valor_retorno;
     frmBuscaRegistro.Free;
     if edQuantidade.CanFocus then edQuantidade.SetFocus;
  end;
end;

procedure TfrmControleDeliveryDetalheVenda.acExluirItemExecute(Sender: TObject);
var fracionado, continua : boolean;
    item_fracionado : integer;
begin
  //verifica se a venda está em digitação
  if (qrVenda.State in [dsInsert, dsEdit]) and (not b_visualizar) then
  begin
    if qrVenda.FieldByName('sit_001').AsInteger in [0,8,19] then
    begin
      if Application.MessageBox('Deseja exluir o registro? Esta ação não pode ser desfeita', 'Atenção', MB_ICONQUESTION + mb_yesno)=mryes then
      begin
        //verifica se é fracionado
        fracionado := not  ((qrVendaItem.FieldByName('item_fracionado').isnull) or (qrVendaItem.FieldByName('item_fracionado').asinteger=0));
        if fracionado then
        begin
          if Application.MessageBox('Este item faz parte de uma composição (item fracionado), todos os itens serão removidos. Deseja continuar?', 'Atenção', MB_ICONINFORMATION + MB_YESNO)=mryes then
          begin
            item_fracionado := qrVendaItem.FieldByName('item_fracionado').AsInteger;
            //deleta todos os itens fracionados
            qrVendaItem.first;
            qrVendaItem.ReadOnly :=false;
            while not qrVendaItem.Eof  do
            begin
              if qrVendaItem.FieldByName('item_fracionado').AsInteger= item_fracionado then
                qrVendaItem.Delete
              else
                qrVendaItem.Next;
            end;
            qrVendaItem.ReadOnly :=true;
          end;
        end
        else
        begin
          qrVendaItem.ReadOnly :=false;
          qrVendaItem.Delete;
          qrVendaItem.ReadOnly :=true;
        end;
        qrBuscaItem.Close;
        edObservacaoItem.clear;
        edCodProduto.Clear;
        edCodProduto.SetFocus;
        qrVendaItem.Refresh;
        qrVendaItemOpcional.Refresh;
        AtualizaTotalVenda;
        cxGrid2DBTableView1.ViewData.Expand(True);
      end;
    end;
  end;
end;

procedure TfrmControleDeliveryDetalheVenda.acInsereProdutoFracionadoExecute(Sender: TObject);
var ult_reg , item_fracionado: integer;
    str_sql : string;
    desconto, desconto_calc, total_calc : double;
    tipo_desconto: integer;
begin
  if qrVenda.State in [dsEdit, dsInsert] then
  begin
    frmVendaItemFracionado :=  tfrmVendaItemFracionado.Create(self, (bAlteraValorUnitarioItem and bAlteraValorUnitarioItemUsuario) , bFracionadoMaiorValor, bExige70pcFracionadoCatDiffComanda );
    frmVendaItemFracionado.ShowModal;
    if frmVendaItemFracionado.Tag = 1 then
    begin
      str_sql := format('select coalesce(max(ite_001), 0) from vendaitem where ven_001=%d and emp_001=%d ', [qrVenda.FieldByName('ven_001').AsInteger, recproj.iEmp]);
      BuscaCampo(ult_reg, str_sql , '', false );
      str_sql := format('select coalesce(max(item_fracionado), 0)+1 from vendaitem where ven_001=%d and emp_001=%d ', [qrVenda.FieldByName('ven_001').AsInteger, recproj.iEmp]);
      BuscaCampo(item_fracionado, str_sql , '', false );

      frmVendaItemFracionado.cdsItens.First;
      while not frmVendaItemFracionado.cdsItens.Eof do
      begin
        qrInsereItem.ParamByName('emp').AsInteger := RecProj.iEmp;
        qrInsereItem.ParamByName('id_venda').AsInteger := qrVenda.FieldByName('ven_001').AsInteger;
        qrInsereItem.ParamByName('id_material').AsInteger:= frmVendaItemFracionado.cdsItens.FieldByName('id_material').AsInteger;
        qrInsereItem.ParamByName('quantidade').asFloat:= frmVendaItemFracionado.cdsItens.FieldByName('quantidade').asfloat;
        qrInsereItem.ParamByName('quantidade_impressao').asFloat:= frmVendaItemFracionado.cdsItens.FieldByName('quantidade').asfloat;
        qrInsereItem.ParamByName('valor_unit').AsFloat:= frmVendaItemFracionado.cdsItens.FieldByName('valor_unit').AsFloat;
        qrInsereItem.ParamByName('valor_total').AsFloat:= frmVendaItemFracionado.cdsItens.FieldByName('valor_fracionado').AsFloat;
        qrInsereItem.ParamByName('observacao').AsString := frmVendaItemFracionado.cdsItens.FieldByName('observacao').asstring;
        qrInsereItem.ParamByName('nro_item').AsInteger:= ult_reg + frmVendaItemFracionado.cdsItens.FieldByName('nro_item').AsInteger ;
        qrInsereItem.ParamByName('cod_impressora').AsInteger:=frmVendaItemFracionado.cdsItens.FieldByName('cod_impressora').AsInteger;

        qrInsereItem.ParamByName('b_venda_tamanho').asBoolean:= frmVendaItemFracionado.cdsItens.FieldByName('tamanho').asstring <>'';
        qrInsereItem.ParamByName('tamanho').asstring:=frmVendaItemFracionado.cdsItens.FieldByName('tamanho').asstring;
        qrInsereItem.ParamByName('item_fracionado').asinteger:=item_fracionado;

        //verifica se existe promoção e altera o valor e desconto antes de postar
        if BuscaPromocao(qrInsereItem.ParamByName('b_venda_tamanho').asBoolean,
                         frmVendaItemFracionado.cdsItens.FieldByName('tamanho').asstring,
                         'D',
                         frmVendaItemFracionado.cdsItens.FieldByName('id_material').AsInteger,
                         desconto, tipo_desconto) then
        begin
          calculaDescontoItem(tipo_desconto, desconto,
                              frmVendaItemFracionado.cdsItens.FieldByName('quantidade').asfloat,
                              frmVendaItemFracionado.cdsItens.FieldByName('valor_unit').AsFloat,
                              0, desconto_calc, total_calc);

          qrInsereItem.ParamByName('desconto').asfloat := desconto_calc;
          qrInsereItem.ParamByName('valor_total').AsFloat := total_calc;
        end;

        qrInsereItem.Execute;

        frmVendaItemFracionado.cdsItens.next;
      end;
    end;
    //qrVenda.FieldByName('observacao').AsString := qrVenda.FieldByName('observacao').AsString + frmVendaItemFracionado.memobs.Text;
    frmVendaItemFracionado.Free;
    qrVendaItem.Refresh;
    qrVendaItemOpcional.Refresh;
    cxGrid2DBTableView1.ViewData.Expand(True);
    AtualizaTotalVenda;
  end;
end;

procedure TfrmControleDeliveryDetalheVenda.btAgendarClick(Sender: TObject);
begin
  pgcontroldelivery.ActivePageIndex:= 1;

end;

procedure TfrmControleDeliveryDetalheVenda.btCancelarClick(Sender: TObject);
var  str_sql : string;
begin
  str_sql := format(' delete from vendaitem where ven_001=%d and emp_001=%d',
                      [qrVenda.FieldByName('ven_001').Asinteger, RecProj.iEmp]);
  if qrVenda.FieldByName('sit_001').AsInteger=0 then
  begin
    if qrVendaItem.RecordCount>0 then
    begin
      ExecutaComandoSQL(str_sql);
    end;
    qrVenda.Delete;
  end
  else
  begin
    qrVenda.Cancel;
    // volta aos dados anteriores salvo no dataset temporário
    ExecutaComandoSQL(str_sql); //Exclui o que estava salvo
    insereClientDataSet(cdsVendaItemFull, 'vendaitem');
    insereClientDataSet(cdsVendaItemOpcionalFull, 'vendaitemopcional');

  end;
  close;
end;

procedure TfrmControleDeliveryDetalheVenda.btEditarClick(Sender: TObject);
begin
  qrVenda.Edit;
  qrVendaItemFull.Close;
  cdsVendaItemFull.close;
  qrVendaItemOpcionalFull.Close;
  cdsVendaItemOpcionalFull.close;
  qrVendaItemFull.ParamByName('id_venda').AsInteger:=qrVenda.FieldByName('ven_001').AsInteger;
  qrVendaItemFull.ParamByName('id_empresa').AsInteger:=qrVenda.FieldByName('emp_001').AsInteger;
  qrVendaItemOpcionalFull.ParamByName('id_venda').AsInteger:=qrVenda.FieldByName('ven_001').AsInteger;
  qrVendaItemOpcionalFull.ParamByName('id_empresa').AsInteger:=qrVenda.FieldByName('emp_001').AsInteger;
  cdsVendaItemFull.open;
  cdsVendaItemOpcionalFull.open;
end;

procedure TfrmControleDeliveryDetalheVenda.btEditarClienteClick(Sender: TObject);
var
str_sql:string;
begin
  if qrCliente.Active then
  begin
    if qrCliente.RecordCount>0 then
    begin
      frmDetalheCliente := TfrmDetalheCliente.Create(self, qrCliente.FieldByName('id_cliente').AsInteger);
      frmDetalheCliente.btEditar.Click;
      frmDetalheCliente.ShowModal;
      frmDetalheCliente.Free;
      qrCliente.Refresh;
     qrVendaid_clienteChange(qrVendaid_cliente);
    end;
  end;
end;



procedure TfrmControleDeliveryDetalheVenda.btExcluirClick(Sender: TObject);
var ret, id_venda : integer;
begin
  if Application.MessageBox('Confirma a exclusão do registro? Esta ação não pode ser desfeita', 'Atenção', MB_ICONQUESTION + MB_YESNO)=mryes then
  begin
    try
      id_venda := qrVenda.FieldByName('ven_001').AsInteger;
      qrVenda.Delete;
    except
      on E : Exception do
      begin
        ret :=
        Application.MessageBox(pchar('Erro ao excluir o registro. A exclusão não é possível caso o item já tenha sido usado no sistema.' +
        ' Gostaria de inativar o item?'), 'Atenção', MB_ICONERROR + MB_YESNO);
        if ret=mryes then
        begin
          ExecutaComandoSQL('update venda set sit_001=3 where ven_001='+
                             IntToStr(id_venda) + ' and emp_001=' +IntToStr(RecProj.iEmp))
        end
        else if ret=mrClose  then
        begin
          Application.MessageBox(pchar(E.Message),'Detalhes do erro' );
        end;
      end;
    end;
  end;
  qrVenda.close;

end;

procedure TfrmControleDeliveryDetalheVenda.btInserirClick(Sender: TObject);
var desconto, desconto_calc, total_calc : double;
    tipo_desconto: integer;
begin
  //valida os itens e insere
  if qrVenda.State in [dsInsert, dsEdit] then
  begin
    if qrBuscaItem.Active then
    begin
      if qrBuscaItem.RecordCount<1 then
      begin
        Application.MessageBox('Não foi informado nenhum item a adicionar!', 'Atenção', MB_ICONINFORMATION + MB_OK);
        edCodProduto.SetFocus;
        abort;
      end
      else
      begin
      //valida quantidade e valor unitário
        if qrBuscaItem.FieldByName('quantidade').IsNull or
         (qrBuscaItem.FieldByName('quantidade').AsFloat<=0) or
         (qrBuscaItem.FieldByName('quantidade').AsFloat>999999)  then
        begin
          Application.MessageBox('Quantidade inválida!', 'Atenção', MB_ICONINFORMATION + MB_OK);
          if edQuantidade.CanFocus then edQuantidade.SetFocus;
          abort;
        end;
        if (qrBuscaItem.FieldByName('valor_unit').IsNull)  or
         (qrBuscaItem.FieldByName('valor_unit').AsFloat<=0) or
         (qrBuscaItem.FieldByName('valor_unit').AsFloat>99999999) then
        begin
          Application.MessageBox('Valor unitário inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
          if edValor.CanFocus then edValor.SetFocus;
            abort;
        end;
      end;

      qrInsereItem.ParamByName('emp').AsInteger := RecProj.iEmp;
      qrInsereItem.ParamByName('id_venda').AsInteger := qrVenda.FieldByName('ven_001').AsInteger;
      qrInsereItem.ParamByName('id_material').AsInteger:= qrBuscaItem.FieldByName('id_material').AsInteger;
      qrInsereItem.ParamByName('quantidade').asFloat:= qrBuscaItem.FieldByName('quantidade').asfloat;
      qrInsereItem.ParamByName('valor_unit').AsFloat:= qrBuscaItem.FieldByName('valor_unit').AsFloat;
      qrInsereItem.ParamByName('valor_total').AsFloat:= qrBuscaItem.FieldByName('valor_total').AsFloat;
      //qrInsereItem.ParamByName('hora').AsTime := Time;
      qrInsereItem.ParamByName('observacao').AsString:=copy(edObservacaoItem.Text,0,200);
      qrInsereItem.ParamByName('nro_item').AsInteger:=qrBuscaItem.FieldByName('ultimo_item').AsInteger+1;
      qrInsereItem.ParamByName('cod_impressora').AsInteger:=qrBuscaItem.FieldByName('cod_impressora').AsInteger;
      qrInsereItem.ParamByName('b_venda_tamanho').asBoolean:= qrBuscaItem.FieldByName('b_venda_tamanho').asBoolean;
      qrInsereItem.ParamByName('tamanho').asstring:=qrBuscaItem.FieldByName('tamanho_padrao').asstring;
      qrInsereItem.ParamByName('item_fracionado').value := null;
      qrInsereItem.ParamByName('quantidade_impressao').asFloat:= qrBuscaItem.FieldByName('quantidade').asfloat;
      qrInsereItem.ParamByName('desconto').asfloat :=0;

      //antes de postar, verifica se existe promoção
      if BuscaPromocao(qrInsereItem.ParamByName('b_venda_tamanho').asBoolean,
                       qrBuscaItem.FieldByName('tamanho_padrao').asstring,
                       'D',
                       qrBuscaItem.FieldByName('id_material').AsInteger,
                       desconto, tipo_desconto) then
      begin
        calculaDescontoItem(tipo_desconto, desconto,
                            qrBuscaItem.FieldByName('quantidade').asfloat,
                            qrBuscaItem.FieldByName('valor_unit').AsFloat,
                            0, desconto_calc, total_calc);

        qrInsereItem.ParamByName('desconto').asfloat    := desconto_calc;
        qrInsereItem.ParamByName('valor_total').AsFloat := total_calc;
      end;

      //Flag de item com exigência de valor mínimo de 70% do unitário
      qrInsereItem.ParamByName('b_70pc_valor_unit').asboolean :=
        qrBuscaItem.FieldByName('b_exige_70pc_valor_unit').Asboolean and
        (qrBuscaItem.FieldByName('quantidade').AsFloat <0.7) and bExige70pc;

      qrInsereItem.Execute;

      frmmenu.AvisaEsoqueMinimo(qrBuscaItem.FieldByName('id_material').AsInteger,
                                'D', qrBuscaItem.FieldByName('quantidade').asfloat);

      AtualizaTotalVenda;
      qrBuscaItem.Close;
      edObservacaoItem.clear;
      edCodProduto.Clear;
      edCodProduto.SetFocus;
      qrVendaItem.Refresh;
      qrVendaItemOpcional.Refresh;
      cxGrid2DBTableView1.ViewData.Expand(True);
    end;
    if edCodProduto.CanFocus then edCodProduto.SetFocus;
  end;
end;

procedure TfrmControleDeliveryDetalheVenda.AtualizaTotalVenda;
var total : double;
begin
  if qrVenda.state in [dsinsert, dsedit] then
  begin
    qrVenda.FieldByName('total_itens').AsFloat:=TotalItensVenda(qrVenda.FieldByName('ven_001').asinteger);
    total := TotalItensVenda(qrVenda.FieldByName('ven_001').asinteger) + qrVenda.FieldByName('acrescimo').AsFloat - qrVenda.FieldByName('desconto').AsFloat ;
    qrVenda.FieldByName('total_venda').AsFloat := total;
  end
  else if qrVenda.State in [dsCalcFields] then
  begin
    qrVenda.FieldByName('total_itens').AsFloat:=TotalItensVenda(qrVenda.FieldByName('ven_001').asinteger);
  end;
  {ExecutaComandoSQL('update venda set ven_009=:total where  emp_001=:emp and ven_001=:id_venda',
                    vararrayof([total,RecProj.iEmp, iVenda ]));}
end;

procedure TfrmControleDeliveryDetalheVenda.btNovoClick(Sender: TObject);
begin
  if not qrVenda.Active then qrVenda.Open;
  NovoRegistro;
end;

procedure TfrmControleDeliveryDetalheVenda.NovoRegistro;
var nro_venda : integer;
str_sql:string;
begin
  qrVenda.Append;
  qrVenda.FieldByName('ven_001').AsInteger:=NovoId('venda', 'ven_001', RecProj.iEmp);
  qrVenda.FieldByName('venda_orcamento').AsInteger:=0;
  qrVenda.FieldByName('emp_001').AsInteger:= RecProj.iEmp;
  qrVenda.FieldByName('data_cadastro').asdatetime:= date + time;
  qrVenda.FieldByName('id_cliente').AsInteger:= id_cliente;
  qrVenda.FieldByName('sit_001').AsInteger:=0;
  qrVenda.FieldByName('usu_001_1').AsInteger:=RecProj.iUsuario;
  qrVenda.FieldByName('tipo_venda').AsString:= UpperCase(tipo_venda);
  qrVenda.FieldByName('acrescimo').AsFloat:=0;
  qrVenda.FieldByName('b_taxa_entrega').asboolean:=true;
  qrVenda.FieldByName('id_caixa_abertura').AsInteger:=RecProj.iIDCaixa;
  qrVenda.FieldByName('terminal_abertura').AsString:=NomeDoTerminal;
  if qrCliente.Active then
  if qrCliente.RecordCount>0 then
  if bTaxapadraodelivery then   // Busca o valor da taxa padrão  10/04/2018 V2.36.0.0  Rafael
  begin
    str_sql:='select taxadeliverypadrao from empresas where emp_001=:emp_001' ;
    qrAux1.Close;
    qrAux1.SQL.Clear;
    qrAux1.SQL.Add(str_sql);
    qraux1.ParamByName('emp_001').AsInteger:=RecProj.iEmp;
    qraux1.Open;
    qrVenda.FieldByName('acrescimo').AsFloat:= qraux1.FieldByName('taxadeliverypadrao').AsFloat
  end
  else
  qrVenda.FieldByName('acrescimo').AsFloat:=qrCliente.FieldByName('taxa_delivery').AsFloat;
  if bNumeracaoVendaPorCaixa then
  begin
    qrVenda.FieldByName('nro_venda').AsInteger:=NovoId('venda', 'ven_029', recproj.iEmp, 'emp_001',
                                             format( ' ven_024=''D'' and id_caixa_abertura=%d ', [RecProj.iIDCaixa]));
  end
  else
    qrVenda.FieldByName('nro_venda').AsInteger:=qrVenda.FieldByName('ven_001').AsInteger;
  qrVenda.post;
  qrVenda.Edit;
end;

procedure TfrmControleDeliveryDetalheVenda.btSalvarClick(Sender: TObject);
var confirma : boolean;
begin
  if qrVendaItem.RecordCount<1 then
  begin
    application.MessageBox('Não foi informado nenhum item!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  //valida se foi informado cliente
  if qrVenda.FieldByName('id_cliente').isnull then
  begin
    application.MessageBox('Não foi informado o cliente!', 'Atenção', MB_ICONINFORMATION);
    edIdCliente.SetFocus;
    abort;
  end;


  confirma :=true;

  if qrVenda.FieldByName('tipo_venda').asstring='D' then
  begin
    qrVenda.Post;
    frmControleDeliveryFechamento := TfrmControleDeliveryFechamento.Create(self, qrVenda.FieldByName('ven_001').AsInteger);
    frmControleDeliveryFechamento.ShowModal;
    confirma := frmControleDeliveryFechamento.Tag=1;
    //pega o valor de desconto e cpf caso tenha sido alterado

    frmControleDeliveryFechamento.Free;
    qrVenda.ParamByName('id_venda').AsInteger:= qrVenda.FieldByName('ven_001').AsInteger;
    qrVenda.Refresh;
    qrVenda.edit;
  end;

  if confirma then
  begin
    if qrVenda.FieldByName('sit_001').AsInteger = 0 then
      if qrVenda.FieldByName('data_agendamento').isnull then  // Verifica se tem agendamento
        qrVenda.FieldByName('sit_001').AsInteger:=8    // Em procssso
      else
        qrVenda.FieldByName('sit_001').AsInteger:=19;   // Se tiver agendamento ele muda o status para 19
        qrVenda.Post;
    close;
  end;

  //





end;

function TfrmControleDeliveryDetalheVenda.MontaFiltroItens(Itens : TArray<ItemVenda>; fracionados : boolean) : String;
var str_aux, campo_venda, campo_item : string;
    venda : integer;
    i, j, i_vendas, i_itens, fim: integer;
    lista : TStringList;
    flag_nova_venda : boolean;
    Vendas, VendaItens : Tarray<Integer>;
begin
  SetLength(Vendas, Length(Itens));
  venda :=0;
  i_vendas:=0;
  lista :=  Tstringlist.Create;

  //copia as vendas pra um array...
  for I := 0 to Length(Itens)-1 do
  begin
    if venda<>Itens[i].id_venda  then
    begin
      venda :=Itens[i].id_venda;
      Vendas[i_vendas] := venda;
      i_vendas := i_vendas +1;
    end;
  end;
  SetLength(Vendas,i_vendas);

  //cria a string por venda...
  for I := 0 to length(Vendas)-1 do
  begin
    venda :=Vendas[i];
    campo_venda := 'vi.ven_001';
    if fracionados then
      campo_item := 'vi.item_fracionado'
    else
      campo_item := 'vi.ite_001';

    str_aux := format('( %s=%d and %s in(', [campo_venda, venda, campo_item ])   ;

    SetLength(VendaItens, Length(Itens));
    i_vendas:=0;
    i_itens := 0;
    //pega os itens apenas da venda atual
    for j := 0 to length(itens)-1 do
    begin
      if itens[j].id_venda = venda  then
      begin
        if fracionados then
          VendaItens[i_itens] := itens[j].item_fracionado
        else
          VendaItens[i_itens] := itens[j].item_venda;
        i_itens := i_itens+1;
      end;
    end;
    SetLength(VendaItens, i_itens);

    //termina de montar a as string com os itens
    fim := Length(VendaItens)-1;
    for j := 0 to fim do
    begin
      str_aux := str_aux + inttostr( VendaItens[j] );
      if j=fim then
        str_aux := str_aux+') )'
      else
        str_aux := str_aux +',';
    end;

    //Adiciona a string montanda ao stringlist
    lista.Add(str_aux);
  end;

  result :=StringListToString(lista, false, ' or ' );
end;

procedure TfrmControleDeliveryDetalheVenda.btVendasAnterioresClick(Sender: TObject);
var Itens, ItensFracionados:  TArray<ItemVenda>;
    i, fim, id_venda_selecionada, nro_item, nro_item_fracionado, fracionado_atual, id_venda: integer;
    str_aux, str_sql, tamanho : string;
    qry, qry_opc : TUniquery;

    valor_unit, valor_total  : double;

    procedure ClonaArray(origem : TArray<uControleDeliveryVendaAnterior.ItemVenda> ; out destino : TArray<ItemVenda> );
    var k : integer;
        item : ItemVenda;
    begin
      setLength(destino, length(origem));
      for k := 0 to length(origem)-1 do
      begin
        item.id_venda := origem[k].id_venda;
        item.item_venda := origem[k].item_venda;
        item.item_fracionado := origem[k].item_fracionado;
        item.possui_opcional := origem[k].possui_opcional;
        destino[k] :=  item;
      end;

    end;

begin
  id_venda := qrVenda.FieldByName('ven_001').AsInteger;
  frmControleDeliveryVendaAnterior := TfrmControleDeliveryVendaAnterior.Create(self, qrVenda.FieldByName('id_cliente').asinteger, id_venda);
  frmControleDeliveryVendaAnterior.ShowModal;
  if frmControleDeliveryVendaAnterior.tag=1 then
  begin

    ClonaArray(frmControleDeliveryVendaAnterior.ItensSelecionados, Itens);
    ClonaArray(frmControleDeliveryVendaAnterior.ItensSelecionadosFracionados,ItensFracionados);

    qry := TUniQuery.Create(self);
    qry.Connection := frmMenu.conexao;

    qry_opc := TUniQuery.Create(self);
    qry_opc.Connection := frmMenu.conexao;


    id_venda_selecionada := 0;
    str_sql := format('select coalesce(Max(ite_001),0)+1 from vendaitem where ven_001=%d and emp_001=%d',
                      [id_venda, recproj.iEmp]) ;
    BuscaCampo(nro_item, str_sql,'', false);

    str_sql := format('select coalesce(Max(item_fracionado),0)+1 from vendaitem where ven_001=%d and emp_001=%d',
                      [id_venda, recproj.iEmp]) ;
    BuscaCampo(nro_item_fracionado, str_sql,'', false);

    // lança os itens fracionados primeiro...
    if Length(ItensFracionados)>0 then
    begin
      str_aux := MontaFiltroItens (ItensFracionados, true);
      str_sql := format(' select vi.ven_001 as id_venda_original, vi.ite_001 as id_item_original, '+
                ' vi.mat_001 as id_material, vi.ite_002 as quantidade,  '+
                ' m.mat_008 as valor_unit, '+
                ' m.valor_tam_p, '+
                ' m.valor_tam_m, '+
                ' m.valor_tam_g, '+
                ' m.valor_tam_gg, '+
                ' m.valor_tam_extra,   '+
                ' vi.ite_006 as observacao ,  '+
                ' cast(to_char(localtimestamp,''hh:MI:ss'') as varchar(8)) as hora, vi.ite_013 as cod_impressora, '+
                ' vi.tamanho, vi.b_venda_tamanho, vi.item_fracionado, vi.quantidade_impressao,  '+
                ' (not sop.id_venda is null) as possui_opcional ' +
                ' from vendaitem vi    '+
                ' join materiais m on vi.mat_001=m.mat_001 and vi.emp_001=m.emp_001 '+
                ' left join (select id_venda, id_vendaitem, id_empresa from vendaitemopcional group by id_venda, id_vendaitem, id_empresa ) sop  on '+
                ' sop.id_venda=vi.ven_001 and sop.id_empresa=vi.emp_001 and sop.id_vendaitem=vi.ite_001 '+
                ' where vi.emp_001=%d ' +
                ' and (%s)',
                [recproj.iEmp,str_aux]);
      ExecutaConsultaSQL(Qry, str_sql);
      fracionado_atual := Qry.FieldByName('item_fracionado').AsInteger;

      //lança os itens
      while not Qry.eof do
      begin
        if Qry.FieldByName('b_venda_tamanho').AsBoolean then
        begin
          tamanho := Qry.FieldByName('tamanho').asString;
          if tamanho = 'P' then
            valor_unit:= qry.FieldByName('valor_tam_p').asfloat
          else if tamanho = 'M' then
            valor_unit:= qry.FieldByName('valor_tam_m').asfloat
          else if tamanho = 'G' then
            valor_unit:= qry.FieldByName('valor_tam_g').asfloat
          else if tamanho = 'GG' then
            valor_unit:= qry.FieldByName('valor_tam_gg').asfloat
          else // tamanho = 'E'
            valor_unit:= qry.FieldByName('valor_tam_extra').asfloat;
        end
        else
          valor_unit := qry.FieldByName('valor_unit').asfloat;

        valor_total := valor_unit * Qry.FieldByName('quantidade').asfloat;

        if fracionado_atual<>  Qry.FieldByName('item_fracionado').AsInteger then
        begin
          fracionado_atual := Qry.FieldByName('item_fracionado').AsInteger;
          nro_item_fracionado := nro_item_fracionado +1;
        end;

        qrInsereItem.ParamByName('emp').AsInteger := RecProj.iEmp;
        qrInsereItem.ParamByName('id_venda').AsInteger := id_venda;
        qrInsereItem.ParamByName('id_material').AsInteger:= Qry.FieldByName('id_material').AsInteger;
        qrInsereItem.ParamByName('quantidade').asFloat:= Qry.FieldByName('quantidade').asfloat;
        qrInsereItem.ParamByName('valor_unit').AsFloat:= valor_unit;
        qrInsereItem.ParamByName('valor_total').AsFloat:= valor_total;
        qrInsereItem.ParamByName('observacao').AsString:=Qry.FieldByName('observacao').asstring;
        qrInsereItem.ParamByName('nro_item').AsInteger:=nro_item;
        qrInsereItem.ParamByName('cod_impressora').AsInteger:=Qry.FieldByName('cod_impressora').AsInteger;

        qrInsereItem.ParamByName('b_venda_tamanho').asBoolean:= Qry.FieldByName('b_venda_tamanho').asBoolean;
        qrInsereItem.ParamByName('tamanho').asstring:=tamanho;
        qrInsereItem.ParamByName('item_fracionado').value := nro_item_fracionado;
        qrInsereItem.ParamByName('quantidade_impressao').asFloat:= Qry.FieldByName('quantidade').asfloat;
        qrInsereItem.Execute;

        //insere os opcionais se existir
        if  Qry.FieldByName('possui_opcional').AsBoolean then
        begin
          str_sql := format(' insert into vendaitemopcional (id_venda, id_vendaitem, id_empresa, id_opcional) '+
                            ' (select %d, %d, id_empresa, id_opcional from vendaitemopcional '+
                            '  where id_venda=%d and id_vendaitem=%d and id_empresa=%d ) ',
                            [id_venda,nro_item,
                             Qry.FieldByName('id_venda_original').asinteger,
                             Qry.FieldByName('id_item_original').asinteger, recproj.iEmp]);
          ExecutaComandoSQL(str_sql);
        end;

        nro_item := nro_item + 1;
        qry.Next;
      end;

    end;

    // lança os itens não fracionados
    if Length(Itens)>0 then
    begin
      str_aux := MontaFiltroItens (Itens, false);
      str_sql := format(' select vi.ven_001 as id_venda_original, vi.ite_001 as id_item_original, '+
                ' vi.mat_001 as id_material, vi.ite_002 as quantidade,  '+
                ' m.mat_008 as valor_unit, '+
                ' m.valor_tam_p, '+
                ' m.valor_tam_m, '+
                ' m.valor_tam_g, '+
                ' m.valor_tam_gg, '+
                ' m.valor_tam_extra,   '+
                ' vi.ite_006 as observacao ,  '+
                ' cast(to_char(localtimestamp,''hh:MI:ss'') as varchar(8)) as hora, vi.ite_013 as cod_impressora, '+
                ' vi.tamanho, vi.b_venda_tamanho, vi.item_fracionado, vi.quantidade_impressao,  '+
                ' (not sop.id_venda is null) as possui_opcional '+
                ' from vendaitem vi '+
                ' join materiais m on vi.mat_001=m.mat_001 and vi.emp_001=m.emp_001 '+
                ' left join (select id_venda, id_vendaitem, id_empresa from vendaitemopcional group by id_venda, id_vendaitem, id_empresa ) sop  on '+
                ' sop.id_venda=vi.ven_001 and sop.id_empresa=vi.emp_001 and sop.id_vendaitem=vi.ite_001 '+
                ' where vi.emp_001=%d ' +
                ' and (%s)',
                [recproj.iEmp,str_aux]);
      ExecutaConsultaSQL(Qry, str_sql);

      while not Qry.eof do
      begin
        if Qry.FieldByName('b_venda_tamanho').AsBoolean then
        begin
          tamanho := Qry.FieldByName('tamanho').asString;
          if tamanho = 'P' then
            valor_unit:= qry.FieldByName('valor_tam_p').asfloat
          else if tamanho = 'M' then
            valor_unit:= qry.FieldByName('valor_tam_m').asfloat
          else if tamanho = 'G' then
            valor_unit:= qry.FieldByName('valor_tam_g').asfloat
          else if tamanho = 'GG' then
            valor_unit:= qry.FieldByName('valor_tam_gg').asfloat
          else // tamanho = 'E'
            valor_unit:= qry.FieldByName('valor_tam_extra').asfloat;
        end
        else
          valor_unit := qry.FieldByName('valor_unit').asfloat;

        valor_total := valor_unit * Qry.FieldByName('quantidade').asfloat;

        qrInsereItem.ParamByName('emp').AsInteger := RecProj.iEmp;
        qrInsereItem.ParamByName('id_venda').AsInteger := id_venda;
        qrInsereItem.ParamByName('id_material').AsInteger:= Qry.FieldByName('id_material').AsInteger;
        qrInsereItem.ParamByName('quantidade').asFloat:= Qry.FieldByName('quantidade').asfloat;
        qrInsereItem.ParamByName('valor_unit').AsFloat:= valor_unit;
        qrInsereItem.ParamByName('valor_total').AsFloat:= valor_total;
        qrInsereItem.ParamByName('observacao').AsString:=Qry.FieldByName('observacao').asstring;
        qrInsereItem.ParamByName('nro_item').AsInteger:=nro_item;
        qrInsereItem.ParamByName('cod_impressora').AsInteger:=Qry.FieldByName('cod_impressora').AsInteger;

        qrInsereItem.ParamByName('b_venda_tamanho').asBoolean:= Qry.FieldByName('b_venda_tamanho').asBoolean;
        qrInsereItem.ParamByName('tamanho').asstring:=tamanho;
        qrInsereItem.ParamByName('item_fracionado').value := null;
        qrInsereItem.ParamByName('quantidade_impressao').asFloat:= Qry.FieldByName('quantidade').asfloat;
        qrInsereItem.Execute;

        //insere os opcionais se existir
        if  Qry.FieldByName('possui_opcional').AsBoolean then
        begin
          str_sql := format(' insert into vendaitemopcional (id_venda, id_vendaitem, id_empresa, id_opcional) '+
                            ' (select %d, %d, id_empresa, id_opcional from vendaitemopcional '+
                            '  where id_venda=%d and id_vendaitem=%d and id_empresa=%d) ',
                            [id_venda,nro_item,
                             Qry.FieldByName('id_venda_original').asinteger,
                             Qry.FieldByName('id_item_original').asinteger, recproj.iEmp]);
          ExecutaComandoSQL(str_sql);
        end;

        nro_item := nro_item + 1;
        qry.Next;
      end;
    end;

    AtualizaTotalVenda ;
    qrVendaItem.Refresh;
    qrVendaItemOpcional.Refresh;
    cxGrid2DBTableView1.ViewData.Expand(True);
  end;

  frmControleDeliveryVendaAnterior.free;
end;

procedure TfrmControleDeliveryDetalheVenda.Button1Click(Sender: TObject);
begin
   qrVendaItemOpcional.Close;
   qrVendaItemOpcional.ParamByName('id_venda').AsInteger:= qrVenda.FieldByName('ven_001').AsInteger;
   qrVendaItemOpcional.ParamByName('id_empresa').AsInteger:=1;
   qrVendaItemOpcional.open;
   cxGrid2DBTableView1.ViewData.Expand(True);
end;

procedure TfrmControleDeliveryDetalheVenda.Button2Click(Sender: TObject);
begin
cxGrid2DBTableView1.ViewData.Expand(false);
end;

procedure TfrmControleDeliveryDetalheVenda.edDescontoPercentExit(Sender: TObject);
begin
  aplicaDesconto(1);
  if qrVenda.Active then
  begin
    if qrVenda.State in [dsInsert, dsEdit] then
    begin
      if qrBuscaItem.active then
      begin
        if qrBuscaItem.RecordCount<1  then
          if edCodProduto.CanFocus then
            edCodProduto.SetFocus;
      end
      else
        if edCodProduto.CanFocus then
            edCodProduto.SetFocus;
    end;
  end;
end;

procedure TfrmControleDeliveryDetalheVenda.edDescontoValorExit(Sender: TObject);
begin
  aplicaDesconto(2);
end;

procedure TfrmControleDeliveryDetalheVenda.edQuantidadeChange(Sender: TObject);
begin
  if qrBuscaItem.State<>dsEdit then abort;
end;

procedure TfrmControleDeliveryDetalheVenda.dsBuscaItemStateChange(Sender: TObject);
begin
  if dsBuscaItem.State in [dsEdit, dsInsert] then
  begin
    edValor.readonly:=true;
    edQuantidade.readonly:=true;
  end
  else
  begin
    edValor.readonly:=false;
    edQuantidade.readonly:=false;
  end
end;

procedure TfrmControleDeliveryDetalheVenda.dsClienteStateChange(Sender: TObject);
begin
  ValidaBotoes;
  MostraDadosLabelCliente;
  if qrCliente.Active then
    btEditarCliente.Enabled:= qrCliente.RecordCount>0
  else
    btEditarCliente.Enabled:= false;
end;

procedure TfrmControleDeliveryDetalheVenda.MostraDadosLabelCliente;
begin
  if qrCliente.Active then
    if qrCliente.RecordCount>0 then
    begin
      lbNroCompra.Caption := Format('Esta é a %dª compra do cliente', [qrCliente.FieldByName('nro_vendas').AsInteger] );
      lbNroPontos.Caption := Format('O cliente possui %d pontos', [qrCliente.FieldByName('pontos_atuais').AsInteger] );
    end
    else
    begin
      lbNroCompra.Caption := Format('Esta é a %dª compra do cliente', [0] );
      lbNroPontos.Caption := Format('O cliente possui %d pontos', [0] );
    end
    else
    begin
      lbNroCompra.Caption := Format('Esta é a %dª compra do cliente', [0] );
      lbNroPontos.Caption := Format('O cliente possui %d pontos', [0] );
    end;

    if qrVendaItem.Active then
      lbTotalItens.Caption := Format('Total de %d itens', [qrVendaItem.RecordCount])
    else
      lbTotalItens.Caption := Format('Total de %d itens', [0] );

end;

procedure TfrmControleDeliveryDetalheVenda.dsVendaItemStateChange(Sender: TObject);
begin
  MostraDadosLabelCliente;
end;

procedure TfrmControleDeliveryDetalheVenda.dsVendaStateChange(Sender: TObject);
begin
  ValidaBotoes;
end;

procedure TfrmControleDeliveryDetalheVenda.edCodProdutoExit(Sender: TObject);
var
  qtde, valor_happy: Double;
  inserir: Boolean;
begin
  if trim(edCodProduto.Text) = '' then
    exit;

  if ValidaInsercaoProduto(trim(edCodProduto.Text), qtde, inserir) then
  begin
    b_flag_busca_valida := true;
    qrBuscaItem.Edit;
    qrBuscaItem.FieldByName('quantidade').AsFloat := qtde;

    //Verifica Happy Hour - Bruno (12-04-2018)
    if BuscaHappyHour('D', qrBuscaItem.FieldByName('id_material').AsInteger, valor_happy) then
      qrBuscaItem.FieldByName('valor_unit').AsFloat:= valor_happy
    else
    begin
      if bUtilizaSelecaoPrecos then
      begin
        frmVendaSelecaoPreco := TfrmVendaSelecaoPreco.Create(self,qrBuscaItem.FieldByName('id_material').asinteger);

        if frmVendaSelecaoPreco.qrTamanhoMaterial.RecordCount > 1 then
          frmVendaSelecaoPreco.ShowModal;

        if frmVendaSelecaoPreco.Tag = 1 then
        begin
          qrBuscaItem.FieldByName('valor_unit').AsFloat := frmVendaSelecaoPreco.valor;
        end;
      end;
    end;

    if (edValor.Enabled or edQuantidade.Enabled) and (not inserir)  then
    begin
      inserir := false;
      if edValor.CanFocus then
        edValor.SetFocus
      else
        if edQuantidade.canfocus then
          edQuantidade.setfocus
        else
          inserir := true;
    end
    else
      inserir := true;

    (* =========================================================================
       O código abaixo esta comentado, pois se futuramente se desejar fazer a
       insersão automatica do item deverá ser utilizado o código abaixo ou
       outro que melhor convem.

    if inserir then
    begin
      InsereVendaItem(qrBuscaItem.FieldByName('id_material').AsInteger,
                      qrBuscaItem.FieldByName('ultimo_item').AsInteger+1,
                      qtde,
                      qrBuscaItem.FieldByName('valor_unit').AsFloat,
                      qrBuscaItem.FieldByName('valor_total').AsFloat,
                      qrBuscaItem.FieldByName('tamanho_padrao').asstring,
                      qrBuscaItem.FieldByName('b_venda_tamanho').asBoolean,
                      qrBuscaItem.FieldByName('id_categoria').AsInteger);
      qrVendaItem.Refresh;
      AtualizaTotalVenda;
      edCodProduto.Clear;
      edCodProduto.SetFocus;
    end;
    *)
  end
  else
    b_flag_busca_valida := false;
end;

procedure TfrmControleDeliveryDetalheVenda.FormClose(Sender: TObject; var Action: TCloseAction);
var retorno : integer;
begin
  if (qrVenda.State in [dsEdit, dsInsert]) and (not b_visualizar) then
  begin
    retorno:= Application.MessageBox('Esta venda não foi salva, gostaria de salvá-la?', 'Atenção', MB_ICONQUESTION + MB_YESNOCANCEL);

    if retorno = mrYes then
      btSalvar.Click
    else if retorno = mrCancel then
      abort
    else
      btCancelar.click;
  end;
end;

procedure TfrmControleDeliveryDetalheVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then Perform(WM_NEXTDLGCTL, 0, 0)
  else if (key=vk_f2) and (not b_visualizar) then acPesquisaItem.Execute
  else if (key=vk_f4) and (not b_visualizar) then
  begin
    if qrVenda.State in [dsEdit, DsInsert] then
    begin
      if qrVendaItem.RecordCount>0 then
      begin
        frmControleMesaItensAcoes := TfrmControleMesaItensAcoes.Create(self, qrVenda.FieldByName('ven_001').AsInteger,RecProj.iUsuario ,4);
        frmControleMesaItensAcoes.ShowModal;
        frmControleMesaItensAcoes.Free;
        AtualizaTotalVenda;
        qrVendaItem.Refresh;
        qrVendaItemOpcional.Refresh;
        cxGrid2DBTableView1.ViewData.Expand(True);
      end;
    end;
  end
  else if (key=vk_f5) and (not b_visualizar) then
  begin
    if qrVenda.State in [dsEdit, DsInsert] then
    begin
      if qrVendaItem.RecordCount>0 then
      begin
        frmControleMesaItensAcoes := TfrmControleMesaItensAcoes.Create(self, qrVenda.FieldByName('ven_001').AsInteger,RecProj.iUsuario ,1);
        frmControleMesaItensAcoes.ShowModal;
        frmControleMesaItensAcoes.Free;
        qrVendaItem.Refresh;
        qrVendaItemOpcional.Refresh;
        cxGrid2DBTableView1.ViewData.Expand(True);
      end;
    end;
  end
  else if  (key=vk_f6) and (not b_visualizar) then
  begin
    if btSalvar.Enabled then btSalvar.click;
  end
  else if (key=vk_f11) and (not b_visualizar) then
  begin
    acInsereProdutoFracionado.Execute;
  end
  else if (key=vk_f8) then
  begin
  btVendasAnteriores.Click;
  end;


end;

procedure TfrmControleDeliveryDetalheVenda.FormShow(Sender: TObject);
begin
  pgcontroldelivery.ActivePageIndex:= 0;
  if id_venda=0 then NovoRegistro;
  if qrVenda.FieldByName('id_cliente').IsNull then
    edIdCliente.SetFocus
  else
    edCodProduto.SetFocus;
end;

procedure TfrmControleDeliveryDetalheVenda.qrBuscaItemAfterOpen(DataSet: TDataSet);
var tamanho : string;
begin
  edValor.Enabled := bAlteraValorUnitarioItem and bAlteraValorUnitarioItemUsuario;
  if qrBuscaItem.RecordCount >0 then
  begin
    if not edValor.Enabled then
      edValor.Enabled := qrBuscaItem.FieldByName('b_exige_alterar_preco_venda').asboolean;

    qrBuscaItem.Edit;
    edQuantidade.Enabled := true;

    if qrBuscaItem.FieldByName('b_venda_tamanho').AsBoolean then
    begin
      frmVendaSelecaoTamanho := TfrmVendaSelecaoTamanho.Create(self,qrBuscaItem.FieldByName('id_material').asinteger);
      frmVendaSelecaoTamanho.ShowModal;
      if frmVendaSelecaoTamanho.Tag = 1 then
      begin
        tamanho := frmVendaSelecaoTamanho.tamanho;
        qrBuscaItem.FieldByName('tamanho_padrao').AsString:= tamanho;
        if tamanho = 'P' then
        begin
          qrBuscaItem.FieldByName('descricao').AsString:= qrBuscaItem.FieldByName('descricao_p').AsString;
          qrBuscaItem.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_tam_p').asfloat;
        end
        else if tamanho = 'M' then
        begin
          qrBuscaItem.FieldByName('descricao').AsString:= qrBuscaItem.FieldByName('descricao_m').AsString;
          qrBuscaItem.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_tam_m').asfloat;
        end
        else if tamanho = 'G' then
        begin
          qrBuscaItem.FieldByName('descricao').AsString:= qrBuscaItem.FieldByName('descricao_g').AsString;
          qrBuscaItem.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_tam_g').asfloat;
        end
        else if tamanho = 'GG' then
        begin
          qrBuscaItem.FieldByName('descricao').AsString:= qrBuscaItem.FieldByName('descricao_gg').AsString;
          qrBuscaItem.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_tam_gg').asfloat;
        end
        else if tamanho = 'E' then
        begin
          qrBuscaItem.FieldByName('descricao').AsString:= qrBuscaItem.FieldByName('descricao_extra').AsString;
          qrBuscaItem.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_tam_extra').asfloat;
        end
        else
          qrBuscaItem.FieldByName('descricao').AsString:= qrBuscaItem.FieldByName('descricao_old').AsString;
      end;
      frmVendaSelecaoTamanho.Free;
    end;

        // verifica se o item é vendido por peso e se a balança está habilitada
    if qrBuscaItem.FieldByName('b_peso_balanca').AsBoolean and bUtilizaBalanca then
    begin

      try
        edQuantidade.Enabled := false;
        // se houver conexão aberta, Fecha a conexão
        if ACBrBAL1.Ativo then ACBrBAL1.Desativar;
        // Conecta com a balança
        ACBrBAL1.Ativar;
        // lê o peso na balança
        ACBrBAL1.LePeso( iTimeOutBalanca );
        ACBrBAL1.Desativar;
      except
        on E : Exception do
        begin
          application.MessageBox(pchar('Erro ao obter o peso da balança! Verifique se a balança está ligada e conectada ao computador e se as configurações estão corretas.'+#13#10+
                                      E.Message + E.ClassName),'Atenção', MB_ICONERROR );
          qrBuscaItem.FieldByName('quantidade').AsFloat := 0;
        end;
      end;

      if qrBuscaItem.FieldByName('quantidade').AsFloat <= 0 then
      begin
        qrBuscaItem.close;
        edObservacaoItem.clear;
        edCodProduto.Clear;
        if edCodProduto.CanFocus then edCodProduto.SetFocus;
        abort;
      end;
    end;

    if edQuantidade.CanFocus then
      edQuantidade.SetFocus
    else
      if edValor.CanFocus then
        edValor.setfocus
      else
        edObservacaoItem.SetFocus;

  end;
end;

procedure TfrmControleDeliveryDetalheVenda.qrBuscaItemCalcFields(DataSet: TDataSet);
begin
  qrBuscaItem.FieldByName('valor_total').AsFloat :=
  qrBuscaItem.FieldByName('valor_unit').AsFloat *
  qrBuscaItem.FieldByName('quantidade').AsFloat;
end;

procedure TfrmControleDeliveryDetalheVenda.qrBuscaItemquantidadeChange(
  Sender: TField);
var valor_unit, valor_unit_70, quantidade: double;
begin
  if bExige70pc then
  begin
    if qrBuscaItem.FieldByName('b_exige_70pc_valor_unit').AsBoolean then
    begin
      quantidade :=qrBuscaItem.FieldByName('quantidade').AsFloat;
      if (quantidade<0.7)  and (quantidade>0.0) then
      begin
        valor_unit :=qrBuscaItem.FieldByName('valor_unit_ref').asfloat;
        valor_unit_70  := (valor_unit *0.7)/quantidade;
        qrBuscaItem.FieldByName('valor_unit').AsFloat := valor_unit_70;
      end;

    end;
  end;

end;

procedure TfrmControleDeliveryDetalheVenda.qrVendaacrescimoChange(
  Sender: TField);
begin
  if qrVenda.FieldByName('acrescimo').IsNull then
    qrVenda.FieldByName('acrescimo').asfloat :=0;
  if qrVenda.FieldByName('acrescimo').AsFloat<0 then
    qrVenda.FieldByName('acrescimo').asfloat :=0;
end;

procedure TfrmControleDeliveryDetalheVenda.qrVendaAfterOpen(DataSet: TDataSet);
begin
 qrVendaAfterScroll(dataset);
end;

procedure TfrmControleDeliveryDetalheVenda.qrVendaAfterPost(DataSet: TDataSet);
begin
  qrVendaAfterScroll(dataset);
end;

procedure TfrmControleDeliveryDetalheVenda.qrVendaAfterScroll(DataSet: TDataSet);
var i : integer;
begin
  qrVendaItem.Close;
  qrCliente.Close;
  qrVendaItemOpcional.Close;
  qrVendaItem.ParamByName('id_venda').AsInteger := qrVenda.FieldByName('ven_001').AsInteger;
  qrVendaItem.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
  qrVendaItemOpcional.ParamByName('id_venda').AsInteger := qrVenda.FieldByName('ven_001').AsInteger;
  qrVendaItemOpcional.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
  qrCliente.ParamByName('id_cliente').value := qrVenda.FieldByName('id_cliente').Value;
    qrCliente.ParamByName('id_empresa').value := RecProj.iEmp;
  qrCliente.open;
  qrVendaItem.open;
  qrVendaItemOpcional.Open
end;

procedure TfrmControleDeliveryDetalheVenda.qrVendab_taxa_entregaChange(Sender: TField);
var taxa : double;
str_sql:string;
begin
  taxa := 0;
    if qrVenda.State in [dsEdit, dsInsert] then
  begin
    if  qrVenda.FieldByName('b_taxa_entrega').asboolean then
    begin
      if qrCliente.Active then
      begin
        if qrCliente.RecordCount>0 then
        begin
          if bTaxapadraodelivery then   // Busca o valor da taxa padrão  10/04/2018 V2.36.0.0  Rafael
            begin
              str_sql:='select taxadeliverypadrao from empresas where emp_001=:emp_001' ;
              qrAux1.Close;
              qrAux1.SQL.Clear;
              qrAux1.SQL.Add(str_sql);
              qraux1.ParamByName('emp_001').AsInteger:=RecProj.iEmp;
              qraux1.Open;
              qrVenda.FieldByName('acrescimo').AsFloat:= qraux1.FieldByName('taxadeliverypadrao').AsFloat ;
            end
            else  // Senão busca a taxa do bairro      10/04/2018 V2.36.0.0
            begin
              taxa := qrCliente.FieldByName('taxa_delivery').AsFloat ;
              qrVenda.FieldByName('acrescimo').AsFloat:= taxa;
            end;
        end
      end;
      qrVendaCalcFields(nil);
  end
  else // Se for para retirar no balcão, não terá taxa de entrega
  qrvenda.FieldByName('acrescimo').AsInteger:=0;
end;
end;


procedure TfrmControleDeliveryDetalheVenda.aplicaDesconto(tipo : integer = 1);
var valor : double;
begin
  if qrVenda.Active then
  begin
    if qrVenda.State in [dsEdit, dsInsert] then
    begin
      //desconto por porcentagem
      if tipo=1 then
      begin
        valor:= (qrVenda.FieldByName('total_itens').AsFloat + qrVenda.FieldByName('acrescimo').AsFloat) *
            (qrVenda.FieldByName('desconto_percent').AsFloat / 100);
        qrVenda.FieldByName('desconto').AsFloat:=valor;
      end
      //desconto por valor
      else
      begin
        if qrVenda.FieldByName('total_itens').AsFloat > 0 then
        begin
          valor:= (qrVenda.FieldByName('desconto').AsFloat / (qrVenda.FieldByName('total_itens').AsFloat + qrVenda.FieldByName('acrescimo').AsFloat)) * 100;
          qrVenda.FieldByName('desconto_percent').AsFloat:=valor;
        end
        else
          qrVenda.FieldByName('desconto_percent').AsFloat:=0;
      end;
    end;
  end;
end;

procedure TfrmControleDeliveryDetalheVenda.qrVendaCalcFields(DataSet: TDataSet);
begin
  qrVenda.AutoCalcFields :=false;
  if qrVenda.FieldByName('desconto').AsFloat>0 then aplicaDesconto(2);
  AtualizaTotalVenda;
  qrVenda.AutoCalcFields :=true;
end;

procedure TfrmControleDeliveryDetalheVenda.qrVendaid_clienteChange(Sender: TField);
var nome_cliente : string;
begin
  qrCliente.Close;
  if Sender.IsNull then  exit;

  qrCliente.ParamByName('id_cliente').AsInteger := qrVenda.FieldByName('id_cliente').AsInteger;
  qrCliente.Open;

  if qrCliente.RecordCount<1 then
  begin
    qrVenda.FieldByName('id_cliente').Value := null;
    qrVenda.FieldByName('acrescimo').AsFloat:=0;
    Application.MessageBox('Cliente não encontrado!', 'Atenção', MB_ICONEXCLAMATION);
  end
  else
  begin
    qrVenda.FieldByName('acrescimo').AsFloat:= qrCliente.fieldbyname('taxa_delivery').asfloat;
    if (qrVenda.FieldByName('cpf_cliente').isnull) or (qrVenda.FieldByName('cpf_cliente').asstring='') then
    begin
      qrVenda.FieldByName('cpf_cliente').AsString:= qrCliente.FieldByName('cli_004').asstring;
    end;
  end;

  qrVendab_taxa_entregaChange(nil);
end;

procedure TfrmControleDeliveryDetalheVenda.qrVendaItemObsSubAfterOpen(DataSet: TDataSet);
begin
cxGrid2DBTableView1.ViewData.Expand(True);
end;

end.

