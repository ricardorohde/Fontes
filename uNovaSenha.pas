unit uNovaSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadrao, Vcl.ComCtrls, Vcl.DBActns, Vcl.ActnList, Vcl.StdCtrls, cxLookAndFeels,
  Vcl.ToolWin, Vcl.ExtCtrls, Data.DB, Datasnap.DBClient;

type
  TfrmNovaSenha = class(TfrmPadrao)
    Label1: TLabel;
    edNovaSenha: TEdit;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    procedure act_CancelarExecute(Sender: TObject);
    procedure act_ConfirmarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNovaSenha: TfrmNovaSenha;

implementation

{$R *.dfm}

uses uMenu, uFuncoes;

procedure TfrmNovaSenha.act_CancelarExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TfrmNovaSenha.act_ConfirmarExecute(Sender: TObject);
begin
  inherited;
  if Trim(edNovaSenha.Text) = '' then
  begin
    Application.MessageBox('É necessário informar uma senha.', 'Atenção', 0 + 64);
    edNovaSenha.SetFocus;
    Abort;
  end;
  //
  ModalResult := mrOk;
end;

end.
