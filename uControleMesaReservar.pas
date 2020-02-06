unit uControleMesaReservar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB,
  Datasnap.DBClient, MemDS, DBAccess, Uni, Vcl.ComCtrls, AdvGroupBox, AdvPanel,
  AdvGlowButton, Vcl.ExtCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxSpinEdit, cxTimeEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxTextEdit, dxSkinsCore, dxSkinsDefaultPainters;

type
  TfrmControleMesaReservar = class(TForm)
    pnBotoes: TFlowPanel;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    btLimpar: TAdvGlowButton;
    AdvPanel1: TAdvPanel;
    AdvGroupBox3: TAdvGroupBox;
    Label4: TLabel;
    DBText4: TDBText;
    Label6: TLabel;
    Label1: TLabel;
    qrListamesa: TUniQuery;
    dsListamesa: TDataSource;
    qrListamesames_001: TIntegerField;
    qrListamesames_002: TWideStringField;
    qrListamesanome_reserva: TWideStringField;
    qrListamesadata_reserva: TDateField;
    qrListamesahora_reserva: TTimeField;
    cbMesas: TDBLookupComboBox;
    edNomeReserva: TcxDBTextEdit;
    Label5: TLabel;
    edData: TcxDBDateEdit;
    Label7: TLabel;
    edHora: TcxDBTimeEdit;
    qrListamesatelefone_reserva: TWideStringField;
    Label2: TLabel;
    edTelefone: TcxDBTextEdit;
    qrListamesasit_001: TIntegerField;
    qrListamesadesc_status: TWideStringField;
    qrListamesames_003: TIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCancelaClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    constructor create (sender:tcomponent ; numero_mesa : integer);reintroduce;
    procedure qrListamesaBeforeScroll(DataSet: TDataSet);
    procedure qrListamesaAfterScroll(DataSet: TDataSet);
    procedure btConfirmaClick(Sender: TObject);
    procedure dsListamesaStateChange(Sender: TObject);
    procedure qrListamesaAfterOpen(DataSet: TDataSet);
    procedure edDataEnter(Sender: TObject);
    procedure edHoraEnter(Sender: TObject);
  private
    { Private declarations }
    gModoTela : integer;
  public
    { Public declarations }
  end;

var
  frmControleMesaReservar: TfrmControleMesaReservar;

implementation

{$R *.dfm}

uses uControleMesa, uMenu, Funcao_DB;
constructor TfrmControleMesaReservar.create (sender:tcomponent ; numero_mesa : integer);
begin
   Inherited create (sender);
   qrlistamesa.ParamByName('id_empresa').AsInteger:=RecProj.iEmp;
   qrlistamesa.Open;
   //qrlistamesa.Locate('mes_003', numero_mesa, [] );
end;

procedure TfrmControleMesaReservar.dsListamesaStateChange(Sender: TObject);
begin
  btConfirma.Enabled := qrListamesa.State = dsEdit;
end;

procedure TfrmControleMesaReservar.edDataEnter(Sender: TObject);
begin
  if qrlistamesa.State=dsEdit then
    qrlistamesa.fieldByName('data_reserva').AsDateTime := date;
end;

procedure TfrmControleMesaReservar.edHoraEnter(Sender: TObject);
begin
  if qrlistamesa.State=dsEdit then
    qrlistamesa.fieldByName('hora_reserva').AsDateTime := time;
end;

procedure TfrmControleMesaReservar.btConfirmaClick(Sender: TObject);
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if trim(qrlistamesa.fieldByName('nome_reserva').asstring)='' then
  begin
    application.MessageBox('Informe o nome da reserva!', 'Atenção', MB_ICONINFORMATION );
    edNomeReserva.SetFocus;
    exit;
  end;

  if trim(qrlistamesa.fieldByName('telefone_reserva').asstring)='' then
  begin
    application.MessageBox('Informe o telefone da reserva!', 'Atenção', MB_ICONINFORMATION );
    edTelefone.SetFocus;
    exit;
  end;

  if qrlistamesa.fieldByName('hora_reserva').isnull then
  begin
    application.MessageBox('Informe a hora da reserva!', 'Atenção', MB_ICONINFORMATION );
    edHora.SetFocus;
    exit;
  end;

  if qrlistamesa.fieldByName('data_reserva').isnull then
  begin
    application.MessageBox('Informe a data da reserva!', 'Atenção', MB_ICONINFORMATION );
    edData.SetFocus;
    exit;
  end;

  if qrListamesa.State = dsEdit then
  begin
    qrListamesa.FieldByName('sit_001').AsInteger := 19;
    qrListamesa.post;
    self.Close;
  end;
end;

procedure TfrmControleMesaReservar.btLimparClick(Sender: TObject);
var str_sql1 : string;
begin
  if Application.MessageBox('Confirma a limpeza dos dados de reserva?','Atenção', MB_ICONQUESTION + MB_YESNO) =mrYes then
  begin
    if qrListamesa.State <> dsEdit then  qrListamesa.Edit;

    qrListamesa.FieldByName('nome_reserva').value := null;
    qrListamesa.FieldByName('telefone_reserva').value := null;
    qrListamesa.FieldByName('data_reserva').value := null;
    qrListamesa.FieldByName('hora_reserva').value := null;
    qrListamesa.FieldByName('sit_001').asinteger := 4;
    qrListamesa.Post;

    self.Close;
  end;
end;

procedure TfrmControleMesaReservar.btCancelaClick(Sender: TObject);
begin
  if qrListamesa.State = dsEdit then  qrListamesa.cancel;
  self.Close;
end;

procedure TfrmControleMesaReservar.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmControleMesaReservar.qrListamesaAfterOpen(DataSet: TDataSet);
begin
  //if qrListamesa.RecordCount>0 then qrListamesa.First;
end;

procedure TfrmControleMesaReservar.qrListamesaAfterScroll(DataSet: TDataSet);
begin
  //sit_001 =19 - > reservada
  btLimpar.Enabled := qrListamesa.FieldByName('sit_001').AsInteger= 19;
end;

procedure TfrmControleMesaReservar.qrListamesaBeforeScroll(DataSet: TDataSet);
begin
  if qrlistamesa.State= dsedit then  qrlistamesa.Cancel;
end;

end.

