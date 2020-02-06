unit uDetalhePerfilConsumo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, Data.DB,
  JvDataSource, MemDS, DBAccess, Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxCurrencyEdit, cxDBEdit, cxMemo, cxTextEdit, cxMaskEdit, cxSpinEdit,
  Vcl.StdCtrls;

type
  TfrmDetalhePerfilConsumo = class(TfrmModeloCadastroSimples)
    qrCadastroid_perfil_consumo: TIntegerField;
    qrCadastrodescricao: TWideStringField;
    qrCadastrovalor_consumacao: TFloatField;
    qrCadastrovalor_entrada: TFloatField;
    qrCadastrovalor_limite: TFloatField;
    qrCadastroid_situacao: TIntegerField;
    qrCadastroobservacao: TWideMemoField;
    qrCadastroid_empresa: TIntegerField;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    cxDBMemo1: TcxDBMemo;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    btAtivar: TAdvGlowButton;
    qrCadastrodesc_situacao: TWideStringField;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label6: TLabel;
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure btAtivarClick(Sender: TObject);
    procedure TrocaLabelBotaoAtivar;
    procedure dsCadastroStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalhePerfilConsumo: TfrmDetalhePerfilConsumo;

implementation

{$R *.dfm}

uses uMenu;

procedure TfrmDetalhePerfilConsumo.btAtivarClick(Sender: TObject);
begin
  inherited;
  if qrCadastro.FieldByName('id_situacao').AsInteger=4 then
  begin
    qrCadastro.FieldByName('id_situacao').AsInteger:=3;
    qrCadastro.FieldByName('desc_situacao').asstring:='INATIVO(A)';
  end
  else
  begin
    qrCadastro.FieldByName('id_situacao').AsInteger:=4;
    qrCadastro.FieldByName('desc_situacao').asstring:='ATIVO(A)';
  end;

  TrocaLabelBotaoAtivar;
end;

procedure TfrmDetalhePerfilConsumo.dsCadastroStateChange(Sender: TObject);
begin
  inherited;
  btAtivar.Enabled := dsCadastro.State in [dsInsert, dsEdit] ;
  TrocaLabelBotaoAtivar;
end;

procedure TfrmDetalhePerfilConsumo.qrCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrCadastro.FieldByName('id_empresa').AsInteger := recproj.iEmp;
  qrCadastro.FieldByName('desc_situacao').asstring := 'ATIVO(A)';
end;

procedure TfrmDetalhePerfilConsumo.TrocaLabelBotaoAtivar;
begin
  inherited;
  if qrCadastro.FieldByName('id_situacao').AsInteger=4 then
    btAtivar.Caption := 'Desativar perfil'
  else
    btAtivar.Caption := 'Ativar perfil';
end;

end.
