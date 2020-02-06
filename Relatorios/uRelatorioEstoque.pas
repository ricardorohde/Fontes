unit uRelatorioEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  AdvGlowButton, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, Vcl.StdCtrls, Vcl.ComCtrls,
  AdvGroupBox, JvExStdCtrls, JvCombobox, JvDBCombobox, Data.DB, MemDS, DBAccess,
  Uni, frxClass, frxDBSet, cxTextEdit, cxMaskEdit, cxButtonEdit, System.Actions,
  Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  TfrmRelatorioEstoque = class(TfrmModelo)
    btConfirma: TAdvGlowButton;
    btCancelar: TAdvGlowButton;
    AdvGroupBox3: TAdvGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    cbRelatorio: TComboBox;
    grFiltroCategoria: TAdvGroupBox;
    cbCategoria: TJvDBComboBox;
    qrEstoque: TUniQuery;
    qrEstoqueid_produto: TIntegerField;
    qrEstoquecodigo: TWideStringField;
    qrEstoquedescricao: TWideStringField;
    qrEstoquecategoria: TWideStringField;
    qrEstoqueunidade: TWideStringField;
    qrEstoqueestoque: TFloatField;
    qrEstoqueestoque_maximo: TFloatField;
    qrEstoqueestoque_minimo: TFloatField;
    dbEstoque: TfrxDBDataset;
    dbMovimentoEstoque: TfrxDBDataset;
    qrMovimentoEstoque: TUniQuery;
    qrMovimentoEstoquecod_material: TWideStringField;
    qrMovimentoEstoquedesc_material: TWideStringField;
    qrMovimentoEstoquecategoria: TWideStringField;
    qrMovimentoEstoquetipo_mov: TWideMemoField;
    qrMovimentoEstoqueunidade: TWideStringField;
    qrMovimentoEstoquequantidade: TFloatField;
    qrMovimentoEstoquetipo_venda: TWideStringField;
    qrMovimentoEstoquecod_venda: TIntegerField;
    qrMovimentoEstoqueid_material: TIntegerField;
    qrMovimentoEstoqueusuario: TWideStringField;
    grFiltroTipoMovimento: TAdvGroupBox;
    rgTipoMovimento: TcxRadioGroup;
    ckTodasCategoria: TcxRadioButton;
    ckCategoria: TcxRadioButton;
    qrMovimentoEstoqueDetalhado: TUniQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideMemoField1: TWideMemoField;
    WideStringField4: TWideStringField;
    FloatField1: TFloatField;
    WideStringField6: TWideStringField;
    IntegerField2: TIntegerField;
    WideStringField7: TWideStringField;
    qrMovimentoEstoqueDetalhadofornecedor: TWideStringField;
    qrMovimentoEstoqueDetalhadovalor_custo: TFloatField;
    qrMovimentoEstoqueDetalhadovalor_venda: TFloatField;
    dbMovimentoEstoqueDetalhado: TfrxDBDataset;
    qrComposicao: TUniQuery;
    repComposicao: TfrxReport;
    dbComposicao: TfrxDBDataset;
    qrComposicaoid_composicao: TIntegerField;
    qrComposicaodescricao: TWideStringField;
    qrComposicaounidade: TWideStringField;
    qrComposicaovalor_custo: TFloatField;
    qrComposicaoestoque: TFloatField;
    qrComposicaoestoque_minimo: TFloatField;
    ActionList1: TActionList;
    acBuscaFornecedor: TAction;
    edCodFornecedor: TcxButtonEdit;
    lbFornecedor: TLabel;
    Label4: TLabel;
    qrEstoquefiscal: TUniQuery;
    dbEstoquefiscal: TfrxDBDataset;
    qrEstoquefiscalmat_001: TIntegerField;
    qrEstoquefiscalemp_001: TIntegerField;
    qrEstoquefiscaldescricao: TWideStringField;
    qrEstoquefiscalcfop_consumidor: TWideStringField;
    qrEstoquefiscalcso_codigo: TIntegerField;
    qrEstoquefiscalncm: TWideStringField;
    qrEstoqueResumido: TUniQuery;
    dbEstoqueResumido: TfrxDBDataset;
    dbEstoqueMinimo: TfrxDBDataset;
    qrEstoqueMinimo: TUniQuery;
    dbNfDeEntrada: TfrxDBDataset;
    qrNfDeEntrada: TUniQuery;
    qrEstoquedescricao_setor: TWideStringField;
    qrEstoqueResumidocodigo: TWideStringField;
    qrEstoqueResumidodescricao: TWideStringField;
    qrEstoqueResumidovalor: TFloatField;
    qrEstoqueResumidoquantidade: TFloatField;
    qrEstoqueResumidounidade: TWideStringField;
    qrEstoqueResumidocategoria: TWideStringField;
    qrEstoqueResumidosetor_estoque: TWideStringField;
    qrComposicaosetor_estoque: TWideStringField;
    AdvGroupBox1: TAdvGroupBox;
    rgTipoGeracaoRelatorio: TcxRadioGroup;
    qrMovimentoEstoquedata: TDateTimeField;
    qrMovimentoEstoqueDetalhadodata: TDateTimeField;
    qrMovimentoEstoqueDetalhadoobservacao: TWideStringField;
    qrMovimentoEstoqueobservacao: TWideStringField;
    qrEstoquepreco: TUniQuery;
    qrEstoqueprecoid_produto: TIntegerField;
    qrEstoqueprecocodigo: TWideStringField;
    qrEstoqueprecodescricao: TWideStringField;
    qrEstoqueprecocategoria: TWideStringField;
    qrEstoqueprecounidade: TWideStringField;
    qrEstoqueprecodescricao_setor: TWideStringField;
    dbEstoquepreco: TfrxDBDataset;
    qrEstoqueprecovalor: TFloatField;
    qrInventario: TUniQuery;
    dbInventario: TfrxDBDataset;
    qrInventarioid_produto: TIntegerField;
    qrInventariocodigo: TWideStringField;
    qrInventariocategoria: TWideStringField;
    qrInventariounidade: TWideStringField;
    qrInventariovalor: TFloatField;
    qrInventarioquantidade: TFloatField;
    qrInventariodescricao: TWideStringField;
    qrInventariovalor_total: TFloatField;
    grFiltroSetor: TAdvGroupBox;
    cbSetor: TJvDBComboBox;
    ckTodosSetor: TcxRadioButton;
    ckSetor: TcxRadioButton;
    dbSetorMaterial: TfrxDBDataset;
    qrSetorMaterial: TUniQuery;
    WideStringField5: TWideStringField;
    WideStringField8: TWideStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    qrSetorMaterialsetor_estoque: TWideMemoField;
    qrSetorComposicao: TUniQuery;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    WideStringField13: TWideStringField;
    WideMemoField2: TWideMemoField;
    dbSetorComposicao: TfrxDBDataset;
    repSetorComposicao: TfrxReport;
    qrSetorComposicaocategoria: TWideMemoField;
    repEstoqueResumido: TfrxReport;
    repEstoquefiscal: TfrxReport;
    repNfDeEntrada: TfrxReport;
    repEstoqueMinimo: TfrxReport;
    repEstoque: TfrxReport;
    repMovimentoEstoque: TfrxReport;
    repMovimentoEstoqueDetalhado: TfrxReport;
    repEstoquepreco: TfrxReport;
    repInventario: TfrxReport;
    repSetorMaterial: TfrxReport;
    qrRelSituacoesEstoque: TUniQuery;
    IntegerField3: TIntegerField;
    WideStringField14: TWideStringField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    FloatField6: TFloatField;
    WideStringField18: TWideStringField;
    dbSituacoesEstoque: TfrxDBDataset;
    repSituacoesEstoque: TfrxReport;
    qrRelSituacoesEstoquemat_008: TFloatField;
    qrRelSituacoesEstoquemat_012: TFloatField;
    grSituacoes: TAdvGroupBox;
    rgSituacoes: TcxRadioGroup;

    constructor Create(sender: tcomponent; indice_relatorio: integer);
    procedure btConfirmaClick(sender: TObject);
    procedure cbRelatorioChange(sender: TObject);
    procedure btCancelarClick(sender: TObject);
    procedure acBuscaFornecedorExecute(sender: TObject);
    procedure edCodFornecedorExit(sender: TObject);
  private
    { Private declarations }
    cod_fornecedor_filtro: integer;
  public
    { Public declarations }
  end;

var
  frmRelatorioEstoque: TfrmRelatorioEstoque;

implementation

{$R *.dfm}

uses uMenu, uFuncoes, Funcao_DB, uBuscaRegistro;

procedure TfrmRelatorioEstoque.acBuscaFornecedorExecute(sender: TObject);
var
  str_sql: string;
begin
  inherited;
  edCodFornecedor.SetFocus;

  str_sql :=
    'select id_fornecedor, nome_fantasia, razao_social, cnpj, fn_situacoes(id_situacao) as status from fornecedor ';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
    CriaIntegerArray([0, 1, 2, 3, 4]),
    CriaStringArray(['Código', 'Nome Fantasia', 'Razão social', 'CNPJ',
    'Status']), 0, 1, ' id_empresa=' + IntToStr(RecProj.iEmp), 800, 500);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag = 1 then
  begin
    edCodFornecedor.Text := frmBuscaRegistro.valor_retorno;
    edCodFornecedorExit(nil);
  end;
  frmBuscaRegistro.Free;

end;

procedure TfrmRelatorioEstoque.btCancelarClick(sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmRelatorioEstoque.btConfirmaClick(sender: TObject);
var
  str_sql, filtro_tipo_mov, filtro_categoria: string;
begin
  inherited;

  if ckCategoria.Checked then
    filtro_categoria := format(' cat.cat_001=%s ',
      [cbCategoria.Values[cbCategoria.ItemIndex]])
  else
    filtro_categoria := ' true ';

  if cbRelatorio.ItemIndex in [0] then // Relatorio de estoque e estoque mínimo
  begin
    str_sql := ' select MAT.mat_001 as id_produto, ' +
      ' MAT.mat_004 as codigo,  ' + ' MAT.mat_003 as descricao,  ' +
      ' CAT.CAT_002 as categoria,  ' + ' UNI.UNI_003 as unidade,  ' +
      ' coalesce(stm.quantidade, 0.00) as estoque, ' +
      ' coalesce(mat_015, 0.00) as estoque_maximo, ' +
      ' coalesce(mat_014, 0.00) as Estoque_minimo,  ' +
      ' se.descricao as descricao_setor ' + ' from materiais mat ' +
      ' LEFT JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND (UNI.UNI_001 = MAT.UNI_001)  '
      + ' LEFT JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.CAT_001 = MAT.CAT_001) '
      + ' left join setor_estoque_material stm on stm.id_material=mat.mat_001 and stm.id_empresa=mat.emp_001 '
      + ' left join setor_estoque se on se.id_setor=stm.id_setor and se.id_empresa=mat.emp_001 '
      + ' where  ' + filtro_categoria + ' order by 5,2 ';

    qrEstoque.close;
    qrEstoque.SQL.Clear;
    qrEstoque.SQL.Add(str_sql);
    qrEstoque.Open;
    if qrEstoque.RecordCount > 0 then
    begin
      if rgTipoGeracaoRelatorio.ItemIndex = 1 then
        GeraRelatorioExcel(qrEstoque)
      else
      begin
        repEstoque.PrepareReport;
        repEstoque.ShowReport;
      end;
    end
    else
      Application.MessageBox('Sem dados para os critérios selecionados!','Atenção', MB_ICONINFORMATION);

  end
  else if cbRelatorio.ItemIndex = 1 then // Relatorio de movimento de estoque
  begin
    if rgTipoMovimento.ItemIndex = 1 then
      filtro_tipo_mov := ' and me.tipo_movimento=''E'' '
    else if rgTipoMovimento.ItemIndex = 2 then
      filtro_tipo_mov := ' and me.tipo_movimento=''S'' '
    else
      filtro_tipo_mov := '';

    if cod_fornecedor_filtro <> 0 then
      filtro_tipo_mov := filtro_tipo_mov + ' and me.id_fornecedor=' +
        IntToStr(cod_fornecedor_filtro);

    str_sql := ' select me.data, m.mat_001 as id_material,  ' +
      ' m.mat_004 as cod_material,  ' + ' m.mat_003 as desc_material,  ' +
      ' CAT.CAT_002 as categoria,  ' +
      ' case when me.tipo_movimento=''S'' then ''Saída'' else ''Entrada'' end as tipo_mov, '
      + ' UNI.UNI_003 as unidade,  ' + ' me.quantidade, ' +
      ' cast(observacao as varchar(200)) as  observacao, ' +
      ' cast(( case v.ven_024 when ''M''  then ''Mesa'' when ''B'' then ''Balcão'' when ''C'' then ''Comanda'' when ''D'' then ''Delivery'' else null end) as varchar(20)) as tipo_venda, '
      + ' v.ven_001 as cod_venda, u.usu_002 as usuario  ' +
      ' from movimentoestoque me ' +
      ' join materiais m on me.id_empresa = m.emp_001 and m.Mat_001=me.id_material '
      + ' join usuarios u on me.id_usuario=u.usu_001 ' +
      ' LEFT JOIN UNIDADES UNI ON (UNI.EMP_001 = M.EMP_001) AND (UNI.UNI_001 = M.UNI_001)  '
      + ' LEFT JOIN CATEGORIA CAT ON (CAT.EMP_001 = M.EMP_001) AND (CAT.CAT_001 = M.CAT_001) '
      + ' left join venda v on v.emp_001=me.id_empresa and v.ven_001=me.id_venda '
      + ' where me.id_empresa=:EMP and me.data>=:DTINI and me.data<=:DTFIM ' +
      filtro_tipo_mov + ' order by me.data ';
    qrMovimentoEstoque.close;
    qrMovimentoEstoque.SQL.Clear;
    qrMovimentoEstoque.SQL.Add(str_sql);

    qrMovimentoEstoque.ParamByName('EMP').AsInteger := RecProj.iEmp;
    qrMovimentoEstoque.ParamByName('DTINI').AsDateTime := dtpDataInicial.Date;
    qrMovimentoEstoque.ParamByName('DTFIM').AsDateTime := dtpDataFinal.Date + 1;

    qrMovimentoEstoque.Open;

    if qrMovimentoEstoque.RecordCount > 0 then
    begin
      if rgTipoGeracaoRelatorio.ItemIndex = 1 then
        GeraRelatorioExcel(qrMovimentoEstoque)
      else
      begin
        repMovimentoEstoque.PrepareReport;
        repMovimentoEstoque.ShowReport;
      end;
    end
    else
      Application.MessageBox('Sem dados para os critérios selecionados!','Atenção', MB_ICONINFORMATION);

  end
  else if cbRelatorio.ItemIndex = 2 then   // Relatorio de movimento de estoque detalhado
  begin
    if rgTipoMovimento.ItemIndex = 1 then
      filtro_tipo_mov := ' and me.tipo_movimento=''E'' '
    else if rgTipoMovimento.ItemIndex = 2 then
      filtro_tipo_mov := ' and me.tipo_movimento=''S'' '
    else
      filtro_tipo_mov := '';

    if cod_fornecedor_filtro <> 0 then
      filtro_tipo_mov := filtro_tipo_mov + ' and me.id_fornecedor=' +
        IntToStr(cod_fornecedor_filtro);

    str_sql := ' select me.data, m.mat_001 as id_material,   ' +
      ' m.mat_004 as cod_material,   ' + ' m.mat_003 as desc_material,   ' +
      ' CAT.CAT_002 as categoria,   ' +
      ' case when me.tipo_movimento=''S'' then ''Saída'' else ''Entrada'' end as tipo_mov,  '
      + ' UNI.UNI_003 as unidade,   ' + ' me.quantidade,  ' +
      ' cast(observacao as varchar(200)) as  observacao,  ' +
      ' cast(( case v.ven_024 when ''M''  then ''Mesa'' when ''B'' then ''Balcão'' when ''C'' then ''Comanda'' when ''D'' then ''Delivery'' else null end) as varchar(20)) as tipo_venda,  '
      + ' v.ven_001 as cod_venda, u.usu_002 as usuario, ' +
      ' frn.nome_fantasia as fornecedor, ' +
      ' case when me.valor_custo=0.0 then m.mat_012 else me.valor_custo end as valor_custo, '
      + ' case when me.valor_venda=0.0 then m.mat_008 else me.valor_venda end as valor_venda '
      + ' from movimentoestoque me  ' +
      ' join materiais m on me.id_empresa = m.emp_001 and m.Mat_001=me.id_material  '
      + ' join usuarios u on me.id_usuario=u.usu_001  ' +
      ' LEFT JOIN UNIDADES UNI ON (UNI.EMP_001 = M.EMP_001) AND (UNI.UNI_001 = M.UNI_001)   '
      + ' LEFT JOIN CATEGORIA CAT ON (CAT.EMP_001 = M.EMP_001) AND (CAT.CAT_001 = M.CAT_001) '
      + ' left join fornecedor frn on frn.id_fornecedor=me.id_fornecedor    ' +
      ' left join venda v on v.emp_001=me.id_empresa and v.ven_001=me.id_venda '
      + ' where me.id_empresa=:EMP and me.data>=:DTINI and me.data<=:DTFIM ' +
      filtro_tipo_mov + ' order by me.data ';

    qrMovimentoEstoqueDetalhado.close;
    qrMovimentoEstoqueDetalhado.SQL.Clear;
    qrMovimentoEstoqueDetalhado.SQL.Add(str_sql);

    qrMovimentoEstoqueDetalhado.ParamByName('EMP').AsInteger := RecProj.iEmp;
    qrMovimentoEstoqueDetalhado.ParamByName('DTINI').AsDateTime :=
      dtpDataInicial.Date;
    qrMovimentoEstoqueDetalhado.ParamByName('DTFIM').AsDateTime :=
      dtpDataFinal.Date + 1;

    qrMovimentoEstoqueDetalhado.Open;
    if qrMovimentoEstoqueDetalhado.RecordCount > 0 then
    begin
      if rgTipoGeracaoRelatorio.ItemIndex = 1 then
        GeraRelatorioExcel(qrMovimentoEstoqueDetalhado)
      else
      begin
        repMovimentoEstoqueDetalhado.PrepareReport;
        repMovimentoEstoqueDetalhado.ShowReport;
      end;

    end
    else
      Application.MessageBox('Sem dados para os critérios selecionados!','Atenção', MB_ICONINFORMATION);

  end
  else if cbRelatorio.ItemIndex = 3 then // Relatorio de ingredientes/composicao
  begin
    qrComposicao.close;
    qrComposicao.Open;
    if qrComposicao.RecordCount > 0 then
    begin
      if rgTipoGeracaoRelatorio.ItemIndex = 1 then
        GeraRelatorioExcel(qrComposicao)
      else
      begin
        repComposicao.PrepareReport;
        repComposicao.ShowReport;
      end;
    end
    else
      Application.MessageBox('Sem dados para os critérios selecionados!','Atenção', MB_ICONINFORMATION);
  end

  else if cbRelatorio.ItemIndex = 4 then    // Relatorio de produtos com informações fiscais
  begin
    qrEstoquefiscal.close;
    qrEstoquefiscal.Open;
    if qrEstoquefiscal.RecordCount > 0 then
    begin
      if rgTipoGeracaoRelatorio.ItemIndex = 1 then
        GeraRelatorioExcel(qrEstoquefiscal)
      else
      begin
        repEstoquefiscal.PrepareReport;
        repEstoquefiscal.ShowReport;
      end;
    end
    else
      Application.MessageBox('Sem dados para os critérios selecionados!','Atenção', MB_ICONINFORMATION);
  end
   // Relatorio de estoque resumido Rafael 21/11/2017
  else if cbRelatorio.ItemIndex = 5 then
  begin

    qrEstoqueResumido.close;
    qrEstoqueResumido.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
    qrEstoqueResumido.Open;
    if qrEstoqueResumido.RecordCount > 0 then
    begin
      if rgTipoGeracaoRelatorio.ItemIndex = 1 then
        GeraRelatorioExcel(qrEstoqueResumido)
      else
      begin
        repEstoqueResumido.PrepareReport;
        repEstoqueResumido.ShowReport;
      end;
    end
    else
      Application.MessageBox('Sem dados para os critérios selecionados!','Atenção', MB_ICONINFORMATION);

  end
  // Relatorio de estoque minimo  Rafael 21/11/2017
  else if cbRelatorio.ItemIndex = 6 then
  begin
    qrEstoqueMinimo.close;
    qrEstoqueMinimo.ParamByName('id_empresa').AsInteger := RecProj.iEmp;

    qrEstoqueMinimo.Open;
    if qrEstoqueMinimo.RecordCount > 0 then
    begin
      if rgTipoGeracaoRelatorio.ItemIndex = 1 then
        GeraRelatorioExcel(qrEstoqueMinimo)
      else
      begin
        repEstoqueMinimo.PrepareReport;
        repEstoqueMinimo.ShowReport;
      end;

    end
    else
      Application.MessageBox('Sem dados para os critérios selecionados!','Atenção', MB_ICONINFORMATION);

  end
    // Relatorio de notas de entrada  Rafael 23/11/2017
  else if cbRelatorio.ItemIndex = 7 then
  begin
    if edCodFornecedor.Text = '' then
    begin
      filtro_tipo_mov := ' and n.id_fornecedor>= 1 ';
    end
    else if cod_fornecedor_filtro <> 0 then
      filtro_tipo_mov := ' and n.id_fornecedor=' +
        IntToStr(cod_fornecedor_filtro);

    str_sql :=
      ' select  n.id_nota_entrada,n.id_empresa,n.id_fornecedor,f.nome_fantasia, '
      + ' n.numero as numero_da_nota,n.data_emissao, n.cfop,ni.id_material as codigo_produto, '
      + ' ni.descricao_fornecedor as nome_produto,ni.valor_unitario as preco_de_compra, '
      + ' ni.quantidade,valor_base_pis_cofins as valor_total, n.valor_total as valor_total_da_nota '
      + ' from nota_entrada n ' +
      ' join nota_entrada_item ni on ni.id_nota_entrada = n.id_nota_entrada ' +
      ' and n.id_empresa = ni.id_empresa ' + filtro_tipo_mov +
      ' join fornecedor f on n.id_fornecedor = f.id_fornecedor ';

    qrNfDeEntrada.close;
    qrNfDeEntrada.SQL.Clear;
    qrNfDeEntrada.SQL.Add(str_sql);

    qrNfDeEntrada.Open;
    if qrNfDeEntrada.RecordCount > 0 then
    begin

      if rgTipoGeracaoRelatorio.ItemIndex = 1 then
        GeraRelatorioExcel(qrNfDeEntrada)
      else
      begin
        repNfDeEntrada.PrepareReport;
        repNfDeEntrada.ShowReport;
      end;
    end
  end

  // Relatório de estoque com preço de venda  24/01/2018
  else if cbRelatorio.ItemIndex = 8 then
  begin
    qrEstoquepreco.close;
    qrEstoquepreco.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
    qrEstoquepreco.Open;
    if qrEstoquepreco.RecordCount > 0 then
    begin
      if rgTipoGeracaoRelatorio.ItemIndex = 1 then
        GeraRelatorioExcel(qrEstoqueResumido)
      else
      begin
        repEstoquepreco.PrepareReport;
        repEstoquepreco.ShowReport;
      end;
    end
    else
      Application.MessageBox('Sem dados para os critérios selecionados!','Atenção', MB_ICONINFORMATION);

  end
  // Relatório de Inventário    04/02/2018    Rafael Luiz
  else if cbRelatorio.ItemIndex = 9 then
  begin
    qrInventario.close;
    qrInventario.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
    qrInventario.Open;
    if qrInventario.RecordCount > 0 then
    begin
      if rgTipoGeracaoRelatorio.ItemIndex = 1 then
        GeraRelatorioExcel(qrInventario)
      else
      begin
        repInventario.PrepareReport;
        repInventario.ShowReport;
      end;

    end
    else
      Application.MessageBox('Sem dados para os critérios selecionados!','Atenção', MB_ICONINFORMATION);
  end
  // Estoque por Setor Produto    05/03/2018    Bruno Albrechete
  else if cbRelatorio.ItemIndex = 10 then
  begin
    qrSetorMaterial.close;
    qrSetorMaterial.SQL.Text:= 'select m.mat_004 as codigo, m.mat_003 as descricao, m.mat_008 as valor, '+
                               'coalesce(stm.quantidade,0.0) as quantidade, u.uni_003 as unidade, '+
                               'c.cat_002 as categoria, case when se.descricao <> '''' then se.descricao else ''N/C'' end as setor_estoque '+
                               'from materiais m '+
                               'join categoria c on c.cat_001 = m.cat_001 '+
                               'join unidades u on u.uni_001=m.uni_001 and m.emp_001=u.emp_001 '+
                               'left join setor_estoque_material stm on stm.id_material=m.mat_001 and stm.id_empresa=m.emp_001 '+
                               'left join setor_estoque se on se.id_setor=stm.id_setor and se.id_empresa=m.emp_001 '+
                               'where m.sit_001=4 and m.emp_001 = ' + IntToStr(RecProj.iEmp);

    if ckSetor.Checked then
    begin
      qrSetorMaterial.SQL.Text:= qrSetorMaterial.SQL.Text +
      format(' and se.id_setor=%s ', [cbSetor.Values[cbSetor.ItemIndex]]);
    end;

    qrSetorMaterial.SQL.Text:= qrSetorMaterial.SQL.Text +
    ' order by setor_estoque, codigo';

    qrSetorMaterial.Open;

    if qrSetorMaterial.RecordCount > 0 then
    begin
      if rgTipoGeracaoRelatorio.ItemIndex = 1 then
        GeraRelatorioExcel(qrSetorMaterial)
      else
      begin
        repSetorMaterial.PrepareReport;
        repSetorMaterial.ShowReport;
      end;
    end
    else
      Application.MessageBox('Sem dados para os critérios selecionados!','Atenção', MB_ICONINFORMATION);
  end
  // Estoque por Setor Composição    05/03/2018    Bruno Albrechete
  else if cbRelatorio.ItemIndex = 11 then
  begin
    qrSetorComposicao.close;
    qrSetorComposicao.SQL.Text:= 'select m.codigo_ref as codigo, m.descricao, m.valor_custo as valor, '+
                                 'coalesce(stm.quantidade,0.0) as quantidade, u.uni_003 as unidade, '+
                                 ''''' as categoria, case when se.descricao <> '''' then se.descricao else ''N/C'' end as setor_estoque '+
                                 'from composicao m '+
                                 'join unidades u on u.uni_001=m.id_unidade and m.id_empresa=u.emp_001 '+
                                 'left join setor_estoque_composicao stm on stm.id_composicao=m.id_composicao and stm.id_empresa=m.id_empresa '+
                                 'left join setor_estoque se on se.id_setor=stm.id_setor and se.id_empresa=m.id_empresa '+
                                 'where  m.id_situacao=4 and m.id_empresa = ' + IntToStr(RecProj.iEmp);

    if ckSetor.Checked then
    begin
      qrSetorComposicao.SQL.Text:= qrSetorComposicao.SQL.Text +
      format(' and se.id_setor=%s ', [cbSetor.Values[cbSetor.ItemIndex]]);
    end;

    qrSetorComposicao.SQL.Text:= qrSetorComposicao.SQL.Text +
    ' order by setor_estoque, codigo';

    qrSetorComposicao.Open;

    if qrSetorComposicao.RecordCount > 0 then
    begin
      if rgTipoGeracaoRelatorio.ItemIndex = 1 then
        GeraRelatorioExcel(qrSetorComposicao)
      else
      begin
        repSetorComposicao.PrepareReport;
        repSetorComposicao.ShowReport;
      end;
    end
    else
      Application.MessageBox('Sem dados para os critérios selecionados!','Atenção', MB_ICONINFORMATION);
  end
  //Situações de Estoque Bruno Albrechete 25/06/2018
  else if cbRelatorio.ItemIndex in [12] then
  begin
    str_sql := 'select MAT.mat_001 as id_produto, '+
               'MAT.mat_004 as codigo, '+
               'MAT.mat_003 as descricao, '+
               'CAT.CAT_002 as categoria, '+
               'coalesce(stm.quantidade, 0.00) as estoque, '+
               'se.descricao as descricao_setor, '+
               'mat.mat_008, mat.mat_012 '+
               'from materiais MAT '+
               'LEFT JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.CAT_001 = MAT.CAT_001) '+
               'left join setor_estoque_material stm on stm.id_material=mat.mat_001 and stm.id_empresa=mat.emp_001 '+
               'left join setor_estoque se on se.id_setor=stm.id_setor and se.id_empresa=mat.emp_001 '+
               'where ' + filtro_categoria;

    if rgSituacoes.ItemIndex = 0 then //POSITIVO
      str_sql := str_sql + ' and coalesce(stm.quantidade, 0.00) > 0 '
    else if rgSituacoes.ItemIndex = 1 then //NEGATIVO
      str_sql := str_sql + ' and coalesce(stm.quantidade, 0.00) < 0 '
    else if rgSituacoes.ItemIndex = 2 then //ZERADO
      str_sql := str_sql + ' and coalesce(stm.quantidade, 0.00) = 0 ';

    str_sql := str_sql + ' order by codigo ';

    qrRelSituacoesEstoque.close;
    qrRelSituacoesEstoque.SQL.Clear;
    qrRelSituacoesEstoque.SQL.Add(str_sql);
    qrRelSituacoesEstoque.Open;
    if qrRelSituacoesEstoque.RecordCount > 0 then
    begin
      if rgTipoGeracaoRelatorio.ItemIndex = 1 then
        GeraRelatorioExcel(qrRelSituacoesEstoque)
      else
      begin
        repSituacoesEstoque.PrepareReport;
        repSituacoesEstoque.ShowReport;
      end;
    end
    else
      Application.MessageBox('Sem dados para os critérios selecionados!','Atenção', MB_ICONINFORMATION);
  end;
end;

procedure TfrmRelatorioEstoque.cbRelatorioChange(sender: TObject);
begin
  inherited;
  if cbRelatorio.ItemIndex in [0, 3] then
  begin
    grFiltroCategoria.Enabled := true;
    grFiltroSetor.Enabled := false;
    grFiltroTipoMovimento.Enabled := false;
    dtpDataInicial.Enabled := false;
    dtpDataFinal.Enabled := false;
    grSituacoes.Enabled:= false;
  end
  else if cbRelatorio.ItemIndex in [1, 2] then
  begin
    grFiltroCategoria.Enabled := false;
    grFiltroSetor.Enabled := false;
    grFiltroTipoMovimento.Enabled := true;
    dtpDataInicial.Enabled := true;
    dtpDataFinal.Enabled := true;
    grSituacoes.Enabled:= false;
  end
  // Rafael 21/11/2017   inclusao do indice 5 e 6 - estoque resumido/ minimo
  else if cbRelatorio.ItemIndex in [5, 6, 8,9] then
  begin
    grFiltroCategoria.Enabled := false;
    grFiltroSetor.Enabled := false;
    grFiltroTipoMovimento.Enabled := false;
    dtpDataInicial.Enabled := false;
    dtpDataFinal.Enabled := false;
    grSituacoes.Enabled:= false;
  end
  // Rafael 23/11/2017  inclusao do indice 7 - relatorio de notas de entrada
  else if cbRelatorio.ItemIndex in [7] then
  begin
    grFiltroCategoria.Enabled := false;
    grFiltroSetor.Enabled := false;
    grFiltroTipoMovimento.Enabled := true;
    dtpDataInicial.Enabled := true;
    dtpDataFinal.Enabled := true;
    rgTipoMovimento.Enabled := false;
    grSituacoes.Enabled:= false;
  end
  else if cbRelatorio.ItemIndex in [10, 11] then
  begin
    grFiltroCategoria.Enabled := false;
    grFiltroSetor.Enabled := true;
    grFiltroTipoMovimento.Enabled := false;
    dtpDataInicial.Enabled := false;
    dtpDataFinal.Enabled := false;
    rgTipoMovimento.Enabled := false;
    grSituacoes.Enabled:= false;
  end
  else if cbRelatorio.ItemIndex in [12] then
  begin
    grFiltroCategoria.Enabled := true;
    grFiltroSetor.Enabled := false;
    grFiltroTipoMovimento.Enabled := false;
    dtpDataInicial.Enabled := false;
    dtpDataFinal.Enabled := false;
    grSituacoes.Enabled:= true;
  end
end;

constructor TfrmRelatorioEstoque.Create(sender: tcomponent;
  indice_relatorio: integer);
var
  qr_aux: TUniQuery;
  dia, mes, ano: word;
begin
  inherited Create(sender);

  // Carrega as categorias de produto
  qr_aux := TUniQuery.Create(self);
  qr_aux.Connection := frmMenu.conexao;
  ExecutaConsultaSQL(qr_aux, format('select cat_001, cat_002 from categoria where emp_001=%d', [RecProj.iEmp]));
  while not qr_aux.Eof do
  begin
    cbCategoria.Items.Add(qr_aux.Fields[1].AsString);
    cbCategoria.Values.Add(qr_aux.Fields[0].AsString);
    qr_aux.next;
  end;
  cbCategoria.ItemIndex := 0;

  // Carrega os setores de produto
  qr_aux := TUniQuery.Create(self);
  qr_aux.Connection := frmMenu.conexao;
  ExecutaConsultaSQL(qr_aux, format('select id_setor, descricao from setor_estoque where id_empresa=%d', [RecProj.iEmp]));
  while not qr_aux.Eof do
  begin
    cbSetor.Items.Add(qr_aux.Fields[1].AsString);
    cbSetor.Values.Add(qr_aux.Fields[0].AsString);
    qr_aux.next;
  end;
  cbSetor.ItemIndex := 0;

  cod_fornecedor_filtro := 0;

  cbRelatorio.ItemIndex := indice_relatorio;

  // preenche os filtros de data com o primeiro dia do mes e com o dia atual
  DecodeDate(Date, ano, mes, dia);
  dtpDataInicial.Date := EncodeDate(ano, mes, 1);
  dtpDataFinal.Date := EncodeDate(ano, mes, dia);

  cbRelatorioChange(nil);
  self.Width := self.Constraints.MinWidth;
  self.Height := self.Constraints.MinHeight;

end;

procedure TfrmRelatorioEstoque.edCodFornecedorExit(sender: TObject);
var
  str_sql: string;
begin
  inherited;
  try
    cod_fornecedor_filtro := strtoint(edCodFornecedor.Text);
  except
    cod_fornecedor_filtro := 0;
  end;
  str_sql :=
    format('select razao_social from fornecedor where id_fornecedor=%d and id_empresa=%d',
    [cod_fornecedor_filtro, RecProj.iEmp]);
  LookupBuscaExit(cod_fornecedor_filtro, edCodFornecedor, lbFornecedor, str_sql,
    'Fornecedor', true);
end;

end.
