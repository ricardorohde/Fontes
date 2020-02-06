{   [Caixa]
  - Classificação dos movimentos (itens)
    V - Venda  (tipo Entrada)
    S - Suprimento (tipo Entrada)
    C - Outros Creditos (tipo Entrada)
    D - Outros débitos (tipo Saída)
    R - Retirada / Sangria (tipo Saída)
    E - Estorno de Venda (tipo Saida)  }
unit uRelatorioVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.StdCtrls, Vcl.ComCtrls,
  cxGroupBox, cxRadioGroup, AdvGlowButton, Vcl.ExtCtrls, AdvGroupBox, AdvPanel,
  Data.DB, MemDS, DBAccess, Uni, frxClass, frxDBSet, JvExStdCtrls, JvCombobox,
  JvDBCombobox, frxExportPDF, cxTextEdit, cxMaskEdit, cxButtonEdit,
  System.Actions, Vcl.ActnList, MidasLib, Datasnap.Provider, Datasnap.DBClient,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  TfrmRelatorioVendas = class(TForm)
    pnBotoes: TFlowPanel;
    btImprimir: TAdvGlowButton;
    btCancelar: TAdvGlowButton;
    RepVendasProdutos: TfrxReport;
    RepVendasProdutosNaoFiscal: TfrxReport;
    dbItensVendaProdutos: TfrxDBDataset;
    qrItensVenda: TUniQuery;
    qrItensVendamat_003: TWideStringField;
    qrItensVendamat_004: TWideStringField;
    qrItensVendaqtdevenda: TFloatField;
    qrItensVendavlrvenda: TFloatField;
    qrItensVendaven_004: TWideMemoField;
    qrItensVendatotgeral: TFloatField;
    qrItensVendataxa: TFloatField;
    qrItensVendataxagarcon: TFloatField;
    qrRelAcrescimosVendas: TUniQuery;
    dbAcrescimosVendas: TfrxDBDataset;
    repAcrescimosVendasNaoFiscal: TfrxReport;
    repAcrescimosVendas: TfrxReport;
    qrRelAcrescimosVendastotal_acrescimo_venda: TFloatField;
    qrRelAcrescimosVendasqtd_venda: TLargeintField;
    qrRelAcrescimosVendastipo_venda: TWideStringField;
    qrRelAcrescimosVendasentregador: TWideStringField;
    qrRelAcrescimosVendasdata: TWideMemoField;
    qrRelCFeEmitidos: TUniQuery;
    dbCFeEmitidos: TfrxDBDataset;
    repCFeEmitidos: TfrxReport;
    dbCFeEmitidosItens: TfrxDBDataset;
    qrRelCFeEmitidosItens: TUniQuery;
    qrRelCFeEmitidosnro_cupom: TIntegerField;
    qrRelCFeEmitidosid_venda: TIntegerField;
    qrRelCFeEmitidosdata_emissao: TDateTimeField;
    qrRelCFeEmitidosnome_cliente: TWideStringField;
    qrRelCFeEmitidosvalor: TFloatField;
    qrRelCFeEmitidosven_024: TWideStringField;
    qrRelCFeEmitidosItenscso_codigo: TIntegerField;
    qrRelCFeEmitidosItensvalor_item: TFloatField;
    qrRelAcrescimosVendastotal_venda: TFloatField;
    frxPDFExport1: TfrxPDFExport;
    qrRelCaixinhaGarcons: TUniQuery;
    qrRelCaixinhaGarconsnome: TWideStringField;
    qrRelCaixinhaGarconstotal: TFloatField;
    dbCaixinhaGarcons: TfrxDBDataset;
    repCaixinhaGarcons: TfrxReport;
    qrRelComissao: TUniQuery;
    qrRelComissaonome_vendedor: TWideStringField;
    qrRelComissaocomissao_vendedor: TFloatField;
    qrRelComissaototal_vendas: TFloatField;
    qrRelComissaototal_comissao: TFloatField;
    dbComissao: TfrxDBDataset;
    repComissao: TfrxReport;
    qrRelComissaoDetalhado: TUniQuery;
    dbComissaoDetalhado: TfrxDBDataset;
    repComissaoDetalhado: TfrxReport;
    qrRelComissaoDetalhadonome_vendedor: TWideStringField;
    qrRelComissaoDetalhadototal_venda: TFloatField;
    qrRelComissaoDetalhadototal_comissao: TFloatField;
    qrRelComissaoDetalhadonome_cliente: TWideStringField;
    qrRelComissaoDetalhadonumero_venda: TIntegerField;
    qrRelComissaoDetalhadodata_venda: TDateTimeField;
    dbNFe: TfrxDBDataset;
    qrNotaSaida: TUniQuery;
    qrNotaSaidaid_nota_saida: TIntegerField;
    qrNotaSaidaid_cliente: TIntegerField;
    qrNotaSaidaserie: TIntegerField;
    qrNotaSaidacfop: TWideStringField;
    qrNotaSaidavalor_total: TFloatField;
    qrNotaSaidaid_situacao: TIntegerField;
    qrNotaSaidadata_saida: TDateField;
    qrNotaSaidadata_emissao: TDateField;
    qrNotaSaidanumero: TIntegerField;
    qrNotaSaidachave_autorizacao: TWideStringField;
    qrNotaSaidachave_cancelamento: TWideStringField;
    qrNotaSaidafinalidade: TIntegerField;
    qrNotaSaidachave_nf_devolvida: TWideStringField;
    qrNotaSaidasituacao: TWideStringField;
    qrNotaSaidanome_cliente: TWideStringField;
    qrNotaSaidatipo_pessoa: TWideStringField;
    qrNotaSaidasituacao_ie: TWideStringField;
    qrNotaSaidacfop_descricao: TWideStringField;
    repNFe: TfrxReport;
    ActionList1: TActionList;
    acBuscaCliente: TAction;
    acBuscaCFOP: TAction;
    qrRelVendaPagAntecipado: TUniQuery;
    qrRelVendaPagAntecipadonumero_venda: TIntegerField;
    qrRelVendaPagAntecipadomesa_comanda: TWideStringField;
    qrRelVendaPagAntecipadovalor_venda: TFloatField;
    qrRelVendaPagAntecipadovalor_movimento: TFloatField;
    qrRelVendaPagAntecipadoresponsavel: TWideStringField;
    qrRelVendaPagAntecipadodata_hora_venda: TDateTimeField;
    qrRelVendaPagAntecipadodata_hora_movimento: TDateTimeField;
    qrRelVendaPagAntecipadoobservacao: TWideMemoField;
    dbVendaPagAntecipado: TfrxDBDataset;
    repVendaPagAntecipado: TfrxReport;
    qrRelVendaPagAntecipadosituacao: TWideStringField;
    qrRelResumoFinanceiro: TUniQuery;
    dbResumoFinanceiro: TfrxDBDataset;
    repResumoFinanceiro: TfrxReport;
    qrRelResumoFinanceirodata_pagamento: TDateTimeField;
    qrRelResumoFinanceirodia_semana: TWideMemoField;
    qrRelResumoFinanceiropercent_cpagar: TFloatField;
    qrRelResumoFinanceirototal_creceber: TFloatField;
    qrRelResumoFinanceiropercent_creceber: TFloatField;
    qrRelResumoFinanceirosaldo: TFloatField;
    cdsRelResumoFinanceiro: TClientDataSet;
    dspRelResumoFinanceiro: TDataSetProvider;
    cdsRelResumoFinanceirodata_pagamento: TDateTimeField;
    cdsRelResumoFinanceirodia_semana: TWideMemoField;
    cdsRelResumoFinanceiropercent_cpagar: TFloatField;
    cdsRelResumoFinanceirototal_creceber: TFloatField;
    cdsRelResumoFinanceiropercent_creceber: TFloatField;
    cdsRelResumoFinanceirosaldo: TFloatField;
    qrRelResumoFinanceiroacumulado: TFloatField;
    cdsRelResumoFinanceiroacumulado: TFloatField;
    qrRelResumoFinanceirototal_cpagar: TFloatField;
    cdsRelResumoFinanceirototal_cpagar: TFloatField;
    qrItensVendadesconto: TFloatField;
    qrItensVendaacrescimo: TFloatField;
    qrRelRetiradaesuprimento: TUniQuery;
    repRetiradaesuprimentos: TfrxReport;
    dbRetiradaesuprimento: TfrxDBDataset;
    qrRelRetiradaesuprimentovalor: TFloatField;
    qrRelRetiradaesuprimentoid_empresa: TIntegerField;
    qrRelRetiradaesuprimentoid_caixa: TIntegerField;
    qrRelRetiradaesuprimentoobservacao: TBlobField;
    qrRelRetiradaesuprimentoobservacao_caixa: TBlobField;
    qrRelRetiradaesuprimentodata: TDateTimeField;
    qrRelRetiradaesuprimentoclassif: TWideMemoField;
    qrRelRetiradaesuprimentonome_usuario: TWideStringField;
    qrRelRetiradaesuprimentodesc_status: TWideStringField;
    qrRelRetiradaesuprimentodata_abertura: TDateTimeField;
    qrRelRetiradaesuprimentodata_fechamento: TDateTimeField;
    qrRelRetiradaesuprimentotipo_movimento: TWideStringField;
    qrRelRetiradaesuprimentodesc_tipo_movimento: TWideMemoField;
    qrRelRecebimentosFormaPag: TUniQuery;
    qrRelRecebimentosFormaPagdesc_forma: TWideStringField;
    qrRelRecebimentosFormaPagtipo_movimento: TWideStringField;
    dbRecebimentosFormaPag: TfrxDBDataset;
    repRecebimentosFormaPag: TfrxReport;
    qrRelRecebimentosFormaPagdata_inicial: TDateField;
    qrRelRecebimentosFormaPagdata_final: TDateField;
    rpRelprodutosvendidosfornecedor: TfrxReport;
    qrRelprodutosvendidosfornecedor: TUniQuery;
    dbRelprodutosvendidosfornecedor: TfrxDBDataset;
    qrRelprodutosvendidosfornecedormat_003: TWideStringField;
    qrRelprodutosvendidosfornecedormat_004: TWideStringField;
    qrRelprodutosvendidosfornecedorqtdevenda: TFloatField;
    qrRelprodutosvendidosfornecedorvlrvenda: TFloatField;
    qrRelprodutosvendidosfornecedorcusto_produto: TFloatField;
    qrRelprodutosvendidosfornecedorid_fornecedor: TIntegerField;
    qrRelprodutosvendidosfornecedornome_fantasia: TWideStringField;
    qrRelprodutosvendidosfornecedorvalor_unitario: TFloatField;
    qrRelprodutosvendidosfornecedortotgeral: TFloatField;
    acBuscafornecedor: TAction;
    qrRelRecebimentosFormaPagtotal_forma: TFloatField;
    qrRelcontasapagar: TUniQuery;
    dbRelcontasapagar: TfrxDBDataset;
    qrRelcontasapagarid_cpagar: TIntegerField;
    qrRelcontasapagardescricao: TWideStringField;
    qrRelcontasapagarnota: TIntegerField;
    qrRelcontasapagardata: TDateTimeField;
    qrRelcontasapagardata_vencimento: TDateField;
    qrRelcontasapagardocumento: TWideStringField;
    qrRelcontasapagarvalor: TFloatField;
    qrRelcontasapagarvalor_pago: TFloatField;
    qrRelcontasapagarcod_status_pag: TIntegerField;
    qrRelcontasapagarespecie_desc: TWideStringField;
    qrRelcontasapagarnome_fornecedor: TWideStringField;
    qrRelcontasapagarconta_desc: TWideStringField;
    qrRelcontasapagarid_situacao: TIntegerField;
    qrRelcontasapagarusuario_insercao: TWideStringField;
    qrRelcontasapagarusuario_cancelamento: TWideStringField;
    qrRelcontasapagarusuario_pagamento: TWideStringField;
    qrRelcontasapagardata_cancelamento: TDateTimeField;
    qrRelcontasapagardata_pagamento: TDateTimeField;
    qrRelcontasapagarid_caixa: TIntegerField;
    qrRelcontasapagaritemcaixaitem: TIntegerField;
    qrRelcontasapagarid_movimentocc: TIntegerField;
    AdvPanel1: TAdvPanel;
    gbFiltroTipoVenda: TAdvGroupBox;
    rgFiltro: TcxRadioGroup;
    AdvGroupBox2: TAdvGroupBox;
    rgImpressora: TcxRadioGroup;
    AdvGroupBox3: TAdvGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    lbFiltroCategoria: TLabel;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    cbRelatorio: TComboBox;
    cbFiltroCategoria: TJvDBComboBox;
    gbFiltroNFe: TAdvGroupBox;
    Label5: TLabel;
    lbCliente: TLabel;
    lbCFOP: TLabel;
    Label4: TLabel;
    edCodCliente: TcxButtonEdit;
    edCFOP: TcxButtonEdit;
    AdvGroupBox1: TAdvGroupBox;
    Label3: TLabel;
    lblFornecedor: TLabel;
    edCodigofornecedor: TcxButtonEdit;
    qrNotaentrada: TUniQuery;
    rpNotaentrada: TfrxReport;
    dbNotaentrada: TfrxDBDataset;
    qrNotaentradaid_nota_entrada: TIntegerField;
    qrNotaentradaid_fornecedor: TIntegerField;
    qrNotaentradanumero: TIntegerField;
    qrNotaentradadata_emissao: TDateField;
    qrNotaentradadata_entrada: TDateField;
    qrNotaentradaserie: TIntegerField;
    qrNotaentradavalor_total: TFloatField;
    qrNotaentradanome_fantasia: TWideStringField;
    qrNotaentradacfop: TWideStringField;
    AdvGroupBox4: TAdvGroupBox;
    Label6: TLabel;
    lblCliente: TLabel;
    acCliente: TAction;
    edCodigoCliente: TcxButtonEdit;
    qrVendasporgarcom: TUniQuery;
    qrVendasporgarcomgar_001: TIntegerField;
    qrVendasporgarcomusu_002: TWideStringField;
    qrVendasporgarcomtotal_vendas: TFloatField;
    rpVendasporgarcom: TfrxReport;
    dbVendasporgarcom: TfrxDBDataset;
    qrRelListaProdutos: TUniQuery;
    qrRelListaProdutoscod_ref: TWideStringField;
    qrRelListaProdutosdescricao: TWideStringField;
    qrRelListaProdutospreco_custo: TFloatField;
    qrRelListaProdutospreco_venda: TFloatField;
    qrRelListaProdutosmargem: TFloatField;
    qrRelListaProdutosmargem_calc: TFloatField;
    qrRelListaProdutoslucro_valor: TFloatField;
    dbListaProdutos: TfrxDBDataset;
    repListaProdutos: TfrxReport;
    qrCPagar: TUniQuery;
    qrCPagarid_cpagar: TIntegerField;
    qrCPagardescricao: TWideStringField;
    qrCPagarnota: TIntegerField;
    qrCPagardata: TDateTimeField;
    qrCPagardata_vencimento: TDateField;
    qrCPagardocumento: TWideStringField;
    qrCPagarvalor: TFloatField;
    qrCPagarespecie_desc: TWideStringField;
    qrCPagarnome_fornecedor: TWideStringField;
    qrCPagarconta_desc: TWideStringField;
    qrCPagarid_situacao: TIntegerField;
    qrCPagarusuario_insercao: TWideStringField;
    qrCPagarusuario_cancelamento: TWideStringField;
    qrCPagardata_cancelamento: TDateTimeField;
    qrCPagarid_caixa: TIntegerField;
    qrCPagaritemcaixaitem: TIntegerField;
    qrCPagarid_movimentocc: TIntegerField;
    qrCPagarvalor_pago: TFloatField;
    qrCPagaraberto: TFloatField;
    repCPagar: TfrxReport;
    dbCPagar: TfrxDBDataset;
    lbSituacao: TLabel;
    cbFiltroSituacao: TComboBox;
    qrCReceber: TUniQuery;
    qrCReceberid_creceber: TIntegerField;
    qrCRecebernome_cliente: TWideStringField;
    WideStringField1: TWideStringField;
    IntegerField2: TIntegerField;
    DateTimeField1: TDateTimeField;
    DateField1: TDateField;
    WideStringField2: TWideStringField;
    FloatField1: TFloatField;
    WideStringField3: TWideStringField;
    WideStringField5: TWideStringField;
    IntegerField3: TIntegerField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    DateTimeField2: TDateTimeField;
    qrCRecebervalor_desconto: TFloatField;
    qrCRecebervalor_acrescimo: TFloatField;
    qrCRecebervalor_pago: TFloatField;
    qrCRecebervalor_juros: TFloatField;
    qrCRecebervalor_aberto: TFloatField;
    repCReceber: TfrxReport;
    dbCReceber: TfrxDBDataset;
    qrVendasLucro: TUniQuery;
    qrVendasLucromat_003: TWideStringField;
    qrVendasLucromat_004: TWideStringField;
    qrVendasLucroqtdevenda: TFloatField;
    qrVendasLucrovlrvenda: TFloatField;
    qrVendasLucrotot_custo: TFloatField;
    qrVendasLucrolucro: TFloatField;
    dbVendasLucro: TfrxDBDataset;
    qrVendasLucromargem: TFloatField;
    repVendasLucro: TfrxReport;
    qrProdValorizacao: TUniQuery;
    WideStringField4: TWideStringField;
    WideStringField8: TWideStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    dbProdValorizacao: TfrxDBDataset;
    repProdValorizacao: TfrxReport;
    qrProdValorizacaovalorizacao: TFloatField;
    qrProdValorizacaoqtde: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure MontaSqlProdVendidosAgrupado;
    procedure MontaSqlProdVendidos;
    procedure MontaSqlProdCancelados;
    procedure btImprimirClick(Sender: TObject);
    constructor Create (sender : Tcomponent ; i_relatorio  : integer = 0);
    procedure cbRelatorioChange(Sender: TObject);
    function GeraRelatorioCFe (indice_rel : integer ; data_inicial, data_final : Tdate ;
                                tipo_fiscal : string;
                                exporta_pdf : boolean = false;
                                caminho_pdf : string = '';cfop_rep:string='' ) : boolean ;
    function PreparaQuery (var query : TUniquery) : boolean;
    procedure acBuscaClienteExecute(Sender: TObject);
    procedure edCodClienteExit(Sender: TObject);
    procedure acBuscaCFOPExecute(Sender: TObject);
    procedure edCFOPExit(Sender: TObject);
    function GeraRelatorioResumoFinanceiro : boolean;
    procedure acBuscafornecedorExecute(Sender: TObject);
    procedure edCodigofornecedorExit(Sender: TObject);
    procedure edCodigoClienteExit(Sender: TObject);
    procedure acClienteExecute(Sender: TObject);

  private
   cod_cliente,cfop, i_where_nfe:integer;
  public
    { Public declarations }
  end;

var
  frmRelatorioVendas: TfrmRelatorioVendas;

implementation

{$R *.dfm}

uses uMenu, uGeradorSAT, Funcao_DB, uBuscaRegistro, uFuncoes;


function TfrmRelatorioVendas.GeraRelatorioResumoFinanceiro : boolean;
var acumulado : double;
begin
  cdsRelResumoFinanceiro.Close;
  result := PreparaQuery(qrRelResumoFinanceiro);
  if not result then exit;
    qrRelResumoFinanceiro.Close;
    cdsRelResumoFinanceiro.open;
  while not cdsRelResumoFinanceiro.eof do
  begin
    if cdsRelResumoFinanceiro.Bof then
    begin
      acumulado:=0;
    end
    else
    begin
      cdsRelResumoFinanceiro.Prior;
      acumulado:=cdsRelResumoFinanceiro.FieldByName('acumulado').AsFloat;
      cdsRelResumoFinanceiro.Next;
    end;

    cdsRelResumoFinanceiro.Edit;
    cdsRelResumoFinanceiro.FieldByName('acumulado').AsFloat :=cdsRelResumoFinanceiro.FieldByName('saldo').AsFloat + acumulado;
    cdsRelResumoFinanceiro.post;

    cdsRelResumoFinanceiro.Next;
  end;
  repResumoFinanceiro.PrepareReport;
  repResumoFinanceiro.showreport;

end;


procedure TfrmRelatorioVendas.edCodigoClienteExit(Sender: TObject);
var
str_sql:string;
qraux1:tuniquery;
begin
     cod_cliente:=0;
str_sql:='select cli_001, cli_002, cep_003,cidade_desc from clientes where emp_001=:emp and cli_001=:cli_001 and sit_001=4';
    qraux1:=tuniquery.Create(self);
    qraux1.Connection:=frmMenu.conexao;
    qrAux1.SQL.Add(str_sql);
    qraux1.ParamByName('emp').AsInteger:=RecProj.iEmp;
    qraux1.ParamByName('cli_001').AsInteger:=Strtoint(edCodigoCliente.Text);
    qrAux1.Open;
    lblcliente.Caption:=qraux1.FieldByName('cli_002').AsString;
    cod_cliente:=qraux1.ParamByName('cli_001').AsInteger;

end;


function TfrmRelatorioVendas.PreparaQuery(var query : TUniquery) : boolean;
begin
  query.Close;
  query.ParamByName('emp').AsInteger := RecProj.iEmp;
  query.ParamByName('dtini').AsDateTime := dtpDataInicial.Date;
  query.ParamByName('dtfim').AsDateTime := dtpDataFinal.Date+1;
  query.Open;
  result := query.RecordCount > 0;
end;

constructor TfrmRelatorioVendas.Create(sender: TComponent; i_relatorio: Integer = 0);
var qr_aux : TUniQuery;
    str_sql : string;
begin
  inherited Create(sender);
  qr_aux := TUniQuery.Create(self);
  qr_aux.Connection := frmMenu.conexao;

  str_sql :=  format('select * from ( select cat_001, cat_002, 1 as ord from categoria where emp_001=%d union '+
                    'select  null, cast(''(TODAS)'' as varchar(40)), 0 as ord ) qr order by ord', [recproj.iEmp]);
  ExecutaConsultaSQL(qr_aux, str_sql);
  while not qr_aux.Eof do
  begin
    cbFiltroCategoria.Values.Add(qr_aux.Fields[0].asstring);
    cbFiltroCategoria.Items.Add(qr_aux.Fields[1].asstring);
    qr_aux.Next;
  end;

  qr_aux.Free;
  cbRelatorio.ItemIndex := i_relatorio;
  i_where_nfe := qrNotaSaida.SQL.Count -2;
end;

procedure TfrmRelatorioVendas.edCFOPExit(Sender: TObject);
var str_sql : string;
begin
 str_sql := 'select cfop_descricao from cfop where cfop_codigo=''%d'' ';
  LookupBuscaExit(cfop, edCFOP, lbCFOP, str_sql, 'CFOP');
end;

procedure TfrmRelatorioVendas.edCodClienteExit(Sender: TObject);
 var str_sql : string;
begin
  inherited;
  str_sql := 'select cli_002 from clientes where cli_001=%d and emp_001='+inttostr(recproj.iEmp);
  LookupBuscaExit(cod_cliente, edCodCliente, lbCliente, str_sql, 'Cliente');
end;

procedure TfrmRelatorioVendas.edCodigofornecedorExit(Sender: TObject);
var
str_sql:string ;
qraux1:tuniquery;
begin
str_sql:='select id_fornecedor,nome_fantasia, razao_social from fornecedor where id_fornecedor=:id_fornecedor and  id_empresa=:id_empresa';
    qraux1:=tuniquery.Create(self);
    qraux1.Connection:=frmMenu.conexao;
    qrAux1.SQL.Add(str_sql);
    qraux1.ParamByName('id_empresa').AsInteger:=RecProj.iEmp;
    qraux1.ParamByName('id_fornecedor').AsInteger:=Strtoint(edCodigofornecedor.Text);
    qrAux1.Open;
    lblFornecedor.Caption:=qraux1.FieldByName('nome_fantasia').AsString;
end;


function TfrmRelatorioVendas.GeraRelatorioCFe (indice_rel : integer; data_inicial,
                                                data_final :Tdate;
                                                 tipo_fiscal : string ;
                                                exporta_pdf : boolean = false;
                                                caminho_pdf : string = '';
                                                cfop_rep:string='') : boolean;
var titulo_rep, filtro,situacao_rep, periodo_rep: string;
begin
  if indice_rel in [6..11, 23, 24] then //SAT, NFCe, ECF, MFE emitidos / cancelados
  begin

    qrRelCFeEmitidos.Close;
    qrRelCFeEmitidosItens.Close;

    qrRelCFeEmitidos.ParamByName('emp').AsInteger := RecProj.iEmp;
    qrRelCFeEmitidos.ParamByName('dtini').AsDateTime := data_inicial;
    qrRelCFeEmitidos.ParamByName('dtfim').AsDateTime := data_final+1;
    qrRelCFeEmitidos.ParamByName('tipofiscal').asstring := tipo_fiscal;

    qrRelCFeEmitidosItens.ParamByName('emp').AsInteger := RecProj.iEmp;
    qrRelCFeEmitidosItens.ParamByName('dtini').AsDateTime := dtpDataInicial.Date;
    qrRelCFeEmitidosItens.ParamByName('dtfim').AsDateTime := dtpDataFinal.Date+1;
    qrRelCFeEmitidosItens.ParamByName('tipofiscal').asstring := tipo_fiscal;

    if indice_rel in [6,8,10, 23] then   //emitidos
    begin
      qrRelCFeEmitidos.ParamByName('situacao_venda').AsInteger := 1;
      qrRelCFeEmitidosItens.ParamByName('situacao_venda').AsInteger := 1;
      if indice_rel in [6,8,23]  then  //SAT, NFCe, MFE emitidos
        titulo_rep := format('RELATÓRIO DE CFe EMITIDOS (%s)',[tipo_fiscal])
      else //ECF
        titulo_rep := format('RELATÓRIO DE CUPONS FISCAIS EMITIDOS (%s)',[tipo_fiscal]);

    end
    else  //indices 7, 9 e 11, 24 cancelados
    begin
      qrRelCFeEmitidos.ParamByName('situacao_venda').AsInteger := 2;
      qrRelCFeEmitidosItens.ParamByName('situacao_venda').AsInteger := 2;
      if indice_rel in [7,9, 24]  then //SAT, NFCe, MFE cancelados
        titulo_rep := format('RELATÓRIO DE CFe CANCELADOS (%s)',[tipo_fiscal])
      else
        titulo_rep := format('RELATÓRIO DE CUPONS FISCAIS CANCELADOS (%s)',[tipo_fiscal]);
    end;

    qrRelCFeEmitidos.Open;
    qrRelCFeEmitidosItens.Open;

    result := qrRelCFeEmitidos.RecordCount>0;
    if not result then  exit;

    if exporta_pdf  then
    begin
      if Not DirectoryExists(ExtractFilePath(caminho_pdf)) then ForceDirectories(ExtractFilePath(caminho_pdf));
      frxPDFExport1.FileName := caminho_pdf;
      frxPDFExport1.DefaultPath := ExtractFilePath(caminho_pdf) ;
      frxPDFExport1.ShowDialog := False;
      frxPDFExport1.OverwritePrompt := False;
      repCFeEmitidos.Variables['sTituloRep'] := QuotedStr(titulo_rep);
      repCFeEmitidos.PrepareReport;
      repCFeEmitidos.Export(frmRelatorioVendas.frxPDFExport1);
    end
    else
    begin
      repCFeEmitidos.Variables['sTituloRep'] := QuotedStr(titulo_rep);
      repCFeEmitidos.PrepareReport;
      repCFeEmitidos.ShowReport;
    end;
  end
  else  //  indices [15, 16]  NFC de saída
  begin
    qrNotaSaida.Close;
    filtro := 'where ns.id_empresa=' + inttostr(recproj.iEmp);
    case indice_rel of
      15:
      begin
        filtro := filtro + ' and ns.id_situacao=11 ';
        situacao_rep := 'Autorizadas';
      end;
      16:
      begin
        filtro := filtro + ' and ns.id_situacao=2  ';
        situacao_rep := 'Canceladas';
      end;
    end;
    if cod_cliente>0 then
      filtro := filtro +  ' and ns.id_cliente=' + inttostr(cod_cliente);

    if cfop_rep<>'0' then
    begin
      filtro := filtro +  ' and ns.cfop=' + QuotedStr(cfop_rep);

    end
    else
    begin
      cfop_rep := '';
    end;
    filtro := filtro + ' and ns.data_emissao>=:data_inicio and  ns.data_emissao<:data_fim ';

    qrNotaSaida.SQL[i_where_nfe] := filtro;
    qrNotaSaida.ParamByName('data_inicio').AsDate := data_Inicial;
    qrNotaSaida.ParamByName('data_fim').AsDate := data_Final+1;
    qrNotaSaida.Open;

    result := qrnotasaida.RecordCount>0;
    if not result then
      exit;
    periodo_rep := FormatDateTime('dd/mm/yyyy', Data_Inicial) + ' a ' + FormatDateTime('dd/mm/yyyy', Data_Final);

    if exporta_pdf  then
    begin
      if Not DirectoryExists(ExtractFilePath(caminho_pdf)) then ForceDirectories(ExtractFilePath(caminho_pdf));
      frxPDFExport1.FileName := caminho_pdf;
      frxPDFExport1.DefaultPath := ExtractFilePath(caminho_pdf) ;
      frxPDFExport1.ShowDialog := False;
      frxPDFExport1.OverwritePrompt := False;
      repNFe.Variables['sSituacao'] := QuotedStr(situacao_rep);
      repNFe.Variables['sCFOP'] := QuotedStr(cfop_rep);
      repNFe.Variables['sPeriodo'] := QuotedStr(periodo_rep);
      repNFe.PrepareReport;
      repNFe.Export(frmRelatorioVendas.frxPDFExport1);

    end
    else
    begin

      repNFe.Variables['sSituacao'] := QuotedStr(situacao_rep);
      repNFe.Variables['sCFOP'] := QuotedStr(cfop_rep);
      repNFe.Variables['sPeriodo'] := QuotedStr(periodo_rep);
      repNFe.PrepareReport;
      repNFe.ShowReport;
    end;
  end;
end;


procedure TfrmRelatorioVendas.MontaSqlProdVendidosAgrupado;
begin
   with qrItensVenda.SQL do
   begin
      qrItensVenda.Close;
      Clear;
      Add('SELECT MAT.MAT_003 ');
      Add('     , MAT.MAT_004 ');
      Add('     , SUM(ITE.ITE_002) AS QTDEVENDA ');
      Add('     , SUM(ITE.ITE_005) AS VLRVENDA ');
      Add('     , SUM(ITE.desconto) AS desconto ');
      Add('     , coalesce(SUM(ITE.acrescimo),0.0) AS acrescimo ');
      Add('     , TO_CHAR(VEN.VEN_004, ''dd/mm/YYYY'') AS VEN_004 ');
      Add('     , (SELECT SUM(VENDAITEM.ITE_005) ');
      Add('          FROM VENDAITEM ');
      Add('          LEFT OUTER JOIN VENDA ON (VENDA.EMP_001 = VENDAITEM.EMP_001) AND (VENDA.VEN_001 = VENDAITEM.VEN_001) ');
      Add('         WHERE VENDAITEM.EMP_001 = :EMP ');
      Add('           AND VENDA.VEN_004  BETWEEN :DTINI AND :DTFIM ');
      case rgFiltro.ItemIndex of
         1: Add('     AND VENDA.VEN_024 = ''M''');
         2: Add('     AND VENDA.VEN_024 = ''D''');
         3: Add('     AND VENDA.VEN_024 = ''B''');
         4: Add('     AND VENDA.VEN_024 = ''C''');
         5: Add('     AND VENDA.VEN_024 = ''P''');
      end;
      Add('           AND VENDA.SIT_001 = 1 ');
      Add('       ) AS TOTGERAL ');
      Add('    , (SELECT COALESCE(SUM(VENDA.VEN_031), 0.00) ');
      Add('         FROM VENDA ');
      Add('        WHERE VENDA.EMP_001 = :EMP ');
      Add('          AND VENDA.VEN_004 BETWEEN :DTINI AND :DTFIM ');
      case rgFiltro.ItemIndex of
         1: Add('     AND VENDA.VEN_024 = ''M''');
         2: Add('     AND VENDA.VEN_024 = ''D''');
         3: Add('     AND VENDA.VEN_024 = ''B''');
         4: Add('     AND VENDA.VEN_024 = ''C''');
         5: Add('     AND VENDA.VEN_024 = ''P''');
      end;
      Add('          AND VENDA.SIT_001 = 1 ');
      Add('          AND VENDA.VEN_004 = VEN.VEN_004 ');
      Add('      ) AS TAXA ');
      Add(', (SELECT ((COALESCE(SUM(T.ITE_005), 0.00) / 100) * 10)');
      Add('    FROM VENDAITEM T ');
      Add('    LEFT OUTER JOIN VENDA ON (VENDA.EMP_001 = T.EMP_001) AND (VENDA.VEN_001 = T.VEN_001)');
      Add('   WHERE T.EMP_001 = :EMP');
      Add('     AND VENDA.VEN_004 BETWEEN :DTINI AND :DTFIM');
      case rgFiltro.ItemIndex of
         1: Add('     AND VENDA.VEN_024 = ''M''');
         2: Add('     AND VENDA.VEN_024 = ''D''');
         3: Add('     AND VENDA.VEN_024 = ''B''');
         4: Add('     AND VENDA.VEN_024 = ''C''');
         5: Add('     AND VENDA.VEN_024 = ''P''');
      end;
      Add('     AND VENDA.SIT_001 = 1');
      Add(' ) TAXAGARCON');
      Add('FROM VENDAITEM ITE ');
      Add('LEFT OUTER JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_001) AND (MAT.MAT_001 = ITE.MAT_001) ');
      Add('LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND (UNI.UNI_001 = MAT.UNI_001) ');
      Add('LEFT OUTER JOIN VENDA VEN ON (VEN.EMP_001 = ITE.EMP_001) AND (VEN.VEN_001 = ITE.VEN_001) ');
      Add('LEFT OUTER JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.CAT_001 = MAT.CAT_001) ');
      Add('WHERE VEN.VEN_004 BETWEEN :DTINI AND :DTFIM ');
      if cbFiltroCategoria.ItemIndex>=0 then
      begin
        if cbFiltroCategoria.Values[cbFiltroCategoria.ItemIndex]<>'' then
        begin
          Add('  AND MAT.CAT_001 ='+ cbFiltroCategoria.Values[cbFiltroCategoria.ItemIndex]);
        end;
      end;
      Add('  AND VEN.SIT_001 = 1 ');
      Add('  AND MAT.MAT_008 > 0 ');
      Add('  and ite.sit_001 not in (0,1,2,3) ');
      case rgFiltro.ItemIndex of
         1: Add('     AND VEN.VEN_024 = ''M''');
         2: Add('     AND VEN.VEN_024 = ''D''');
         3: Add('     AND VEN.VEN_024 = ''B''');
         4: Add('     AND VEN.VEN_024 = ''C''');
         5: Add('     AND VEN.VEN_024 = ''P''');
      end;
      Add('GROUP BY VEN.VEN_004 ');
      Add('     , MAT.MAT_004 ');
      Add('     , CAT.CAT_002 ');
      Add('     , MAT.MAT_003 ');
      Add('     , TOTGERAL ');
      Add('ORDER BY VEN.VEN_004, CAT.CAT_002, MAT.MAT_004');
   end;
end;

procedure TfrmRelatorioVendas.MontaSqlProdVendidos;
var str_sql, filtro_mesa, filtro_categoria : string;
begin
  with qrItensVenda.SQL do
  begin
    Clear;
    case rgFiltro.ItemIndex of
      1: filtro_mesa := ' and v.ven_024 = ''M''';
      2: filtro_mesa := ' and v.ven_024 = ''D''';
      3: filtro_mesa := ' and v.ven_024 = ''B''';
      4: filtro_mesa := ' and v.ven_024 = ''C''';
      5: filtro_mesa := ' and v.ven_024 = ''P''';
      else  filtro_mesa:='';
    end;

    if cbFiltroCategoria.ItemIndex>=0 then
      begin
        if cbFiltroCategoria.Values[cbFiltroCategoria.ItemIndex]<>'' then
        begin
          filtro_categoria := ' and mat.cat_001=' + cbFiltroCategoria.Values[cbFiltroCategoria.ItemIndex];
        end;
    end
    else filtro_categoria := '';

    str_sql :=' select mat.mat_004, '+
                ' mat.mat_003, '+
                ' sum(vi.ite_002 )  as QTDEVENDA, '+
                ' sum(vi.ite_005 )  as VLRVENDA, '+
                ' sum(vi.desconto) as desconto,' +
                ' coalesce(sum(vi.acrescimo),0.0) as acrescimo,' +
                ' null as ven_004 , '+
                ' 0.00 as totgeral, '+
                ' 0.00 as taxa, '+
                ' 0.00 as taxagarcon '+
                ' from (select id_caixa, id_venda, id_empresa from caixaitem '+
                ' group by  id_caixa, id_venda, id_empresa '+
                ' order by 1) civ '+
                ' join vendaitem vi on vi.ven_001=civ.id_venda and vi.emp_001=civ.id_empresa and not vi.sit_001  in (0,1,2,3) '+
                ' join materiais mat on (mat.emp_001 = vi.emp_001) and (mat.mat_001 = vi.mat_001) '+
                ' join caixa c on c.id_caixa=civ.id_caixa and civ.id_empresa=c.id_empresa '+
                ' join venda v on v.ven_001=civ.id_venda and v.emp_001=civ.id_empresa '+
                ' where v.sit_001=1 and c.id_empresa=:EMP and v.ven_004>=:DTINI and v.ven_004<:DTFIM ';
    str_sql := str_sql + filtro_mesa + filtro_categoria + ' group by  mat.mat_004, mat.mat_003  order by 3 desc, mat.mat_004 ';
    Add(str_sql);
  end;
end;

procedure TfrmRelatorioVendas.MontaSqlProdCancelados;
var str_sql, filtro_mesa, filtro_categoria : string;
begin
  with qrItensVenda.SQL do
  begin
    Clear;
    case rgFiltro.ItemIndex of
      1: filtro_mesa := ' and v.ven_024 = ''M''';
      2: filtro_mesa := ' and v.ven_024 = ''D''';
      3: filtro_mesa := ' and v.ven_024 = ''B''';
      4: filtro_mesa := ' and v.ven_024 = ''C''';
      5: filtro_mesa := ' and v.ven_024 = ''P''';
      else  filtro_mesa:='';
    end;

    if cbFiltroCategoria.ItemIndex>=0 then
      begin
        if cbFiltroCategoria.Values[cbFiltroCategoria.ItemIndex]<>'' then
        begin
          filtro_categoria := ' and mat.cat_001=' + cbFiltroCategoria.Values[cbFiltroCategoria.ItemIndex];
        end;
    end
    else filtro_categoria := '';

    str_sql :=' select itens_canc.mat_004,  '+
              ' itens_canc.mat_003,  '+
              ' sum(itens_canc.QTDEVENDA )  as QTDEVENDA,  '+
              ' sum(itens_canc.VLRVENDA )  as VLRVENDA,'+
              ' coalesce(sum(itens_canc.acrescimo),0.0) as acrescimo,' +
              ' sum(itens_canc.desconto) as desconto,' +
              ' null as ven_004 ,  '+
              ' 0.00 as totgeral,  '+
              ' 0.00 as taxa,  '+
              ' 0.00 as taxagarcon  '+
              '  from '+
              //' -- Pega os itens das vendas cancelas no periodo'+
              ' ((select mat.mat_004,  '+
              ' mat.mat_003,  '+
              ' sum(vi.ite_002 )  as QTDEVENDA,  '+
              ' sum(vi.ite_005 )  as VLRVENDA, '+
              ' coalesce(sum(vi.acrescimo),0.0) as acrescimo,' +
              ' sum(vi.desconto) as desconto ' +
              ' from  vendaitem vi'+
              ' join materiais mat on (mat.emp_001 = vi.emp_001) and (mat.mat_001 = vi.mat_001)  '+
              ' join venda v on v.ven_001=vi.ven_001  and v.emp_001=vi.emp_001 '+
              ' where v.emp_001=:EMP and v.ven_004>=:DTINI and v.ven_004<:DTFIM and v.sit_001=2';
    str_sql := str_sql + filtro_mesa + filtro_categoria +
              ' group by  mat.mat_004, mat.mat_003 ) '+
              ' union all '+
              //' -- Pega os itens de vendas que passaram no caixa, porém tiveram itens cancelados (situação=2)'+
              ' (select mat.mat_004,  '+
              ' mat.mat_003,  '+
              ' sum(vi.ite_002 )  as QTDEVENDA,  '+
              ' sum(vi.ite_005 )  as VLRVENDA, '+
              ' coalesce(sum(vi.acrescimo),0.0) as acrescimo,' +
              ' sum(vi.desconto) as desconto ' +
              ' from (select id_caixa, id_venda, id_empresa from caixaitem  group by  id_caixa, id_venda, id_empresa  order by 1) civ  '+
              ' join vendaitem vi on vi.ven_001=civ.id_venda and vi.emp_001=civ.id_empresa and vi.sit_001 in (2)  '+
              ' join materiais mat on (mat.emp_001 = vi.emp_001) and (mat.mat_001 = vi.mat_001)  '+
              ' join caixa c on c.id_caixa=civ.id_caixa and civ.id_empresa=c.id_empresa  '+
              ' join venda v on v.ven_001=civ.id_venda and v.emp_001=civ.id_empresa  '+
              ' where c.id_empresa=:EMP and v.ven_004>=:DTINI and v.ven_004<:DTFIM ';
    str_sql := str_sql + filtro_mesa + filtro_categoria +
              ' group by  mat.mat_004, mat.mat_003  order by 3 desc, mat.mat_004) ) itens_canc'+
              ' group by itens_canc.mat_004, itens_canc.mat_003  ';
    Add(str_sql);
  end;
end;


procedure TfrmRelatorioVendas.acBuscaCFOPExecute(Sender: TObject);
var str_sql : string;

begin
  edCFOP.SetFocus;
  str_sql:= 'select cfop_codigo, cfop_descricao from cfop';
  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
    CriaIntegerArray([0,1]) ,
    CriaStringArray(['CFOP', 'Descrição']),0, 0);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
    edCFOP.Text:= frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.Free;
  edCFOPExit(nil);

end;

procedure TfrmRelatorioVendas.acBuscaClienteExecute(Sender: TObject);
var str_sql : string;
begin
  inherited;
  edCodCliente.SetFocus;
  str_sql:= ' select cli_001, cli_002, cli_012, cli_013, fn_situacoes(sit_001) from clientes ';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
    str_sql,
    CriaIntegerArray([0,1,2,3,4]) ,
    CriaStringArray(['Código', 'Cliente', 'Telefone 1','Telefone 2', 'Status' ]),
    0, 1, ' emp_001='+IntToStr(RecProj.iEmp), 800, 500);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
    edCodCliente.Text:= frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.Free;
  edCodClienteExit(nil);   //Nil é referencia vazia

end;

procedure TfrmRelatorioVendas.acBuscafornecedorExecute(Sender: TObject);
var
str_sql:string;
begin
edCodigofornecedor.SetFocus;
  str_sql:= ' select id_fornecedor, nome_fantasia,razao_social from fornecedor  ';
  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,str_sql,
    CriaIntegerArray([0,1,2]) ,
    CriaStringArray(['Código', 'Nome Fantasia', 'Razão Social']),0, 1, ' id_empresa='+IntToStr(RecProj.iEmp), 800, 500);
    frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
  begin
    edCodigofornecedor.Text:= frmBuscaRegistro.valor_retorno;
    edCodigofornecedorExit(nil);
  end;
  frmBuscaRegistro.Free;

end;

procedure TfrmRelatorioVendas.acClienteExecute(Sender: TObject);
var
str_sql:string;
begin
edCodigoCliente.SetFocus;
  str_sql:= ' select cli_001, cli_002,cep_003,cidade_desc from clientes  ';
  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,str_sql,
    CriaIntegerArray([0,1,2]) ,
    CriaStringArray(['Código', 'Nome Fantasia', 'Bairro','Cidade']),0, 1, ' emp_001='+IntToStr(RecProj.iEmp), 800, 500);
    frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
  begin
    edCodigoCliente.Text:= frmBuscaRegistro.valor_retorno;
    edCodigoClienteExit(nil);
  end;
  frmBuscaRegistro.Free;
end;

procedure TfrmRelatorioVendas.btCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRelatorioVendas.btImprimirClick(Sender: TObject);
var titulo, str_sql, filtro_venda, filtro_situacao, str_aux, str_aux2, str_aux3,
filtro, situacao_rep, cfop_rep,  periodo_rep, info_filtro, filtro_status : string;
codigo:integer;

  procedure msg_sem_dados;
  begin
    Application.MessageBox('Sem dados no período selecionado!', 'Atenção', MB_ICONINFORMATION);
  end;
begin
  case cbRelatorio.ItemIndex of
    0..2: //Relatório de produtos vendidos
    begin
      titulo:= 'RELATÓRIO DE VENDA DE PRODUTOS';
      qrItensVenda.Close;
      if cbRelatorio.ItemIndex = 0 then
        MontaSqlProdVendidos
      else if cbRelatorio.ItemIndex = 1 then
        MontaSqlProdVendidosAgrupado
      else if cbRelatorio.ItemIndex = 2 then
      begin
        titulo := 'RELATÓRIO DE PRODUTOS CANCELADOS';
        MontaSqlProdCancelados;
      end;

      qrItensVenda.ParamByName('EMP').AsInteger := RecProj.iEmp;
      qrItensVenda.ParamByName('DTINI').AsDateTime := dtpDataInicial.Date;
      qrItensVenda.ParamByName('DTFIM').AsDateTime := dtpDataFinal.Date+1;
      qrItensVenda.Open;
      if qrItensVenda.RecordCount>0 then
      begin
        case rgImpressora.ItemIndex of
          0:
          begin
             repVendasProdutos.Variables['sTituloRep'] := QuotedStr(titulo);
             repVendasProdutos.PrepareReport;
             repVendasProdutos.ShowReport;
          end;
          1:
          begin
             repVendasProdutosNaoFiscal.Variables['sTituloRep'] := QuotedStr(titulo);
             repVendasProdutosNaoFiscal.PrintOptions.Printer := LerStringConfig('CAMIMPCAIXA',frmmenu.cdsCFG.FileName);
             repVendasProdutosNaoFiscal.PrepareReport;
             repVendasProdutosNaoFiscal.ShowReport;
          end;
        end;
      end
      else
        msg_sem_dados;
    end;

      // Relatorio de Produtos vendidos por fornecedor
    3:
    begin
      if trim (edCodigofornecedor.Text)<>'' then
      begin
        try
        codigo:=StrToInt( trim (edCodigofornecedor.Text));
        except
        Application.MessageBox('Fornecedor inválido, Por favor informe um fornecedor válido','Atenção', MB_ICONINFORMATION);
        edcodigofornecedor.SetFocus;
        abort;
        end ;
      end;

      qrRelprodutosvendidosfornecedor.Close;
      qrRelprodutosvendidosfornecedor.ParamByName('emp').AsInteger := RecProj.iEmp;   // Empresa
      qrRelprodutosvendidosfornecedor.ParamByName('dtini').AsDateTime := dtpDataInicial.Date; // Data inicial
      qrRelprodutosvendidosfornecedor.ParamByName('dtfim').AsDateTime := dtpDataFinal.Date+1; // Data final
      qrRelprodutosvendidosfornecedor.ParamByName('id_fornecedor').AsInteger := codigo;   // Fornecedor
     qrRelprodutosvendidosfornecedor.Open;
      if qrRelprodutosvendidosfornecedor.RecordCount>0 then
      begin

        rpRelprodutosvendidosfornecedor.showreport;
      end
      else
        Application.MessageBox('Sem dados para exibir!', 'Atenção', MB_ICONINFORMATION);
   end ;

    4..5 : //Relatório de acréscimos e Relatório de couvert
    begin
      if cbRelatorio.ItemIndex =4 then
      begin
        str_aux :=' entregador from   (select sum(v.ven_008 - coalesce(v.valor_couvert_f,0.0) - coalesce(v.valor_couvert_m, 0.0)) as total_acrescimo_venda,  ';
        str_aux2 :=' group by  entregador, tipo_venda, data order by  entregador, data ';
        str_aux3 :=  ' where v.ven_008>0 and v.sit_001=1 ';
      end
      else
      begin
        str_aux :=' cast('''' as varchar(30)) as entregador from  (select sum(coalesce(v.valor_couvert_f,0.0) + coalesce(v.valor_couvert_m, 0.0)) as total_acrescimo_venda,  ';
        str_aux2 :=' group by tipo_venda, data order by data ';
        str_aux3 :=  ' where (coalesce(v.valor_couvert_f,0.0) + coalesce(v.valor_couvert_m, 0.0))>0 and v.sit_001=1 ';
      end;

      str_sql :=' select sum(total_acrescimo_venda) as total_acrescimo_venda, sum(total_venda) as total_venda, count(1) as qtd_venda, tipo_venda, data, '+
                str_aux +
                ' sum(v.ven_009) as total_venda, '+
                ' cast(( case v.ven_024 when ''M''  then ''Mesa'' when ''B'' then ''Balcão'' when ''C'' then ''Comanda'' when ''D'' then ''Delivery''  when ''P'' then ''PDV'' else ''Outro'' end) as varchar(20)) as tipo_venda,  '+
                ' coalesce(ent.usu_002, gar.usu_002) as entregador, '+
                ' to_char(c.data_abertura, ''dd/mm/yyyy'' ) as data  '+
                ' from  '+
                ' (select id_caixa, id_venda, id_empresa from caixaitem '+
                ' group by  id_caixa, id_venda, id_empresa '+
                ' order by 1) cv  '+
                ' join caixa c on c.id_caixa=cv.id_caixa and cv.id_empresa=c.id_empresa '+
                ' join usuarios u on c.id_usuario=u.usu_001 '+
                ' join venda v on v.ven_001=cv.id_venda and v.emp_001=cv.id_empresa '+
                ' left join vendaitem vi on vi.emp_001=cv.id_empresa and vi.ven_001=cv.id_venda  and vi.ite_001=1   '+
                ' left join usuarios ent on ent.usu_001=v.id_entregador '+
                ' left join usuarios gar on vi.gar_001=gar.usu_001 '+
                ' left join mesa m on (m.emp_001 = v.emp_001) and (m.mes_001 = v.ven_025)  '+
                str_aux3 +
                ' and c.id_empresa=:EMP and v.ven_004>=:DTINI and v.ven_004<:DTFIM %s'+
                ' group by v.ven_024, ent.usu_002, gar.usu_002, c.data_abertura, c.data_abertura, v.ven_001   '+
                ' order by 3 , c.data_abertura '+
                ' ) rep '+
                str_aux2;
      case rgFiltro.ItemIndex of
         1: filtro_venda := ' and v.VEN_024 = ''M'' ';
         2: filtro_venda := ' and v.VEN_024 = ''D'' ';
         3: filtro_venda := ' and v.VEN_024 = ''B'' ';
         4: filtro_venda := ' and v.VEN_024 = ''C'' ';
         5: filtro_venda := ' and v.VEN_024 = ''P'' ';
         else filtro_venda :='';
      end;
      str_sql := format(str_sql, [filtro_venda]);

      qrRelAcrescimosVendas.Close;
      qrRelAcrescimosVendas.SQL.Clear;
      qrRelAcrescimosVendas.SQL.Add(str_sql);
      qrRelAcrescimosVendas.ParamByName('EMP').AsInteger := RecProj.iEmp;
      qrRelAcrescimosVendas.ParamByName('DTINI').AsDateTime := dtpDataInicial.Date;
      qrRelAcrescimosVendas.ParamByName('DTFIM').AsDateTime := dtpDataFinal.Date+1;
      qrRelAcrescimosVendas.Open;
      if qrRelAcrescimosVendas.RecordCount>0 then
      begin
        if cbRelatorio.ItemIndex=4 then
        begin

          case rgImpressora.ItemIndex of
            0:
            begin
              repAcrescimosVendas.Variables['sTituloRep'] := QuotedStr(' TAXAS E SERVIÇOS');
              repAcrescimosVendas.Variables['sDescCampo'] := QuotedStr('VL. ACREC.');
              repAcrescimosVendas.PrepareReport;
              repAcrescimosVendas.ShowReport;
            end;
            1:
            begin
              repAcrescimosVendasNaoFiscal.PrintOptions.Printer := LerStringConfig('CAMIMPCAIXA',frmmenu.cdsCFG.FileName);
              repAcrescimosVendasNaoFiscal.PrepareReport;
              repAcrescimosVendasNaoFiscal.ShowReport;
            end;
          end;

        end
        else
        begin
          repAcrescimosVendas.Variables['sTituloRep'] := QuotedStr('TAXAS DE COUVERT');
          repAcrescimosVendas.Variables['sDescCampo'] := QuotedStr('VL. COUVERT');
          repAcrescimosVendas.PrepareReport;
          repAcrescimosVendas.ShowReport;
        end;

      end
      else
        msg_sem_dados;
    end;  //Final do Relatório de acréscimos e Relatório de couvert

    6..7 :  //Relatorio de CFe Emitidos / Cancelados     SAT
    begin
      if not GeraRelatorioCFe(cbRelatorio.ItemIndex, dtpDataInicial.Date, dtpDataFinal.Date, 'SAT') then
        msg_sem_dados;
    end;

    8..9 :  //Relatorio de CFe Emitidos / Cancelados  NFCe
    begin
      if not GeraRelatorioCFe(cbRelatorio.ItemIndex, dtpDataInicial.Date, dtpDataFinal.Date, 'NFCE') then
        msg_sem_dados;
    end;

    10..11 :  //Relatorio de cupons fiscais Emitidos / Cancelados  ECF
    begin
      if not GeraRelatorioCFe(cbRelatorio.ItemIndex, dtpDataInicial.Date, dtpDataFinal.Date, 'ECF') then
        msg_sem_dados;
    end;
    12 :  //Caixinha dos garçons
    begin
      if PreparaQuery(qrRelCaixinhaGarcons) then
      begin
        str_aux := format('%s a %s',[formatdatetime('dd/mm/yyyy',dtpDataInicial.Date),
                                    formatdatetime('dd/mm/yyyy',dtpDataFinal.Date)] );

        repCaixinhaGarcons.Variables['sPeriodo'] := QuotedStr(str_aux);
        repCaixinhaGarcons.PrepareReport;
        repCaixinhaGarcons.ShowReport;
      end
      else
        msg_sem_dados;
    end;
    13 :  //Comissão
    begin
      if PreparaQuery(qrRelComissao) then
      begin
        str_aux := format('%s a %s',[formatdatetime('dd/mm/yyyy',dtpDataInicial.Date),
                                    formatdatetime('dd/mm/yyyy',dtpDataFinal.Date)] );

        repComissao.Variables['sPeriodo'] := QuotedStr(str_aux);
        repComissao.PrepareReport;
        repComissao.ShowReport;
      end
      else
        msg_sem_dados;
    end;
    14 :  //Comissão detalhado
    begin
      if PreparaQuery(qrRelComissaoDetalhado) then
      begin
        str_aux := format('%s a %s',[formatdatetime('dd/mm/yyyy',dtpDataInicial.Date),
                                    formatdatetime('dd/mm/yyyy',dtpDataFinal.Date)] );

        repComissaoDetalhado.Variables['sPeriodo'] := QuotedStr(str_aux);
        repComissaoDetalhado.PrepareReport;
        repComissaoDetalhado.ShowReport;
      end
      else
        msg_sem_dados;
    end;

    15..16: // Relatorio NFe autorizado e relatorio NFe-cancelados
    begin
     if not GeraRelatorioCFe(cbRelatorio.ItemIndex, dtpDataInicial.Date, dtpDataFinal.Date, 'NFe',false,'',inttostr(cfop)) then
        msg_sem_dados;
    end;

    17..18: //Relatorio de pagamento antecipado/parcial na mesa comanda
    begin
      qrRelVendaPagAntecipado.Close;
      qrRelVendaPagAntecipado.ParamByName('emp').AsInteger := RecProj.iEmp;
      qrRelVendaPagAntecipado.ParamByName('dtini').AsDateTime := dtpDataInicial.Date;
      qrRelVendaPagAntecipado.ParamByName('dtfim').AsDateTime := dtpDataFinal.Date+1;
      if cbRelatorio.ItemIndex=17 then // pagamentos ativos
        qrRelVendaPagAntecipado.ParamByName('situacao').asinteger:=4
      else
        qrRelVendaPagAntecipado.ParamByName('situacao').asinteger:=2;
      qrRelVendaPagAntecipado.Open;
      if qrRelVendaPagAntecipado.RecordCount > 0 then
      begin
        repVendaPagAntecipado.PrepareReport;
        repVendaPagAntecipado.showreport;
      end
      else
        msg_sem_dados;
    end;

    19 : //Relatório de fluxo financeiro
    begin
     if not GeraRelatorioResumoFinanceiro then msg_sem_dados;
    end;

    20 :  //Relatórios de produtos com margem de lucro
    begin
      filtro := format('where m.emp_001=%d ', [recproj.iEmp]);
      if cbFiltroCategoria.ItemIndex>0 then
      begin
        filtro := filtro + ' and m.cat_001=' +cbFiltroCategoria.Values[cbFiltroCategoria.ItemIndex];
      end;
      qrRelListaProdutos.Close;
      qrRelListaProdutos.SQL[qrRelListaProdutos.SQL.Count-2] := filtro ;
      qrRelListaProdutos.Open;
      if qrRelListaProdutos.RecordCount>0 then
      begin
        repListaProdutos.PrepareReport;
        repListaProdutos.showreport;
      end
      else
        Application.MessageBox('Sem dados para exibir!', 'Atenção', MB_ICONINFORMATION);
    end ;

    21 :  //Lista de Sangria e Suprimentos  V:2.24  Rafael
    begin
      qrRelRetiradaesuprimento.Close;
      qrRelRetiradaesuprimento.ParamByName('emp').AsInteger := RecProj.iEmp;   // Empresa
      qrRelRetiradaesuprimento.ParamByName('dtini').AsDateTime := dtpDataInicial.Date; // Data inicial
      qrRelRetiradaesuprimento.ParamByName('dtfim').AsDateTime := dtpDataFinal.Date+1; // Data final
      qrRelRetiradaesuprimento.Open;
      if qrRelRetiradaesuprimento.RecordCount>0 then
      begin
        repRetiradaesuprimentos.PrepareReport;
        repRetiradaesuprimentos.showreport;
      end
      else
        Application.MessageBox('Sem dados para exibir!', 'Atenção', MB_ICONINFORMATION);
    end;

    22 :  //Relatório de pagamentos
    begin
      qrRelRecebimentosFormaPag.Close;
      qrRelRecebimentosFormaPag.ParamByName('emp').AsInteger := RecProj.iEmp;   // Empresa
      qrRelRecebimentosFormaPag.ParamByName('dtini').AsDateTime := dtpDataInicial.Date; // Data inicial
      qrRelRecebimentosFormaPag.ParamByName('dtfim').AsDateTime := dtpDataFinal.Date+1; // Data final
      qrRelRecebimentosFormaPag.Open;
      if qrRelRecebimentosFormaPag.RecordCount>0 then
      begin
        repRecebimentosFormaPag.PrepareReport;
        repRecebimentosFormaPag.showreport;
      end
      else
        Application.MessageBox('Sem dados para exibir!', 'Atenção', MB_ICONINFORMATION);
    end;
    23..24 :  //Relatorio de CFe Emitidos / Cancelados     MFE
    begin
      if not GeraRelatorioCFe(cbRelatorio.ItemIndex, dtpDataInicial.Date, dtpDataFinal.Date, 'MFE') then
        msg_sem_dados;
    end ;

    25: // Relatorio de Contas a pagar
    begin
      case cbFiltroSituacao.ItemIndex of
          0 : filtro_status  := ' and cp.id_situacao = 4 ';   //Não pagas
          1 : filtro_status  := ' and cp.id_situacao = 4 and cp.data_vencimento <= localtimestamp '; //vencidas
          2 : filtro_status  := ' and cp.id_situacao = 7 ';   //Paga
          3 : filtro_status  := ' and cp.id_situacao = 2 ';   //Cancelada
          else filtro_status := '';
      end;

      info_filtro := format('Situação: %s | Período de %s: %s a %s',
                            [cbFiltroSituacao.Text, 'Vencimento',
                             FormatDateTime('dd/mm/yyyy', dtpDataInicial.Date),
                             FormatDateTime('dd/mm/yyyy', dtpDataFinal.Date)]);

      qrCPagar.Close;
      qrCPagar.SQL.Text:= 'select cp.id_cpagar, cp.descricao, cp.nota, cp.data, cp.data_vencimento, cp.documento, cp.valor, cp.valor_pago, (cp.valor-cp.valor_pago) as aberto, '+
                          'cast (case cp.especie '+
                          'when 0 then  ''Boleto'' '+
                          'when 1 then  ''Cartão'' '+
                          'when 2 then  ''Cheque'' '+
                          'when 3 then  ''Crediário'' '+
                          'when 4 then  ''Débito Conta'' '+
                          'when 5 then  ''Duplicata'' '+
                          'when 6 then  ''Nota avulsa'' '+
                          'when 7 then  ''Promissória'' '+
                          'else ''Não informado'' end  as varchar(20) ) as especie_desc, '+
                          'f.nome_fantasia as nome_fornecedor, '+
                          'c.descricao as conta_desc, '+
                          'cp.id_situacao, '+
                          'ui.usu_002 as usuario_insercao, '+
                          'uc.usu_002 as usuario_cancelamento, '+
                          'cp.data_cancelamento, '+
                          'cp.id_caixa, '+
                          'cp.itemcaixaitem, '+
                          'cp.id_movimentocc '+
                          'from cpagar cp '+
                          'join fornecedor f on f.id_fornecedor= cp.id_fornecedor and f.id_empresa=cp.id_empresa '+
                          'join conta c on c.id_conta= cp.id_conta and c.id_empresa=cp.id_empresa '+
                          'left join usuarios ui on ui.usu_001=cp.id_usuario '+
                          'left join usuarios up on up.usu_001=cp.id_usuario_pagamento '+
                          'left join usuarios uc on uc.usu_001=cp.id_usuario_cancelamento '+
                          'where cp.id_empresa = :id_empresa '+
                          'and cp.data_vencimento BETWEEN :DTINI AND :DTFIM '+
                          filtro_status;

      qrCPagar.ParamByName('id_empresa').AsInteger := RecProj.iEmp;   // Empresa
      qrCPagar.ParamByName('dtini').AsDateTime     := dtpDataInicial.Date; // Data inicial
      qrCPagar.ParamByName('dtfim').AsDateTime     := dtpDataFinal.Date + 1; // Data final
      qrCPagar.Open;

      if qrCPagar.RecordCount > 0 then
      begin
        RepCpagar.Variables['sInfoFiltro'] := QuotedStr(info_filtro);
        repCPagar.PrepareReport;
        repCPagar.showreport;
      end
      else
        Application.MessageBox('Sem dados para exibir!', 'Atenção', MB_ICONINFORMATION);
    end;

    26: // Relatorio de nota de entrada
     begin
      qrNotaentrada.Close;
      qrNotaentrada.ParamByName('id_empresa').AsInteger := RecProj.iEmp;   // Empresa
      qrNotaentrada.ParamByName('dtini').AsDateTime := dtpDataInicial.Date; // Data inicial
      qrNotaentrada.ParamByName('dtfim').AsDateTime := dtpDataFinal.Date+1; // Data final
      qrNotaentrada.Open;
     if  qrNotaentrada.RecordCount>0 then
      begin
        rpNotaentrada.PrepareReport;
        rpNotaentrada.showreport;
      end
      else
        Application.MessageBox('Sem dados para exibir!', 'Atenção', MB_ICONINFORMATION);
    end;

    27: // Relatório de vendas por garçom         18/05/2017   Rafael
    begin
      qrVendasporgarcom.Close;
      qrVendasporgarcom.ParamByName('dtini').AsDateTime := dtpDataInicial.Date; // Data inicial
      qrVendasporgarcom.ParamByName('dtfim').AsDateTime := dtpDataFinal.Date+1; // Data final
      qrVendasporgarcom.Open;
      if qrVendasporgarcom.RecordCount>0 then
      begin
        rpVendasporgarcom.showreport;
      end
      else
        Application.MessageBox('Sem dados para exibir!', 'Atenção', MB_ICONINFORMATION);
    end;

    28: //Relatorio de Contas a receber
    begin
      case cbFiltroSituacao.ItemIndex of
        0 : filtro_status  := ' and cr.id_situacao = 4 ';   //Não recebidas
        1 : filtro_status  := ' and cr.id_situacao = 4 and cr.data_vencimento <= localtimestamp '; //vencidas
        2 : filtro_status  := ' and cr.id_situacao = 7 ';   //Recebida
        3 : filtro_status  := ' and cr.id_situacao = 2 ';   //Cancelada
        else filtro_status := '';
      end;

      info_filtro := format('Situação: %s | Período de %s: %s a %s',
                          [cbFiltroSituacao.Text, 'Vencimento',
                           FormatDateTime('dd/mm/yyyy', dtpDataInicial.Date),
                           FormatDateTime('dd/mm/yyyy', dtpDataFinal.Date)]);

      qrCReceber.Close;
      qrCReceber.SQL.Text:= 'select cr.id_creceber, cr.descricao, cr.nota, cr.data, cr.data_vencimento, '+
                            'cr.documento, cr.valor, cast (case cr.especie '+
                            'when 0 then  ''Boleto'' '+
                            'when 1 then  ''Cartão'' '+
                            'when 2 then  ''Cheque'' '+
                            'when 3 then  ''Crediário'' '+
                            'when 4 then  ''Débito Conta'' '+
                            'when 5 then  ''Duplicata'' '+
                            'when 6 then  ''Nota avulsa'' '+
                            'when 7 then  ''Promissória'' '+
                            'else ''Não informado'' end  as varchar(20) ) as especie_desc, '+
                            'f.cli_002 as nome_cliente, '+
                            'c.descricao as conta_desc, '+
                            'cr.id_situacao, '+
                            'ui.usu_002 as usuario_insercao, '+
                            'uc.usu_002 as usuario_cancelamento, '+
                            'cr.data_cancelamento, '+
                            'coalesce(cr.valor_desconto, 0.00) as valor_desconto, '+
                            'coalesce(cr.valor_acrescimo, 0.00) as valor_acrescimo, '+
                            'coalesce(cr.valor_pago, 0.00) as valor_pago, '+
                            'coalesce(cr.valor_juros, 0.00) as valor_juros, '+
                            '(coalesce(cr.valor, 0.00) + coalesce(cr.valor_acrescimo, 0.00) + coalesce(cr.valor_juros, 0.00) - coalesce(cr.valor_desconto, 0.00) - coalesce(cr.valor_pago, 0.00)) as valor_aberto '+
                            'from creceber cr '+
                            'join clientes f on f.cli_001= cr.id_cliente and f.emp_001=cr.id_empresa '+
                            'join conta c on c.id_conta= cr.id_conta and c.id_empresa=cr.id_empresa '+
                            'left join usuarios ui on ui.usu_001=cr.id_usuario '+
                            'left join usuarios up on up.usu_001=cr.id_usuario_pagamento '+
                            'left join usuarios uc on uc.usu_001=cr.id_usuario_cancelamento  '+
                            'where cr.id_empresa = :id_empresa '+
                            'and cr.data_vencimento BETWEEN :DTINI AND :DTFIM '+
                            filtro_status;

      qrCReceber.ParamByName('id_empresa').AsInteger := RecProj.iEmp;   // Empresa
      qrCReceber.ParamByName('dtini').AsDateTime     := dtpDataInicial.Date; // Data inicial
      qrCReceber.ParamByName('dtfim').AsDateTime     := dtpDataFinal.Date + 1; // Data final
      qrCReceber.Open;

      if qrCReceber.RecordCount > 0 then
      begin
        repCReceber.Variables['sInfoFiltro'] := QuotedStr(info_filtro);
        repCReceber.PrepareReport;
        repCReceber.showreport;
      end
      else
        Application.MessageBox('Sem dados para exibir!', 'Atenção', MB_ICONINFORMATION);
    end;

  29: //Relatório de produtos vendidos com margem de lucro
    begin
      qrVendasLucro.Close;
      qrVendasLucro.SQL.Text:= 'SELECT MAT.MAT_003, MAT.MAT_004, SUM(ITE.ITE_002) AS QTDEVENDA, SUM(ITE.ITE_005) AS VLRVENDA, '+
                               'SUM(COALESCE(ITE.ITE_002, 0.00) * COALESCE(MAT.MAT_012, 0.00)) AS TOT_CUSTO, (SUM(COALESCE(ITE.ITE_005, 0.00)) - SUM(COALESCE(ITE.ITE_002, 0.00) * COALESCE(MAT.MAT_012, 0.00))) AS LUCRO, '+
                               'CASE WHEN SUM(COALESCE(ITE.ITE_002, 0.00) * COALESCE(MAT.MAT_012, 0.00)) > 0 THEN ((SUM(COALESCE(ITE.ITE_005, 0.00)) - SUM(COALESCE(ITE.ITE_002, 0.00) * COALESCE(MAT.MAT_012, 0.00))) / SUM(COALESCE(ITE.ITE_002, 0.00) * COALESCE(MAT.MAT_012, 0.01))) * 100 '+
                               'ELSE 100.00 END AS MARGEM '+
                               'FROM VENDAITEM ITE  '+
                               'LEFT OUTER JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_001) AND (MAT.MAT_001 = ITE.MAT_001) '+
                               'LEFT OUTER JOIN VENDA VEN ON (VEN.EMP_001 = ITE.EMP_001) AND (VEN.VEN_001 = ITE.VEN_001) '+
                               'WHERE VEN.VEN_004 BETWEEN :DTINI AND :DTFIM '+
                               'AND VEN.SIT_001 = 1 '+
                               'AND MAT.MAT_008 > 0 '+
                               'AND VEN.EMP_001 = :EMP '+
                               'and ite.sit_001 not in (0,1,2,3) '+
                               'GROUP BY MAT.MAT_004,MAT.MAT_003 '+
                               'ORDER BY MAT.MAT_004';

      qrVendasLucro.ParamByName('DTINI').AsDateTime := dtpDataInicial.Date;
      qrVendasLucro.ParamByName('DTFIM').AsDateTime := dtpDataFinal.Date + 1;
      qrVendasLucro.ParamByName('EMP').AsInteger    := RecProj.iEmp;
      qrVendasLucro.Open;

      if qrVendasLucro.RecordCount > 0 then
      begin
        str_aux := format('%s a %s',[formatdatetime('dd/mm/yyyy',dtpDataInicial.Date),
                                    formatdatetime('dd/mm/yyyy',dtpDataFinal.Date)] );

        repVendasLucro.Variables['sPeriodo']   := QuotedStr('PERIODO: ' + str_aux);
        repVendasLucro.Variables['sTituloRep'] := QuotedStr('RELATÓRIO DE PRODUTOS VENDIDOS - MARGEM DE LUCRO');
        repVendasLucro.PrepareReport;
        repVendasLucro.ShowReport;
      end
      else
        msg_sem_dados;
    end;

  30:  //Relatórios de produtos (Valorização)
    begin
      filtro := format('where m.emp_001=%d ', [recproj.iEmp]);
      if cbFiltroCategoria.ItemIndex>0 then
      begin
        filtro := filtro + ' and m.cat_001=' +cbFiltroCategoria.Values[cbFiltroCategoria.ItemIndex];
      end;
      qrProdValorizacao.Close;
      qrProdValorizacao.SQL[qrProdValorizacao.SQL.Count-2] := filtro ;
      qrProdValorizacao.Open;
      if qrProdValorizacao.RecordCount>0 then
      begin
        repProdValorizacao.PrepareReport;
        repProdValorizacao.showreport;
      end
      else
        Application.MessageBox('Sem dados para exibir!', 'Atenção', MB_ICONINFORMATION);
    end ;
  end;
end;

procedure TfrmRelatorioVendas.cbRelatorioChange(Sender: TObject);
begin
  gbFiltroTipoVenda.Enabled := (cbRelatorio.ItemIndex in [0..4]);
  gbFiltroNFe.Enabled := (cbRelatorio.ItemIndex in [14..15]);
  lbFiltroCategoria.Enabled := (cbRelatorio.ItemIndex in [0..2, 19]);
  cbFiltroCategoria.Enabled := (cbRelatorio.ItemIndex in [0..2, 19]);
  lbSituacao.Visible        := (cbRelatorio.ItemIndex in [25,28]);
  cbFiltroSituacao.Visible  := (cbRelatorio.ItemIndex in [25,28]);
  edCodigofornecedor.Enabled:=(cbRelatorio.ItemIndex)=26;
  edCodigoCliente.Enabled:=(cbrelatorio.ItemIndex)=27;

  cbFiltroSituacao.Items.Clear;

  if cbRelatorio.ItemIndex = 25 then //Contas a Pagar
  begin
    cbFiltroSituacao.Items.Add('Não Pagas');
    cbFiltroSituacao.Items.Add('Vencidas');
    cbFiltroSituacao.Items.Add('Pagas');
    cbFiltroSituacao.Items.Add('Canceladas');
    cbFiltroSituacao.Items.Add('Todas');
  end
  else if cbRelatorio.ItemIndex = 28 then //Contas a Receber
  begin
    cbFiltroSituacao.Items.Add('Não Recebidas');
    cbFiltroSituacao.Items.Add('Vencidas');
    cbFiltroSituacao.Items.Add('Recebidas');
    cbFiltroSituacao.Items.Add('Canceladas');
    cbFiltroSituacao.Items.Add('Todas');
  end;

  cbFiltroSituacao.ItemIndex:= 4;
end;

procedure TfrmRelatorioVendas.FormShow(Sender: TObject);
var dia, mes, ano : word;
begin
  //preenche os filtros de data com o primeiro dia do mes e com o dia atual
  DecodeDate(date, ano, mes, dia);
  dtpDataInicial.Date:= EncodeDate(ano, mes, 1);
  dtpDataFinal.Date:=EncodeDate(ano, mes, dia);
  cbRelatorioChange(nil);

  self.Width := self.Constraints.MinWidth;
  self.Height := self.Constraints.MinHeight;
end;

end.
