unit uConsContaCorrente;

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
  TfrmConsContaCorrente = class(TfrmModeloConsultaTabelaUnica)
    qrConsultaid_contacorrente: TIntegerField;
    qrConsultaagencia: TWideStringField;
    qrConsultaconta: TWideStringField;
    qrConsultabanco: TWideStringField;
    qrConsultasaldo: TFloatField;
    qrConsultastatus: TWideStringField;
    cxGrid1DBTableView1id_contacorrente: TcxGridDBColumn;
    cxGrid1DBTableView1agencia: TcxGridDBColumn;
    cxGrid1DBTableView1conta: TcxGridDBColumn;
    cxGrid1DBTableView1banco: TcxGridDBColumn;
    cxGrid1DBTableView1saldo: TcxGridDBColumn;
    cxGrid1DBTableView1status: TcxGridDBColumn;
    procedure btAbrirRegistroClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsContaCorrente: TfrmConsContaCorrente;

implementation

{$R *.dfm}

uses uDetalheContaCorrente;

procedure TfrmConsContaCorrente.btAbrirRegistroClick(Sender: TObject);
begin
  inherited;
  if qrConsulta.Active then
  begin
    if qrConsulta.RecordCount>0 then
    begin
      frmDetalheContaCorrente := TfrmDetalheContaCorrente.Create(self, 'id_contacorrente','id_situacao' , qrConsulta.FieldByName('id_contacorrente').AsInteger);
      frmDetalheContaCorrente.ShowModal;
      frmDetalheContaCorrente.Free;
      qrConsulta.Refresh;
    end;
  end;
end;

procedure TfrmConsContaCorrente.btNovoClick(Sender: TObject);
begin
  inherited;
  frmDetalheContaCorrente := TfrmDetalheContaCorrente.Create(self, 'id_contacorrente','id_situacao' );
  frmDetalheContaCorrente.ShowModal;
  frmDetalheContaCorrente.Free;
  qrConsulta.Refresh;
end;

end.
