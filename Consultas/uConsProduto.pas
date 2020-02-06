unit uConsProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, MemDS, DBAccess, Uni,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.StdCtrls, AdvGlowButton,
  Vcl.ExtCtrls, AdvPanel, JvExStdCtrls, JvCheckBox, cxContainer, cxCheckBox,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  TfrmConsProduto = class(TForm)
    AdvPanel1: TAdvPanel;
    pnBotoes: TFlowPanel;
    btNovo: TAdvGlowButton;
    Label1: TLabel;
    Label2: TLabel;
    edBusca: TEdit;
    cbCampoFiltro: TComboBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qrConsulta: TUniQuery;
    dsConsulta: TDataSource;
    qrConsultamat_001: TIntegerField;
    qrConsultaemp_001: TIntegerField;
    qrConsultamat_004: TWideStringField;
    qrConsultamat_003: TWideStringField;
    qrConsultacategoria: TWideStringField;
    qrConsultaunidade: TWideStringField;
    qrConsultamat_008: TFloatField;
    qrConsultastatus: TWideStringField;
    cxGrid1DBTableView1mat_004: TcxGridDBColumn;
    cxGrid1DBTableView1mat_003: TcxGridDBColumn;
    cxGrid1DBTableView1categoria: TcxGridDBColumn;
    cxGrid1DBTableView1unidade: TcxGridDBColumn;
    cxGrid1DBTableView1mat_008: TcxGridDBColumn;
    cxGrid1DBTableView1status: TcxGridDBColumn;
    btPesquisar: TAdvGlowButton;
    chkTermoParcialBusca: TcxCheckBox;
    btAbrirRegistro: TAdvGlowButton;
    btDuplicar: TAdvGlowButton;
    btReajustarPreco: TAdvGlowButton;
    qrConsultaid_situacao: TIntegerField;
    cxGrid1DBTableView1id_situacao: TcxGridDBColumn;
    qrConsultamat_008_1: TFloatField;
    qrConsultaquantidade: TFloatField;
    cxGrid1DBTableView1quantidade: TcxGridDBColumn;
    btEtiqueta: TAdvGlowButton;
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure qrConsultaAfterOpen(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure abreCadastro;
    procedure btAbrirRegistroClick(Sender: TObject);
    procedure btDuplicarClick(Sender: TObject);
    procedure btReajustarPrecoClick(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure btEtiquetaClick(Sender: TObject);

  private
    { Private declarations }
    i_where : integer;
  public
   tela:integer; //0 Seria produto, 1 Seria combo
  end;

var
  frmConsProduto: TfrmConsProduto;

implementation

{$R *.dfm}

uses
 uDetalheProduto, uMenu, uProdutoDuplicar, uProdutoReajustePreco, uEtiquetaProduto;

procedure TfrmConsProduto.btAbrirRegistroClick(Sender: TObject);
begin
  abreCadastro;
end;

procedure TfrmConsProduto.btDuplicarClick(Sender: TObject);
begin
  if qrConsulta.RecordCount>0 then
  begin
    frmProdutoDuplicar:= tfrmProdutoDuplicar.Create(self, qrConsulta.FieldByName('mat_001').AsInteger);
    frmProdutoDuplicar.ShowModal;
    frmProdutoDuplicar.Free;
  end;
  qrConsulta.Refresh;
end;

procedure TfrmConsProduto.btEtiquetaClick(Sender: TObject);
begin
  frmEtiquetaProduto := tfrmEtiquetaProduto.Create(self);
  frmEtiquetaProduto.ShowModal;
  frmEtiquetaProduto.Free;
  qrConsulta.Refresh;
end;

procedure TfrmConsProduto.btNovoClick(Sender: TObject);
var IdProduto: integer;
begin
  frmDetalheProduto:= tfrmDetalheProduto.Create(self);

  if tela=1 then  // Tela 1 seria para Combo, Oculta o estoque
  begin
    frmdetalheproduto.advEstoque.Visible:=false;
    frmdetalheproduto.edCusto.Properties.ReadOnly:=true;
    frmdetalheproduto.edVenda.Properties.ReadOnly:=true;
    frmdetalheproduto.edIngredientes.Properties.ReadOnly:=true;
    frmdetalheproduto.edLucro.Properties.ReadOnly:=true;
    frmdetalheproduto.edPRazo.Properties.ReadOnly:=true;
    frmdetalheproduto.edAtacado.Properties.ReadOnly:=true;
    frmdetalheproduto.btMovimentoEstoque.Visible:= False;

  end
  else // Tela 0 seria o produto
    frmdetalheproduto.pgCombo.TabVisible:=false;

  frmDetalheProduto.ShowModal;

  if frmDetalheProduto.qrDetalhe.RecordCount > 0 then
    IdProduto:= frmDetalheProduto.qrDetalhemat_001.AsInteger
  else
    IdProduto:= 0;

  frmDetalheProduto.Free;
  qrConsulta.Refresh;

  if IdProduto > 0 then
    qrConsulta.Locate('mat_001', IdProduto, []);
end;

procedure TfrmConsProduto.btPesquisarClick(Sender: TObject);
var str_sql, curinga : string;
begin
  qrConsulta.Close;

  if chkTermoParcialBusca.Checked then curinga:='%'  else curinga:='';

  case cbCampoFiltro.ItemIndex of
    0: str_sql := ' and upper(m.mat_003) like upper(';      //descrição
    1: str_sql := ' and upper(m.mat_004) like upper(';      //codigo
    2: str_sql := ' and upper(c.cat_002) like upper(';      //categoria
  end;
  str_sql := str_sql + QuotedStr(curinga+trim(edBusca.Text) +'%') +') ';

  //adiciona o filtro a ultima linha do select, onde está a cláusula 'where'
  if i_where = qrConsulta.SQL.Count then
    qrConsulta.SQL.Add(str_sql)
  else
    qrConsulta.SQL[i_where] := str_sql;
  qrConsulta.Open;
end;

procedure TfrmConsProduto.btReajustarPrecoClick(Sender: TObject);
begin
  frmProdutoReajustePreco := TfrmProdutoReajustePreco.create(self);
  frmProdutoReajustePreco.showmodal;
  frmProdutoReajustePreco.free;
  qrConsulta.refresh;
end;

procedure TfrmConsProduto.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  abreCadastro;
end;


procedure TfrmConsProduto.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);

var
  AColumn : TcxCustomGridTableItem;
begin
  inherited;
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('id_situacao');

  if ARecord.Values[AColumn.Index]=3  then
    AStyle := frmMenu.cxFundoVermelho;
end;



procedure TfrmConsProduto.abreCadastro;
begin
  if qrConsulta.RecordCount>0 then
  begin
    frmDetalheProduto:= tfrmDetalheProduto.Create(self, qrConsulta.FieldByName('mat_001').AsInteger);
    if tela=1 then  // Tela 1 seria para Combo, Oculta o estoque
    begin
      frmdetalheproduto.ckCombo.Properties.ReadOnly:=true;
      frmdetalheproduto.advEstoque.Visible:=false;
      frmdetalheproduto.edCusto.Properties.ReadOnly:=true;
      frmdetalheproduto.edVenda.Properties.ReadOnly:=true;
      frmdetalheproduto.edIngredientes.Properties.ReadOnly:=true;
      frmdetalheproduto.edLucro.Properties.ReadOnly:=true;
      frmdetalheproduto.edPRazo.Properties.ReadOnly:=true;
      frmdetalheproduto.edAtacado.Properties.ReadOnly:=true;
      frmdetalheproduto.btMovimentoEstoque.Visible:= False;
    end
    else
      frmdetalheproduto.pgCombo.TabVisible:=false;

    frmDetalheProduto.ShowModal;
    frmDetalheProduto.Free;
  end;
  qrConsulta.Refresh;
end;

procedure TfrmConsProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
  begin
    if ActiveControl is TcxGridSite then
      abreCadastro
    else if ActiveControl.Name = 'edBusca' then
    begin
      Perform(WM_NEXTDLGCTL, 0, 0);
      btPesquisar.Click;
    end;
  end
end;

procedure TfrmConsProduto.FormShow(Sender: TObject);
begin
  if tela=0 then
  begin
    qrconsulta.SQL.Add(' and utiliza_combo=false');
    cxGrid1DBTableView1quantidade.Visible:= True;
    btDuplicar.Visible:= True;
  end
  else
  begin
    qrconsulta.SQL.Add(' and utiliza_combo=true');
    cxGrid1DBTableView1quantidade.Visible:= False;
    btDuplicar.Visible:= False;
  end;
  qrConsulta.Open;

  i_where := qrConsulta.SQL.Count;

  edBusca.SetFocus;
end;

procedure TfrmConsProduto.qrConsultaAfterOpen(DataSet: TDataSet);
begin
  cxGrid1DBTableView1.Controller.TopRowIndex:= 0;
end;

end.


