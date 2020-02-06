unit uDetalheNotaEntradaItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, Data.DB,
  JvDataSource, MemDS, DBAccess, Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.StdCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, AdvGroupBox,
  cxCurrencyEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  System.Actions, Vcl.ActnList, System.Math, JvCombobox, JvDBCombobox,
  cxGroupBox, cxRadioGroup, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  TfrmDetalheNotaEntradaItem = class(TfrmModeloCadastroSimples)
    qrCadastroid_nota_entrada: TIntegerField;
    qrCadastroid_empresa: TIntegerField;
    qrCadastroitem: TIntegerField;
    qrCadastroid_material: TIntegerField;
    qrCadastrocst: TIntegerField;
    qrCadastrocfop: TWideStringField;
    qrCadastroquantidade: TFloatField;
    qrCadastropeso_unitario_liquido: TFloatField;
    qrCadastropeso_unitario_bruto: TFloatField;
    qrCadastrovalor_unitario: TFloatField;
    qrCadastrovalor_total: TFloatField;
    qrCadastrovalor_frete: TFloatField;
    qrCadastrovalor_seguro: TFloatField;
    qrCadastrovalor_despesas: TFloatField;
    qrCadastroicms_aliq: TFloatField;
    qrCadastroicms_aliq_reducao: TFloatField;
    qrCadastrovalor_base_icms: TFloatField;
    qrCadastrovalor_icms: TFloatField;
    qrCadastroicms_aliq_sub: TFloatField;
    qrCadastrovalor_base_icms_sub: TFloatField;
    qrCadastrovalor_icms_sub: TFloatField;
    qrCadastrovalor_icms_isento: TFloatField;
    qrCadastrovalor_icms_nao_trib: TFloatField;
    qrCadastrotipo_ipi: TIntegerField;
    qrCadastroipi_aliq: TFloatField;
    qrCadastrovalor_base_ipi: TFloatField;
    qrCadastrovalor_ipi: TFloatField;
    qrCadastroid_situacao: TIntegerField;
    qrCadastroncm: TWideStringField;
    qrCadastrovalor_pis: TFloatField;
    qrCadastrovalor_cofins: TFloatField;
    qrCadastrounidade: TWideStringField;
    qrCadastroserial: TWideStringField;
    qrCadastronumeracao: TWideStringField;
    qrCadastrocomplemento_descricao: TWideStringField;
    qrCadastrodescricao_material: TWideStringField;
    qrCadastrocodigo_material: TWideStringField;
    qrCadastroestoque: TFloatField;
    qrCadastrocst_descricao: TWideStringField;
    qrCadastrocfop_descricao: TWideStringField;
    qrCadastrocst_pis_descricao: TWideStringField;
    qrCadastrocst_cofins_descricao: TWideStringField;
    qrCadastrocsosn: TIntegerField;
    qrCadastrocso_descricao: TWideStringField;
    qrCadastrovalor_desconto: TFloatField;
    qrCadastrocest_descricao: TWideStringField;
    qrCadastrovalor_desconto_perc: TFloatField;
    qrCadastrovalor_base_pis_cofins: TFloatField;
    qrCadastrocofins_aliq: TFloatField;
    qrCadastropis_aliq: TFloatField;
    qrCadastrocst_pis: TIntegerField;
    qrCadastrocst_cofins: TIntegerField;
    qrCadastrocest: TWideStringField;
    qrCadastromvast: TFloatField;
    ActionList1: TActionList;
    acBuscaMaterial: TAction;
    acBuscaCST: TAction;
    acBuscaCFOP: TAction;
    acBuscaCSOSN: TAction;
    acBuscaCSTPIS: TAction;
    acBuscaCSTCOFINS: TAction;
    acBuscaCEST: TAction;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edIdMaterial: TcxDBButtonEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    AdvGroupBox1: TAdvGroupBox;
    Label10: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label25: TLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    edDesconto: TcxDBCurrencyEdit;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    edDespesas: TcxDBCurrencyEdit;
    JvValidateEdit1: TJvValidateEdit;
    AdvGroupBox2: TAdvGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    cxDBCurrencyEdit10: TcxDBCurrencyEdit;
    cxDBCurrencyEdit11: TcxDBCurrencyEdit;
    AdvGroupBox3: TAdvGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    edCST: TcxDBButtonEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    edCFOP: TcxDBButtonEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    edCSOSN: TcxDBButtonEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    edCSTPIS: TcxDBButtonEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    edCSTCofins: TcxDBButtonEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    AdvGroupBox4: TAdvGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    cxDBCurrencyEdit12: TcxDBCurrencyEdit;
    cxDBCurrencyEdit13: TcxDBCurrencyEdit;
    cxDBCurrencyEdit14: TcxDBCurrencyEdit;
    AdvGroupBox7: TAdvGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label36: TLabel;
    cxDBCurrencyEdit17: TcxDBCurrencyEdit;
    cxDBCurrencyEdit18: TcxDBCurrencyEdit;
    cxDBCurrencyEdit27: TcxDBCurrencyEdit;
    AdvGroupBox8: TAdvGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    edPesoBruto: TcxDBCurrencyEdit;
    edPesoLiquido: TcxDBCurrencyEdit;
    AdvGroupBox9: TAdvGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    cxDBCurrencyEdit21: TcxDBCurrencyEdit;
    cxDBCurrencyEdit22: TcxDBCurrencyEdit;
    cxDBCurrencyEdit23: TcxDBCurrencyEdit;
    AdvGroupBox5: TAdvGroupBox;
    Label23: TLabel;
    cxDBCurrencyEdit15: TcxDBCurrencyEdit;
    AdvGroupBox10: TAdvGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    cxDBCurrencyEdit24: TcxDBCurrencyEdit;
    cxDBCurrencyEdit25: TcxDBCurrencyEdit;
    cxDBCurrencyEdit26: TcxDBCurrencyEdit;
    qrCadastrovalor_subtotal: TFloatField;
    qrCadastroid_composicao: TIntegerField;
    qrCadastrotipo_item: TWideStringField;
    Label40: TLabel;
    edIdComposicao: TcxDBButtonEdit;
    Label41: TLabel;
    acBuscaComposicao: TAction;
    rgTipoItem: TcxDBRadioGroup;
    btCadastrarProduto: TAdvGlowButton;    procedure acBuscaMaterialExecute(Sender: TObject);
    procedure qrCadastroid_materialChange(Sender: TField);
    procedure acBuscaCSTExecute(Sender: TObject);
    procedure acBuscaCFOPExecute(Sender: TObject);
    procedure acBuscaCSOSNExecute(Sender: TObject);
    procedure qrCadastrocstChange(Sender: TField);
    procedure qrCadastrocfopChange(Sender: TField);
    procedure qrCadastrocsosnChange(Sender: TField);
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure qrCadastroCalcFields(DataSet: TDataSet);
    constructor Create(sender : Tcomponent ; id_nota : integer; id_tabela : integer = 0); reintroduce;
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure JvValidateEdit1Exit(Sender: TObject);
    procedure aplicaDesconto(tipo : integer = 1);
    procedure edDescontoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CalcularICMS(ps_CST: String; pr_Aliq, pr_ValorProd, pr_RedBc: Currency; out pr_Valor: Currency);
    procedure CalcularPIS(ps_CST: String; pr_Aliq, pr_ValorProd: Currency; out pr_BaseCalc, pr_Valor: Currency);
    procedure CalcularCOFINS(ps_CST: String; pr_Aliq, pr_ValorProd: Currency; out pr_BaseCalc, pr_Valor: Currency);
    procedure acBuscaCSTPISExecute(Sender: TObject);
    procedure acBuscaCSTCOFINSExecute(Sender: TObject);
    procedure qrCadastrocst_pisChange(Sender: TField);
    procedure qrCadastrocst_cofinsChange(Sender: TField);
    procedure acBuscaCESTExecute(Sender: TObject);
    procedure qrCadastrocestChange(Sender: TField);
    procedure qrCadastroBeforePost(DataSet: TDataSet);
    procedure qrCadastrotipo_itemChange(Sender: TField);
    procedure acBuscaComposicaoExecute(Sender: TObject);
    procedure qrCadastroid_composicaoChange(Sender: TField);
    procedure rgTipoItemClick(Sender: TObject);
    procedure qrCadastrovalor_base_icmsChange(Sender: TField);
    procedure qrCadastrovalor_base_icms_subChange(Sender: TField);
    procedure qrCadastrovalor_base_ipiChange(Sender: TField);
    procedure qrCadastrovalor_base_pis_cofinsChange(Sender: TField);
    procedure qrCadastrovalor_unitarioChange(Sender: TField);
    procedure qrCadastrocodigo_materialChange(Sender: TField);
    procedure btCadastrarProdutoClick(Sender: TObject);
  private
    { Private declarations }
    flag_calculando : boolean;
    regime_empresa : integer;
    cfop_nota : string;
    flag_calcula_bases : boolean;
   // finalidade_nota : integer; //0 venda / 3 devolucao
    mesma_uf_cliente : boolean;
  public
    { Public declarations }
  end;

var
  frmDetalheNotaEntradaItem: TfrmDetalheNotaEntradaItem;

implementation

{$R *.dfm}

uses uMenu, uBuscaRegistro, uFuncoes, Funcao_DB, uConsProduto, uDetalheProduto;


procedure TfrmDetalheNotaEntradaItem.CalcularCOFINS(ps_CST: String; pr_Aliq, pr_ValorProd: Currency; out pr_BaseCalc, pr_Valor: Currency);
begin
   pr_BaseCalc := 0;
   pr_Valor := 0;

   pr_BaseCalc := pr_ValorProd;

   pr_Valor := roundto(pr_BaseCalc * (pr_Aliq / 100), -2);
end;


procedure TfrmDetalheNotaEntradaItem.CalcularPIS(ps_CST: String; pr_Aliq, pr_ValorProd: Currency; out pr_BaseCalc, pr_Valor: Currency);
begin
   pr_BaseCalc := 0;
   pr_Valor := 0;

   pr_BaseCalc := pr_ValorProd;

   pr_Valor := roundto(pr_BaseCalc * (pr_Aliq / 100), -2);
end;



//cst, aliq imcs, total do produto, reducao, valor icms (saida)
procedure TfrmDetalheNotaEntradaItem.CalcularICMS(ps_CST: String; pr_Aliq, pr_ValorProd, pr_RedBc: Currency; out pr_Valor: Currency);
var
  lr_Base: Currency;

begin
   pr_Valor := 0;

   // tributáveis do Regime Normal
   if (ps_CST = '00') or
      (ps_CST = '20') or
      (ps_CST = '90') or
   // tributação do Simples Nacional
      (ps_CST = '101')then begin
      lr_Base := pr_ValorProd;

      // Redução de Base
      if (ps_CST = '20') or
         (ps_CST = '90') then begin

         lr_Base := lr_Base * (1 - (pr_RedBc / 100));
      end;

      // Calcular o valor
      pr_Valor := lr_Base * (pr_Aliq / 100);

      // Caso o valor seja muito irrisório (Ex: 0.000001), assumirá 0.01
      if (pr_Valor > 0) and
         (pr_Valor < 0.01) then begin

         pr_Valor := 0.01;
      end;
   end;

   // Formata o valor para duas casas decimais
   pr_Valor := roundto(pr_Valor, -2);
end;


constructor TfrmDetalheNotaEntradaItem.Create(sender: TComponent; id_nota: Integer; id_tabela: Integer = 0);
var str_sql : string;
    qr_aux : Tuniquery;
begin
  inherited Create(sender, 'item', 'id_situacao', id_tabela,  false, false, false,  'id_nota_entrada' , id_nota );

  if id_tabela>0 then qrCadastro.Edit;

  str_sql := format('select coalesce(e.crt_codigo, 0) as regime_empresa, ne.cfop,  '+
                    ' upper(est.est_003)=upper(f.endereco_uf) as mesma_uf '+
                    ' from nota_entrada ne '+
                    ' join fornecedor f on f.id_fornecedor=ne.id_fornecedor and f.id_empresa=ne.id_empresa '+
                    ' join empresas e on e.emp_001=ne.id_empresa '+
                    ' join cidades cid on (cid.cid_001 = e.cid_001) '+
                    ' join estados est on (est.est_001 = cid.est_001) '+
                    ' where ne.id_nota_entrada=%d and ne.id_empresa=%d',
                    [id_nota, recproj.iEmp ]);
  qr_aux := CriaUniQuery(self, frmmenu.conexao);
  ExecutaConsultaSQL(qr_aux, str_sql);

  regime_empresa := qr_aux.FieldByName('regime_empresa').AsInteger;
  cfop_nota := qr_aux.FieldByName('cfop').asstring;
  //finalidade_nota := qr_aux.FieldByName('finalidade').AsInteger;; //0 venda / 3 devolucao
  mesma_uf_cliente := qr_aux.FieldByName('mesma_uf').asboolean;

  flag_calculando := false;
  flag_calcula_bases := false;
end;

procedure TfrmDetalheNotaEntradaItem.rgTipoItemClick(Sender: TObject);
begin
  if rgTipoItem.ItemIndex=0 then
    qrCadastro.FieldByName('tipo_item').AsString :='M'
  else
    qrCadastro.FieldByName('tipo_item').AsString :='C';
end;

procedure TfrmDetalheNotaEntradaItem.edDescontoExit(Sender: TObject);
begin
  inherited;
  aplicaDesconto(2);
end;

procedure TfrmDetalheNotaEntradaItem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key= vk_return then Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmDetalheNotaEntradaItem.JvValidateEdit1Exit(Sender: TObject);
begin
  inherited;
  aplicaDesconto(1);
end;

procedure TfrmDetalheNotaEntradaItem.acBuscaCESTExecute(Sender: TObject);
var str_sql : string;
begin
  inherited;
  if qrcadastro.State in [dsEdit, dsInsert] then
  begin
    edCSTCofins.SetFocus;

    str_sql := 'select cest_codigo, ncm_codigo, cest_descricao from cest';
    frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
        CriaIntegerArray([0, 1, 2]), CriaStringArray(['CEST','NCM', 'Descrição']), 0, 1);
    frmBuscaRegistro.ShowModal;
    if frmBuscaRegistro.Tag=1 then
     qrcadastro.FieldByName('cest').value := frmBuscaRegistro.valor_retorno;
    frmBuscaRegistro.Free;
  end;

end;

procedure TfrmDetalheNotaEntradaItem.acBuscaCFOPExecute(Sender: TObject);
var str_sql , filtro: string;
begin
  inherited;
  if qrcadastro.State in [dsEdit, dsInsert] then
  begin
    edCFOP.SetFocus;

    str_sql := 'select cfop_codigo, cfop_descricao, cfop_descritivonf from cfop';
    //filtro := ' substring(cfop_codigo,1,1) in (''5'',''6'') ';
    filtro := '';
    frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
        CriaIntegerArray([0, 1]), CriaStringArray(['CFOP', 'Descrição']), 0, 1, filtro);
    frmBuscaRegistro.ShowModal;
    if frmBuscaRegistro.Tag=1 then
     qrcadastro.FieldByName('cfop').value := frmBuscaRegistro.valor_retorno;
    frmBuscaRegistro.Free;
  end;

end;

procedure TfrmDetalheNotaEntradaItem.acBuscaComposicaoExecute(Sender: TObject);
var str_sql : string;
begin
  inherited;
  if qrcadastro.State in [dsEdit, dsInsert] then
  begin
    edIdComposicao.SetFocus;

    str_sql := ' select id_composicao, descricao, valor_custo,  u.uni_003 as unidade '+
               ' from composicao c join unidades u on c.id_unidade = u.uni_001 and c.id_empresa=u.emp_001 ';
    frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
      CriaIntegerArray([0, 1, 2, 3]), CriaStringArray(['Código', 'Descrição',
      'Valor',  'Unidade']), 0, 1, ' c.id_situacao=4 and c.id_empresa=' +
      IntToStr(RecProj.iEmp), 800, 500);
    frmBuscaRegistro.ShowModal;
    if frmBuscaRegistro.Tag=1 then
     qrcadastro.FieldByName('id_composicao').value := frmBuscaRegistro.valor_retorno;
    frmBuscaRegistro.Free;
  end;

end;

procedure TfrmDetalheNotaEntradaItem.acBuscaCSOSNExecute(Sender: TObject);
var str_sql : string;
begin
  inherited;
  if qrcadastro.State in [dsEdit, dsInsert] then
  begin
    edCsosn.SetFocus;

    str_sql := 'select cso_codigo, cso_descricao from csosn_icms';
    frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
        CriaIntegerArray([0, 1]), CriaStringArray(['CSOSN', 'Descrição']), 0, 1);
    frmBuscaRegistro.ShowModal;
    if frmBuscaRegistro.Tag=1 then
     qrcadastro.FieldByName('csosn').value := frmBuscaRegistro.valor_retorno;
    frmBuscaRegistro.Free;
  end;

end;

procedure TfrmDetalheNotaEntradaItem.acBuscaCSTCOFINSExecute(Sender: TObject);
var str_sql : string;
begin
  inherited;
  if qrcadastro.State in [dsEdit, dsInsert] then
  begin
    edCSTCofins.SetFocus;

    str_sql := 'select cof_codigo, cof_descricao from cst_cofins';
    frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
        CriaIntegerArray([0, 1]), CriaStringArray(['CST COFINS', 'Descrição']), 0, 1);
    frmBuscaRegistro.ShowModal;
    if frmBuscaRegistro.Tag=1 then
     qrcadastro.FieldByName('cst_cofins').value := frmBuscaRegistro.valor_retorno;
    frmBuscaRegistro.Free;
  end;
end;

procedure TfrmDetalheNotaEntradaItem.acBuscaCSTExecute(Sender: TObject);
var str_sql : string;
begin
  inherited;
  if qrcadastro.State in [dsEdit, dsInsert] then
  begin
    edCst.SetFocus;

    str_sql := 'select icm_codigo, icm_descricao from cst_icms';
    frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
        CriaIntegerArray([0, 1]), CriaStringArray(['CST', 'Descrição']), 0, 1);
    frmBuscaRegistro.ShowModal;
    if frmBuscaRegistro.Tag=1 then
     qrcadastro.FieldByName('cst').value := frmBuscaRegistro.valor_retorno;
    frmBuscaRegistro.Free;
  end;

end;

procedure TfrmDetalheNotaEntradaItem.acBuscaCSTPISExecute(Sender: TObject);
var str_sql : string;
begin
  inherited;
  if qrcadastro.State in [dsEdit, dsInsert] then
  begin
    edCstPIS.SetFocus;

    str_sql := 'select pis_codigo, pis_descricao from cst_pis';
    frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
        CriaIntegerArray([0, 1]), CriaStringArray(['CST PIS', 'Descrição']), 0, 1);
    frmBuscaRegistro.ShowModal;
    if frmBuscaRegistro.Tag=1 then
     qrcadastro.FieldByName('cst_pis').value := frmBuscaRegistro.valor_retorno;
    frmBuscaRegistro.Free;
  end;
end;

procedure TfrmDetalheNotaEntradaItem.acBuscaMaterialExecute(Sender: TObject);
var str_sql : string;
begin
  inherited;
  if qrcadastro.State in [dsEdit, dsInsert] then
  begin
    edIdMaterial.SetFocus;

    str_sql := ' SELECT MAT.MAT_001, ' + ' MAT.MAT_004, ' + ' MAT.MAT_003, ' +
    ' CAT.CAT_002, ' + ' UNI.UNI_002, ' + ' MAT.MAT_012 ' +
    ' FROM MATERIAIS MAT ' +
    ' LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND (UNI.UNI_001 = MAT.UNI_001) '
    + ' LEFT OUTER JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.CAT_001 = MAT.CAT_001)';

    frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
    CriaIntegerArray([1, 2, 3, 4, 5]), CriaStringArray(['Código', 'Produto',
    'Categoria', 'Unidade', 'Pr. Custo']), 1, 1, ' mat.sit_001=4 and utiliza_combo=false and MAT.emp_001=' +
    IntToStr(RecProj.iEmp), 800, 500);
    frmBuscaRegistro.ShowModal;
    if frmBuscaRegistro.Tag=1 then
      qrcadastro.FieldByName('codigo_material').value := frmBuscaRegistro.valor_retorno;
//     qrcadastro.FieldByName('id_material').value := frmBuscaRegistro.valor_retorno;
    frmBuscaRegistro.Free;
  end;
end;

procedure TfrmDetalheNotaEntradaItem.btCadastrarProdutoClick(Sender: TObject);
begin
  inherited;
  frmDetalheProduto:= tfrmDetalheProduto.Create(self);
  frmdetalheproduto.pgCombo.TabVisible:=false;
  frmDetalheProduto.ShowModal;

  if frmDetalheProduto.qrDetalhe.RecordCount > 0 then
    qrcadastro.FieldByName('codigo_material').value:= frmDetalheProduto.qrDetalhemat_004.AsString;

  FreeAndNil(frmDetalheProduto);

  cxDBCurrencyEdit2.SetFocus; //Quantidade
end;

procedure TfrmDetalheNotaEntradaItem.btCancelarClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TfrmDetalheNotaEntradaItem.btSalvarClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TfrmDetalheNotaEntradaItem.qrCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if CompareValue(qrCadastro.FieldByName('peso_unitario_liquido').asfloat,
             qrCadastro.FieldByName('peso_unitario_bruto').asfloat)=1 then
  begin
    application.MessageBox('O peso líquido informado deve ser menor que o peso bruto!', 'Atenção', MB_ICONINFORMATION);
    edPesoLiquido.SetFocus;
    abort;
  end;

  if (qrCadastro.FieldByName('valor_desconto').asfloat>0) and
     (qrCadastro.FieldByName('valor_despesas').asfloat>0) then
  begin
    application.MessageBox('Não é possível informar desconto e acréscimo simultaneamente no item!', 'Atenção', MB_ICONINFORMATION);
    edDesconto.SetFocus;
    abort;
  end;

  if qrCadastro.FieldByName('tipo_item').AsString = 'M' then
  begin
    if qrcadastro.FieldByName('id_material').isnull then
    begin
      application.MessageBox('Não foi informado o material!', 'Atenção', MB_ICONINFORMATION);
      edIdMaterial.SetFocus;
      abort;
    end;
    //limpa o item de composicao
    qrcadastro.FieldByName('id_composicao').value := null;
  end
  else
  begin
    if qrcadastro.FieldByName('id_composicao').isnull then
    begin
      application.MessageBox('Não foi informado a matéria prima!', 'Atenção', MB_ICONINFORMATION);
      edIdComposicao.SetFocus;
      abort;
    end;
    //limpa o material
    qrcadastro.FieldByName('id_material').value := null;
    qrcadastro.FieldByName('codigo_material').value := null;
  end;


end;

procedure TfrmDetalheNotaEntradaItem.qrCadastroCalcFields(DataSet: TDataSet);
var subtotal_item, valor_desconto, valor_total_item,  valor_desconto_percent : double;
    aliquota_ICMS, aliquota_ICMS_reducao, valor_ICMS : currency;
    cst, cst_pis, cst_cofins : string;
    aliquota_PIS, aliquota_COFINS, base_calculo_PISCOFINS, valor_PIS,
    valor_cofins : currency;
begin
  inherited;
  qrcadastro.FieldByName('valor_subtotal').AsFloat :=
    qrcadastro.FieldByName('quantidade').AsFloat * qrcadastro.FieldByName('valor_unitario').AsFloat;

  if flag_calculando then  exit;
  flag_calculando :=true;

  if qrCadastro.state in [dsEdit, DsInsert] then
  begin
    subtotal_item := (qrcadastro.FieldByName('quantidade').AsFloat * qrcadastro.FieldByName('valor_unitario').AsFloat) + qrcadastro.FieldByName('valor_despesas').AsFloat;
    if subtotal_item<=0 then
    begin
      valor_desconto := 0;
      valor_desconto_percent := 100;
    end
    else
    begin
      valor_desconto := qrcadastro.FieldByName('valor_desconto').AsFloat;
      valor_desconto_percent := (valor_desconto / subtotal_item ) * 100;
    end;

    if regime_empresa = 3 then
      cst := format('%.2d', [qrcadastro.FieldByName('cst').asinteger])
    else
      cst := format('%.3d', [qrcadastro.FieldByName('csosn').asinteger]);

    aliquota_ICMS := qrcadastro.FieldByName('icms_aliq').AsFloat;
    aliquota_ICMS_reducao := qrcadastro.FieldByName('icms_aliq_reducao').AsFloat;

    valor_total_item := (qrcadastro.FieldByName('quantidade').AsFloat * qrcadastro.FieldByName('valor_unitario').AsFloat) -
      qrcadastro.FieldByName('valor_desconto').AsFloat + qrcadastro.FieldByName('valor_despesas').AsFloat;

    //calcula o icms
    //cst, aliq imcs, total do produto, reducao, valor icms (saida)
    CalcularICMS(cst, aliquota_ICMS , valor_total_item, aliquota_ICMS_reducao, valor_ICMS);

    cst_pis := format('%.2d', [qrcadastro.FieldByName('cst_pis').asinteger]);
    aliquota_PIS := qrcadastro.FieldByName('pis_aliq').AsFloat;

    //calcula o PIS
    CalcularPIS(cst_pis, aliquota_PIS, valor_total_item, base_calculo_PISCOFINS, valor_PIS);

    cst_cofins := format('%.2d', [qrcadastro.FieldByName('cst_cofins').asinteger]);
    aliquota_cofins := qrcadastro.FieldByName('cofins_aliq').AsFloat;

    CalcularCOFINS(cst_cofins, aliquota_cofins, valor_total_item, base_calculo_PISCOFINS, valor_COFINS);

    if flag_calcula_bases  then
    begin
      qrcadastro.FieldByName('valor_base_icms').AsFloat := valor_total_item;
      qrcadastro.FieldByName('valor_base_pis_cofins').AsFloat := base_calculo_PISCOFINS;
    end;

    qrcadastro.FieldByName('valor_icms').AsFloat := valor_ICMS;
    qrcadastro.FieldByName('valor_pis').AsFloat := valor_PIS;
    qrcadastro.FieldByName('valor_cofins').AsFloat := valor_cofins;
   {
            if qrCons.FieldByName('Regime').AsInteger = 3 then begin
            ls_ICMS := FormatFloat('00', qrProdutos.FieldByName('ICMS_CST').AsInteger);
         end else begin
            ls_ICMS := qrProdutos.FieldByName('ICMS_CSOSN').AsString;
         end;
   }

    qrcadastro.FieldByName('valor_desconto_perc').AsFloat := valor_desconto_percent;

    {valor_total_item := (qrcadastro.FieldByName('quantidade').AsFloat * qrcadastro.FieldByName('valor_unitario').AsFloat) -
      qrcadastro.FieldByName('valor_desconto').AsFloat + qrcadastro.FieldByName('valor_despesas').AsFloat +
      qrcadastro.FieldByName('valor_frete').AsFloat +
      qrcadastro.FieldByName('valor_seguro').AsFloat; }

    qrcadastro.FieldByName('valor_total').AsFloat := valor_total_item;

  end;
  flag_calculando := false;
end;

procedure TfrmDetalheNotaEntradaItem.qrCadastrocestChange(Sender: TField);
var descricao_campo, str_sql : string;
begin
  inherited;
  if qrCadastro.FieldByName('cest').isnull then exit;

  str_sql := format('select cest_descricao from cest where cest_codigo=%s',
                    [quotedstr( qrCadastro.FieldByName('cest').asstring)]);
  if BuscaCampo(descricao_campo, str_sql, 'CEST', false  ) then //campo aviso - false ou true para aparecer msg
  begin
    qrCadastro.FieldByName('cest_descricao').asstring := descricao_campo;
  end
  else
  begin
    qrCadastro.FieldByName('cest_descricao').value := null;
    qrCadastro.FieldByName('cest').value := null;
  end;

end;

procedure TfrmDetalheNotaEntradaItem.qrCadastrocfopChange(Sender: TField);
var descricao_campo, str_sql : string;
begin
  inherited;
  if qrCadastro.FieldByName('cfop').asstring='' then
  begin
    qrCadastro.FieldByName('cfop_descricao').value := null;
    exit;
  end;

  str_sql := format('select cfop_descricao from cfop where cfop_codigo =%s',
                    [quotedstr( qrCadastro.FieldByName('cfop').Asstring)]);
  if BuscaCampo(descricao_campo, str_sql, 'CFOP', false  ) then
  begin
    {if not ((copy(qrCadastro.FieldByName('cfop').Asstring,1,1)='5') or
            (copy(qrCadastro.FieldByName('cfop').Asstring,1,1)='6')) then
    begin
      application.messagebox('O CFOP informado não é de saída!', 'Atenção', MB_ICONINFORMATION);
      qrCadastro.FieldByName('cfop').value := null;
    end
    else }
      qrCadastro.FieldByName('cfop_descricao').asstring := descricao_campo;
  end
  else
  begin
    qrCadastro.FieldByName('cfop_descricao').value := null;
    qrCadastro.FieldByName('cfop').value := null;
  end;

end;

procedure TfrmDetalheNotaEntradaItem.qrCadastrocodigo_materialChange(Sender: TField);
var str_sql : string;
  qr_aux : Tuniquery;
begin
  inherited;
  if qrCadastro.FieldByName('codigo_material').isnull then exit;

  str_sql := (' select m.mat_001, m.mat_003 as descricao_material, ' +
                    ' stm.quantidade as estoque, m.ncm, '+
                    ' m.sit_001 as id_situacao, '+
                    ' u.uni_003 as unidade, '+
                    ' m.cst_consumidor as cst, '+
                    ' m.cfop_consumidor as cfop, '+
                    ' m.cfop_venda_outra_uf, '+
                    ' m.cfop_devolucao, '+
                    ' m.cfop_devolucao_outra_uf, '+
                    ' m.cfop_garantia, '+
                    ' m.cfop_garantia_outra_uf, '+
                    ' m.cso_codigo as csosn, '+
                    ' m.cest, '+
                    ' coalesce(m.icms, 0.0) as icms_aliq, '+
                    ' coalesce(m.ipi, 0.0) as ipi_aliq, '+
                    ' coalesce(m.pis, 0.0) as pis_aliq, '+
                    ' coalesce(m.cofins, 0.0) as cofins_aliq, '+
                    ' m.mat_012 as valor_unitario, '+
                    ' m.pis_codigo_saida, '+
                    ' m.cof_codigo_saida '+
                    ' from materiais m '+
                    ' join unidades u on u.uni_001=m.uni_001 and u.emp_001=m.emp_001 '+
                    ' left join setor_estoque_material stm on stm.id_material=m.mat_001 and stm.id_empresa=m.emp_001 and stm.id_setor=m.id_setor ' +
                    ' where utiliza_combo=false and mat_004 = ' + QuotedStr(qrCadastro.FieldByName('codigo_material').AsString) +
                    ' and m.emp_001 = ' + IntToStr(recproj.iEmp));
  qr_aux := CriaUniQuery(self, frmmenu.conexao);
  if ExecutaConsultaSQL(qr_aux, str_sql) then
  begin
    if qrCadastro.FieldByName('id_situacao').AsInteger=3 then
    begin
      Application.MessageBox('Não é possível adicionar este item pois o produto encontra-se inativo!', 'Atenção', MB_ICONINFORMATION );
      qrCadastro.FieldByName('codigo_material').value := null;
    end
    else
    begin
      qrcadastro.FieldByName('id_material').asinteger :=  qr_aux.FieldByName('mat_001').AsInteger;
      qrcadastro.FieldByName('descricao').AsString :=  qr_aux.FieldByName('descricao_material').AsString;
      qrcadastro.FieldByName('estoque').asfloat :=  qr_aux.FieldByName('estoque').asfloat;
      qrcadastro.FieldByName('unidade').AsString :=  qr_aux.FieldByName('unidade').AsString;
      qrcadastro.FieldByName('ncm').AsString :=  qr_aux.FieldByName('ncm').AsString;

      qrcadastro.FieldByName('cst').asinteger :=  qr_aux.FieldByName('cst').asinteger;
      qrcadastro.FieldByName('cest').AsString :=  qr_aux.FieldByName('cest').AsString;
      qrcadastro.FieldByName('csosn').asinteger :=  qr_aux.FieldByName('csosn').asinteger;
      qrcadastro.FieldByName('cst_pis').asinteger :=  qr_aux.FieldByName('pis_codigo_saida').asinteger;
      qrcadastro.FieldByName('cst_cofins').asinteger :=  qr_aux.FieldByName('cof_codigo_saida').asinteger;

      qrcadastro.FieldByName('icms_aliq').asfloat :=  qr_aux.FieldByName('icms_aliq').asfloat;
      qrcadastro.FieldByName('ipi_aliq').asfloat :=  qr_aux.FieldByName('ipi_aliq').asfloat;
      qrcadastro.FieldByName('pis_aliq').asfloat :=  qr_aux.FieldByName('pis_aliq').asfloat;
      qrcadastro.FieldByName('cofins_aliq').asfloat :=  qr_aux.FieldByName('cofins_aliq').asfloat;
      qrcadastro.FieldByName('valor_unitario').asfloat :=  qr_aux.FieldByName('valor_unitario').asfloat;

      //se não encontrou cfop, pega o cfop da nota fiscal
      if qrcadastro.FieldByName('cfop').AsString='' then
        qrcadastro.FieldByName('cfop').AsString := cfop_nota;
    end;
  end
  else
  begin
    Application.MessageBox('Produto não encontrado!', 'Atenção', MB_ICONINFORMATION );
    qrCadastro.FieldByName('codigo_material').value := null;
  end;

  qr_aux.Free;
end;

procedure TfrmDetalheNotaEntradaItem.qrCadastrocsosnChange(Sender: TField);
var descricao_campo, str_sql : string;
begin
  inherited;
  if qrCadastro.FieldByName('csosn').isnull then exit;

  str_sql := format('select cso_descricao from csosn_icms where cso_codigo=%d',
                    [qrCadastro.FieldByName('csosn').AsInteger]);
  if BuscaCampo(descricao_campo, str_sql, 'CSOSN', false  ) then
  begin
    qrcadastro.FieldByName('cso_descricao').AsString := descricao_campo;
  end
  else
  begin
    qrCadastro.FieldByName('csosn').value := null;
    qrcadastro.FieldByName('cso_descricao').value := null;
  end;

end;

procedure TfrmDetalheNotaEntradaItem.qrCadastrocstChange(Sender: TField);
var descricao_campo, str_sql : string;
begin
  inherited;
  if qrCadastro.FieldByName('cst').isnull then exit;

  str_sql := format('select icm_descricao from cst_icms where icm_codigo=%d',
                    [qrCadastro.FieldByName('cst').AsInteger]);
  if BuscaCampo(descricao_campo, str_sql, 'CST', false  ) then
  begin
    qrCadastro.FieldByName('cst_descricao').asstring := descricao_campo;
  end
  else
  begin
    qrCadastro.FieldByName('cst_descricao').value := null;
    qrCadastro.FieldByName('cst').value := null;
  end;
end;

procedure TfrmDetalheNotaEntradaItem.qrCadastrocst_cofinsChange(Sender: TField);
var descricao_campo, str_sql : string;
begin
  inherited;
  if qrCadastro.FieldByName('cst_cofins').isnull then exit;

  str_sql := format('select cof_descricao from cst_cofins where cof_codigo=%d',
                    [qrCadastro.FieldByName('cst_cofins').AsInteger]);
  if BuscaCampo(descricao_campo, str_sql, 'CST', false  ) then
  begin
    qrCadastro.FieldByName('cst_cofins_descricao').asstring := descricao_campo;
  end
  else
  begin
    qrCadastro.FieldByName('cst_cofins_descricao').value := null;
    qrCadastro.FieldByName('cst_cofins').value := null;
  end;

end;

procedure TfrmDetalheNotaEntradaItem.qrCadastrocst_pisChange(Sender: TField);
var descricao_campo, str_sql : string;
begin
  inherited;
  if qrCadastro.FieldByName('cst_pis').isnull then exit;

  str_sql := format('select pis_descricao from cst_pis where pis_codigo=%d',
                    [qrCadastro.FieldByName('cst_pis').AsInteger]);
  if BuscaCampo(descricao_campo, str_sql, 'CST', false  ) then
  begin
    qrCadastro.FieldByName('cst_pis_descricao').asstring := descricao_campo;
  end
  else
  begin
    qrCadastro.FieldByName('cst_pis_descricao').value := null;
    qrCadastro.FieldByName('cst_pis').value := null;
  end;

end;

procedure TfrmDetalheNotaEntradaItem.qrCadastroid_composicaoChange(
  Sender: TField);
var str_sql : string;
  qr_aux : Tuniquery;
begin
  inherited;
  if qrCadastro.FieldByName('id_composicao').isnull then exit;

  str_sql := format(' select c.id_composicao, c.descricao, c.valor_custo, sec.quantidade as estoque, u.uni_003 as unidade ' +
                    ' from composicao c '+
                    ' join unidades u on c.id_unidade = u.uni_001 and c.id_empresa=u.emp_001 '+
                    ' left join setor_estoque_composicao sec on sec.id_composicao=c.id_composicao and sec.id_empresa=c.id_empresa and sec.id_setor=c.id_setor ' +
                    ' where c.id_composicao = %d and c.id_empresa=%d  ',
                    [ qrCadastro.FieldByName('id_composicao').AsInteger , recproj.iEmp]);
  qr_aux := CriaUniQuery(self, frmmenu.conexao);
  if ExecutaConsultaSQL(qr_aux, str_sql) then
  begin
    if qrCadastro.FieldByName('id_situacao').AsInteger=3 then
    begin
      Application.MessageBox('Não é possível adicionar este item pois o produto encontra-se inativo!', 'Atenção', MB_ICONINFORMATION );
      qrCadastro.FieldByName('id_composicao').value := null;
    end
    else
    begin
      qrcadastro.FieldByName('descricao').AsString :=  qr_aux.FieldByName('descricao').AsString;
      qrcadastro.FieldByName('codigo_material').AsString :=  qr_aux.FieldByName('id_composicao').AsString;
      qrcadastro.FieldByName('estoque').asfloat :=  qr_aux.FieldByName('estoque').asfloat;
      qrcadastro.FieldByName('unidade').AsString :=  qr_aux.FieldByName('unidade').AsString;
      qrcadastro.FieldByName('valor_unitario').asfloat :=  qr_aux.FieldByName('valor_custo').asfloat;

      {qrcadastro.FieldByName('ncm').AsString :=  qr_aux.FieldByName('ncm').AsString;

      qrcadastro.FieldByName('cst').asinteger :=  qr_aux.FieldByName('cst').asinteger;
      qrcadastro.FieldByName('cest').AsString :=  qr_aux.FieldByName('cest').AsString;
      qrcadastro.FieldByName('csosn').asinteger :=  qr_aux.FieldByName('csosn').asinteger;
      qrcadastro.FieldByName('cst_pis').asinteger :=  qr_aux.FieldByName('pis_codigo_saida').asinteger;
      qrcadastro.FieldByName('cst_cofins').asinteger :=  qr_aux.FieldByName('cof_codigo_saida').asinteger;

      qrcadastro.FieldByName('icms_aliq').asfloat :=  qr_aux.FieldByName('icms_aliq').asfloat;
      qrcadastro.FieldByName('ipi_aliq').asfloat :=  qr_aux.FieldByName('ipi_aliq').asfloat;
      qrcadastro.FieldByName('pis_aliq').asfloat :=  qr_aux.FieldByName('pis_aliq').asfloat;
      qrcadastro.FieldByName('cofins_aliq').asfloat :=  qr_aux.FieldByName('cofins_aliq').asfloat;}

      //se não encontrou cfop, pega o cfop da nota fiscal
      if qrcadastro.FieldByName('cfop').AsString='' then
        qrcadastro.FieldByName('cfop').AsString := cfop_nota;

    end;
  end
  else
  begin
    Application.MessageBox('Item não encontrado!', 'Atenção', MB_ICONINFORMATION );
    qrCadastro.FieldByName('id_material').value := null;
  end;

  qr_aux.Free;

end;

procedure TfrmDetalheNotaEntradaItem.qrCadastroid_materialChange(Sender: TField);
//var str_sql : string;
//  qr_aux : Tuniquery;
begin
  inherited;
//  if qrCadastro.FieldByName('id_material').isnull then exit;
//
//  str_sql := format(' select m.mat_004 as codigo_material, m.mat_003 as descricao_material, ' +
//                    ' stm.quantidade as estoque, m.ncm, '+
//                    ' m.sit_001 as id_situacao, '+
//                    ' u.uni_003 as unidade, '+
//                    ' m.cst_consumidor as cst, '+
//                    ' m.cfop_consumidor as cfop, '+
//                    ' m.cfop_venda_outra_uf, '+
//                    ' m.cfop_devolucao, '+
//                    ' m.cfop_devolucao_outra_uf, '+
//                    ' m.cfop_garantia, '+
//                    ' m.cfop_garantia_outra_uf, '+
//                    ' m.cso_codigo as csosn, '+
//                    ' m.cest, '+
//                    ' coalesce(m.icms, 0.0) as icms_aliq, '+
//                    ' coalesce(m.ipi, 0.0) as ipi_aliq, '+
//                    ' coalesce(m.pis, 0.0) as pis_aliq, '+
//                    ' coalesce(m.cofins, 0.0) as cofins_aliq, '+
//                    ' m.mat_012 as valor_unitario, '+
//                    ' m.pis_codigo_saida, '+
//                    ' m.cof_codigo_saida '+
//                    ' from materiais m '+
//                    ' join unidades u on u.uni_001=m.uni_001 and u.emp_001=m.emp_001 '+
//                    ' left join setor_estoque_material stm on stm.id_material=m.mat_001 and stm.id_empresa=m.emp_001 and stm.id_setor=m.id_setor ' +
//                    ' where mat_001 = %d and m.emp_001=%d  ',
//                    [ qrCadastro.FieldByName('id_material').AsInteger , recproj.iEmp]);
//  qr_aux := CriaUniQuery(self, frmmenu.conexao);
//  if ExecutaConsultaSQL(qr_aux, str_sql) then
//  begin
//    if qrCadastro.FieldByName('id_situacao').AsInteger=3 then
//    begin
//      Application.MessageBox('Não é possível adicionar este item pois o produto encontra-se inativo!', 'Atenção', MB_ICONINFORMATION );
//      qrCadastro.FieldByName('id_material').value := null;
//    end
//    else
//    begin
//      qrcadastro.FieldByName('descricao').AsString :=  qr_aux.FieldByName('descricao_material').AsString;
//      qrcadastro.FieldByName('codigo_material').AsString :=  qr_aux.FieldByName('codigo_material').AsString;
//      qrcadastro.FieldByName('estoque').asfloat :=  qr_aux.FieldByName('estoque').asfloat;
//      qrcadastro.FieldByName('unidade').AsString :=  qr_aux.FieldByName('unidade').AsString;
//      qrcadastro.FieldByName('ncm').AsString :=  qr_aux.FieldByName('ncm').AsString;
//
//      qrcadastro.FieldByName('cst').asinteger :=  qr_aux.FieldByName('cst').asinteger;
//      qrcadastro.FieldByName('cest').AsString :=  qr_aux.FieldByName('cest').AsString;
//      qrcadastro.FieldByName('csosn').asinteger :=  qr_aux.FieldByName('csosn').asinteger;
//      qrcadastro.FieldByName('cst_pis').asinteger :=  qr_aux.FieldByName('pis_codigo_saida').asinteger;
//      qrcadastro.FieldByName('cst_cofins').asinteger :=  qr_aux.FieldByName('cof_codigo_saida').asinteger;
//
//      qrcadastro.FieldByName('icms_aliq').asfloat :=  qr_aux.FieldByName('icms_aliq').asfloat;
//      qrcadastro.FieldByName('ipi_aliq').asfloat :=  qr_aux.FieldByName('ipi_aliq').asfloat;
//      qrcadastro.FieldByName('pis_aliq').asfloat :=  qr_aux.FieldByName('pis_aliq').asfloat;
//      qrcadastro.FieldByName('cofins_aliq').asfloat :=  qr_aux.FieldByName('cofins_aliq').asfloat;
//      qrcadastro.FieldByName('valor_unitario').asfloat :=  qr_aux.FieldByName('valor_unitario').asfloat;
//
//     { //faz a escolha do cfop do item
//      if finalidade_nota=0 then   //finalidade da nota venda
//      begin
//        if mesma_uf_cliente then
//          qrCadastro.FieldByName('cfop').AsString := qr_aux.FieldByName('cfop').AsString
//        else
//          qrCadastro.FieldByName('cfop').AsString := qr_aux.FieldByName('cfop_venda_outra_uf').AsString;
//      end
//      else if finalidade_nota=3 then //finalidade da nota devolucao
//      begin
//        if mesma_uf_cliente then
//          qrCadastro.FieldByName('cfop').AsString := qr_aux.FieldByName('cfop_devolucao').AsString
//        else
//          qrCadastro.FieldByName('cfop').AsString := qr_aux.FieldByName('cfop_devolucao_outra_uf').AsString;
//      end
//      else if finalidade_nota=9 then //finalidade da nota garantia
//      begin
//        if mesma_uf_cliente then
//          qrCadastro.FieldByName('cfop').AsString := qr_aux.FieldByName('cfop_garantia').AsString
//        else
//          qrCadastro.FieldByName('cfop').AsString := qr_aux.FieldByName('cfop_garantia_outra_uf').AsString;
//      end; }
//
//      //se não encontrou cfop, pega o cfop da nota fiscal
//      if qrcadastro.FieldByName('cfop').AsString='' then
//        qrcadastro.FieldByName('cfop').AsString := cfop_nota;
//
//    end;
//  end
//  else
//  begin
//    Application.MessageBox('Produto não encontrado!', 'Atenção', MB_ICONINFORMATION );
//    qrCadastro.FieldByName('id_material').value := null;
//  end;
//
//  qr_aux.Free;
end;

procedure TfrmDetalheNotaEntradaItem.qrCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrCadastro.FieldByName('id_nota_entrada').AsInteger := qrCadastro.ParamByName('id_nota_entrada').AsInteger;
  qrCadastro.FieldByName('id_empresa').AsInteger := recproj.iEmp;
  qrCadastro.FieldByName('item').AsInteger := NovoId('nota_entrada_item', 'item', recproj.iEmp , 'id_empresa', 'id_nota_entrada='+qrCadastro.ParamByName('id_nota_entrada').asstring);
  qrCadastro.FieldByName('id_situacao').AsInteger := 4;
  qrCadastro.FieldByName('tipo_item').AsString := 'M';
end;


procedure TfrmDetalheNotaEntradaItem.qrCadastrotipo_itemChange(Sender: TField);
begin
  inherited;
  if qrCadastro.FieldByName('tipo_item').AsString='M' then
  begin
    edIdMaterial.Enabled := true;
    edIdComposicao.Enabled := false;
  end
  else
  begin
    edIdMaterial.Enabled := false;
    edIdComposicao.Enabled := true;
  end;


end;

procedure TfrmDetalheNotaEntradaItem.qrCadastrovalor_base_icmsChange(
  Sender: TField);
begin
  inherited;
  if not flag_calculando then flag_calcula_bases := false;
end;

procedure TfrmDetalheNotaEntradaItem.qrCadastrovalor_base_icms_subChange(
  Sender: TField);
begin
  inherited;
  if not flag_calculando then flag_calcula_bases := false;
end;

procedure TfrmDetalheNotaEntradaItem.qrCadastrovalor_base_ipiChange(
  Sender: TField);
begin
  inherited;
  if not flag_calculando then flag_calcula_bases := false;
end;

procedure TfrmDetalheNotaEntradaItem.qrCadastrovalor_base_pis_cofinsChange(
  Sender: TField);
begin
  inherited;
  if not flag_calculando then flag_calcula_bases := false;
end;

procedure TfrmDetalheNotaEntradaItem.qrCadastrovalor_unitarioChange(
  Sender: TField);
begin
  inherited;
  flag_calcula_bases := true;
end;

procedure TfrmDetalheNotaEntradaItem.aplicaDesconto(tipo : integer = 1);
var valor : double;
begin
  //desconto por porcentagem
  {if tipo=1 then
  begin
    valor:= ( qrcadastro.FieldByName('valor_subtotal').AsFloat + qrcadastro.FieldByName('valor_despesas').AsFloat) *
        (qrcadastro.FieldByName('valor_desconto_perc').AsFloat / 100);
    qrcadastro.FieldByName('valor_desconto').AsFloat:= roundto(valor, -2);
  end
  //desconto por valor
  else
  begin
    valor:= (qrcadastro.FieldByName('valor_desconto').AsFloat / ( qrcadastro.FieldByName('valor_subtotal').AsFloat + qrcadastro.FieldByName('valor_despesas').AsFloat )) * 100;
   qrcadastro.FieldByName('valor_desconto_perc').AsFloat:=valor;
  end;  }
end;

end.
