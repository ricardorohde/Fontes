unit uDetalheSetor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, Data.DB,
  JvDataSource, MemDS, DBAccess, Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls;

type
  TfrmDetalheSetor = class(TfrmModeloCadastroSimples)
    qrCadastroid_setor: TIntegerField;
    qrCadastroid_empresa: TIntegerField;
    qrCadastrodescricao: TWideStringField;
    qrCadastroid_situacao: TIntegerField;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure btExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheSetor: TfrmDetalheSetor;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uFuncoes;

procedure TfrmDetalheSetor.btExcluirClick(Sender: TObject);
begin
  //evita que exclua o setor Almoxarifado.. sempre deve existir o setor 1
  if qrCadastro.fieldbyname('id_setor').asinteger = 1 then
  begin
    Application.messagebox('Este registro é reservado pelo sistema e não pode ser excluído!', 'Atenção', mb_iconinformation);
    abort;
  end;

  inherited;
end;

procedure TfrmDetalheSetor.qrCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrCadastro.fieldbyname('id_empresa').asinteger := recproj.iemp;
  qrCadastro.fieldbyname('id_setor').asinteger := novoid('setor_estoque', 'id_setor', recproj.iemp, 'id_empresa');
  qrCadastro.fieldbyname('id_situacao').asinteger := 4;
end;

end.
