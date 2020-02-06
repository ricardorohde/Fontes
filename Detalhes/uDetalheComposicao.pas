unit uDetalheComposicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, Data.DB, MemDS,
  DBAccess, Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, cxMaskEdit, cxDropDownEdit, cxCalc, cxDBEdit,
  cxTextEdit, JvExStdCtrls, JvEdit, JvValidateEdit, JvDataSource, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

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
    qrCadastrorendimento: TFloatField;
    JvValidateEdit1: TJvValidateEdit;
    Label7: TLabel;
    qrCadastrocodigo_ref: TWideStringField;
    Label8: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    qrCadastroid_setor: TIntegerField;
    DBLookupComboBox2: TDBLookupComboBox;
    Label9: TLabel;
    qrListaSetor: TUniQuery;
    qrListaSetorid_setor: TIntegerField;
    qrListaSetordescricao: TWideStringField;
    dsListaSetor: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure btMovimentoEstoqueClick(Sender: TObject);
    procedure ValidaBotoes; Reintroduce;
    procedure dsCadastroStateChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
    procedure qrCadastroAfterPost(DataSet: TDataSet);
    procedure qrCadastroid_setorChange(Sender: TField);
  private
    { Private declarations }
    atualiza_custo : boolean;
  public
    { Public declarations }
  end;

var
  frmDetalheComposicao: TfrmDetalheComposicao;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uMovimentoEstoque, uFuncoes;

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
  BuscaCampo(atualiza_custo, 'select b_atualiza_custo_material_composicao from empresas where emp_001='+inttostr(Recproj.iEmp), '', false);

  qrListaSetor.Parambyname('id_empresa').AsInteger:=RecProj.iEmp;
  qrListaSetor.Open;
end;

procedure TfrmDetalheComposicao.qrCadastroAfterPost(DataSet: TDataSet);
begin
  inherited;
  if atualiza_custo then
    AtualizaPrecoCustoMaterialPelaComposicao(qrcadastro.FieldByName('id_composicao').AsInteger);
end;

procedure TfrmDetalheComposicao.qrCadastroid_setorChange(Sender: TField);
var quantidade : double;
    str_sql : string;
begin
  //busca a quantidade de estoque no setor selecionado
  str_sql := format('select quantidade from setor_estoque_composicao where id_composicao = %d and id_setor = %d and id_empresa=%d',
                    [qrcadastro.FieldByName('id_composicao').AsInteger,
                    qrcadastro.FieldByName('id_setor').AsInteger,
                    qrcadastro.FieldByName('id_empresa').AsInteger]);
  BuscaCampo(quantidade, str_sql, '', false);
  qrcadastro.FieldByName('estoque').asfloat := quantidade;

end;

procedure TfrmDetalheComposicao.qrCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrCadastro.FieldByName('id_composicao').AsInteger := NovoId('composicao', 'id_composicao', RecProj.iEmp, 'id_empresa');
  qrCadastro.FieldByName('id_empresa').AsInteger := RecProj.iEmp;
  qrCadastro.FieldByName('rendimento').asFloat := 100;
end;

end.
