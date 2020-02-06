unit uDetalheConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxCheckBox, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls,
  Data.DB, JvDataSource, MemDS, DBAccess, Uni, AdvGlowButton, Vcl.ExtCtrls,
  AdvPanel;

type
  TfrmDetalheConta = class(TfrmModeloCadastroSimples)
    qrCadastroid_conta: TIntegerField;
    qrCadastroid_empresa: TIntegerField;
    qrCadastrodescricao: TWideStringField;
    qrCadastrob_pagar: TBooleanField;
    qrCadastrob_receber: TBooleanField;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    qrCadastroid_situacao: TIntegerField;
    procedure qrCadastroNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheConta: TfrmDetalheConta;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB;

procedure TfrmDetalheConta.qrCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrCadastro.FieldByName('id_conta').AsInteger := novoId('conta','id_conta',recProj.Iemp,'id_empresa');
  qrCadastro.FieldByName('b_pagar').AsBoolean:=true;
  qrCadastro.FieldByName('b_receber').AsBoolean:=true;
  qrCadastro.FieldByName('id_empresa').asinteger:=recproj.iemp;
  qrCadastro.FieldByName('id_situacao').asinteger:=4;
end;

end.
