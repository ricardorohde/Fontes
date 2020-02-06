unit uConsSetor;

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
  TfrmConsSetor = class(TfrmModeloConsultaTabelaUnica)
    qrConsultaid_setor: TIntegerField;
    qrConsultadescricao: TWideStringField;
    qrConsultasituacao: TWideStringField;
    cxGrid1DBTableView1id_setor: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1situacao: TcxGridDBColumn;
    procedure btAbrirRegistroClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsSetor: TfrmConsSetor;

implementation

{$R *.dfm}

uses uMenu, uDetalheSetor;

procedure TfrmConsSetor.btAbrirRegistroClick(Sender: TObject);
begin
  inherited;
  if qrConsulta.Active then
  begin
    if qrConsulta.RecordCount>0 then
    begin
      frmdetalhesetor := TfrmDetalheSetor.Create(self, 'id_setor', 'id_situacao', qrConsulta.FieldByName('id_setor').AsInteger);
      frmdetalhesetor.ShowModal;
      frmdetalhesetor.Free;
      qrConsulta.refresh;
    end;
  end;
end;

procedure TfrmConsSetor.btNovoClick(Sender: TObject);
begin
  inherited;
  frmdetalhesetor := TfrmDetalheSetor.Create(self, 'id_setor', 'id_situacao');
  frmdetalhesetor.ShowModal;
  frmdetalhesetor.Free;
  qrConsulta.refresh;
end;

end.
