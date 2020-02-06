unit uConsBairro;

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
  TfrmConsBairro = class(TfrmModeloConsultaTabelaUnica)
    qrConsultabai_001: TIntegerField;
    qrConsultaemp_001: TIntegerField;
    qrConsultabai_002: TWideStringField;
    qrConsultabai_003: TFloatField;
    qrConsultasit_001: TIntegerField;
    qrConsultasituacao_desc: TWideMemoField;
    cxGrid1DBTableView1bai_001: TcxGridDBColumn;
    cxGrid1DBTableView1bai_002: TcxGridDBColumn;
    cxGrid1DBTableView1bai_003: TcxGridDBColumn;
    cxGrid1DBTableView1situacao_desc: TcxGridDBColumn;
    procedure btAbrirRegistroClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsBairro: TfrmConsBairro;

implementation

{$R *.dfm}

uses uDetalheBairro;

procedure TfrmConsBairro.btAbrirRegistroClick(Sender: TObject);
begin
  inherited;
  if qrConsulta.Active then
  begin
    if qrConsulta.RecordCount>0 then
    begin
      frmDetalheBairro := TfrmDetalheBairro.Create(self, qrConsulta.FieldByName('bai_001').AsInteger);
      frmDetalheBairro.ShowModal;
      frmDetalheBairro.Free;
      qrConsulta.Refresh;
    end;
  end;
end;



procedure TfrmConsBairro.btNovoClick(Sender: TObject);
begin
  inherited;
  frmDetalheBairro := TfrmDetalheBairro.Create(self);
  frmDetalheBairro.ShowModal;
  frmDetalheBairro.Free;
  qrConsulta.Refresh;
end;

end.
