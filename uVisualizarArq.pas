unit uVisualizarArq;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadrao, cxLookAndFeels, Vcl.DBActns, Vcl.ActnList, Vcl.ToolWin, Vcl.ComCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.OleCtrls, {FoxitReaderSDKLib_TLB,} cxGraphics, cxControls, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxImage, Vcl.OleServer, JPEG, Uni, Datasnap.DBClient;

type
  TfrmVisualizarArq = class(TfrmPadrao)
    cxImage1: TcxImage;
    //FoxitReaderSDK1: TFoxitReaderSDK;
    btnFechar: TToolButton;
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    sTipo: String;
    sCaminho: string;
    { Private declarations }
  public
    Constructor CreateAnexo(Anexo: TBlobField; NomeArquivo: String);
    { Public declarations }
  end;

var
  frmVisualizarArq: TfrmVisualizarArq;

implementation

{$R *.dfm}

uses uMenu, uFuncoes;
{ TfrmVisualizarArq }

procedure TfrmVisualizarArq.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

constructor TfrmVisualizarArq.CreateAnexo(Anexo: TBlobField; NomeArquivo: String);
var
  imagem: TJPEGImage;
begin
  Create(Nil);
  sTipo := Copy(NomeArquivo, Pos('.', NomeArquivo), 4);
  //
  if UpperCase(sTipo) = '.JPG' then
  begin
   // FoxitReaderSDK1.Hide;
    cxImage1.Picture := Nil; // Limpa o conteúdo do componente
    imagem := TJPEGImage.Create; // Instancia a variavel
    imagem.Assign(Anexo); // Associa o campo a variavel de imagem
    cxImage1.Picture.Assign(imagem); // Associa a variavel de imagem ao componente para exibir
    FreeAndNil(imagem); // Apaga a variavel de imagem da memoria
  end;
  //
  if UpperCase(sTipo) = '.PDF' then
  begin
    cxImage1.Hide;
    sCaminho := ExtractFilePath(Application.ExeName) + 'PDF.PDF';
    //
    if FileExists(sCaminho) then
      DeleteFile(sCaminho);
    //
    Anexo.SaveToFile(sCaminho);
   // FoxitReaderSDK1.CloseFile;
   // FoxitReaderSDK1.OpenFile(sCaminho, '');
  end;
end;

procedure TfrmVisualizarArq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  //FoxitReaderSDK1.CloseFile;
  if FileExists(sCaminho) then
    DeleteFile(sCaminho);
end;

end.
