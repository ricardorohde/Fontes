unit uConsComposicao;

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
  TfrmConsComposicao = class(TfrmModeloConsultaTabelaUnica)
    qrConsultaid_composicao: TIntegerField;
    qrConsultadescricao: TWideStringField;
    qrConsultavalor_custo: TFloatField;
    qrConsultaestoque: TFloatField;
    qrConsultaestoque_minimo: TFloatField;
    qrConsultastaus_desc: TWideStringField;
    cxGrid1DBTableView1id_composicao: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1valor_custo: TcxGridDBColumn;
    cxGrid1DBTableView1estoque: TcxGridDBColumn;
    cxGrid1DBTableView1estoque_minimo: TcxGridDBColumn;
    cxGrid1DBTableView1staus_desc: TcxGridDBColumn;
    procedure btAbrirRegistroClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsComposicao: TfrmConsComposicao;

implementation

{$R *.dfm}

uses  uDetalheComposicao;

procedure TfrmConsComposicao.btAbrirRegistroClick(Sender: TObject);
begin
  inherited;
  if qrConsulta.Active then
  begin
    if qrConsulta.RecordCount>0 then
    begin
      frmDetalheComposicao := TfrmDetalheComposicao.Create(self, 'id_composicao', 'id_situacao', qrConsulta.FieldByName('id_composicao').AsInteger);
      frmDetalheComposicao.ShowModal;
      frmDetalheComposicao.Free;
      qrConsulta.Refresh;
    end;
  end;
end;

procedure TfrmConsComposicao.btNovoClick(Sender: TObject);
begin
  inherited;
  frmDetalheComposicao := TfrmDetalheComposicao.Create(self,'id_composicao', 'id_situacao');
  frmDetalheComposicao.ShowModal;
  frmDetalheComposicao.Free;
  qrConsulta.Refresh;
end;

end.
