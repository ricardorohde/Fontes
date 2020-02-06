unit uConsIBPT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmModeloConsultaTabelaUnica,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  MemDS, DBAccess, Uni, Vcl.ExtCtrls, AdvGlowButton, Vcl.StdCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, AdvPanel;

type
  TfrmConsIBPT = class(TfrmModeloConsultaTabelaUnica)
    qrConsultancm: TWideStringField;
    qrConsultadescricao: TWideStringField;
    cxGrid1DBTableView1ncm: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    qrConsultaibpt_001: TIntegerField;
    procedure btNovoClick(Sender: TObject);
    procedure btAbrirRegistroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsIBPT: TfrmConsIBPT;

implementation

{$R *.dfm}

uses uDetalheIBPT, uMenu;

procedure TfrmConsIBPT.btAbrirRegistroClick(Sender: TObject);
begin
  inherited;
  if qrConsulta.Active then
  begin
    if qrConsulta.RecordCount>0 then
    begin
      frmDetalheIBPT :=TfrmDetalheIBPT.Create(self, 'ibpt_001', '', qrConsulta.FieldByName('ibpt_001').AsInteger);
      frmDetalheIBPT.Showmodal;
      FreeAndNil(frmDetalheIBPT);
      qrConsulta.Refresh;
    end;
  end;
end;

procedure TfrmConsIBPT.btNovoClick(Sender: TObject);
begin
  inherited;
  frmDetalheIBPT := TfrmDetalheIBPT.Create(self, 'ibpt_001','');
  frmDetalheIBPT.ShowModal;
  FreeAndNil(frmDetalheIBPT);
  qrConsulta.Refresh;
end;

end.
