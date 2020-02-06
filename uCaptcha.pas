unit uCaptcha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, JPEG,
  AdvGlowButton;

type
  TfrmCaptcha = class(TForm)
    Image1: TImage;
    edtCaptcha: TEdit;
    lblAtualizarCaptcha: TLabel;
    pnBotoes: TFlowPanel;
    btCancelar: TAdvGlowButton;
    btOK: TAdvGlowButton;
    procedure lblAtualizarCaptchaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtCaptchaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCancelarClick(Sender: TObject);
    procedure btOKClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  frmCaptcha: TfrmCaptcha;

implementation

{$R *.dfm}

uses uDetalheCliente;


procedure TfrmCaptcha.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCaptcha.btOKClick(Sender: TObject);
begin
  if trim(edtCaptcha.Text) = '' then
  begin
    Application.MessageBox('Digite o Captcha!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    edtCaptcha.SetFocus;
    exit;
  end;
  frmDetalheCliente.sCaptcha := edtCaptcha.Text;

  Close;
end;

procedure TfrmCaptcha.edtCaptchaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
   begin
      if trim(edtCaptcha.Text) = '' then
      begin
        Application.MessageBox('Digite o Captcha!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
        edtCaptcha.SetFocus;
        exit;
      end;
      frmDetalheCliente.sCaptcha := edtCaptcha.Text;

      Close;
   end;
end;

procedure TfrmCaptcha.FormActivate(Sender: TObject);
begin
   lblAtualizarCaptchaClick(sender);
end;

procedure TfrmCaptcha.lblAtualizarCaptchaClick(Sender: TObject);
var
  Stream: TMemoryStream;
  ImgArq: String;
begin
  Stream:= TMemoryStream.Create;

  try
    try
      frmDetalheCliente.ACBrConsultaCNPJ.Captcha(Stream);

      ImgArq := ExtractFilePath(ParamStr(0))+PathDelim+'captch.png';
      Stream.SaveToFile( ImgArq );
      Image1.Picture.LoadFromFile( ImgArq );

      EdtCaptcha.Clear;
      EdtCaptcha.SetFocus;
    except
      on e: exception do
      begin
        Application.MessageBox('Erro ao carregar o captcha. Tente Novamente!', 'Erro', MB_OK + MB_ICONERROR);
      end;
    end;
  finally
    Stream.Free;
  end;
end;

end.
