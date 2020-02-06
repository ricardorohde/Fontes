unit uConsCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmModeloConsultaTabelaUnica,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, MemDS, DBAccess, Uni, Vcl.ExtCtrls, AdvGlowButton, Vcl.StdCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, AdvPanel;

type
  TfrmConsCategoria = class(TfrmModeloConsultaTabelaUnica)
    qrConsultacat_001: TIntegerField;
    qrConsultacat_002: TWideStringField;
    cxGrid1DBTableView1cat_001: TcxGridDBColumn;
    cxGrid1DBTableView1cat_002: TcxGridDBColumn;
    procedure btNovoClick(Sender: TObject);
    procedure btAbrirRegistroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsCategoria: TfrmConsCategoria;

implementation

{$R *.dfm}

uses uDetalheCategoria;

procedure TfrmConsCategoria.btAbrirRegistroClick(Sender: TObject);
begin
  inherited;
  if qrConsulta.Active then
  begin
    if qrConsulta.RecordCount>0 then
    begin
      frmDetalheCategoria := TfrmDetalheCategoria.Create(self, 'cat_001', 'sit_001', qrConsulta.FieldByName('cat_001').AsInteger);
      frmDetalheCategoria.Showmodal;
      frmDetalheCategoria.Free;
      qrConsulta.Refresh;
    end;
  end;
end;

procedure TfrmConsCategoria.btNovoClick(Sender: TObject);
begin
  inherited;
  frmDetalheCategoria := TfrmDetalheCategoria.Create(self, 'cat_001', 'sit_001');
  frmDetalheCategoria.ShowModal;
  frmDetalheCategoria.Free;
  qrConsulta.Refresh;
end;

end.
