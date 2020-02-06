unit uDetalhePromocao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, JvDataSource,
  Data.DB, MemDS, DBAccess, Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxCurrencyEdit, cxDBEdit, cxMaskEdit, cxSpinEdit, cxTextEdit, cxMemo,
  Vcl.StdCtrls, cxCheckBox, AdvGroupBox, cxButtonEdit, Vcl.DBActns,
  System.Actions, Vcl.ActnList, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TfrmDetalhePromocao = class(TfrmModeloCadastroSimples)
    qrCadastroid_promocao: TIntegerField;
    qrCadastroid_empresa: TIntegerField;
    qrCadastroid_categoria: TIntegerField;
    qrCadastroid_situacao: TIntegerField;
    qrCadastrodescricao: TWideStringField;
    qrCadastrodesconto: TFloatField;
    qrCadastrodia_seg: TBooleanField;
    qrCadastrodia_ter: TBooleanField;
    qrCadastrodia_qua: TBooleanField;
    qrCadastrodia_qui: TBooleanField;
    qrCadastrodia_sex: TBooleanField;
    qrCadastrodia_sab: TBooleanField;
    qrCadastrodia_dom: TBooleanField;
    qrCadastrotipo_mesa: TBooleanField;
    qrCadastrotipo_delivery: TBooleanField;
    qrCadastrotipo_comanda: TBooleanField;
    qrCadastrotipo_balcao: TBooleanField;
    qrCadastrotipo_pdv: TBooleanField;
    qrCadastroobservacao: TWideMemoField;
    AdvGroupBox1: TAdvGroupBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    AdvGroupBox2: TAdvGroupBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox9: TcxDBCheckBox;
    cxDBCheckBox10: TcxDBCheckBox;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBCheckBox12: TcxDBCheckBox;
    Label1: TLabel;
    cxDBMemo1: TcxDBMemo;
    Label2: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label4: TLabel;
    edDesconto: TcxDBCurrencyEdit;
    lbCategoria: TLabel;
    ActionList1: TActionList;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetRefresh1: TDataSetRefresh;
    act_confirmar: TAction;
    act_cancelar: TAction;
    acBuscaCategoria: TAction;
    edIDCategoria: TcxDBButtonEdit;
    Label5: TLabel;
    Label6: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    btAtivar: TAdvGlowButton;
    qrCadastrodesc_situacao: TWideStringField;
    constructor Create(sender : TComponent ; nome_campo_chave, nome_campo_status : string;
                       id_tabela : integer = 0;
                       permite_novo : boolean = true;
                       permite_editar : boolean = true;
                       permite_excluir : boolean = true);  reintroduce;
    procedure qrCadastroid_categoriaChange(Sender: TField);
    procedure acBuscaCategoriaExecute(Sender: TObject);
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure btAtivarClick(Sender: TObject);
    procedure dsCadastroStateChange(Sender: TObject);
    procedure TrocaLabelBotaoAtivar;
    procedure edDescontoEnter(Sender: TObject);
    procedure qrCadastroBeforePost(DataSet: TDataSet);
    procedure edDescontoClick(Sender: TObject);
    procedure qrCadastroAfterOpen(DataSet: TDataSet);
    procedure btCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    id_usuario_promocao : integer;
  public
    { Public declarations }
  end;

var
  frmDetalhePromocao: TfrmDetalhePromocao;

implementation

{$R *.dfm}


uses uMenu, uFuncoes, uBuscaRegistro;

constructor TfrmDetalhePromocao.Create(sender: TComponent; nome_campo_chave: string; nome_campo_status: string; id_tabela: Integer = 0; permite_novo: Boolean = True; permite_editar: Boolean = True; permite_excluir: Boolean = True);
begin
  inherited Create(sender,nome_campo_chave, nome_campo_status , id_tabela, permite_novo, permite_editar, permite_excluir);
  if not frmMenu.ConfirmacaoSenha('b_acesso_promocao', id_usuario_promocao) then abort;


end;

procedure TfrmDetalhePromocao.TrocaLabelBotaoAtivar;
begin
  inherited;
  if qrCadastro.FieldByName('id_situacao').AsInteger=4 then
    btAtivar.Caption := 'Desativar promoção'
  else
    btAtivar.Caption := 'Ativar promoção';
end;

procedure TfrmDetalhePromocao.acBuscaCategoriaExecute(Sender: TObject);
var str_sql : string;
begin
  inherited;
  edIDCategoria.SetFocus;

  str_sql:= ' select cat_001, cat_002, fn_situacoes(sit_001) from categoria ';

   frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
      str_sql,
      CriaIntegerArray([0,1,2]) ,
      CriaStringArray(['Código', 'Categoria', 'Status' ]),
      0, 1, ' sit_001=4 and emp_001='+IntToStr(RecProj.iEmp), 800, 500);
   frmBuscaRegistro.ShowModal;
   if frmBuscaRegistro.Tag=1 then
     qrcadastro.FieldByName('id_categoria').value := frmBuscaRegistro.valor_retorno;
   frmBuscaRegistro.Free;

   qrCadastroid_categoriaChange(nil);

end;

procedure TfrmDetalhePromocao.btAtivarClick(Sender: TObject);
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

procedure TfrmDetalhePromocao.btCancelarClick(Sender: TObject);
begin
  inherited;
  qrCadastroid_categoriaChange(nil);
end;

procedure TfrmDetalhePromocao.edDescontoClick(Sender: TObject);
begin
  inherited;
  edDesconto.SelectAll;
end;

procedure TfrmDetalhePromocao.edDescontoEnter(Sender: TObject);
begin
  inherited;
  edDesconto.SelectAll;
end;

procedure TfrmDetalhePromocao.FormShow(Sender: TObject);
begin
  inherited;
  if qrCadastro.FieldByName('id_situacao').AsInteger=4 then
    btAtivar.Caption := 'Desativar promoção'
  else
    btAtivar.Caption := 'Ativar promoção';
end;

procedure TfrmDetalhePromocao.dsCadastroStateChange(Sender: TObject);
begin
  inherited;
  btAtivar.Enabled := dsCadastro.State in [dsInsert, dsEdit] ;
  TrocaLabelBotaoAtivar;
end;

procedure TfrmDetalhePromocao.qrCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qrCadastroid_categoriaChange(nil);
end;

procedure TfrmDetalhePromocao.qrCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrCadastro.FieldByName('desconto').AsFloat=0 then
  begin
    application.MessageBox('Informe o desconto da promoção!', 'Atenção', mb_iconinformation);
    edDesconto.SetFocus;
    abort;
  end;

end;

procedure TfrmDetalhePromocao.qrCadastroid_categoriaChange(Sender: TField);
var  str_sql : string;
     id_categoria :integer;
begin
  inherited;
  id_categoria := qrCadastroid_categoria.AsInteger;
  str_sql := format('select cat_002 from categoria where cat_001=%d and emp_001=%d',[ id_categoria , recproj.iEmp]);
  LookupBuscaExit(id_categoria, tcxbuttonedit(edIdCategoria), lbCategoria, str_sql, 'Categoria');
end;

procedure TfrmDetalhePromocao.qrCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrCadastro.FieldByName('id_situacao').AsInteger:=4;
  qrCadastro.FieldByName('id_empresa').AsInteger:=recproj.iEmp;
  qrCadastro.FieldByName('desc_situacao').asstring:='ATIVA';

end;

end.

