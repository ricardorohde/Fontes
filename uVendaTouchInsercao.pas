
unit uVendaTouchInsercao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, AdvPanel, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, Vcl.DBCGrids, AdvGlowButton,
  Vcl.StdCtrls, AdvGroupBox, Data.DB, Datasnap.DBClient, cxLabel, cxDBLabel,
  cxImage, MemDS, DBAccess, Uni, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, AdvSmoothTouchKeyBoard, cxCurrencyEdit, cxDBEdit, Vcl.DBCtrls,
  Vcl.Menus, ACBrBase, ACBrBAL, ACBRDevice, System.Math, Datasnap.Provider,
  cxGridCustomLayoutView, cxGridCardView, cxGridDBCardView,
  System.StrUtils, dxGDIPlusClasses, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter ;

type
  TfrmVendaTouchInsercao = class(TForm)
    cdsItensInseridos: TClientDataSet;
    cdsItensInseridosid_produto: TIntegerField;
    cdsItensInseridosdescricao: TStringField;
    cdsItensInseridosquantidade: TFloatField;
    cdsItensInseridosvalor_unitario: TCurrencyField;
    cdsItensInseridosvalor_total: TCurrencyField;
    cdsItensInseridoscod_referencia: TStringField;
    qrCategoria: TUniQuery;
    qrCategoriaid_categoria: TIntegerField;
    qrCategoriadescricao: TWideStringField;
    qrCategoriab_exibir_icone: TBooleanField;
    qrCategoriaarquivo_img: TWideStringField;
    dsCategoria: TDataSource;
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
    dsBuscaItem: TDataSource;
    dscdsItensInseridos: TDataSource;
    cdsItensInseridosobservacao: TMemoField;
    cdsItensInseridoscod_impressora: TIntegerField;
    cdsItensInseridosb_venda_tamanho: TBooleanField;
    cdsItensInseridostamanho: TStringField;
    cdsItensInseridositem_fracionado: TIntegerField;
    cdsItensInseridosdescricao_tamanho: TStringField;
    cdsItensInseridosvalor_total2: TAggregateField;
    cdsItensInseridosvalor_acrescimo: TFloatField;
    qrBuscaItemvalor_acrescimo: TFloatField;
    cdsItensInseridositem: TIntegerField;
    qrCategorianro_produtos: TLargeintField;
    ACBrBAL1: TACBrBAL;
    qrBuscaItemb_peso_balanca: TBooleanField;
    cdsItensInseridosdesconto: TFloatField;
    qrBuscaItemid_categoria: TIntegerField;
    qrBuscaItemb_exige_alterar_preco_venda: TBooleanField;
    qrBuscaItemb_exige_70pc_valor_unit: TBooleanField;
    qrOpcional: TUniQuery;
    qrOpcionalid_opcional: TIntegerField;
    qrOpcionaldescricao: TWideStringField;
    qrOpcionalvalor: TFloatField;
    qrOpcionalflag_selecionado: TBooleanField;
    cdsOpcional: TClientDataSet;
    dspOpcional: TDataSetProvider;
    dsOpcional: TDataSource;
    cdsOpcionalid_opcional: TIntegerField;
    cdsOpcionaldescricao: TWideStringField;
    cdsOpcionalvalor: TFloatField;
    cdsOpcionalflag_selecionado: TBooleanField;
    qrOpcionaldescricao_valor: TWideStringField;
    cdsOpcionaldescricao_valor: TWideStringField;
    cdsOpcionaisInseridos: TClientDataSet;
    cdsOpcionaisInseridositem: TIntegerField;
    cdsOpcionaisInseridosdescricao: TStringField;
    cdsOpcionaisInseridosid_opcional: TIntegerField;
    dsOpcionaisInseridos: TDataSource;
    pnDadosPedido: TPanel;
    AdvGroupBox5: TAdvGroupBox;
    lbGarcom: TLabel;
    lbMesa: TLabel;
    Label10: TLabel;
    pnDescProduto: TPanel;
    DBText3: TDBText;
    DBText2: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;

    DBText8: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    edObservacaoItem: TMemo;
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
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1valor_unitario: TcxGridDBColumn;
    cxGrid1DBTableView1quantidade: TcxGridDBColumn;
    cxGrid1DBTableView1valor_acrescimo: TcxGridDBColumn;
    cxGrid1DBTableView1valor_total: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBCardView1: TcxGridDBCardView;
    cxGrid1DBCardView1descricao: TcxGridDBCardViewRow;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level3: TcxGridLevel;
    Panel2: TPanel;
    DBText1: TDBText;
    Label11: TLabel;
    pnConteudo: TAdvPanel;
    pnCategoria: TPanel;
    DBCtrlGridCategoria: TDBCtrlGrid;
    imgCategoria: TImage;
    lbCategoria: TcxDBLabel;
    pnNavCategoria: TPanel;
    btPagCategoriaAnt: TDBAdvGlowButton;
    btPagCategoriaProx: TDBAdvGlowButton;
    pnLabelCategoria: TPanel;
    pnProdutosComplementos: TPanel;
    pnComplemento: TPanel;
    pnLabelComplementos: TPanel;
    DBCtrlGridOpcional: TDBCtrlGrid;
    shFormaSelecionado: TShape;
    cxDBLabel1: TcxDBLabel;
    pnProdutos: TPanel;
    DBCtrlGridProduto: TDBCtrlGrid;
    lbDescProduto: TcxDBLabel;
    btPagÇProdutoProx: TDBAdvGlowButton;
    btPagProdutoAnt: TDBAdvGlowButton;
    pnLabelProdutos: TPanel;
    pnCodigoQuantidade: TAdvPanel;
    AdvGroupBox1: TAdvGroupBox;
    btBuscaItem: TAdvGlowButton;
    btLimparCodigo: TAdvGlowButton;
    cxLabel1: TcxLabel;
    edCodProduto: TEdit;
    AdvGroupBox2: TAdvGroupBox;
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
    AdvGroupBox3: TAdvGroupBox;
    btQtdeMais: TAdvGlowButton;
    btQtdeMeio: TAdvGlowButton;
    btQtdeMenos: TAdvGlowButton;
    btQtdeQuarto: TAdvGlowButton;
    btQtdeTerco: TAdvGlowButton;
    edQuantidade: TcxDBCurrencyEdit;
    cxLabel2: TcxLabel;
    btInserir: TAdvGlowButton;
    pnBotoes: TFlowPanel;
    btConfirma: TAdvGlowButton;
    btCancela: TAdvGlowButton;
    btInserirFracionado: TAdvGlowButton;
    imgProduto: TImage;
    qrBuscaItemarquivo_img: TWideStringField;
    qrBuscaItemtara_balanca: TFloatField;
    cdsItensInseridosb_exige_70pc_valor_unit: TBooleanField;
    btFiltraOpc1: TAdvGlowButton;
    btFiltraOpc2: TAdvGlowButton;
    btFiltraOpc3: TAdvGlowButton;
    btFiltraOpc4: TAdvGlowButton;
    btFiltraOpc5: TAdvGlowButton;
    btFiltraOpc6: TAdvGlowButton;
    qrOpcionaltipo: TIntegerField;
    cdsOpcionaltipo: TIntegerField;
    constructor Create (sender : Tcomponent ; id_venda, id_garcom: integer);reintroduce;
    procedure DBCtrlGridCategoriaPaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure btLimparCodigoClick(Sender: TObject);
    procedure btBuscaItemClick(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure DBCtrlGridProdutoClick(Sender: TObject);
    procedure DBCtrlGridCategoriaClick(Sender: TObject);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btQtdeMeioClick(Sender: TObject);
    procedure btQtdeTercoClick(Sender: TObject);
    procedure btQtdeQuartoClick(Sender: TObject);
    procedure btLimparQuantidadeClick(Sender: TObject);
    procedure btQtdeMaisClick(Sender: TObject);
    procedure btQtdeMenosClick(Sender: TObject);
    procedure qrBuscaItemCalcFields(DataSet: TDataSet);
    procedure cdsItensInseridosAfterPost(DataSet: TDataSet);
    procedure cdsItensInseridosBeforeDelete(DataSet: TDataSet);
    procedure btInserirFracionadoClick(Sender: TObject);
    procedure InsereItem(item, id_material , cod_impressora: integer;
                         descricao, cod_referencia, observacao, tamanho, tamanho_descricao : string;
                         quantidade, valor_unitario, valor_total, valor_acrescimo : double;
                         b_venda_tamanho : boolean; item_fracionado : variant;
                         id_categoria : integer;
                         b_exige_70pc_valor_unit : boolean);
    procedure qrCategoriaAfterScroll(DataSet: TDataSet);
    procedure btPagCategoriaAntClick(Sender: TObject);
    procedure btPagCategoriaProxClick(Sender: TObject);
    procedure qrBuscaItemAfterScroll(DataSet: TDataSet);
    procedure btPagProdutoAntClick(Sender: TObject);
    procedure btPagÇProdutoProxClick(Sender: TObject);
    procedure qrBuscaItemAfterOpen(DataSet: TDataSet);
    procedure btKb1_0Click(Sender: TObject);
    procedure btKb1_1Click(Sender: TObject);
    procedure btKb1_2Click(Sender: TObject);
    procedure btKb1_3Click(Sender: TObject);
    procedure btKb1_4Click(Sender: TObject);
    procedure btKb1_5Click(Sender: TObject);
    procedure btKb1_6Click(Sender: TObject);
    procedure btKb1_7Click(Sender: TObject);
    procedure btKb1_8Click(Sender: TObject);
    procedure btKb1_9Click(Sender: TObject);
    procedure btKb2_7Click(Sender: TObject);
    procedure btKb2_8Click(Sender: TObject);
    procedure btKb2_9Click(Sender: TObject);
    procedure btKb2_4Click(Sender: TObject);
    procedure btKb2_5Click(Sender: TObject);
    procedure btKb2_6Click(Sender: TObject);
    procedure btKb2_1Click(Sender: TObject);
    procedure btKb2_2Click(Sender: TObject);
    procedure btKb2_3Click(Sender: TObject);
    procedure btKb2_0Click(Sender: TObject);
    procedure btKb2_virgClick(Sender: TObject);
    procedure btKb3_QClick(Sender: TObject);
    procedure PressionaTecla(tecla : string);
    procedure PressionaTeclaQuantidade(tecla : string);
    procedure btKb3_WClick(Sender: TObject);
    procedure btKb3_EClick(Sender: TObject);
    procedure btKb3_RClick(Sender: TObject);
    procedure btKb3_TClick(Sender: TObject);
    procedure btKb3_YClick(Sender: TObject);
    procedure btKb3_UClick(Sender: TObject);
    procedure btKb3_IClick(Sender: TObject);
    procedure btKb3_OClick(Sender: TObject);
    procedure btKb3_PClick(Sender: TObject);
    procedure btKb3_AClick(Sender: TObject);
    procedure btKb3_SClick(Sender: TObject);
    procedure btKb3_DClick(Sender: TObject);
    procedure btKb3_FClick(Sender: TObject);
    procedure btKb3_GClick(Sender: TObject);
    procedure btKb3_HClick(Sender: TObject);
    procedure btKb3_JClick(Sender: TObject);
    procedure btKb3_KClick(Sender: TObject);
    procedure btKb3_LClick(Sender: TObject);
    procedure btKb3_CEDILHClick(Sender: TObject);
    procedure btKb3_ZClick(Sender: TObject);
    procedure btKb3_XClick(Sender: TObject);
    procedure btKb3_CClick(Sender: TObject);
    procedure btKb3_VClick(Sender: TObject);
    procedure btKb3_BClick(Sender: TObject);
    procedure btKb3_NClick(Sender: TObject);
    procedure btKb3_MClick(Sender: TObject);
    procedure btKb3_VIRGClick(Sender: TObject);
    procedure btKb3_PONTOClick(Sender: TObject);
    procedure btKb3_PONTVIRGClick(Sender: TObject);
    procedure btKb3_LIMPARClick(Sender: TObject);
    procedure btKb3_ESPACOClick(Sender: TObject);
    procedure btKb3_BackSpaceClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure DBCtrlGridProdutoPaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure FiltraOpcionais(sTipo: string);
    procedure qrBuscaItemBeforeScroll(DataSet: TDataSet);
    procedure ACBrBAL1LePeso(Peso: Double; Resposta: AnsiString);
    procedure qrBuscaItemquantidadeChange(Sender: TField);
    procedure edQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure btInserirKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edCodProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsOpcionalflag_selecionadoChange(Sender: TField);
    procedure DBCtrlGridOpcionalPaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure DBCtrlGridOpcionalClick(Sender: TObject);

    procedure edQuantidadeClick(Sender: TObject);
    procedure DesmarcaOpcionais;
    procedure btFiltraOpc1Click(Sender: TObject);
    procedure btFiltraOpc2Click(Sender: TObject);
    procedure btFiltraOpc3Click(Sender: TObject);
    procedure btFiltraOpc4Click(Sender: TObject);
    procedure btFiltraOpc5Click(Sender: TObject);
    procedure btFiltraOpc6Click(Sender: TObject);
  private
    { Private declarations }
    i_where, item_atual, iTimeOutBalanca : integer;

    bFracionadoMaiorValor, bUtilizaBalanca, bExige70pc, bEexige70pcFracionadoCatDiff,
    b_habilitar_quantidade, bUtilizaSelecaoPrecos: boolean;

  public
    { Public declarations }
    largura_cod_barras, largura_cod_barras_produto, cod_barras_digito_1 : integer;
    id_garcom :integer;
    total_opcionais : double;
    function SomaOpcionais : double;
  end;

var
  frmVendaTouchInsercao: TfrmVendaTouchInsercao;

implementation

{$R *.dfm}

uses uMenu, uVendaSelecaoTamanho, Funcao_DB,  uFuncoes, uVendaItemFracionadoTouch,
  uVendaSelecaoPreco;

procedure TfrmVendaTouchInsercao.DesmarcaOpcionais;
begin
  if cdsOpcional.Active then
  begin
    cdsOpcional.First;
    while not cdsOpcional.eof do
    begin
      cdsOpcional.Edit;
      cdsOpcional.fieldbyname('flag_selecionado').AsBoolean := false;
      cdsOpcional.post;
      cdsOpcional.Next;
    end;
  end;
end;

procedure TfrmVendaTouchInsercao.ACBrBAL1LePeso(Peso: Double;
  Resposta: AnsiString);
var valid : integer;
    msg : string;
    tara : double;
begin
  qrBuscaItem.FieldByName('quantidade').AsFloat :=  Peso;
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

procedure TfrmVendaTouchInsercao.btInserirClick(Sender: TObject);
var sql, tamanho_descricao: string;
    atualiza, inserir: boolean;
    item : integer;
begin

  //valida o item
  if qrBuscaItem.Active then
  begin
    if qrBuscaItem.RecordCount<1 then
    begin
      Application.MessageBox('Não foi selecionado nenhum item a adicionar!', 'Atenção', MB_ICONINFORMATION + MB_OK);
      edCodProduto.SetFocus;
      abort;
    end
    else
    begin
    //valida quantidade e valor unitário
      if qrBuscaItem.FieldByName('quantidade').IsNull or
         (qrBuscaItem.FieldByName('quantidade').asfloat<0.001) or
         (qrBuscaItem.FieldByName('quantidade').asfloat>999999)  then
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
        abort;
      end;
    end;
  end
  else abort;

  //adiciona o item
  InsereItem(item_atual,
             qrBuscaItem.FieldByName('id_material').AsInteger ,
             qrBuscaItem.FieldByName('cod_impressora').AsInteger,
             qrBuscaItem.FieldByName('descricao').asstring,
             qrBuscaItem.FieldByName('cod_ref').asstring,
             edObservacaoItem.Text,
             qrBuscaItem.FieldByName('tamanho_padrao').asstring,
             tamanho_descricao,
             qrBuscaItem.FieldByName('quantidade').asfloat,
             qrBuscaItem.FieldByName('valor_unit').AsFloat,
             qrBuscaItem.FieldByName('valor_total').AsFloat,
             qrBuscaItem.FieldByName('valor_acrescimo').AsFloat,
             qrBuscaItem.FieldByName('b_venda_tamanho').asBoolean,
             null,
             qrBuscaItem.FieldByName('id_categoria').AsInteger,
             qrBuscaItem.FieldByName('b_exige_70pc_valor_unit').asBoolean);

  //adiciona os opcionais no cdsOpcionaisInseridos
  if cdsOpcional.Filtered then
    cdsOpcional.Filtered:= False;
  if cdsopcional.Active then
  begin
  cdsOpcional.First;
  while not cdsOpcional.eof do
  begin
    if cdsOpcional.FieldByName('flag_selecionado').AsBoolean then
    begin
      cdsOpcionaisInseridos.Append;
      cdsOpcionaisInseridos.FieldByName('item').AsInteger := item_atual -1 ; //item atual é incrementado apos inserção...
      cdsOpcionaisInseridos.FieldByName('descricao').AsString := cdsOpcional.FieldByName('descricao').asstring;
      cdsOpcionaisInseridos.FieldByName('id_opcional').AsInteger := cdsOpcional.FieldByName('id_opcional').asinteger;
      cdsOpcionaisInseridos.post;
    end;
    cdsOpcional.Next;
  end;
  end;

  //qrBuscaItem.close;
  qrBuscaItem.refresh;
  edObservacaoItem.clear;
  edCodProduto.Clear;
  edCodProduto.SetFocus;
  cxGrid1DBTableView1.ViewData.Expand(True);

  DesmarcaOpcionais;

  qrBuscaItem.Close;

  if cdsOpcional.Active then
    cdsOpcional.Close;
end;

procedure TfrmVendaTouchInsercao.InsereItem(item, id_material , cod_impressora: integer;
                                            descricao, cod_referencia, observacao, tamanho, tamanho_descricao : string;
                                            quantidade, valor_unitario, valor_total, valor_acrescimo : double;
                                            b_venda_tamanho : boolean; item_fracionado : variant;
                                            id_categoria : integer;
                                            b_exige_70pc_valor_unit : boolean);
var desconto_calc, total_calc, desconto: double;
    tipo_desconto: integer;
begin
  cdsItensInseridos.Append;
  cdsItensInseridos.FieldByName('id_material').AsInteger:= id_material;
  cdsItensInseridos.FieldByName('descricao').asstring:=descricao;
  cdsItensInseridos.FieldByName('quantidade').asfloat:= quantidade;
  cdsItensInseridos.FieldByName('valor_unitario').AsFloat:= valor_unitario;
  cdsItensInseridos.FieldByName('valor_total').AsFloat:= valor_total;
  cdsItensInseridos.FieldByName('valor_acrescimo').AsFloat:= valor_acrescimo;
  cdsItensInseridos.FieldByName('cod_referencia').asstring:= cod_referencia;
  cdsItensInseridos.FieldByName('observacao').AsString:=observacao;
  cdsItensInseridos.FieldByName('b_venda_tamanho').asBoolean:= b_venda_tamanho;
  cdsItensInseridos.FieldByName('tamanho').asstring:=tamanho;
  cdsItensInseridos.FieldByName('tamanho_descricao').asstring:= tamanho_descricao;
  cdsItensInseridos.FieldByName('cod_impressora').AsInteger:= cod_impressora;
  cdsItensInseridos.FieldByName('item_fracionado').value := item_fracionado;
  cdsItensInseridos.FieldByName('item').AsInteger:= item;
  cdsItensInseridos.FieldByName('desconto').asfloat:= 0;
  cdsItensInseridos.FieldByName('b_exige_70pc_valor_unit').asBoolean:= b_exige_70pc_valor_unit;

  //antes de postar, verifica se existe promoção
  if BuscaPromocao(b_venda_tamanho, tamanho, 'M', id_material, desconto, tipo_desconto) then
  begin
    calculaDescontoItem(tipo_desconto, desconto, quantidade, valor_unitario, 0, desconto_calc, total_calc);
    cdsItensInseridos.FieldByName('desconto').asfloat := desconto_calc;
    cdsItensInseridos.FieldByName('valor_total').AsFloat := total_calc;
  end;

  cdsItensInseridos.post;

  frmmenu.AvisaEsoqueMinimo(id_material, 'M', quantidade);

end;

procedure TfrmVendaTouchInsercao.btInserirFracionadoClick(Sender: TObject);
var item_fracionado : integer;
    acrescimo : double;
begin
   frmVendaItemFracionadoTouch:= TfrmVendaItemFracionadoTouch.Create(self, bFracionadoMaiorValor, bEexige70pcFracionadoCatDiff);
   frmVendaItemFracionadoTouch.ShowModal;

  if frmVendaItemFracionadoTouch.Tag = 1 then
  begin
    //Localiza o ultimo registro e ultimo item fracionado
    item_fracionado := 0;

    cdsItensInseridos.First;
    while not cdsItensInseridos.eof do
    begin
      if cdsItensInseridos.FieldByName('item_fracionado').AsInteger > item_fracionado then
        item_fracionado := cdsItensInseridos.FieldByName('item_fracionado').AsInteger;
      cdsItensInseridos.Next;
    end;
    item_fracionado := item_fracionado + 1;

    acrescimo :=  frmVendaItemFracionadoTouch.SomaOpcionais / frmVendaItemFracionadoTouch.cdsItens.RecordCount;
    frmVendaItemFracionadoTouch.cdsItens.First;
    while not frmVendaItemFracionadoTouch.cdsItens.Eof do
    begin
      InsereItem(item_atual,
                 frmVendaItemFracionadoTouch.cdsItens.FieldByName('id_material').AsInteger ,
                 frmVendaItemFracionadoTouch.cdsItens.FieldByName('cod_impressora').AsInteger,
                 frmVendaItemFracionadoTouch.cdsItens.FieldByName('descricao').asstring,
                 frmVendaItemFracionadoTouch.cdsItens.FieldByName('cod_ref').asstring,
                 frmVendaItemFracionadoTouch.cdsItens.FieldByName('observacao').asstring,
                 frmVendaItemFracionadoTouch.cdsItens.FieldByName('tamanho').asstring,
                 frmVendaItemFracionadoTouch.cdsItens.FieldByName('tamanho').asstring,
                 frmVendaItemFracionadoTouch.cdsItens.FieldByName('quantidade').asfloat,
                 frmVendaItemFracionadoTouch.cdsItens.FieldByName('valor_unit').AsFloat,
                 frmVendaItemFracionadoTouch.cdsItens.FieldByName('valor_fracionado').AsFloat + acrescimo,
                 acrescimo,
                 frmVendaItemFracionadoTouch.cdsItens.FieldByName('tamanho').asstring<>'',
                 item_fracionado,
                 frmVendaItemFracionadoTouch.cdsItens.FieldByName('id_categoria').AsInteger,
                 frmVendaItemFracionadoTouch.cdsItens.FieldByName('b_70pc_valor_unit').asboolean);

      frmVendaItemFracionadoTouch.cdsItens.next;

      if frmVendaItemFracionadoTouch.cdsOpcional.Filtered then
        frmVendaItemFracionadoTouch.cdsOpcional.Filtered:= False;

      //adiciona os opcionais no cdsOpcionaisInseridos
      if frmVendaItemFracionadoTouch.cdsOpcional.Active then
      begin
        frmVendaItemFracionadoTouch.cdsOpcional.First;
        while not frmVendaItemFracionadoTouch.cdsOpcional.eof do
        begin
          if frmVendaItemFracionadoTouch.cdsOpcional.FieldByName('flag_selecionado').AsBoolean then
          begin
            cdsOpcionaisInseridos.Append;
            cdsOpcionaisInseridos.FieldByName('item').AsInteger := item_atual -1 ; //item atual é incrementado apos inserção...
            cdsOpcionaisInseridos.FieldByName('descricao').AsString := frmVendaItemFracionadoTouch.cdsOpcional.FieldByName('descricao').asstring;
            cdsOpcionaisInseridos.FieldByName('id_opcional').AsInteger := frmVendaItemFracionadoTouch.cdsOpcional.FieldByName('id_opcional').asinteger;
            cdsOpcionaisInseridos.post;
          end;
          frmVendaItemFracionadoTouch.cdsOpcional.Next;
        end;
      end;

    end;
  end;

  //qrVenda.FieldByName('observacao').AsString := qrVenda.FieldByName('observacao').AsString + frmVendaItemFracionado.memobs.Text;
  frmVendaItemFracionadoTouch.Free;

end;

procedure TfrmVendaTouchInsercao.btInserirKeyPress(Sender: TObject;
  var Key: Char);
begin
If key = #13 then
   Begin
      edCodProduto.SetFocus;
   end;
end;

procedure TfrmVendaTouchInsercao.btKb1_0Click(Sender: TObject);
begin
  PressionaTecla('0');
end;

procedure TfrmVendaTouchInsercao.btKb1_1Click(Sender: TObject);
begin
  PressionaTecla('1');
end;

procedure TfrmVendaTouchInsercao.btKb1_2Click(Sender: TObject);
begin
  PressionaTecla('2');
end;

procedure TfrmVendaTouchInsercao.btKb1_3Click(Sender: TObject);
begin
  PressionaTecla('3');
end;

procedure TfrmVendaTouchInsercao.btKb1_4Click(Sender: TObject);
begin
  PressionaTecla('4');
end;

procedure TfrmVendaTouchInsercao.btKb1_5Click(Sender: TObject);
begin
  PressionaTecla('5');
end;

procedure TfrmVendaTouchInsercao.btKb1_6Click(Sender: TObject);
begin
  PressionaTecla('6');
end;

procedure TfrmVendaTouchInsercao.btKb1_7Click(Sender: TObject);
begin
  PressionaTecla('7');
end;

procedure TfrmVendaTouchInsercao.btKb1_8Click(Sender: TObject);
begin
  PressionaTecla('8');
end;

procedure TfrmVendaTouchInsercao.btKb1_9Click(Sender: TObject);
begin
  PressionaTecla('9');
end;

procedure TfrmVendaTouchInsercao.btKb2_0Click(Sender: TObject);
begin
PressionaTecla('0');
end;

procedure TfrmVendaTouchInsercao.btKb2_1Click(Sender: TObject);
begin
PressionaTecla('1');
end;

procedure TfrmVendaTouchInsercao.btKb2_2Click(Sender: TObject);
begin
PressionaTecla('2');
end;

procedure TfrmVendaTouchInsercao.btKb2_3Click(Sender: TObject);
begin
PressionaTecla('3');
end;

procedure TfrmVendaTouchInsercao.btKb2_4Click(Sender: TObject);
begin
PressionaTecla('4');
end;

procedure TfrmVendaTouchInsercao.btKb2_5Click(Sender: TObject);
begin
PressionaTecla('5');
end;

procedure TfrmVendaTouchInsercao.btKb2_6Click(Sender: TObject);
begin
PressionaTecla('6');
end;

procedure TfrmVendaTouchInsercao.btKb2_7Click(Sender: TObject);
begin
  PressionaTecla('7');
end;

procedure TfrmVendaTouchInsercao.btKb2_8Click(Sender: TObject);
begin
PressionaTecla('8');
end;

procedure TfrmVendaTouchInsercao.btKb2_9Click(Sender: TObject);
begin
PressionaTecla('9');
end;

procedure TfrmVendaTouchInsercao.btKb2_virgClick(Sender: TObject);
begin
PressionaTecla(',');
end;

procedure TfrmVendaTouchInsercao.btKb3_AClick(Sender: TObject);
begin
PressionaTecla('A');
end;

procedure TfrmVendaTouchInsercao.btKb3_BackSpaceClick(Sender: TObject);
begin
  PressionaTecla('back');
end;

procedure TfrmVendaTouchInsercao.btKb3_BClick(Sender: TObject);
begin
PressionaTecla('B');
end;

procedure TfrmVendaTouchInsercao.btKb3_CClick(Sender: TObject);
begin
PressionaTecla('C');
end;

procedure TfrmVendaTouchInsercao.btKb3_CEDILHClick(Sender: TObject);
begin
PressionaTecla('Ç');
end;

procedure TfrmVendaTouchInsercao.btKb3_DClick(Sender: TObject);
begin
PressionaTecla('D');
end;

procedure TfrmVendaTouchInsercao.btKb3_EClick(Sender: TObject);
begin
PressionaTecla('E');
end;

procedure TfrmVendaTouchInsercao.btKb3_ESPACOClick(Sender: TObject);
begin
PressionaTecla(' ');
end;

procedure TfrmVendaTouchInsercao.btKb3_FClick(Sender: TObject);
begin
PressionaTecla('F');
end;

procedure TfrmVendaTouchInsercao.btKb3_GClick(Sender: TObject);
begin
PressionaTecla('G');
end;

procedure TfrmVendaTouchInsercao.btKb3_HClick(Sender: TObject);
begin
PressionaTecla('H');
end;

procedure TfrmVendaTouchInsercao.btKb3_IClick(Sender: TObject);
begin
PressionaTecla('I');
end;

procedure TfrmVendaTouchInsercao.btKb3_JClick(Sender: TObject);
begin
PressionaTecla('J');
end;

procedure TfrmVendaTouchInsercao.btKb3_KClick(Sender: TObject);
begin
PressionaTecla('K');
end;

procedure TfrmVendaTouchInsercao.btKb3_LClick(Sender: TObject);
begin
PressionaTecla('L');
end;

procedure TfrmVendaTouchInsercao.btKb3_LIMPARClick(Sender: TObject);
begin
edObservacaoItem.CLEAR;
end;

procedure TfrmVendaTouchInsercao.btKb3_MClick(Sender: TObject);
begin
  PressionaTecla('M');
end;

procedure TfrmVendaTouchInsercao.btKb3_NClick(Sender: TObject);
begin
  PressionaTecla('N');
end;

procedure TfrmVendaTouchInsercao.btKb3_OClick(Sender: TObject);
begin
  PressionaTecla('O');
end;

procedure TfrmVendaTouchInsercao.btKb3_PClick(Sender: TObject);
begin
  PressionaTecla('P');
end;

procedure TfrmVendaTouchInsercao.btKb3_PONTOClick(Sender: TObject);
begin
  PressionaTecla('.');
end;

procedure TfrmVendaTouchInsercao.btKb3_PONTVIRGClick(Sender: TObject);
begin
  PressionaTecla(';');
end;

procedure TfrmVendaTouchInsercao.btKb3_QClick(Sender: TObject);
begin
  PressionaTecla('Q');
end;

procedure TfrmVendaTouchInsercao.btKb3_RClick(Sender: TObject);
begin
PressionaTecla('R');
end;

procedure TfrmVendaTouchInsercao.btKb3_SClick(Sender: TObject);
begin
PressionaTecla('S');
end;

procedure TfrmVendaTouchInsercao.btKb3_TClick(Sender: TObject);
begin
PressionaTecla('T');
end;

procedure TfrmVendaTouchInsercao.btKb3_UClick(Sender: TObject);
begin
PressionaTecla('U');
end;

procedure TfrmVendaTouchInsercao.btKb3_VClick(Sender: TObject);
begin
PressionaTecla('V');
end;

procedure TfrmVendaTouchInsercao.btKb3_VIRGClick(Sender: TObject);
begin
PressionaTecla(',');
end;

procedure TfrmVendaTouchInsercao.btKb3_WClick(Sender: TObject);
begin
PressionaTecla('W');
end;

procedure TfrmVendaTouchInsercao.btKb3_XClick(Sender: TObject);
begin
PressionaTecla('X');
end;

procedure TfrmVendaTouchInsercao.btKb3_YClick(Sender: TObject);
begin
PressionaTecla('Y');
end;

procedure TfrmVendaTouchInsercao.btKb3_ZClick(Sender: TObject);
begin
PressionaTecla('Z');
end;

procedure TfrmVendaTouchInsercao.PressionaTecla(tecla : string);
var posicao : Integer;
    texto_anterior, texto_posterior : string;
begin
  if (ActiveControl is Tedit) or (ActiveControl is TMemo) then
  begin
    posicao := TEdit(ActiveControl).SelStart;
    texto_anterior := copy(TEdit(ActiveControl).Text,1, posicao );
    texto_posterior := copy(TEdit(ActiveControl).Text,posicao + 1 , length(TEdit(ActiveControl).Text));

    if LowerCase(tecla)='back' then
    begin
      TEdit(ActiveControl).Text := copy(texto_anterior, 1, length(texto_anterior)-1) +  texto_posterior;
      TEdit(ActiveControl).SelStart := posicao-1;
    end
    else
    begin
      TEdit(ActiveControl).Text := texto_anterior + tecla + texto_posterior;
      TEdit(ActiveControl).SelStart := posicao+1;
    end;
  end
  else if Screen.ActiveControl is TcxCustomInnerTextEdit  then //verifica se foco está no edit de quantidade
  begin
    if uppercase(TcxCustomInnerTextEdit(ActiveControl).Parent.Name) = 'EDQUANTIDADE' then
    begin
      if AnsiIndexStr(tecla, ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ',']) >=0 then
        PressionaTeclaQuantidade(tecla);
    end;
  end;


end;

procedure TfrmVendaTouchInsercao.PressionaTeclaQuantidade(tecla : string);
var texto_edit, texto_anterior, texto_posterior : string;
    posicao, tamanho_selecionado, posicao_virgula : integer;
begin
  if qrBuscaItem.Active then
  begin
    if (qrBuscaItem.RecordCount>0) and edQuantidade.Enabled then
    begin
      qrBuscaItem.Edit;

      posicao := 0;
      if not (ActiveControl is TcxCustomInnerTextEdit) then
      begin
        edQuantidade.SetFocus;
        edQuantidade.SelectAll;
        if tecla=',' then
          edQuantidade.Text := '0,'
        else
          edQuantidade.Text := tecla;
      end
      else
      begin
        posicao := edQuantidade.selstart;
        posicao_virgula := pos(',', edQuantidade.Text);
        tamanho_selecionado := edQuantidade.SelLength;

        if tecla=',' then
        begin

          if posicao>=posicao_virgula then exit;

          texto_anterior := copy(edQuantidade.Text,1, posicao_virgula-1 );
          texto_posterior := copy(edQuantidade.Text,posicao_virgula + 1 , length(edQuantidade.Text));
        end
        else
        begin
          texto_anterior := copy(edQuantidade.Text,1, posicao );
          //texto_posterior := copy(edQuantidade.Text,posicao + 1 , length(edQuantidade.Text));
          texto_posterior := copy(edQuantidade.Text,posicao + 1 + tamanho_selecionado , length(edQuantidade.Text));


          {if tamanho_selecionado <= 0 then
          begin
            texto_anterior := copy(edQuantidade.Text,1, posicao );
            texto_posterior := copy(edQuantidade.Text,posicao + 1 , length(edQuantidade.Text));
          end
          else
          begin
            texto_anterior := copy(edQuantidade.Text,1, posicao );
          end; }
        end;
        edQuantidade.Text := texto_anterior + tecla + texto_posterior ;
      end;

      qrBuscaItem.FieldByName('quantidade').AsFloat := StrToFloat(edQuantidade.Text);

      edQuantidade.selstart :=  posicao +1;
    end;
  end;
end;

procedure TfrmVendaTouchInsercao.btLimparCodigoClick(Sender: TObject);
begin
  edCodProduto.clear;
end;

procedure TfrmVendaTouchInsercao.btLimparQuantidadeClick(Sender: TObject);
begin
  if qrBuscaItem.Active then
  begin
    if (qrBuscaItem.RecordCount>0) and edQuantidade.Enabled then
    begin
      qrBuscaItem.Edit;
      //qrBuscaItem.FieldByName('quantidade').AsFloat := 1;
      edQuantidade.Text := '';
    end;
  end;
end;

procedure TfrmVendaTouchInsercao.btBuscaItemClick(Sender: TObject);
var filtro, texto, cod_ref, str_qtd  : string;
    flag_etiqueta_balanca, inserir : boolean;
    quantidade, valor_happy : double;
    indice_qtde : integer;
begin
  texto:= edCodProduto.Text;
  flag_etiqueta_balanca := (Length(texto)=largura_cod_barras) and (texto[1]=inttostr(cod_barras_digito_1));
  inserir:=false;
  qrBuscaItem.Close;

  indice_qtde := AnsiPos('*', texto);
  if indice_qtde>0 then
  begin
    str_qtd := copy(texto, 1, indice_qtde-1);
    cod_ref := copy(texto, indice_qtde+1, length(texto));
    //verifica se a quantidade digitada é um número
    try
      quantidade := StrToFloat(trim(str_qtd));
    except
      quantidade:=0;
      application.MessageBox('Informações inválidas!', 'Atenção', MB_ICONINFORMATION);
      abort;
    end;
  end
  else
  begin
    if flag_etiqueta_balanca then
    begin
      //pega a parte referente ao codigo do produto
      cod_ref:= copy(texto, 2, largura_cod_barras_produto);
      //converte pra inteiro e volta para string (para remover os '0' iniciais)
      cod_ref := inttostr(strtoint(cod_ref));
      //pega a parte referente a quantidade
      str_qtd := copy(texto, largura_cod_barras_produto+2, largura_cod_barras);
      //descarta o ultimo digito, que é dv
      str_qtd :=  copy(str_qtd, 1, Length(str_qtd)-1);

      try
        quantidade := StrToFloat(trim(str_qtd)) / 1000;
        inserir:=true;
      except
        quantidade:=0;
        application.MessageBox('Informações inválidas!', 'Atenção', MB_ICONINFORMATION);
        abort;
      end;
    end
    else
    begin
      quantidade:=1;
      cod_ref := texto;
    end;
  end;

  filtro := ' and m.mat_004 like :cod_ref ';
  qrBuscaItem.SQL[i_where] :=   filtro;

  qrBuscaItem.ParamByName('cod_ref').AsString := cod_ref;
  qrBuscaItem.open;
  if qrBuscaItem.RecordCount >0 then
  begin
    if not (qrBuscaItem.State = dsedit)  then  qrBuscaItem.Edit;
    qrBuscaItem.FieldByName('quantidade').asfloat := quantidade;

    //Verifica Happy Hour - Bruno (12-04-2018)
    if BuscaHappyHour('M', qrBuscaItem.FieldByName('id_material').AsInteger, valor_happy) then
      qrBuscaItem.FieldByName('valor_unit').AsFloat:= valor_happy
    else
    begin
      if bUtilizaSelecaoPrecos then
       begin
         frmVendaSelecaoPreco := TfrmVendaSelecaoPreco.Create(self, qrBuscaItem.FieldByName('id_material').asinteger);

         if frmVendaSelecaoPreco.qrTamanhoMaterial.RecordCount > 1 then
           frmVendaSelecaoPreco.ShowModal;

         if frmVendaSelecaoPreco.Tag = 1 then
         begin
           qrBuscaItem.FieldByName('valor_unit').AsFloat := frmVendaSelecaoPreco.valor;
         end;
       end;
    end;
  end
  else
    begin
      Application.MessageBox('Produto não encontrado!', 'Atenção', MB_ICONINFORMATION + MB_OK);
      edCodProduto.SetFocus;
      abort;
    end;

  if not edQuantidade.Enabled then    //Se a configuração mesa habilitar quantidade não tiver selecionada insere automaticamente
    inserir := true
  else
    edQuantidade.SetFocus;   //Senao vai para campo de quantidade

  if inserir then
  begin
    if qrBuscaItem.RecordCount >0 then
    begin
      if flag_etiqueta_balanca and (compareVAlue(quantidade,1)=-1) and
         ((qrBuscaItem.FieldByName('unidade').AsString = 'UN') or  (qrBuscaItem.FieldByName('unidade').AsString = 'PC')) then
        quantidade :=quantidade * 1000;

      btInserir.Click;
    end ;

  end;


end;


procedure TfrmVendaTouchInsercao.btCancelaClick(Sender: TObject);
begin
  self.Tag:=0;
  self.Close;
end;

procedure TfrmVendaTouchInsercao.btConfirmaClick(Sender: TObject);
begin
  if cdsItensInseridos.RecordCount<1 then
  begin
    Application.MessageBox('Nenhum item foi selecionado!', 'Atenção', MB_ICONINFORMATION);
    exit;
  end;

  self.Tag:=1;
  self.Close;
end;

procedure TfrmVendaTouchInsercao.btFiltraOpc1Click(Sender: TObject);
begin
  FiltraOpcionais('1'); //Massas
end;

procedure TfrmVendaTouchInsercao.btFiltraOpc2Click(Sender: TObject);
begin
  FiltraOpcionais('2'); //Recheios
end;

procedure TfrmVendaTouchInsercao.btFiltraOpc3Click(Sender: TObject);
begin
  FiltraOpcionais('3'); //Complementos
end;

procedure TfrmVendaTouchInsercao.btFiltraOpc4Click(Sender: TObject);
begin
  FiltraOpcionais('4'); //Molhos
end;

procedure TfrmVendaTouchInsercao.btFiltraOpc5Click(Sender: TObject);
begin
  FiltraOpcionais('5'); //Coberturas
end;

procedure TfrmVendaTouchInsercao.btFiltraOpc6Click(Sender: TObject);
begin
  FiltraOpcionais('0'); //Geral - Não são todos e sim tipo Geral
end;

procedure TfrmVendaTouchInsercao.btQtdeMaisClick(Sender: TObject);
begin
  if qrBuscaItem.Active then
  begin
    if (qrBuscaItem.RecordCount>0) and edQuantidade.Enabled then
    begin
      qrBuscaItem.Edit;
      qrBuscaItem.FieldByName('quantidade').AsFloat := qrBuscaItem.FieldByName('quantidade').AsFloat +1 ;
    end;
  end;
end;

procedure TfrmVendaTouchInsercao.btQtdeMeioClick(Sender: TObject);
begin
  if qrBuscaItem.Active then
  begin
    if (qrBuscaItem.RecordCount>0) and edQuantidade.Enabled then
    begin
      qrBuscaItem.Edit;
      qrBuscaItem.FieldByName('quantidade').AsFloat := 0.5;
    end;
  end;
end;

procedure TfrmVendaTouchInsercao.btQtdeMenosClick(Sender: TObject);
begin
  if qrBuscaItem.Active then
  begin
    if (qrBuscaItem.RecordCount>0) and edQuantidade.Enabled then
    begin
      qrBuscaItem.Edit;
      if not ((qrBuscaItem.FieldByName('quantidade').AsFloat -1 )<=0) then
        qrBuscaItem.FieldByName('quantidade').AsFloat := qrBuscaItem.FieldByName('quantidade').AsFloat -1 ;
    end;
  end;
end;

procedure TfrmVendaTouchInsercao.btQtdeQuartoClick(Sender: TObject);
begin
  if qrBuscaItem.Active then
  begin
    if (qrBuscaItem.RecordCount>0) and edQuantidade.Enabled then
    begin
      qrBuscaItem.Edit;
      qrBuscaItem.FieldByName('quantidade').AsFloat := 0.25;
    end;
  end;
end;

procedure TfrmVendaTouchInsercao.btQtdeTercoClick(Sender: TObject);
begin
  if qrBuscaItem.Active then
  begin
    if (qrBuscaItem.RecordCount>0) and edQuantidade.Enabled then
    begin
      qrBuscaItem.Edit;
      qrBuscaItem.FieldByName('quantidade').AsFloat := (1/3);
    end;
  end;
end;

procedure TfrmVendaTouchInsercao.cdsItensInseridosAfterPost(DataSet: TDataSet);
begin
  cdsItensInseridos.last;
  if cdsItensInseridos.RecordCount<1 then
    item_atual :=1
  else
  begin
    item_atual :=  cdsItensInseridos.FieldByName('item').AsInteger + 1;
  end;
end;

procedure TfrmVendaTouchInsercao.cdsItensInseridosBeforeDelete(
  DataSet: TDataSet);
var item: integer;
begin
  //antes de excluir o item, exclui os adicionais
  item := cdsItensInseridos.FieldByName('item').AsInteger;

  cdsOpcionaisInseridos.Filter:='item='+IntToStr(item);
  cdsOpcionaisInseridos.Filtered := true;
  cdsOpcionaisInseridos.First;
  while not cdsOpcionaisInseridos.eof do
  begin
    cdsOpcionaisInseridos.Delete;
    cdsOpcionaisInseridos.Next;
  end;
  cdsOpcionaisInseridos.Filtered := false;
end;

procedure TfrmVendaTouchInsercao.cdsOpcionalflag_selecionadoChange(
  Sender: TField);
begin
  DBCtrlGridOpcionalPaintPanel(nil, 0);
end;

constructor TfrmVendaTouchInsercao.Create (sender : Tcomponent ; id_venda,  id_garcom  : integer);
var qr_aux : TUniQuery;
    menuItem : TMenuItem;
    str_aux, str_sql, tipo_venda : string;
begin
  inherited Create(sender);

  self.id_garcom := id_garcom;
  item_atual := 1;
  i_where := qrBuscaItem.SQL.count-2;

  qrbuscaitem.Close;
  qrCategoria.close;
  qrCategoria.ParamByName('id_empresa').asinteger := recproj.iEmp;
  qrbuscaitem.ParamByName('id_empresa').asinteger := recproj.iEmp;
  qrCategoria.Open;

  cdsItensInseridos.CreateDataSet;
  cdsOpcionaisInseridos.CreateDataSet;

  qr_aux := TUniQuery.Create(self);
  qr_aux.Connection := frmMenu.conexao;

  str_sql :=  format(' select cast(case when upper(v.ven_024)=''M'' then mes_002 else concat(''COMANDA '', v.ven_026) end as varchar(30))as nome_mesa_comanda, '+
                     ' upper(v.ven_024) as tipo_venda from  venda v left join mesa m on (m.emp_001 = v.emp_001) and (m.mes_001 = v.ven_025) where v.ven_001=%d and v.emp_001=%d',
                     [id_venda, recproj.iEmp ]);
  ExecutaConsultaSQL(qr_aux, str_sql );
  lbMesa.Caption := qr_aux.Fields[0].AsString;
  tipo_venda := qr_aux.Fields[1].AsString;

  str_sql :=  format('select usu_002 as nome_garcom from  usuarios where usu_001=%d', [id_garcom ]);
  buscacampo(str_aux,str_sql, '', false ) ;
  lbGarcom.Caption := str_aux;

  qr_aux.free;

  if tipo_venda='M' then
  begin
    bFracionadoMaiorValor := LerBooleanConfig('CKFACIONADOMAIORVALORMESA', frmMenu.cdsCFG.FileName);
    bExige70pc := LerBooleanConfig('CKEXIGIR70PCVALORUNITMESA', frmmenu.cdsCFG.FileName);
    bEexige70pcFracionadoCatDiff := LerBooleanConfig('CKFRACIONADO70PCCATDIFFMESA', frmmenu.cdsCFG.FileName);
    b_habilitar_quantidade := not LerBooleanConfig('CKNAOPERMITIRALTERARQTDMESATOUCH', frmmenu.cdsCFG.FileName);
  end
  else
  begin
    bFracionadoMaiorValor := LerBooleanConfig('CKFACIONADOMAIORVALORCOMANDA', frmMenu.cdsCFG.FileName);
    bExige70pc := LerBooleanConfig('CKEXIGIR70PCVALORUNITCOMANDA', frmmenu.cdsCFG.FileName);
    bEexige70pcFracionadoCatDiff := LerBooleanConfig('CKFRACIONADO70PCCATDIFFCOMANDA', frmmenu.cdsCFG.FileName);
    b_habilitar_quantidade := not LerBooleanConfig('CKNAOPERMITIRALTERARQTDCOMANDATOUCH', frmmenu.cdsCFG.FileName);
  end;


  //Oculta as barras dos controlgrids
  {ShowScrollBar(DBCtrlGridCategoria.Handle, SB_VERT, False);// false to hide , true to show
  ShowScrollBar(DBCtrlGridProduto.Handle, SB_VERT, False);       }

  largura_cod_barras :=  LerIntegerConfig ('EDBALANCALARGURACODIGOBARRAS', frmMenu.cdsCFG.FileName);
  largura_cod_barras_produto:= LerIntegerConfig ('EDBALANCALARGURACODIGOPRODUTO', frmMenu.cdsCFG.FileName);
  cod_barras_digito_1 :=   LerIntegerConfig ('EDBALANCACODIGOBARRASDIGITOINICIAL', frmMenu.cdsCFG.FileName);
  bUtilizaBalanca := LerBooleanConfig('CKUTILIZABALANCA',frmMenu.cdsCFG.FileName);
  iTimeOutBalanca := LerIntegerConfig ('EDBALANCATIMEOUT', frmMenu.cdsCFG.FileName);

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

  bUtilizaSelecaoPrecos:= LerBooleanConfig('ckUtilizar_selecao_precos', frmMenu.cdsCFG.FileName);

  total_opcionais := 0;
end;

procedure TfrmVendaTouchInsercao.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var item_fracionado : integer;
    b_fracionado : boolean;
    msg : string;
begin
  b_fracionado := not ((cdsItensInseridos.FieldByName('item_fracionado').isnull) or
        (cdsItensInseridos.FieldByName('item_fracionado').asinteger=0));

  if b_fracionado then
    msg := 'Este item faz parte de uma composição (item fracionado), todos os itens serão removidos. Deseja continuar?'
  else
    msg := 'Deseja exluir o registro?';

  if Application.MessageBox(pchar(msg), 'Atenção', MB_ICONQUESTION + mb_yesno)=mryes then
  begin
    //verifica se não é item fracionado
    if b_fracionado then
    begin
      item_fracionado :=  cdsItensInseridos.FieldByName('item_fracionado').asinteger;
      while cdsItensInseridos.Locate('item_fracionado', item_fracionado , []) do
      begin
        cdsItensInseridos.Delete;
      end;
    end
    else
      cdsItensInseridos.Delete;

    cxGrid1DBTableView1.ViewData.Expand(True);

    if cdsOpcional.Active then
      cdsOpcional.Close;
  end;

end;

procedure TfrmVendaTouchInsercao.qrBuscaItemAfterOpen(DataSet: TDataSet);
begin
  if edQuantidade.CanFocus then edQuantidade.SelectAll;

  pnLabelProdutos.Caption:= format('PRODUTOS LOCALIZADOS (%d)', [qrBuscaItem.RecordCount]);
end;

procedure TfrmVendaTouchInsercao.qrBuscaItemAfterScroll(DataSet: TDataSet);
begin
  DesmarcaOpcionais;
  qrBuscaItem.Edit;
  qrBuscaItem.FieldByName('valor_acrescimo').AsFloat := 0;
end;

procedure TfrmVendaTouchInsercao.qrBuscaItemBeforeScroll(DataSet: TDataSet);
begin
  if qrBuscaItem.State=dsEdit then  qrBuscaItem.Cancel;

end;

procedure TfrmVendaTouchInsercao.qrBuscaItemCalcFields(DataSet: TDataSet);
var acrescimo : double;
begin
  qrBuscaItem.AutoCalcFields := false;
  if qrBuscaItem.recordcount>0 then
  begin
    if qrBuscaItem.State = dsbrowse then  qrBuscaItem.edit;

    qrBuscaItem.FieldByName('valor_acrescimo').AsFloat := total_opcionais * qrBuscaItem.FieldByName('quantidade').AsFloat;

    qrBuscaItem.FieldByName('valor_total').AsFloat :=
      (qrBuscaItem.FieldByName('valor_unit').AsFloat *
      qrBuscaItem.FieldByName('quantidade').AsFloat) +
      qrBuscaItem.FieldByName('valor_acrescimo').AsFloat;

  end;
  qrBuscaItem.AutoCalcFields := true;

end;

procedure TfrmVendaTouchInsercao.qrBuscaItemquantidadeChange(Sender: TField);
var valor_unit, valor_unit_70, quantidade: double;
begin

  if bExige70pc then
  begin
    if qrBuscaItem.FieldByName('b_exige_70pc_valor_unit').AsBoolean then
    begin
      quantidade :=qrBuscaItem.FieldByName('quantidade').AsFloat;
      if (quantidade<0.7)  and (quantidade>0.0) then
      begin
        valor_unit :=qrBuscaItem.FieldByName('valor_unit_old').asfloat;
        valor_unit_70  := (valor_unit *0.7)/quantidade;
        qrBuscaItem.FieldByName('valor_unit').AsFloat := valor_unit_70;
      end;
    end;
  end;
end;

procedure TfrmVendaTouchInsercao.qrCategoriaAfterScroll(DataSet: TDataSet);
begin
  //ShowScrollBar(DBCtrlGridCategoria.Handle, SB_VERT, False);
end;

procedure TfrmVendaTouchInsercao.btPagCategoriaAntClick(Sender: TObject);
var i: integer;
begin
  if qrCategoria.Active then
  begin
    for I := 0 to 9 do  qrCategoria.Prior;
  end;
end;

procedure TfrmVendaTouchInsercao.btPagCategoriaProxClick(Sender: TObject);
var i: integer;
begin
  if qrCategoria.Active then
  begin
    for I := 0 to 9 do  qrCategoria.next;
  end;
end;

procedure TfrmVendaTouchInsercao.btPagProdutoAntClick(Sender: TObject);
var i : integer;
begin
  if qrBuscaItem.Active then
  begin
    for I := 0 to 9 do  qrBuscaItem.Prior;
  end;
end;

procedure TfrmVendaTouchInsercao.btPagÇProdutoProxClick(Sender: TObject);
var i : integer;
begin
  if qrBuscaItem.Active then
  begin
    for I := 0 to 9 do  qrBuscaItem.Next;
  end;

end;

procedure TfrmVendaTouchInsercao.DBCtrlGridOpcionalClick(Sender: TObject);
begin
  if cdsOpcional.RecordCount > 0 then
  begin
    cdsOpcional.Edit;
    cdsOpcional.FieldByName('flag_selecionado').AsBoolean := not cdsOpcional.FieldByName('flag_selecionado').AsBoolean ;

    if qrBuscaItem.Active then
    begin
      if qrBuscaItem.RecordCount>0 then
      begin
        qrBuscaItem.Edit;
        total_opcionais := SomaOpcionais;
        qrBuscaItemCalcFields(nil);
      end;
    end;
  end
  else
    total_opcionais := 0;
end;

function TfrmVendaTouchInsercao.SomaOpcionais : double;
var posicao : integer;
    total : double;
begin
  if cdsOpcional.RecordCount > 0 then
  begin
    posicao := cdsOpcional.RecNo;
    total :=0;
    cdsOpcional.First;
    while not cdsOpcional.Eof do
    begin
      if cdsOpcional.FieldByName('flag_selecionado').AsBoolean then
      begin
        total := total  + cdsOpcional.FieldByName('valor').asfloat;
      end;
      cdsOpcional.Next;
    end;

    cdsOpcional.RecNo := posicao;

    result := total;
  end;
end;



procedure TfrmVendaTouchInsercao.DBCtrlGridOpcionalPaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
  shFormaSelecionado.Visible := cdsOpcional.FieldByName('flag_selecionado').AsBoolean ;
end;

procedure TfrmVendaTouchInsercao.DBCtrlGridCategoriaClick(Sender: TObject);
var filtro : string;
begin
  edCodProduto.Clear;
  qrBuscaItem.Close;
  filtro := ' and m.cat_001 = :id_categoria ';
  qrBuscaItem.SQL[i_where] :=   filtro;

  qrBuscaItem.ParamByName('id_categoria').asinteger := qrCategoria.FieldByName('id_categoria').asinteger;
  qrBuscaItem.open;
end;

procedure TfrmVendaTouchInsercao.DBCtrlGridCategoriaPaintPanel(
  DBCtrlGrid: TDBCtrlGrid; Index: Integer);
var arquivo : string;
begin
  arquivo := qrCategoria.FieldByName('arquivo_img').AsString;
  if fileexists(arquivo) and qrCategoria.FieldByName('b_exibir_icone').AsBoolean then
  begin
    imgCategoria.Picture.LoadFromFile(arquivo);

    if imgCategoria.Height < 64 then
      imgCategoria.Width := imgCategoria.Height
    else
     imgCategoria.Width := 64;
  end
  else
  begin
    imgCategoria.Picture := nil;
    imgCategoria.Width := 1;
  end;

  if Index = DBCtrlGridCategoria.PanelIndex  then
    lbCategoria.Style.Font.Style := [fsBold]
  else
    lbCategoria.Style.Font.Style := [];

end;

procedure TfrmVendaTouchInsercao.DBCtrlGridProdutoClick(Sender: TObject);
var tamanho : string;
    valor_happy: double;
begin
  DesmarcaOpcionais;
  if qrBuscaItem.Active then
  begin
    if qrBuscaItem.RecordCount > 0 then
    begin
      if cdsOpcional.Active then
        cdsOpcional.Close;

      qrOpcional.Close;
      qrOpcional.ParamByName('id_empresa').asinteger  := recproj.iemp;
      qrOpcional.ParamByName('id_material').asinteger := qrBuscaItemid_material.AsInteger;
      qrOpcional.Open;

      cdsOpcional.Open;

      //Chama o primeiro Filtro
      if (LerBooleanConfig('ckTrabalharTipoOpcionais',frmMenu.cdsCFG.FileName)) then
        FiltraOpcionais('1'); //Massas

      edQuantidade.Enabled := b_habilitar_quantidade;
      if qrBuscaItem.FieldByName('b_venda_tamanho').AsBoolean then
      begin
        qrBuscaItem.Edit;
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

      //Verifica Happy Hour - Bruno (12-04-2018)
      if BuscaHappyHour('M', qrBuscaItem.FieldByName('id_material').AsInteger, valor_happy) then
      begin
        qrBuscaItem.Edit;
        qrBuscaItem.FieldByName('valor_unit').AsFloat:= valor_happy;
        qrBuscaItem.Post;
      end
      else
      begin
        if bUtilizaSelecaoPrecos then
        begin
          frmVendaSelecaoPreco := TfrmVendaSelecaoPreco.Create(self, qrBuscaItem.FieldByName('id_material').asinteger);

          if frmVendaSelecaoPreco.qrTamanhoMaterial.RecordCount > 1 then
            frmVendaSelecaoPreco.ShowModal;

          if frmVendaSelecaoPreco.Tag = 1 then
          begin
            qrBuscaItem.Edit;
            qrBuscaItem.FieldByName('valor_unit').AsFloat := frmVendaSelecaoPreco.valor;
            qrBuscaItem.Post;
          end;
        end;
      end;

      // verifica se o item é vendido por peso e se a balança está habilitada
      if qrBuscaItem.FieldByName('b_peso_balanca').AsBoolean and bUtilizaBalanca then
      begin
        qrBuscaItem.Edit;
        try
          edQuantidade.Enabled :=false;
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
          //qrBuscaItem.close;
          edObservacaoItem.clear;
          edCodProduto.Clear;
          if edCodProduto.CanFocus then edCodProduto.SetFocus;
          abort;
        end;
      end;

      if edQuantidade.Enabled then
      begin
        edQuantidade.setfocus;
        edQuantidade.SelectAll;
      end;
    end;
  end;
end;

procedure TfrmVendaTouchInsercao.FiltraOpcionais(sTipo: string);
begin
  cdsOpcional.Filtered:= False;
  cdsOpcional.Filter:= 'tipo = ' + sTipo;
  cdsOpcional.Filtered:= True;
end;

procedure TfrmVendaTouchInsercao.DBCtrlGridProdutoPaintPanel(
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

procedure TfrmVendaTouchInsercao.edCodProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  btBuscaItem.Click;

end;

procedure TfrmVendaTouchInsercao.edQuantidadeClick(Sender: TObject);
begin
  edQuantidade.SelectAll;
end;

procedure TfrmVendaTouchInsercao.edQuantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
If key = #13 then
   Begin
    btInserir.SetFocus;
   end;
end;

procedure TfrmVendaTouchInsercao.FormShow(Sender: TObject);
begin
  edCodProduto.SetFocus;

  //Verifica configuração para exibir ou não os botões tipo opcional - Bruno 16/04/2018
  if (LerBooleanConfig('ckTrabalharTipoOpcionais',frmMenu.cdsCFG.FileName)) then
  begin
    btFiltraOpc1.Visible:= True;
    btFiltraOpc2.Visible:= True;
    btFiltraOpc3.Visible:= True;
    btFiltraOpc4.Visible:= True;
    btFiltraOpc5.Visible:= True;
    btFiltraOpc6.Visible:= True;

    DBCtrlGridOpcional.Align:= alBottom;
    DBCtrlGridOpcional.Height:= 125;
  end
  else
  begin
    btFiltraOpc1.Visible:= False;
    btFiltraOpc2.Visible:= False;
    btFiltraOpc3.Visible:= False;
    btFiltraOpc4.Visible:= False;
    btFiltraOpc5.Visible:= False;
    btFiltraOpc6.Visible:= False;

    DBCtrlGridOpcional.Align:= alClient;
    cdsOpcional.Filtered:= False;
  end;
end;

end.
