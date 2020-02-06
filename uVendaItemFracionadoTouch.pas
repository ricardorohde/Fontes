unit uVendaItemFracionadoTouch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxButtonEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxLabel, cxDBLabel,
  Vcl.DBCGrids, Vcl.StdCtrls, AdvGlowButton, AdvGroupBox, AdvPanel,
  Datasnap.DBClient, Datasnap.Provider, MemDS, DBAccess, Uni, Vcl.DBCtrls,
  system.Math, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfrmVendaItemFracionadoTouch = class(TForm)
    cxgrTamnhoMaterial: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1nro_item: TcxGridDBColumn;
    cxGridDBTableView1id_material: TcxGridDBColumn;
    cxGridDBTableView1descricao: TcxGridDBColumn;
    cxGridDBTableView1tamanho: TcxGridDBColumn;
    cxGridDBTableView1quantidade: TcxGridDBColumn;
    cxGridDBTableView1valor_unit: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    pnDireito: TPanel;
    pnDesProduto: TPanel;
    Label1: TLabel;
    lbValor: TLabel;
    Label2: TLabel;
    qrCategoria: TUniQuery;
    qrCategoriaid_categoria: TIntegerField;
    qrCategoriadescricao: TWideStringField;
    qrCategoriab_exibir_icone: TBooleanField;
    qrCategoriaarquivo_img: TWideStringField;
    qrCategorianro_produtos: TLargeintField;
    dsCategoria: TDataSource;
    dsBuscaItem: TDataSource;
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
    qrBuscaItemvalor_acrescimo: TFloatField;
    qrBuscaItemb_peso_balanca: TBooleanField;
    qrBuscaItemid_categoria: TIntegerField;
    qrBuscaItemb_exige_alterar_preco_venda: TBooleanField;
    qrBuscaItemb_exige_70pc_valor_unit: TBooleanField;
    qrOpcional: TUniQuery;
    qrOpcionalid_opcional: TIntegerField;
    qrOpcionaldescricao: TWideStringField;
    qrOpcionalvalor: TFloatField;
    qrOpcionalflag_selecionado: TBooleanField;
    qrOpcionaldescricao_valor: TWideStringField;
    dspOpcional: TDataSetProvider;
    cdsOpcional: TClientDataSet;
    cdsOpcionalid_opcional: TIntegerField;
    cdsOpcionaldescricao: TWideStringField;
    cdsOpcionalvalor: TFloatField;
    cdsOpcionalflag_selecionado: TBooleanField;
    cdsOpcionaldescricao_valor: TWideStringField;
    dsOpcional: TDataSource;
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
    btPag«ProdutoProx: TDBAdvGlowButton;
    btPagProdutoAnt: TDBAdvGlowButton;
    pnLabelProdutos: TPanel;
    pnCodigoQuantidade: TAdvPanel;
    AdvGroupBox1: TAdvGroupBox;
    btBuscaItem: TAdvGlowButton;
    btLimparCodigo: TAdvGlowButton;
    cxLabel1: TcxLabel;
    edCodProduto: TEdit;
    btAdicionarProduto: TAdvGlowButton;
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
    FlowPanel1: TFlowPanel;
    btConfirma: TAdvGlowButton;
    btCancela: TAdvGlowButton;
    cdsItens: TClientDataSet;
    cdsItensnro_item: TIntegerField;
    cdsItensid_material: TIntegerField;
    cdsItensquantidade: TFloatField;
    cdsItensdescricao: TStringField;
    cdsItensvalor: TFloatField;
    cdsItenstamanho: TStringField;
    cdsItenstamanho2: TStringField;
    cdsItensvalor_fracionado: TFloatField;
    cdsItenscod_impressora: TIntegerField;
    cdsItensobservacao: TStringField;
    cdsItenscod_referencia: TStringField;
    cdsItensid_categoria: TIntegerField;
    cdsItensvalor_unit_ref: TFloatField;
    cdsItensa: TBooleanField;
    dsItens: TDataSource;
    DBMemo1: TDBMemo;
    DBText3: TDBText;
    DBText5: TDBText;
    Panel1: TPanel;
    Label3: TLabel;
    lbValorItem: TLabel;
    Label4: TLabel;
    lbValorOpcionais: TLabel;
    imgProduto: TImage;
    qrBuscaItemarquivo_img: TWideStringField;
    qrBuscaItemobservacao: TWideStringField;
    qrOpcionaltipo: TIntegerField;
    cdsOpcionaltipo: TIntegerField;
    btFiltraOpc1: TAdvGlowButton;
    btFiltraOpc2: TAdvGlowButton;
    btFiltraOpc3: TAdvGlowButton;
    btFiltraOpc4: TAdvGlowButton;
    btFiltraOpc5: TAdvGlowButton;
    btFiltraOpc6: TAdvGlowButton;
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure btAdicionarProdutoClick(Sender: TObject);
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
    procedure btKb3_BackSpaceClick(Sender: TObject);
    procedure btKb3_QClick(Sender: TObject);
    procedure btKb3_WClick(Sender: TObject);
    procedure btKb3_EClick(Sender: TObject);
    procedure btKb3_RClick(Sender: TObject);
    procedure btKb3_TClick(Sender: TObject);
    procedure btKb3_YClick(Sender: TObject);
    procedure btKb3_UClick(Sender: TObject);
    procedure btKb3_IClick(Sender: TObject);
    procedure btKb3_OClick(Sender: TObject);
    procedure btKb3_PClick(Sender: TObject);
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
    procedure btKb3_VClick(Sender: TObject);
    procedure btKb3_BClick(Sender: TObject);
    procedure btKb3_NClick(Sender: TObject);
    procedure btKb3_MClick(Sender: TObject);
    procedure btKb3_VIRGClick(Sender: TObject);
    procedure btKb3_PONTOClick(Sender: TObject);
    procedure btKb3_PONTVIRGClick(Sender: TObject);
    procedure btKb3_ESPACOClick(Sender: TObject);
    procedure btKb3_EnterClick(Sender: TObject);
    procedure btKb3_AClick(Sender: TObject);
    procedure btKb3_CClick(Sender: TObject);
    procedure btKb3_LIMPARClick(Sender: TObject);
    constructor Create(sender : Tcomponent ; b_item_maior_valor : boolean = true;
                       b_70pc_categoria_diferente : boolean = false); reintroduce;
    procedure DBCtrlGridCategoriaPaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure DBCtrlGridCategoriaClick(Sender: TObject);
    procedure DBCtrlGridOpcionalPaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure DBCtrlGridOpcionalClick(Sender: TObject);
    procedure edCodProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btBuscaItemClick(Sender: TObject);
    procedure btLimparCodigoClick(Sender: TObject);
    procedure btPagCategoriaAntClick(Sender: TObject);
    procedure btPagCategoriaProxClick(Sender: TObject);
    procedure valida70pc;
    procedure rateiaValores;
    procedure cxGridDBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    function SomaOpcionais : double;
    procedure btConfirmaClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBCtrlGridProdutoPaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure cdsItensAfterDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DBMemo1Change(Sender: TObject);
    procedure DBCtrlGridProdutoClick(Sender: TObject);
    procedure FiltraOpcionais(sTipo: string);
    procedure btFiltraOpc1Click(Sender: TObject);
    procedure btFiltraOpc2Click(Sender: TObject);
    procedure btFiltraOpc3Click(Sender: TObject);
    procedure btFiltraOpc4Click(Sender: TObject);
    procedure btFiltraOpc5Click(Sender: TObject);
    procedure btFiltraOpc6Click(Sender: TObject);
    procedure qrBuscaItemAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    i_where : integer;
    tamanho_desc, tamanho: String;
    b_70pc_categoria_diferente, b_item_maior_valor, flag_rateio,
    flag_validar_70pc, bUtilizaSelecaoPrecos : boolean;


    const KEYEVENTF_KEYDOWN = 0;
  public
    { Public declarations }
  end;

var
  frmVendaItemFracionadoTouch: TfrmVendaItemFracionadoTouch;

implementation

{$R *.dfm}

uses uVendaComplementoTouch, uObservacaoTouch, uMenu, uVendaSelecaoTamanho,
  uFuncoes, uVendaSelecaoPreco;

procedure TfrmVendaItemFracionadoTouch.rateiaValores;
var valor_total, valor_max, valor_rateado, soma: double;
 i: integer;
begin
  inherited;
  if flag_rateio then
  begin
    flag_rateio :=false;
    if cdsItens.RecordCount<=0 then
    begin
      tamanho:='';
      tamanho_desc:='';
      lbValorItem.Caption:= 'R$ 0,00';
    end
    else
    begin
      cdsItens.first;
      valor_total:=0;
      valor_max:=0;
      cdsItens.first;
      //verifica qual o valor maior
      while not  cdsItens.eof do
      begin
        if valor_max < cdsItens.FieldByName('valor_unit').asfloat  then
          valor_max := cdsItens.FieldByName('valor_unit').asfloat;
        cdsItens.Next;
      end;
      if b_item_maior_valor and (not b_70pc_categoria_diferente)  then
        valor_total := valor_max
      else
      begin
        if VarIsNull(cdsItens.Aggregates[0].Value) then
          soma := 0
        else
          soma:= cdsItens.Aggregates[0].Value;
        valor_total := roundto(soma/cdsItens.RecordCount, -2);
      end;

      //Aplica o rateio
      cdsItens.first;
      i:=1;
      while not  cdsItens.eof do
      begin
        cdsItens.Edit;
        cdsItens.FieldByName('nro_item').asinteger:= i;
        cdsItens.FieldByName('quantidade').AsFloat:= 1/cdsItens.RecordCount;
        cdsItens.FieldByName('tamanho').asstring:= tamanho;
        cdsItens.FieldByName('tamanho_desc').asstring:= tamanho_desc;
        if b_item_maior_valor then
        begin
          if not b_70pc_categoria_diferente then
            cdsItens.FieldByName('valor_unit').AsFloat := valor_total;
          cdsItens.FieldByName('valor_fracionado').AsFloat:=valor_total / cdsItens.RecordCount;
        end
        else
          cdsItens.FieldByName('valor_fracionado').AsFloat:=cdsItens.FieldByName('valor_unit').AsFloat / cdsItens.RecordCount;;
        cdsItens.Post;
        cdsItens.Next;
        i:=i+1;
      end;

      valor_total := valor_total  + SomaOpcionais;
      lbValorItem.Caption:= format('R$ %s',[ formatfloat('0.00',valor_total)]);
    end;
    flag_rateio:=true;
  end;
end;

procedure TfrmVendaItemFracionadoTouch.valida70pc;
var categoria : integer;
    flag_categoria_dif : boolean;
    quantidade, valor_unit, valor_unit_70 : double;
begin
  if cdsItens.RecordCount<1 then exit;

  //analisa pra ver se tem  categorias diferentes
  categoria := cdsItens.FieldByName('id_categoria').AsInteger;
  flag_categoria_dif := false;
  cdsItens.First;
  while not cdsItens.eof do
  begin
    if not flag_categoria_dif then
      flag_categoria_dif := categoria <> cdsItens.FieldByName('id_categoria').AsInteger;
    cdsItens.Next;
  end;

  //atualiza os valores
  if flag_categoria_dif then
  begin
    cdsItens.First;
    while not cdsItens.eof do
    begin
      quantidade :=cdsItens.FieldByName('quantidade').AsFloat;

      valor_unit :=cdsItens.FieldByName('valor_unit_ref').asfloat;
      valor_unit_70  := (valor_unit *0.7)/quantidade;
      cdsItens.Edit;
      cdsItens.FieldByName('valor_unit').AsFloat := valor_unit_70;
      //Marca o Flag de item com exigÍncia de valor mÌnimo de 70% do unit·rio
      cdsItens.FieldByName('b_70pc_valor_unit').asboolean := true;
      cdsItens.post;

      cdsItens.Next;
    end;
  end;
  rateiaValores;
end;


constructor TfrmVendaItemFracionadoTouch.Create(sender: TComponent; b_item_maior_valor : boolean = true; b_70pc_categoria_diferente : boolean = false);
begin
  inherited create(sender);
  qrCategoria.close;
  qrCategoria.ParamByName('id_empresa').asinteger := recproj.iEmp;
  qrbuscaitem.ParamByName('id_empresa').asinteger := recproj.iEmp;
  qrCategoria.Open;

  i_where := qrBuscaItem.SQL.count - 2;

  cdsItens.CreateDataSet;
  tamanho_desc:='';
  tamanho:='';

  self.b_70pc_categoria_diferente := b_70pc_categoria_diferente;
  self.b_item_maior_valor := b_item_maior_valor;

  flag_rateio:=true;
  flag_validar_70pc := false;

  bUtilizaSelecaoPrecos:= LerBooleanConfig('ckUtilizar_selecao_precos', frmMenu.cdsCFG.FileName);
end;

function TfrmVendaItemFracionadoTouch.SomaOpcionais : double;
var posicao : integer;
    total_opcionais : double;
begin
  total_opcionais :=0;

  if cdsOpcional.Active then
  begin
    if cdsOpcional.RecordCount > 0 then
    begin
      posicao := cdsOpcional.RecNo;

      cdsopcional.DisableControls;

      if cdsOpcional.Filtered then
        cdsOpcional.Filtered:= False;

      total_opcionais :=0;
      cdsOpcional.First;
      while not cdsOpcional.Eof do
      begin
        if cdsOpcional.FieldByName('flag_selecionado').AsBoolean then
        begin
          total_opcionais := total_opcionais  + cdsOpcional.FieldByName('valor').asfloat;
        end;
        cdsOpcional.Next;
      end;

      cdsOpcional.Filtered:= True;

      cdsopcional.EnableControls;

      cdsOpcional.RecNo := posicao;

      result := total_opcionais;
    end;

    lbValorOpcionais.Caption:= format('R$ %s',[ formatfloat('0.00',total_opcionais)]);
  end;
end;

procedure TfrmVendaItemFracionadoTouch.cxGridDBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if cdsItens.RecordCount>0 then  cdsItens.delete;
end;

procedure TfrmVendaItemFracionadoTouch.DBCtrlGridCategoriaClick(
  Sender: TObject);
var filtro : string;
begin
  edCodProduto.Clear;
  qrBuscaItem.Close;
  filtro := ' and m.cat_001 = :id_categoria ';
  qrBuscaItem.SQL[i_where] :=   filtro;

  qrBuscaItem.ParamByName('id_categoria').asinteger := qrCategoria.FieldByName('id_categoria').asinteger;
  qrBuscaItem.open;

end;

procedure TfrmVendaItemFracionadoTouch.DBCtrlGridCategoriaPaintPanel(
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

procedure TfrmVendaItemFracionadoTouch.DBCtrlGridOpcionalClick(
  Sender: TObject);
begin
  if cdsOpcional.RecordCount > 0 then
  begin
    cdsOpcional.Edit;
    cdsOpcional.FieldByName('flag_selecionado').AsBoolean := not cdsOpcional.FieldByName('flag_selecionado').AsBoolean ;
    rateiaValores;
  end;
end;

procedure TfrmVendaItemFracionadoTouch.DBCtrlGridOpcionalPaintPanel(
  DBCtrlGrid: TDBCtrlGrid; Index: Integer);
begin
  shFormaSelecionado.Visible := cdsOpcional.FieldByName('flag_selecionado').AsBoolean ;
end;

procedure TfrmVendaItemFracionadoTouch.FiltraOpcionais(sTipo: string);
begin
  cdsOpcional.Filtered:= False;
  cdsOpcional.Filter:= 'tipo = ' + sTipo;
  cdsOpcional.Filtered:= True;
end;

procedure TfrmVendaItemFracionadoTouch.DBCtrlGridProdutoClick(Sender: TObject);
var valor_happy: double;
begin
  inherited;
  if qrBuscaItem.RecordCount >0 then
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

    qrBuscaItem.Edit;
    if qrBuscaItem.FieldByName('b_venda_tamanho').AsBoolean then
    begin
      if (tamanho = '') or (cdsItens.RecordCount<1) then
      begin
        frmVendaSelecaoTamanho := TfrmVendaSelecaoTamanho.Create(self,qrBuscaItem.FieldByName('id_material').asinteger);
        frmVendaSelecaoTamanho.ShowModal;
        if frmVendaSelecaoTamanho.Tag = 1 then tamanho := frmVendaSelecaoTamanho.tamanho;
        frmVendaSelecaoTamanho.Free;
      end;
      if tamanho = '' then
      begin
        qrBuscaItem.Close;
        if edcodproduto.CanFocus then edcodproduto.SetFocus;
        exit;
      end;

      qrBuscaItem.FieldByName('tamanho_padrao').AsString:= tamanho;
      if tamanho = 'P' then
      begin
        tamanho_desc:= qrBuscaItem.FieldByName('descricao_p').AsString;
        qrBuscaItem.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_tam_p').asfloat;
      end
      else if tamanho = 'M' then
      begin
        tamanho_desc:= qrBuscaItem.FieldByName('descricao_m').AsString;
        qrBuscaItem.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_tam_m').asfloat;
      end
      else if tamanho = 'G' then
      begin
        tamanho_desc:= qrBuscaItem.FieldByName('descricao_g').AsString;
        qrBuscaItem.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_tam_g').asfloat;
      end
      else if tamanho = 'GG' then
      begin
        tamanho_desc:= qrBuscaItem.FieldByName('descricao_gg').AsString;
        qrBuscaItem.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_tam_gg').asfloat;
      end
      else if tamanho = 'E' then
      begin
        tamanho_desc:= qrBuscaItem.FieldByName('descricao_extra').AsString;
        qrBuscaItem.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_tam_extra').asfloat;
      end
      else
        qrBuscaItem.FieldByName('descricao').AsString:= qrBuscaItem.FieldByName('descricao_old').AsString;
    end;

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
  end;
end;

procedure TfrmVendaItemFracionadoTouch.DBCtrlGridProdutoPaintPanel(
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

procedure TfrmVendaItemFracionadoTouch.DBMemo1Change(Sender: TObject);
begin
  //contorno pois o evento de click do bot„o de inserÁ„o dispara antes de postar a alteraÁ„o na tabela
  if qrBuscaItem.FieldByName('observacao').AsString <> DBMemo1.Text  then
    qrBuscaItem.FieldByName('observacao').AsString := DBMemo1.Text;

end;

procedure TfrmVendaItemFracionadoTouch.edCodProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = VK_RETURN then btBuscaItem.Click;
end;

procedure TfrmVendaItemFracionadoTouch.FormResize(Sender: TObject);
begin
  if self.width <=1030 then
    DBCtrlGridProduto.ColCount := 2
  else
    DBCtrlGridProduto.ColCount := 3;
end;

procedure TfrmVendaItemFracionadoTouch.FormShow(Sender: TObject);
begin
  //DBCtrlGridCategoriaClick(nil);

  edCodProduto.SetFocus;

  //Verifica configuraÁ„o para exibir ou n„o os botıes tipo opcional - Bruno 16/04/2018
  if (LerBooleanConfig('ckTrabalharTipoOpcionais',frmMenu.cdsCFG.FileName)) then
  begin
    btFiltraOpc1.Visible:= True;
    btFiltraOpc2.Visible:= True;
    btFiltraOpc3.Visible:= True;
    btFiltraOpc4.Visible:= True;
    btFiltraOpc5.Visible:= True;
    btFiltraOpc6.Visible:= True;

    DBCtrlGridOpcional.Align:= alBottom;
    DBCtrlGridOpcional.Height:= 100;
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

procedure TfrmVendaItemFracionadoTouch.qrBuscaItemAfterOpen(DataSet: TDataSet);
begin
   if self.Visible then DBCtrlGridProdutoClick(nil);
end;

procedure TfrmVendaItemFracionadoTouch.btAdicionarProdutoClick(Sender: TObject);
begin
  //valida os itens e insere
  if qrBuscaItem.Active then
  begin
    if qrBuscaItem.RecordCount<1 then
    begin
      Application.MessageBox('N„o foi informado nenhum item a adicionar!', 'AtenÁ„o', MB_ICONINFORMATION + MB_OK);
      edCodProduto.SetFocus;
      abort;
    end
    else
    begin
      //valida valor unit·rio
      if (qrBuscaItem.FieldByName('valor_unit').IsNull)  or
       (qrBuscaItem.FieldByName('valor_unit').AsFloat<=0) or
       (qrBuscaItem.FieldByName('valor_unit').AsFloat>99999999) then
      begin
        Application.MessageBox('Valor unit·rio inv·lido!', 'AtenÁ„o', MB_ICONINFORMATION + MB_OK);
        abort;
      end;
    end;
    // verifica se ja informou o item
    if cdsItens.Locate('id_material',qrBuscaItem.FieldByName('id_material').AsInteger, [])  then
    begin
      Application.MessageBox('Item j· informado!', 'AtenÁ„o', MB_ICONINFORMATION + MB_OK);
      if edCodProduto.CanFocus then edCodProduto.SetFocus;
      abort;
    end;

    // verifica se ja atingiu o m·ximo de 4 registros
    if cdsItens.RecordCount>=4 then
    begin
      Application.MessageBox('N„o È possÌvel informar mais itens!', 'AtenÁ„o', MB_ICONINFORMATION + MB_OK);
      if edCodProduto.CanFocus then edCodProduto.SetFocus;
      abort;
    end;

    //Tudo ok, insere
    cdsItens.Append;
    cdsItens.FieldByName('nro_item').AsInteger:=cdsItens.RecordCount+1;
    cdsItens.FieldByName('id_material').AsInteger:=qrBuscaItem.FieldByName('id_material').AsInteger;
    cdsItens.FieldByName('quantidade').asfloat:=1;
    cdsItens.FieldByName('descricao').asstring:=qrBuscaItem.FieldByName('descricao').AsString;
    cdsItens.FieldByName('cod_ref').asstring:=qrBuscaItem.FieldByName('cod_ref').AsString;
    cdsItens.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_unit').AsFloat;
    cdsItens.FieldByName('valor_unit_ref').asfloat:= qrBuscaItem.FieldByName('valor_unit').AsFloat;
    cdsItens.FieldByName('tamanho_desc').asstring:=tamanho_desc;
    cdsItens.FieldByName('tamanho').asstring:=tamanho;
    cdsItens.FieldByName('cod_impressora').AsInteger:=qrBuscaItem.FieldByName('cod_impressora').AsInteger;
    cdsItens.FieldByName('id_categoria').AsInteger:=qrBuscaItem.FieldByName('id_categoria').AsInteger;
    cdsItens.FieldByName('b_70pc_valor_unit').asboolean := false;
    cdsItens.FieldByName('observacao').asstring:=qrBuscaItem.FieldByName('observacao').AsString;
    cdsItens.post;
    edCodProduto.clear;
    qrBuscaItem.Refresh;
    rateiaValores;
    if b_70pc_categoria_diferente then valida70pc;
  end;

  if edCodProduto.CanFocus then edCodProduto.SetFocus;
  if cdsItens.RecordCount>=4 then btConfirma.SetFocus;

  qrBuscaItem.Close;

  if cdsOpcional.Active then
    cdsOpcional.Close;
end;

procedure TfrmVendaItemFracionadoTouch.AdvGlowButton2Click(Sender: TObject);
begin
  Application.CreateForm(TfrmVendaComplementoTouch,frmVendaComplementoTouch);
  frmVendaComplementoTouch.ShowModal;
end;


procedure TfrmVendaItemFracionadoTouch.btBuscaItemClick(Sender: TObject);
var filtro,  str_qtd  : string;
    indice_qtde : integer;
    valor_happy : double;
begin
  qrBuscaItem.Close;

  filtro := ' and m.mat_004 like :cod_ref ';
  qrBuscaItem.SQL[i_where] :=   filtro;

  qrBuscaItem.ParamByName('cod_ref').AsString := edCodProduto.Text;
  qrBuscaItem.open;
  if not qrBuscaItem.RecordCount >0 then
  begin
    Application.MessageBox('Produto n„o encontrado!', 'AtenÁ„o', MB_ICONINFORMATION + MB_OK);
    edCodProduto.SetFocus;
  end
  else
  begin
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
  end;
end;

procedure TfrmVendaItemFracionadoTouch.btCancelaClick(Sender: TObject);
begin
  self.Tag :=0;
  close;
end;

procedure TfrmVendaItemFracionadoTouch.btConfirmaClick(Sender: TObject);
begin
  if cdsItens.RecordCount<2 then
  begin
    Application.MessageBox('… necess·rio informar pelo menos dois itens!', 'AtenÁ„o', MB_ICONINFORMATION + MB_OK);
    edCodProduto.SetFocus;
  end
  else
  begin
    self.Tag:=1;
    close;
  end;
end;

procedure TfrmVendaItemFracionadoTouch.btFiltraOpc1Click(Sender: TObject);
begin
  FiltraOpcionais('1'); //Massas
end;

procedure TfrmVendaItemFracionadoTouch.btFiltraOpc2Click(Sender: TObject);
begin
  FiltraOpcionais('2'); //Recheios
end;

procedure TfrmVendaItemFracionadoTouch.btFiltraOpc3Click(Sender: TObject);
begin
  FiltraOpcionais('3'); //Complementos
end;

procedure TfrmVendaItemFracionadoTouch.btFiltraOpc4Click(Sender: TObject);
begin
  FiltraOpcionais('4'); //Molhos
end;

procedure TfrmVendaItemFracionadoTouch.btFiltraOpc5Click(Sender: TObject);
begin
  FiltraOpcionais('5'); //Coberturas
end;

procedure TfrmVendaItemFracionadoTouch.btFiltraOpc6Click(Sender: TObject);
begin
  FiltraOpcionais('0'); //Geral - N„o s„o todos e sim tipo Geral
end;

procedure TfrmVendaItemFracionadoTouch.btKb1_0Click(Sender: TObject);
begin
  keybd_event(48, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(48, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb1_1Click(Sender: TObject);
begin
  keybd_event(49, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(49, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb1_2Click(Sender: TObject);
begin
  keybd_event(50, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(50, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb1_3Click(Sender: TObject);
begin
  keybd_event(51, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(51, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb1_4Click(Sender: TObject);
begin
  keybd_event(52, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(52, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb1_5Click(Sender: TObject);
begin
  keybd_event(53, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(53, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb1_6Click(Sender: TObject);
begin
  keybd_event(54, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(54, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb1_7Click(Sender: TObject);
begin
  keybd_event(55, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(55, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb1_8Click(Sender: TObject);
begin
  keybd_event(56, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(56, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb1_9Click(Sender: TObject);
begin
  keybd_event(57, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(57, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb3_AClick(Sender: TObject);
begin
  keybd_event(65, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(65, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb3_BackSpaceClick(Sender: TObject);
begin
  keybd_event(vk_back, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(vk_back, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb3_BClick(Sender: TObject);
begin
  keybd_event(66, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(66, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb3_CClick(Sender: TObject);
begin
  keybd_event(67, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(67, 0, KEYEVENTF_KEYUP, 0);
end;


procedure TfrmVendaItemFracionadoTouch.btKb3_CEDILHClick(Sender: TObject);
begin
  keybd_event(186, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(186, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb3_DClick(Sender: TObject);
begin
  keybd_event(68, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(68, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb3_EClick(Sender: TObject);
begin
  keybd_event(69, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(69, 0, KEYEVENTF_KEYUP, 0);
end;




procedure TfrmVendaItemFracionadoTouch.btKb3_EnterClick(Sender: TObject);
begin
  keybd_event(VK_RETURN, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(VK_RETURN, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb3_ESPACOClick(Sender: TObject);
begin
  keybd_event(vk_space, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(vk_space, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb3_FClick(Sender: TObject);
begin
  keybd_event(70, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(70, 0, KEYEVENTF_KEYUP, 0);
end;



procedure TfrmVendaItemFracionadoTouch.btKb3_GClick(Sender: TObject);
begin
  keybd_event(71, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(71, 0, KEYEVENTF_KEYUP, 0);
end;



procedure TfrmVendaItemFracionadoTouch.btKb3_HClick(Sender: TObject);
begin
  keybd_event(72, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(72, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb3_IClick(Sender: TObject);
begin
  keybd_event(73, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(73, 0, KEYEVENTF_KEYUP, 0);
end;


procedure TfrmVendaItemFracionadoTouch.btKb3_JClick(Sender: TObject);
begin
  keybd_event(74, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(74, 0, KEYEVENTF_KEYUP, 0);
end;


procedure TfrmVendaItemFracionadoTouch.btKb3_KClick(Sender: TObject);
begin
  keybd_event(75, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(75, 0, KEYEVENTF_KEYUP, 0);
end;



procedure TfrmVendaItemFracionadoTouch.btKb3_LClick(Sender: TObject);
begin
  keybd_event(76, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(76, 0, KEYEVENTF_KEYUP, 0);
end;


procedure TfrmVendaItemFracionadoTouch.btKb3_LIMPARClick(Sender: TObject);
begin
  if activecontrol is TEdit then TEdit(activecontrol).Clear;
  if activecontrol is TMemo then TMemo(activecontrol).Clear;
end;

procedure TfrmVendaItemFracionadoTouch.btKb3_MClick(Sender: TObject);
begin
  keybd_event(77, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(77, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb3_NClick(Sender: TObject);
begin
  keybd_event(78, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(78, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb3_OClick(Sender: TObject);
begin
  keybd_event(79, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(79, 0, KEYEVENTF_KEYUP, 0);
end;


procedure TfrmVendaItemFracionadoTouch.btKb3_PClick(Sender: TObject);
begin
  keybd_event(80, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(80, 0, KEYEVENTF_KEYUP, 0);
end;


procedure TfrmVendaItemFracionadoTouch.btKb3_PONTOClick(Sender: TObject);
begin
  keybd_event(190, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(190, 0, KEYEVENTF_KEYUP, 0);
end;


procedure TfrmVendaItemFracionadoTouch.btKb3_PONTVIRGClick(Sender: TObject);
begin
  keybd_event(191, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(191, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb3_QClick(Sender: TObject);
begin
  keybd_event(81, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(81, 0, KEYEVENTF_KEYUP, 0);
end;


procedure TfrmVendaItemFracionadoTouch.btKb3_RClick(Sender: TObject);
begin
  keybd_event(82, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(82, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb3_SClick(Sender: TObject);
begin
  keybd_event(83, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(83, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb3_TClick(Sender: TObject);
begin
  keybd_event(84, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(84, 0, KEYEVENTF_KEYUP, 0);
end;


procedure TfrmVendaItemFracionadoTouch.btKb3_UClick(Sender: TObject);
begin
  keybd_event(85, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(85, 0, KEYEVENTF_KEYUP, 0);
end;


procedure TfrmVendaItemFracionadoTouch.btKb3_VClick(Sender: TObject);
begin
  keybd_event(86, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(86, 0, KEYEVENTF_KEYUP, 0);
end;


procedure TfrmVendaItemFracionadoTouch.btKb3_VIRGClick(Sender: TObject);
begin
  keybd_event(110, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(110, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb3_WClick(Sender: TObject);
begin
  keybd_event(87, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(87, 0, KEYEVENTF_KEYUP, 0);
end;


procedure TfrmVendaItemFracionadoTouch.btKb3_XClick(Sender: TObject);
begin
  keybd_event(88, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(88, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb3_YClick(Sender: TObject);
begin
  keybd_event(89, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(89, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btKb3_ZClick(Sender: TObject);
begin
  keybd_event(90, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(90, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmVendaItemFracionadoTouch.btLimparCodigoClick(Sender: TObject);
begin
  edCodProduto.clear;
end;

procedure TfrmVendaItemFracionadoTouch.btPagCategoriaAntClick(Sender: TObject);
var i: integer;
begin
  if qrCategoria.Active then
  begin
    for I := 0 to 9 do  qrCategoria.Prior;
  end;
end;

procedure TfrmVendaItemFracionadoTouch.btPagCategoriaProxClick(
  Sender: TObject);
var i: integer;
begin
  if qrCategoria.Active then
  begin
    for I := 0 to 9 do  qrCategoria.next;
  end;
end;

procedure TfrmVendaItemFracionadoTouch.cdsItensAfterDelete(DataSet: TDataSet);
begin
  rateiaValores;
  if b_70pc_categoria_diferente then valida70pc;
end;

end.
