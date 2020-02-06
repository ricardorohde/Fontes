unit uCaixaDigitaValor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, AdvGlowButton, Vcl.StdCtrls,
  JvExStdCtrls, JvEdit, JvValidateEdit, Vcl.ExtCtrls, AdvPanel;

type
  TfrmCaixaDigitaValor = class(TfrmModelo)
    edValor: TJvValidateEdit;
    btConfirma: TAdvGlowButton;
    btCancela: TAdvGlowButton;
    lbForma: TLabel;
    lbValorAcumulado: TLabel;
    Label1: TLabel;
    constructor Create(sender: tcomponent; descricao_forma : string); reintroduce;
    procedure edValorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCancelaClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    valor_acumulado : double;
  end;

var
  frmCaixaDigitaValor: TfrmCaixaDigitaValor;

implementation

{$R *.dfm}

procedure TfrmCaixaDigitaValor.btCancelaClick(Sender: TObject);
begin
  inherited;
  Tag := 0;
  Close;
end;

procedure TfrmCaixaDigitaValor.btConfirmaClick(Sender: TObject);
begin
  inherited;
  tag := 1;
  close;
end;

constructor TfrmCaixaDigitaValor.Create(sender: tcomponent; descricao_forma : string);
begin
  inherited Create(sender);
  lbforma.Caption := descricao_forma;
  valor_acumulado := 0;

end;

procedure TfrmCaixaDigitaValor.edValorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    valor_acumulado := valor_acumulado + edValor.Value;
    lbValorAcumulado.Caption := format('Valor Acumulado R$ %.2f', [valor_acumulado]);
    edValor.Value := 0;
    edValor.SelectAll;
  end;
end;

end.
