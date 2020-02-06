unit uDetalheClienteMovimentoConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  Vcl.StdCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, AdvOfficeButtons,
  AdvGroupBox, AdvGlowButton;

type
  TfrmDetalheClienteMovimentoConta = class(TfrmModelo)
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    rgTipoMovimento: TAdvGroupBox;
    rbDebito: TAdvOfficeRadioButton;
    rbCredito: TAdvOfficeRadioButton;
    edValor: TJvValidateEdit;
    Label1: TLabel;
    edObservacao: TEdit;
    Label2: TLabel;
    procedure btCancelaClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    constructor Create (sender : tcomponent ; id_cliente :integer; tipo_movimento : string = 'C');
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    tipo_movimento : string;
    id_cliente : integer;
  public
    { Public declarations }
  end;

var
  frmDetalheClienteMovimentoConta: TfrmDetalheClienteMovimentoConta;

implementation

{$R *.dfm}

uses uMenu, uFuncoes;

constructor TfrmDetalheClienteMovimentoConta.Create(sender : tcomponent ; id_cliente :integer;  tipo_movimento : string = 'C');
begin
  inherited Create(sender);
  self.tipo_movimento := uppercase(tipo_movimento);
  self.id_cliente := id_cliente;

  if self.tipo_movimento = 'C' then //Crédito
    rbCredito.Checked:=true
  else
    rbDebito.Checked :=true;
end;

procedure TfrmDetalheClienteMovimentoConta.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_return then
    btConfirma.Click
  else if Key = VK_ESCAPE then
    btCancela.Click;
end;

procedure TfrmDetalheClienteMovimentoConta.FormShow(Sender: TObject);
begin
  inherited;
  edvalor.SetFocus;
end;

procedure TfrmDetalheClienteMovimentoConta.btCancelaClick(Sender: TObject);
begin
  inherited;
  self.Tag:=0;
  close;
end;

procedure TfrmDetalheClienteMovimentoConta.btConfirmaClick(Sender: TObject);
var mov , str_aux :string;
    saldo_fiado, limite_fiado :double;
begin
  inherited;
  if edValor.value<=0 then
  begin
    Application.MessageBox('Valor inválido!', 'Atenção', MB_ICONINFORMATION + mb_ok);
    if edValor.canfocus then edValor.setfocus;
    abort;
  end;

  if trim(edObservacao.Text)=''then
  begin
    Application.MessageBox('Informe o motivo do lançamento!', 'Atenção', MB_ICONINFORMATION + mb_ok);
    if edObservacao.canfocus then edObservacao.setfocus;
    abort;
  end;

  if tipo_movimento = 'C' then
    mov :='E'
  else
  begin
    mov :='S';
    if not VerificaSaldoFiado(saldo_fiado, limite_fiado, id_cliente, recproj.iEmp, edValor.AsFloat) then
    begin
      str_aux :=Format( 'O cliente não possui saldo suficente!' +#13#10+
                 'Saldo: %m' +#13#10+  'Limite: %m', [saldo_fiado, limite_fiado ]) ;
      Application.messagebox(pchar(str_aux), 'Atenção', MB_ICONINFORMATION + mb_ok);
      abort;
    end;
  end;

  InserirMovimentoContaCliente(recproj.iemp, id_cliente, recproj.iUsuario, edValor.AsFloat, mov,
                               edObservacao.Text, Date + Time, null, false, 0, true);
  self.Tag:=1;
  close;
end;

end.
