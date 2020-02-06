unit uFrmModelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, AdvPanel;

type
  TfrmModelo = class(TForm)
    pnPrincipal: TAdvPanel;
    pnBotoes: TFlowPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModelo: TfrmModelo;

implementation

{$R *.dfm}

uses uFuncoes, Funcao_DB;

end.
