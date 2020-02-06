unit uDetalheTamanho;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoDetalhe, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.DBCtrls,
  Vcl.StdCtrls, cxTextEdit, cxDBEdit, Data.DB, MemDS, DBAccess, Uni,
  Vcl.DBActns, Vcl.ActnList, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin;

type
  TfrmDetalheTamanho = class(TfrmPadraoDetalhe)
    Label2: TLabel;
    Label1: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    gbusuarios: TGroupBox;
    Label5: TLabel;
    Label33: TLabel;
    edDataUltimaAtualiz: TDBText;
    edUsuUltimaAtualiz: TDBText;
    Label34: TLabel;
    Label37: TLabel;
    edDataCadastro: TDBText;
    Label14: TLabel;
    edUsuCadastrado: TDBText;
    DBText1: TDBText;
    qrDetalhetam_001: TIntegerField;
    qrDetalhetam_002: TWideStringField;
    qrDetalheinclusao: TWideStringField;
    qrDetalheedicao: TWideStringField;
    qrDetalhedat_001_1: TDateTimeField;
    qrDetalhedat_001_2: TDateTimeField;
    qrDetalheusu_001_1: TIntegerField;
    qrDetalheusu_001_2: TIntegerField;
    qrDetalhesituacao: TWideStringField;
    procedure qrDetalhetam_001GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qrDetalheBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrDetalheNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheTamanho: TfrmDetalheTamanho;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uFuncoes;

procedure TfrmDetalheTamanho.FormCreate(Sender: TObject);
begin
  sTabela := 'TAMANHO';
  inherited;

end;

procedure TfrmDetalheTamanho.FormShow(Sender: TObject);
begin
  inherited;
   Campo_Obrigatorio([Label1]);
end;

procedure TfrmDetalheTamanho.qrDetalheBeforePost(DataSet: TDataSet);
begin
  if Trim(qrDetalhetam_002.AsString) = '' then
  begin
    Application.MessageBox('Favor informar a Descrição.', 'Atenção', 0 + 64);
    TestarFocoField(qrDetalhetam_002);
    Abort;
  end;
  //
  if qrDetalhe.State = dsEdit then
  begin
    qrDetalhedat_001_2.AsDateTime := DataServer(frmMenu.conexao);
    qrDetalheusu_001_2.AsInteger := recProj.iUsuario;
    qrDetalheedicao.AsString := recProj.sUsuario;
  end;
  //
  inherited;

end;

procedure TfrmDetalheTamanho.qrDetalheNewRecord(DataSet: TDataSet);
begin
  inherited;
   qrDetalhedat_001_1.AsDateTime := DataServer(frmMenu.conexao);
   qrDetalheusu_001_1.AsInteger := recProj.iUsuario;
   qrDetalheinclusao.AsString := recProj.sUsuario;
end;

procedure TfrmDetalheTamanho.qrDetalhetam_001GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
   if qrDetalheTAM_001.AsInteger = 0 then
      Text := 'NOVO'
   else
      Text := qrDetalheTAM_001.AsString;
end;

end.
