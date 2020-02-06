unit uDetalheComposicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, Data.DB, MemDS,
  DBAccess, Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, cxMaskEdit, cxDropDownEdit, cxCalc, cxDBEdit,
  cxTextEdit, JvExStdCtrls, JvEdit, JvValidateEdit, JvDataSource;

type
  TfrmDetalheComposicao = class(TfrmModeloCadastroSimples)
    qrCadastroid_composicao: TIntegerField;
    qrCadastrodescricao: TWideStringField;
    qrCadastrovalor_custo: TFloatField;
    qrCadastroestoque: TFloatField;
    qrCadastroestoque_minimo: TFloatField;
    qrCadastroid_situacao: TIntegerField;
    qrCadastroid_empresa: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    edValor: TJvValidateEdit;
    edEstoque: TJvValidateEdit;
    JvValidateEdit2: TJvValidateEdit;
    qrCadastroid_unidade: TIntegerField;
    qrListaUnidades: TUniQuery;
    qrListaUnidadesuni_001: TIntegerField;
    qrListaUnidadesemp_001: TIntegerField;
    qrListaUnidadesdescricao: TWideStringField;
    dsListaUnidades: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label6: TLabel;
    btMovimentoEstoque: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure btMovimentoEstoqueClick(Sender: TObject);
    procedure ValidaBotoes; Reintroduce;
    procedure dsCadastroStateChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheComposicao: TfrmDetalheComposicao;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uMovimentoEstoque;

procedure TfrmDetalheComposicao.ValidaBotoes;
begin
  inherited  ValidaBotoes;
  if qrCadastro.Active then
    //aberto, nao editando...
    btMovimentoEstoque.Enabled:= qrCadastro.State = dsBrowse
  else
  begin
    btMovimentoEstoque.Enabled:=false;
    btNovo.Enabled:=true;
    btEditar.Enabled:=false;
    btExcluir.Enabled:=false;
    btSalvar.Enabled:=false;
    btCancelar.Enabled:=false;
  end;
end;

procedure TfrmDetalheComposicao.btMovimentoEstoqueClick(Sender: TObject);
begin
  inherited;
  frmMovimentoEstoque :=  TfrmMovimentoEstoque.Create(self, qrCadastro.FieldByName('id_composicao').AsInteger,'C');
  frmMovimentoEstoque.ShowModal;
  frmMovimentoEstoque.Free;
  qrCadastro.Refresh;
end;

procedure TfrmDetalheComposicao.dsCadastroStateChange(Sender: TObject);
begin
  inherited;
  ValidaBotoes;
  edEstoque.Enabled:=false;
end;

procedure TfrmDetalheComposicao.edValorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key in ['-']  then key:=#0
end;

procedure TfrmDetalheComposicao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmDetalheComposicao.FormShow(Sender: TObject);
begin
  inherited;
  qrListaUnidades.Parambyname('id_empresa').AsInteger:=RecProj.iEmp;
  qrListaUnidades.Open;
end;

procedure TfrmDetalheComposicao.qrCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrCadastro.FieldByName('id_composicao').AsInteger := NovoId('composicao', 'id_composicao', RecProj.iEmp, 'id_empresa');
  qrCadastro.FieldByName('id_empresa').AsInteger := RecProj.iEmp;
end;

end.
