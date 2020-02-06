unit uControleMesaRenomear;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB,
  Datasnap.DBClient, MemDS, DBAccess, Uni, AdvGlowButton, Vcl.ExtCtrls,
  AdvGroupBox, AdvPanel;

type
  TfrmControleMesaRenomear = class(TForm)
    pnBotoes: TFlowPanel;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    AdvPanel1: TAdvPanel;
    AdvGroupBox3: TAdvGroupBox;
    DBText3: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    DBText4: TDBText;
    Label6: TLabel;
    DBText5: TDBText;
    edNomeMesa: TEdit;
    qrVendaMesa: TUniQuery;
    qrVendaMesanro_mesa: TIntegerField;
    qrVendaMesaid_venda: TIntegerField;
    qrVendaMesavalor_venda: TFloatField;
    qrVendaMesadesc_status: TWideStringField;
    dsVendaMesa: TDataSource;
    qrVendaMesaobs_mesa: TWideStringField;
    procedure btCancelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    constructor Create (sender : Tcomponent ; id_venda : integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    { Private declarations }
    id_venda : integer;
  public
    { Public declarations }
  end;

var
  frmControleMesaRenomear: TfrmControleMesaRenomear;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uFuncoes;

constructor TfrmControleMesaRenomear.Create (sender : Tcomponent ; id_venda : integer);
begin
  inherited create(sender);
  self.id_venda := id_venda;
  qrVendaMesa.Close;
  qrVendaMesa.parambyname('id_venda').asinteger :=  id_venda;
  qrVendaMesa.parambyname('id_empresa').asinteger :=  recproj.iEmp;
  qrVendaMesa.Open;

  edNomeMesa.Text:=qrVendaMesa.FieldByName('obs_mesa').AsString;
end;

procedure TfrmControleMesaRenomear.btConfirmaClick(Sender: TObject);
var str_sql1 : string;
begin
  str_sql1 := ' update venda set ven_027=' + QuotedStr(trim(edNomeMesa.Text)) +
              ' where emp_001=' + IntToStr(RecProj.iEmp) +
              ' and ven_001=' + inttostr(id_venda);
  ExecutaComandoSQL(str_sql1);
  btCancela.Click;
end;


procedure TfrmControleMesaRenomear.btCancelaClick(Sender: TObject);
begin
  close;
end;

procedure TfrmControleMesaRenomear.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_RETURN then
    btConfirma.Click
  else if Key=VK_ESCAPE then
    btCancela.Click;
end;

procedure TfrmControleMesaRenomear.FormShow(Sender: TObject);
begin
  edNomeMesa.SetFocus;
end;

end.
