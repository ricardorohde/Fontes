unit uBloqueiocomanda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, AdvGlowButton, Vcl.StdCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls, AdvPanel, uni, JvExStdCtrls, JvEdit,
  JvValidateEdit;

type
  TfrmBloqueiocomanda = class(TfrmModelo)
    img: TImage;
    AdvGlowButton10: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    edComanda: TJvValidateEdit;

    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBloqueiocomanda: TfrmBloqueiocomanda;

implementation

{$R *.dfm}

uses uMenu;

procedure TfrmBloqueiocomanda.AdvGlowButton10Click(Sender: TObject);
var
  str_sql: string;
  qraux1: tuniquery;
begin
  str_sql :=
    'select com_001,com_003 from comanda where emp_001=:emp_001 and com_003=:com_003 and sit_001=5';
  qraux1 := tuniquery.Create(self);
  qraux1.Connection := frmmenu.conexao;
  qraux1.SQL.Add(str_sql);
  qraux1.ParamByName('emp_001').AsInteger := RecProj.iEmp;
  qraux1.ParamByName('com_003').AsInteger := edComanda.Value;
  qraux1.Open;
  if qraux1.RecordCount > 0 then
  begin
    if Application.MessageBox
      ('Deseja realmente desbloquear essa comanda para consumo?', 'alerta',
      +MB_ICONINFORMATION + MB_YESNO) = mrYes then
    begin
      str_sql :=
        'update comanda set sit_001=4 where com_003=:com_003 and emp_001=:emp_001';
      qraux1.Connection := frmmenu.conexao;
      qraux1.SQL.Clear;
      qraux1.SQL.Add(str_sql);
      qraux1.ParamByName('com_003').AsInteger := StrToInt(edComanda.Text);
      qraux1.ParamByName('emp_001').AsInteger := RecProj.iEmp;
      qraux1.Execute;
      Application.MessageBox('Comanda desbloqueada com sucesso!', 'alerta',
        +MB_ICONINFORMATION+ mb_ok);
      edComanda.SetFocus;
      edComanda.Clear;

    end;
  end
  else
  begin
    Application.MessageBox('Comanda não cadastrada!', 'alerta',
      +MB_ICONQUESTION + mb_ok);
    edComanda.SetFocus;
    edComanda.Clear;
  end;
end;

procedure TfrmBloqueiocomanda.AdvGlowButton1Click(Sender: TObject);
var
  str_sql: string;
  qraux1: tuniquery;
begin
  str_sql :=
    'select com_001,com_003 from comanda where emp_001=:emp_001 and com_003=:com_003 and sit_001=4';
  qraux1 := tuniquery.Create(self);
  qraux1.Connection := frmmenu.conexao;
  qraux1.SQL.Add(str_sql);
  qraux1.ParamByName('emp_001').AsInteger := RecProj.iEmp;
  qraux1.ParamByName('com_003').AsInteger := edComanda.Value;
  qraux1.Open;
  if qraux1.RecordCount > 0 then
  begin
    if Application.MessageBox
      ('Deseja realmente bloquear essa comanda para consumo?', 'alerta',
      +MB_ICONQUESTION + MB_YESNO) = mrYes then
    begin
      str_sql :=
        'update comanda set sit_001=5 where com_003=:com_003 and emp_001=:emp_001';
      qraux1.Connection := frmmenu.conexao;
      qraux1.SQL.Clear;
      qraux1.SQL.Add(str_sql);
      qraux1.ParamByName('com_003').AsInteger := StrToInt(edComanda.Text);
      qraux1.ParamByName('emp_001').AsInteger := RecProj.iEmp;
      qraux1.Execute;
      Application.MessageBox('Comanda bloqueada com sucesso!', 'alerta',
        +MB_ICONQUESTION + mb_ok);
      edComanda.SetFocus;
      edComanda.Clear;

    end;

  end
  else
  begin
    Application.MessageBox('Comanda não cadastrada!', 'alerta',
      +MB_ICONQUESTION + mb_ok);
    edComanda.SetFocus;
    edComanda.Clear;
  end;

end;

procedure TfrmBloqueiocomanda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_return then
    Perform(WM_NEXTDLGCTL, 0, 0)
end;

end.
