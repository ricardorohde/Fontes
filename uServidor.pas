unit uServidor;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadrao, Vcl.ComCtrls, cxLookAndFeels, Vcl.DBActns, Vcl.ActnList,
   Vcl.ExtCtrls, Vcl.ToolWin, cxGraphics, cxControls, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
   Vcl.StdCtrls, Data.DB, Datasnap.DBClient;

type
   TfrmServidor = class(TfrmPadrao)
      ToolButton1: TToolButton;
      ToolButton2: TToolButton;
      Label1: TLabel;
      edServidor: TcxTextEdit;
      procedure act_confirmarExecute(Sender: TObject);
      procedure act_cancelarExecute(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   frmServidor: TfrmServidor;

implementation

{$R *.dfm}

uses uMenu;

procedure TfrmServidor.act_cancelarExecute(Sender: TObject);
begin
   inherited;
   ModalResult := mrCancel;
end;

procedure TfrmServidor.act_confirmarExecute(Sender: TObject);
begin
   if Trim(edServidor.Text) = '' then
   begin
      Application.MessageBox('É necessário informar um Servidor.', 'Atenção', 0 + 64);
      if edServidor.CanFocus then
         edServidor.SetFocus;
   end;
   //
   ModalResult := mrOk;
   inherited;
end;

end.
