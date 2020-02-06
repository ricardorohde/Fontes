unit uDetalheIBPT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxCurrencyEdit, cxDBEdit, Vcl.StdCtrls,
  AdvGroupBox, cxTextEdit, JvDataSource, Data.DB, MemDS, DBAccess, Uni,
  AdvGlowButton, Vcl.ExtCtrls, AdvPanel;

type
  TfrmDetalheIBPT = class(TfrmModeloCadastroSimples)
    Label1: TLabel;
    Label2: TLabel;
    dbDescricao: TcxDBTextEdit;
    dbCodigo: TcxDBTextEdit;
    grp1: TAdvGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbFedNac: TcxDBCurrencyEdit;
    dbFedImp: TcxDBCurrencyEdit;
    dbEstadual: TcxDBCurrencyEdit;
    dbMunicipal: TcxDBCurrencyEdit;
    qrCadastroncm: TWideStringField;
    qrCadastrodescricao: TWideStringField;
    qrCadastroex: TWideStringField;
    qrCadastrotabela: TIntegerField;
    qrCadastroaliqfednacional: TFloatField;
    qrCadastroaliqfedimportado: TFloatField;
    qrCadastroaliqestadual: TFloatField;
    qrCadastroaliqmunicipal: TFloatField;
    qrCadastroibpt_001: TIntegerField;
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheIBPT: TfrmDetalheIBPT;

implementation

{$R *.dfm}

uses Funcao_DB, uMenu;

procedure TfrmDetalheIBPT.btEditarClick(Sender: TObject);
begin
  inherited;
  if dbDescricao.canFocus then
    dbDescricao.SetFocus;
end;

procedure TfrmDetalheIBPT.btExcluirClick(Sender: TObject);
begin
  if not btExcluir.Enabled then abort;

  Application.NormalizeAllTopMosts;
  if  Application.MessageBox( 'Confirma a exclusão do registro? Esta ação não pode ser desfeita.', 'Atenção', MB_TOPMOST + MB_ICONQUESTION + MB_YESNO)=mryes then
  begin
    try
      qrCadastro.Delete;
      qrCadastro.close;
    except
      Application.MessageBox('Erro ao excluir o registro. A exclusão não é possível caso o item já tenha sido usado no sistema!', 'Atenção', MB_ICONERROR + MB_OK);
    end;
  end;
end;

procedure TfrmDetalheIBPT.btNovoClick(Sender: TObject);
begin
  inherited;
  if dbCodigo.canFocus then
    dbCodigo.SetFocus;
end;

procedure TfrmDetalheIBPT.btSalvarClick(Sender: TObject);
begin
  if dbCodigo.Text = EmptyStr then
  begin
    Application.MessageBox('Preencha o NCM!', 'Atenção', MB_ICONEXCLAMATION);
    dbCodigo.SetFocus;
    Abort;
  end;

  if dbDescricao.Text = EmptyStr then
  begin
    Application.MessageBox('Preencha a Descrição!', 'Atenção', MB_ICONEXCLAMATION);
    dbDescricao.SetFocus;
    Abort;
  end;

  inherited;
end;

procedure TfrmDetalheIBPT.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmDetalheIBPT.FormShow(Sender: TObject);
begin
  inherited;
  if dbCodigo.canFocus then
    dbCodigo.SetFocus;
end;

procedure TfrmDetalheIBPT.qrCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrCadastroibpt_001.AsInteger       := NovoId('ibpt','ibpt_001',0,'0');
  qrCadastroaliqfednacional.AsFloat  := 0;
  qrCadastroaliqfedimportado.AsFloat := 0;
  qrCadastroaliqestadual.AsFloat     := 0;
  qrCadastroaliqmunicipal.AsFloat    := 0;
  qrCadastrotabela.AsInteger         := 0;
end;

end.
