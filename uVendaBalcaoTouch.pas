unit uVendaBalcaoTouch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni, AdvEdit,
  DBAdvEd, JvExStdCtrls, JvEdit, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, Vcl.DBCtrls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, Vcl.ActnList, cxGridLevel,
  cxGridCardView, cxGridDBCardView, cxGridCustomLayoutView, System.Math,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, AdvGlowButton, JvDataSource, JvValidateEdit,
  dxGDIPlusClasses, System.Actions, cxMaskEdit, cxButtonEdit, cxSpinEdit,
  cxDBEdit, AdvGroupBox, cxLabel, cxDBLabel, Vcl.DBCGrids, cxCurrencyEdit,
  GraphUtil,
  ACBrBase, ACBrBAL, ACBRDevice, System.ImageList, Vcl.ImgList,
  uVendabalcaotouchbalanca, Datasnap.DBClient, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmVendaBalcaoTouch = class(TForm)
    qrVenda: TUniQuery;
    qrVendaid_cliente: TIntegerField;
    qrVendadata_cadastro: TDateTimeField;
    qrVendatipo_venda: TWideStringField;
    qrVendavenda_orcamento: TIntegerField;
    qrVendasit_001: TIntegerField;
    qrVendausu_001_1: TIntegerField;
    qrVendaven_001: TIntegerField;
    qrVendaemp_001: TIntegerField;
    qrVendastatus_desc: TWideStringField;
    qrVendatotal_venda: TFloatField;
    qrVendatotal_itens: TFloatField;
    qrVendaacrescimo: TFloatField;
    qrVendadesconto_percent: TFloatField;
    qrVendadesconto: TFloatField;
    qrVendaid_caixa_abertura: TIntegerField;
    qrVendaobservacao: TWideStringField;
    qrVendacpf_cliente: TWideStringField;
    qrVendab_taxa_entrega: TBooleanField;
    dsVenda: TDataSource;
    qrBuscaItem: TUniQuery;
    qrBuscaItemid_material: TIntegerField;
    qrBuscaItemdescricao: TWideStringField;
    qrBuscaItemunidade: TWideStringField;
    qrBuscaItemvalor_unit: TFloatField;
    qrBuscaItemcod_ref: TWideStringField;
    qrBuscaItemvalortotal: TCurrencyField;
    qrBuscaItemultimo_item: TIntegerField;
    qrBuscaItemquantidade: TFloatField;
    qrBuscaItemcod_impressora: TIntegerField;
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
    dsBuscaItem: TDataSource;
    qrVendaterminal_abertura: TWideStringField;
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
    qrVendaItemqtdevenda: TFloatField;
    qrVendaItemdesc_tamanho: TWideStringField;
    qrVendaItemitem_fracionado: TIntegerField;
    qrVendaItemacrescimo: TFloatField;
    dsVendaItem: TDataSource;
    cxGridItens: TcxGrid;
    cxGridItensDBTableView1: TcxGridDBTableView;
    cxGridItensDBTableView1nro_item: TcxGridDBColumn;
    cxGridItensDBTableView1descricao_item: TcxGridDBColumn;
    cxGridItensDBTableView1qtdevenda: TcxGridDBColumn;
    cxGridItensDBTableView1vlrvenda: TcxGridDBColumn;
    cxGridItensDBTableView1valor_total: TcxGridDBColumn;
    cxGridItensDBCardView1: TcxGridDBCardView;
    cxGridItensDBCardView1observacao: TcxGridDBCardViewRow;
    cxGridItensDBCardView2: TcxGridDBCardView;
    cxGridItensDBCardView3: TcxGridDBCardView;
    cxGridItensDBCardView3descricao: TcxGridDBCardViewRow;
    cxGridItensLevel1: TcxGridLevel;
    ActionList1: TActionList;
    acAberturaVenda: TAction;
    acFecharVenda: TAction;
    acCancelarVenda: TAction;
    acPesquisarItem: TAction;
    acCancelaItem: TAction;
    acDescontoItem: TAction;
    acObservacaoItem: TAction;
    acInsereProdutoFracionado: TAction;
    acOpcionaisItem: TAction;
    qrInsereItem: TUniQuery;
    acConsultarProduto: TAction;
    jvdsBuscaItem: TJvDataSource;
    acAbreBuscaCliente: TAction;
    qrVendanome_cliente: TWideStringField;
    lbObservacoes: TLabel;
    pnlAcoes: TPanel;
    qrVendanro_venda: TIntegerField;
    cxGridItensDBTableView1Desconto: TcxGridDBColumn;
    dsVendaItemOpcional: TDataSource;
    qrVendaItemOpcional: TUniQuery;
    qrVendaItemOpcionalid_venda: TIntegerField;
    qrVendaItemOpcionalid_empresa: TIntegerField;
    qrVendaItemOpcionalid_vendaitem: TIntegerField;
    qrVendaItemOpcionalid_opcional: TIntegerField;
    qrVendaItemOpcionalvalor: TFloatField;
    qrVendaItemOpcionaldescricao: TWideStringField;
    qrVendaItemOpcionalord: TIntegerField;
    cxGridItensLevel2: TcxGridLevel;
    cxGridItensDBCardView4: TcxGridDBCardView;
    cxGridItensDBCardView4descricao: TcxGridDBCardViewRow;
    acAbreGaveta: TAction;
    qrCategoria: TUniQuery;
    qrCategoriaid_categoria: TIntegerField;
    qrCategoriadescricao: TWideStringField;
    qrCategoriab_exibir_icone: TBooleanField;
    qrCategoriaarquivo_img: TWideStringField;
    qrCategorianro_produtos: TLargeintField;
    dsCategoria: TDataSource;
    DBCtrlGridCategoria: TDBCtrlGrid;
    imgCategoria: TImage;
    lbCategoria: TcxDBLabel;
    btPagCategoriaAnt: TDBAdvGlowButton;
    btPagCategoriaProx: TDBAdvGlowButton;
    btPagProdutoAnt: TDBAdvGlowButton;
    DBCtrlGridProduto: TDBCtrlGrid;
    lbDescProduto: TcxDBLabel;
    btPagÇProdutoProx: TDBAdvGlowButton;
    grKeyboard3: TAdvGroupBox;
    btKb3_LIMPAR: TAdvGlowButton;
    btKb3_X: TAdvGlowButton;
    btKb3_Z: TAdvGlowButton;
    btKb3_C: TAdvGlowButton;
    btKb3_A: TAdvGlowButton;
    btKb3_S: TAdvGlowButton;
    btKb3_D: TAdvGlowButton;
    btKb3_Q: TAdvGlowButton;
    btKb3_W: TAdvGlowButton;
    btKb3_E: TAdvGlowButton;
    btKb3_BackSpace: TAdvGlowButton;
    btKb3_R: TAdvGlowButton;
    btKb3_T: TAdvGlowButton;
    btKb3_Y: TAdvGlowButton;
    btKb3_U: TAdvGlowButton;
    btKb3_I: TAdvGlowButton;
    btKb3_O: TAdvGlowButton;
    btKb3_P: TAdvGlowButton;
    btKb3_F: TAdvGlowButton;
    btKb3_G: TAdvGlowButton;
    btKb3_H: TAdvGlowButton;
    btKb3_J: TAdvGlowButton;
    btKb3_K: TAdvGlowButton;
    btKb3_L: TAdvGlowButton;
    btKb3_CEDILH: TAdvGlowButton;
    btKb3_V: TAdvGlowButton;
    btKb3_B: TAdvGlowButton;
    btKb3_N: TAdvGlowButton;
    btKb3_M: TAdvGlowButton;
    btKb3_VIRG: TAdvGlowButton;
    btKb3_PONTO: TAdvGlowButton;
    btKb3_PONTVIRG: TAdvGlowButton;
    btKb3_ESPACO: TAdvGlowButton;
    btKb1_0: TAdvGlowButton;
    btKb1_2: TAdvGlowButton;
    btKb1_1: TAdvGlowButton;
    btKb1_3: TAdvGlowButton;
    btKb1_4: TAdvGlowButton;
    btKb1_5: TAdvGlowButton;
    btKb1_6: TAdvGlowButton;
    btKb1_7: TAdvGlowButton;
    btKb1_8: TAdvGlowButton;
    btKb1_9: TAdvGlowButton;
    btKb3_Enter: TAdvGlowButton;
    lbProdutosEncontrados: TLabel;
    grKeyborad2: TAdvGroupBox;
    btKb2_0: TAdvGlowButton;
    btKb2_2: TAdvGlowButton;
    btKb2_1: TAdvGlowButton;
    btKb2_3: TAdvGlowButton;
    btKb2_4: TAdvGlowButton;
    btKb2_5: TAdvGlowButton;
    btKb2_6: TAdvGlowButton;
    btKb2_7: TAdvGlowButton;
    btKb2_8: TAdvGlowButton;
    btKb2_9: TAdvGlowButton;
    btKb2_virg: TAdvGlowButton;
    btLimparQuantidade: TAdvGlowButton;
    qrBuscaItemvalor_unit_old2: TFloatField;
    qrBuscaItemid_garcom2: TIntegerField;
    qrBuscaItemnome_garcom2: TWideStringField;
    pnDadosProduto: TAdvGroupBox;
    DBText3: TDBText;
    DBText6: TDBText;
    btInserir: TAdvGlowButton;
    qrBuscaItemvalor_acrescimo: TFloatField;
    cxGridItensDBTableView1Column1: TcxGridDBColumn;
    Label4: TLabel;
    DBText4: TDBText;
    btnSair: TAdvGlowButton;
    Label12: TLabel;
    pnControlesOcultos: TPanel;
    Label6: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    btFecharMesa: TAdvGlowButton;
    btCancelarMesa: TAdvGlowButton;
    btSalva: TAdvGlowButton;
    btInserirItem: TAdvGlowButton;
    Label16: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    acConfiguracoes: TAction;
    Label15: TLabel;
    ACBrBAL1: TACBrBAL;
    qrBuscaItemb_peso_balanca: TBooleanField;
    qrVendaid_vendedor: TIntegerField;
    qrBuscaItemid_categoria: TIntegerField;
    qrBuscaItemb_exige_alterar_preco_venda: TBooleanField;
    qrVendaItemdata_hora_lancamento: TDateTimeField;
    qrBuscaItemtara_balanca: TFloatField;
    pnTopo: TPanel;
    pn4Rodape: TPanel;
    pnListaProdutos: TPanel;
    pnCategoria: TPanel;
    pnProdutos: TPanel;
    pn3Topo2: TPanel;
    pnNavegProdutos: TPanel;
    Label5: TLabel;
    pn1Esquerda: TPanel;
    pn2Direita: TPanel;
    Label7: TLabel;
    pnMeio: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    pnNumerico: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    acVendaemespera: TAction;
    Label2: TLabel;
    AdvGlowButton3: TAdvGlowButton;
    Label8: TLabel;
    imgProduto: TImage;
    qrBuscaItemarquivo_img: TWideStringField;
    Panel1: TPanel;
    edQuantidade: TcxDBCurrencyEdit;
    lbQuantidade: TLabel;
    edValor: TcxDBCurrencyEdit;
    lbValorUnitario: TLabel;
    DBText9: TDBText;
    Label14: TLabel;
    pnCodProduto: TPanel;
    Label17: TLabel;
    edCodProduto: TcxButtonEdit;
    cdsOpcionais: TClientDataSet;
    cdsOpcionaisid_opcional: TIntegerField;
    cdsOpcionaisdescricao: TStringField;
    cdsOpcionaisvalor: TFloatField;
    cdsOpcionaistotal_opcionais: TAggregateField;
    cdsOpcionaistipo: TIntegerField;
    qrVendaItemOpcionaltipo: TIntegerField;
    constructor Create(sender: tcomponent); reintroduce;
    procedure NovoRegistro;
    procedure btnSairClick(sender: TObject);
    procedure acAberturaVendaExecute(sender: TObject);
    procedure ValidaAcoesVenda;
    procedure dsVendaDataChange(sender: TObject; Field: TField);
    function ValidaInsercaoProduto(texto: string; out quantidade: double;
      out inserir_diretamente: boolean): boolean;
    procedure qrBuscaItemCalcFields(DataSet: TDataSet);
    procedure AtualizaTotalVenda;
    procedure edCodProdutoKeyDown(sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acCancelaItemExecute(sender: TObject);
    procedure CarregaParametrosConfig;
    procedure acConsultarProdutoExecute(sender: TObject);
    procedure acCancelarVendaExecute(sender: TObject);
    procedure qrVendaAfterOpen(DataSet: TDataSet);
    procedure qrVendaAfterClose(DataSet: TDataSet);
    procedure FormClose(sender: TObject; var Action: TCloseAction);
    procedure acFecharVendaExecute(sender: TObject);
    procedure acDescontoItemExecute(sender: TObject);
    procedure InsereVendaItem(id_material, nro_item: integer;
      qtde, valor_unit, valor_total: double; tamanho: string;
      venda_por_tamanho: boolean; observacao: string; cod_impressora: integer;
      id_categoria: integer; item_fracionado: integer = 0);
    procedure edValorKeyDown(sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edQuantidadeKeyDown(sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GuardaPosicaoComponentes;
    procedure RearranjaComponentes;
    procedure FormResize(sender: TObject);
    procedure acAbreBuscaClienteExecute(sender: TObject);
    procedure qrBuscaItemAfterOpen(DataSet: TDataSet);
    procedure acObservacaoItemExecute(sender: TObject);
    procedure acOpcionaisItemExecute(sender: TObject);
    function NovoNumeroVenda: integer;
    procedure acInsereProdutoFracionadoExecute(sender: TObject);
    procedure edCodProdutoExit(sender: TObject);
    procedure cxGrid2DBTableView1StylesGetContentStyle
      (sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure qrVendaItemAfterRefresh(DataSet: TDataSet);
    procedure qrVendaItemAfterOpen(DataSet: TDataSet);
    procedure qrVendaItemAfterClose(DataSet: TDataSet);
    procedure FormShow(sender: TObject);
    procedure acAbreGavetaExecute(sender: TObject);
    procedure DBCtrlGridCategoriaPaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: integer);
    procedure btKb1_0Click(sender: TObject);
    procedure btKb1_1Click(sender: TObject);
    procedure btKb1_2Click(sender: TObject);
    procedure btKb1_3Click(sender: TObject);
    procedure btKb1_4Click(sender: TObject);
    procedure btKb1_5Click(sender: TObject);
    procedure btKb1_6Click(sender: TObject);
    procedure btKb1_7Click(sender: TObject);
    procedure btKb1_8Click(sender: TObject);
    procedure btKb1_9Click(sender: TObject);
    procedure btKb3_BackSpaceClick(sender: TObject);
    procedure btKb3_VIRGClick(sender: TObject);
    procedure btKb3_PONTOClick(sender: TObject);
    procedure btKb3_AClick(sender: TObject);
    procedure btKb3_BClick(sender: TObject);
    procedure btKb3_CClick(sender: TObject);
    procedure btKb3_DClick(sender: TObject);
    procedure btKb3_FClick(sender: TObject);
    procedure btKb3_GClick(sender: TObject);
    procedure btKb3_EClick(sender: TObject);
    procedure btKb3_HClick(sender: TObject);
    procedure btKb3_IClick(sender: TObject);
    procedure btKb3_JClick(sender: TObject);
    procedure btKb3_KClick(sender: TObject);
    procedure btKb3_LClick(sender: TObject);
    procedure btKb3_MClick(sender: TObject);
    procedure btKb3_NClick(sender: TObject);
    procedure btKb3_OClick(sender: TObject);
    procedure btKb3_PClick(sender: TObject);
    procedure btKb3_QClick(sender: TObject);
    procedure btKb3_RClick(sender: TObject);
    procedure btKb3_SClick(sender: TObject);
    procedure btKb3_TClick(sender: TObject);
    procedure btKb3_UClick(sender: TObject);
    procedure btKb3_VClick(sender: TObject);
    procedure btKb3_WClick(sender: TObject);
    procedure btKb3_XClick(sender: TObject);
    procedure btKb3_YClick(sender: TObject);
    procedure btKb3_ZClick(sender: TObject);
    procedure btKb3_CEDILHClick(sender: TObject);
    procedure btKb3_PONTVIRGClick(sender: TObject);
    procedure btKb3_ESPACOClick(sender: TObject);
    procedure btKb3_EnterClick(sender: TObject);
    procedure btPagCategoriaAntClick(sender: TObject);
    procedure btPagCategoriaProxClick(sender: TObject);
    procedure btPagProdutoAntClick(sender: TObject);
    procedure btPagÇProdutoProxClick(sender: TObject);
    procedure DBCtrlGridCategoriaClick(sender: TObject);
    procedure btKb2_0Click(sender: TObject);
    procedure btKb2_1Click(sender: TObject);
    procedure btKb2_2Click(sender: TObject);
    procedure btKb2_3Click(sender: TObject);
    procedure btKb2_4Click(sender: TObject);
    procedure btKb2_5Click(sender: TObject);
    procedure btKb2_6Click(sender: TObject);
    procedure btKb2_7Click(sender: TObject);
    procedure btKb2_8Click(sender: TObject);
    procedure btKb2_9Click(sender: TObject);
    procedure btKb2_virgClick(sender: TObject);
    procedure DBCtrlGridProdutoClick(sender: TObject);
    procedure edQuantidadeClick(sender: TObject);
    procedure edValorClick(sender: TObject);
    procedure qrBuscaItemAfterScroll(DataSet: TDataSet);
    procedure btLimparQuantidadeClick(sender: TObject);
    procedure PressionaTeclaQuantidadeValor(tecla: string);
    procedure btInserirClick(sender: TObject);
    procedure cxGrid2DBTableView1Column1PropertiesButtonClick(sender: TObject;
      AButtonIndex: integer);
    procedure ACBrBAL1LePeso(Peso: double; Resposta: AnsiString);
    procedure AdvGlowButton1Click(sender: TObject);
    procedure AdvGlowButton2Click(sender: TObject);
    procedure acVendaemesperaExecute(sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure acPesquisarItemExecute(Sender: TObject);
    procedure DBCtrlGridProdutoPaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);

  type
    componente_posicao = record
      indice: integer;
      left: integer;
      top: integer;
      width: integer;
      height: integer;
      nome: string;
    end;

  private
    bExigeSenhaCancelamentoItem, bPermiteDescontoItem, b_flag_busca_valida,
      b_flag_venda_cancelada, bAlteraValorUnitarioItem,
      bExigeSenhaCancelamentoVenda, bSolicitaCliente, bUtilizaSelecaoPrecos,bModoTouch,
      bFracionadoMaiorValor, bPedirClienteItem1, bUtilizaGaveta,
      bExibeBuscaCodProduto, bOcultaObsTeclado, bUtilizaBalanca, bExigeVendedor,
      bAlteraValorUnitarioItemUsuario, b_imprimir_cozinha: boolean;
    designed_width, designed_height, i_where_busca_item_touch, iTimeOutBalanca,
      largura_cod_barras, largura_cod_barras_produto,
      cod_barras_digito_1: integer;

    Posicoes: TArray<componente_posicao>;

    observacao_item : string;
  const
    KEYEVENTF_KEYDOWN = 0;
  public

  end;

var
  frmVendaBalcaoTouch: TfrmVendaBalcaoTouch;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uFuncoes, uBuscaRegistro, uControleMesaItensAcoes,
  uPDVFechamento, uPDVCliente, uVendaSelecaoPreco, uVendaItemFracionado,
  uVendaSelecaoTamanho, uControleMesaFechamento, uVendaSelecaoVendedor,
  uObservacaoTouch, uVendaComplementoTouch, uPesquisavendabalcao, uConsCliente;

function TfrmVendaBalcaoTouch.NovoNumeroVenda: integer;
var
  qraux: TUniQuery;
  str_sql: string;
begin
  qraux := TUniQuery.Create(self);
  qraux.Connection := frmMenu.conexao;
  str_sql :=
    format('select coalesce(numero_cupom, 0)+1 from venda where ven_024=''B'' and emp_001=%d order by ven_001 desc',
    [recproj.iEmp]);
  ExecutaConsultaSQL(qraux, str_sql);
  if qraux.RecordCount > 1 then
    result := qraux.Fields[0].asinteger
  else
    result := 1
end;

procedure TfrmVendaBalcaoTouch.GuardaPosicaoComponentes;
var
  I, j: integer;
  comp: componente_posicao;
begin
  designed_width := self.width;
  designed_height := self.height;

  SetLength(Posicoes, self.ComponentCount);
  j := 0;
  for I := 0 to self.ComponentCount - 1 do
  begin
    if self.Components[I].Tag = 1 then
    begin
      comp.indice := I;
      comp.left := Tcontrol(self.Components[I]).left;
      comp.top := Tcontrol(self.Components[I]).top;
      comp.width := Tcontrol(self.Components[I]).width;
      comp.height := Tcontrol(self.Components[I]).height;
      comp.nome := self.Components[I].Name;
      Posicoes[j] := comp;
      j := j + 1;
    end;
  end;
  // remove o excesso
  SetLength(Posicoes, j);
end;

procedure TfrmVendaBalcaoTouch.FormClose(sender: TObject;
  var Action: TCloseAction);
var
  qry_aux: TUniQuery;
  str_sql: string;
begin
  // verifica se existe venda em aberto e se possui itens;
  if qrVenda.active then
  begin
    if qrVenda.State = dsEdit then
    begin
      qry_aux := TUniQuery.Create(self);
      qry_aux.Connection := frmMenu.conexao;
      str_sql :=
        format('select 1 from vendaitem where ven_001=%d and emp_001=%d',
        [qrVenda.fieldbyname('ven_001').asinteger, recproj.iEmp]);
      ExecutaConsultaSQL(qry_aux, str_sql);
      if qry_aux.RecordCount > 0 then
      begin
        if application.MessageBox
          ('A venda atual está em aberto, gostaria de cancelar?', 'Atenção',
          MB_ICONQUESTION + mb_yesno) = mrYes then
        begin
          acCancelarVenda.Execute;
          if not b_flag_venda_cancelada then
          begin
            qrVenda.Open;
            qrVenda.edit;
            abort;
          end;
        end
        else
          abort;
      end
      else
      // venda sem item, deleta a venda
      begin
        qrVenda.cancel;
        str_sql := format('delete from venda where ven_001=%d and emp_001=%d',
          [qrVenda.fieldbyname('ven_001').asinteger, recproj.iEmp]);
        ExecutaComandoSQL(str_sql);
      end;
    end;
  end;
end;

procedure TfrmVendaBalcaoTouch.FormResize(sender: TObject);
begin
  // RearranjaComponentes;
end;

procedure TfrmVendaBalcaoTouch.FormShow(sender: TObject);

begin

  if uppercase( copy(frmmenu.Caption, 1))='AGENTE'  then    // Empresa do Adans
  begin
//    recproj.sInfoDevSistema1 := 'Sistema desenvolvido por Onix System (11)2758+4600 / 98984-3407';
//    recproj.sInfoDevSistema2 := 'Sistema desenvolvido por OnixSystem '+ slinebreak +'Fones: (11)2758+4600 / 98984-3407';
//    recproj.sSiteDevSistema  := 'www.onixsystem.com.br';
  end;

  if uppercase( copy(frmmenu.Caption, 1))='INTEGRACAO'  then  // Empresa Rogerio
  begin
//    self.Caption := 'INTEGRAÇÃO | INTEGRAÇÃO C (11)2905-4918 / (11)94756-9617';
//    recproj.sInfoDevSistema1 := 'Sistema desenvolvido por INTEGRAÇÃO C (11)2905-4918 / (11)94756-9617 ';
//    recproj.sInfoDevSistema2 := 'Sistema desenvolvido por INTEGRAÇÃO C '+ slinebreak +'Fones: (11)2905-4918 /(11)94756-9617';
//    recproj.sSiteDevSistema  := 'www.integracaoc.com.br';
  end;

  if uppercase ( copy(frmmenu.Caption,1))='ELITEFOOD' THEN
  begin
    recproj.sInfoDevSistema1 := 'Sistema desenvolvido por ELITE STORY';
          recproj.sInfoDevSistema2 := 'Sistema desenvolvido por ELITE STORY';
          recproj.sSiteDevSistema  := '';
  end

end;

procedure TfrmVendaBalcaoTouch.RearranjaComponentes;
var
  I: integer;
  xfactor, yfactor: double;
begin
  xfactor := self.width / designed_width;
  yfactor := self.height / designed_height;
  for I := 0 to Length(Posicoes) - 1 do
  begin
    Tcontrol(self.Components[Posicoes[I].indice]).left :=
      round(Posicoes[I].left * xfactor);
    Tcontrol(self.Components[Posicoes[I].indice]).width :=
      round(Posicoes[I].width * xfactor);
    Tcontrol(self.Components[Posicoes[I].indice]).top :=
      round(Posicoes[I].top * yfactor);
    Tcontrol(self.Components[Posicoes[I].indice]).height :=
      round(Posicoes[I].height * yfactor);
  end;
end;

procedure TfrmVendaBalcaoTouch.CarregaParametrosConfig;
begin

  buscacampo(bAlteraValorUnitarioItemUsuario,
    'select b_alteracao_precou_venda from usuarios where usu_001=' +
    inttostr(recproj.iUsuario), '', false);

  bExigeSenhaCancelamentoItem :=
    LerBooleanConfig('CKEXIGIRSENHACANCELAMENTOITENSBALCAO',
    frmMenu.cdsCFG.FileName);

  bAlteraValorUnitarioItem := LerBooleanConfig('CKALTERARVALORUNITARIOBALCAO',
    frmMenu.cdsCFG.FileName);

  bPermiteDescontoItem := LerBooleanConfig('CKPERMITEDESCONTOITEMBALCAO',
    frmMenu.cdsCFG.FileName);

  bSolicitaCliente := LerBooleanConfig('CKSOLICITARCLIENTEVENDABALCAO',
    frmMenu.cdsCFG.FileName);

  bUtilizaSelecaoPrecos:= LerBooleanConfig('ckUtilizar_selecao_precos', frmMenu.cdsCFG.FileName);

  bFracionadoMaiorValor := LerBooleanConfig('CKFACIONADOMAIORVALORBALCAO',
    frmMenu.cdsCFG.FileName);

  bExigeSenhaCancelamentoVenda :=
    LerBooleanConfig('CKEXIGIRSENHACANCELAMENTOVENDABALCAO',
    frmMenu.cdsCFG.FileName);

  bUtilizaGaveta := LerBooleanConfig('CKUTILIZAGAVETA',
    frmMenu.cdsCFG.FileName);

  bModoTouch := LerBooleanConfig('CKBALCAOMODOTOUCH', frmMenu.cdsCFG.FileName);
  bExibeBuscaCodProduto := LerBooleanConfig('CKEXIBECODPRODUTOBALCAOTOUCH',
    frmMenu.cdsCFG.FileName);

  bOcultaObsTeclado := LerBooleanConfig('CKOCULTAOBSTECLADOB  ALCAOTOUCH',
    frmMenu.cdsCFG.FileName);

  bUtilizaBalanca := LerBooleanConfig('CKUTILIZABALANCA',
    frmMenu.cdsCFG.FileName)
    ;
  iTimeOutBalanca := LerIntegerConfig('EDBALANCATIMEOUT',
    frmMenu.cdsCFG.FileName);

  bExigeVendedor := LerBooleanConfig('CKEXIGEVENDEDORBALCAO',
    frmMenu.cdsCFG.FileName);

  largura_cod_barras := LerIntegerConfig('EDBALANCALARGURACODIGOBARRAS',
    frmMenu.cdsCFG.FileName);

  largura_cod_barras_produto :=
    LerIntegerConfig('EDBALANCALARGURACODIGOPRODUTO', frmMenu.cdsCFG.FileName);
  cod_barras_digito_1 := LerIntegerConfig('EDBALANCACODIGOBARRASDIGITOINICIAL',
    frmMenu.cdsCFG.FileName);

  b_imprimir_cozinha := not LerBooleanConfig('CKNAOIMPRIMIRCOZINHABALCAO',
    frmMenu.cdsCFG.FileName);
end;

procedure TfrmVendaBalcaoTouch.PressionaTeclaQuantidadeValor(tecla: string);
var
  texto_edit, texto_anterior, texto_posterior, componente: string;
  posicao, posicao_fim, posicao_virgula: integer;
begin
  if qrBuscaItem.active then
  begin
    if (qrBuscaItem.RecordCount > 0) then
    begin
      qrBuscaItem.edit;
      posicao := 0;

      try
        componente := lowercase(TcxCustomInnerTextEdit(activecontrol)
          .Parent.Name);
      except
        componente := '';
        exit;
      end;

      // executa apenas nos campos de quantidade ou valor
      if (componente = 'edquantidade') or (componente = 'edvalor') then
      begin
        posicao := TcxCustomInnerTextEdit(activecontrol).selstart;
        posicao_fim := TcxCustomInnerTextEdit(activecontrol).SelLength;
        posicao_virgula := pos(',', TcxCustomInnerTextEdit(activecontrol).Text);

        if tecla = ',' then
        begin
          if posicao >= posicao_virgula then
            exit;
          texto_anterior := copy(TcxCustomInnerTextEdit(activecontrol).Text, 1,
            posicao_virgula - 1);
          texto_posterior := copy(TcxCustomInnerTextEdit(activecontrol).Text,
            posicao_virgula + 1,
            Length(TcxCustomInnerTextEdit(activecontrol).Text));
        end
        else
        begin
          texto_anterior := copy(TcxCustomInnerTextEdit(activecontrol).Text,
            1, posicao);
          if posicao_fim = 0 then
            texto_posterior := copy(TcxCustomInnerTextEdit(activecontrol).Text,
              posicao + 1, Length(TcxCustomInnerTextEdit(activecontrol).Text))
          else
            texto_posterior := '';
        end;
        TcxCustomInnerTextEdit(activecontrol).Text := texto_anterior + tecla +
          texto_posterior;
        if (componente = 'edquantidade') then
          qrBuscaItem.fieldbyname('quantidade').AsFloat :=
            StrToFloat(TcxCustomInnerTextEdit(activecontrol).Text)
        else
          qrBuscaItem.fieldbyname('valor_unit').AsFloat :=
            StrToFloat(TcxCustomInnerTextEdit(activecontrol).Text);
        TcxCustomInnerTextEdit(activecontrol).selstart := posicao + 1;
      end
      else
      begin
        if edQuantidade.CanFocus then
        begin
          edQuantidade.SetFocus;
          edQuantidade.SelectAll;
          PressionaTeclaQuantidadeValor(tecla);
        end;
      end;
    end;
  end;
end;

procedure TfrmVendaBalcaoTouch.acAberturaVendaExecute(sender: TObject);
begin
  if qrVenda.State = dsEdit then
  begin
    application.MessageBox('Venda já encontra-se aberta!', 'Atenção',
      MB_ICONINFORMATION)
  end
  else
  begin
    NovoRegistro;
  end;
end;

procedure TfrmVendaBalcaoTouch.btInserirClick(sender: TObject);
var numero_item : integer;
    str_sql : string;
begin
  if qrVenda.active then
  begin
    if qrVenda.State <> dsEdit then
    begin
      application.MessageBox('A venda não encontra-se aberta!', 'Atenção',
        MB_ICONINFORMATION + MB_OK);
      abort;
    end;
  end
  else
    abort;
  // valida o item
  if qrBuscaItem.active then
  begin
    if qrBuscaItem.RecordCount < 1 then
    begin
      application.MessageBox('Não foi informado nenhum item a adicionar!',
        'Atenção', MB_ICONINFORMATION + MB_OK);
      if edCodProduto.CanFocus then
        edCodProduto.SetFocus;
      abort;
    end
    else
    begin
      // valida quantidade e valor unitário
      if qrBuscaItem.fieldbyname('quantidade').IsNull or
        (qrBuscaItem.fieldbyname('quantidade').AsFloat < 0.001) or
        (qrBuscaItem.fieldbyname('quantidade').AsFloat > 999999) then
      begin
        application.MessageBox('Quantidade inválida!', 'Atenção',
          MB_ICONINFORMATION + MB_OK);
        if edQuantidade.CanFocus then
          edQuantidade.SetFocus;
        abort;
      end;
      if (qrBuscaItem.fieldbyname('valor_unit').IsNull) or
        (qrBuscaItem.fieldbyname('valor_unit').AsFloat <= 0) or
        (qrBuscaItem.fieldbyname('valor_unit').AsFloat > 99999999) then
      begin
        application.MessageBox('Valor unitário inválido!', 'Atenção',
          MB_ICONINFORMATION + MB_OK);
        if edValor.CanFocus then
          edValor.SetFocus;
        abort;
      end;
    end;
  end
  else
  begin
    if edCodProduto.CanFocus then
      edCodProduto.SetFocus;
    abort;
  end;

  numero_item := qrBuscaItem.fieldbyname('ultimo_item').asinteger + 1;

  // insere o item
  InsereVendaItem(qrBuscaItem.fieldbyname('id_material').asinteger,
    numero_item,
    qrBuscaItem.fieldbyname('quantidade').AsFloat,
    qrBuscaItem.fieldbyname('valor_unit').AsFloat,
    qrBuscaItem.fieldbyname('valor_total').AsFloat,
    qrBuscaItem.fieldbyname('tamanho_padrao').asstring,
    qrBuscaItem.fieldbyname('b_venda_tamanho').asBoolean,
    observacao_item,
    qrBuscaItem.fieldbyname('cod_impressora').asinteger,
    qrBuscaItem.fieldbyname('id_categoria').asinteger);

  //inserir os opcionais
  cdsOpcionais.First;
  str_sql := ' insert into vendaitemopcional (id_venda, id_empresa, id_vendaitem, id_opcional) '+
             ' values (:id_venda, :id_empresa, :id_vendaietem, :id_opcional)';
  while not cdsOpcionais.eof do
  begin
    ExecutaComandoSQL(str_sql, vararrayof([
                      qrVenda.fieldbyname('ven_001').asinteger,
                      recproj.iEmp,
                      numero_item,
                      cdsOpcionais.FieldByName('id_opcional').AsInteger]));
    cdsOpcionais.Next;
  end;
  cdsOpcionais.EmptyDataSet;

  // informa o cliente apenas no item1, caso esteja configurado
  if bPedirClienteItem1 then
  begin
    acAbreBuscaCliente.Execute;
    bPedirClienteItem1 := false;
  end;

  // atualiza o total da venda
  AtualizaTotalVenda;
  qrBuscaItem.close;
  observacao_item := '';
  edCodProduto.clear;
  if edCodProduto.CanFocus then
    edCodProduto.SetFocus;

  qrVendaItem.Refresh;

end;

procedure TfrmVendaBalcaoTouch.btKb1_0Click(sender: TObject);
begin
  keybd_event(48, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(48, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb1_1Click(sender: TObject);
begin
  keybd_event(49, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(49, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb1_2Click(sender: TObject);
begin
  keybd_event(50, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(50, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb1_3Click(sender: TObject);
begin
  keybd_event(51, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(51, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb1_4Click(sender: TObject);
begin
  keybd_event(52, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(52, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb1_5Click(sender: TObject);
begin
  keybd_event(53, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(53, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb1_6Click(sender: TObject);
begin
  keybd_event(54, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(54, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb1_7Click(sender: TObject);
begin
  keybd_event(55, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(55, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb1_8Click(sender: TObject);
begin
  keybd_event(56, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(56, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb1_9Click(sender: TObject);
begin
  keybd_event(57, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(57, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb2_0Click(sender: TObject);
begin
  PressionaTeclaQuantidadeValor('0');
  // keybd_event(48, 0, KEYEVENTF_KEYDOWN, 0);
  // keybd_event(48, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb2_1Click(sender: TObject);
var
  posicao, posicao_fim, posicao_virgula: integer;
  componente, texto_anterior, texto_posterior: string;
begin
  PressionaTeclaQuantidadeValor('1');
  // keybd_event(49, 0, KEYEVENTF_KEYDOWN, 0);
  // keybd_event(49, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb2_2Click(sender: TObject);
begin
  PressionaTeclaQuantidadeValor('2');

end;

procedure TfrmVendaBalcaoTouch.btKb2_3Click(sender: TObject);
begin
  PressionaTeclaQuantidadeValor('3');

end;

procedure TfrmVendaBalcaoTouch.btKb2_4Click(sender: TObject);
begin
  PressionaTeclaQuantidadeValor('4');

end;

procedure TfrmVendaBalcaoTouch.btKb2_5Click(sender: TObject);
begin
  PressionaTeclaQuantidadeValor('5');

end;

procedure TfrmVendaBalcaoTouch.btKb2_6Click(sender: TObject);
begin
  PressionaTeclaQuantidadeValor('6');

end;

procedure TfrmVendaBalcaoTouch.btKb2_7Click(sender: TObject);
begin
  PressionaTeclaQuantidadeValor('7');

end;

procedure TfrmVendaBalcaoTouch.btKb2_8Click(sender: TObject);
begin
  PressionaTeclaQuantidadeValor('8');

end;

procedure TfrmVendaBalcaoTouch.btKb2_9Click(sender: TObject);
begin
  PressionaTeclaQuantidadeValor('9');

end;

procedure TfrmVendaBalcaoTouch.btKb2_virgClick(sender: TObject);
var
  posicao, posicao_fim, posicao_virgula: integer;
  componente, texto_anterior, texto_posterior: string;
begin
  PressionaTeclaQuantidadeValor(',');

end;

procedure TfrmVendaBalcaoTouch.btKb3_AClick(sender: TObject);
begin
  keybd_event(65, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(65, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_BackSpaceClick(sender: TObject);
begin
  keybd_event(vk_back, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(vk_back, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_BClick(sender: TObject);
begin
  keybd_event(66, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(66, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_CClick(sender: TObject);
begin
  keybd_event(67, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(67, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_CEDILHClick(sender: TObject);
begin
  keybd_event(186, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(186, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_DClick(sender: TObject);
begin
  keybd_event(68, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(68, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_EClick(sender: TObject);
begin
  keybd_event(69, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(69, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_EnterClick(sender: TObject);
begin
  keybd_event(VK_RETURN, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(VK_RETURN, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_ESPACOClick(sender: TObject);
begin
  keybd_event(vk_space, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(vk_space, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_FClick(sender: TObject);
begin
  keybd_event(70, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(70, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_GClick(sender: TObject);
begin
  keybd_event(71, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(71, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_HClick(sender: TObject);
begin
  keybd_event(72, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(72, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_IClick(sender: TObject);
begin
  keybd_event(73, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(73, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_JClick(sender: TObject);
begin
  keybd_event(74, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(74, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_KClick(sender: TObject);
begin
  keybd_event(75, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(75, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_LClick(sender: TObject);
begin
  keybd_event(76, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(76, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_MClick(sender: TObject);
begin
  keybd_event(77, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(77, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_NClick(sender: TObject);
begin
  keybd_event(78, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(78, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_OClick(sender: TObject);
begin
  keybd_event(79, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(79, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_PClick(sender: TObject);
begin
  keybd_event(80, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(80, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_PONTOClick(sender: TObject);
begin
  keybd_event(190, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(190, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_PONTVIRGClick(sender: TObject);
begin
  keybd_event(191, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(191, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_QClick(sender: TObject);
begin
  keybd_event(81, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(81, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_RClick(sender: TObject);
begin
  keybd_event(82, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(82, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_SClick(sender: TObject);
begin
  keybd_event(83, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(83, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_TClick(sender: TObject);
begin
  keybd_event(84, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(84, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_UClick(sender: TObject);
begin
  keybd_event(85, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(85, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_VClick(sender: TObject);
begin
  keybd_event(86, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(86, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_VIRGClick(sender: TObject);
begin
  keybd_event(110, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(110, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_WClick(sender: TObject);
begin
  keybd_event(87, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(87, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_XClick(sender: TObject);
begin
  keybd_event(88, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(88, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_YClick(sender: TObject);
begin
  keybd_event(89, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(89, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btKb3_ZClick(sender: TObject);
begin
  keybd_event(90, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(90, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaBalcaoTouch.btLimparQuantidadeClick(sender: TObject);
var
  componente: string;
begin
  if activecontrol is TcxCustomInnerTextEdit then
  begin
    componente := lowercase(TcxCustomInnerTextEdit(activecontrol).Parent.Name);
    if componente = 'edquantidade' then
    begin
      if qrBuscaItem.State = dsEdit then
        qrBuscaItem.fieldbyname('quantidade').AsFloat := 1;
    end
    else if componente = 'edvalor' then
    begin
      if qrBuscaItem.State = dsEdit then
        qrBuscaItem.fieldbyname('valor_unit').AsFloat := 0;
    end
    else
      TcxCustomInnerTextEdit(activecontrol).clear;
    TcxCustomInnerTextEdit(activecontrol).SelectAll;
  end
  else if activecontrol is TMemo then
    TMemo(activecontrol).clear;
end;

procedure TfrmVendaBalcaoTouch.btnSairClick(sender: TObject);
begin
  close;
end;

procedure TfrmVendaBalcaoTouch.btPagCategoriaAntClick(sender: TObject);
var
  I, mult: integer;
begin
  if bOcultaObsTeclado then
    mult := 11
  else
    mult := 8;

  if qrCategoria.active then
  begin
    for I := 0 to mult do
      qrCategoria.Prior;
  end;
end;

procedure TfrmVendaBalcaoTouch.btPagCategoriaProxClick(sender: TObject);
var
  I, mult: integer;
begin
  if bOcultaObsTeclado then
    mult := 11
  else
    mult := 8;
  if qrCategoria.active then
  begin
    for I := 0 to mult do
      qrCategoria.next;
  end;
end;

procedure TfrmVendaBalcaoTouch.btPagProdutoAntClick(sender: TObject);
var
  I, mult: integer;
begin
  if bOcultaObsTeclado then
    mult := 11
  else
    mult := 8;
  if qrBuscaItem.active then
  begin
    for I := 0 to mult do
      qrBuscaItem.Prior;
  end;
end;

procedure TfrmVendaBalcaoTouch.btPagÇProdutoProxClick(sender: TObject);
var
  I, mult: integer;
begin
  if bOcultaObsTeclado then
    mult := 11
  else
    mult := 8;
  if qrBuscaItem.active then
  begin
    for I := 0 to mult do
      qrBuscaItem.next;
  end;
end;

constructor TfrmVendaBalcaoTouch.Create(sender: tcomponent);
var
  str_sql: string;
  qry_aux: TUniQuery;
  acesso: boolean;
begin
  inherited Create(sender);
  buscacampo(acesso, 'select b_acesso_venda_balcao from usuarios where usu_001=' + inttostr(recproj.iUsuario), '', false);

  frmMenu.VerificaPermissaoAcesso(acesso);
  frmMenu.VerificaCaixaAberto;

  CarregaParametrosConfig;

  qrVenda.close;
  qrVendaItem.close;
  qrVenda.ParamByName('id_empresa').asinteger := recproj.iEmp;

  qry_aux := TUniQuery.Create(self);
  qry_aux.Connection := frmMenu.conexao;
  // verifica se existe venda aberta para o pdv aberto (caso a ultima venda no tenha sido concluída)
  str_sql :=
    format('select ven_001 from venda where sit_001=0 and emp_001=%d and terminal_abertura=%s',
    [recproj.iEmp, QuotedStr(NomeDoTerminal)]);
  ExecutaConsultaSQL(qry_aux, str_sql);
  if qry_aux.RecordCount > 0 then
  begin
    qrVenda.ParamByName('id_venda').asinteger := qry_aux.Fields[0].asinteger;
    qrVenda.Open;
    qrVenda.edit;
  end;

  // GuardaPosicaoComponentes;

  edValor.Enabled := bAlteraValorUnitarioItem and
    bAlteraValorUnitarioItemUsuario;
  b_flag_busca_valida := false;

  if bModoTouch then
  begin
    qrCategoria.close;
    qrCategoria.ParamByName('id_empresa').asinteger := recproj.iEmp;
    qrCategoria.Open;

    // pnControlesTouch.Visible := true;
  end;

  if not bExibeBuscaCodProduto then
  begin
    pnCodProduto.Visible := false;
    btPagCategoriaAnt.height := btPagCategoriaAnt.height +
      pnCodProduto.height - 5;
    btPagCategoriaProx.height := btPagCategoriaProx.height +
      pnCodProduto.height - 5;
    DBCtrlGridCategoria.height := DBCtrlGridCategoria.height +
      pnCodProduto.height - 5;
    DBCtrlGridCategoria.top := 10;
    btPagCategoriaProx.top := 10;
    btPagCategoriaAnt.top := 10;
  end;

  if bOcultaObsTeclado then
  begin
    lbObservacoes.Visible := false;
    grKeyboard3.Visible := false;

    pnDadosProduto.left := 604;
    pnDadosProduto.width := 411;

    cxGridItens.left := 604;
    cxGridItens.width := 411;
    cxGridItens.top := 146;
    cxGridItens.height := 519;

    // pnBuscaProduto.Width := 590;

    DBCtrlGridCategoria.ColCount := 4;
    DBCtrlGridProduto.ColCount := 4;

    DBCtrlGridCategoria.width := 531;
    DBCtrlGridProduto.width := 531;

    pnlAcoes.width := 597;
  end
  else
  begin
    lbObservacoes.Visible := true;
    grKeyboard3.Visible := true;

    pnDadosProduto.left := 498;
    pnDadosProduto.width := 517;

    cxGridItens.left := 498;
    cxGridItens.width := 517;
    cxGridItens.top := 438;
    cxGridItens.height := 227;

    // pnBuscaProduto.Width := 485;

    DBCtrlGridCategoria.ColCount := 10;
    DBCtrlGridProduto.ColCount := 4;

    DBCtrlGridCategoria.width := 426;
    DBCtrlGridProduto.width := 426;

    pnlAcoes.width := 492;

  end;

  i_where_busca_item_touch := qrBuscaItem.SQL.count;

  if bUtilizaBalanca then
  begin
    ACBrBAL1.Modelo := TACBrBALModelo(LerIntegerConfig('CBBALANCAMODELO',
      frmMenu.cdsCFG.FileName));
    ACBrBAL1.Device.HandShake :=
      TACBrHandShake(LerIntegerConfig('CBBALANCAHANDSHAKING',
      frmMenu.cdsCFG.FileName));
    ACBrBAL1.Device.Parity := TACBrSerialParity
      (LerIntegerConfig('CBBALANCAPARITY', frmMenu.cdsCFG.FileName));
    ACBrBAL1.Device.Stop :=
      TACBrSerialStop(LerIntegerConfig('CBBALANCASTOPBITS',
      frmMenu.cdsCFG.FileName));
    ACBrBAL1.Device.Data := StrToInt(LerStringConfig('CBBALANCADATABITS',
      frmMenu.cdsCFG.FileName));
    ACBrBAL1.Device.Baud := StrToInt(LerStringConfig('CBBALANCABAUD',
      frmMenu.cdsCFG.FileName));
    ACBrBAL1.Device.Porta := LerStringConfig('CBBALANCAPORTASERIAL',
      frmMenu.cdsCFG.FileName);
    ACBrBAL1.ArqLOG := format('%sLog\Balanca\Balanca_%s.log',
      [ExtractFilePath(application.ExeName), FormatDateTime('ddmmyyyy', Date)]);
    // cria o diretório de log
    if Not DirectoryExists(ExtractFilePath(application.ExeName) + 'Log\Balanca')
    then
      ForceDirectories(ExtractFilePath(application.ExeName) + 'Log\Balanca');
  end;

  cdsOpcionais.CreateDataSet;

end;

procedure TfrmVendaBalcaoTouch.cxGrid2DBTableView1Column1PropertiesButtonClick
  (sender: TObject; AButtonIndex: integer);
var
  continua, fracionado: boolean;
  str_sql, msg: string;
begin
  continua := true;
  // verifica se é item fracionado
  fracionado := not((qrVendaItem.fieldbyname('item_fracionado').IsNull) or
    (qrVendaItem.fieldbyname('item_fracionado').asinteger = 0));
  if fracionado then
    msg := 'Este item faz parte de uma composição (item fracionado), todos os itens serão removidos. Deseja continuar?'
  else
    msg := 'Deseja exluir o registro?';

  continua := application.MessageBox(pchar(msg), 'Atenção',
    MB_ICONINFORMATION + mb_yesno) = mrYes;

  if continua then
  begin
    if fracionado then
    begin
      str_sql :=
        ' update vendaitem set sit_001=2, id_usuario_cancelamento=:id_usuario, ite_006=:obs '
        + ' where emp_001=:emp and ven_001=:id_venda and item_fracionado=:nro_item ';
      ExecutaComandoSQL(str_sql,
        vararrayof([recproj.iUsuario, 'Cancelamento item  - Balcão Touch',
        recproj.iEmp, qrVenda.fieldbyname('ven_001').asinteger,
        qrVendaItem.fieldbyname('item_fracionado').asinteger]));

    end
    else
    begin
      str_sql :=
        ' update vendaitem set sit_001=2, id_usuario_cancelamento=:id_usuario, ite_006=:obs '
        + ' where emp_001=:emp and ven_001=:id_venda and ite_001=:nro_item ';
      ExecutaComandoSQL(str_sql,
        vararrayof([recproj.iUsuario, 'Cancelamento item  - Balcão Touch',
        recproj.iEmp, qrVenda.fieldbyname('ven_001').asinteger,
        qrVendaItem.fieldbyname('nro_item').asinteger]));

    end;

  end;
  AtualizaTotalVenda;
  qrVendaItem.Refresh;
end;

procedure TfrmVendaBalcaoTouch.cxGrid2DBTableView1StylesGetContentStyle
  (sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if ARecord.Values[cxGridItensDBTableView1Desconto.Index] <> 0 then
    AStyle := frmMenu.cxDesconto;

end;

procedure TfrmVendaBalcaoTouch.DBCtrlGridCategoriaClick(sender: TObject);
var
  filtro: string;
begin
  edCodProduto.clear;
  qrBuscaItem.close;
  filtro := ' and m.cat_001 = :id_categoria order by m.mat_003 ';
  if i_where_busca_item_touch = qrBuscaItem.SQL.count then
    qrBuscaItem.SQL.Add(filtro)
  else
    qrBuscaItem.SQL[i_where_busca_item_touch] := filtro;

  qrBuscaItem.ParamByName('id_empresa').asinteger   := recproj.iEmp;
  qrBuscaItem.ParamByName('id_venda').asinteger     := qrVenda.fieldbyname('ven_001').asinteger;
  qrBuscaItem.ParamByName('id_categoria').asinteger := qrCategoria.fieldbyname('id_categoria').asinteger;
  qrBuscaItem.Open;

end;

procedure TfrmVendaBalcaoTouch.DBCtrlGridCategoriaPaintPanel
  (DBCtrlGrid: TDBCtrlGrid; Index: integer);
var
  arquivo: string;
begin
  if qrCategoria.active then
  begin
    if qrCategoria.RecordCount > 0 then
    begin
      arquivo := qrCategoria.fieldbyname('arquivo_img').asstring;
      if FileExists(arquivo) and qrCategoria.fieldbyname('b_exibir_icone').asBoolean
      then
      begin
        imgCategoria.Picture.LoadFromFile(arquivo);
      end
      else
        imgCategoria.Picture := nil;

      if Index = DBCtrlGridCategoria.PanelIndex then
        lbCategoria.Style.Font.Style := [fsBold]
      else
        lbCategoria.Style.Font.Style := [];
    end;
  end;
end;

procedure TfrmVendaBalcaoTouch.DBCtrlGridProdutoClick(sender: TObject);
var
  tamanho: string;
  valor_happy: double;
begin
  if not qrVenda.active then
    acAberturaVenda.Execute;
  if qrBuscaItem.active then
  begin
    if qrBuscaItem.RecordCount > 0 then
    begin

      edValor.Enabled := bAlteraValorUnitarioItem and bAlteraValorUnitarioItemUsuario;

      if not edValor.Enabled then
        edValor.Enabled := qrBuscaItem.fieldbyname('b_exige_alterar_preco_venda').asBoolean;
      qrBuscaItem.edit;
      qrBuscaItem.FieldByName('quantidade').AsFloat := 1;
      edQuantidade.Enabled := true;

      //Verifica Happy Hour - Bruno (12-04-2018)
      if BuscaHappyHour('B', qrBuscaItem.FieldByName('id_material').AsInteger, valor_happy) then
        qrBuscaItem.FieldByName('valor_unit').AsFloat:= valor_happy
      else
      begin
        if bUtilizaSelecaoPrecos then
        begin
          frmVendaSelecaoPreco := TfrmVendaSelecaoPreco.Create(self, qrBuscaItem.fieldbyname('id_material').asinteger);

          if frmVendaSelecaoPreco.qrTamanhoMaterial.RecordCount > 1 then
            frmVendaSelecaoPreco.ShowModal;

          if frmVendaSelecaoPreco.Tag = 1 then
          begin
            qrBuscaItem.fieldbyname('valor_unit').AsFloat :=
              frmVendaSelecaoPreco.valor;
          end;
        end;
      end;

      // verifica se o item é vendido por tamanho
      if qrBuscaItem.fieldbyname('b_venda_tamanho').asBoolean then
      begin
        frmVendaSelecaoTamanho := TfrmVendaSelecaoTamanho.Create(self,
          qrBuscaItem.fieldbyname('id_material').asinteger);
        frmVendaSelecaoTamanho.ShowModal;
        if frmVendaSelecaoTamanho.Tag = 1 then
        begin
          tamanho := frmVendaSelecaoTamanho.tamanho;
          qrBuscaItem.fieldbyname('tamanho_padrao').asstring := tamanho;
          if tamanho = 'P' then
          begin
            qrBuscaItem.fieldbyname('descricao').asstring :=
              qrBuscaItem.fieldbyname('descricao_p').asstring;
            qrBuscaItem.fieldbyname('valor_unit').AsFloat :=
              qrBuscaItem.fieldbyname('valor_tam_p').AsFloat;
          end
          else if tamanho = 'M' then
          begin
            qrBuscaItem.fieldbyname('descricao').asstring :=
              qrBuscaItem.fieldbyname('descricao_m').asstring;
            qrBuscaItem.fieldbyname('valor_unit').AsFloat :=
              qrBuscaItem.fieldbyname('valor_tam_m').AsFloat;
          end
          else if tamanho = 'G' then
          begin
            qrBuscaItem.fieldbyname('descricao').asstring :=
              qrBuscaItem.fieldbyname('descricao_g').asstring;
            qrBuscaItem.fieldbyname('valor_unit').AsFloat :=
              qrBuscaItem.fieldbyname('valor_tam_g').AsFloat;
          end
          else if tamanho = 'GG' then
          begin
            qrBuscaItem.fieldbyname('descricao').asstring :=
              qrBuscaItem.fieldbyname('descricao_gg').asstring;
            qrBuscaItem.fieldbyname('valor_unit').AsFloat :=
              qrBuscaItem.fieldbyname('valor_tam_gg').AsFloat;
          end
          else if tamanho = 'E' then
          begin
            qrBuscaItem.fieldbyname('descricao').asstring :=
              qrBuscaItem.fieldbyname('descricao_extra').asstring;
            qrBuscaItem.fieldbyname('valor_unit').AsFloat :=
              qrBuscaItem.fieldbyname('valor_tam_extra').AsFloat;
          end
          else
            qrBuscaItem.fieldbyname('descricao').asstring :=
              qrBuscaItem.fieldbyname('descricao_old').asstring;
        end;
        FreeAndNil(frmVendaSelecaoTamanho);
      end;

      // Verifica se o item é de peso, e não utiliza a balança para pesagem  05.11.2017 Rafael
      if qrbuscaitem.FieldByName('b_peso_balanca').AsBoolean and (not butilizabalanca) then
      begin
         frmVendabalcaotouchbalanca:=TfrmVendabalcaotouchbalanca.Create(self,qrbuscaitem.FieldByName('id_material').AsInteger);

         frmVendabalcaotouchbalanca.ShowModal;
         if frmvendabalcaotouchbalanca.Tag=1 then
         begin
            qrbuscaitem.FieldByName('quantidade').AsFloat:=frmvendabalcaotouchbalanca.quantidade;
            btinserir.Click;
         end;

         FreeAndNil(frmvendabalcaotouchbalanca);

      end
      // verifica se o item é vendido por peso e se a balança está habilitada
      else if qrBuscaItem.fieldbyname('b_peso_balanca').asBoolean and bUtilizaBalanca  then
      begin
        qrBuscaItem.edit;
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
            application.MessageBox
              (pchar('Erro ao obter o peso da balança! Verifique se a balança está ligada e conectada ao computador e se as configurações estão corretas.'
              + #13#10 + E.Message + E.ClassName), 'Atenção', MB_ICONERROR);
            qrBuscaItem.fieldbyname('quantidade').AsFloat := 0;
          end;
        end;

        if qrBuscaItem.fieldbyname('quantidade').AsFloat <= 0 then
        begin
          // qrBuscaItem.close;
          observacao_item := '';
          edCodProduto.clear;
          if edCodProduto.CanFocus then
            edCodProduto.SetFocus;
          abort;
        end;
      end;

      if edQuantidade.CanFocus then
      begin
        edQuantidade.SetFocus;
        edQuantidade.SelectAll;
      end;
    end;
  end;
end;

procedure TfrmVendaBalcaoTouch.DBCtrlGridProdutoPaintPanel(
 DBCtrlGrid: TDBCtrlGrid; Index: Integer);
var arquivo : string;
begin
  arquivo := qrBuscaItem.FieldByName('arquivo_img').AsString;
  if fileexists(arquivo) then
  begin
    imgProduto.Picture.LoadFromFile(arquivo);

    if imgProduto.Height < 64 then
      imgProduto.Width := imgProduto.Height
    else
     imgProduto.Width := 64;
  end
  else
  begin
    imgProduto.Picture := nil;
    imgProduto.Width := 1;
  end;

  if Index = DBCtrlGridProduto.PanelIndex  then
    lbDescProduto.Style.Font.Style := [fsBold]
  else
    lbDescProduto.Style.Font.Style := [];
end;

procedure TfrmVendaBalcaoTouch.dsVendaDataChange(sender: TObject;
  Field: TField);
begin
  ValidaAcoesVenda;
end;

procedure TfrmVendaBalcaoTouch.InsereVendaItem(id_material, nro_item: integer;
  qtde, valor_unit, valor_total: double; tamanho: string;
  venda_por_tamanho: boolean; observacao: string; cod_impressora: integer;
  id_categoria: integer; item_fracionado: integer = 0);
var
  desconto, desconto_calc, total_calc: double;
  tipo_desconto: integer;
begin
  // valida quantidade e valor unitário
  if (qtde < 0.001) or (qtde > 999999) then
  begin
    application.MessageBox('Quantidade inválida!', 'Atenção',
      MB_ICONINFORMATION + MB_OK);
    if edQuantidade.CanFocus then
      edQuantidade.SetFocus; // else edCodProduto.SetFocus;
    abort;
  end;
  if (valor_unit <= 0) or (valor_unit > 99999999) then
  begin
    application.MessageBox('Valor unitário inválido!', 'Atenção',
      MB_ICONINFORMATION + MB_OK);
    if edValor.CanFocus then
      edValor.SetFocus;
    abort;
  end;
  qrInsereItem.ParamByName('emp').asinteger := recproj.iEmp;
  qrInsereItem.ParamByName('id_venda').asinteger :=
    qrVenda.fieldbyname('ven_001').asinteger;
  qrInsereItem.ParamByName('id_material').asinteger := id_material;
  qrInsereItem.ParamByName('quantidade').AsFloat := qtde;
  qrInsereItem.ParamByName('quantidade_impressao').AsFloat := qtde;
  qrInsereItem.ParamByName('valor_unit').AsFloat := valor_unit;
  qrInsereItem.ParamByName('valor_total').AsFloat := valor_total;
  qrInsereItem.ParamByName('nro_item').asinteger := nro_item;
  qrInsereItem.ParamByName('tamanho').asstring := tamanho;
  qrInsereItem.ParamByName('observacao').asstring := observacao;
  qrInsereItem.ParamByName('b_venda_tamanho').asBoolean := venda_por_tamanho;
  qrInsereItem.ParamByName('cod_impressora').asinteger := cod_impressora;
  qrInsereItem.ParamByName('desconto').AsFloat := 0;
  if item_fracionado = 0 then
    qrInsereItem.ParamByName('item_fracionado').value := null
  else
    qrInsereItem.ParamByName('item_fracionado').value := item_fracionado;

  // antes de postar, verifica se existe promoção
  if BuscaPromocao(venda_por_tamanho, tamanho, 'B', id_material, desconto, tipo_desconto) then
  begin
    calculaDescontoItem(tipo_desconto, desconto, qtde, valor_unit, 0, desconto_calc, total_calc);
    qrInsereItem.ParamByName('desconto').AsFloat := desconto_calc;
    qrInsereItem.ParamByName('valor_total').AsFloat := total_calc;
  end;

  qrInsereItem.Execute;

  frmMenu.AvisaEsoqueMinimo(id_material, 'B', qtde);

  qrVendaItem.Refresh;
  b_flag_busca_valida := false;
end;

procedure TfrmVendaBalcaoTouch.edCodProdutoExit(sender: TObject);
var
  qtde, valor_happy: double;
  inserir: boolean;
begin
  if trim(edCodProduto.Text) = '' then
    exit;
  if not qrVenda.active then
    acAberturaVenda.Execute;

  if ValidaInsercaoProduto(trim(edCodProduto.Text), qtde, inserir) then
  begin
    b_flag_busca_valida := true;
    qrBuscaItem.edit;
    qrBuscaItem.fieldbyname('quantidade').AsFloat := qtde;

    //Verifica Happy Hour - Bruno (12-04-2018)
    if BuscaHappyHour('B', qrBuscaItem.FieldByName('id_material').AsInteger, valor_happy) then
      qrBuscaItem.FieldByName('valor_unit').AsFloat:= valor_happy
    else
    begin
      if bUtilizaSelecaoPrecos then
      begin
        frmVendaSelecaoPreco := TfrmVendaSelecaoPreco.Create(self, qrBuscaItem.fieldbyname('id_material').asinteger);

        if frmVendaSelecaoPreco.qrTamanhoMaterial.RecordCount > 1 then
          frmVendaSelecaoPreco.ShowModal;

        if frmVendaSelecaoPreco.Tag = 1 then
        begin
          qrBuscaItem.fieldbyname('valor_unit').AsFloat :=
            frmVendaSelecaoPreco.valor;
        end;
      end;
    end;

    if (edValor.Enabled or edQuantidade.Enabled) and (not inserir) then
    begin
      if edValor.CanFocus then
        edValor.SetFocus
      else if edQuantidade.CanFocus then
        edQuantidade.SetFocus
      else
        inserir := true;
    end
    else
      inserir := true;

    if inserir then
      btInserir.Click;

  end
  else
  begin
    b_flag_busca_valida := false;
    edCodProduto.clear;
    if edCodProduto.CanFocus then
      edCodProduto.SetFocus;
  end;
end;

procedure TfrmVendaBalcaoTouch.edCodProdutoKeyDown(sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmVendaBalcaoTouch.edQuantidadeClick(sender: TObject);
begin
  edQuantidade.SelectAll;
end;

procedure TfrmVendaBalcaoTouch.edQuantidadeKeyDown(sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    edQuantidade.Refresh;
    if b_flag_busca_valida and qrBuscaItem.active and
      (qrVenda.State in [dsInsert, dsEdit]) then
      Perform(WM_NEXTDLGCTL, 0, 0)
      // sai do controle para poder fazer as validações
    else if edCodProduto.CanFocus then
      edCodProduto.SetFocus;
  end;
end;

procedure TfrmVendaBalcaoTouch.edValorClick(sender: TObject);
begin
  edValor.SelectAll;
end;

procedure TfrmVendaBalcaoTouch.edValorKeyDown(sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    edQuantidade.Refresh;
    if b_flag_busca_valida and qrBuscaItem.active and
      (qrVenda.State in [dsInsert, dsEdit]) then
      Perform(WM_NEXTDLGCTL, 0, 0)
      // sai do controle para poder fazer as validações
    else if edCodProduto.CanFocus then
      edCodProduto.SetFocus;
  end;
end;

procedure TfrmVendaBalcaoTouch.acAbreBuscaClienteExecute(sender: TObject);
begin
  if qrVenda.State in [dsInsert, dsEdit] then
  begin
    frmPDVCliente := TfrmPDVCliente.Create(self,
      qrVenda.fieldbyname('id_cliente').asinteger,
      qrVenda.fieldbyname('cpf_cliente').asstring,
      qrVenda.fieldbyname('nome_cliente').asstring);
    frmPDVCliente.ShowModal;
    if frmPDVCliente.Tag = 1 then
    begin
      if frmPDVCliente.id_cliente = 0 then
        qrVenda.fieldbyname('id_cliente').clear
      else
        qrVenda.fieldbyname('id_cliente').asinteger := frmPDVCliente.id_cliente;
      qrVenda.fieldbyname('cpf_cliente').asstring := frmPDVCliente.cpf;
      qrVenda.fieldbyname('nome_cliente').asstring :=
        frmPDVCliente.nome_cliente;
    end;
    FreeAndNil(frmPDVCliente);
    qrVenda.post;
    qrVenda.Refresh;
    qrVenda.edit;
  end;
end;

procedure TfrmVendaBalcaoTouch.acAbreGavetaExecute(sender: TObject);
begin
  if bUtilizaGaveta then
    frmMenu.AbrirGaveta;
end;

procedure TfrmVendaBalcaoTouch.ACBrBAL1LePeso(Peso: double;
  Resposta: AnsiString);
var
  valid: integer;
  msg: string;
  tara: double;
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
    application.MessageBox
      (pchar('Não foi possível obter o peso da balança. Detalhes:' + sLineBreak
      + msg), 'Atenção', MB_ICONWARNING);
  end
  else
  begin
    tara := qrBuscaItem.fieldbyname('tara_balanca').AsFloat;
    // se o peso for menor que a tara ou se a tara estiver zerada, a quantidade é o mesmo do peso
    if (CompareValue(Peso, tara) = -1) or (CompareValue(tara, 0.0) = 0) then
      qrBuscaItem.fieldbyname('quantidade').AsFloat := Peso
    else
      qrBuscaItem.fieldbyname('quantidade').AsFloat := Peso - tara;
  end;
end;

procedure TfrmVendaBalcaoTouch.acCancelaItemExecute(sender: TObject);
var
  ok: boolean;
  id_usuario_cancelamento: integer;
begin
  if qrVendaItem.active then
  begin
    if qrVendaItem.RecordCount > 0 then
    begin
      id_usuario_cancelamento := recproj.iUsuario;
      if bExigeSenhaCancelamentoItem then
        ok := frmMenu.ConfirmacaoSenha('b_cancelamento_balcao',
          id_usuario_cancelamento)
      else
        ok := true;

      if ok then
      begin
        frmControleMesaItensAcoes := TfrmControleMesaItensAcoes.Create(self,
          qrVenda.fieldbyname('ven_001').asinteger, id_usuario_cancelamento, 3);
        frmControleMesaItensAcoes.ShowModal;
        FreeAndNil(frmControleMesaItensAcoes);
        AtualizaTotalVenda;
        qrVendaItem.Refresh;
      end;
    end
    else
      application.MessageBox('Esta venda não possui itens!', 'Atenção',
        MB_ICONINFORMATION + MB_OK);
  end;
end;

procedure TfrmVendaBalcaoTouch.acCancelarVendaExecute(sender: TObject);
var
  str_sql, sJust: string;
  id_venda, cod_venda, nro_mesa, id_usuario_cancelamento: integer;
  ok, permite_cancelamento: boolean;
  qrAux1: TUniQuery;
begin
  buscacampo(permite_cancelamento,
    'select b_cancelamento_balcao from usuarios where usu_001=' +
    inttostr(recproj.iUsuario), '', false);
  b_flag_venda_cancelada := false;
  if qrVenda.active then
  begin
    if qrVenda.State = dsEdit then
    begin
      id_venda := qrVenda.fieldbyname('ven_001').asinteger;

      qrAux1 := TUniQuery.Create(self);
      qrAux1.Connection := frmMenu.conexao;
      // verifica se a venda não possui items
      str_sql :=
        'select 1 from vendaitem where ven_001=:id_venda and emp_001=:emp';
      PreparaQuerySQL(qrAux1, str_sql);
      qrAux1.ParamByName('id_venda').asinteger := id_venda;
      qrAux1.ParamByName('emp').asinteger := recproj.iEmp;
      qrAux1.Open;
      if qrAux1.RecordCount < 1 then
      begin
        str_sql := 'delete from venda where ven_001=:id_venda and emp_001=:emp';
        PreparaQuerySQL(qrAux1, str_sql);
        qrAux1.ParamByName('id_venda').asinteger := id_venda;
        qrAux1.ParamByName('emp').asinteger := recproj.iEmp;
        qrAux1.Execute;
        application.MessageBox('Venda cancelada com sucesso!', 'Atenção',
          MB_ICONINFORMATION + MB_OK);
        qrVenda.close;
        b_flag_venda_cancelada := true;
      end
      else
      begin
        id_usuario_cancelamento := recproj.iUsuario;
        if bExigeSenhaCancelamentoVenda then
          ok := frmMenu.ConfirmacaoSenha('b_cancelamento_balcao',
            id_usuario_cancelamento)
        else
        begin
          if not permite_cancelamento then
            ok := frmMenu.ConfirmacaoSenha('b_cancelamento_balcao',
              id_usuario_cancelamento)
          else
            ok := true;
        end;
        if ok then
        begin
          b_flag_venda_cancelada := CancelaVenda(id_venda,
            id_usuario_cancelamento, 'Cancelamento - Balcão Touch');
          if b_flag_venda_cancelada then
          begin
            qrVenda.close;
            qrVendaItem.close;
            qrBuscaItem.close;

            acAberturaVenda.Execute;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmVendaBalcaoTouch.acVendaemesperaExecute(sender: TObject);

var
  str_sql: string;
  qrAux1: TUniQuery;
begin
    if qrVenda.RecordCount <= 0 then      // 05/10/2017  Rafael
    begin
      application.MessageBox('Não existe venda para ser fechada!, Por favor inicie uma venda','Atenção', MB_ICONQUESTION + MB_OK);
    end;

  if qrVenda.RecordCount > 0 then
    if Application.MessageBox('Deseja realmente colocar esta venda em espera?','ATENÇÃO',MB_YESNO+MB_ICONQUESTION)=mryes then
    begin

    begin
      if qrVendaItem.RecordCount > 0 then
      begin
        str_sql :=
          'update venda set sit_001=21 where ven_001=:ven_001 and emp_001=:emp_001';
        qrAux1 := TUniQuery.Create(self);
        qrAux1.Connection := frmMenu.conexao;
        qrAux1.close;
        qrAux1.SQL.clear;
        qrAux1.SQL.Add(str_sql);
        qrAux1.ParamByName('ven_001').asinteger := qrVenda.fieldbyname('ven_001').asinteger;
        qrAux1.ParamByName('emp_001').asinteger := qrVenda.fieldbyname('emp_001').asinteger;
        qrAux1.Execute;
        qrVenda.close;
        qrVendaItem.close;
        qrBuscaItem.close;
        acAberturaVenda.Execute;
      end

      else
      begin
        application.MessageBox('Não existe venda para ser fechada!, Por favor inicie uma venda','Atenção', MB_ICONQUESTION + MB_OK);
      end;          // 05/10/2017  Rafael

    end;
  end;


end;

procedure TfrmVendaBalcaoTouch.acConsultarProdutoExecute(sender: TObject);
var
  str_sql: string;
begin
  str_sql := ' SELECT MAT.MAT_001, ' + ' MAT.MAT_004, ' + ' MAT.MAT_003, ' +
    ' CAT.CAT_002, ' + ' UNI.UNI_002, ' + ' MAT.MAT_008 ' +
    ' FROM MATERIAIS MAT ' +
    ' LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND (UNI.UNI_001 = MAT.UNI_001) '
    + ' LEFT OUTER JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.CAT_001 = MAT.CAT_001)';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
    CriaIntegerArray([1, 2, 3, 4, 5]), CriaStringArray(['Código', 'Produto',
    'Categoria', 'Unidade', 'Preço']), 1, 1, ' mat.sit_001=4 and MAT.emp_001=' +
    inttostr(recproj.iEmp), 800, 500, true);
  frmBuscaRegistro.ShowModal;
  FreeAndNil(frmBuscaRegistro);
end;

procedure TfrmVendaBalcaoTouch.acDescontoItemExecute(sender: TObject);
begin
  if qrVendaItem.active then
  begin
    if qrVendaItem.RecordCount > 0 then
    begin
      if bPermiteDescontoItem then
      begin
        frmControleMesaItensAcoes := TfrmControleMesaItensAcoes.Create(self,
          qrVenda.fieldbyname('ven_001').asinteger, recproj.iUsuario, 2);
        frmControleMesaItensAcoes.ShowModal;
        FreeAndNil(frmControleMesaItensAcoes);
        AtualizaTotalVenda;
        qrVendaItem.Refresh;
      end
      else
        application.MessageBox('Ação não permitida!', 'Atenção',
          MB_ICONINFORMATION + MB_OK);
    end
    else
      application.MessageBox('Esta venda não possui itens!', 'Atenção',
        MB_ICONINFORMATION + MB_OK);
  end;
end;

procedure TfrmVendaBalcaoTouch.acFecharVendaExecute(sender: TObject);
var
  str_sql: string;
begin
  if qrVendaItem.RecordCount < 1 then
  begin
    application.MessageBox('Esta venda não possui itens!', 'Atenção',
      MB_ICONINFORMATION + MB_OK);
  end
  else
  begin
    frmControleMesaFechamento := TfrmControleMesaFechamento.Create(self,
      qrVenda.fieldbyname('ven_001').asinteger, true);
    frmControleMesaFechamento.ShowModal;

    if frmControleMesaFechamento.Tag = 1 then
    begin

      if b_imprimir_cozinha then
      begin
        // envia os itens para impressão após o fechamento
        str_sql :=
          format('UPDATE VENDAITEM SET ITE_011 = ''S'' where VEN_001=%d and emp_001=%d and ite_008= ''N'' ',
          [qrVenda.fieldbyname('ven_001').asinteger, recproj.iEmp]);
        ExecutaComandoSQL(str_sql);
      end;

      qrVenda.close;
      qrVendaItem.close;
      qrBuscaItem.close;
      acAberturaVenda.Execute;
    end;
    FreeAndNil(frmControleMesaFechamento);
  end;
end;

procedure TfrmVendaBalcaoTouch.acInsereProdutoFracionadoExecute
  (sender: TObject);
var
  ult_reg, item_fracionado, id_venda: integer;
  str_sql: string;
begin
  if not qrVenda.active then
    acAberturaVenda.Execute;
  id_venda := qrVenda.fieldbyname('ven_001').asinteger;
  frmVendaItemFracionado := tfrmVendaItemFracionado.Create(self,
    (bAlteraValorUnitarioItem and bAlteraValorUnitarioItemUsuario),
    bFracionadoMaiorValor);
  frmVendaItemFracionado.ShowModal;
  if frmVendaItemFracionado.Tag = 1 then
  begin
    str_sql :=
      format('select coalesce(max(ite_001), 0) from vendaitem where ven_001=%d and emp_001=%d ',
      [id_venda, recproj.iEmp]);
    buscacampo(ult_reg, str_sql, '', false);
    str_sql :=
      format('select coalesce(max(item_fracionado), 0)+1 from vendaitem where ven_001=%d and emp_001=%d ',
      [id_venda, recproj.iEmp]);
    buscacampo(item_fracionado, str_sql, '', false);
    frmVendaItemFracionado.cdsItens.First;
    while not frmVendaItemFracionado.cdsItens.Eof do
    begin
      InsereVendaItem(frmVendaItemFracionado.cdsItens.fieldbyname('id_material')
        .asinteger, ult_reg + frmVendaItemFracionado.cdsItens.fieldbyname
        ('nro_item').asinteger, frmVendaItemFracionado.cdsItens.fieldbyname
        ('quantidade').AsFloat, frmVendaItemFracionado.cdsItens.fieldbyname
        ('valor_unit').AsFloat, frmVendaItemFracionado.cdsItens.fieldbyname
        ('valor_fracionado').AsFloat,
        frmVendaItemFracionado.cdsItens.fieldbyname('tamanho').asstring,
        frmVendaItemFracionado.cdsItens.fieldbyname('tamanho').asstring <> '',
        frmVendaItemFracionado.cdsItens.fieldbyname('observacao').asstring,
        frmVendaItemFracionado.cdsItens.fieldbyname('cod_impressora').asinteger,
        frmVendaItemFracionado.cdsItens.fieldbyname('id_categoria').asinteger,
        item_fracionado);

      frmVendaItemFracionado.cdsItens.next;
    end;
  end;
  FreeAndNil(frmVendaItemFracionado);
  qrVendaItem.Refresh;
  AtualizaTotalVenda;

end;

procedure TfrmVendaBalcaoTouch.acObservacaoItemExecute(sender: TObject);
begin
  if qrVendaItem.active then
  begin
    if qrVendaItem.RecordCount > 0 then
    begin
      frmControleMesaItensAcoes := TfrmControleMesaItensAcoes.Create(self,
        qrVenda.fieldbyname('ven_001').asinteger, recproj.iUsuario, 1);
      frmControleMesaItensAcoes.ShowModal;
      FreeAndNil(frmControleMesaItensAcoes);
      qrVendaItem.Refresh;
    end
    else
      application.MessageBox('Esta venda não possui itens!', 'Atenção',
        MB_ICONINFORMATION + MB_OK);
  end;
end;

procedure TfrmVendaBalcaoTouch.acOpcionaisItemExecute(sender: TObject);
begin
  if qrVendaItem.active then
  begin
    if qrVendaItem.RecordCount > 0 then
    begin
      frmControleMesaItensAcoes := TfrmControleMesaItensAcoes.Create(self,
        qrVenda.fieldbyname('ven_001').asinteger, recproj.iUsuario, 4);
      frmControleMesaItensAcoes.ShowModal;
      FreeAndNil(frmControleMesaItensAcoes);
      AtualizaTotalVenda;
      qrVendaItem.Refresh;
    end
    else
      application.MessageBox('Esta venda não possui itens!', 'Atenção',
        MB_ICONINFORMATION + MB_OK);
  end;
end;

procedure TfrmVendaBalcaoTouch.acPesquisarItemExecute(Sender: TObject);
begin
if qrVenda.State in [dsInsert, dsEdit] then
  begin
    frmPDVCliente :=  TfrmPDVCliente.Create(self,qrVenda.FieldByName('id_cliente').AsInteger,
                                            qrVenda.FieldByName('cpf_cliente').asstring,
                                            qrVenda.FieldByName('nome_cliente').asstring);
    frmPDVCliente.ShowModal;
    if frmPDVCliente.Tag=1 then
    begin
      if frmPDVCliente.id_cliente = 0 then
        qrVenda.FieldByName('id_cliente').Clear
      else
        qrVenda.FieldByName('id_cliente').AsInteger := frmPDVCliente.id_cliente;
      qrVenda.FieldByName('cpf_cliente').asstring := frmPDVCliente.cpf;
      qrVenda.FieldByName('nome_cliente').asstring := frmPDVCliente.nome_cliente;
    end;
    FreeAndNil(frmPDVCliente);
    qrVenda.post;
    qrVenda.refresh;
    qrVenda.edit;
  end;
end;

procedure TfrmVendaBalcaoTouch.AdvGlowButton1Click(sender: TObject);
begin
  frmObservacaoTouch := TfrmObservacaoTouch.Create(self, observacao_item);
  frmObservacaoTouch.ShowModal;
  if frmObservacaoTouch.Tag = 1 then
    observacao_item := frmObservacaoTouch.edObservacaoItem.Text;
  FreeAndNil(frmObservacaoTouch);
end;

procedure TfrmVendaBalcaoTouch.AdvGlowButton2Click(sender: TObject);
begin
  frmVendaComplementoTouch := TfrmVendaComplementoTouch.Create(self, cdsOpcionais);
  if qrBuscaItem.Active then
    frmVendaComplementoTouch.iProduto:= qrBuscaItemid_material.AsInteger
  else
    frmVendaComplementoTouch.iProduto:= 0;

  frmVendaComplementoTouch.ShowModal;

  if frmVendaComplementoTouch.Tag=1 then
  begin
    CopiaClientDataSet(frmVendaComplementoTouch.cdsOpcionaisSelecionados, cdsOpcionais);
  end;
  FreeAndNil(frmVendaComplementoTouch);
end;

procedure TfrmVendaBalcaoTouch.AdvGlowButton3Click(Sender: TObject);     // 05/10/2017  Rafael
 var str_sql:string;
  qraux1:tuniquery;
begin
  if qrvendaitem.RecordCount<1 then
    begin
      frmpesquisavendabalcao1:=Tfrmpesquisavendabalcao1.create(self) ;
      frmpesquisavendabalcao1.ShowModal;
      if frmPesquisavendabalcao1.Tag=1 then
      begin
        str_sql :='update venda set sit_001=0 where ven_001=:ven_001 and emp_001=:emp_001';
        qrAux1 := TUniQuery.Create(self);
        qrAux1.Connection := frmMenu.conexao;
        qrAux1.SQL.Add(str_sql);
        qrAux1.ParamByName('ven_001').asinteger := frmpesquisavendabalcao1.qrPesquisavendabalcao.fieldbyname('ven_001').asinteger;
        qrAux1.ParamByName('emp_001').asinteger := frmpesquisavendabalcao1.qrPesquisavendabalcao.fieldbyname('emp_001').asinteger;
        qrAux1.Execute;
        qrvenda.close;
        qrvenda.ParamByName('id_venda').AsInteger:=frmpesquisavendabalcao1.qrPesquisavendabalcao.FieldByName('ven_001').AsInteger;
        qrvenda.ParamByName('id_empresa').AsInteger:=frmpesquisavendabalcao1.qrPesquisavendabalcao.FieldByName('emp_001').AsInteger;
        qrvenda.Open;
        qrvenda.Edit;
        ValidaAcoesVenda;
      end;
      FreeAndNil(frmpesquisavendabalcao1);                   // 05/10/2017  Rafael
  end;
end;

procedure TfrmVendaBalcaoTouch.AtualizaTotalVenda;
var
  total: double;
begin
  if qrVenda.State in [dsInsert, dsEdit] then
  begin
    qrVenda.fieldbyname('total_itens').AsFloat :=
      TotalItensVenda(qrVenda.fieldbyname('ven_001').asinteger);
    total := TotalItensVenda(qrVenda.fieldbyname('ven_001').asinteger) +
      qrVenda.fieldbyname('acrescimo').AsFloat - qrVenda.fieldbyname
      ('desconto').AsFloat;
    qrVenda.fieldbyname('total_venda').AsFloat := total;
    qrVenda.post;
    qrVenda.edit;
  end
  else if qrVenda.State in [dsCalcFields] then
  begin
    qrVenda.fieldbyname('total_itens').AsFloat :=
      TotalItensVenda(qrVenda.fieldbyname('ven_001').asinteger);
  end;
end;

function TfrmVendaBalcaoTouch.ValidaInsercaoProduto(texto: string;
  out quantidade: double; out inserir_diretamente: boolean): boolean;
var
  indice_qtde: integer;
  str_qtd, cod_ref, filtro: string;
  flag_etiqueta_balanca: boolean;
begin
  result := true;
  texto := trim(texto);
  inserir_diretamente := false;
  flag_etiqueta_balanca := (Length(texto) = largura_cod_barras) and
    (texto[1] = inttostr(cod_barras_digito_1));
  indice_qtde := AnsiPos('*', texto);
  if indice_qtde > 0 then
  begin
    str_qtd := copy(texto, 1, indice_qtde - 1);
    cod_ref := copy(texto, indice_qtde + 1, Length(texto));
    // verifica se a quantidade digitada é um número
    try
      quantidade := StrToFloat(trim(str_qtd));
    except
      quantidade := 0;
      application.MessageBox('Informações inválidas!', 'Atenção',
        MB_ICONINFORMATION);
      result := false;
    end;
  end
  else
  begin
    if flag_etiqueta_balanca then
    begin
      // pega a parte referente ao codigo do produto
      cod_ref := copy(texto, 2, largura_cod_barras_produto);
      // converte pra inteiro e volta para string (para remover os '0' iniciais)
      cod_ref := inttostr(StrToInt(cod_ref));
      // pega a parte referente a quantidade
      str_qtd := copy(texto, largura_cod_barras_produto + 2,
        largura_cod_barras);
      // descarta o ultimo digito, que é dv
      str_qtd := copy(str_qtd, 1, Length(str_qtd) - 1);

      try
        quantidade := StrToFloat(trim(str_qtd)) / 1000;
        inserir_diretamente := true;
      except
        quantidade := 0;
        application.MessageBox('Informações inválidas!', 'Atenção',
          MB_ICONINFORMATION);
        result := false;
      end;
    end
    else
    begin
      quantidade := 1;
      cod_ref := texto;
    end;
  end;
  // se nao houve erro na inserção do codigo e quantidade, faz a busca
  if result then
  begin
    qrBuscaItem.close;

    filtro := ' and m.mat_004 = :cod_ref ';
    if i_where_busca_item_touch = qrBuscaItem.SQL.count then
      qrBuscaItem.SQL.Add(filtro)
    else
      qrBuscaItem.SQL[i_where_busca_item_touch] := filtro;
    qrBuscaItem.ParamByName('id_empresa').asinteger := recproj.iEmp;
    qrBuscaItem.ParamByName('cod_ref').asstring := cod_ref;
    qrBuscaItem.ParamByName('id_venda').asinteger :=
      qrVenda.fieldbyname('ven_001').asinteger;
    qrBuscaItem.Open;

    if qrBuscaItem.RecordCount > 0 then
    begin
      result := true;
      if qrBuscaItem.fieldbyname('b_peso_balanca').asBoolean then
        quantidade := qrBuscaItem.fieldbyname('quantidade').AsFloat;

      if flag_etiqueta_balanca and (CompareValue(quantidade, 1) = -1) and
        ((qrBuscaItem.fieldbyname('unidade').asstring = 'UN') or
        (qrBuscaItem.fieldbyname('unidade').asstring = 'PC')) then
        quantidade := quantidade * 1000;

    end
    else
      result := false;
    if not result then
      application.MessageBox('Produto não encontrado!', 'Atenção',
        MB_ICONINFORMATION);
  end;
end;

procedure TfrmVendaBalcaoTouch.NovoRegistro;
var
  id_vendedor: integer;
begin
  id_vendedor := 0;
  if bExigeVendedor then
  begin
    frmVendaSelecaoVendedor := TfrmVendaSelecaoVendedor.Create(self);
    frmVendaSelecaoVendedor.ShowModal;
    if frmVendaSelecaoVendedor.Tag = 1 then
    begin
      id_vendedor := frmVendaSelecaoVendedor.id_usuario;
      FreeAndNil(frmVendaSelecaoVendedor);
    end
    else
    begin
      application.MessageBox
        ('Para iniciar uma nova venda, é necessário informar o vendedor!',
        'Atenção', MB_ICONINFORMATION);
      FreeAndNil(frmVendaSelecaoVendedor);
      abort;
    end;
  end;

  if not qrVenda.active then
    qrVenda.Open;

  qrVenda.Append;
  qrVenda.fieldbyname('ven_001').asinteger := NovoId('venda', 'ven_001',
    recproj.iEmp);
  qrVenda.fieldbyname('venda_orcamento').asinteger := 0;
  qrVenda.fieldbyname('emp_001').asinteger := recproj.iEmp;
  qrVenda.fieldbyname('data_cadastro').asdatetime := Date + time;
  qrVenda.fieldbyname('sit_001').asinteger := 0;
  qrVenda.fieldbyname('usu_001_1').asinteger := recproj.iUsuario;
  qrVenda.fieldbyname('tipo_venda').asstring := 'B'; // Tipo Balcão
  qrVenda.fieldbyname('acrescimo').AsFloat := 0;
  qrVenda.fieldbyname('b_taxa_entrega').asBoolean := false;
  qrVenda.fieldbyname('id_caixa_abertura').asinteger := recproj.iIDCaixa;
  qrVenda.fieldbyname('terminal_abertura').asstring := NomeDoTerminal;
  qrVenda.fieldbyname('nro_venda').asinteger := NovoNumeroVenda;

  if id_vendedor > 0 then
    qrVenda.fieldbyname('id_vendedor').asinteger := id_vendedor
  else
    qrVenda.fieldbyname('id_vendedor').value := null;

  qrVenda.ParamByName('id_venda').asinteger := qrVenda.fieldbyname('ven_001')
    .asinteger;
  qrVenda.post;
  qrVenda.edit;

  bPedirClienteItem1 := bSolicitaCliente;

  qrVendaItem.close;
  qrVendaItem.ParamByName('id_empresa').asinteger := recproj.iEmp;
  qrVendaItem.ParamByName('id_venda').asinteger :=
    qrVenda.fieldbyname('ven_001').asinteger;
  qrVendaItem.Open;

end;

procedure TfrmVendaBalcaoTouch.qrBuscaItemAfterOpen(DataSet: TDataSet);
var
  tamanho: string;
  valor_happy: double;
begin
  if edQuantidade.CanFocus then edQuantidade.SelectAll;

  lbProdutosEncontrados.Caption := format('Total de %d produtos localizados', [qrBuscaItem.RecordCount]);
end;

procedure TfrmVendaBalcaoTouch.qrBuscaItemAfterScroll(DataSet: TDataSet);
begin
  ShowScrollBar(DBCtrlGridProduto.Handle, SB_VERT, false);
end;

procedure TfrmVendaBalcaoTouch.qrBuscaItemCalcFields(DataSet: TDataSet);
var valor_opcionais : double;
begin
  if cdsOpcionais.RecordCount >0  then
    valor_opcionais := cdsOpcionais.fieldbyname('total_opcionais').value
  else
    valor_opcionais := 0;

  qrBuscaItem.fieldbyname('valor_total').AsFloat :=
    (qrBuscaItem.fieldbyname('valor_unit').AsFloat * qrBuscaItem.fieldbyname('quantidade').AsFloat) +
    (valor_opcionais * qrBuscaItem.fieldbyname('quantidade').AsFloat)
    ;
end;

procedure TfrmVendaBalcaoTouch.qrVendaAfterClose(DataSet: TDataSet);
begin
  ValidaAcoesVenda;
end;

procedure TfrmVendaBalcaoTouch.qrVendaAfterOpen(DataSet: TDataSet);
begin
  qrVendaItem.close;
  qrVendaItem.ParamByName('id_empresa').asinteger := recproj.iEmp;
  qrVendaItem.ParamByName('id_venda').asinteger :=
    qrVenda.fieldbyname('ven_001').asinteger;
  qrVendaItem.Open;
end;

procedure TfrmVendaBalcaoTouch.qrVendaItemAfterClose(DataSet: TDataSet);
begin
  qrVendaItemOpcional.close;
end;

procedure TfrmVendaBalcaoTouch.qrVendaItemAfterOpen(DataSet: TDataSet);
begin
  qrVendaItemOpcional.close;
  qrVendaItemOpcional.ParamByName('id_empresa').asinteger := recproj.iEmp;
  qrVendaItemOpcional.ParamByName('id_venda').asinteger :=
    qrVenda.fieldbyname('ven_001').asinteger;
  qrVendaItemOpcional.Open;
  cxGridItensDBTableView1.ViewData.Expand(true);
end;

procedure TfrmVendaBalcaoTouch.qrVendaItemAfterRefresh(DataSet: TDataSet);
begin
  qrVendaItemOpcional.Refresh;
  cxGridItensDBTableView1.ViewData.Expand(true);
end;

procedure TfrmVendaBalcaoTouch.ValidaAcoesVenda;
begin
  // Venda em edição
  if qrVenda.State in [dsEdit] then
  begin
    acAberturaVenda.Enabled := false;
    acFecharVenda.Enabled := true;
    acCancelarVenda.Enabled := true;
    acPesquisarItem.Enabled := true;
    acCancelaItem.Enabled := true;
    acDescontoItem.Enabled := true;
    acObservacaoItem.Enabled := true;
    acAbreBuscaCliente.Enabled := true;
    acInsereProdutoFracionado.Enabled := true;
    acOpcionaisItem.Enabled := true;
  end
  else
  begin
    acAberturaVenda.Enabled := true;
    acFecharVenda.Enabled := false;
    acCancelarVenda.Enabled := false;
    acPesquisarItem.Enabled := true;
    acCancelaItem.Enabled := false;
    acDescontoItem.Enabled := false;
    acObservacaoItem.Enabled := false;
    acAbreBuscaCliente.Enabled := false;
    acInsereProdutoFracionado.Enabled := true;
    acOpcionaisItem.Enabled := false;
  end;

end;

end.
