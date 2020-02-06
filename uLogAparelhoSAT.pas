unit uLogAparelhoSAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadrao, Vcl.ComCtrls, Data.DB,
  Datasnap.DBClient, cxClasses, cxLookAndFeels, Vcl.DBActns, System.Actions,
  Vcl.ActnList, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.StdCtrls;

type
  TfrmLogAparelho = class(TfrmPadrao)
    btnSair: TToolButton;
    btnCopiar: TToolButton;
    mmoLog: TMemo;
    procedure FormShow(Sender: TObject);
    procedure btnCopiarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogAparelho: TfrmLogAparelho;

implementation

{$R *.dfm}

procedure TfrmLogAparelho.btnCopiarClick(Sender: TObject);
begin
  inherited;
  mmoLog.SelectAll;
  mmoLog.CopyToClipboard;
  ShowMessage('Conteúdo copiado com sucesso!');
end;

procedure TfrmLogAparelho.btnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmLogAparelho.FormShow(Sender: TObject);
begin
  inherited;
   mmoLog.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'logSAT.txt');
   SendMessage(mmoLog.Handle, WM_VSCROLL, SB_BOTTOM, 0);
end;

end.
