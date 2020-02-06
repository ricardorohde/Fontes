unit uConsCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmModeloConsultaTabelaUnica,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, MemDS,
  DBAccess, Uni, Vcl.ExtCtrls, AdvGlowButton, Vcl.StdCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, AdvPanel;

type
  TfrmConsCidade = class(TfrmModeloConsultaTabelaUnica)
    qrConsultacid_001: TIntegerField;
    qrConsultacid_002: TWideStringField;
    qrConsultacid_003: TWideStringField;
    qrConsultaest_003: TWideStringField;
    cxGrid1DBTableView1cid_001: TcxGridDBColumn;
    cxGrid1DBTableView1cid_002: TcxGridDBColumn;
    cxGrid1DBTableView1cid_003: TcxGridDBColumn;
    cxGrid1DBTableView1est_003: TcxGridDBColumn;
    procedure btNovoClick(Sender: TObject);
    procedure btAbrirRegistroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsCidade: TfrmConsCidade;

implementation

{$R *.dfm}

uses uDetalheCidade;

procedure TfrmConsCidade.btAbrirRegistroClick(Sender: TObject);
begin
  inherited;
  if qrConsulta.Active then
  begin
    if qrConsulta.RecordCount>0 then
    begin
      frmDetalheCidade := TfrmDetalheCidade.Create(self, 'cid_001', '', qrConsulta.FieldByName('cid_001').AsInteger);
      frmDetalheCidade.Showmodal;
      frmDetalheCidade.Free;
      qrConsulta.Refresh;
    end;
  end;
end;

procedure TfrmConsCidade.btNovoClick(Sender: TObject);
begin
  inherited;
  frmDetalheCidade := TfrmDetalheCidade.Create(self, 'cid_001','');
  frmDetalheCidade.ShowModal;
  frmDetalheCidade.Free;
end;

end.
