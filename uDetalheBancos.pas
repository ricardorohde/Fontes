unit uDetalheBancos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoDetalhe, cxLookAndFeels, Data.DB, MemDS, DBAccess, Uni, Vcl.DBActns,
  Vcl.ActnList, AdvGlowButton, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.StdCtrls, cxLabel, cxDBLabel, cxTextEdit, cxDBEdit, Vcl.DBCtrls,
  Datasnap.DBClient;

type
  TfrmDetalheBancos = class(TfrmPadraoDetalhe)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
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
    cxDBTextEdit2: TcxDBTextEdit;
    DBText1: TDBText;
    qrDetalhebnc_001: TIntegerField;
    qrDetalhebnc_002: TWideStringField;
    qrDetalheinclusao: TWideStringField;
    qrDetalheedicao: TWideStringField;
    qrDetalhedat_001_1: TDateTimeField;
    qrDetalhedat_001_2: TDateTimeField;
    qrDetalheusu_001_1: TIntegerField;
    qrDetalheusu_001_2: TIntegerField;
    qrDetalhesituacao: TWideStringField;
    procedure qrDetalheBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrDetalhebnc_001GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qrDetalheNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheBancos: TfrmDetalheBancos;

implementation

{$R *.dfm}

uses uFuncoes, uMenu, Funcao_DB;

procedure TfrmDetalheBancos.FormCreate(Sender: TObject);
begin
  sTabela := 'BANCOS';
  inherited;

end;

procedure TfrmDetalheBancos.FormShow(Sender: TObject);
begin
  inherited;
  Campo_Obrigatorio([Label1]);
end;

procedure TfrmDetalheBancos.qrDetalheBeforePost(DataSet: TDataSet);
begin
  if Trim(qrDetalhebnc_002.AsString) = '' then
  begin
    Application.MessageBox('Favor informar a Descrição.', 'Atenção', 0 + 64);
    TestarFocoField(qrDetalhebnc_002);
    Abort;
  end;
  //
  {
  if qrDetalhe.State = dsInsert then
  begin
    qrDetalhedat_001_1.AsDateTime := DataServer(frmMenu.conexao);
    qrDetalheusu_001_1.AsInteger := recProj.iUsuario;
    qrDetalheinclusao.AsString := recProj.sUsuario;
  end;
  }
  if qrDetalhe.State = dsEdit then
  begin
    qrDetalhedat_001_2.AsDateTime := DataServer(frmMenu.conexao);
    qrDetalheusu_001_2.AsInteger := recProj.iUsuario;
    qrDetalheedicao.AsString := recProj.sUsuario;
  end;
  //
  inherited;

end;

procedure TfrmDetalheBancos.qrDetalhebnc_001GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
   if qrDetalhebnc_001.AsInteger = 0 then
      Text := 'NOVO'
   else
      Text := qrDetalhebnc_001.AsString;
end;

procedure TfrmDetalheBancos.qrDetalheNewRecord(DataSet: TDataSet);
begin
  inherited;
   qrDetalhedat_001_1.AsDateTime := DataServer(frmMenu.conexao);
   qrDetalheusu_001_1.AsInteger := recProj.iUsuario;
   qrDetalheinclusao.AsString := recProj.sUsuario;
end;

end.
