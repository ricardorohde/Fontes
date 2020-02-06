unit uConsFormaPgto;

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
  TfrmConsFormaPgto = class(TfrmModeloConsultaTabelaUnica)
    qrConsultafor_001: TIntegerField;
    qrConsultafor_002: TWideStringField;
    qrConsultadesc_status: TWideStringField;
    cxGrid1DBTableView1for_001: TcxGridDBColumn;
    cxGrid1DBTableView1for_002: TcxGridDBColumn;
    cxGrid1DBTableView1desc_status: TcxGridDBColumn;
    procedure btAbrirRegistroClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsFormaPgto: TfrmConsFormaPgto;

implementation

{$R *.dfm}

uses uDetalheFormaPgto;

procedure TfrmConsFormaPgto.btAbrirRegistroClick(Sender: TObject);
begin
  inherited;
  if qrConsulta.Active then
  begin
    if qrConsulta.RecordCount>0 then
    begin
      frmDetalheFormaPgto := TfrmDetalheFormaPgto.Create(self, 'for_001', 'sit_001', qrConsulta.FieldByName('for_001').AsInteger);
      frmDetalheFormaPgto.ShowModal;
      frmDetalheFormaPgto.Free;
      qrConsulta.Refresh;
    end;
  end;
end;

procedure TfrmConsFormaPgto.btNovoClick(Sender: TObject);
begin
  inherited;
  frmDetalheFormaPgto := TfrmDetalheFormaPgto.Create(self, 'for_001', 'sit_001');
  frmDetalheFormaPgto.ShowModal;
  frmDetalheFormaPgto.Free;
  qrConsulta.Refresh;
end;

end.
