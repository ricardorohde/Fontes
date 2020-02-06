unit uDetalheProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  AdvGlowButton, AdvPanel, Data.DB, MemDS, DBAccess, Uni, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.DBCtrls, Datasnap.DBClient, Winapi.Shellapi,
  Vcl.Mask, cxMaskEdit, cxButtonEdit, cxDBEdit, cxTextEdit, AdvPageControl,
  Vcl.ComCtrls, JvExExtCtrls, JvExtComponent, JvPanel, AdvGroupBox, Vcl.ActnList,
  VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart,
  JvExControls, JvLabel, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxCheckBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, JvDataSource, JvExStdCtrls, JvEdit, JvValidateEdit, cxCurrencyEdit,
  JvCombobox, JvDBCombobox, VclTee.TeeGDIPlus, System.Actions, cxSpinEdit,
  cxImage, Vcl.DBCGrids, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxDropDownEdit, cxCalendar,
  cxGroupBox, cxRadioGroup, cxTimeEdit;

type
  TfrmDetalheProduto = class(TForm)
    b: TFlowPanel;
    qrDetalhe: TUniQuery;
    qrDetalhemat_001: TIntegerField;
    qrDetalheemp_001: TIntegerField;
    qrDetalhemat_002: TWideStringField;
    qrDetalhemat_003: TWideStringField;
    qrDetalhemat_004: TWideStringField;
    qrDetalhemat_005: TWideStringField;
    qrDetalhemat_006: TFloatField;
    qrDetalhemat_007: TWideMemoField;
    qrDetalhemat_008: TFloatField;
    qrDetalhemat_009: TIntegerField;
    qrDetalhemat_010: TBlobField;
    qrDetalhemtp_001: TIntegerField;
    qrDetalheuni_001: TIntegerField;
    qrDetalheuni_002: TWideStringField;
    qrDetalheuni_003: TWideStringField;
    qrDetalheusu_001_1: TIntegerField;
    qrDetalheusu_001_2: TIntegerField;
    qrDetalhedat_001_1: TDateTimeField;
    qrDetalhedat_001_2: TDateTimeField;
    qrDetalhesituacao: TWideStringField;
    qrDetalhemat_011: TWideMemoField;
    qrDetalhemat_012: TFloatField;
    qrDetalhemat_013: TDateTimeField;
    qrDetalhemat_014: TFloatField;
    qrDetalhemat_015: TFloatField;
    qrDetalhecat_001: TIntegerField;
    qrDetalhecat_002: TWideStringField;
    qrDetalhemat_017: TFloatField;
    qrDetalhedisponivel: TFloatField;
    qrDetalhemat_018: TFloatField;
    qrDetalhemat_019: TWideStringField;
    qrDetalhemat_020: TFloatField;
    qrDetalhemat_021: TIntegerField;
    qrDetalheorm_codigo: TIntegerField;
    qrDetalhecfop_consumidor: TWideStringField;
    qrDetalhecfop_revendedor: TWideStringField;
    qrDetalheicms: TFloatField;
    qrDetalheiva: TFloatField;
    qrDetalheredbasecalcst: TFloatField;
    qrDetalheredbasecalcicms: TFloatField;
    qrDetalhecst_consumidor: TIntegerField;
    qrDetalhecst_revendedor: TIntegerField;
    qrDetalheipi: TFloatField;
    qrDetalhepis_codigo: TIntegerField;
    qrDetalhepis: TFloatField;
    qrDetalhecofins: TFloatField;
    qrDetalhepis_codigo_entrada: TIntegerField;
    qrDetalhepis_codigo_saida: TIntegerField;
    qrDetalhecof_codigo_entrada: TIntegerField;
    qrDetalhecof_codigo_saida: TIntegerField;
    qrDetalhencm: TWideStringField;
    qrDetalhecso_codigo: TIntegerField;
    qrDetalhemat_aliqmunicipal: TFloatField;
    qrDetalhemat_aliqestadual: TFloatField;
    qrDetalhemat_aliqfederal: TFloatField;
    qrDetalhetempo_producao: TIntegerField;
    qrDetalhetipo_producao: TWideStringField;
    dsDetalhe: TDataSource;
    btCancelar: TAdvGlowButton;
    btSalvar: TAdvGlowButton;
    btExcluir: TAdvGlowButton;
    btEditar: TAdvGlowButton;
    btNovo: TAdvGlowButton;
    pgControl: TAdvPageControl;
    pgDadosCadastro: TAdvTabSheet;
    pgFiscal: TAdvTabSheet;
    qrListaOrigemMercadoria: TUniQuery;
    qrListaOrigemMercadoriaorm_codigo: TIntegerField;
    qrListaOrigemMercadoriadescr: TWideStringField;
    qrListaCSTICMS: TUniQuery;
    qrListaCSTICMSicm_codigo: TIntegerField;
    qrListaCSTICMSdescr: TWideStringField;
    qrListaCSOSNICMS: TUniQuery;
    qrListaCSOSNICMScso_codigo: TIntegerField;
    qrListaCSOSNICMSdescr: TWideStringField;
    qrListaCSTPIS: TUniQuery;
    qrListaCSTPISpis_codigo: TIntegerField;
    qrListaCSTPISdescr: TWideStringField;
    qrListaCSTCofins: TUniQuery;
    qrListaCSTCofinscof_codigo: TIntegerField;
    qrListaCSTCofinsdescr: TWideStringField;
    qrAux1: TUniQuery;
    cdsCFG: TClientDataSet;
    cdsCFGNOME: TStringField;
    cdsCFGNUMERO: TFloatField;
    cdsCFGTEXTO: TStringField;
    cdsCFGLOGICO: TBooleanField;
    cdsCFGDATA: TDateTimeField;
    dsListaCSTCofins: TDataSource;
    dsListaCSTPIS: TDataSource;
    dsListaCSOSNICMS: TDataSource;
    dsListaCSTICMS: TDataSource;
    dsListaOrigemMercadoria: TDataSource;
    AdvGroupBox1: TAdvGroupBox;
    Label5: TLabel;
    Label2: TLabel;
    btAtualizaImpostos: TAdvGlowButton;
    edNCM: TcxDBButtonEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    AdvGroupBox2: TAdvGroupBox;
    Label22: TLabel;
    Label32: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    advEstoque: TAdvGroupBox;
    Label13: TLabel;
    Label16: TLabel;
    advPreco: TAdvGroupBox;
    Label29: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    btMovimentoEstoque: TAdvGlowButton;
    qrListaUnidadeMedida: TUniQuery;
    dsqrListaUnidadeMedida: TDataSource;
    qrListaCategoria: TUniQuery;
    dsListaCategoria: TDataSource;
    qrListaCategoriacat_001: TIntegerField;
    qrListaUnidadeMedidauni_001: TIntegerField;
    qrListaUnidadeMedidadescr: TWideStringField;
    qrListaCategoriadescr: TWideStringField;
    ActionList1: TActionList;
    acPesquisaNCM: TAction;
    qrGraficoProdutosVendidos: TUniQuery;
    dsGraficoProdutosVendidos: TDataSource;
    qrGraficoProdutosVendidosmes_ano: TWideStringField;
    qrGraficoProdutosVendidosqtde_total_item: TFloatField;
    qrGraficoProdutosVendidosmat_001: TIntegerField;
    qrGraficoProdutosVendidosid_empresa: TIntegerField;
    qrlistacfop: TUniQuery;
    Label10: TLabel;
    qrlistacfopcfop_codigo: TWideMemoField;
    qrlistacfopdescr: TWideStringField;
    qrlistacfopord: TIntegerField;
    dslistacfop: TDataSource;
    pgComposicao: TAdvTabSheet;
    qrProdutoComposicao: TUniQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsProdutoComposicao: TDataSource;
    qrProdutoComposicaoid_composicao: TIntegerField;
    qrProdutoComposicaodescricao: TWideStringField;
    qrProdutoComposicaoquantidade: TFloatField;
    qrProdutoComposicaounidade: TWideStringField;
    qrProdutoComposicaocusto_unitario: TFloatField;
    qrProdutoComposicaototal_custo: TFloatField;
    cxGrid1DBTableView1id_composicao: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1quantidade: TcxGridDBColumn;
    cxGrid1DBTableView1unidade: TcxGridDBColumn;
    cxGrid1DBTableView1custo_unitario: TcxGridDBColumn;
    cxGrid1DBTableView1total_custo: TcxGridDBColumn;
    AdvGroupBox6: TAdvGroupBox;
    qrBuscaItemComposicao: TUniQuery;
    dsBuscaItemComposicao: TDataSource;
    edCodItemBusca: TcxButtonEdit;
    DBText1: TDBText;
    edQuantidade: TJvValidateEdit;
    Label11: TLabel;
    btInserirItemComposicao: TAdvGlowButton;
    JvdsBuscaItemComposicao: TJvDataSource;
    qrBuscaItemComposicaoid_composicao: TIntegerField;
    qrBuscaItemComposicaodescricao: TWideStringField;
    qrBuscaItemComposicaounidade: TWideStringField;
    qrBuscaItemComposicaocusto_unitario: TFloatField;
    qrBuscaItemComposicaoquantidade: TFloatField;
    Label12: TLabel;
    acPesquisaItemComposicao: TAction;
    DBText2: TDBText;
    Label14: TLabel;
    Label15: TLabel;
    DBText3: TDBText;
    Label17: TLabel;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    acDeletaItemComposicao: TAction;
    qrProdutoComposicaoid_material: TIntegerField;
    qrProdutoComposicaoid_empresa: TIntegerField;
    edCusto: TcxDBCurrencyEdit;
    edLucro: TcxDBCurrencyEdit;
    edVenda: TcxDBCurrencyEdit;
    edIngredientes: TcxDBCurrencyEdit;
    Label18: TLabel;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    AdvGroupBox7: TAdvGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    cxDBCurrencyEdit10: TcxDBCurrencyEdit;
    cxDBCurrencyEdit11: TcxDBCurrencyEdit;
    qrDetalhevalor_tam_p: TFloatField;
    qrDetalhevalor_tam_m: TFloatField;
    qrDetalhevalor_tam_g: TFloatField;
    qrDetalhevalor_tam_gg: TFloatField;
    qrDetalheb_venda_tamanho: TBooleanField;
    grTamanhos: TAdvGroupBox;
    cxDBCurrencyEdit12: TcxDBCurrencyEdit;
    qrDetalhetamanho_padrao: TWideStringField;
    qrDetalhevalor_tam_extra: TFloatField;
    cxDBCurrencyEdit13: TcxDBCurrencyEdit;
    cxDBCurrencyEdit14: TcxDBCurrencyEdit;
    cxDBCurrencyEdit15: TcxDBCurrencyEdit;
    cxDBCurrencyEdit16: TcxDBCurrencyEdit;
    qrDescTamanhoMaterial: TUniQuery;
    qrDescTamanhoMaterialid_empresa: TIntegerField;
    qrDescTamanhoMaterialtamanho_p: TWideStringField;
    qrDescTamanhoMaterialtamanho_m: TWideStringField;
    qrDescTamanhoMaterialtamanho_g: TWideStringField;
    qrDescTamanhoMaterialtamanho_gg: TWideStringField;
    qrDescTamanhoMaterialtamanho_extra: TWideStringField;
    dsDescTamanhoMaterial: TDataSource;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    ckVendaTamanho: TcxDBCheckBox;
    cbTamanhoPadrao: TJvDBComboBox;
    Label24: TLabel;
    btDefinirFiscalIsento: TAdvGlowButton;
    btDefinirFiscalTributado: TAdvGlowButton;
    btDefinirFiscalST: TAdvGlowButton;
    qrDetalheb_peso_balanca: TBooleanField;
    qrDetalheb_exporta_peso_balanca: TBooleanField;
    qrDetalhecest: TWideStringField;
    acPesquisaCEST: TAction;
    qrDetalheb_exige_alterar_preco_venda: TBooleanField;
    Label28: TLabel;
    qrDetalhesit_001: TIntegerField;
    qrDetalhedias_validade: TIntegerField;
    AdvGroupBox3: TAdvGroupBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label30: TLabel;
    qrDetalhetara_balanca: TFloatField;
    cxDBCurrencyEdit19: TcxDBCurrencyEdit;
    Label33: TLabel;
    qrDetalheb_exige_70pc_valor_unit: TBooleanField;
    qrDetalhecfop_venda_outra_uf: TWideStringField;
    qrDetalhecfop_devolucao: TWideStringField;
    qrDetalhecfop_devolucao_outra_uf: TWideStringField;
    qrDetalhecfop_garantia: TWideStringField;
    qrDetalhecfop_garantia_outra_uf: TWideStringField;
    AdvGroupBox8: TAdvGroupBox;
    DBLookupComboBox8: TDBLookupComboBox;
    JvLabel2: TJvLabel;
    JvLabel1: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    DBLookupComboBox9: TDBLookupComboBox;
    DBLookupComboBox10: TDBLookupComboBox;
    DBLookupComboBox11: TDBLookupComboBox;
    DBLookupComboBox12: TDBLookupComboBox;
    DBLookupComboBox13: TDBLookupComboBox;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    AdvGroupBox9: TAdvGroupBox;
    qrDetalhecodigo_anp: TWideStringField;
    DBEdit2: TDBEdit;
    JvLabel7: TJvLabel;
    pgImagem: TAdvTabSheet;
    dsImagens: TDataSource;
    cdsImagens: TClientDataSet;
    cdsImagensnomearquivo: TStringField;
    DBCtrlGridImagens: TDBCtrlGrid;
    AdvGroupBox11: TAdvGroupBox;
    imgProduto2: TImage;
    qrDetalhearquivo_img: TWideStringField;
    btAbrirPastaImagens: TAdvGlowButton;
    imgProdutoLista: TImage;
    memInfoImagens: TMemo;
    qrDetalheid_fornecedor: TIntegerField;
    acPesquisafornecedor: TAction;
    qrDetalhenome_fantasia: TWideStringField;
    qrDetalheid_setor: TIntegerField;
    qrListaSetor: TUniQuery;
    qrListaSetorid_setor: TIntegerField;
    qrListaSetordescricao: TWideStringField;
    dsListaSetor: TDataSource;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    Label37: TLabel;
    qrDetalheestoque: TFloatField;
    AdvGroupBox12: TAdvGroupBox;
    Label1: TLabel;
    LabelUnidade: TLabel;
    Label4: TLabel;
    Label25: TLabel;
    Label3: TLabel;
    lbTempo: TLabel;
    Label8: TLabel;
    Label34: TLabel;
    edCodRef: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    DBEdit1: TDBEdit;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    btIncluirCategoria: TAdvGlowButton;
    btIncluirUnidadeMedida: TAdvGlowButton;
    cbTipoProducao: TJvDBComboBox;
    Btcodigofornecedor: TcxDBButtonEdit;
    btIncluirfornecedor: TAdvGlowButton;
    DBEdit3: TDBEdit;
    CBImpressora: TJvDBComboBox;
    Label31: TLabel;
    cbSetor: TDBLookupComboBox;
    Label26: TLabel;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    ckSituacao: TcxCheckBox;
    pgOpcionais: TAdvTabSheet;
    AdvGroupBox10: TAdvGroupBox;
    Label42: TLabel;
    DBText5: TDBText;
    Label43: TLabel;
    Label44: TLabel;
    DBText6: TDBText;
    edCodOpcBusca: TcxButtonEdit;
    btInserirOpc: TAdvGlowButton;
    qrBuscaItemOpc: TUniQuery;
    dsBuscaItemOpc: TDataSource;
    qrBuscaItemOpcid_opcional: TIntegerField;
    qrBuscaItemOpcdescricao: TWideStringField;
    qrBuscaItemOpcvalor: TFloatField;
    qrProdutoOpc: TUniQuery;
    dsProdutoOpc: TDataSource;
    qrProdutoOpcid_opcional: TIntegerField;
    qrProdutoOpcdescricao: TWideStringField;
    qrProdutoOpcvalor: TFloatField;
    qrProdutoOpcid_material: TIntegerField;
    qrProdutoOpcid_empresa: TIntegerField;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1id_opcional: TcxGridDBColumn;
    cxGridDBTableView1descricao: TcxGridDBColumn;
    cxGridDBTableView1valor: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    acDeletaItemOpc: TAction;
    acPesquisaOpc: TAction;
    advtbsht1: TAdvTabSheet;
    grpGrafico: TAdvGroupBox;
    lbl1: TLabel;
    DBChart1: TDBChart;
    psrsSeries1: TPieSeries;
    lblUltimaalteracao: TLabel;
    tsPromocao: TAdvTabSheet;
    grDias: TAdvGroupBox;
    ckSegunda: TcxDBCheckBox;
    ckTerca: TcxDBCheckBox;
    ckQuarta: TcxDBCheckBox;
    ckQuinta: TcxDBCheckBox;
    ckSexta: TcxDBCheckBox;
    ckSabado: TcxDBCheckBox;
    ckDomingo: TcxDBCheckBox;
    grTipoVenda: TAdvGroupBox;
    cxDBCheckBox12: TcxDBCheckBox;
    cxDBCheckBox13: TcxDBCheckBox;
    cxDBCheckBox14: TcxDBCheckBox;
    cxDBCheckBox15: TcxDBCheckBox;
    cxDBCheckBox16: TcxDBCheckBox;
    grTipoDesconto: TAdvGroupBox;
    qrPromocao: TUniQuery;
    dsPromocao: TDataSource;
    qrPromocaoid_promocao: TIntegerField;
    qrPromocaoid_empresa: TIntegerField;
    qrPromocaoid_material: TIntegerField;
    qrPromocaodia_seg: TBooleanField;
    qrPromocaodia_ter: TBooleanField;
    qrPromocaodia_qua: TBooleanField;
    qrPromocaodia_qui: TBooleanField;
    qrPromocaodia_sex: TBooleanField;
    qrPromocaodia_sab: TBooleanField;
    qrPromocaodia_dom: TBooleanField;
    qrPromocaotipo_mesa: TBooleanField;
    qrPromocaotipo_delivery: TBooleanField;
    qrPromocaotipo_comanda: TBooleanField;
    qrPromocaotipo_balcao: TBooleanField;
    qrPromocaotipo_pdv: TBooleanField;
    qrPromocaodesconto_seg_padrao: TFloatField;
    qrPromocaodesconto_seg_tam_p: TFloatField;
    qrPromocaodesconto_seg_tam_m: TFloatField;
    qrPromocaodesconto_seg_tam_g: TFloatField;
    qrPromocaodesconto_seg_tam_gg: TFloatField;
    qrPromocaodesconto_seg_tam_extra: TFloatField;
    qrPromocaodesconto_ter_padrao: TFloatField;
    qrPromocaodesconto_ter_tam_p: TFloatField;
    qrPromocaodesconto_ter_tam_m: TFloatField;
    qrPromocaodesconto_ter_tam_g: TFloatField;
    qrPromocaodesconto_ter_tam_gg: TFloatField;
    qrPromocaodesconto_ter_tam_extra: TFloatField;
    qrPromocaodesconto_qua_padrao: TFloatField;
    qrPromocaodesconto_qua_tam_p: TFloatField;
    qrPromocaodesconto_qua_tam_m: TFloatField;
    qrPromocaodesconto_qua_tam_g: TFloatField;
    qrPromocaodesconto_qua_tam_gg: TFloatField;
    qrPromocaodesconto_qua_tam_extra: TFloatField;
    qrPromocaodesconto_qui_padrao: TFloatField;
    qrPromocaodesconto_qui_tam_p: TFloatField;
    qrPromocaodesconto_qui_tam_m: TFloatField;
    qrPromocaodesconto_qui_tam_g: TFloatField;
    qrPromocaodesconto_qui_tam_gg: TFloatField;
    qrPromocaodesconto_qui_tam_extra: TFloatField;
    qrPromocaodesconto_sex_padrao: TFloatField;
    qrPromocaodesconto_sex_tam_p: TFloatField;
    qrPromocaodesconto_sex_tam_m: TFloatField;
    qrPromocaodesconto_sex_tam_g: TFloatField;
    qrPromocaodesconto_sex_tam_gg: TFloatField;
    qrPromocaodesconto_sex_tam_extra: TFloatField;
    qrPromocaodesconto_sab_padrao: TFloatField;
    qrPromocaodesconto_sab_tam_p: TFloatField;
    qrPromocaodesconto_sab_tam_m: TFloatField;
    qrPromocaodesconto_sab_tam_g: TFloatField;
    qrPromocaodesconto_sab_tam_gg: TFloatField;
    qrPromocaodesconto_sab_tam_extra: TFloatField;
    qrPromocaodesconto_dom_padrao: TFloatField;
    qrPromocaodesconto_dom_tam_p: TFloatField;
    qrPromocaodesconto_dom_tam_m: TFloatField;
    qrPromocaodesconto_dom_tam_g: TFloatField;
    qrPromocaodesconto_dom_tam_gg: TFloatField;
    qrPromocaodesconto_dom_tam_extra: TFloatField;
    grAgrupamento: TAdvGroupBox;
    grTamanhosProm: TAdvGroupBox;
    edTamanhoP: TcxDBTextEdit;
    edTamanhoM: TcxDBTextEdit;
    edTamanhoG: TcxDBTextEdit;
    edTamanhoGG: TcxDBTextEdit;
    edTamanhoExtra: TcxDBTextEdit;
    edTamanhoPadrao: TEdit;
    grSegunda: TAdvGroupBox;
    eddesconto_seg_padrao: TcxDBCurrencyEdit;
    eddesconto_seg_p: TcxDBCurrencyEdit;
    eddesconto_seg_m: TcxDBCurrencyEdit;
    eddesconto_seg_g: TcxDBCurrencyEdit;
    eddesconto_seg_gg: TcxDBCurrencyEdit;
    eddesconto_seg_extra: TcxDBCurrencyEdit;
    grTerca: TAdvGroupBox;
    eddesconto_ter_padrao: TcxDBCurrencyEdit;
    eddesconto_ter_p: TcxDBCurrencyEdit;
    eddesconto_ter_m: TcxDBCurrencyEdit;
    eddesconto_ter_g: TcxDBCurrencyEdit;
    eddesconto_ter_gg: TcxDBCurrencyEdit;
    eddesconto_ter_extra: TcxDBCurrencyEdit;
    grQuarta: TAdvGroupBox;
    eddesconto_qua_padrao: TcxDBCurrencyEdit;
    eddesconto_qua_p: TcxDBCurrencyEdit;
    eddesconto_qua_m: TcxDBCurrencyEdit;
    eddesconto_qua_g: TcxDBCurrencyEdit;
    eddesconto_qua_gg: TcxDBCurrencyEdit;
    eddesconto_qua_extra: TcxDBCurrencyEdit;
    grQuinta: TAdvGroupBox;
    eddesconto_qui_padrao: TcxDBCurrencyEdit;
    eddesconto_qui_p: TcxDBCurrencyEdit;
    eddesconto_qui_m: TcxDBCurrencyEdit;
    eddesconto_qui_g: TcxDBCurrencyEdit;
    eddesconto_qui_gg: TcxDBCurrencyEdit;
    eddesconto_qui_extra: TcxDBCurrencyEdit;
    grSexta: TAdvGroupBox;
    eddesconto_sex_padrao: TcxDBCurrencyEdit;
    eddesconto_sex_p: TcxDBCurrencyEdit;
    eddesconto_sex_m: TcxDBCurrencyEdit;
    eddesconto_sex_g: TcxDBCurrencyEdit;
    eddesconto_sex_gg: TcxDBCurrencyEdit;
    eddesconto_sex_extra: TcxDBCurrencyEdit;
    grSabado: TAdvGroupBox;
    eddesconto_sab_padrao: TcxDBCurrencyEdit;
    eddesconto_sab_p: TcxDBCurrencyEdit;
    eddesconto_sab_m: TcxDBCurrencyEdit;
    eddesconto_sab_g: TcxDBCurrencyEdit;
    eddesconto_sab_gg: TcxDBCurrencyEdit;
    eddesconto_sab_extra: TcxDBCurrencyEdit;
    grDomingo: TAdvGroupBox;
    eddesconto_dom_padrao: TcxDBCurrencyEdit;
    eddesconto_dom_p: TcxDBCurrencyEdit;
    eddesconto_dom_m: TcxDBCurrencyEdit;
    eddesconto_dom_g: TcxDBCurrencyEdit;
    eddesconto_dom_gg: TcxDBCurrencyEdit;
    eddesconto_dom_extra: TcxDBCurrencyEdit;
    rgTipoDesconto: TcxDBRadioGroup;
    qrPromocaotipo_desconto: TIntegerField;
    AdvGroupBox13: TAdvGroupBox;
    lblHH_Inicial: TLabel;
    grHH_Ativos: TAdvGroupBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox9: TcxDBCheckBox;
    cxDBCheckBox10: TcxDBCheckBox;
    cxDBCheckBox11: TcxDBCheckBox;
    grHH_Tipo: TAdvGroupBox;
    cxDBCheckBox17: TcxDBCheckBox;
    cxDBCheckBox18: TcxDBCheckBox;
    cxDBCheckBox19: TcxDBCheckBox;
    cxDBCheckBox20: TcxDBCheckBox;
    cxDBCheckBox21: TcxDBCheckBox;
    lblHH_Final: TLabel;
    lblHH_Valor: TLabel;
    ckAtivaHappyHour: TcxDBCheckBox;
    edHH_Valor: TcxDBCurrencyEdit;
    edHH_Inicial: TcxDBTimeEdit;
    edHH_Final: TcxDBTimeEdit;
    qrDetalhehh_ativar: TBooleanField;
    qrDetalhehh_dia_seg: TBooleanField;
    qrDetalhehh_dia_ter: TBooleanField;
    qrDetalhehh_dia_qua: TBooleanField;
    qrDetalhehh_dia_qui: TBooleanField;
    qrDetalhehh_dia_sex: TBooleanField;
    qrDetalhehh_dia_sab: TBooleanField;
    qrDetalhehh_dia_dom: TBooleanField;
    qrDetalhehh_tipo_mesa: TBooleanField;
    qrDetalhehh_tipo_delivery: TBooleanField;
    qrDetalhehh_tipo_comanda: TBooleanField;
    qrDetalhehh_tipo_balcao: TBooleanField;
    qrDetalhehh_tipo_pdv: TBooleanField;
    qrDetalhehh_inicial: TTimeField;
    qrDetalhehh_final: TTimeField;
    qrDetalhehh_valor: TFloatField;
    lblPrazo: TLabel;
    lblAtacado: TLabel;
    edPrazo: TcxDBCurrencyEdit;
    edAtacado: TcxDBCurrencyEdit;
    qrDetalhevalor_tabela2: TFloatField;
    qrDetalhevalor_atacado: TFloatField;
    qrDetalheutiliza_combo: TBooleanField;
    ckCombo: TcxDBCheckBox;
    pgCombo: TAdvTabSheet;
    AdvGroupBox4: TAdvGroupBox;
    Label7: TLabel;
    lblDescricao: TDBText;
    Label27: TLabel;
    Label41: TLabel;
    edCodProduto: TcxButtonEdit;
    btInserir: TAdvGlowButton;
    acPesquisaproduto: TAction;
    edQuantidadecombo: TJvValidateEdit;
    edvalorvendacombo: TJvValidateEdit;
    Label45: TLabel;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    Label46: TLabel;
    edvalorcustocombo: TJvValidateEdit;
    Label47: TLabel;
    qrCombo: TUniQuery;
    dsCombo: TDataSource;
    qrComboid_produto_combo: TIntegerField;
    qrComboquantidade: TFloatField;
    qrCombopreco_venda: TFloatField;
    qrCombopreco_custo: TFloatField;
    qrCombomat_003: TWideStringField;
    qrCombomat_001: TIntegerField;
    cxGrid3DBTableView1quantidade: TcxGridDBColumn;
    cxGrid3DBTableView1preco_venda: TcxGridDBColumn;
    cxGrid3DBTableView1preco_custo: TcxGridDBColumn;
    cxGrid3DBTableView1mat_003: TcxGridDBColumn;
    qrCombomat_004: TWideStringField;
    cxGrid3DBTableView1mat_004: TcxGridDBColumn;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    acDeletecombo: TAction;
    qrComboid_material: TIntegerField;
    qrComboid_empresa: TIntegerField;
    DBLookupComboBox14: TDBLookupComboBox;
    Label48: TLabel;
    qrListaTara: TUniQuery;
    qrListaTaratar_001: TIntegerField;
    qrListaTaradescricao: TWideStringField;
    dsListaTara: TDataSource;
    qrDetalhetar_001: TIntegerField;
    qrDetalhecnpj_fabricante: TWideStringField;
    qrDetalhenao_relevante: TBooleanField;
    ckEscala: TcxDBCheckBox;
    lblCNPJ: TLabel;
    edCNPJ: TcxDBTextEdit;
    Label40: TLabel;
    cxDBCurrencyEdit18: TcxDBCurrencyEdit;
    Label38: TLabel;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    Label39: TLabel;
    cxDBCurrencyEdit20: TcxDBCurrencyEdit;
    Label49: TLabel;
    cxDBCurrencyEdit21: TcxDBCurrencyEdit;
    qrDetalhepeso_partida_anp: TFloatField;
    JvLabel8: TJvLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    procedure qrListaCategoriaBeforeOpen(DataSet: TDataSet);
    procedure qrListaUnidadeMedidaBeforeOpen(DataSet: TDataSet);
    procedure qrDetalheBeforePost(DataSet: TDataSet);
    procedure qrDetalheNewRecord(DataSet: TDataSet);
    procedure qrDetalhemat_008Change(Sender: TField);
    procedure qrDetalhemat_012Change(Sender: TField);
    procedure qrDetalhemat_018Change(Sender: TField);
    procedure qrDetalhencmChange(Sender: TField);
    procedure CalculaMargem(tipo : string = 'P');
    procedure ValidaBotoes;
    procedure btNovoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure dsDetalheStateChange(Sender: TObject);
    constructor Create (sender : tcomponent ; id_material : integer =0);
    procedure  acPesquisaNCMExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btIncluirUnidadeMedidaClick(Sender: TObject);
    procedure btMovimentoEstoqueClick(Sender: TObject);
    procedure qrDetalheAfterOpen(DataSet: TDataSet);
    procedure qrGraficoProdutosVendidosAfterOpen(DataSet: TDataSet);
    procedure acPesquisaItemComposicaoExecute(Sender: TObject);
    procedure edCodItemBuscaExit(Sender: TObject);
    procedure edCodItemBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure btInserirItemComposicaoClick(Sender: TObject);
    procedure acDeletaItemComposicaoExecute(Sender: TObject);
    procedure qrProdutoComposicaoAfterDelete(DataSet: TDataSet);
    procedure qrProdutoComposicaoAfterRefresh(DataSet: TDataSet);
    procedure qrDetalheAfterEdit(DataSet: TDataSet);
    procedure qrDetalheAfterPost(DataSet: TDataSet);
    procedure AtualizaComboTamamhoPadrao;
    procedure qrDescTamanhoMaterialAfterPost(DataSet: TDataSet);
    procedure qrDetalheb_venda_tamanhoChange(Sender: TField);
    procedure qrDetalheb_venda_tamanhoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ckVendaTamanhoClick(Sender: TObject);
    procedure qrDetalhemat_004Change(Sender: TField);
    procedure btDefinirFiscalIsentoClick(Sender: TObject);
    procedure btDefinirFiscalTributadoClick(Sender: TObject);
    procedure btDefinirFiscalSTClick(Sender: TObject);
    procedure acPesquisaCESTExecute(Sender: TObject);
    procedure ckSituacaoClick(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure edVendaKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBCurrencyEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBCurrencyEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBCurrencyEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure edLucroKeyPress(Sender: TObject; var Key: Char);
    procedure edCustoKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBCurrencyEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBCurrencyEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBCurrencyEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBCurrencyEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBCurrencyEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBCurrencyEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBCurrencyEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure DBCtrlGridImagensPaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure DBCtrlGridImagensClick(Sender: TObject);
    procedure btAbrirPastaImagensClick(Sender: TObject);
    procedure acPesquisafornecedorExecute(Sender: TObject);
    procedure qrDetalheid_fornecedorChange(Sender: TField);
    procedure btIncluirfornecedorClick(Sender: TObject);
    procedure btIncluirCategoriaClick(Sender: TObject);
    procedure qrListaSetorBeforeOpen(DataSet: TDataSet);
    procedure qrDetalheid_setorChange(Sender: TField);
    procedure edCodOpcBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure edCodOpcBuscaExit(Sender: TObject);
    procedure btInserirOpcClick(Sender: TObject);
    procedure acDeletaItemOpcExecute(Sender: TObject);
    procedure acPesquisaOpcExecute(Sender: TObject);
    procedure AjustaPromocao;
    procedure BuscarPromocao;
    procedure dsDetalheDataChange(Sender: TObject; Field: TField);
    procedure ckSegundaPropertiesChange(Sender: TObject);
    procedure ckTercaPropertiesChange(Sender: TObject);
    procedure ckQuartaPropertiesChange(Sender: TObject);
    procedure ckQuintaPropertiesChange(Sender: TObject);
    procedure ckSextaPropertiesChange(Sender: TObject);
    procedure ckSabadoPropertiesChange(Sender: TObject);
    procedure ckDomingoPropertiesChange(Sender: TObject);
    procedure DiasVisiveis;
    procedure pgControlChange(Sender: TObject);
    procedure cbTamanhoPadraoChange(Sender: TObject);
    procedure qrDetalhevalor_tam_pChange(Sender: TField);
    procedure qrDetalhevalor_tam_mChange(Sender: TField);
    procedure qrDetalhevalor_tam_gChange(Sender: TField);
    procedure qrDetalhevalor_tam_ggChange(Sender: TField);
    procedure qrDetalhevalor_tam_extraChange(Sender: TField);
    procedure VerificaDadosPromocao;
    procedure ckAtivaHappyHourPropertiesChange(Sender: TObject);
    procedure acPesquisaprodutoExecute(Sender: TObject);
    procedure edCodProdutoExit(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure limpar;
    procedure acDeletecomboExecute(Sender: TObject);
    procedure calcula_custo_venda;
    procedure qrListaTaraBeforeOpen(DataSet: TDataSet);
    procedure edCNPJKeyPress(Sender: TObject; var Key: Char);
    procedure ckEscalaPropertiesChange(Sender: TObject);
    procedure qrDetalhecestChange(Sender: TField);

  private
    { Private declarations }
    bNovoReg, bDescCalculado,b_calcula_margem_preco_prazo : boolean;
    pasta_imagens : string;
    d_calculo_margem_prazo:double;
    bAtualizarPreco: Boolean;
    id_produto_combo:integer;
  public
    { Public declarations }
  end;

var
  frmDetalheProduto: TfrmDetalheProduto;

implementation

{$R *.dfm}

uses uMemo, uMenu, Funcao_DB, uFuncoes, uBuscaRegistro, uDetalheCategoria,
     uMovimentoEstoque, uDetalheUnidade, uConsFornecedor, uDetalheFornecedor,
  uConsProduto;

procedure TfrmDetalheProduto.btDefinirFiscalIsentoClick(Sender: TObject);
begin
  if qrDetalhe.Active then
  begin
    if qrDetalhe.State in [dsedit, dsinsert]  then
    begin
      qrdetalhe.FieldByName('orm_codigo').AsInteger := 0;
      qrdetalhe.FieldByName('cfop_consumidor').AsInteger := 5102;
      qrdetalhe.FieldByName('cst_consumidor').AsInteger := 40;
      qrdetalhe.FieldByName('cso_codigo').AsInteger := 400;
      qrdetalhe.FieldByName('pis_codigo_saida').AsInteger := 49;
      qrdetalhe.FieldByName('cof_codigo_saida').AsInteger := 49;
    end;
  end;
end;

procedure TfrmDetalheProduto.btDefinirFiscalSTClick(Sender: TObject);
begin
  if qrDetalhe.Active then
  begin
    if qrDetalhe.State in [dsedit, dsinsert]  then
    begin
      qrdetalhe.FieldByName('orm_codigo').AsInteger := 0;
      qrdetalhe.FieldByName('cfop_consumidor').AsInteger := 5405;
      qrdetalhe.FieldByName('cst_consumidor').AsInteger := 60;
      qrdetalhe.FieldByName('cso_codigo').AsInteger := 500;
      qrdetalhe.FieldByName('pis_codigo_saida').AsInteger := 49;
      qrdetalhe.FieldByName('cof_codigo_saida').AsInteger := 49;
    end;
  end;
end;

procedure TfrmDetalheProduto.btDefinirFiscalTributadoClick(Sender: TObject);
begin
  if qrDetalhe.Active then
  begin
    if qrDetalhe.State in [dsedit, dsinsert]  then
    begin
      qrdetalhe.FieldByName('orm_codigo').AsInteger := 0;
      qrdetalhe.FieldByName('cfop_consumidor').AsInteger := 5102;
      qrdetalhe.FieldByName('cst_consumidor').AsInteger := 0;
      qrdetalhe.FieldByName('cso_codigo').AsInteger := 102;
      qrdetalhe.FieldByName('pis_codigo_saida').AsInteger := 49;
      qrdetalhe.FieldByName('cof_codigo_saida').AsInteger := 49;
    end;
  end;
end;

procedure TfrmDetalheProduto.acPesquisafornecedorExecute(Sender: TObject);
var str_sql:string;
begin
if not (qrDetalhe.State in [dsEdit, dsInsert]) then exit;

  str_sql:= 'select id_fornecedor, nome_fantasia, razao_social from fornecedor';
             frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
             CriaIntegerArray([0,1,2]) ,
             CriaStringArray(['Código ', 'Nome Fantasia','Razão Social']), 0, 1,'id_situacao=4');
                                             CriaStringArray(['Código','Nome Fantasia', 'Razâo Social']) ;
             frmBuscaRegistro.ShowModal;
             if frmBuscaRegistro.Tag=1 then
               qrDetalhe.FieldByName('id_fornecedor').AsString:=frmBuscaRegistro.valor_retorno;
             frmBuscaRegistro.Free;
end;

procedure TfrmDetalheProduto.AtualizaComboTamamhoPadrao;
begin
  if qrDescTamanhoMaterial.Active then
  begin
    if qrDescTamanhoMaterial.RecordCount>0 then
    begin
      cbTamanhoPadrao.Items.Clear;
      cbTamanhoPadrao.Values.Clear;

      cbTamanhoPadrao.Items.Add(qrDescTamanhoMaterial.FieldByName('tamanho_p').AsString);
      cbTamanhoPadrao.Values.Add('P');
      cbTamanhoPadrao.Items.Add(qrDescTamanhoMaterial.FieldByName('tamanho_m').AsString);
      cbTamanhoPadrao.Values.Add('M');
      cbTamanhoPadrao.Items.Add(qrDescTamanhoMaterial.FieldByName('tamanho_g').AsString);
      cbTamanhoPadrao.Values.Add('G');
      cbTamanhoPadrao.Items.Add(qrDescTamanhoMaterial.FieldByName('tamanho_gg').AsString);
      cbTamanhoPadrao.Values.Add('GG');
      cbTamanhoPadrao.Items.Add(qrDescTamanhoMaterial.FieldByName('tamanho_extra').AsString);
      cbTamanhoPadrao.Values.Add('E');
    end;
  end;
end;

 procedure TfrmDetalheProduto.acDeletaItemComposicaoExecute(Sender: TObject);
begin
  if qrDetalhe.State =dsEdit then
  begin
    if qrProdutoComposicao.Active then
    begin
      if qrProdutoComposicao.RecordCount>0 then
      begin
        if Application.MessageBox('Deseja excluir o registro? Esta ação não pode ser desfeita!', 'Atenção', MB_ICONQUESTION + mb_yesno)=mryes then
          qrProdutoComposicao.Delete;
      end;
    end;
  end;
end;

procedure TfrmDetalheProduto.acDeletaItemOpcExecute(Sender: TObject);
begin
  if qrDetalhe.State =dsEdit then
  begin
    if qrProdutoOpc.Active then
    begin
      if qrProdutoOpc.RecordCount>0 then
      begin
        if Application.MessageBox('Deseja excluir o registro? Esta ação não pode ser desfeita!', 'Atenção', MB_ICONQUESTION + mb_yesno)=mryes then
          qrProdutoOpc.Delete;
      end;
    end;
  end;
end;

procedure TfrmDetalheProduto.acDeletecomboExecute(Sender: TObject);
var
str_sql:string;
begin
  if qrDetalhe.State =dsEdit then
  begin
    if qrcombo.Active then
    begin
      if qrcombo.RecordCount>0 then
      begin
        if Application.MessageBox('Deseja excluir o registro? Esta ação não pode ser desfeita!', 'Atenção', MB_ICONQUESTION + mb_yesno)=mryes then
        begin
          qrcombo.Delete;
          calcula_custo_venda;
        end;

      end;
    end;
  end;
end;

procedure TfrmDetalheProduto.acPesquisaCESTExecute(Sender: TObject);
var str_sql : string;
begin
  if not (qrDetalhe.State in [dsEdit, dsInsert]) then exit;

  str_sql:= 'select cest_codigo, ncm_codigo, cest_descricao from cest';
  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
                                CriaIntegerArray([0,1,2]) ,
                                CriaStringArray(['CEST', 'NCM', 'Descrição']), 0, 0);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
    qrDetalhe.FieldByName('cest').AsString:=frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.Free;

end;

procedure TfrmDetalheProduto.acPesquisaItemComposicaoExecute(Sender: TObject);
var str_sql : string;
begin
  if qrDetalhe.State in [dsEdit] then
  begin
    edCodItemBusca.SetFocus;
    str_sql:= ' select c.id_composicao,  '+
              ' c.descricao,    '+
              ' u.uni_003,  '+
              ' c.valor_custo, '+
              ' c.estoque_minimo '+
              ' from composicao c '+
              ' join unidades u on u.uni_001=c.id_unidade and u.emp_001=c.id_empresa ';
     frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
        vararrayof([0,1,2,3,4]) , //Campos visiveis
        vararrayof(['Código', 'Item', 'Unidade','Valor Custo', 'Estoque Min.' ]),//Caption dos campos
        0, 1, ' c.id_situacao=4 and c.id_empresa='+IntToStr(RecProj.iEmp));
     frmBuscaRegistro.ShowModal;
     if frmBuscaRegistro.Tag=1 then
        edCodItemBusca.Text:=frmBuscaRegistro.valor_retorno;
     frmBuscaRegistro.Free;
     if edQuantidade.CanFocus then edQuantidade.SetFocus;
  end;
end;

procedure TfrmDetalheProduto.acPesquisaNCMExecute(Sender: TObject);
var str_sql : string;
begin
  inherited;
  if not (qrDetalhe.State in [dsEdit, dsInsert]) then exit;

  str_sql:= 'select ncm, descricao from ibpt';
             frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
                                            CriaIntegerArray([0,1]) ,
                                            CriaStringArray(['NCM', 'Descrição']), 0, 0);
             frmBuscaRegistro.ShowModal;
             if frmBuscaRegistro.Tag=1 then
               qrDetalhe.FieldByName('ncm').AsString:=frmBuscaRegistro.valor_retorno;
             frmBuscaRegistro.Free;

end;

procedure TfrmDetalheProduto.acPesquisaOpcExecute(Sender: TObject);
var str_sql : string;
begin
  if qrDetalhe.State in [dsEdit] then
  begin
    edCodOpcBusca.SetFocus;
    str_sql:= ' select o.id_opcional,  '+
              ' o.descricao,    '+
              ' o.valor '+
              ' from opcional o';
     frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
        vararrayof([0,1,2]) , //Campos visiveis
        vararrayof(['Código', 'Descrição']),//Caption dos campos
        0, 1, ' o.id_situacao=4 and o.id_empresa='+IntToStr(RecProj.iEmp));
     frmBuscaRegistro.ShowModal;
     if frmBuscaRegistro.Tag=1 then
        edCodOpcBusca.Text:=frmBuscaRegistro.valor_retorno;
     frmBuscaRegistro.Free;
     edCodOpcBuscaExit(nil);
  end;
end;

procedure TfrmDetalheProduto.acPesquisaprodutoExecute(Sender: TObject);
var
str_sql:string;
begin
  pgControl.ActivePageIndex:=7;

  edCodProduto.SetFocus;
  str_sql:=' SELECT MAT_001,' + ' MAT_004, ' + ' MAT_003, ' +
             ' MAT_012, ' + ' MAT_008 ' +
             ' FROM MATERIAIS MAT ' ;

        frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
        vararrayof([1,2,3,4]) ,
        vararrayof(['Código', 'Produto', 'Pr. Custo','Pr. Venda' ]),
        1, 1,
        'sit_001=4 and utiliza_combo=false and emp_001='+IntToStr(RecProj.iEmp), 800, 500);
        frmBuscaRegistro.ShowModal;
        if frmBuscaRegistro.Tag=1 then
        edCodProduto.Text:=frmBuscaRegistro.valor_retorno;
        frmBuscaRegistro.Free;
        if edQuantidade.CanFocus then
        edQuantidade.SetFocus;
end;

constructor TfrmDetalheProduto.Create (sender : tcomponent ; id_material : integer = 0);
var acesso : boolean;
    listagem: TStringList;
    I: Integer;
    diretorio, str_sql: string;
    qraux1:tuniquery;

begin
  inherited create(sender);
  buscacampo( acesso, 'select b_acesso_produtos from usuarios where usu_001=' + inttostr(recproj.iUsuario), '', false);
  frmMenu.VerificaPermissaoAcesso(acesso);

  qrDetalhe.ParamByName('ID').AsInteger:= id_material;
  qrDetalhe.ParamByName('emp').AsInteger:= RecProj.iEmp;
  qrDetalhe.Open;

  qrDescTamanhoMaterial.ParamByName('id_empresa').AsInteger:= RecProj.iEmp;
  qrDescTamanhoMaterial.open;

  qrProdutoComposicao.ParamByName('id_empresa').AsInteger:= RecProj.iEmp;
  qrProdutoOpc.ParamByName('id_empresa').AsInteger:= RecProj.iEmp;

  qrListaOrigemMercadoria.Open;
  qrListaCSTICMS.Open;
  qrListaCSOSNICMS.Open;
  qrListaCSTPIS.Open;
  qrListaCSTCofins.Open;
  qrListaUnidadeMedida.Open;
  qrListaCategoria.Open;
  qrListaTara.Open;
  qrlistacfop.Open;
  qrListaSetor.Open;

  if id_material=0 then qrDetalhe.Append;

  bNovoReg := id_material = 0;
  bDescCalculado:=false;
  AtualizaComboTamamhoPadrao;

  //carrega as imagens na listagem
  cdsImagens.CreateDataSet;
  pasta_imagens := FormatarCaminhoDir(ExtractFilePath(Application.ExeName)) + 'Imagens\produto\';
  diretorio :=  pasta_imagens + '*.png';
  listagem := GetFileList(diretorio);
  for I := 0 to listagem.Count-1 do
  begin
    cdsImagens.Append;
    cdsImagens.FieldByName('nomearquivo').AsString := pasta_imagens + listagem[I];
    cdsImagens.Post;
  end;
  memInfoImagens.Text := format(memInfoImagens.Text, [pasta_imagens]);
end;

procedure TfrmDetalheProduto.cxCheckBox1Click(Sender: TObject);
begin
  if qrdetalhe.State in  [dsInsert, dsEdit]  then
  begin

    if qrDetalhe.FieldByName('sit_001').AsInteger=4 then
    begin
      if (not ckSituacao.Checked ) and (Application.MessageBox('Deseja realmente inativar o produto? Se inativar não será possível fazer venda nesse produto.','Atenção',MB_ICONQUESTION + MB_YESNO)=mryes) then
      begin
        qrDetalhe.FieldByName('sit_001').AsInteger:=3;
        ckSituacao.Caption := 'Produto Inativo'
      end;
    end
    else
    begin
      qrDetalhe.FieldByName('sit_001').AsInteger:=4;
      ckSituacao.Caption := 'Produto Ativo'
    end;
    ckSituacao.Checked := qrDetalhe.FieldByName('sit_001').AsInteger=4;
  end;
end;

procedure TfrmDetalheProduto.cbTamanhoPadraoChange(Sender: TObject);
begin
  //define o preço de venda se mudar o tamanho padrão - Bruno (10-04-2018)
  Perform(WM_NEXTDLGCTL, 0, 0);

  if (qrDetalhe.FieldByName('tamanho_padrao').AsString='P') and (qrDetalhe.FieldByName('valor_tam_p').asfloat > 0) then
    qrDetalhe.FieldByName('mat_008').asfloat :=  qrDetalhe.FieldByName('valor_tam_p').asfloat
  else if (qrDetalhe.FieldByName('tamanho_padrao').AsString='M') and (qrDetalhe.FieldByName('valor_tam_m').asfloat > 0) then
    qrDetalhe.FieldByName('mat_008').asfloat :=  qrDetalhe.FieldByName('valor_tam_m').asfloat
  else if (qrDetalhe.FieldByName('tamanho_padrao').AsString='G') and (qrDetalhe.FieldByName('valor_tam_g').asfloat > 0) then
    qrDetalhe.FieldByName('mat_008').asfloat :=  qrDetalhe.FieldByName('valor_tam_g').asfloat
  else if (qrDetalhe.FieldByName('tamanho_padrao').AsString='GG') and (qrDetalhe.FieldByName('valor_tam_gg').asfloat > 0) then
    qrDetalhe.FieldByName('mat_008').asfloat :=  qrDetalhe.FieldByName('valor_tam_gg').asfloat
  else if (qrDetalhe.FieldByName('tamanho_padrao').AsString='E') and (qrDetalhe.FieldByName('valor_tam_extra').asfloat > 0) then
    qrDetalhe.FieldByName('mat_008').asfloat :=  qrDetalhe.FieldByName('valor_tam_extra').asfloat;
end;

procedure TfrmDetalheProduto.ckAtivaHappyHourPropertiesChange(Sender: TObject);
begin
  if ckAtivaHappyHour.Checked then   // Ativa o Happy Hour     Rafael
  begin
    grHH_Ativos.Visible   := True;
    grHH_Tipo.Visible     := True;
    lblHH_Inicial.Visible := True;
    lblHH_Final.Visible   := True;
    lblHH_Valor.Visible   := True;
    edHH_Inicial.Visible  := True;
    edHH_Final.Visible    := True;
    edHH_Valor.Visible    := True;
  end
  else
  begin
    grHH_Ativos.Visible   := False;
    grHH_Tipo.Visible     := False;
    lblHH_Inicial.Visible := False;
    lblHH_Final.Visible   := False;
    lblHH_Valor.Visible   := False;
    edHH_Inicial.Visible  := False;
    edHH_Final.Visible    := False;
    edHH_Valor.Visible    := False;
  end;
end;

procedure TfrmDetalheProduto.ckDomingoPropertiesChange(Sender: TObject);
begin
  DiasVisiveis;
end;

procedure TfrmDetalheProduto.ckEscalaPropertiesChange(Sender: TObject);
begin
  if ckEscala.Checked then
  begin
    lblCNPJ.Visible:= True;
    edCNPJ.Visible:= True;
  end
  else
  begin
    lblCNPJ.Visible:= False;
    edCNPJ.Visible:= False;
  end;
end;

procedure TfrmDetalheProduto.ckQuartaPropertiesChange(Sender: TObject);
begin
  DiasVisiveis;
end;

procedure TfrmDetalheProduto.ckQuintaPropertiesChange(Sender: TObject);
begin
  DiasVisiveis;
end;

procedure TfrmDetalheProduto.ckSabadoPropertiesChange(Sender: TObject);
begin
  DiasVisiveis;
end;

procedure TfrmDetalheProduto.ckSegundaPropertiesChange(Sender: TObject);
begin
  DiasVisiveis;
end;

procedure TfrmDetalheProduto.ckSextaPropertiesChange(Sender: TObject);
begin
  DiasVisiveis;
end;

procedure TfrmDetalheProduto.DiasVisiveis;
begin
  grSegunda.Visible := False;
  grTerca.Visible   := False;
  grQuarta.Visible  := False;
  grQuinta.Visible  := False;
  grSexta.Visible   := False;
  grSabado.Visible  := False;
  grDomingo.Visible := False;

  grSegunda.Align   := alNone;
  grTerca.Align     := alNone;
  grQuarta.Align    := alNone;
  grQuinta.Align    := alNone;
  grSexta.Align     := alNone;
  grSabado.Align    := alNone;
  grDomingo.Align   := alNone;

  grSegunda.Align   := alLeft;
  grTerca.Align     := alLeft;
  grQuarta.Align    := alLeft;
  grQuinta.Align    := alLeft;
  grSexta.Align     := alLeft;
  grSabado.Align    := alLeft;
  grDomingo.Align   := alLeft;

  grSegunda.Visible := ckSegunda.Checked;
  grTerca.Visible   := ckTerca.Checked;
  grQuarta.Visible  := ckQuarta.Checked;
  grQuinta.Visible  := ckQuinta.Checked;
  grSexta.Visible   := ckSexta.Checked;
  grSabado.Visible  := ckSabado.Checked;
  grDomingo.Visible := ckDomingo.Checked;
end;

procedure TfrmDetalheProduto.cxDBCurrencyEdit12KeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['-']  then key:=#0
end;

procedure TfrmDetalheProduto.cxDBCurrencyEdit13KeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['-']  then key:=#0
end;

procedure TfrmDetalheProduto.cxDBCurrencyEdit14KeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['-']  then key:=#0
end;

procedure TfrmDetalheProduto.cxDBCurrencyEdit15KeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['-']  then key:=#0
end;

procedure TfrmDetalheProduto.cxDBCurrencyEdit16KeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['-']  then key:=#0
end;


procedure TfrmDetalheProduto.cxDBCurrencyEdit17KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key in ['-']  then key:=#0
end;

procedure TfrmDetalheProduto.cxDBCurrencyEdit18KeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['-']  then key:=#0
end;

procedure TfrmDetalheProduto.edCustoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['-']  then key:=#0
end;

procedure TfrmDetalheProduto.edLucroKeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['-']  then key:=#0
end;

procedure TfrmDetalheProduto.edVendaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key in ['-']  then key:=#0
end;

procedure TfrmDetalheProduto.cxDBCurrencyEdit5KeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['-']  then key:=#0
end;

procedure TfrmDetalheProduto.cxDBCurrencyEdit6KeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['-']  then key:=#0
end;

procedure TfrmDetalheProduto.cxDBCurrencyEdit7KeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['-']  then key:=#0
end;

procedure TfrmDetalheProduto.cxDBTextEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
     if key in ['-']  then key:=#0
end;

procedure TfrmDetalheProduto.cxDBTextEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['-']  then key:=#0
end;

procedure TfrmDetalheProduto.cxDBTextEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['-']  then key:=#0
end;

procedure TfrmDetalheProduto.cxDBTextEdit5KeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['-']  then key:=#0
end;

procedure TfrmDetalheProduto.cxDBTextEdit6KeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['-']  then key:=#0
end;

procedure TfrmDetalheProduto.DBCtrlGridImagensClick(Sender: TObject);
begin
  if (dsDetalhe.State in [dsEdit,dsInsert]) and (cdsImagens.RecordCount>0 ) then
   begin
     imgProduto2.Picture.LoadFromFile(cdsImagens.FieldByName('nomearquivo').AsString);
     qrDetalhe.FieldByName('arquivo_img').AsString := cdsImagens.FieldByName('nomearquivo').AsString;
   end;
end;

procedure TfrmDetalheProduto.DBCtrlGridImagensPaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
  imgProdutoLista.Picture.LoadFromFile(cdsImagens.FieldByName('nomearquivo').AsString);
end;

procedure TfrmDetalheProduto.ckSituacaoClick(Sender: TObject);
begin
 if qrDetalhe.FieldByName('sit_001').AsInteger=4 then
  begin
    qrDetalhe.FieldByName('sit_001').AsInteger:=3;
    ckSituacao.Caption := 'Produto Inativo'
  end
  else
  begin
    qrDetalhe.FieldByName('sit_001').AsInteger:=4;
    ckSituacao.Caption := 'Produto Ativo'
  end;
 end;

procedure TfrmDetalheProduto.ckTercaPropertiesChange(Sender: TObject);
begin
  DiasVisiveis;
end;

procedure TfrmDetalheProduto.ckVendaTamanhoClick(Sender: TObject);
begin
  grtamanhos.Visible := ckVendaTamanho.Checked;
  AjustaPromocao;
end;

procedure  TfrmDetalheProduto.ValidaBotoes;
begin
  if qrDetalhe.Active then
  begin
    //aberto, nao editando...
    if qrDetalhe.State = dsBrowse then
    begin
      btNovo.Enabled:=true;
      btEditar.Enabled:=true;
      btExcluir.Enabled:=true;
      btSalvar.Enabled:=false;
      btCancelar.Enabled:=false;
      btMovimentoEstoque.Enabled:=true;
      btIncluirCategoria.Enabled:=false;
      btIncluirUnidadeMedida.Enabled:=false;
      btInserirItemComposicao.Enabled:=false;
      btInserirOpc.Enabled:=false;
      edCodItemBusca.Enabled:=false;
      edCodOpcBusca.Enabled:=false;
      DBCtrlGridImagens.Enabled:=false;
      grDias.Enabled:= false;
      grTipoVenda.Enabled:= false;
      grTipoDesconto.Enabled:= false;
      grTamanhosProm.Enabled:= false;
      grSegunda.Enabled:= false;
      grTerca.Enabled:= false;
      grQuarta.Enabled:= false;
      grQuinta.Enabled:= false;
      grSexta.Enabled:= false;
      grSabado.Enabled:= false;
      grDomingo.Enabled:= false;
      edcodproduto.Enabled:=false;
      edquantidadecombo.Enabled:=false;
      btinserir.Enabled:=false;

      if qrDetalhe.RecordCount<=0 then
      begin
        btEditar.Enabled:=false;
        btExcluir.Enabled:=false;
        btMovimentoEstoque.Enabled:=false;

      end;
    end
    else if qrDetalhe.State in [dsInsert, dsEdit]  then
    begin
      btNovo.Enabled:=false;
      btEditar.Enabled:=false;
      btExcluir.Enabled:=false;
      btSalvar.Enabled:=true;
      btCancelar.Enabled:=true;
      btMovimentoEstoque.Enabled:=false;
      btIncluirCategoria.Enabled:=true;
      btIncluirUnidadeMedida.Enabled:=true;
      btInserirItemComposicao.Enabled:=qrDetalhe.State=dsEdit;
      btInserirOpc.Enabled:=qrDetalhe.State=dsEdit;
      edCodItemBusca.Enabled:=qrDetalhe.State=dsEdit;
      edCodOpcBusca.Enabled:=qrDetalhe.State=dsEdit;
      DBCtrlGridImagens.Enabled:=true;

      grDias.Enabled:= true;
      grTipoVenda.Enabled:= true;
      grTipoDesconto.Enabled:= true;
      grTamanhosProm.Enabled:= true;
      grSegunda.Enabled:= true;
      grTerca.Enabled:= true;
      grQuarta.Enabled:= true;
      grQuinta.Enabled:= true;
      grSexta.Enabled:= true;
      grSabado.Enabled:= true;
      grDomingo.Enabled:= true;
      edcodproduto.Enabled:=qrDetalhe.State=dsEdit;;
      edquantidadecombo.Enabled:=qrDetalhe.State=dsEdit;
      edvalorcustocombo.Enabled:=qrdetalhe.State=dsEdit;
      edvalorvendacombo.Enabled:=qrdetalhe.State=dsEdit;
      btinserir.Enabled:=qrDetalhe.State=dsEdit;

    end;
    grtamanhos.Visible := qrDetalhe.FieldByName('b_venda_tamanho').AsBoolean;
  end
  else
  begin
    btNovo.Enabled:=true;
    btEditar.Enabled:=false;
    btExcluir.Enabled:=false;
    btSalvar.Enabled:=false;
    btCancelar.Enabled:=false;
    btMovimentoEstoque.Enabled:=false;
    btIncluirCategoria.Enabled:=false;
    btIncluirUnidadeMedida.Enabled:=false;
    btInserirItemComposicao.Enabled:=false;
    btInserirOpc.Enabled:=false;
    edCodItemBusca.Enabled:=false;
    edCodOpcBusca.Enabled:=false;
    DBCtrlGridImagens.Enabled:=false;

    grDias.Enabled:= false;
    grTipoVenda.Enabled:= false;
    grTipoDesconto.Enabled:= false;
    grTamanhosProm.Enabled:= false;
    grSegunda.Enabled:= false;
    grTerca.Enabled:= false;
    grQuarta.Enabled:= false;
    grQuinta.Enabled:= false;
    grSexta.Enabled:= false;
    grSabado.Enabled:= false;
    grDomingo.Enabled:= false;
  end;
end;

procedure TfrmDetalheProduto.btExcluirClick(Sender: TObject);
var ret, id_produto : integer;
begin
  if Application.MessageBox('Confirma a exclusão do registro? Esta ação não pode ser desfeita', 'Atenção', MB_ICONQUESTION + MB_YESNO)=mryes then
  begin
    try
      id_produto:= qrDetalhe.FieldByName('mat_001').AsInteger;
      qrDetalhe.Delete;

      //Fecha a query promoção para limpar os dados - Rafael (10-04-2018)
      qrPromocao.Close;
      AjustaPromocao;
    except
      on E : Exception do
      begin
        ret :=
        Application.MessageBox(pchar('Erro ao excluir o registro. A exclusão não é possível caso o item já tenha sido usado no sistema.' +
        ' Gostaria de inativar o item?'), 'Atenção', MB_ICONERROR + MB_YESNO);
        if ret=mryes then
        begin
          ExecutaComandoSQL('update materiais set sit_001=3 where mat_001='+
                             IntToStr(id_produto) + ' and emp_001=' +IntToStr(RecProj.iEmp))
        end
        else if ret=mrClose  then
        begin
          Application.MessageBox(pchar(E.Message),'Detalhes do erro' );
        end;
      end;
    end;
  end;
  qrDetalhe.close;
end;

procedure TfrmDetalheProduto.btIncluirCategoriaClick(Sender: TObject);
begin
 FrmDetalheCategoria := TfrmDetalheCategoria.Create(self,'cat_001', 'sit_001');
  FrmDetalheCategoria.ShowModal;
  FreeAndNil(FrmDetalheCategoria);
  qrListaCategoria.Refresh;
end;

procedure TfrmDetalheProduto.btIncluirfornecedorClick(Sender: TObject);
var
id_fornecedor:integer;
begin
  if (qrDetalhe.State in [dsEdit, dsInsert]) then
  begin
      frmDetalheFornecedor := TfrmDetalheFornecedor.Create(self, 'id_fornecedor','id_situacao');
      frmDetalheFornecedor.ShowModal;
      id_fornecedor:=frmdetalhefornecedor.qrCadastro.FieldByName('id_fornecedor').AsInteger;
      frmDetalheFornecedor.Free;
    if id_fornecedor>0 then
    begin
      qrdetalhe.FieldByName('id_fornecedor').AsInteger:=id_fornecedor;
    end;
  end;

end;


procedure TfrmDetalheProduto.btIncluirUnidadeMedidaClick(Sender: TObject);
begin
  frmDetalheUnidade := TfrmDetalheUnidade.Create(self,'uni_001', 'sit_001');
  frmDetalheUnidade.ShowModal;
  FreeAndNil(frmDetalheUnidade);
  qrListaUnidadeMedida.Refresh;
end;

procedure TfrmDetalheProduto.btInserirClick(Sender: TObject);
var
str_sql:string;
qraux1:tuniquery;
// Inserção do combo no produto      Rafael 29/05/2018  V 2.40

begin
  if qrDetalhe.State in [dsEdit] then
  begin
    if edCodProduto.Text='' then
    begin
     Application.MessageBox('O CAMPO PRODUTO É OBRIGATÓRIO!','ALERTA',+MB_ICONQUESTION+mb_ok);
     edCodProduto.setfocus;
     abort;
    end;

    if edquantidadecombo.Value<=0 then
    begin
      Application.MessageBox('O CAMPO QUANTIDADE É OBRIGATÓRIO!','ALERTA',+MB_ICONQUESTION+mb_ok);
       edquantidade.setfocus;
       abort;
    end;

    if edvalorvendacombo.Value<=0 then
    begin
     Application.MessageBox('O CAMPO VALOR DE VENDA É OBRIGATÓRIO!','ALERTA',+MB_ICONQUESTION+mb_ok);
     edvalorvendacombo.setfocus;
     abort;
    end;

    str_sql:=' select * from materiais_combo where id_material=:id_material and id_produto_combo=:id_produto_combo and id_empresa=:id_empresa';
    qraux1:=tuniquery.Create(self);
    qraux1.Connection:=frmMenu.conexao;
    qrAux1.Close;
    qraux1.SQL.Clear;
    qraux1.SQL.Add(str_sql);
    qraux1.ParamByName('id_material').AsInteger:=qrDetalhe.FieldByName('mat_001').AsInteger;
    qraux1.ParamByName('id_produto_combo').AsInteger:=id_produto_combo;
    qraux1.ParamByName('id_empresa').AsInteger:=RecProj.iEmp;
    qraux1.Open;

    if qrcombo.Locate('id_produto_combo',qraux1.ParamByName('id_produto_combo').AsInteger,[])then
    begin
     Application.MessageBox('ESSE PRODUTO JÁ FOI ADICIONADO, POR FAVOR INSIRA OUTRO PRODUTO!','ALERTA',+MB_ICONQUESTION+MB_OK);
     edCodProduto.SetFocus;
     limpar;
     abort;
    end;

    //insere o produto combo no produto
      str_sql := ' insert into materiais_combo (id_material, id_empresa, id_produto_combo, quantidade, preco_venda, preco_custo ) ' +
                 ' values (:id_material, :id_empresa, :id_produto_combo, :quantidade, :preco_venda,:preco_custo)';

      ExecutaComandoSQL(str_sql, vararrayof([qrDetalhe.FieldByName('mat_001').AsInteger, RecProj.iEmp, id_produto_combo, edquantidadecombo.value, edvalorvendacombo.Value*edquantidadecombo.value, edvalorcustocombo.Value*edquantidadecombo.value]));



//      qrCombo.close;
//      qrCombo.ParamByName('emp').AsInteger:=RecProj.iemp;
//      qrCombo.ParamByName('id_material').AsInteger:= qrDetalhe.FieldByName('mat_001').AsInteger;
//      qrCombo.open;

      qrCombo.Refresh;

      // Atualiza o preço de custo e preço de venda
      calcula_custo_venda;

      limpar;
      edcodproduto.SetFocus;
  end;

end;
procedure TfrmDetalheProduto.limpar;
begin
  edcodproduto.clear;
  edquantidadecombo.Clear;
  edvalorcustocombo.Clear;
  edvalorvendacombo.Clear;
  lblDescricao.Caption:=EmptyStr;
end;

procedure TfrmDetalheProduto.calcula_custo_venda;
var
str_sql:string;
qraux1:tuniquery;
begin
  // Atualizando o preço de custo e preco de venda , No campo mat_008 e mat_012 , O preco de custo e preco de venda serão a soma dos itens do combo
  str_sql:='select coalesce(sum (preco_custo),0) as custo, coalesce(sum(preco_venda),0) as venda from materiais_combo where id_material=:id_material and id_empresa=:id_empresa';
  qraux1:=tuniquery.Create(self);
  qraux1.Connection:=frmMenu.conexao;
  qrAux1.Close;
  qraux1.SQL.Clear;
  qraux1.SQL.Add(str_sql);
  qraux1.ParamByName('id_material').AsInteger:=qrDetalhe.FieldByName('mat_001').AsInteger;
  qraux1.ParamByName('id_empresa').AsInteger:=RecProj.iEmp;
  qraux1.Open;
  qrdetalhe.FieldByName('mat_012').AsFloat:=qraux1.FieldByName('custo').AsFloat; // Preço de custo
  qrdetalhe.FieldByName('mat_008').AsFloat:=qraux1.FieldByName('venda').AsFloat; // Preço de venda
  qrdetalhe.FieldByName('mat_006').AsFloat:=0; // Custo Ingredientes
  qrdetalhe.FieldByName('valor_tabela2').AsFloat:=0; // Preço Prazo
  qrdetalhe.FieldByName('valor_atacado').AsFloat:=0; // Preço Atacado
  qraux1.Close;
end;

procedure TfrmDetalheProduto.btInserirItemComposicaoClick(Sender: TObject);
var str_sql : string;
id_produto, id_composicao: integer;
quant : double;
begin
  //valida os itens e insere
  if qrDetalhe.State in [dsEdit] then
  begin
    if qrBuscaItemComposicao.Active then
    begin
      if qrBuscaItemComposicao.RecordCount<1 then
      begin
        Application.MessageBox('Não foi informado nenhum item a adicionar!', 'Atenção', MB_ICONINFORMATION + MB_OK);
        edCodItemBusca.SetFocus;
        abort;
      end
      else
      begin
        //valida quantidade e valor unitário
        if qrBuscaItemComposicao.FieldByName('quantidade').IsNull or
           (qrBuscaItemComposicao.FieldByName('quantidade').AsFloat<=0) or
           (qrBuscaItemComposicao.FieldByName('quantidade').AsFloat>999999)  then
        begin
          Application.MessageBox('Quantidade inválida!', 'Atenção', MB_ICONINFORMATION + MB_OK);
          edQuantidade.SetFocus;
          abort;
        end;
      end;
      id_produto:= qrDetalhe.FieldByName('mat_001').AsInteger;
      id_composicao := qrBuscaItemComposicao.FieldByName('id_composicao').asinteger;
      quant:= qrBuscaItemComposicao.FieldByName('quantidade').AsFloat;
      //apaga a composição caso ja exista para o item atual
      str_sql := 'delete from materiais_composicao where id_material=%d and id_empresa=%d and id_composicao=%d';
      str_sql := Format(str_sql, [id_produto, RecProj.iEmp, id_composicao ]);
      ExecutaComandoSQL(str_sql);
      //insere o novo item
      str_sql := ' insert into materiais_composicao (id_material, id_empresa, quantidade, id_composicao) ' +
                 ' values (:mat, :emp, :qtd, :ite ) ';
      ExecutaComandoSQL(str_sql, vararrayof([id_produto,RecProj.iEmp, quant, id_composicao]));
      qrBuscaItemComposicao.Close;
      edCodItemBusca.Clear;
      edCodItemBusca.SetFocus;
      qrProdutoComposicao.Refresh;
    end;
  end
  else if qrDetalhe.State in [dsInsert] then
    application.MessageBox('Antes de fazer a composição do produto, é necessário salvar o registro!', 'Atenção', MB_ICONINFORMATION);
end;



procedure TfrmDetalheProduto.btInserirOpcClick(Sender: TObject);
var str_sql : string;
id_produto, id_opcional: integer;
begin
  if qrDetalhe.State in [dsEdit] then
  begin
    if qrBuscaItemOpc.Active then
    begin
      if qrBuscaItemOpc.RecordCount<1 then
      begin
        Application.MessageBox('Não foi informado nenhum opcional a adicionar!', 'Atenção', MB_ICONINFORMATION + MB_OK);
        edCodOpcBusca.SetFocus;
        abort;
      end;
      id_produto  := qrDetalhe.FieldByName('mat_001').AsInteger;
      id_opcional := qrBuscaItemOpc.FieldByName('id_opcional').asinteger;

      //apaga o opcionasl caso ja exista para o item atual
      str_sql := 'delete from materiais_opcional where id_material=%d and id_empresa=%d and id_opcional=%d';
      str_sql := Format(str_sql, [id_produto, RecProj.iEmp, id_opcional]);
      ExecutaComandoSQL(str_sql);

      //insere o novo opcional
      str_sql := ' insert into materiais_opcional (id_material, id_empresa, id_opcional) ' +
                 ' values (:mat, :emp, :opc) ';
      ExecutaComandoSQL(str_sql, vararrayof([id_produto,RecProj.iEmp, id_opcional]));
      qrBuscaItemOpc.Close;
      edCodOpcBusca.Clear;
      edCodOpcBusca.SetFocus;
      qrProdutoOpc.Refresh;
    end;
  end
  else if qrDetalhe.State in [dsInsert] then
    application.MessageBox('Antes de adicionar os opcionais do produto, é necessário salvar o registro!', 'Atenção', MB_ICONINFORMATION);
end;

procedure TfrmDetalheProduto.btMovimentoEstoqueClick(Sender: TObject);
begin
  frmMovimentoEstoque :=  TfrmMovimentoEstoque.Create(self, qrDetalhe.FieldByName('mat_001').AsInteger);
  frmMovimentoEstoque.ShowModal;
  frmMovimentoEstoque.Free;
  qrDetalhe.Refresh;
end;

procedure TfrmDetalheProduto.btNovoClick(Sender: TObject);
begin
  if not qrDetalhe.Active then qrDetalhe.Open;

  qrDetalhe.Append;
  pgControl.ActivePageIndex:=0;
  edCodRef.SetFocus;

  //Verifica se tem dados na tabela promoção - Bruno (10-04-2018)
  //Como é novo apenas abre a tabela
  BuscarPromocao;

  //Adiciona nova promoção - Bruno (10-04-2018)
  qrPromocao.Append;
end;

procedure TfrmDetalheProduto.btSalvarClick(Sender: TObject);
var str_sql: string;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if qrPromocao.State = dsBrowse then
  begin
    if qrPromocao.RecordCount > 0 then
      qrPromocao.Edit
    else
      qrPromocao.Append;
  end;

  //Se estiver marcado o Happy Hour
  if qrDetalhehh_ativar.AsBoolean then
  begin
    //Valida Happy Hour e promoção simultaneamente - Bruno (11-04-2018)
    if (qrPromocaodia_seg.AsBoolean) or (qrPromocaodia_ter.AsBoolean) or
       (qrPromocaodia_qua.AsBoolean) or (qrPromocaodia_qui.AsBoolean) or
       (qrPromocaodia_sex.AsBoolean) or (qrPromocaodia_sab.AsBoolean) or
       (qrPromocaodia_dom.AsBoolean) or (qrPromocaotipo_mesa.AsBoolean) or
       (qrPromocaotipo_comanda.AsBoolean) or (qrPromocaotipo_delivery.AsBoolean) or
       (qrPromocaotipo_balcao.AsBoolean) or (qrPromocaotipo_pdv.AsBoolean)then
    begin
      pgControl.ActivePage:= pgDadosCadastro;
      Application.MessageBox('Não é permitido ativar o Happy Hour e promoção simultaneamente!', 'Atenção', MB_ICONINFORMATION + MB_OK);
      abort;
    end;

    //Happy Hour - Verifica se tem algum dia marcado e não tem tipo de venda - Bruno (11/04/2018)
    if not (qrDetalhehh_dia_seg.AsBoolean) and not (qrDetalhehh_dia_ter.AsBoolean) and
       not (qrDetalhehh_dia_qua.AsBoolean) and not (qrDetalhehh_dia_qui.AsBoolean) and
       not (qrDetalhehh_dia_sex.AsBoolean) and not (qrDetalhehh_dia_sab.AsBoolean) and
       not (qrDetalhehh_dia_dom.AsBoolean) then
    begin
      pgControl.ActivePage:= pgDadosCadastro;
      Application.MessageBox('Informe o(s) dia(s) ativo(s) no Happy Hour!', 'Atenção', MB_ICONINFORMATION + MB_OK);
      abort;
    end;

    //Happy Hour - Verifica se tem algum tipo de venda marcado e não tem dias ativos - Bruno (11/04/2018)
    if not (qrDetalhehh_tipo_mesa.AsBoolean) and not (qrDetalhehh_tipo_comanda.AsBoolean) and
       not (qrDetalhehh_tipo_delivery.AsBoolean) and not (qrDetalhehh_tipo_balcao.AsBoolean) and
       not (qrDetalhehh_tipo_pdv.AsBoolean) then
    begin
      pgControl.ActivePage:= pgDadosCadastro;
      Application.MessageBox('Informe o tipo de venda no Happy Hour!', 'Atenção', MB_ICONINFORMATION + MB_OK);
      abort;
    end;

    //Valida o horário do Happy Hour - Bruno (11-04-2018)
    if (qrDetalhehh_final.AsDateTime) < (qrDetalhehh_inicial.AsDateTime) then
    begin
      pgControl.ActivePage:= pgDadosCadastro;
      Application.MessageBox('Happy Hour - A hora final não pode ser menor que a hora inicial!', 'Atenção', MB_ICONINFORMATION + MB_OK);
      edHH_Final.SetFocus;
      abort;
    end;

    //Valida o valor do Happy Hour - Bruno (11-04-2018)
    if (qrDetalhehh_valor.AsFloat <= 0) or (qrDetalhehh_valor.AsFloat > qrDetalhemat_008.AsFloat) then
    begin
      pgControl.ActivePage:= pgDadosCadastro;
      Application.MessageBox('Verifique o valor do Happy Hour!', 'Atenção', MB_ICONINFORMATION + MB_OK);
      edHH_Valor.SetFocus;
      abort;
    end;
  end
  else //Limpa os dados
  begin
    qrDetalhehh_dia_seg.AsBoolean:= False;
    qrDetalhehh_dia_ter.AsBoolean:= False;
    qrDetalhehh_dia_qua.AsBoolean:= False;
    qrDetalhehh_dia_qui.AsBoolean:= False;
    qrDetalhehh_dia_sex.AsBoolean:= False;
    qrDetalhehh_dia_sab.AsBoolean:= False;
    qrDetalhehh_dia_dom.AsBoolean:= False;

    qrDetalhehh_tipo_mesa.AsBoolean:= False;
    qrDetalhehh_tipo_comanda.AsBoolean:= False;
    qrDetalhehh_tipo_delivery.AsBoolean:= False;
    qrDetalhehh_tipo_balcao.AsBoolean:= False;
    qrDetalhehh_tipo_pdv.AsBoolean:= False;

    qrDetalhehh_inicial.Value:= StrToTime('00:00');
    qrDetalhehh_final.Value:= StrToTime('00:00');
    qrDetalhehh_valor.AsFloat:= 0;
  end;

  //Se não for venda por tamanho zera os valores por tamanho (Dados Cadastrais) - Bruno (10-04-2018)
  if not grTamanhos.Visible then
  begin
    qrDetalhevalor_tam_p.Value:= 0;
    qrDetalhevalor_tam_m.Value:= 0;
    qrDetalhevalor_tam_g.Value:= 0;
    qrDetalhevalor_tam_gg.Value:= 0;
    qrDetalhevalor_tam_extra.Value:= 0;
  end;

  //Se não for venda por tamanho zera os descontos por tamanho (Promoção) - Bruno (10-04-2018)
  if not grTamanhos.Visible then
  begin
    qrPromocaodesconto_seg_tam_p.Value:= 0;
    qrPromocaodesconto_seg_tam_m.Value:= 0;
    qrPromocaodesconto_seg_tam_g.Value:= 0;
    qrPromocaodesconto_seg_tam_gg.Value:= 0;
    qrPromocaodesconto_seg_tam_extra.Value:= 0;

    qrPromocaodesconto_ter_tam_p.Value:= 0;
    qrPromocaodesconto_ter_tam_m.Value:= 0;
    qrPromocaodesconto_ter_tam_g.Value:= 0;
    qrPromocaodesconto_ter_tam_gg.Value:= 0;
    qrPromocaodesconto_ter_tam_extra.Value:= 0;

    qrPromocaodesconto_qua_tam_p.Value:= 0;
    qrPromocaodesconto_qua_tam_m.Value:= 0;
    qrPromocaodesconto_qua_tam_g.Value:= 0;
    qrPromocaodesconto_qua_tam_gg.Value:= 0;
    qrPromocaodesconto_qua_tam_extra.Value:= 0;

    qrPromocaodesconto_qui_tam_p.Value:= 0;
    qrPromocaodesconto_qui_tam_m.Value:= 0;
    qrPromocaodesconto_qui_tam_g.Value:= 0;
    qrPromocaodesconto_qui_tam_gg.Value:= 0;
    qrPromocaodesconto_qui_tam_extra.Value:= 0;

    qrPromocaodesconto_sex_tam_p.Value:= 0;
    qrPromocaodesconto_sex_tam_m.Value:= 0;
    qrPromocaodesconto_sex_tam_g.Value:= 0;
    qrPromocaodesconto_sex_tam_gg.Value:= 0;
    qrPromocaodesconto_sex_tam_extra.Value:= 0;

    qrPromocaodesconto_sab_tam_p.Value:= 0;
    qrPromocaodesconto_sab_tam_m.Value:= 0;
    qrPromocaodesconto_sab_tam_g.Value:= 0;
    qrPromocaodesconto_sab_tam_gg.Value:= 0;
    qrPromocaodesconto_sab_tam_extra.Value:= 0;

    qrPromocaodesconto_dom_tam_p.Value:= 0;
    qrPromocaodesconto_dom_tam_m.Value:= 0;
    qrPromocaodesconto_dom_tam_g.Value:= 0;
    qrPromocaodesconto_dom_tam_gg.Value:= 0;
    qrPromocaodesconto_dom_tam_extra.Value:= 0;
  end
  else //Senão zera os valores do campo TAMANHO ÚNICO (Promoção)
  begin
    qrPromocaodesconto_seg_padrao.Value:= 0;
    qrPromocaodesconto_ter_padrao.Value:= 0;
    qrPromocaodesconto_qua_padrao.Value:= 0;
    qrPromocaodesconto_qui_padrao.Value:= 0;
    qrPromocaodesconto_sex_padrao.Value:= 0;
    qrPromocaodesconto_sab_padrao.Value:= 0;
    qrPromocaodesconto_dom_padrao.Value:= 0;
  end;

  //Se não estiver marcado o dia zera o desconto padrão (Promoção) - Bruno (10-04-2018)
  if not ckSegunda.Checked then qrPromocaodesconto_seg_padrao.Value:= 0;
  if not ckTerca.Checked then qrPromocaodesconto_ter_padrao.Value:= 0;
  if not ckQuarta.Checked then qrPromocaodesconto_qua_padrao.Value:= 0;
  if not ckQuinta.Checked then qrPromocaodesconto_qui_padrao.Value:= 0;
  if not ckSexta.Checked then qrPromocaodesconto_sex_padrao.Value:= 0;
  if not ckSabado.Checked then qrPromocaodesconto_sab_padrao.Value:= 0;
  if not ckDomingo.Checked then qrPromocaodesconto_dom_padrao.Value:= 0;

  //Verifica os dados da promoção estão preenchidos corretamente - Bruno (11-04-2018)
  VerificaDadosPromocao;

  if not qrDetalhenao_relevante.AsBoolean then
    qrDetalhe.FieldByName('cnpj_fabricante').AsString:= '';

  if qrDetalhenao_relevante.AsBoolean then
  begin
    if qrDetalhecnpj_fabricante.AsString = EmptyStr then
    begin
      Application.MessageBox('Informe o CNPJ Fabricante!', 'Atenção', mb_iconinformation);
      edCNPJ.SetFocus;
      Abort;
    end;
  end;

  qrDetalhe.Post;

  //Apaga os itens da combo se for desmarcada a opção
  if not qrDetalheutiliza_combo.AsBoolean then
  begin
    if qrCombo.RecordCount > 0 then
    begin
      str_sql := 'delete from materiais_combo where id_material=%d and id_empresa=%d';
      str_sql := Format(str_sql, [qrDetalhemat_001.AsInteger, RecProj.iEmp]);
      ExecutaComandoSQL(str_sql);
    end;
  end;

  //Grava a promoção - Bruno (10-04-2018)
  qrPromocaoid_material.AsInteger := qrDetalhemat_001.AsInteger;
  qrPromocaoid_empresa.AsInteger  := qrDetalheemp_001.AsInteger;
  qrPromocao.Post;

  qrDetalhe.ParamByName('id').AsInteger:= qrDetalhe.FieldByName('mat_001').AsInteger;
  qrProdutoComposicao.ParamByName('id_material').AsInteger:= qrDetalhe.FieldByName('mat_001').AsInteger;
  qrProdutoOpc.ParamByName('id_material').AsInteger:= qrDetalhe.FieldByName('mat_001').AsInteger;
  qrCombo.ParamByName('id_material').AsInteger:= qrDetalhe.FieldByName('mat_001').AsInteger;

  lblUltimaalteracao.Caption:='Última alteração desse produto foi em: '+FormatDateTime('dd/mm/yyyy',Date);

  qrDetalhe.Refresh;

  BuscarPromocao;
end;

procedure TfrmDetalheProduto.CalculaMargem(tipo : string = 'P'); //P = porcentagem - V = valor
var
   dValor: Double;
begin
  if not (qrDetalhe.state  in [dsEdit, dsInsert] )then exit;

   if not bDescCalculado  then
   begin
     bDescCalculado := true;
     dValor := 0;
     //Calcula o Valor de venda a partir do Custo e Margem.

     if uppercase(tipo) = 'P' then // P significa Porcentagem
     begin
       if  (qrDetalhemat_012.AsFloat > 0) and (qrDetalhemat_018.AsFloat > 0) then
       begin
          dValor := ((qrDetalhemat_012.AsFloat + qrDetalhemat_006.AsFloat) * qrDetalhemat_018.AsFloat) / 100;
          qrDetalhemat_008.AsFloat := qrDetalhemat_012.AsFloat + qrDetalhemat_006.AsFloat + dValor;
       end
       else
        qrDetalhemat_008.AsFloat :=qrDetalhemat_012.AsFloat;

        // Informe a margem de valor a venda á prazo ,para ser aplicado no valor á vista
       // Exemplo: Se o preço a vista tiver R$10,00 e o valor informado for 10%,no prazo será R$11,00
      //  25/09/2017   versao 2.24  Rafael

       bDescCalculado := false;
       exit;


     end
     //Calcula a % da margem de venda a partir do valor de venda.
     else  if uppercase(tipo) = 'V' then
     begin
       // if (qrDetalhemat_012.AsFloat > 0) and (qrDetalhemat_008.AsFloat > 0) then
       if ((qrDetalhemat_012.AsFloat + qrDetalhemat_006.AsFloat) > 0) then
       begin
          dValor := ((qrDetalhemat_008.AsFloat / (qrDetalhemat_012.AsFloat + qrDetalhemat_006.AsFloat)) - 1)* 100;
          qrDetalhemat_018.AsFloat :=  dValor;
       end;

        // Informe a margem de valor a venda á prazo ,para ser aplicado no valor á vista
       // Exemplo: Se o preço a vista tiver R$10,00 e o valor informado for 10%,no prazo será R$11,00
      //  25/09/2017   versao 2.24  Rafael

       bDescCalculado := false;
       exit;
     end
     //Calcula a partir da composição dos itens
     else
     begin

       qrDetalhemat_006.AsFloat := ObterCustoComposicao(qrDetalhe.FieldByName('mat_001').AsInteger);


       // Informe a margem de valor a venda á prazo ,para ser aplicado no valor á vista
      // Exemplo: Se o preço a vista tiver R$10,00 e o valor informado for 10%,no prazo será R$11,00
     //  25/09/2017   versao 2.24  Rafael

       bDescCalculado := false;
       CalculaMargem;
       exit;
     end;
   end;
   bDescCalculado := false;
end;

procedure TfrmDetalheProduto.dsDetalheDataChange(Sender: TObject;
  Field: TField);
begin
  AjustaPromocao;
end;

procedure TfrmDetalheProduto.dsDetalheStateChange(Sender: TObject);
begin
  ValidaBotoes;

  // situação do produto
  ckSituacao.Enabled:= qrdetalhe.State in [dsInsert, dsEdit] ;

  if qrdetalhe.FieldByName('sit_001').AsInteger=4 then
  begin
    ckSituacao.Caption := 'Produto Ativo';
    ckSituacao.Checked:=true ;
  end

  else
  if qrdetalhe.FieldByName('sit_001').AsInteger=3 then
  begin
    ckSituacao.Caption:='Produto Inativo';
    ckSituacao.Checked:=false;
  end;

  qrAux1.Close;
  qrAux1.SQL.Text:= 'select cest_anexoxxvii from cest where cest_codigo = :cest';
  qrAux1.ParamByName('cest').AsString:= qrDetalhecest.AsString;
  qrAux1.Open;

  if qrAux1.FieldByName('cest_anexoxxvii').AsBoolean then
    ckEscala.Visible:= True
  else
  begin
    ckEscala.Visible:= False;
    lblCNPJ.Visible:= False;
    edCNPJ.Visible:= False;
  end;
end;

procedure TfrmDetalheProduto.edCNPJKeyPress(Sender: TObject; var Key: Char);
begin
  if not( key in['0'..'9', #08] ) then
    key:=#0;
end;

procedure TfrmDetalheProduto.edCodItemBuscaExit(Sender: TObject);
var iVerifica: integer;
begin
  if edCodItemBusca.Text<>'' then
  begin
    try
      iVerifica:= StrToInt(edCodItemBusca.Text);
    except
      Application.MessageBox('Código inválido!', 'Atenção', MB_ICONEXCLAMATION);
      edCodItemBusca.SetFocus;
      abort;
    end;

    qrBuscaItemComposicao.Close;
    qrBuscaItemComposicao.ParamByName('id_composicao').AsString:=edCodItemBusca.Text;
    qrBuscaItemComposicao.ParamByName('id_empresa').asinteger:=RecProj.iEMP;
    qrBuscaItemComposicao.open;

    if qrBuscaItemComposicao.RecordCount<1 then
    begin
      Application.MessageBox('Item não encontrado!', 'Atenção', MB_ICONINFORMATION + MB_OK);
      edCodItemBusca.Clear;
      qrBuscaItemComposicao.Close;
      edCodItemBusca.SetFocus;
      abort;
    end;
  end
  else
    qrBuscaItemComposicao.Close;
end;

procedure TfrmDetalheProduto.edCodItemBuscaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in ['0','1','2','3','4','5','6','7','8','9', #8]) then  key :=#0
end;

procedure TfrmDetalheProduto.edCodOpcBuscaExit(Sender: TObject);
var iVerifica: integer;
begin
  if edCodOpcBusca.Text<>'' then
  begin
    try
      iVerifica:= StrToInt(edCodOpcBusca.Text);
    except
      Application.MessageBox('Código inválido!', 'Atenção', MB_ICONEXCLAMATION);
      edCodOpcBusca.SetFocus;
      abort;
    end;

    qrBuscaItemOpc.Close;
    qrBuscaItemOpc.ParamByName('id_opcional').AsString:=edCodOpcBusca.Text;
    qrBuscaItemOpc.ParamByName('id_empresa').asinteger:=RecProj.iEMP;
    qrBuscaItemOpc.open;

    if qrBuscaItemOpc.RecordCount<1 then
    begin
      Application.MessageBox('Opcional não encontrado!', 'Atenção', MB_ICONINFORMATION + MB_OK);
      edCodOpcBusca.Clear;
      qrBuscaItemOpc.Close;
      edCodOpcBusca.SetFocus;
      abort;
    end;
  end
  else
    qrBuscaItemOpc.Close;
end;

procedure TfrmDetalheProduto.edCodOpcBuscaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0','1','2','3','4','5','6','7','8','9', #8]) then  key :=#0
end;

procedure TfrmDetalheProduto.edCodProdutoExit(Sender: TObject);
var
str_sql:string;
qraux1:tuniquery;

begin
  pgControl.ActivePageIndex:=7;
  if trim (edcodproduto.text)='' then
  begin

  end
    else
    begin
      str_sql:='select mat_001 as id_material,emp_001 as empresa ,mat_003 as descricao,mat_004 as codigo, mat_012 as custo,mat_008 as venda from materiais '
       +'  where emp_001=:emp and mat_004=:mat_004 and sit_001=4 and utiliza_combo=false ';
      qraux1 := TUniQuery.Create(self);
      qraux1.Connection := frmmenu.conexao;
      qraux1.SQL.Add(str_sql);
      qraux1.ParamByName('emp').AsInteger := RecProj.iEmp;
      qraux1.ParamByName('mat_004').AsString :=edCodProduto.Text;
      qraux1.Open;
      if qraux1.RecordCount>0 then
      begin


        edcodproduto.Text:=qraux1.FieldByName('codigo').AsString;// Código do Produto
        lblDescricao.Caption:=qraux1.FieldByName('descricao').AsString; // Descrição do Produto
        id_produto_combo:=qraux1.FieldByName('id_material').AsInteger;   // Id dos produtos que será usado no combo
        edQuantidadecombo.Value:=1;
        edvalorcustocombo.Value:=qraux1.FieldByName('custo').AsFloat ;  // Custo do produto
        edvalorvendacombo.Value:=qraux1.FieldByName('venda').AsFloat;   // Venda do produto
      end
      else
      begin
        Application.MessageBox('PRODUTO NÃO ENCONTRADO, POR FAVOR INFORME UM PRODUTO QUE ESTEJA CADASTRADO!','ALERTA',+MB_ICONQUESTION+MB_OK);
        edcodproduto.clear;
        edCodProduto.SetFocus;
        abort;
      end;


  end;
end;

procedure TfrmDetalheProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmDetalheProduto.FormShow(Sender: TObject);
begin
  pgControl.ActivePageIndex:=0;
  if bNovoReg then btNovo.Click;

  //Verifica se tem dados na tabela promoção - Bruno (10-04-2018)
  BuscarPromocao;

  //Utilizada para controlar a atualização do preço de venda - Bruno (10-04-2018)
  //senão entra em loop
  bAtualizarPreco:= True;

  //Verifica se irá trabalhar com todos os preços vista/prazo/atacado - Bruno (27/04/2018)
  //ou apenas vista
  if LerBooleanConfig('ckUtilizar_selecao_precos',frmMenu.cdsCFG.FileName) then
  begin
    lblPrazo.Visible   := True;
    edPRazo.Visible    := True;
    lblAtacado.Visible := True;
    edAtacado.Visible  := True;
  end
  else
  begin
    lblPrazo.Visible   := False;
    edPRazo.Visible    := False;
    lblAtacado.Visible := False;
    edAtacado.Visible  := False;
  end;
end;

procedure TfrmDetalheProduto.pgControlChange(Sender: TObject);
begin
  //Quando entra na aba promoção, verifica se é um novo produto - Bruno (10-04-2018)
  //e se a promoção não estiver em modo Insert, adiciona novo registro
  if pgControl.ActivePage = tsPromocao then
  begin
    if (qrDetalhe.State in [dsInsert]) and (qrPromocao.State in [dsBrowse]) then
      qrPromocao.Append;

    if qrPromocao.State in [dsInsert] then
    begin
      qrPromocaodia_seg.Value:= False;
      qrPromocaodia_ter.Value:= False;
      qrPromocaodia_qua.Value:= False;
      qrPromocaodia_qui.Value:= False;
      qrPromocaodia_sex.Value:= False;
      qrPromocaodia_sab.Value:= False;
      qrPromocaodia_dom.Value:= False;
      qrPromocaotipo_mesa.Value:= False;
      qrPromocaotipo_comanda.Value:= False;
      qrPromocaotipo_delivery.Value:= False;
      qrPromocaotipo_balcao.Value:= False;
      qrPromocaotipo_pdv.Value:= False;
      qrPromocaotipo_desconto.Value:= 0;
    end;
  end;
end;

procedure TfrmDetalheProduto.btAbrirPastaImagensClick(Sender: TObject);
begin
  inherited;
  ShellExecute(Application.Handle,
    PChar('explore'),
    PChar(pasta_imagens),
    nil,
    nil,
    SW_SHOWNORMAL);

end;

procedure TfrmDetalheProduto.btCancelarClick(Sender: TObject);
begin
  qrDetalhe.Cancel;
  qrDetalhe.Refresh;

  //Verifica se tem dados na tabela promoção - Bruno (10-04-2018)
  BuscarPromocao;
end;

procedure TfrmDetalheProduto.btEditarClick(Sender: TObject);
begin
  qrDetalhe.Edit;

  //Verifica se tem dados na promoção e abre para edição - Bruno (10-04-2018)
  if qrPromocao.RecordCount > 0 then
    qrPromocao.Edit
  else //Senão adiciona - Bruno (10-04-2018)
  begin
    qrPromocao.Close;
    qrPromocao.ParamByName('id_material').AsInteger := -1;
    qrPromocao.ParamByName('id_empresa').AsInteger  := -1;
    qrPromocao.Open;
    qrPromocao.Append;
  end;
end;

procedure TfrmDetalheProduto.qrDescTamanhoMaterialAfterPost(DataSet: TDataSet);
begin
  AtualizaComboTamamhoPadrao;
end;

procedure TfrmDetalheProduto.qrDetalheAfterEdit(DataSet: TDataSet);
begin
  qrDescTamanhoMaterial.Edit;
end;

procedure TfrmDetalheProduto.qrDetalheAfterOpen(DataSet: TDataSet);
begin
  qrGraficoProdutosVendidos.Close;
  qrGraficoProdutosVendidos.ParamByName('emp').AsInteger:=RecProj.iEmp;
  qrGraficoProdutosVendidos.ParamByName('id_produto').AsInteger:=qrDetalhe.FieldByName('mat_001').AsInteger;
  qrGraficoProdutosVendidos.Open;

  qrProdutoComposicao.Close;
  qrProdutoComposicao.ParamByName('id_material').AsInteger:= qrDetalhe.FieldByName('mat_001').AsInteger;
  qrProdutoComposicao.open;

  qrProdutoOpc.Close;
  qrProdutoOpc.ParamByName('id_material').AsInteger:= qrDetalhe.FieldByName('mat_001').AsInteger;
  qrProdutoOpc.open;

  qrCombo.close;
  qrCombo.ParamByName('emp').AsInteger:=RecProj.iemp;
  qrCombo.ParamByName('id_material').AsInteger:= qrDetalhe.FieldByName('mat_001').AsInteger;
  qrCombo.open;

  if qrDetalhe.recordcount>0 then
  begin
    if FileExists(qrDetalhe.FieldByName('arquivo_img').AsString) then
    begin
      imgProduto2.Picture.LoadFromFile(qrDetalhe.FieldByName('arquivo_img').AsString);
    end;
  end;

end;

procedure TfrmDetalheProduto.qrDetalheAfterPost(DataSet: TDataSet);
begin
  if   qrDescTamanhoMaterial.state in [dsEdit, dsInsert] then
  begin
    qrDescTamanhoMaterial.post;
  end;
end;

procedure TfrmDetalheProduto.qrDetalheBeforePost(DataSet: TDataSet);
var where : string;
begin
   qrDetalhemat_004Change(qrDetalhemat_004);

   if Trim(qrDetalhemat_004.AsString) = '' then
   begin
      Application.MessageBox('Favor informar um código de referência.', 'Atenção',  64);
      TestarFocoField(qrDetalhemat_004);
      Abort;
   end;

   if Trim(qrDetalhemat_003.AsString) = '' then
   begin
      Application.MessageBox('Favor informar a Descrição.', 'Atenção',  64);
      TestarFocoField(qrDetalhemat_003);
      Abort;
   end;
   //
   if qrDetalhe.State = dsEdit then
      Where := ' AND MAT_001 <> ' + qrDetalhemat_001.AsString;
   if Exists_Record(frmMenu.conexao, 'MATERIAIS', ['EMP_001', 'MAT_002'], [recProj.iEmp, qrDetalhemat_002.AsString], Where)
   then
   begin
      Application.MessageBox('Esse Material já foi cadastrado.', 'Atenção', 64);
      TestarFocoField(qrDetalhemat_001);
      Abort;
   end;
   //
   if Trim(qrDetalhemat_008.AsString) = '' then
   begin
      Application.MessageBox('Favor informar um Valor Unitário.', 'Atenção', 64);
      TestarFocoField(qrDetalhemat_008);
      Abort;

   end;

   if qrDetalhe.FieldByName('cat_001').IsNull then
   begin
      Application.MessageBox('Favor informar a categoria.', 'Atenção', 64);
      TestarFocoField(qrDetalhe.FieldByName('cat_001'));
      Abort;
   end;

   if qrDetalheuni_001.IsNull then
   begin
      Application.MessageBox('Favor informar uma Unidade.', 'Atenção',  64);
      TestarFocoField(qrDetalheuni_001);
      Abort;
   end;

   if qrDetalhe.FieldByName('id_setor').IsNull then
   begin
      Application.MessageBox('Favor informar o setor.', 'Atenção',  MB_ICONINFORMATION);
      if cbSetor.CanFocus then cbSetor.SetFocus;
      Abort;
   end;

   if qrDetalhe.State = dsEdit then
   begin
      qrDetalhedat_001_2.AsDateTime := DataServer(frmMenu.conexao);
      qrDetalheusu_001_2.AsInteger := recProj.iUsuario;

   end;
end;

procedure TfrmDetalheProduto.qrDetalheb_venda_tamanhoChange(Sender: TField);
begin
  grtamanhos.Visible := qrDetalhe.FieldByName('b_venda_tamanho').AsBoolean;
  AjustaPromocao;
end;

procedure TfrmDetalheProduto.AjustaPromocao;
begin
  //Ajusta o tamanho dos controles - Bruno (10-04-18)
  //Configura o TabStop
  if grTamanhos.Visible then
  begin
    grAgrupamento.Height := 190;

    eddesconto_seg_p.TabStop     := True;
    eddesconto_seg_m.TabStop     := True;
    eddesconto_seg_g.TabStop     := True;
    eddesconto_seg_gg.TabStop    := True;
    eddesconto_seg_extra.TabStop := True;

    eddesconto_ter_p.TabStop     := True;
    eddesconto_ter_m.TabStop     := True;
    eddesconto_ter_g.TabStop     := True;
    eddesconto_ter_gg.TabStop    := True;
    eddesconto_ter_extra.TabStop := True;

    eddesconto_qua_p.TabStop     := True;
    eddesconto_qua_m.TabStop     := True;
    eddesconto_qua_g.TabStop     := True;
    eddesconto_qua_gg.TabStop    := True;
    eddesconto_qua_extra.TabStop := True;

    eddesconto_qui_p.TabStop     := True;
    eddesconto_qui_m.TabStop     := True;
    eddesconto_qui_g.TabStop     := True;
    eddesconto_qui_gg.TabStop    := True;
    eddesconto_qui_extra.TabStop := True;

    eddesconto_sex_p.TabStop     := True;
    eddesconto_sex_m.TabStop     := True;
    eddesconto_sex_g.TabStop     := True;
    eddesconto_sex_gg.TabStop    := True;
    eddesconto_sex_extra.TabStop := True;

    eddesconto_sab_p.TabStop     := True;
    eddesconto_sab_m.TabStop     := True;
    eddesconto_sab_g.TabStop     := True;
    eddesconto_sab_gg.TabStop    := True;
    eddesconto_sab_extra.TabStop := True;

    eddesconto_dom_p.TabStop     := True;
    eddesconto_dom_m.TabStop     := True;
    eddesconto_dom_g.TabStop     := True;
    eddesconto_dom_gg.TabStop    := True;
    eddesconto_dom_extra.TabStop := True;
  end
  else
  begin
    grAgrupamento.Height := 50;

    eddesconto_seg_p.TabStop     := False;
    eddesconto_seg_m.TabStop     := False;
    eddesconto_seg_g.TabStop     := False;
    eddesconto_seg_gg.TabStop    := False;
    eddesconto_seg_extra.TabStop := False;

    eddesconto_ter_p.TabStop     := False;
    eddesconto_ter_m.TabStop     := False;
    eddesconto_ter_g.TabStop     := False;
    eddesconto_ter_gg.TabStop    := False;
    eddesconto_ter_extra.TabStop := False;

    eddesconto_qua_p.TabStop     := False;
    eddesconto_qua_m.TabStop     := False;
    eddesconto_qua_g.TabStop     := False;
    eddesconto_qua_gg.TabStop    := False;
    eddesconto_qua_extra.TabStop := False;

    eddesconto_qui_p.TabStop     := False;
    eddesconto_qui_m.TabStop     := False;
    eddesconto_qui_g.TabStop     := False;
    eddesconto_qui_gg.TabStop    := False;
    eddesconto_qui_extra.TabStop := False;

    eddesconto_sex_p.TabStop     := False;
    eddesconto_sex_m.TabStop     := False;
    eddesconto_sex_g.TabStop     := False;
    eddesconto_sex_gg.TabStop    := False;
    eddesconto_sex_extra.TabStop := False;

    eddesconto_sab_p.TabStop     := False;
    eddesconto_sab_m.TabStop     := False;
    eddesconto_sab_g.TabStop     := False;
    eddesconto_sab_gg.TabStop    := False;
    eddesconto_sab_extra.TabStop := False;

    eddesconto_dom_p.TabStop     := False;
    eddesconto_dom_m.TabStop     := False;
    eddesconto_dom_g.TabStop     := False;
    eddesconto_dom_gg.TabStop    := False;
    eddesconto_dom_extra.TabStop := False;
  end;
end;

procedure TfrmDetalheProduto.qrDetalheb_venda_tamanhoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  qrDetalheb_venda_tamanhoChange(nil);
end;

procedure TfrmDetalheProduto.qrDetalhecestChange(Sender: TField);
begin
  qrAux1.Close;
  qrAux1.SQL.Text:= 'select cest_anexoxxvii from cest where cest_codigo = :cest';
  qrAux1.ParamByName('cest').AsString:= qrDetalhecest.AsString;
  qrAux1.Open;

  if qrAux1.FieldByName('cest_anexoxxvii').AsBoolean then
    ckEscala.Visible:= True
  else
  begin
    ckEscala.Visible:= False;
    lblCNPJ.Visible:= False;
    edCNPJ.Visible:= False;

    qrDetalhenao_relevante.AsBoolean:= False;
  end;
end;

procedure TfrmDetalheProduto.qrDetalheid_fornecedorChange(Sender: TField);
var
str_sql,nome_fornecedor:string;
begin
    if (qrdetalhe.FieldByName('id_fornecedor').isnull)  then
  begin
    qrdetalhe.FieldByName('nome_fantasia').value := null;
    exit;
  end;

  str_sql := format('select nome_fantasia from fornecedor where id_situacao=4 and id_empresa=%d and id_fornecedor=%d',
                    [recproj.iEmp, qrdetalhe.FieldByName('id_fornecedor').Asinteger]);
  if BuscaCampo(nome_fornecedor, str_sql, 'Fornecedor', true  ) then
  begin
      qrdetalhe.FieldByName('nome_fantasia').asstring := nome_fornecedor;
  end
  else
  begin
    qrdetalhe.FieldByName('nome_fantasia').value := null;
    qrdetalhe.FieldByName('id_fornecedor').value := null;
  end;
end;

procedure TfrmDetalheProduto.qrDetalheid_setorChange(Sender: TField);
var quantidade : double;
    str_sql : string;
begin
  //busca a quantidade de estoque no setor selecionado
  str_sql := format('select quantidade from setor_estoque_material where id_material = %d and id_setor = %d and id_empresa=%d',
                    [qrDetalhe.FieldByName('mat_001').AsInteger,
                    qrDetalhe.FieldByName('id_setor').AsInteger,
                    qrDetalhe.FieldByName('emp_001').AsInteger]);
  BuscaCampo(quantidade, str_sql, '', false);
  qrDetalhe.FieldByName('estoque').asfloat := quantidade;
end;

procedure TfrmDetalheProduto.qrDetalhemat_004Change(Sender: TField);
var str_sql : string;
begin
  inherited;
  if Sender.IsNull then exit;

  //verifica se  existe código ja cadastrado para o produto selecionado
  str_sql := ' select mat_001, mat_003 from materiais where emp_001='+IntToStr(RecProj.iEmp) +
             ' and mat_004='+ QuotedStr(sender.AsString);
  if qrDetalhe.State=dsEdit then
    str_sql := str_sql + ' and mat_001<>'+qrDetalhe.FieldByName('mat_001').AsString;

  ExecutaConsultaSQL(qrAux1, str_sql);
  if qrAux1.RecordCount>0 then
  begin
    Application.MessageBox(pchar('Este código já foi cadastrado para o produto: '+#13#10+
                   qrAux1.Fields[0].AsString + ' - ' +qrAux1.Fields[1].AsString)
                   , 'Atenção', MB_ICONINFORMATION);
    if qrDetalhe.State=dsEdit then
      abort
    else
    begin
      qrDetalhemat_004.clear;
      edCodRef.Text := qrDetalhemat_004.AsString;
    end;
  end;
end;

procedure TfrmDetalheProduto.qrDetalhemat_008Change(Sender: TField);
var str_aux : string;
begin
  CalculaMargem('V');
  bDescCalculado := false;
  //define o preço por tamanho

  bAtualizarPreco:= False;
  if qrDetalhe.FieldByName('tamanho_padrao').AsString='P' then
    qrDetalhe.FieldByName('valor_tam_p').asfloat :=  qrDetalhe.FieldByName('mat_008').asfloat
  else if qrDetalhe.FieldByName('tamanho_padrao').AsString='M' then
    qrDetalhe.FieldByName('valor_tam_m').asfloat :=  qrDetalhe.FieldByName('mat_008').asfloat
  else if qrDetalhe.FieldByName('tamanho_padrao').AsString='G' then
    qrDetalhe.FieldByName('valor_tam_g').asfloat :=  qrDetalhe.FieldByName('mat_008').asfloat
  else if qrDetalhe.FieldByName('tamanho_padrao').AsString='GG' then
    qrDetalhe.FieldByName('valor_tam_gg').asfloat :=  qrDetalhe.FieldByName('mat_008').asfloat
  else if qrDetalhe.FieldByName('tamanho_padrao').AsString='E' then
    qrDetalhe.FieldByName('valor_tam_extra').asfloat :=  qrDetalhe.FieldByName('mat_008').asfloat;

  bAtualizarPreco:= True;
end;

procedure TfrmDetalheProduto.qrDetalhemat_012Change(Sender: TField);
begin
  CalculaMargem('P');
end;

procedure TfrmDetalheProduto.qrDetalhemat_018Change(Sender: TField);
begin
  CalculaMargem('P');
end;

procedure TfrmDetalheProduto.qrDetalhencmChange(Sender: TField);
var cest : string;
begin
  //busca a descricao do ncm
  if Sender.IsNull then  exit;

  ExecutaConsultaSQL(qrAux1, 'select descricao from ibpt where ncm=' + QuotedStr(Sender.AsString)  );
  if qrAux1.RecordCount<=0 then
  begin
    Application.MessageBox('NCM não encontrado!', 'Atenção', MB_ICONWARNING);
    Sender.value:=null;
    abort;
  end
  else
  begin
    if BuscaCampo(cest, 'select cest_codigo from cest where ncm_codigo ='+QuotedStr(Sender.AsString), 'CEST para o NCM informado', true) then
      qrDetalhe.fieldbyname('cest').asstring := cest;
  end;
end;

procedure TfrmDetalheProduto.qrDetalheNewRecord(DataSet: TDataSet);
var str_sql , id: string;
begin
   qrDetalhedat_001_1.AsDateTime := DataServer(frmMenu.conexao);
   qrDetalheusu_001_1.AsInteger := recProj.iUsuario;
   qrDetalhemat_008.AsFloat := 0;
   qrDetalhemat_009.AsFloat := 0;
   qrDetalhemat_012.AsFloat := 0; //CUSTO
   qrDetalhemat_014.AsFloat := 0;
   qrDetalhemat_015.AsFloat := 0;
   qrDetalhemat_017.AsFloat := 0; //RESERVA
   qrDetalhemat_018.AsFloat := 0; //MARGEM
   qrDetalhemat_020.AsFloat := 0;
   qrDetalhedisponivel.AsFloat := 0;
   qrDetalhemat_021.AsFloat := 0;
   qrDetalhe.FieldByName('tipo_producao').AsString:='P';

  //busca o ultimo id de material e replica no codigo e no cod de referencia
  str_sql := 'select coalesce(max(mat_001),0)+1 from materiais where emp_001='+IntToStr(RecProj.iEmp);
  ExecutaConsultaSQL(qrAux1, str_sql);
  id := qrAux1.Fields[0].AsString;
  qrDetalhe.FieldByName('mat_001').AsString:= id;
  qrDetalhe.FieldByName('mat_004').AsString:=  id;
  qrDetalhe.FieldByName('emp_001').AsInteger:= recProj.iemp;
  qrDetalhe.FieldByName('mtp_001').AsInteger:= 1; //Tipo 1=mateiral / 2=serviço
  qrDetalhe.FieldByName('b_venda_tamanho').asboolean:= false;
  qrDetalhe.FieldByName('tamanho_padrao').AsString:= 'M';
  qrDetalhe.FieldByName('b_peso_balanca').AsBoolean:=false;
  qrDetalhe.FieldByName('b_exporta_peso_balanca').AsBoolean:=false;
  qrDetalhe.FieldByName('b_exige_alterar_preco_venda').AsBoolean:=false;
  qrdetalhe.FieldByName('sit_001').AsInteger:=4;
  ckSituacao.Enabled:=true;
  ckSituacao.Caption:='Produto ativo';
  qrDetalhe.FieldByName('b_exige_70pc_valor_unit').AsBoolean:=false;
  qrDetalhehh_ativar.AsBoolean:= false;
  qrDetalhe.FieldByName('valor_atacado').asfloat:= 0.0;
  if Assigned(frmconsproduto) then
  begin
    if frmconsproduto.tela=0 then
     qrDetalhe.FieldByName('utiliza_combo').AsBoolean:=false
     else
      qrDetalhe.FieldByName('utiliza_combo').AsBoolean:=true ;

  end
  else
    qrDetalhe.FieldByName('utiliza_combo').AsBoolean:=false;

  qrDetalhe.FieldByName('nao_relevante').AsBoolean:=false;
end;

procedure TfrmDetalheProduto.qrDetalhevalor_tam_extraChange(Sender: TField);
begin
  //Atualiza o preço venda, se controlar por tamanho - Bruno (10-04-2018)
  if (qrDetalhe.FieldByName('b_venda_tamanho').AsBoolean) and
     (qrDetalhe.FieldByName('valor_tam_extra').AsFloat > 0)and
     (qrDetalhe.FieldByName('tamanho_padrao').AsString='E') and
     (bAtualizarPreco) then
    qrDetalhe.FieldByName('mat_008').AsFloat:= qrDetalhe.FieldByName('valor_tam_extra').AsFloat;
end;

procedure TfrmDetalheProduto.qrDetalhevalor_tam_gChange(Sender: TField);
begin
  //Atualiza o preço venda, se controlar por tamanho - Bruno (10-04-2018)
  if (qrDetalhe.FieldByName('b_venda_tamanho').AsBoolean) and
     (qrDetalhe.FieldByName('valor_tam_g').AsFloat > 0) and
     (qrDetalhe.FieldByName('tamanho_padrao').AsString='G') and
     (bAtualizarPreco) then
    qrDetalhe.FieldByName('mat_008').AsFloat:= qrDetalhe.FieldByName('valor_tam_g').AsFloat;
end;

procedure TfrmDetalheProduto.qrDetalhevalor_tam_ggChange(Sender: TField);
begin
  //Atualiza o preço venda, se controlar por tamanho - Bruno (10-04-2018)
  if (qrDetalhe.FieldByName('b_venda_tamanho').AsBoolean) and
     (qrDetalhe.FieldByName('valor_tam_gg').AsFloat > 0) and
     (qrDetalhe.FieldByName('tamanho_padrao').AsString='GG') and
     (bAtualizarPreco) then
    qrDetalhe.FieldByName('mat_008').AsFloat:= qrDetalhe.FieldByName('valor_tam_gg').AsFloat;
end;

procedure TfrmDetalheProduto.qrDetalhevalor_tam_mChange(Sender: TField);
begin
  //Atualiza o preço venda, se controlar por tamanho - Bruno (10-04-2018)
  if (qrDetalhe.FieldByName('b_venda_tamanho').AsBoolean) and
     (qrDetalhe.FieldByName('valor_tam_m').AsFloat > 0) and
     (qrDetalhe.FieldByName('tamanho_padrao').AsString='M') and
     (bAtualizarPreco) then
    qrDetalhe.FieldByName('mat_008').AsFloat:= qrDetalhe.FieldByName('valor_tam_m').AsFloat;
end;

procedure TfrmDetalheProduto.qrDetalhevalor_tam_pChange(Sender: TField);
begin
  //Atualiza o preço venda, se controlar por tamanho - Bruno (10-04-2018)
  if (qrDetalhe.FieldByName('b_venda_tamanho').AsBoolean) and
     (qrDetalhe.FieldByName('valor_tam_p').AsFloat > 0) and
     (qrDetalhe.FieldByName('tamanho_padrao').AsString='P') and
     (bAtualizarPreco) then
    qrDetalhe.FieldByName('mat_008').AsFloat:= qrDetalhe.FieldByName('valor_tam_p').AsFloat;
end;

procedure TfrmDetalheProduto.qrGraficoProdutosVendidosAfterOpen(
  DataSet: TDataSet);
begin
  DBChart1.Visible := qrGraficoProdutosVendidos.RecordCount>0;
end;

procedure TfrmDetalheProduto.qrListaCategoriaBeforeOpen(DataSet: TDataSet);
begin
  qrListaCategoria.ParamByName('emp').AsInteger:=RecProj.iEmp;
end;

procedure TfrmDetalheProduto.qrListaSetorBeforeOpen(DataSet: TDataSet);
begin
  qrListaSetor.ParamByName('id_empresa').AsInteger:=RecProj.iEmp;
end;

procedure TfrmDetalheProduto.qrListaTaraBeforeOpen(DataSet: TDataSet);
begin
  qrListaTara.ParamByName('emp').AsInteger:=RecProj.iEmp;
end;

procedure TfrmDetalheProduto.qrListaUnidadeMedidaBeforeOpen(DataSet: TDataSet);
begin
  qrListaUnidadeMedida.ParamByName('emp').AsInteger:=RecProj.iEmp;
end;

procedure TfrmDetalheProduto.qrProdutoComposicaoAfterDelete(DataSet: TDataSet);
begin
  CalculaMargem('C');
end;

procedure TfrmDetalheProduto.qrProdutoComposicaoAfterRefresh(DataSet: TDataSet);
begin
  CalculaMargem('C');
end;

procedure TfrmDetalheProduto.BuscarPromocao;
begin
  //Verifica se tem dados na tabela promoção - Bruno (10-04-2018)
  qrPromocao.Close;

  if qrDetalhe.State in [dsInsert] then
  begin
    qrPromocao.ParamByName('id_material').AsInteger := -1;
    qrPromocao.ParamByName('id_empresa').AsInteger  := -1;
  end
  else
  begin
    qrPromocao.ParamByName('id_material').AsInteger := qrDetalhemat_001.AsInteger;
    qrPromocao.ParamByName('id_empresa').AsInteger  := qrDetalheemp_001.AsInteger;
  end;

  qrPromocao.Open;
end;

procedure TfrmDetalheProduto.VerificaDadosPromocao;
begin
  //Verifica se tem algum dia marcado e não tem tipo de venda - Bruno (11/04/2018)
  if (qrPromocaodia_seg.AsBoolean) or (qrPromocaodia_ter.AsBoolean) or
     (qrPromocaodia_qua.AsBoolean) or (qrPromocaodia_qui.AsBoolean) or
     (qrPromocaodia_sex.AsBoolean) or (qrPromocaodia_sab.AsBoolean) or
     (qrPromocaodia_dom.AsBoolean) then
  begin
    if not (qrPromocaotipo_mesa.AsBoolean) and not (qrPromocaotipo_comanda.AsBoolean) and
       not (qrPromocaotipo_delivery.AsBoolean) and not (qrPromocaotipo_balcao.AsBoolean) and
       not (qrPromocaotipo_pdv.AsBoolean) then
    begin
      pgControl.ActivePage:= tsPromocao;
      Application.MessageBox('Informe o tipo de venda na promoção!', 'Atenção', MB_ICONINFORMATION + MB_OK);
      abort;
    end;
  end;

  //Verifica se tem algum tipo de venda marcado e não tem dias ativos - Bruno (11/04/2018)
  if (qrPromocaotipo_mesa.AsBoolean) or (qrPromocaotipo_comanda.AsBoolean) or
     (qrPromocaotipo_delivery.AsBoolean) or (qrPromocaotipo_balcao.AsBoolean) or
     (qrPromocaotipo_pdv.AsBoolean) then
  begin
    if not (qrPromocaodia_seg.AsBoolean) and not (qrPromocaodia_ter.AsBoolean) and
       not (qrPromocaodia_qua.AsBoolean) and not (qrPromocaodia_qui.AsBoolean) and
       not (qrPromocaodia_sex.AsBoolean) and not (qrPromocaodia_sab.AsBoolean) and
       not (qrPromocaodia_dom.AsBoolean) then
    begin
      pgControl.ActivePage:= tsPromocao;
      Application.MessageBox('Informe o(s) dia(s) ativo(s) na promoção!', 'Atenção', MB_ICONINFORMATION + MB_OK);
      abort;
    end;
  end;

  if qrPromocaotipo_desconto.AsInteger = 0 then //Valida os valores percentual
  begin
    if not qrDetalheb_venda_tamanho.AsBoolean then //Se não for venda por tamanho
    begin
      if qrPromocaodia_seg.AsBoolean then //Segunda
      begin
        if (qrPromocaodesconto_seg_padrao.AsFloat <= 0) or (qrPromocaodesconto_seg_padrao.AsFloat > 100) then
        begin
          pgControl.ActivePage:= tsPromocao;
          Application.MessageBox('Promoção - Percentual de desconto (segunda) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
          eddesconto_seg_padrao.SetFocus;
          abort;
        end;
      end;
      if qrPromocaodia_ter.AsBoolean then //Terça
      begin
        if (qrPromocaodesconto_ter_padrao.AsFloat <= 0) or (qrPromocaodesconto_ter_padrao.AsFloat > 100) then
        begin
          pgControl.ActivePage:= tsPromocao;
          Application.MessageBox('Promoção - Percentual de desconto (terça) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
          eddesconto_ter_padrao.SetFocus;
          abort;
        end;
      end;
      if qrPromocaodia_qua.AsBoolean then //Quarta
      begin
        if (qrPromocaodesconto_qua_padrao.AsFloat <= 0) or (qrPromocaodesconto_qua_padrao.AsFloat > 100) then
        begin
          pgControl.ActivePage:= tsPromocao;
          Application.MessageBox('Promoção - Percentual de desconto (quarta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
          eddesconto_qua_padrao.SetFocus;
          abort;
        end;
      end;
      if qrPromocaodia_qui.AsBoolean then //Quinta
      begin
        if (qrPromocaodesconto_qui_padrao.AsFloat <= 0) or (qrPromocaodesconto_qui_padrao.AsFloat > 100) then
        begin
          pgControl.ActivePage:= tsPromocao;
          Application.MessageBox('Promoção - Percentual de desconto (quinta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
          eddesconto_qui_padrao.SetFocus;
          abort;
        end;
      end;
      if qrPromocaodia_sex.AsBoolean then //Sexta
      begin
        if (qrPromocaodesconto_sex_padrao.AsFloat <= 0) or (qrPromocaodesconto_sex_padrao.AsFloat > 100) then
        begin
          pgControl.ActivePage:= tsPromocao;
          Application.MessageBox('Promoção - Percentual de desconto (sexta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
          eddesconto_sex_padrao.SetFocus;
          abort;
        end;
      end;
      if qrPromocaodia_sab.AsBoolean then //Sábado
      begin
        if (qrPromocaodesconto_sab_padrao.AsFloat <= 0) or (qrPromocaodesconto_sab_padrao.AsFloat > 100) then
        begin
          pgControl.ActivePage:= tsPromocao;
          Application.MessageBox('Promoção - Percentual de desconto (sábado) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
          eddesconto_sab_padrao.SetFocus;
          abort;
        end;
      end;
      if qrPromocaodia_dom.AsBoolean then //Domingo
      begin
        if (qrPromocaodesconto_dom_padrao.AsFloat <= 0) or (qrPromocaodesconto_dom_padrao.AsFloat > 100) then
        begin
          pgControl.ActivePage:= tsPromocao;
          Application.MessageBox('Promoção - Percentual de desconto (domingo) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
          eddesconto_dom_padrao.SetFocus;
          abort;
        end;
      end;
    end
    else if qrDetalheb_venda_tamanho.AsBoolean then //venda por tamanho
    begin
      if qrPromocaodia_seg.AsBoolean then //Segunda
      begin
        if (qrDetalhevalor_tam_p.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_seg_tam_p.AsFloat <= 0) or (qrPromocaodesconto_seg_tam_p.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (segunda) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_seg_p.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_seg_tam_p.AsFloat:= 0;

        if (qrDetalhevalor_tam_m.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_seg_tam_m.AsFloat <= 0) or (qrPromocaodesconto_seg_tam_m.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (segunda) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_seg_m.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_seg_tam_m.AsFloat:= 0;

        if (qrDetalhevalor_tam_g.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_seg_tam_g.AsFloat <= 0) or (qrPromocaodesconto_seg_tam_g.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (segunda) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_seg_g.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_seg_tam_g.AsFloat:= 0;

        if (qrDetalhevalor_tam_gg.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_seg_tam_gg.AsFloat <= 0) or (qrPromocaodesconto_seg_tam_gg.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (segunda) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_seg_gg.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_seg_tam_gg.AsFloat:= 0;

        if (qrDetalhevalor_tam_extra.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_seg_tam_extra.AsFloat <= 0) or (qrPromocaodesconto_seg_tam_extra.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (segunda) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_seg_extra.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_seg_tam_extra.AsFloat:= 0;
      end;

      if qrPromocaodia_ter.AsBoolean then //Terça
      begin
        if (qrDetalhevalor_tam_p.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_ter_tam_p.AsFloat <= 0) or (qrPromocaodesconto_ter_tam_p.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (terça) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_ter_p.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_ter_tam_p.AsFloat:= 0;

        if (qrDetalhevalor_tam_m.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_ter_tam_m.AsFloat <= 0) or (qrPromocaodesconto_ter_tam_m.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (terça) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_ter_m.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_ter_tam_m.AsFloat:= 0;

        if (qrDetalhevalor_tam_g.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_ter_tam_g.AsFloat <= 0) or (qrPromocaodesconto_ter_tam_g.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (terça) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_ter_g.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_ter_tam_g.AsFloat:= 0;

        if (qrDetalhevalor_tam_gg.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_ter_tam_gg.AsFloat <= 0) or (qrPromocaodesconto_ter_tam_gg.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (terça) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_ter_gg.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_ter_tam_gg.AsFloat:= 0;

        if (qrDetalhevalor_tam_extra.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_ter_tam_extra.AsFloat <= 0) or (qrPromocaodesconto_ter_tam_extra.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (terça) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_ter_extra.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_ter_tam_extra.AsFloat:= 0;
      end;

      if qrPromocaodia_qua.AsBoolean then //Quarta
      begin
        if (qrDetalhevalor_tam_p.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_qua_tam_p.AsFloat <= 0) or (qrPromocaodesconto_qua_tam_p.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (quarta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_qua_p.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_qua_tam_p.AsFloat:= 0;

        if (qrDetalhevalor_tam_m.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_qua_tam_m.AsFloat <= 0) or (qrPromocaodesconto_qua_tam_m.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (quarta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_qua_m.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_qua_tam_m.AsFloat:= 0;

        if (qrDetalhevalor_tam_g.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_qua_tam_g.AsFloat <= 0) or (qrPromocaodesconto_qua_tam_g.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (quarta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_qua_g.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_qua_tam_g.AsFloat:= 0;

        if (qrDetalhevalor_tam_gg.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_qua_tam_gg.AsFloat <= 0) or (qrPromocaodesconto_qua_tam_gg.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (quarta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_qua_gg.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_qua_tam_gg.AsFloat:= 0;

        if (qrDetalhevalor_tam_extra.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_qua_tam_extra.AsFloat <= 0) or (qrPromocaodesconto_qua_tam_extra.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (quarta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_qua_extra.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_qua_tam_extra.AsFloat:= 0;
      end;

      if qrPromocaodia_qui.AsBoolean then //Quinta
      begin
        if (qrDetalhevalor_tam_p.AsFloat > 0) then
        begin
          if  (qrPromocaodesconto_qui_tam_p.AsFloat <= 0) or (qrPromocaodesconto_qui_tam_p.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (quinta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_qui_p.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_qui_tam_p.AsFloat:= 0;

        if (qrDetalhevalor_tam_m.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_qui_tam_m.AsFloat <= 0) or (qrPromocaodesconto_qui_tam_m.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (quinta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_qui_m.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_qui_tam_m.AsFloat:= 0;

        if (qrDetalhevalor_tam_g.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_qui_tam_g.AsFloat <= 0) or (qrPromocaodesconto_qui_tam_g.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (quinta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_qui_g.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_qui_tam_g.AsFloat:= 0;

        if (qrDetalhevalor_tam_gg.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_qui_tam_gg.AsFloat <= 0) or (qrPromocaodesconto_qui_tam_gg.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (quinta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_qui_gg.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_qui_tam_gg.AsFloat:= 0;

        if (qrDetalhevalor_tam_extra.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_qui_tam_extra.AsFloat <= 0) or (qrPromocaodesconto_qui_tam_extra.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (quinta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_qui_extra.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_qui_tam_extra.AsFloat:= 0;
      end;

      if qrPromocaodia_sex.AsBoolean then //Sexta
      begin
        if (qrDetalhevalor_tam_p.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_sex_tam_p.AsFloat <= 0) or (qrPromocaodesconto_sex_tam_p.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (sexta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_sex_p.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_sex_tam_p.AsFloat:= 0;

        if (qrDetalhevalor_tam_m.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_sex_tam_m.AsFloat <= 0) or (qrPromocaodesconto_sex_tam_m.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (sexta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_sex_m.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_sex_tam_m.AsFloat:= 0;

        if (qrDetalhevalor_tam_g.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_sex_tam_g.AsFloat <= 0) or (qrPromocaodesconto_sex_tam_g.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (sexta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_sex_g.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_sex_tam_g.AsFloat:= 0;

        if (qrDetalhevalor_tam_gg.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_sex_tam_gg.AsFloat <= 0) or (qrPromocaodesconto_sex_tam_gg.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (sexta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_sex_gg.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_sex_tam_gg.AsFloat:= 0;

        if (qrDetalhevalor_tam_extra.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_sex_tam_extra.AsFloat <= 0) or (qrPromocaodesconto_sex_tam_extra.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (sexta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_sex_extra.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_sex_tam_extra.AsFloat:= 0;
      end;

      if qrPromocaodia_sab.AsBoolean then //Sábado
      begin
        if (qrDetalhevalor_tam_p.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_sab_tam_p.AsFloat <= 0) or (qrPromocaodesconto_sab_tam_p.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (sábado) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_sab_p.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_sab_tam_p.AsFloat:= 0;

        if (qrDetalhevalor_tam_m.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_sab_tam_m.AsFloat <= 0) or (qrPromocaodesconto_sab_tam_m.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (sábado) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_sab_m.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_sab_tam_m.AsFloat:= 0;

        if (qrDetalhevalor_tam_g.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_sab_tam_g.AsFloat <= 0) or (qrPromocaodesconto_sab_tam_g.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (sábado) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_sab_g.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_sab_tam_g.AsFloat:= 0;

        if (qrDetalhevalor_tam_gg.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_sab_tam_gg.AsFloat <= 0) or (qrPromocaodesconto_sab_tam_gg.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (sábado) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_sab_gg.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_sab_tam_gg.AsFloat:= 0;

        if (qrDetalhevalor_tam_extra.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_sab_tam_extra.AsFloat <= 0) or (qrPromocaodesconto_sab_tam_extra.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (sábado) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_sab_extra.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_sab_tam_extra.AsFloat:= 0;
      end;

      if qrPromocaodia_dom.AsBoolean then //Domingo
      begin
        if (qrDetalhevalor_tam_p.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_dom_tam_p.AsFloat <= 0) or (qrPromocaodesconto_dom_tam_p.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (domingo) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_dom_p.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_dom_tam_p.AsFloat:= 0;

        if (qrDetalhevalor_tam_m.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_dom_tam_m.AsFloat <= 0) or (qrPromocaodesconto_dom_tam_m.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (domingo) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_dom_m.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_dom_tam_m.AsFloat:= 0;

        if (qrDetalhevalor_tam_g.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_dom_tam_g.AsFloat <= 0) or (qrPromocaodesconto_dom_tam_g.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (domingo) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_dom_g.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_dom_tam_g.AsFloat:= 0;

        if (qrDetalhevalor_tam_gg.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_dom_tam_gg.AsFloat <= 0) or (qrPromocaodesconto_dom_tam_gg.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (domingo) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_dom_gg.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_dom_tam_gg.AsFloat:= 0;

        if (qrDetalhevalor_tam_extra.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_dom_tam_extra.AsFloat <= 0) or (qrPromocaodesconto_dom_tam_extra.AsFloat > 100) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Percentual de desconto (domingo) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_dom_extra.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_dom_tam_extra.AsFloat:= 0;
      end;
    end;
  end
  else if qrPromocaotipo_desconto.AsInteger = 1 then //Valida os valores R$
  begin
    if not qrDetalheb_venda_tamanho.AsBoolean then //Se não for venda por tamanho
    begin
      if qrPromocaodia_seg.AsBoolean then //Segunda
      begin
        if (qrPromocaodesconto_seg_padrao.AsFloat <= 0) or (qrPromocaodesconto_seg_padrao.AsFloat > qrDetalhemat_008.AsFloat) then
        begin
          pgControl.ActivePage:= tsPromocao;
          Application.MessageBox('Promoção - Valor de desconto (segunda) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
          eddesconto_seg_padrao.SetFocus;
          abort;
        end;
      end;
      if qrPromocaodia_ter.AsBoolean then //Terça
      begin
        if (qrPromocaodesconto_ter_padrao.AsFloat <= 0) or (qrPromocaodesconto_ter_padrao.AsFloat > qrDetalhemat_008.AsFloat) then
        begin
          pgControl.ActivePage:= tsPromocao;
          Application.MessageBox('Promoção - Valor de desconto (terça) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
          eddesconto_ter_padrao.SetFocus;
          abort;
        end;
      end;
      if qrPromocaodia_qua.AsBoolean then //Quarta
      begin
        if (qrPromocaodesconto_qua_padrao.AsFloat <= 0) or (qrPromocaodesconto_qua_padrao.AsFloat > qrDetalhemat_008.AsFloat) then
        begin
          pgControl.ActivePage:= tsPromocao;
          Application.MessageBox('Promoção - Valor de desconto (quarta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
          eddesconto_qua_padrao.SetFocus;
          abort;
        end;
      end;
      if qrPromocaodia_qui.AsBoolean then //Quinta
      begin
        if (qrPromocaodesconto_qui_padrao.AsFloat <= 0) or (qrPromocaodesconto_qui_padrao.AsFloat > qrDetalhemat_008.AsFloat) then
        begin
          pgControl.ActivePage:= tsPromocao;
          Application.MessageBox('Promoção - Valor de desconto (quinta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
          eddesconto_qui_padrao.SetFocus;
          abort;
        end;
      end;
      if qrPromocaodia_sex.AsBoolean then //Sexta
      begin
        if (qrPromocaodesconto_sex_padrao.AsFloat <= 0) or (qrPromocaodesconto_sex_padrao.AsFloat > qrDetalhemat_008.AsFloat) then
        begin
          pgControl.ActivePage:= tsPromocao;
          Application.MessageBox('Promoção - Valor de desconto (sexta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
          eddesconto_sex_padrao.SetFocus;
          abort;
        end;
      end;
      if qrPromocaodia_sab.AsBoolean then //Sábado
      begin
        if (qrPromocaodesconto_sab_padrao.AsFloat <= 0) or (qrPromocaodesconto_sab_padrao.AsFloat > qrDetalhemat_008.AsFloat) then
        begin
          pgControl.ActivePage:= tsPromocao;
          Application.MessageBox('Promoção - Valor de desconto (sábado) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
          eddesconto_sab_padrao.SetFocus;
          abort;
        end;
      end;
      if qrPromocaodia_dom.AsBoolean then //Domingo
      begin
        if (qrPromocaodesconto_dom_padrao.AsFloat <= 0) or (qrPromocaodesconto_dom_padrao.AsFloat > qrDetalhemat_008.AsFloat) then
        begin
          pgControl.ActivePage:= tsPromocao;
          Application.MessageBox('Promoção - Valor de desconto (domingo) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
          eddesconto_dom_padrao.SetFocus;
          abort;
        end;
      end;
    end
    else if qrDetalheb_venda_tamanho.AsBoolean then //venda por tamanho
    begin
      if qrPromocaodia_seg.AsBoolean then //Segunda
      begin
        if (qrDetalhevalor_tam_p.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_seg_tam_p.AsFloat <= 0) or (qrPromocaodesconto_seg_tam_p.AsFloat > qrDetalhevalor_tam_p.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (segunda) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_seg_p.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_seg_tam_p.AsFloat:= 0;

        if (qrDetalhevalor_tam_m.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_seg_tam_m.AsFloat <= 0) or (qrPromocaodesconto_seg_tam_m.AsFloat > qrDetalhevalor_tam_m.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (segunda) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_seg_m.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_seg_tam_m.AsFloat:= 0;

        if (qrDetalhevalor_tam_g.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_seg_tam_g.AsFloat <= 0) or (qrPromocaodesconto_seg_tam_g.AsFloat > qrDetalhevalor_tam_g.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (segunda) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_seg_g.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_seg_tam_g.AsFloat:= 0;

        if (qrDetalhevalor_tam_gg.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_seg_tam_gg.AsFloat <= 0) or (qrPromocaodesconto_seg_tam_gg.AsFloat > qrDetalhevalor_tam_gg.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (segunda) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_seg_gg.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_seg_tam_gg.AsFloat:= 0;

        if (qrDetalhevalor_tam_extra.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_seg_tam_extra.AsFloat <= 0) or (qrPromocaodesconto_seg_tam_extra.AsFloat > qrDetalhevalor_tam_extra.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (segunda) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_seg_extra.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_seg_tam_extra.AsFloat:= 0;
      end;

      if qrPromocaodia_ter.AsBoolean then //Terça
      begin
        if (qrDetalhevalor_tam_p.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_ter_tam_p.AsFloat <= 0) or (qrPromocaodesconto_ter_tam_p.AsFloat > qrDetalhevalor_tam_p.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (terça) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_ter_p.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_ter_tam_p.AsFloat:= 0;

        if (qrDetalhevalor_tam_m.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_ter_tam_m.AsFloat <= 0) or (qrPromocaodesconto_ter_tam_m.AsFloat > qrDetalhevalor_tam_m.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (terça) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_ter_m.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_ter_tam_m.AsFloat:= 0;

        if (qrDetalhevalor_tam_g.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_ter_tam_g.AsFloat <= 0) or (qrPromocaodesconto_ter_tam_g.AsFloat > qrDetalhevalor_tam_g.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (terça) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_ter_g.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_ter_tam_g.AsFloat:= 0;

        if (qrDetalhevalor_tam_gg.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_ter_tam_gg.AsFloat <= 0) or (qrPromocaodesconto_ter_tam_gg.AsFloat > qrDetalhevalor_tam_gg.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (terça) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_ter_gg.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_ter_tam_gg.AsFloat:= 0;

        if (qrDetalhevalor_tam_extra.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_ter_tam_extra.AsFloat <= 0) or (qrPromocaodesconto_ter_tam_extra.AsFloat > qrDetalhevalor_tam_extra.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (terça) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_ter_extra.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_ter_tam_extra.AsFloat:= 0;
      end;

      if qrPromocaodia_qua.AsBoolean then //Quarta
      begin
        if (qrDetalhevalor_tam_p.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_qua_tam_p.AsFloat <= 0) or (qrPromocaodesconto_qua_tam_p.AsFloat > qrDetalhevalor_tam_p.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (quarta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_qua_p.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_qua_tam_p.AsFloat:= 0;

        if (qrDetalhevalor_tam_m.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_qua_tam_m.AsFloat <= 0) or (qrPromocaodesconto_qua_tam_m.AsFloat > qrDetalhevalor_tam_m.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (quarta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_qua_m.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_qua_tam_m.AsFloat:= 0;

        if (qrDetalhevalor_tam_g.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_qua_tam_g.AsFloat <= 0) or (qrPromocaodesconto_qua_tam_g.AsFloat > qrDetalhevalor_tam_g.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (quarta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_qua_g.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_qua_tam_g.AsFloat:= 0;

        if (qrDetalhevalor_tam_gg.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_qua_tam_gg.AsFloat <= 0) or (qrPromocaodesconto_qua_tam_gg.AsFloat > qrDetalhevalor_tam_gg.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (quarta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_qua_gg.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_qua_tam_gg.AsFloat:= 0;

        if (qrDetalhevalor_tam_extra.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_qua_tam_extra.AsFloat <= 0) or (qrPromocaodesconto_qua_tam_extra.AsFloat > qrDetalhevalor_tam_extra.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (quarta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_qua_extra.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_qua_tam_extra.AsFloat:= 0;
      end;

      if qrPromocaodia_qui.AsBoolean then //Quinta
      begin
        if (qrDetalhevalor_tam_p.AsFloat > 0) then
        begin
          if  (qrPromocaodesconto_qui_tam_p.AsFloat <= 0) or (qrPromocaodesconto_qui_tam_p.AsFloat > qrDetalhevalor_tam_p.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (quinta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_qui_p.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_qui_tam_p.AsFloat:= 0;

        if (qrDetalhevalor_tam_m.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_qui_tam_m.AsFloat <= 0) or (qrPromocaodesconto_qui_tam_m.AsFloat > qrDetalhevalor_tam_m.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (quinta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_qui_m.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_qui_tam_m.AsFloat:= 0;

        if (qrDetalhevalor_tam_g.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_qui_tam_g.AsFloat <= 0) or (qrPromocaodesconto_qui_tam_g.AsFloat > qrDetalhevalor_tam_g.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (quinta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_qui_g.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_qui_tam_g.AsFloat:= 0;

        if (qrDetalhevalor_tam_gg.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_qui_tam_gg.AsFloat <= 0) or (qrPromocaodesconto_qui_tam_gg.AsFloat > qrDetalhevalor_tam_gg.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (quinta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_qui_gg.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_qui_tam_gg.AsFloat:= 0;

        if (qrDetalhevalor_tam_extra.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_qui_tam_extra.AsFloat <= 0) or (qrPromocaodesconto_qui_tam_extra.AsFloat > qrDetalhevalor_tam_extra.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (quinta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_qui_extra.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_qui_tam_extra.AsFloat:= 0;
      end;

      if qrPromocaodia_sex.AsBoolean then //Sexta
      begin
        if (qrDetalhevalor_tam_p.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_sex_tam_p.AsFloat <= 0) or (qrPromocaodesconto_sex_tam_p.AsFloat > qrDetalhevalor_tam_p.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (sexta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_sex_p.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_sex_tam_p.AsFloat:= 0;

        if (qrDetalhevalor_tam_m.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_sex_tam_m.AsFloat <= 0) or (qrPromocaodesconto_sex_tam_m.AsFloat > qrDetalhevalor_tam_m.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (sexta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_sex_m.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_sex_tam_m.AsFloat:= 0;

        if (qrDetalhevalor_tam_g.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_sex_tam_g.AsFloat <= 0) or (qrPromocaodesconto_sex_tam_g.AsFloat > qrDetalhevalor_tam_g.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (sexta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_sex_g.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_sex_tam_g.AsFloat:= 0;

        if (qrDetalhevalor_tam_gg.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_sex_tam_gg.AsFloat <= 0) or (qrPromocaodesconto_sex_tam_gg.AsFloat > qrDetalhevalor_tam_gg.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (sexta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_sex_gg.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_sex_tam_gg.AsFloat:= 0;

        if (qrDetalhevalor_tam_extra.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_sex_tam_extra.AsFloat <= 0) or (qrPromocaodesconto_sex_tam_extra.AsFloat > qrDetalhevalor_tam_extra.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (sexta) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_sex_extra.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_sex_tam_extra.AsFloat:= 0;
      end;

      if qrPromocaodia_sab.AsBoolean then //Sábado
      begin
        if (qrDetalhevalor_tam_p.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_sab_tam_p.AsFloat <= 0) or (qrPromocaodesconto_sab_tam_p.AsFloat > qrDetalhevalor_tam_p.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (sábado) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_sab_p.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_sab_tam_p.AsFloat:= 0;

        if (qrDetalhevalor_tam_m.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_sab_tam_m.AsFloat <= 0) or (qrPromocaodesconto_sab_tam_m.AsFloat > qrDetalhevalor_tam_m.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (sábado) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_sab_m.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_sab_tam_m.AsFloat:= 0;

        if (qrDetalhevalor_tam_g.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_sab_tam_g.AsFloat <= 0) or (qrPromocaodesconto_sab_tam_g.AsFloat > qrDetalhevalor_tam_g.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (sábado) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_sab_g.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_sab_tam_g.AsFloat:= 0;

        if (qrDetalhevalor_tam_gg.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_sab_tam_gg.AsFloat <= 0) or (qrPromocaodesconto_sab_tam_gg.AsFloat > qrDetalhevalor_tam_gg.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (sábado) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_sab_gg.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_sab_tam_gg.AsFloat:= 0;

        if (qrDetalhevalor_tam_extra.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_sab_tam_extra.AsFloat <= 0) or (qrPromocaodesconto_sab_tam_extra.AsFloat > qrDetalhevalor_tam_extra.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (sábado) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_sab_extra.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_sab_tam_extra.AsFloat:= 0;
      end;

      if qrPromocaodia_dom.AsBoolean then //Domingo
      begin
        if (qrDetalhevalor_tam_p.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_dom_tam_p.AsFloat <= 0) or (qrPromocaodesconto_dom_tam_p.AsFloat > qrDetalhevalor_tam_p.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (domingo) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_dom_p.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_dom_tam_p.AsFloat:= 0;

        if (qrDetalhevalor_tam_m.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_dom_tam_m.AsFloat <= 0) or (qrPromocaodesconto_dom_tam_m.AsFloat > qrDetalhevalor_tam_m.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (domingo) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_dom_m.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_dom_tam_m.AsFloat:= 0;

        if (qrDetalhevalor_tam_g.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_dom_tam_g.AsFloat <= 0) or (qrPromocaodesconto_dom_tam_g.AsFloat > qrDetalhevalor_tam_g.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (domingo) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_dom_g.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_dom_tam_g.AsFloat:= 0;

        if (qrDetalhevalor_tam_gg.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_dom_tam_gg.AsFloat <= 0) or (qrPromocaodesconto_dom_tam_gg.AsFloat > qrDetalhevalor_tam_gg.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (domingo) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_dom_gg.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_dom_tam_gg.AsFloat:= 0;

        if (qrDetalhevalor_tam_extra.AsFloat > 0) then
        begin
          if (qrPromocaodesconto_dom_tam_extra.AsFloat <= 0) or (qrPromocaodesconto_dom_tam_extra.AsFloat > qrDetalhevalor_tam_extra.AsFloat) then
          begin
            pgControl.ActivePage:= tsPromocao;
            Application.MessageBox('Promoção - Valor de desconto (domingo) inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
            eddesconto_dom_extra.SetFocus;
            abort;
          end;
        end
        else
          qrPromocaodesconto_dom_tam_extra.AsFloat:= 0;
      end;
    end;
  end;
end;

end.


