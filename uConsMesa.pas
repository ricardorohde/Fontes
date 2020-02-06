unit uConsMesa;

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
  TfrmConsMesa = class(TfrmModeloConsultaTabelaUnica)
    qrConsultames_001: TIntegerField;
    qrConsultames_002: TWideStringField;
    qrConsultames_003: TIntegerField;
    cxGrid1DBTableView1mes_001: TcxGridDBColumn;
    cxGrid1DBTableView1mes_002: TcxGridDBColumn;
    cxGrid1DBTableView1mes_003: TcxGridDBColumn;
    cxGrid1DBTableView1situacao_desc: TcxGridDBColumn;
    qrConsultasituacao_desc: TWideStringField;
    qrConsultaambiente_desc: TWideStringField;
    cxGrid1DBTableView1ambiente_desc: TcxGridDBColumn;
    btVinculacaoMesaAmbiente: TAdvGlowButton;
    procedure btNovoClick(Sender: TObject);
    procedure btAbrirRegistroClick(Sender: TObject);
    procedure btVinculacaoMesaAmbienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsMesa: TfrmConsMesa;

implementation

{$R *.dfm}

uses uDetalheMesa, uVinculacaomesaeambiente;

procedure TfrmConsMesa.btAbrirRegistroClick(Sender: TObject);
begin
  inherited;
  if qrConsulta.Active then
  begin
    if qrConsulta.RecordCount>0 then
    begin
      frmDetalhemesa := TfrmDetalhemesa.Create(self, 'mes_001', 'sit_001', qrConsulta.FieldByName('mes_001').AsInteger);
      frmDetalhemesa.ShowModal;
      frmDetalhemesa.Free;
      qrConsulta.Refresh;
    end;
  end;
end;

procedure TfrmConsMesa.btNovoClick(Sender: TObject);
begin
  inherited;
  if qrConsulta.RecordCount>0 then
  begin
    frmDetalhemesa := TfrmDetalhemesa.Create(self, 'mes_001', 'sit_001');
    frmDetalhemesa.ShowModal;
    frmDetalhemesa.Free;
    qrConsulta.Refresh;
  end;
end;

procedure TfrmConsMesa.btVinculacaoMesaAmbienteClick(Sender: TObject);
begin
  inherited;
  frmVinculacaomesaeambiente := TfrmVinculacaomesaeambiente.Create(self);
  frmVinculacaomesaeambiente.ShowModal;
  frmVinculacaomesaeambiente.Free;
  qrConsulta.Refresh;
end;

end.
