unit uDetalheCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, Data.DB,
  JvDataSource, MemDS, DBAccess, Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, ShellApi,
  Datasnap.DBClient, Vcl.DBCGrids, Vcl.DBCtrls, cxImage, cxCheckBox, AdvGroupBox,
  Vcl.Grids;

type
  TfrmDetalheCategoria = class(TfrmModeloCadastroSimples)
    qrCadastrocat_001: TIntegerField;
    qrCadastrocat_002: TWideStringField;
    qrCadastrosit_001: TIntegerField;
    qrCadastrousu_001_1: TIntegerField;
    qrCadastrousu_001_2: TIntegerField;
    qrCadastrodat_001_3: TDateTimeField;
    qrCadastrodat_001_1: TDateTimeField;
    qrCadastrodat_001_2: TDateTimeField;
    qrCadastrodat_001_3_1: TDateTimeField;
    qrCadastrocat_003: TIntegerField;
    qrCadastroid_empresa: TIntegerField;
    DBCtrlGridCat: TDBCtrlGrid;
    cdsCat: TClientDataSet;
    dsCdsCat: TDataSource;
    cdsCatnomearquivo: TStringField;
    qrCadastrob_exibir_icone: TBooleanField;
    qrCadastroarquivo_img: TWideStringField;
    AdvGroupBox1: TAdvGroupBox;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxExibiCat: TcxDBCheckBox;
    cxImageCat: TcxImage;
    Label3: TLabel;
    btAbrirPastaImagens: TAdvGlowButton;
    qrCadastrocodigo_departamento_balanca: TIntegerField;
    Label4: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    imgCategoriaLista: TImage;
    memInfoImagens: TMemo;
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBCtrlGridCatPaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure DBCtrlGridCatClick(Sender: TObject);
    procedure qrCadastroAfterOpen(DataSet: TDataSet);
    procedure btAbrirPastaImagensClick(Sender: TObject);
   // function ContaArquivo(Pasta, Nome:string):integer;

  private
    { Private declarations }
    pasta_imagens : string;
  public
    { Public declarations }
  end;

var
  frmDetalheCategoria: TfrmDetalheCategoria;

implementation

{$R *.dfm}

uses Funcao_DB, uMenu, uFuncoes;


procedure TfrmDetalheCategoria.btAbrirPastaImagensClick(Sender: TObject);
begin
  inherited;
  ShellExecute(Application.Handle,
    PChar('explore'),
    PChar(pasta_imagens),
    nil,
    nil,
    SW_SHOWNORMAL);
end;

procedure TfrmDetalheCategoria.DBCtrlGridCatClick(Sender: TObject);
begin
  inherited;
  if (dsCadastro.State in [dsEdit,dsInsert]) and (cdsCat.RecordCount>0) then
   begin
     cxImageCat.Picture.LoadFromFile(cdsCat.FieldByName('nomearquivo').AsString);
     qrCadastro.FieldByName('arquivo_img').AsString := cdsCat.FieldByName('nomearquivo').AsString;
   end;
end;

procedure TfrmDetalheCategoria.DBCtrlGridCatPaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
  inherited;
  imgCategoriaLista.Picture.LoadFromFile(cdsCat.FieldByName('nomearquivo').AsString);
end;

procedure TfrmDetalheCategoria.FormCreate(Sender: TObject);
var
    listagem: TStringList;
    I: Integer;
    diretorio: string;
begin
  inherited;
  cdsCat.CreateDataSet;
  pasta_imagens := FormatarCaminhoDir(ExtractFilePath(Application.ExeName)) + 'Imagens\categoria\';
  diretorio :=  pasta_imagens + '*.png';
  listagem := GetFileList(diretorio);
  for I := 0 to listagem.Count-1 do
  begin
    cdsCat.Append;
    cdsCat.FieldByName('nomearquivo').AsString := pasta_imagens + listagem[I];
    cdsCat.Post;
  end;

  memInfoImagens.Text := format(memInfoImagens.Text, [pasta_imagens]);
end;

procedure TfrmDetalheCategoria.qrCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if qrCadastro.recordcount>0 then
  begin
    if FileExists(qrCadastro.FieldByName('arquivo_img').AsString) then
    begin
      cxImageCat.Picture.LoadFromFile(qrCadastro.FieldByName('arquivo_img').AsString);
    end;
  end;
end;

procedure TfrmDetalheCategoria.qrCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrCadastro.FieldByName('cat_001').AsInteger := novoId('categoria','cat_001',recProj.Iemp,'emp_001');
  qrCadastro.FieldByName('id_empresa').AsInteger := recProj.Iemp;
  qrCadastro.FieldByName('usu_001_1').AsInteger := recProj.iUsuario;
  qrCadastro.FieldByName('dat_001_1').AsDateTime := date+time;
  qrCadastro.FieldByName('sit_001').AsInteger := 4;
  qrCadastro.FieldByName('cat_003').AsInteger := 1;
  qrCadastro.FieldByName('b_exibir_icone').AsBoolean := False;
end;

end.
