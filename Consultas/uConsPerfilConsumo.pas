unit uConsPerfilConsumo;

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
  TfrmConsPerfilConsumo = class(TfrmModeloConsultaTabelaUnica)
    qrConsultaid_perfil_consumo: TIntegerField;
    qrConsultadescricao: TWideStringField;
    qrConsultavalor_consumacao: TFloatField;
    qrConsultavalor_entrada: TFloatField;
    qrConsultavalor_limite: TFloatField;
    qrConsultadesc_situacao: TWideStringField;
    cxGrid1DBTableView1id_perfil_consumo: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1valor_consumacao: TcxGridDBColumn;
    cxGrid1DBTableView1valor_entrada: TcxGridDBColumn;
    cxGrid1DBTableView1valor_limite: TcxGridDBColumn;
    cxGrid1DBTableView1desc_situacao: TcxGridDBColumn;
    procedure btNovoClick(Sender: TObject);
    procedure btAbrirRegistroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsPerfilConsumo: TfrmConsPerfilConsumo;

implementation

{$R *.dfm}

uses uDetalhePerfilConsumo;

procedure TfrmConsPerfilConsumo.btAbrirRegistroClick(Sender: TObject);
begin
  inherited;
  if qrConsulta.Active then
  begin
    if qrConsulta.RecordCount>0 then
    begin
      frmDetalhePerfilConsumo := TfrmDetalhePerfilConsumo.Create(self, 'id_perfil_consumo', 'id_situacao',
                                    qrConsulta.FieldByName('id_perfil_consumo').AsInteger);
      frmDetalhePerfilConsumo.ShowModal;
      frmDetalhePerfilConsumo.Free;
    end;
    qrConsulta.Refresh;
  end;

end;

procedure TfrmConsPerfilConsumo.btNovoClick(Sender: TObject);
begin
  inherited;
  frmDetalhePerfilConsumo := TfrmDetalhePerfilConsumo.Create(self, 'id_perfil_consumo', 'id_situacao');
  frmDetalhePerfilConsumo.ShowModal;
  frmDetalhePerfilConsumo.Free;
  qrConsulta.Refresh;
end;

end.
