unit uAliquotas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, AdvGlowButton, MemDS, DBAccess,
  Uni, Datasnap.DBClient;

type
  TfrmAliquotas = class(TfrmModelo)
    btCancelar: TAdvGlowButton;
    btSalvar: TAdvGlowButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qrConsulta: TUniQuery;
    dsAliquotas: TDataSource;
    qrConsultaid: TIntegerField;
    qrConsultauf: TWideStringField;
    qrConsultac_ac: TFloatField;
    qrConsultac_al: TFloatField;
    qrConsultac_am: TFloatField;
    qrConsultac_ap: TFloatField;
    qrConsultac_ba: TFloatField;
    qrConsultac_ce: TFloatField;
    qrConsultac_df: TFloatField;
    qrConsultac_es: TFloatField;
    qrConsultac_go: TFloatField;
    qrConsultac_ma: TFloatField;
    qrConsultac_mt: TFloatField;
    qrConsultac_ms: TFloatField;
    qrConsultac_mg: TFloatField;
    qrConsultac_pa: TFloatField;
    qrConsultac_pb: TFloatField;
    qrConsultac_pr: TFloatField;
    qrConsultac_pe: TFloatField;
    qrConsultac_pi: TFloatField;
    qrConsultac_rn: TFloatField;
    qrConsultac_rs: TFloatField;
    qrConsultac_rj: TFloatField;
    qrConsultac_ro: TFloatField;
    qrConsultac_rr: TFloatField;
    qrConsultac_sc: TFloatField;
    qrConsultac_sp: TFloatField;
    qrConsultac_se: TFloatField;
    qrConsultac_to: TFloatField;
    cxGrid1DBTableView1uf: TcxGridDBColumn;
    cxGrid1DBTableView1c_ac: TcxGridDBColumn;
    cxGrid1DBTableView1c_al: TcxGridDBColumn;
    cxGrid1DBTableView1c_am: TcxGridDBColumn;
    cxGrid1DBTableView1c_ap: TcxGridDBColumn;
    cxGrid1DBTableView1c_ba: TcxGridDBColumn;
    cxGrid1DBTableView1c_ce: TcxGridDBColumn;
    cxGrid1DBTableView1c_df: TcxGridDBColumn;
    cxGrid1DBTableView1c_es: TcxGridDBColumn;
    cxGrid1DBTableView1c_go: TcxGridDBColumn;
    cxGrid1DBTableView1c_ma: TcxGridDBColumn;
    cxGrid1DBTableView1c_mt: TcxGridDBColumn;
    cxGrid1DBTableView1c_ms: TcxGridDBColumn;
    cxGrid1DBTableView1c_mg: TcxGridDBColumn;
    cxGrid1DBTableView1c_pa: TcxGridDBColumn;
    cxGrid1DBTableView1c_pb: TcxGridDBColumn;
    cxGrid1DBTableView1c_pr: TcxGridDBColumn;
    cxGrid1DBTableView1c_pe: TcxGridDBColumn;
    cxGrid1DBTableView1c_pi: TcxGridDBColumn;
    cxGrid1DBTableView1c_rn: TcxGridDBColumn;
    cxGrid1DBTableView1c_rs: TcxGridDBColumn;
    cxGrid1DBTableView1c_rj: TcxGridDBColumn;
    cxGrid1DBTableView1c_ro: TcxGridDBColumn;
    cxGrid1DBTableView1c_rr: TcxGridDBColumn;
    cxGrid1DBTableView1c_sc: TcxGridDBColumn;
    cxGrid1DBTableView1c_sp: TcxGridDBColumn;
    cxGrid1DBTableView1c_se: TcxGridDBColumn;
    cxGrid1DBTableView1c_to: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cdsAliquotas: TClientDataSet;
    cdsAliquotasid: TIntegerField;
    cdsAliquotasuf: TWideStringField;
    cdsAliquotasc_ac: TFloatField;
    cdsAliquotasc_al: TFloatField;
    cdsAliquotasc_am: TFloatField;
    cdsAliquotasc_ap: TFloatField;
    cdsAliquotasc_ba: TFloatField;
    cdsAliquotasc_ce: TFloatField;
    cdsAliquotasc_df: TFloatField;
    cdsAliquotasc_es: TFloatField;
    cdsAliquotasc_go: TFloatField;
    cdsAliquotasc_ma: TFloatField;
    cdsAliquotasc_mt: TFloatField;
    cdsAliquotasc_ms: TFloatField;
    cdsAliquotasc_mg: TFloatField;
    cdsAliquotasc_pa: TFloatField;
    cdsAliquotasc_pb: TFloatField;
    cdsAliquotasc_pr: TFloatField;
    cdsAliquotasc_pe: TFloatField;
    cdsAliquotasc_pi: TFloatField;
    cdsAliquotasc_rn: TFloatField;
    cdsAliquotasc_rs: TFloatField;
    cdsAliquotasc_rj: TFloatField;
    cdsAliquotasc_ro: TFloatField;
    cdsAliquotasc_rr: TFloatField;
    cdsAliquotasc_sc: TFloatField;
    cdsAliquotasc_sp: TFloatField;
    cdsAliquotasc_se: TFloatField;
    cdsAliquotasc_to: TFloatField;
    qraux1: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsAliquotasc_acChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAliquotas: TfrmAliquotas;

implementation

{$R *.dfm}

procedure TfrmAliquotas.btCancelarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmAliquotas.btSalvarClick(Sender: TObject);
begin
  inherited;

  cdsAliquotas.DisableControls;

  cdsAliquotas.First;
  while not cdsAliquotas.Eof do
  begin
    qraux1.Close;
    qraux1.ParamByName('c_ac').AsFloat:= cdsAliquotasc_ac.AsFloat;
    qraux1.ParamByName('c_al').AsFloat:= cdsAliquotasc_al.AsFloat;
    qraux1.ParamByName('c_am').AsFloat:= cdsAliquotasc_am.AsFloat;
    qraux1.ParamByName('c_ap').AsFloat:= cdsAliquotasc_ap.AsFloat;
    qraux1.ParamByName('c_ba').AsFloat:= cdsAliquotasc_ba.AsFloat;
    qraux1.ParamByName('c_ce').AsFloat:= cdsAliquotasc_ce.AsFloat;
    qraux1.ParamByName('c_df').AsFloat:= cdsAliquotasc_df.AsFloat;
    qraux1.ParamByName('c_es').AsFloat:= cdsAliquotasc_es.AsFloat;
    qraux1.ParamByName('c_go').AsFloat:= cdsAliquotasc_go.AsFloat;
    qraux1.ParamByName('c_ma').AsFloat:= cdsAliquotasc_ma.AsFloat;
    qraux1.ParamByName('c_mt').AsFloat:= cdsAliquotasc_mt.AsFloat;
    qraux1.ParamByName('c_ms').AsFloat:= cdsAliquotasc_ms.AsFloat;
    qraux1.ParamByName('c_mg').AsFloat:= cdsAliquotasc_mg.AsFloat;
    qraux1.ParamByName('c_pa').AsFloat:= cdsAliquotasc_pa.AsFloat;
    qraux1.ParamByName('c_pb').AsFloat:= cdsAliquotasc_pb.AsFloat;
    qraux1.ParamByName('c_pr').AsFloat:= cdsAliquotasc_pr.AsFloat;
    qraux1.ParamByName('c_pe').AsFloat:= cdsAliquotasc_pe.AsFloat;
    qraux1.ParamByName('c_pi').AsFloat:= cdsAliquotasc_pi.AsFloat;
    qraux1.ParamByName('c_rn').AsFloat:= cdsAliquotasc_rn.AsFloat;
    qraux1.ParamByName('c_rs').AsFloat:= cdsAliquotasc_rs.AsFloat;
    qraux1.ParamByName('c_rj').AsFloat:= cdsAliquotasc_rj.AsFloat;
    qraux1.ParamByName('c_ro').AsFloat:= cdsAliquotasc_ro.AsFloat;
    qraux1.ParamByName('c_rr').AsFloat:= cdsAliquotasc_rr.AsFloat;
    qraux1.ParamByName('c_sc').AsFloat:= cdsAliquotasc_sc.AsFloat;
    qraux1.ParamByName('c_sp').AsFloat:= cdsAliquotasc_sp.AsFloat;
    qraux1.ParamByName('c_se').AsFloat:= cdsAliquotasc_se.AsFloat;
    qraux1.ParamByName('c_to').AsFloat:= cdsAliquotasc_to.AsFloat;
    qraux1.ParamByName('id').AsInteger:= cdsAliquotasid.AsInteger;
    qraux1.Execute;

    cdsAliquotas.Next;
  end;

  cdsAliquotas.EnableControls;

  Close;
end;

procedure TfrmAliquotas.cdsAliquotasc_acChange(Sender: TField);
begin
  inherited;
  //Uso para validar todos os estados pelo Sender
  if Sender.IsNull then
    Sender.AsFloat:= 0;
end;

procedure TfrmAliquotas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(qrConsulta);
  FreeAndNil(dsAliquotas);
  FreeAndNil(cdsAliquotas);
end;

procedure TfrmAliquotas.FormShow(Sender: TObject);
begin
  inherited;
  qrConsulta.Close;
  qrConsulta.Open;

  cdsAliquotas.CreateDataSet;

  cdsAliquotas.DisableControls;

  qrConsulta.First;
  while not qrConsulta.Eof do
  begin
    cdsAliquotas.Append;
    cdsAliquotasid.Value   := qrConsultaid.Value;
    cdsAliquotasuf.Value   := qrConsultauf.Value;
    cdsAliquotasc_ac.Value := qrConsultac_ac.Value;
    cdsAliquotasc_al.Value := qrConsultac_al.Value;
    cdsAliquotasc_am.Value := qrConsultac_am.Value;
    cdsAliquotasc_ap.Value := qrConsultac_ap.Value;
    cdsAliquotasc_ba.Value := qrConsultac_ba.Value;
    cdsAliquotasc_ce.Value := qrConsultac_ce.Value;
    cdsAliquotasc_df.Value := qrConsultac_df.Value;
    cdsAliquotasc_es.Value := qrConsultac_es.Value;
    cdsAliquotasc_go.Value := qrConsultac_go.Value;
    cdsAliquotasc_ma.Value := qrConsultac_ma.Value;
    cdsAliquotasc_mt.Value := qrConsultac_mt.Value;
    cdsAliquotasc_ms.Value := qrConsultac_ms.Value;
    cdsAliquotasc_mg.Value := qrConsultac_mg.Value;
    cdsAliquotasc_pa.Value := qrConsultac_pa.Value;
    cdsAliquotasc_pb.Value := qrConsultac_pb.Value;
    cdsAliquotasc_pr.Value := qrConsultac_pr.Value;
    cdsAliquotasc_pe.Value := qrConsultac_pe.Value;
    cdsAliquotasc_pi.Value := qrConsultac_pi.Value;
    cdsAliquotasc_rn.Value := qrConsultac_rn.Value;
    cdsAliquotasc_rs.Value := qrConsultac_rs.Value;
    cdsAliquotasc_rj.Value := qrConsultac_rj.Value;
    cdsAliquotasc_ro.Value := qrConsultac_ro.Value;
    cdsAliquotasc_rr.Value := qrConsultac_rr.Value;
    cdsAliquotasc_sc.Value := qrConsultac_sc.Value;
    cdsAliquotasc_sp.Value := qrConsultac_sp.Value;
    cdsAliquotasc_se.Value := qrConsultac_se.Value;
    cdsAliquotasc_to.Value := qrConsultac_to.Value;

    cdsAliquotas.Post;

    qrConsulta.Next;
  end;

  cdsAliquotas.First;

  cdsAliquotas.EnableControls;
end;

end.
