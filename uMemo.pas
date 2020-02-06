unit uMemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  AdvGlowButton, Vcl.StdCtrls;

type
  TfrmMemo = class(TfrmModelo)
    FlowPanel1: TFlowPanel;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    edTitulo: TEdit;
    lbTitulo: TLabel;
    Memo1: TMemo;
    lbObs: TLabel;
    lbNumCaracteres: TLabel;
    procedure btConfirmaClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    constructor Criar_Justificativa(Nome_Janela, Titulo, Corpo_Titulo: String);
    constructor Criar_Historico(Nome_Janela, Titulo, Corpo_Titulo, Historico: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Memo1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMemo: TfrmMemo;

implementation

{$R *.dfm}

procedure TfrmMemo.btCancelaClick(Sender: TObject);
begin
  ModalResult := mrCancel;
  inherited;
end;

procedure TfrmMemo.btConfirmaClick(Sender: TObject);
begin
   if Trim(Memo1.Lines.Text) = '' then
   begin
      Application.MessageBox('É necessário informar uma justificativa.', 'Atenção', 0 + 64);
      memo1.setfocus;
      Abort;
   end;
   //
   ModalResult := mrOk;
   inherited;
end;

constructor TfrmMemo.Criar_Justificativa(Nome_Janela, Titulo, Corpo_Titulo: String);
begin
   Create(Nil);
   //
   lbTitulo.Caption := Titulo;
   edTitulo.Text := Corpo_Titulo;
   Self.Caption := Nome_Janela;
   lbObs.Caption := 'Justificativa';
end;

procedure TfrmMemo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmMemo.Memo1Change(Sender: TObject);
begin
  inherited;
  lbNumCaracteres.Caption := format('%d Caracter(es)',[length(trim(memo1.Text))]);
end;

procedure TfrmMemo.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then
  begin
    if btConfirma.CanFocus then btConfirma.SetFocus;
  end;
end;

constructor TfrmMemo.Criar_Historico(Nome_Janela, Titulo, Corpo_Titulo, Historico: String);
begin
   Create(Nil);
   //
   lbTitulo.Caption := Titulo;
   edTitulo.Text := Corpo_Titulo;
   Self.Caption := Nome_Janela;
   lbObs.Caption := 'Histórico';
   Memo1.ReadOnly := True;
   Memo1.Lines.Add(Historico);

end;

end.
