unit uRelatorioAniversariantes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.StdCtrls, AdvGlowButton,
  Vcl.ExtCtrls, AdvPanel, frxClass, frxDBSet, Data.DB, MemDS, DBAccess, Uni;

type
  TfrmRelatorioAniversariantes = class(TfrmModelo)
    btConfirma: TAdvGlowButton;
    btCancelar: TAdvGlowButton;
    cbMes: TComboBox;
    Label1: TLabel;
    qrRelAniversariantes: TUniQuery;
    qrRelAniversariantescodigo: TIntegerField;
    qrRelAniversariantesnome: TWideStringField;
    qrRelAniversariantestelefone1: TWideStringField;
    qrRelAniversariantestelefone2: TWideStringField;
    qrRelAniversariantescelular1: TWideStringField;
    qrRelAniversariantesdata_nascimento: TDateField;
    qrRelAniversariantesobservacao: TWideStringField;
    dbAniversariantes: TfrxDBDataset;
    relAniversariantes: TfrxReport;
    qrRelAniversariantesemail: TWideStringField;
    qrRelAniversariantesdata_ultima_venda: TDateTimeField;
    procedure btCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioAniversariantes: TfrmRelatorioAniversariantes;

implementation

{$R *.dfm}

uses uMenu;

procedure TfrmRelatorioAniversariantes.btCancelarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmRelatorioAniversariantes.btConfirmaClick(Sender: TObject);
begin
  inherited;
  qrRelAniversariantes.Close;
  qrRelAniversariantes.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
  qrRelAniversariantes.ParamByName('mes').AsInteger := cbMes.ItemIndex+1;
  qrRelAniversariantes.Open;

  if qrRelAniversariantes.RecordCount <1 then
  begin
    Application.MessageBox('Nenhum registro encontrado!', 'Atenção', MB_ICONINFORMATION + MB_OK);
  end
  else
  begin
    relAniversariantes.PrepareReport;
    relAniversariantes.ShowReport;
  end;



end;

procedure TfrmRelatorioAniversariantes.FormCreate(Sender: TObject);
var dia, mes, ano : word;
begin
  inherited;
  DecodeDate(Date, ano, mes, dia);
  cbMes.ItemIndex := mes -1;

end;

end.
