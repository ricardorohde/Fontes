unit uConsPromocao;

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
  TfrmConsPromocao = class(TfrmModeloConsultaTabelaUnica)
    qrConsultaid_promocao: TIntegerField;
    qrConsultadescricao: TWideStringField;
    qrConsultadesconto: TFloatField;
    qrConsultadesc_situacao: TWideMemoField;
    qrConsultacat_002: TWideStringField;
    cxGrid1DBTableView1id_promocao: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1desconto: TcxGridDBColumn;
    cxGrid1DBTableView1desc_situacao: TcxGridDBColumn;
    cxGrid1DBTableView1cat_002: TcxGridDBColumn;
    procedure btAbrirRegistroClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsPromocao: TfrmConsPromocao;

implementation

{$R *.dfm}

uses uDetalhePromocao;

procedure TfrmConsPromocao.btAbrirRegistroClick(Sender: TObject);
begin
  inherited;
  if qrConsulta.Active then
  begin
    if qrConsulta.RecordCount>0 then
    begin
      frmDetalhePromocao := TfrmDetalhePromocao.Create(self, 'id_promocao', 'id_situacao' , qrConsulta.FieldByName('id_promocao').AsInteger);
      frmDetalhePromocao.ShowModal;
      frmDetalhePromocao.Free;
      qrConsulta.Refresh;
    end;
  end;
end;

procedure TfrmConsPromocao.btNovoClick(Sender: TObject);
begin
  inherited;
  frmDetalhePromocao := TfrmDetalhePromocao.Create(self, 'id_promocao', 'id_situacao');
  frmDetalhePromocao.ShowModal;
  frmDetalhePromocao.Free;
  qrConsulta.Refresh;
end;

end.
