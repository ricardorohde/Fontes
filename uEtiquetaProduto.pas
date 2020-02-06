unit uEtiquetaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  AdvGlowButton, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxCheckBox, cxImageComboBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, cxRadioGroup, AdvGroupBox,
  cxContainer, Datasnap.Provider, Datasnap.DBClient, MemDS, DBAccess, Uni,
  Vcl.DBCtrls, cxTextEdit, cxMaskEdit, cxButtonEdit, System.Actions,
  Vcl.ActnList, Vcl.FileCtrl, frxClass, frxDBSet, JvExStdCtrls, JvEdit,
  JvValidateEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmEtiquetaProduto = class(TfrmModelo)
    btCancelar: TAdvGlowButton;
    btImprimir: TAdvGlowButton;
    AdvGroupBox3: TAdvGroupBox;
    btPesquisar: TAdvGlowButton;
    rbPorProduto: TcxRadioButton;
    rbPorCategoria: TcxRadioButton;
    Label4: TLabel;
    lbProduto: TLabel;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    qrListaCategoria: TUniQuery;
    qrListaCategoriacat_001: TIntegerField;
    qrListaCategoriadescr: TWideStringField;
    qrListaCategoriaord: TIntegerField;
    dsListaCategoria: TDataSource;
    dsCategoria: TDataSource;
    cdsCategoria: TClientDataSet;
    cdsCategoriaid_categoria: TIntegerField;
    qrMateriais: TUniQuery;
    qrMateriaismat_001: TIntegerField;
    qrMateriaisemp_001: TIntegerField;
    qrMateriaisdescricao: TWideStringField;
    qrMateriaiscod_ref: TWideStringField;
    qrMateriaisvalor_venda: TFloatField;
    qrMateriaisvalor_venda2: TFloatField;
    dspMateriais: TDataSetProvider;
    dsMateriais: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ColunaSelecao: TcxGridDBColumn;
    cxGrid1DBTableView1mat_001: TcxGridDBColumn;
    cxGrid1DBTableView1emp_001: TcxGridDBColumn;
    cxGrid1DBTableView1cod_ref: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1valor_venda: TcxGridDBColumn;
    cxGrid1DBTableView1valor_venda2: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    edCodProduto: TcxButtonEdit;
    ActionList1: TActionList;
    acBuscaProduto: TAction;
    ckAtivos: TcxCheckBox;
    frxEtiquetaProd: TfrxReport;
    gbEtiqueta: TAdvGroupBox;
    FileListBox1: TFileListBox;
    cdsEtiqueta: TClientDataSet;
    cdsEtiquetaCodigo: TStringField;
    cdsEtiquetaDescricao: TStringField;
    cdsEtiquetaValor: TStringField;
    dbEtiqueta: TfrxDBDataset;
    gbProdutos: TAdvGroupBox;
    btMarcarTodos: TAdvGlowButton;
    btDesmarcarTodos: TAdvGlowButton;
    cdsEtiquetaCod_Interno: TStringField;
    cdsEtiquetaEmpresa: TStringField;
    qrMateriaisrazaosocial: TWideStringField;
    qrMateriaisfantasia: TWideStringField;
    cdsMateriais: TClientDataSet;
    cdsMateriaismat_001: TIntegerField;
    cdsMateriaisemp_001: TIntegerField;
    cdsMateriaisdescricao: TWideStringField;
    cdsMateriaiscod_ref: TWideStringField;
    cdsMateriaisvalor_venda: TFloatField;
    cdsMateriaisvalor_venda2: TFloatField;
    cdsMateriaisrazaosocial: TWideStringField;
    cdsMateriaisfantasia: TWideStringField;
    Label2: TLabel;
    edCopias: TJvValidateEdit;
    ckTela: TcxCheckBox;

    procedure btCancelarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure edCodProdutoExit(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsMateriaisAfterOpen(DataSet: TDataSet);
    constructor Create(sender: Tcomponent); reintroduce;
    procedure acBuscaProdutoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FileListBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btMarcarTodosClick(Sender: TObject);
    procedure btDesmarcarTodosClick(Sender: TObject);
  private
    { Private declarations }
    NomedoFR3: String;
  public
    { Public declarations }
  end;

var
  frmEtiquetaProduto: TfrmEtiquetaProduto;

implementation

{$R *.dfm}

uses
  uMenu, uBuscaRegistro, uFuncoes, Funcao_DB;

procedure TfrmEtiquetaProduto.btImprimirClick(Sender: TObject);
var
  i, k, iRec: Integer;
  selecionado: Boolean;
begin
  inherited;

  if NomedoFR3 = '' then
  begin
    Application.MessageBox('Formato de Etiqueta não selecionado!',
                           'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  frxEtiquetaProd.LoadFromFile(NomedoFR3);
  frxEtiquetaProd.PrintOptions.ShowDialog := False;

  if not cdsMateriais.Active then
  begin
    Application.MessageBox('Não existem Produtos para Imprimir Etiqueta!',
                           'Atenção', MB_ICONINFORMATION);
    abort;
  end
  else
  begin
    // Faz a verificação antes de Imprimir Etiqueta
    cdsMateriais.First;
    i := 0;
    cdsEtiqueta.EmptyDataSet;

    while not cdsMateriais.eof do
    begin
      iRec := cxGrid1DBTableView1.Controller.SelectedRecords[0].RecordIndex;
      // Registro selecionado, coluna 0 (coluna de seleção)
      if VarIsNull(cxGrid1DBTableView1.DataController.Values[iRec, 0]) then
        selecionado := false
      else
        selecionado := cxGrid1DBTableView1.DataController.Values[iRec, 0];

      if selecionado then
      begin
        inc(i);

        for k := 1 to edCopias.Value do
        begin
          cdsEtiqueta.Append;
          cdsEtiquetaCodigo.Value      := cdsMateriaiscod_ref.AsString;
          cdsEtiquetaDescricao.Value   := cdsMateriaisdescricao.AsString;
          cdsEtiquetaValor.Value       := 'R$ ' + FormatFloat('###,##0.00', cdsMateriaisvalor_venda.AsFloat);
          cdsEtiquetaCod_Interno.Value := cdsMateriaismat_001.AsString;
          cdsEtiquetaEmpresa.Value     := cdsMateriaisfantasia.AsString;
          cdsEtiqueta.Post;
        end;
      end;

      cdsMateriais.next;
    end;

    if i < 1 then
    begin
      Application.MessageBox('Não foi selecionado nenhum produto!',
                             'Atenção', MB_ICONINFORMATION);
      cdsMateriais.first;
    end
    else
    begin
      // Passou pelas checagens, entao Imprime Etiqueta
      cdsEtiqueta.First;

      frxEtiquetaProd.PrepareReport();
      frxEtiquetaProd.PrintOptions.ShowDialog := true;

      if ckTela.Checked then
        frxEtiquetaProd.ShowReport
      else
      begin
        frxEtiquetaProd.Print;
        Application.MessageBox('Etiqueta(s) Impressa(s) com sucesso!',
                               'Atenção', MB_ICONINFORMATION);
      end;

      cdsMateriais.Close;
      edCodProduto.Clear;
      edCodProdutoExit(nil);
      cdsCategoria.Edit;
      cdsCategoria.FieldByName('cat_001').value := null;
    end;
  end;
end;

procedure TfrmEtiquetaProduto.btMarcarTodosClick(Sender: TObject);
var
  iRec: Integer;
begin
  inherited;

  if not cdsMateriais.Active then
  begin
    Application.MessageBox('Não existem Produtos para Imprimir Etiqueta!',
                           'Atenção', MB_ICONINFORMATION);
    abort;
  end
  else
  begin
    // Marca todos os Produtos Selecionados para Imprimir Etiqueta
    cdsMateriais.First;

    while not cdsMateriais.eof do
    begin
      iRec := cxGrid1DBTableView1.Controller.SelectedRecords[0].RecordIndex;
      // Registro selecionado, coluna 0 (coluna de seleção)
      if not VarIsNull(cxGrid1DBTableView1.DataController.Values[iRec, 0]) then
        cxGrid1DBTableView1.DataController.Values[iRec, 0] := True;

      cdsMateriais.next;
    end;

    cdsMateriais.First;
  end;
end;

procedure TfrmEtiquetaProduto.btDesmarcarTodosClick(Sender: TObject);
var
  iRec: Integer;
begin
  inherited;

  if not cdsMateriais.Active then
  begin
    Application.MessageBox('Não existem Produtos para Imprimir Etiqueta!',
                           'Atenção', MB_ICONINFORMATION);
    abort;
  end
  else
  begin
    // Desmarca todos os Produtos Selecionados para Imprimir Etiqueta
    cdsMateriais.First;

    while not cdsMateriais.eof do
    begin
      iRec := cxGrid1DBTableView1.Controller.SelectedRecords[0].RecordIndex;
      // Registro selecionado, coluna 0 (coluna de seleção)
      if not VarIsNull(cxGrid1DBTableView1.DataController.Values[iRec, 0]) then
        cxGrid1DBTableView1.DataController.Values[iRec, 0] := False;

      cdsMateriais.next;
    end;

    cdsMateriais.First;
  end;
end;

procedure TfrmEtiquetaProduto.btPesquisarClick(Sender: TObject);
var
  i_where: Integer;
  filtro, filtro_prod, filtro_cat, filtro_status: String;
begin
  inherited;

  i_where := qrMateriais.SQL.Count -2;

  filtro := '';
  filtro_prod := '';
  filtro_cat := '';

  if rbPorProduto.Checked then
  begin
    filtro_cat := '';
    if edCodProduto.Text <> '' then
      filtro_prod := ' and mat_004 = :cod_ref ';
  end
  else
  begin
    filtro_prod := '';
    if not cdsCategoria.FieldByName('cat_001').IsNull then
      filtro_cat := ' and cat_001 = ' + cdsCategoria.FieldByName('cat_001').asstring;
  end;

  if ckAtivos.Checked then
    filtro_status := ' and m.sit_001 = 4'
  else
    filtro_status := '';

  qrMateriais.Close;
  cdsMateriais.Close;
  filtro := filtro_prod +  filtro_cat  + filtro_status;

  qrMateriais.SQL[i_where] := filtro;

  if (edCodProduto.Text <> '') and (filtro_prod <> '') then
    qrMateriais.ParamByName('cod_ref').AsString := edCodProduto.Text;

  cdsMateriais.Open;
end;

procedure TfrmEtiquetaProduto.cdsMateriaisAfterOpen(DataSet: TDataSet);
var
  iRec: Integer;
begin
  inherited;

  //marca todos o itens...
  cdsMateriais.First;
  while not cdsMateriais.eof do
  begin
    iRec := cxGrid1DBTableView1.Controller.SelectedRecords[0].RecordIndex;
    cxGrid1DBTableView1.DataController.Values[iRec, 0] := true;
    cdsMateriais.Next;
  end;
  cdsMateriais.First;
end;

constructor TfrmEtiquetaProduto.Create(sender: Tcomponent);
begin
  inherited Create(sender);

  qrListaCategoria.ParamByName('emp').AsInteger := recproj.iEmp;
  qrListaCategoria.Open;
  cdsCategoria.CreateDataSet;
  cdsCategoria.append;

  cdsMateriais.Close;
end;

procedure TfrmEtiquetaProduto.edCodProdutoExit(Sender: TObject);
var
  str_sql, desc_produto: String;
begin
  inherited;

  desc_produto := '';
  if edCodProduto.Text <> '' then
  begin
    str_sql := ' select mat_003 from materiais where mat_004=' +
                QuotedStr(trim(edCodProduto.Text)) +
               ' and emp_001=' + IntToStr(RecProj.iEmp);
    BuscaCampo(desc_produto, str_sql, 'Produto', true);
  end;
  lbProduto.Caption := desc_produto;
end;

procedure TfrmEtiquetaProduto.FileListBox1Click(Sender: TObject);
begin
  inherited;

  NomedoFR3 := FileListBox1.FileName;
end;

procedure TfrmEtiquetaProduto.FormCreate(Sender: TObject);
begin
  inherited;

  cdsEtiqueta.CreateDataSet;
  NomedoFR3 := '';
end;

procedure TfrmEtiquetaProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if key = vk_return then
    Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmEtiquetaProduto.FormShow(Sender: TObject);
var
  PathExe: String;
  Drive: String;
begin
  inherited;

  PathExe := ExtractFilePath(Application.ExeName) + 'Relatorios\Etiquetas\';
  Drive   := Copy(PathExe, 1, 1);
  criarDiretorio(PathExe);

  FileListBox1.Drive     := Drive[1];
  FileListBox1.Directory := Copy(PathExe, 3, Length(PathExe) -2);
  FileListBox1.Mask      := '*.fr3';
end;

procedure TfrmEtiquetaProduto.acBuscaProdutoExecute(Sender: TObject);
var
  str_sql: String;
begin
  inherited;

  edCodProduto.SetFocus;
  str_sql:= ' SELECT MAT.MAT_001, '+
            ' MAT.MAT_004, '+
            ' MAT.MAT_003, '+
            ' CAT.CAT_002, '+
            ' coalesce(stm.quantidade, 0.0) as quantidade, '+
            ' UNI.UNI_002, '+
            ' MAT.MAT_008 '+
            ' FROM MATERIAIS MAT '+
            ' LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND (UNI.UNI_001 = MAT.UNI_001) '+
            ' LEFT OUTER JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.CAT_001 = MAT.CAT_001) '+
            ' left join setor_estoque_material stm on stm.id_material=mat.mat_001 and stm.id_empresa=mat.emp_001 and stm.id_setor=mat.id_setor ';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
      str_sql,
      CriaIntegerArray([1,2,3,4,5,6]),
      CriaStringArray(['Código', 'Produto', 'Categoria','Qtd. Estoque', 'Unidade', 'Preço' ]),
      1, 1, ' mat.sit_001=4 and MAT.emp_001='+IntToStr(RecProj.iEmp), 800, 500);

  frmBuscaRegistro.ShowModal;

  if frmBuscaRegistro.Tag=1 then
    edCodProduto.Text:=frmBuscaRegistro.valor_retorno;

  frmBuscaRegistro.Free;
  edCodProdutoExit(nil);
end;

procedure TfrmEtiquetaProduto.btCancelarClick(Sender: TObject);
begin
  inherited;

  close;
end;

end.

