unit uControleNotaFiscalSaida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, Vcl.StdCtrls, AdvGlowButton,
  Vcl.ComCtrls, AdvGroupBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, MemDS, DBAccess, Uni,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxImageComboBox, System.Actions,
  Vcl.ActnList, ACBrBase, ACBrDFe, ACBrNFe, pcnConversao, ACBrDANFCeFortesFr,
  pcnConversaoNFe, ACBrDFeSSL, System.StrUtils, AcbrUtil, ACBrNFeNotasFiscais, pcnNFe,
  ACBrNFeDANFEFRDM, ACBrNFeDANFEClass, ACBrNFeDANFEFR, ACBrNFeDANFeRLClass,
  Vcl.Menus, JvExStdCtrls, JvCombobox, JvDBCombobox, Vcl.OleCtrls, SHDocVw,
  system.Math, system.DateUtils, Vcl.Samples.Spin, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, blcksock, ACBrDFeReport,
  ACBrDFeDANFeReport;

type
  TfrmControleNotaFiscalSaida = class(TfrmModelo)
    AdvGroupBox3: TAdvGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    lbCliente: TLabel;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    btPesquisar: TAdvGlowButton;
    cbFiltroData: TComboBox;
    cbFiltroSituacao: TComboBox;
    edCodCliente: TcxButtonEdit;
    Label1: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qrNotaSaida: TUniQuery;
    qrNotaSaidaid_nota_saida: TIntegerField;
    qrNotaSaidaid_cliente: TIntegerField;
    qrNotaSaidacfop: TWideStringField;
    qrNotaSaidavalor_total: TFloatField;
    qrNotaSaidavalor_desconto: TFloatField;
    qrNotaSaidavalor_base_icms: TFloatField;
    qrNotaSaidavalor_icms: TFloatField;
    qrNotaSaidaid_situacao: TIntegerField;
    btCancelar: TAdvGlowButton;
    dsNotaSaida: TDataSource;
    cxGrid1DBTableView1cfop: TcxGridDBColumn;
    cxGrid1DBTableView1valor_total: TcxGridDBColumn;
    cxGrid1DBTableView1valor_desconto: TcxGridDBColumn;
    cxGrid1DBTableView1valor_base_icms: TcxGridDBColumn;
    cxGrid1DBTableView1valor_icms: TcxGridDBColumn;
    cxGrid1DBTableView1id_situacao: TcxGridDBColumn;
    qrNotaSaidanome_cliente: TWideStringField;
    cxGrid1DBTableView1nome_cliente: TcxGridDBColumn;
    qrNotaSaidaserie: TIntegerField;
    qrNotaSaidanumero: TIntegerField;
    cxGrid1DBTableView1serie: TcxGridDBColumn;
    cxGrid1DBTableView1numero: TcxGridDBColumn;
    ActionList1: TActionList;
    acBuscaCliente: TAction;
    btIncluirNF: TAdvGlowButton;
    btCancelarNF: TAdvGlowButton;
    btExcluirNF: TAdvGlowButton;
    btEditarNF: TAdvGlowButton;
    ACBrNFe1: TACBrNFe;
    btEnviarNFE: TAdvGlowButton;
    qrDadosEmpresa: TUniQuery;
    qrDadosEmpresacnpj: TWideStringField;
    qrDadosEmpresarazao_social: TWideStringField;
    qrDadosEmpresanome_fantasia: TWideStringField;
    qrDadosEmpresatelefone: TWideStringField;
    qrDadosEmpresainscmun: TWideStringField;
    qrDadosEmpresaemit_uf: TWideStringField;
    qrDadosEmpresaemit_cep: TWideStringField;
    qrDadosEmpresaemit_logradouro: TWideStringField;
    qrDadosEmpresaemit_end_numero: TWideStringField;
    qrDadosEmpresaemit_end_complemento: TWideStringField;
    qrDadosEmpresaemit_bairro: TWideStringField;
    qrDadosEmpresaemit_cidade: TWideStringField;
    qrDadosEmpresaemit_codmunicip_ibge: TWideMemoField;
    qrDadosEmpresaregime: TIntegerField;
    qrDadosEmpresaie: TWideStringField;
    qrNotaSaidacfop_descricao: TWideStringField;
    qrNotaSaidalogradouro_cliente: TWideStringField;
    qrNotaSaidanumero_end_cliente: TWideStringField;
    qrNotaSaidacomplemento_end_cliente: TWideStringField;
    qrNotaSaidabairro_cliente: TWideStringField;
    qrNotaSaidamunicipio_cliente: TWideStringField;
    qrNotaSaidacodmunicip_ibge_cliente: TWideMemoField;
    qrNotaSaidaestado_cliente: TWideStringField;
    qrNotaSaidacpfcnpj_cliente: TWideStringField;
    qrNotaSaidaItem: TUniQuery;
    qrNotaSaidaItemid_nota_saida: TIntegerField;
    qrNotaSaidaItemid_empresa: TIntegerField;
    qrNotaSaidaItemitem: TIntegerField;
    qrNotaSaidaItemid_material: TIntegerField;
    qrNotaSaidaItemcst: TIntegerField;
    qrNotaSaidaItemcfop: TWideStringField;
    qrNotaSaidaItemquantidade: TFloatField;
    qrNotaSaidaItemvalor_unitario: TFloatField;
    qrNotaSaidaItemvalor_total: TFloatField;
    qrNotaSaidaItemvalor_frete: TFloatField;
    qrNotaSaidaItemvalor_seguro: TFloatField;
    qrNotaSaidaItemvalor_despesas: TFloatField;
    qrNotaSaidaItemb_icms_retido: TBooleanField;
    qrNotaSaidaItemicms_aliq: TFloatField;
    qrNotaSaidaItemicms_aliq_reducao: TFloatField;
    qrNotaSaidaItemvalor_base_icms: TFloatField;
    qrNotaSaidaItemvalor_icms: TFloatField;
    qrNotaSaidaItemicms_aliq_sub: TFloatField;
    qrNotaSaidaItemvalor_base_icms_sub: TFloatField;
    qrNotaSaidaItemvalor_icms_sub: TFloatField;
    qrNotaSaidaItemvalor_icms_isento: TFloatField;
    qrNotaSaidaItemvalor_icms_nao_trib: TFloatField;
    qrNotaSaidaItemtipo_ipi: TIntegerField;
    qrNotaSaidaItemipi_aliq: TFloatField;
    qrNotaSaidaItemvalor_base_ipi: TFloatField;
    qrNotaSaidaItemvalor_ipi: TFloatField;
    qrNotaSaidaItemid_situacao: TIntegerField;
    qrNotaSaidaItemncm: TWideStringField;
    qrNotaSaidaItemvalor_pis: TFloatField;
    qrNotaSaidaItemvalor_cofins: TFloatField;
    qrNotaSaidaItemunidade: TWideStringField;
    qrNotaSaidaItemserial: TWideStringField;
    qrNotaSaidaItemnumeracao: TWideStringField;
    qrNotaSaidaItemcomplemento_descricao: TWideStringField;
    qrNotaSaidaItemdescricao_material: TWideStringField;
    qrNotaSaidaItemcodigo_material: TWideStringField;
    qrNotaSaidaItemestoque: TFloatField;
    qrNotaSaidaItemcst_descricao: TWideStringField;
    qrNotaSaidaItemcfop_descricao: TWideStringField;
    qrNotaSaidaItemcsosn: TIntegerField;
    qrNotaSaidaItemcso_descricao: TWideStringField;
    qrNotaSaidaItemvalor_desconto: TFloatField;
    qrNotaSaidaItemvalor_subtotal: TFloatField;
    qrNotaSaidaItemvalor_desconto_perc: TFloatField;
    qrNotaSaidaItempeso_unitario_liquido: TFloatField;
    qrNotaSaidaItempeso_unitario_bruto: TFloatField;
    qrNotaSaidaItemvalor_base_pis_cofins: TFloatField;
    qrNotaSaidaItemcofins_aliq: TFloatField;
    qrNotaSaidaItempis_aliq: TFloatField;
    qrNotaSaidaItemcst_pis_descricao: TWideStringField;
    qrNotaSaidaItemcst_cofins_descricao: TWideStringField;
    qrNotaSaidaItemcest: TWideStringField;
    qrNotaSaidaItemicms_origem: TIntegerField;
    qrNotaSaidaItemcst_pis: TWideStringField;
    qrNotaSaidaItemcst_cofins: TWideStringField;
    qrNotaSaidaie: TWideStringField;
    qrNotaSaidaItemaliqmunicipal: TFloatField;
    qrNotaSaidaItemaliqestadual: TFloatField;
    qrNotaSaidaItemaliqfederal: TFloatField;
    qrNotaSaidavalor_base_icms_sub: TFloatField;
    qrNotaSaidavalor_icms_sub: TFloatField;
    qrNotaSaidavalor_frete: TFloatField;
    qrNotaSaidavalor_seguro: TFloatField;
    qrNotaSaidavalor_ipi: TFloatField;
    qrNotaSaidavalor_pis: TFloatField;
    qrNotaSaidavalor_cofins: TFloatField;
    qrNotaSaidavalor_despesas: TFloatField;
    qrNotaSaidavalor_produtos: TFloatField;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    qrNotaSaidaItemmvast: TFloatField;
    qrNotaSaidatipo_pessoa: TWideStringField;
    qrNotaSaidasituacao_ie: TWideStringField;
    btImprimir: TAdvGlowButton;
    qrNotaSaidadata_saida: TDateField;
    qrNotaSaidadata_emissao: TDateField;
    qrNotaSaidachave_autorizacao: TWideStringField;
    qrNotaSaidachave_cancelamento: TWideStringField;
    cxGrid1DBTableView1data_emissao: TcxGridDBColumn;
    qrNotaSaidafinalidade: TIntegerField;
    qrNotaSaidachave_nf_devolvida: TWideStringField;
    btRelatorio: TAdvGlowButton;
    qrNotaSaidaDocRef: TUniQuery;
    qrNotaSaidaDocRefid_nota_saida: TIntegerField;
    qrNotaSaidaDocRefid_empresa: TIntegerField;
    qrNotaSaidaDocRefitem: TIntegerField;
    qrNotaSaidaDocReftipo_doc: TWideStringField;
    qrNotaSaidaDocRefchave_nfe: TWideStringField;
    qrNotaSaidaDocRefnumero_ecf: TIntegerField;
    qrNotaSaidaDocRefnumero_cupom_ecf: TIntegerField;
    qrNotaSaidaDocRefid_situacao: TIntegerField;
    qrNotaSaidainfo_complementar: TWideMemoField;
    qrNotaSaidanumero_fatura: TWideStringField;
    qrNotaSaidatipo_pagamento: TIntegerField;
    qrNotaSaidaDuplicata: TUniQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField6: TIntegerField;
    qrNotaSaidaDuplicatanumero_duplicata: TWideStringField;
    qrNotaSaidaDuplicatavalor: TFloatField;
    qrNotaSaidaDuplicatadata_vencimento: TDateField;
    pmOpcoes: TPopupMenu;
    Inutilizao1: TMenuItem;
    Cartadecorreo1: TMenuItem;
    btOpcoes: TAdvGlowButton;
    qrNotaSaidacarta_correcao_sequencial: TIntegerField;
    qrNotaSaidatransp_numero_volumes: TWideStringField;
    qrNotaSaidatransp_quantidade_volumes: TIntegerField;
    qrNotaSaidatransp_especie: TWideStringField;
    qrNotaSaidatransp_marca: TWideStringField;
    qrNotaSaidatransp_peso_liquido: TFloatField;
    qrNotaSaidatransp_peso_bruto: TFloatField;
    qrNotaSaidatransp_modalidade: TIntegerField;
    qrNotaSaidatransp_nome: TWideStringField;
    qrNotaSaidatransp_cnpj: TWideStringField;
    qrNotaSaidatransp_ie: TWideStringField;
    qrNotaSaidatransp_endereco: TWideMemoField;
    qrNotaSaidatransp_uf: TWideStringField;
    qrNotaSaidatransp_cidade: TWideStringField;
    Enviarporemail1: TMenuItem;
    btEnviaremail: TAdvGlowButton;
    qrNotaSaidatransp_placa_numero: TWideStringField;
    qrNotaSaidatransp_placa_uf: TWideStringField;
    qrNotaSaidatransp_rntc: TWideStringField;
    edCFOP: TcxButtonEdit;
    lbCFOP: TLabel;
    acBuscaCFOP: TAction;
    Label2: TLabel;
    cbFiltroFinalidade: TJvDBComboBox;
    Label25: TLabel;
    qrNotaSaidaItemcodigo_anp: TWideStringField;
    N1: TMenuItem;
    N2: TMenuItem;
    Editarcliente1: TMenuItem;
    qrNotaSaidacep_cliente: TWideStringField;
    N3: TMenuItem;
    ImportarOramento1: TMenuItem;
    qrNotaSaidaid_orcamento: TIntegerField;
    qrNotaSaidaItemid_setor: TIntegerField;
    qrNotaSaidaemail_cliente: TWideStringField;
    C1: TMenuItem;
    qrNotaSaidatelefone_cliente: TWideStringField;
    qrNotaSaidaItemutiliza_combo: TBooleanField;
    qrNotaSaidaPagamentos: TUniQuery;
    qrNotaSaidaPagamentosid_nota_saida: TIntegerField;
    qrNotaSaidaPagamentosid_empresa: TIntegerField;
    qrNotaSaidaPagamentositem: TIntegerField;
    qrNotaSaidaPagamentosid_forma: TIntegerField;
    qrNotaSaidaPagamentosvalor: TFloatField;
    qrNotaSaidaPagamentosforma: TWideStringField;
    qrNotaSaidaPagamentoscnpjcred: TWideStringField;
    qrNotaSaidaPagamentosbandeira_cartao: TWideStringField;
    qrNotaSaidaPagamentossfi_codigo: TIntegerField;
    qrNotaSaidaPagamentosautorizacao: TWideStringField;
    qrNotaSaidaItemnao_relevante: TBooleanField;
    qrNotaSaidaItemcnpj_fabricante: TWideStringField;
    qrAux1: TUniQuery;
    qrNotaSaidabaixou_estoque: TBooleanField;
    qrNotaSaidaindpres: TIntegerField;
    qrNotaSaidaPagamentostipo_integracao: TIntegerField;
    procedure btCancelarClick(Sender: TObject);
    procedure edCodClienteExit(Sender: TObject);
    constructor Create(sender : Tcomponent); reintroduce;
    procedure btIncluirNFClick(Sender: TObject);
    procedure acBuscaClienteExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btPesquisarClick(Sender: TObject);
    procedure btEditarNFClick(Sender: TObject);
    procedure btExcluirNFClick(Sender: TObject);
    function ConfiguraACBRNFE : boolean;
    procedure btEnviarNFEClick(Sender: TObject);
    procedure GerarNFe;
    procedure btImprimirClick(Sender: TObject);
    procedure btCancelarNFClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure LancarVenda;
    procedure LancarEstoque(Movimento : string = 'S');
    procedure btRelatorioClick(Sender: TObject);
    procedure Inutilizao1Click(Sender: TObject);
    procedure Cartadecorreo1Click(Sender: TObject);
    procedure btOpcoesClick(Sender: TObject);
    procedure Enviarporemail1Click(Sender: TObject);
    procedure edCFOPExit(Sender: TObject);
    procedure acBuscaCFOPExecute(Sender: TObject);
    procedure Editarcliente1Click(Sender: TObject);
    function VerificaNFEEmitidaTimeout(chave_nfe: string): boolean;
    procedure AutorizaNFE(id_nota, finalidade, id_orcamento : integer);
    procedure FormShow(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure VerificaDadosCliente;
    function StringInSet(const S: String;
  const StringSet: array of String): Boolean;
  private
    { Private declarations }
    cod_cliente, i_where, iAmbiente, iFormaEmissao, id_usuario_nota :integer;
    path_cancelamento, path_correcao : string;
    b_config_nfe_ok : boolean;
    bNaoBaixarEstoque: boolean;
  public
    { Public declarations }
  end;

var
  frmControleNotaFiscalSaida: TfrmControleNotaFiscalSaida;

implementation

{$R *.dfm}

uses uMenu, uFuncoes, uDetalheNotaSaida, uBuscaRegistro, Funcao_DB,
  uInutilizacaoNFCe, uRelatorioVendas, uEnvioEmail, uDetalheCliente,
  uDetalheNotaSaidaItem;


procedure TfrmControleNotaFiscalSaida.LancarEstoque(Movimento : string = 'S');
begin
  //lança os itens
  qrNotaSaidaItem.First;
  while not qrNotaSaidaItem.eof do
  begin
    InserirMovimentoProduto(qrNotaSaidaItem.FieldByName('id_material').AsInteger,
                            qrNotaSaidaItem.FieldByName('quantidade').AsFloat,
                            Movimento,'Nota: '+ qrNotaSaidaItem.FieldByName('id_nota_saida').asstring,
                            id_usuario_nota,0, 0, 'M', false,
                            0, 0, 0, date + time, false, qrNotaSaidaItem.FieldByName('utiliza_combo').AsBoolean,
                            qrNotaSaidaItem.FieldByName('id_setor').AsInteger);
    qrNotaSaidaItem.Next;
  end;
end;

procedure TfrmControleNotaFiscalSaida.LancarVenda;
var str_sql : string;
    id_venda : integer;
    id_encerravenda : integer;
begin
  // lança a venda
  id_venda:= NovoId('venda', 'ven_001', recproj.iEmp, 'emp_001');
  str_sql := ' insert into venda '+
             ' (ven_001, ven_002, emp_001, dat_001_1, cli_001, ' +  //id venda, tipo venda, id_empresa, data_abertura, id_cliente
             ' sit_001, usu_001_1, VEN_024, ven_029, ' +            // situacao, usuario abertura, tipo venda, numero venda,
             ' ven_004, ven_023, id_caixa_abertura, terminal_abertura) ' +  //data_abertura, 'vai saber oq ue é esse campo',  id_caixa, terminal
             ' values ( :id_venda , 0 , :emp, LOCALTIMESTAMP, :id_cliente,'+
             ' 1, :id_usuario, ''P'', (select coalesce(max(ven_001) ,0)+1 from  venda where emp_001 = :emp), ' +
             ' LOCALTIMESTAMP, ''N'', :id_caixa_abertura, :terminal_abertura)';
  ExecutaComandoSQL(str_sql, vararrayof([id_venda, recproj.iEmp,
                                         qrNotaSaida.FieldByName('id_cliente').AsInteger,
                                         id_usuario_nota, recproj.iIDCaixa, NomeDoTerminal]));
  //lança os itens
  qrNotaSaidaItem.First;
  while not qrNotaSaidaItem.eof do
  begin
    str_sql :='insert into vendaitem '+
              '(emp_001, ven_001, mat_001, ite_001, ite_002, ite_003, '+  //ite_001=nro_item, ite_002=quantidade, ite_003=valor_unit
              ' ite_005,    '+  //valor_total,
              ' ite_012, sit_001, ite_011, ite_008, '+ //flag pago, situacao, pendente impressao, impresso
              ' acrescimo, desconto)'+
              'values (:emp, :id_venda, :id_material, :nro_item, :quantidade, :valor_unit, '+
              ' :valor_total,  '+
              ' ''N'', 4, ''N'', ''N'', ' +
              ' :acrescimo, :desconto )';
    ExecutaComandoSQL(str_sql, vararrayof([recproj.iEmp, id_venda,
                           qrNotaSaidaItem.FieldByName('id_material').AsInteger,
                           qrNotaSaidaItem.FieldByName('item').AsInteger,
                           qrNotaSaidaItem.FieldByName('quantidade').Asfloat,
                           qrNotaSaidaItem.FieldByName('valo_unitario').Asfloat,
                           qrNotaSaidaItem.FieldByName('valor_total').Asfloat,
                           qrNotaSaidaItem.FieldByName('valor_despesas').Asfloat +
                           qrNotaSaidaItem.FieldByName('valor_frete').Asfloat +
                           qrNotaSaidaItem.FieldByName('valor_seguro').Asfloat ,
                           qrNotaSaidaItem.FieldByName('valor_desconto').Asfloat]));
    qrNotaSaidaItem.Next;
  end;

  //atualiza o valor da venda usando a sp fn_calcula_total_venda
  {ExecutaComandoSQL('select fn_calcula_total_venda(:idvenda,:idempresa);', vararrayof([id_venda, recproj.iEmp]));

 //lança o encerramento da venda
  id_encerravenda := NovoId('encerravenda', 'enc_001', recproj.iEmp, 'emp_001');
  str_sql := ' insert into encerravenda (enc_001, emp_001, ven_001 , cli_001, '+
           ' enc_002, enc_003, for_001, sit_001, enc_006, enc_007, VEN_CPFCONSUM ) '+
           ' values ((select coalesce(max(enc_001),0)+1 from encerravenda where emp_001=:emp), '+
           ' :emp , :id_venda, :id_cliente , localtimestamp,  :valor , '+
           ' :id_forma, 1, :acrescimos, :descontos, :cpf )';
  ExecutaComandoSQL(str_sql, CriaVariantArray([RecProj.iEmp,id_venda, 0, valor,
                  id_formapgto, valor_acrescimos, valor_descontos, cpf_consum]));
  ExecutaConsultaSQL(qrAux1, 'select max(enc_001) from encerravenda where emp_001='+IntToStr(RecProj.iEmp));   }

  {

      str_sql := ' insert into encerravenda (enc_001, emp_001, ven_001 , cli_001, '+
               ' enc_002, enc_003, for_001, sit_001, enc_006, enc_007, VEN_CPFCONSUM ) '+
               ' values ((select coalesce(max(enc_001),0)+1 from encerravenda where emp_001=:emp), '+
               ' :emp , :id_venda, :id_cliente , localtimestamp,  :valor , '+
               ' :id_forma, 1, :acrescimos, :descontos, :cpf )';
    ExecutaComandoSQL(str_sql, CriaVariantArray([RecProj.iEmp,id_venda, 0, valor,
                      id_formapgto, valor_acrescimos, valor_descontos, cpf_consum]));
    ExecutaConsultaSQL(qrAux1, 'select max(enc_001) from encerravenda where emp_001='+IntToStr(RecProj.iEmp));
    id_encerravenda:= qrAux1.Fields[0].AsInteger;

    item:=1;
    while not cdsParcelasPagamentos.Eof do
    begin
      valor:= cdsParcelasPagamentos.FieldByName('valor').AsFloat;
      //se houver troco, corrige o valor em dinheiro
      if (troco>0) and (cdsParcelasPagamentos.FieldByName('dinheiro').AsBoolean) then
      begin
        valor:=valor-troco;
        troco_insert :=  troco;
      end
      else
        troco_insert := 0;

      obs:= cdsParcelasPagamentos.FieldByName('nro_autorizacao').AsString;
      id_formapgto := cdsParcelasPagamentos.FieldByName('id_formapgto').asinteger;

      //insere os dados de item encerramento de venda
      //campos: id_empresa, id_encerramento, id item encerramento, data lançamento,
      //        nro item encerramento, valor, acrescimo, id formapgto
      str_sql := ' insert into encerravendaitem (emp_001, enc_001, ite_001, ite_002, '+
                 ' ite_004, ite_003, ite_005, id_formapgto, troco_dinheiro) ' +
                 ' values (:emp, :id_encerravenda, '+
                 ' :item, localtimestamp, :item,  :valor, 0, :id_forma, :troco_dinheiro );';
      ExecutaComandoSQL(str_sql, CriaVariantArray([RecProj.iEmp, id_encerravenda, item, valor, id_formapgto, troco_insert]));

      //Se for antecipado, o item já foi inserido no caixa, apenas atualiza o caixa item para pegar o item de encerravenda
      if cdsParcelasPagamentos.FieldByName('antecipado').AsBoolean then
      begin
        str_sql:= ' update caixaitem set id_encerravenda = :id_encerravenda, item_encerravenda = :item '+
                  ' where id_caixa = :id_caixa and id_empresa = :id_empresa '+
                  ' and id_formapgto = :id_forma and id_venda = :id_venda  '+
                  ' and id_encerravenda is null and item_encerravenda is null ';



  }

end;

procedure TfrmControleNotaFiscalSaida.GerarNFe;
Var NotaF: NotaFiscal;
    Produto: TDetCollectionItem;
    Servico: TDetCollectionItem;
    Volume: TVolCollectionItem;
    Duplicata: TDupCollectionItem;
    ObsComplementar: TobsContCollectionItem;
    ObsFisco: TobsFiscoCollectionItem;
    Referenciada: TNFrefCollectionItem;
    DI: TDICollectionItem;
    Adicao: TAdiCollectionItem;
    Medicamento: TMedCollectionItem;
    Arma: TArmaCollectionItem;
    Reboque: TreboqueCollectionItem;
    Lacre: TLacresCollectionItem;
    ProcReferenciado: TprocRefCollectionItem;
    cst_icms, msg_erro_endereco : string;
    valor_tributos_ibpt, valor_tributos_ibpt_item  :double;
    int_aux : integer;
    fDIFAL, fFCP, fFCP_ORIGEM, fFCP_DESTINO: Double;
begin
  valor_tributos_ibpt := 0;
  ACBrNFe1.NotasFiscais.Clear;
  NotaF := ACBrNFe1.NotasFiscais.Add;

  //finalidades: 0 = Normal / 3 = Devolucao Saída ; 7 = Devolucao Entrada / 8 = Entrada / 9 = Garantia Saída
  if qrNotaSaida.FieldByName('finalidade').asinteger in [7,8] then
    NotaF.NFe.Ide.tpNF := tnEntrada
  else
    NotaF.NFe.Ide.tpNF := tnSaida;

  NotaF.NFe.Ide.cNF       := qrNotaSaida.FieldByName('numero').asinteger; //Caso não seja preenchido será gerado um número aleatório pelo componente
  NotaF.NFe.Ide.natOp     := copy(qrNotaSaida.FieldByName('cfop_descricao').AsString, 0,60);

  //Se não for nota Normal não se aplica
  if (qrNotaSaida.FieldByName('finalidade').asinteger <> 0) then
    NotaF.NFe.Ide.indPres := pcNao
  else
  begin
    if (qrNotaSaida.FieldByName('indpres').asinteger = 1) then
      NotaF.NFe.Ide.indPres := pcPresencial
    else if (qrNotaSaida.FieldByName('indpres').asinteger = 2) then
      NotaF.NFe.Ide.indPres := pcInternet
    else if (qrNotaSaida.FieldByName('indpres').asinteger = 3) then
      NotaF.NFe.Ide.indPres := pcTeleatendimento
    else if (qrNotaSaida.FieldByName('indpres').asinteger = 9) then
      NotaF.NFe.Ide.indPres := pcOutros;
  end;

  NotaF.NFe.Ide.modelo    := 55;
  NotaF.NFe.Ide.serie     := qrNotaSaida.FieldByName('serie').asinteger;
  NotaF.NFe.Ide.nNF       := qrNotaSaida.FieldByName('numero').asinteger;
  NotaF.NFe.Ide.dEmi      := Date;
  NotaF.NFe.Ide.dSaiEnt   := Date;
  NotaF.NFe.Ide.hSaiEnt   := Now;

  NotaF.NFe.Ide.tpEmis    := TpcnTipoEmissao(iFormaEmissao);
  NotaF.NFe.Ide.tpAmb     := TpcnTipoAmbiente(iAmbiente);
  NotaF.NFe.Ide.verProc   := GetFileVersion(ParamStr(0)); //Versão do sistema
  NotaF.NFe.Ide.cUF       := UFtoCUF(qrDadosEmpresa.FieldByName('emit_uf').AsString);
  NotaF.NFe.Ide.cMunFG    := qrDadosEmpresa.FieldByName('emit_codmunicip_ibge').asinteger;

  //finalidades: 0 = Normal / 3 = Devolucao Saída ; 7 = Devolucao Entrada / 8 = Entrada / 9 = Garantia Saída
  if qrNotaSaida.FieldByName('finalidade').asinteger in [0, 8, 9 ] then
    NotaF.NFe.Ide.finNFe    := fnNormal
  else
    NotaF.NFe.Ide.finNFe    := fnDevolucao;

  if  Assigned(ACBrNFe1.DANFE) then
    NotaF.NFe.Ide.tpImp     := ACBrNFe1.DANFE.TipoDANFE;

  ACBrNFe1.DANFE.Site := LerStringConfig('EDSITE', frmMenu.cdsCFG.FileName);

  NotaF.NFe.Ide.indFinal := cfConsumidorFinal ; //cfNao / cfConsumidorFinal

  if uppercase(qrDadosEmpresa.FieldByName('emit_uf').AsString)=uppercase(qrNotaSaida.FieldByName('estado_cliente').AsString) then
  begin
    NotaF.NFe.Ide.idDest := doInterna;
  end
  else
  begin
    if uppercase(qrNotaSaida.FieldByName('estado_cliente').AsString) ='EX' then
      NotaF.NFe.Ide.idDest := doExterior
    else
      NotaF.NFe.Ide.idDest := doInterestadual;
  end;

  NotaF.NFe.Emit.CNPJCPF           := qrDadosEmpresa.FieldByName('cnpj').AsString;
  NotaF.NFe.Emit.IE                := qrDadosEmpresa.FieldByName('ie').AsString;
  NotaF.NFe.Emit.xNome             := qrDadosEmpresa.FieldByName('razao_social').AsString;
  NotaF.NFe.Emit.xFant             := qrDadosEmpresa.FieldByName('nome_fantasia').AsString;

  NotaF.NFe.Emit.EnderEmit.fone    := qrDadosEmpresa.FieldByName('telefone').AsString;
  NotaF.NFe.Emit.EnderEmit.CEP     := StrToInt(qrDadosEmpresa.FieldByName('emit_cep').AsString);
  NotaF.NFe.Emit.EnderEmit.xLgr    := qrDadosEmpresa.FieldByName('emit_logradouro').AsString;
  NotaF.NFe.Emit.EnderEmit.nro     := qrDadosEmpresa.FieldByName('emit_end_numero').AsString;
  NotaF.NFe.Emit.EnderEmit.xCpl    := qrDadosEmpresa.FieldByName('emit_end_complemento').AsString;
  NotaF.NFe.Emit.EnderEmit.xBairro := qrDadosEmpresa.FieldByName('emit_bairro').AsString;
  NotaF.NFe.Emit.EnderEmit.cMun    := qrDadosEmpresa.FieldByName('emit_codmunicip_ibge').asinteger;
  NotaF.NFe.Emit.EnderEmit.xMun    := qrDadosEmpresa.FieldByName('emit_cidade').AsString;
  NotaF.NFe.Emit.EnderEmit.UF      := qrDadosEmpresa.FieldByName('emit_uf').AsString;
  NotaF.NFe.Emit.enderEmit.cPais   := 1058;
  NotaF.NFe.Emit.enderEmit.xPais   := 'BRASIL';

  NotaF.NFe.Emit.IEST              := '';
  NotaF.NFe.Emit.IM                := '';//'2648800'; // Preencher no caso de existir serviços na nota
  NotaF.NFe.Emit.CNAE              := '';//'6201500'; // Verifique na cidade do emissor da NFe se é permitido a inclusão de serviços na NFe
  NotaF.NFe.Emit.CRT               := TpcnCRT(qrDadosEmpresa.FieldByName('regime').Asinteger-1);// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)

//Para NFe Avulsa preencha os campos abaixo
{
  NotaF.NFe.Avulsa.CNPJ    := '';
  NotaF.NFe.Avulsa.xOrgao  := '';
  NotaF.NFe.Avulsa.matr    := '';
  NotaF.NFe.Avulsa.xAgente := '';
  NotaF.NFe.Avulsa.fone    := '';
  NotaF.NFe.Avulsa.UF      := '';
  NotaF.NFe.Avulsa.nDAR    := '';
  NotaF.NFe.Avulsa.dEmi    := now;
  NotaF.NFe.Avulsa.vDAR    := 0;
  NotaF.NFe.Avulsa.repEmi  := '';
  NotaF.NFe.Avulsa.dPag    := now;
}


  if qrNotaSaida.FieldByName('situacao_ie').AsString='C' then
  begin
    NotaF.NFe.Dest.IE := qrNotaSaida.FieldByName('ie').AsString;
    NotaF.NFe.Dest.indIEDest := inContribuinte;
  end
  else if qrNotaSaida.FieldByName('situacao_ie').AsString='I' then
  begin
    NotaF.NFe.Dest.IE := '';
    NotaF.NFe.Dest.indIEDest := inIsento;
  end
  else
  begin
    NotaF.NFe.Dest.IE := '';
    NotaF.NFe.Dest.indIEDest := inNaoContribuinte;
  end;

  NotaF.NFe.Dest.CNPJCPF           := qrNotaSaida.FieldByName('cpfcnpj_cliente').AsString;
  NotaF.NFe.Dest.ISUF              := '';
  NotaF.NFe.Dest.xNome             := qrNotaSaida.FieldByName('nome_cliente').AsString;

  //valida os dados obrigatorios de endereço
  msg_erro_endereco :='';
  if qrNotaSaida.FieldByName('logradouro_cliente').IsNull then
    msg_erro_endereco := '- Logradouro não informado' +slineBreak;

  if qrNotaSaida.FieldByName('numero_end_cliente').isnull then
    msg_erro_endereco := msg_erro_endereco + '- Número não informado' +slineBreak;

  if  qrNotaSaida.FieldByName('bairro_cliente').isnull then
    msg_erro_endereco := msg_erro_endereco + '- Bairro não informado' +slineBreak;

  if  qrNotaSaida.FieldByName('codmunicip_ibge_cliente').isnull then
    msg_erro_endereco := msg_erro_endereco + '- Código IBGE do municio não informado' +slineBreak;

  if qrNotaSaida.FieldByName('municipio_cliente').isnull then
    msg_erro_endereco := msg_erro_endereco + '- Município não informado' +slineBreak;

  if  qrNotaSaida.FieldByName('estado_cliente').isnull   then
    msg_erro_endereco := msg_erro_endereco + '- Estado não informado' +slineBreak;

  if trim(msg_erro_endereco)<>'' then
  begin
    msg_erro_endereco := 'Dados de endereço do cliente inválidos ou insuficientes:' + slinebreak + msg_erro_endereco;
    raise Exception.Create(msg_erro_endereco);
  end;

  NotaF.NFe.Dest.EnderDest.Fone    := qrNotaSaida.FieldByName('telefone_cliente').AsString;
  NotaF.NFe.Dest.EnderDest.xLgr    := qrNotaSaida.FieldByName('logradouro_cliente').AsString;
  NotaF.NFe.Dest.EnderDest.nro     := qrNotaSaida.FieldByName('numero_end_cliente').AsString;
  NotaF.NFe.Dest.EnderDest.xCpl    := qrNotaSaida.FieldByName('complemento_end_cliente').AsString;
  NotaF.NFe.Dest.EnderDest.xBairro := qrNotaSaida.FieldByName('bairro_cliente').AsString;
  NotaF.NFe.Dest.EnderDest.cMun    := qrNotaSaida.FieldByName('codmunicip_ibge_cliente').asinteger;
  NotaF.NFe.Dest.EnderDest.xMun    := qrNotaSaida.FieldByName('municipio_cliente').AsString;
  NotaF.NFe.Dest.EnderDest.UF      := qrNotaSaida.FieldByName('estado_cliente').AsString;
  NotaF.NFe.Dest.EnderDest.cPais   := 1058;
  NotaF.NFe.Dest.EnderDest.xPais   := 'BRASIL';

  try
    NotaF.NFe.Dest.EnderDest.CEP := strtointdef(StringReplace(qrNotaSaida.FieldByName('cep_cliente').AsString, '-','',[rfReplaceAll]), 0);
  except
    NotaF.NFe.Dest.EnderDest.CEP := 0
  end;

  //Adicionando Produtos
  qrNotaSaidaItem.First;

  //Fundo de Combate a Pobreza
  fFCP:= 0;
  fFCP_ORIGEM:= 0;
  fFCP_DESTINO:= 0;

  while not qrNotaSaidaItem.eof do
  begin
    Produto := NotaF.NFe.Det.Add;
    Produto.Prod.nItem    := qrNotaSaidaItem.FieldByName('item').asinteger;
    Produto.Prod.cProd    := qrNotaSaidaItem.FieldByName('codigo_material').asstring;

    //GTIN 8 ou 13 - Bruno 23-07-2018
    if (length(qrNotaSaidaItem.FieldByName('codigo_material').asstring) = 13) or
        (EAN13Valido(qrNotaSaidaItem.FieldByName('codigo_material').asstring)) then
    begin
      Produto.Prod.cEAN     := qrNotaSaidaItem.FieldByName('codigo_material').asstring;
      Produto.Prod.cEANTrib := qrNotaSaidaItem.FieldByName('codigo_material').asstring;;
    end
    else
    begin
      Produto.Prod.cEAN     := 'SEM GTIN';
      Produto.Prod.cEANTrib := 'SEM GTIN';
    end;

    Produto.Prod.xProd    :=  qrNotaSaidaItem.FieldByName('descricao_material').asstring;

    //Tabela NCM disponível em http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
    Produto.Prod.NCM      :=  qrNotaSaidaItem.FieldByName('ncm').asstring;
    Produto.Prod.EXTIPI   :=  '';
    Produto.Prod.CFOP     :=  qrNotaSaidaItem.FieldByName('cfop').asstring;
    Produto.Prod.uCom     :=  qrNotaSaidaItem.FieldByName('unidade').asstring;
    Produto.Prod.qCom     :=  qrNotaSaidaItem.FieldByName('quantidade').asfloat;
    Produto.Prod.vUnCom   :=  qrNotaSaidaItem.FieldByName('valor_unitario').asfloat;
    Produto.Prod.vProd    :=  qrNotaSaidaItem.FieldByName('valor_total').asfloat - qrNotaSaidaItem.FieldByName('valor_despesas').asfloat + qrNotaSaidaItem.FieldByName('valor_desconto').asfloat ;

    Produto.Prod.uTrib     := qrNotaSaidaItem.FieldByName('unidade').asstring;
    Produto.Prod.qTrib     := qrNotaSaidaItem.FieldByName('quantidade').asfloat;
    Produto.Prod.vUnTrib   := qrNotaSaidaItem.FieldByName('valor_unitario').asfloat;

    Produto.Prod.vOutro    := qrNotaSaidaItem.FieldByName('valor_despesas').asfloat;
    Produto.Prod.vFrete    := qrNotaSaidaItem.FieldByName('valor_frete').asfloat;
    Produto.Prod.vSeg      := qrNotaSaidaItem.FieldByName('valor_seguro').asfloat;
    Produto.Prod.vDesc     := qrNotaSaidaItem.FieldByName('valor_desconto').asfloat;

    Produto.Prod.CEST      := qrNotaSaidaItem.FieldByName('cest').asstring;
    Produto.infAdProd      := qrNotaSaidaItem.FieldByName('complemento_descricao').asstring;

    case AnsiIndexStr(qrNotaSaidaItem.FieldByName('icms_origem').asstring,
      ['0', '1', '2', '3', '4', '5', '6', '7', '8']) of
      0:
        produto.Imposto.ICMS.orig := oeNacional;
      1:
        produto.Imposto.ICMS.orig := oeEstrangeiraImportacaoDireta;
      2:
        produto.Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasil;
      3:
        produto.Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior40;
      4:
        produto.Imposto.ICMS.orig := oeNacionalProcessosBasicos;
      5:
        produto.Imposto.ICMS.orig :=
          oeNacionalConteudoImportacaoInferiorIgual40;
      6:
        produto.Imposto.ICMS.orig :=
          oeEstrangeiraImportacaoDiretaSemSimilar;
      7:
        produto.Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasilSemSimilar;
      8:
        produto.Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior70;
    Else
      raise Exception.Create('Origem do Produto não cadastrada [' +
        qrNotaSaidaItem.FieldByName('icms_origem').asstring + '].');
    end;

    // ICMS
    if qrDadosEmpresa.FieldByName('Regime').AsInteger = 3 then
      cst_icms := FormatFloat('00', qrNotaSaidaItem.FieldByName('cst').AsInteger)
    else
      cst_icms := qrNotaSaidaItem.FieldByName('csosn').AsString;

    case AnsiIndexStr(cst_icms,
      ['00', '10', '20', '30', '40', '41', '45', '50', '51', '60', '70',
      '80', '81', '90', '101', '102', '103', '201', '202', '203', '300',
      '400', '500', '900']) of
      0:
        produto.Imposto.ICMS.CST := cst00;
      1:
        produto.Imposto.ICMS.CST := cst10;
      2:
        produto.Imposto.ICMS.CST := cst20;
      3:
        produto.Imposto.ICMS.CST := cst30;
      4:
        produto.Imposto.ICMS.CST := cst40;
      5:
        produto.Imposto.ICMS.CST := cst41;
      6:
        produto.Imposto.ICMS.CST := cst45;
      7:
        produto.Imposto.ICMS.CST := cst50;
      8:
        produto.Imposto.ICMS.CST := cst51;
      9:
        produto.Imposto.ICMS.CST := cst60;
      10:
        produto.Imposto.ICMS.CST := cst70;
      11:
        produto.Imposto.ICMS.CST := cst80;
      12:
        produto.Imposto.ICMS.CST := cst81;
      13:
        produto.Imposto.ICMS.CST := cst90;
      14:
        produto.Imposto.ICMS.CSOSN := csosn101;
      15:
        produto.Imposto.ICMS.CSOSN := csosn102;
      16:
        produto.Imposto.ICMS.CSOSN := csosn103;
      17:
        produto.Imposto.ICMS.CSOSN := csosn201;
      18:
        produto.Imposto.ICMS.CSOSN := csosn202;
      19:
        produto.Imposto.ICMS.CSOSN := csosn203;
      20:
        produto.Imposto.ICMS.CSOSN := csosn300;
      21:
        produto.Imposto.ICMS.CSOSN := csosn400;
      22:
        produto.Imposto.ICMS.CSOSN := csosn500;
      23:
        produto.Imposto.ICMS.CSOSN := csosn900;
    Else
      raise Exception.Create('CST/CSOSN do Produto não cadastrado [' + cst_icms + '].');
    end;

    // ICMS
    produto.Imposto.ICMS.pICMS := qrNotaSaidaItem.FieldByName('icms_aliq').asfloat;
    produto.Imposto.ICMS.vICMS := qrNotaSaidaItem.FieldByName('valor_icms').asfloat;

    // PIS
    case AnsiIndexStr(qrNotaSaidaItem.FieldByName('cst_pis').asstring, ['01', '02', '03', '04', '05',
      '06', '07', '08', '09', '49', '50', '51', '52', '53', '54', '55',
      '56', '60', '61', '62', '63', '64', '65', '66', '67', '70', '71',
      '72', '73', '74', '75', '98', '99']) of
      0:
        produto.Imposto.PIS.CST := pis01;
      1:
        produto.Imposto.PIS.CST := pis02;
      2:
        produto.Imposto.PIS.CST := pis03;
      3:
        produto.Imposto.PIS.CST := pis04;
      4:
        produto.Imposto.PIS.CST := pis05;
      5:
        produto.Imposto.PIS.CST := pis06;
      6:
        produto.Imposto.PIS.CST := pis07;
      7:
        produto.Imposto.PIS.CST := pis08;
      8:
        produto.Imposto.PIS.CST := pis09;
      9:
        produto.Imposto.PIS.CST := pis49;
      10:
        produto.Imposto.PIS.CST := pis50;
      11:
        produto.Imposto.PIS.CST := pis51;
      12:
        produto.Imposto.PIS.CST := pis52;
      13:
        produto.Imposto.PIS.CST := pis53;
      14:
        produto.Imposto.PIS.CST := pis54;
      15:
        produto.Imposto.PIS.CST := pis55;
      16:
        produto.Imposto.PIS.CST := pis56;
      17:
        produto.Imposto.PIS.CST := pis60;
      18:
        produto.Imposto.PIS.CST := pis61;
      29:
        produto.Imposto.PIS.CST := pis62;
      20:
        produto.Imposto.PIS.CST := pis63;
      21:
        produto.Imposto.PIS.CST := pis64;
      22:
        produto.Imposto.PIS.CST := pis65;
      23:
        produto.Imposto.PIS.CST := pis66;
      24:
        produto.Imposto.PIS.CST := pis67;
      25:
        produto.Imposto.PIS.CST := pis70;
      26:
        produto.Imposto.PIS.CST := pis71;
      27:
        produto.Imposto.PIS.CST := pis72;
      28:
        produto.Imposto.PIS.CST := pis73;
      39:
        produto.Imposto.PIS.CST := pis74;
      30:
        produto.Imposto.PIS.CST := pis75;
      31:
        produto.Imposto.PIS.CST := pis98;
      32:
        produto.Imposto.PIS.CST := pis99;
    Else
      raise Exception.Create('PIS CST do Produto não cadastrado [' +
        qrNotaSaidaItem.FieldByName('cst_pis').asstring + '].');
    end;

    // PIS
    produto.Imposto.PIS.vBC := qrNotaSaidaItem.FieldByName('valor_base_pis_cofins').asfloat;
    produto.Imposto.PIS.pPis := qrNotaSaidaItem.FieldByName('pis_aliq').asfloat;
    produto.Imposto.PIS.qBCProd := 0;
    produto.Imposto.PIS.vPIS := qrNotaSaidaItem.FieldByName('valor_pis').asfloat;
    produto.Imposto.PIS.vAliqProd := 0;

    // PIS ST
    produto.Imposto.PISST.vBC := 0;
    produto.Imposto.PISST.pPis := 0;
    produto.Imposto.PISST.qBCProd := 0;
    produto.Imposto.PISST.vPIS := 0;
    produto.Imposto.PISST.vAliqProd := 0;

    // COFINS
    case AnsiIndexStr(qrNotaSaidaItem.FieldByName('cst_cofins').asstring,
      ['01', '02', '03', '04', '05', '06', '07', '08', '09', '49', '50',
      '51', '52', '53', '54', '55', '56', '60', '61', '62', '63', '64',
      '65', '66', '67', '70', '71', '72', '73', '74', '75', '98', '99']) of
      0:
        produto.Imposto.COFINS.CST := cof01;
      1:
        produto.Imposto.COFINS.CST := cof02;
      2:
        produto.Imposto.COFINS.CST := cof03;
      3:
        produto.Imposto.COFINS.CST := cof04;
      4:
        produto.Imposto.COFINS.CST := cof05;
      5:
        produto.Imposto.COFINS.CST := cof06;
      6:
        produto.Imposto.COFINS.CST := cof07;
      7:
        produto.Imposto.COFINS.CST := cof08;
      8:
        produto.Imposto.COFINS.CST := cof09;
      9:
        produto.Imposto.COFINS.CST := cof49;
      10:
        produto.Imposto.COFINS.CST := cof50;
      11:
        produto.Imposto.COFINS.CST := cof51;
      12:
        produto.Imposto.COFINS.CST := cof52;
      13:
        produto.Imposto.COFINS.CST := cof53;
      14:
        produto.Imposto.COFINS.CST := cof54;
      15:
        produto.Imposto.COFINS.CST := cof55;
      16:
        produto.Imposto.COFINS.CST := cof56;
      17:
        produto.Imposto.COFINS.CST := cof60;
      18:
        produto.Imposto.COFINS.CST := cof61;
      19:
        produto.Imposto.COFINS.CST := cof62;
      20:
        produto.Imposto.COFINS.CST := cof63;
      21:
        produto.Imposto.COFINS.CST := cof64;
      22:
        produto.Imposto.COFINS.CST := cof65;
      23:
        produto.Imposto.COFINS.CST := cof66;
      24:
        produto.Imposto.COFINS.CST := cof67;
      25:
        produto.Imposto.COFINS.CST := cof70;
      26:
        produto.Imposto.COFINS.CST := cof71;
      27:
        produto.Imposto.COFINS.CST := cof72;
      28:
        produto.Imposto.COFINS.CST := cof73;
      29:
        produto.Imposto.COFINS.CST := cof74;
      30:
        produto.Imposto.COFINS.CST := cof75;
      31:
        produto.Imposto.COFINS.CST := cof98;
      32:
        produto.Imposto.COFINS.CST := cof99;
    Else
      raise Exception.Create('COFINS CST do Produto não cadastrado [' +
        qrNotaSaidaItem.FieldByName('cst_cofins').asstring + '].');
    end;

    produto.Imposto.COFINS.vBC := qrNotaSaidaItem.FieldByName('valor_base_pis_cofins').asfloat;
    produto.Imposto.COFINS.pCOFINS := qrNotaSaidaItem.FieldByName('cofins_aliq').asfloat;
    produto.Imposto.COFINS.qBCProd := 0;
    produto.Imposto.COFINS.vCOFINS := qrNotaSaidaItem.FieldByName('valor_cofins').asfloat;
    produto.Imposto.COFINS.vAliqProd := 0;

    // COFINS ST
    produto.Imposto.COFINSST.vBC := 0;
    produto.Imposto.COFINSST.pCOFINS := 0;
    produto.Imposto.COFINSST.vCOFINS := 0;
    produto.Imposto.COFINSST.qBCProd := 0;
    produto.Imposto.COFINSST.vAliqProd := 0;

    valor_tributos_ibpt_item := qrNotaSaidaItem.FieldByName('aliqmunicipal').asfloat +
                                qrNotaSaidaItem.FieldByName('aliqestadual').asfloat +
                                qrNotaSaidaItem.FieldByName('aliqfederal').asfloat;
    // lei da transparencia nos impostos
    Produto.Imposto.vTotTrib := valor_tributos_ibpt_item;
    valor_tributos_ibpt  := valor_tributos_ibpt + valor_tributos_ibpt_item;

    Produto.Imposto.ICMS.modBC   := dbiValorOperacao;

    //    verificar o preeenchimento dos campos abaixo
    Produto.Imposto.ICMS.vBC     := qrNotaSaidaItem.FieldByName('valor_base_icms').asfloat;
    Produto.Imposto.ICMS.pMVAST  := qrNotaSaidaItem.FieldByName('mvast').asfloat;
    Produto.Imposto.ICMS.pICMS   := qrNotaSaidaItem.FieldByName('icms_aliq').asfloat;
    Produto.Imposto.ICMS.vICMS   := qrNotaSaidaItem.FieldByName('valor_icms').asfloat;
    Produto.Imposto.ICMS.modBCST := dbisMargemValorAgregado;

    Produto.Imposto.ICMS.pRedBCST:= 0;

    Produto.Imposto.ICMS.vBCST   := qrNotaSaidaItem.FieldByName('valor_base_icms_sub').asfloat;
    Produto.Imposto.ICMS.pICMSST := qrNotaSaidaItem.FieldByName('icms_aliq_sub').asfloat;
    Produto.Imposto.ICMS.vICMSST := qrNotaSaidaItem.FieldByName('valor_icms_sub').asfloat;
    Produto.Imposto.ICMS.pRedBC  := qrNotaSaidaItem.FieldByName('icms_aliq_reducao').asfloat;

    // partilha do ICMS e fundo de combate a pobreza - Bruno 21-03-2018
    if NotaF.NFe.Emit.CRT = crtSimplesNacional then
    begin
      Produto.Imposto.ICMSUFDest.vBCUFDest      := 0.00;
      Produto.Imposto.ICMSUFDest.pFCPUFDest     := 0.00;
      Produto.Imposto.ICMSUFDest.pICMSUFDest    := 0.00;
      Produto.Imposto.ICMSUFDest.pICMSInter     := 0.00;
      Produto.Imposto.ICMSUFDest.pICMSInterPart := 0.00;
      Produto.Imposto.ICMSUFDest.vFCPUFDest     := 0.00;
      Produto.Imposto.ICMSUFDest.vICMSUFDest    := 0.00;
      Produto.Imposto.ICMSUFDest.vICMSUFRemet   := 0.00;
      Produto.Imposto.ICMSUFDest.vBCFCPUFDest   := 0.00;

      Produto.Imposto.ICMS.pST                  := qrNotaSaidaItem.FieldByName('icms_aliq').asfloat;
    end
    else
    begin
      if (NotaF.NFe.Ide.idDest = doInterestadual) and (NotaF.NFe.Ide.indFinal = cfConsumidorFinal) and (NotaF.NFe.Dest.indIEDest = inNaoContribuinte) then
      begin
        if (NotaF.NFe.Ide.finNFe = fnNormal) or (NotaF.NFe.Ide.finNFe = fnDevolucao) then
        begin
          if (produto.Imposto.ICMS.CST <> cst40) and (produto.Imposto.ICMS.CST <> cst41) then
          begin
            if (Produto.Prod.CFOP <> '1414') and (Produto.Prod.CFOP <> '1415') and (Produto.Prod.CFOP <> '1451') and
               (Produto.Prod.CFOP <> '1452') and (Produto.Prod.CFOP <> '1554') and (Produto.Prod.CFOP <> '1664') and
               (Produto.Prod.CFOP <> '1902') and (Produto.Prod.CFOP <> '1903') and (Produto.Prod.CFOP <> '1904') and
               (Produto.Prod.CFOP <> '1906') and (Produto.Prod.CFOP <> '1907') and (Produto.Prod.CFOP <> '1909') and
               (Produto.Prod.CFOP <> '6552') and (Produto.Prod.CFOP <> '6922') and (Produto.Prod.CFOP <> '6929') and
               (Produto.Prod.CFOP <> '1913') and (Produto.Prod.CFOP <> '1914') and (Produto.Prod.CFOP <> '1916') and
               (Produto.Prod.CFOP <> '1921') and (Produto.Prod.CFOP <> '1925') and (Produto.Prod.CFOP <> '2414') and
               (Produto.Prod.CFOP <> '2415') and (Produto.Prod.CFOP <> '2554') and (Produto.Prod.CFOP <> '2664') and
               (Produto.Prod.CFOP <> '2902') and (Produto.Prod.CFOP <> '2903') and (Produto.Prod.CFOP <> '2904') and
               (Produto.Prod.CFOP <> '2906') and (Produto.Prod.CFOP <> '2907') and (Produto.Prod.CFOP <> '2909') and
               (Produto.Prod.CFOP <> '2913') and (Produto.Prod.CFOP <> '2914') and (Produto.Prod.CFOP <> '2916') and
               (Produto.Prod.CFOP <> '2921') and (Produto.Prod.CFOP <> '2925') and (Produto.Prod.CFOP <> '5664') and
               (Produto.Prod.CFOP <> '5665') and (Produto.Prod.CFOP <> '5902') and (Produto.Prod.CFOP <> '5903') and
               (Produto.Prod.CFOP <> '5906') and (Produto.Prod.CFOP <> '5907') and (Produto.Prod.CFOP <> '5909') and
               (Produto.Prod.CFOP <> '5913') and (Produto.Prod.CFOP <> '5916') and (Produto.Prod.CFOP <> '5925') and
               (Produto.Prod.CFOP <> '6664') and (Produto.Prod.CFOP <> '6665') and (Produto.Prod.CFOP <> '6902') and
               (Produto.Prod.CFOP <> '6903') and (Produto.Prod.CFOP <> '6906') and (Produto.Prod.CFOP <> '6907') and
               (Produto.Prod.CFOP <> '6909') and (Produto.Prod.CFOP <> '6913') and (Produto.Prod.CFOP <> '6916') and
               (Produto.Prod.CFOP <> '6925') and (Produto.Prod.CFOP <> '6552') and (Produto.Prod.CFOP <> '6922') and
               (Produto.Prod.CFOP <> '6929') then
            begin
              Produto.Imposto.ICMSUFDest.vBCFCPUFDest   := Produto.Imposto.ICMS.vBC;
              Produto.Imposto.ICMSUFDest.vBCUFDest      := Produto.Imposto.ICMS.vBC; // Valor Operação
              Produto.Imposto.ICMSUFDest.pFCPUFDest     := 2; // % FCP

              Produto.Imposto.ICMS.pST                  := qrNotaSaidaItem.FieldByName('icms_aliq').asfloat + 2;

              //ALIQUOTA INTERNA DESTINATARIO
              qrAux1.Close;
              qrAux1.SQL.Clear;
              qrAux1.SQL.Text:= 'SELECT C_' + NotaF.NFe.Dest.EnderDest.UF + ' AS INTERNA FROM ALIQUOTAS WHERE UF = :UF';
              qrAux1.ParamByName('UF').AsString:= NotaF.NFe.Dest.EnderDest.UF;
              qrAux1.Open;

              Produto.Imposto.ICMSUFDest.pICMSUFDest    := qrAux1.FieldByName('INTERNA').AsFloat;

              //ALIQUOTA INTERESTADUAL
              qrAux1.Close;
              qrAux1.SQL.Clear;
              qrAux1.SQL.Text:= 'SELECT C_' + NotaF.NFe.Dest.EnderDest.UF + ' AS INTERESTADUAL FROM ALIQUOTAS WHERE UF = :UF';
              qrAux1.ParamByName('UF').AsString:= NotaF.NFe.Emit.EnderEmit.UF;
              qrAux1.Open;

              Produto.Imposto.ICMSUFDest.pICMSInter     := qrAux1.FieldByName('INTERESTADUAL').AsFloat;

              //Em 2019 alterar o pICMSInterPart para 100%
              Produto.Imposto.ICMSUFDest.pICMSInterPart := 80.00; // % Provisório de partilhado

              //Se for Devolução tem que pegar o percentual da data de emissão da NFE referenciada
              //e não do ano atual - Bruno 09/05/2018
              if (NotaF.NFe.Ide.finNFe = fnDevolucao) then
              begin
                if qrNotaSaidaDocRef.RecordCount > 0 then
                begin
                  qrNotaSaidaDocRef.First;

                  //Verifica a data de emissão referenciada
                  qrAux1.Close;
                  qrAux1.SQL.Clear;
                  qrAux1.SQL.Text:= 'SELECT date_part(''year'', DATA_EMISSAO), '+
                                    'case '+
                                    'when date_part(''year'', DATA_EMISSAO) = 2018 then 80.00 '+
                                    'when date_part(''year'', DATA_EMISSAO) = 2017 then 60.00 '+
                                    'when date_part(''year'', DATA_EMISSAO) = 2016 then 40.00 '+
                                    'end as percentual '+
                                    'FROM NOTA_SAIDA WHERE CHAVE_AUTORIZACAO = :CHAVE';
                  qrAux1.ParamByName('CHAVE').AsString:= qrNotaSaidaDocRefchave_nfe.AsString;
                  qrAux1.Open;

                  if qrAux1.RecordCount > 0 then
                    Produto.Imposto.ICMSUFDest.pICMSInterPart := qrAux1.FieldByName('PERCENTUAL').AsFloat; // % Provisório de partilhado
                end;
              end;

              Produto.Imposto.ICMSUFDest.vFCPUFDest     := (Produto.Imposto.ICMS.vBC * Produto.Imposto.ICMSUFDest.pFCPUFDest) / 100; // Valor do FCP

              fFCP:= fFCP + Produto.Imposto.ICMSUFDest.vFCPUFDest;

              //CÁLCULO DIFAL
              fDIFAL:= 0;
              fDIFAL:= Produto.Imposto.ICMS.vBC * ((Produto.Imposto.ICMSUFDest.pICMSUFDest - Produto.Imposto.ICMSUFDest.pICMSInter ) / 100);

              //PARTILHA DIFAL
              Produto.Imposto.ICMSUFDest.vICMSUFDest    := (fDIFAL * Produto.Imposto.ICMSUFDest.pICMSInterPart) / 100; // Valor do ICMS Destino 80%
              Produto.Imposto.ICMSUFDest.vICMSUFRemet   := (fDIFAL * (100 - Produto.Imposto.ICMSUFDest.pICMSInterPart)) / 100; // Valor do ICMS Remetente - 20%

              fFCP_DESTINO:= fFCP_DESTINO + Produto.Imposto.ICMSUFDest.vICMSUFDest;
              fFCP_ORIGEM:= fFCP_ORIGEM + Produto.Imposto.ICMSUFDest.vICMSUFRemet;
            end;
          end;
        end;
      end;
    end;

    //Bruno - 01/08/2018
    if trim(qrNotaSaidaItem.FieldByName('codigo_anp').AsString)<>'' then
    begin
      try
        int_aux := strtoint(qrNotaSaidaItem.FieldByName('codigo_anp').AsString);
        Produto.Prod.comb.cProdANP := int_aux;
        Produto.Prod.comb.descANP  := qrNotaSaidaItem.FieldByName('descricao_material').asstring;
        Produto.Prod.comb.UFcons   := qrNotaSaida.FieldByName('estado_cliente').AsString;

        if trim(qrNotaSaidaItem.FieldByName('codigo_anp').AsString) = '210203001' then
        begin
          Produto.Prod.comb.pGLP     := 100;
          Produto.Prod.comb.pGNn     := 0;
          Produto.Prod.comb.pGNi     := 0;

          qrAux1.Close;
          qrAux1.SQL.Clear;
          qrAux1.SQL.Text:= 'SELECT COALESCE(PESO_PARTIDA_ANP, 0.000) AS PESO_PARTIDA_ANP FROM MATERIAIS WHERE MAT_001 = :MAT_001 AND EMP_001 = :EMP_001';
          qrAux1.ParamByName('MAT_001').AsInteger:= qrNotaSaidaItem.FieldByName('ID_MATERIAL').AsInteger;
          qrAux1.ParamByName('EMP_001').AsInteger:= RecProj.iEmp;
          qrAux1.Open;

          if qrAux1.FieldByName('PESO_PARTIDA_ANP').AsFloat > 0 then
            Produto.Prod.comb.vPart  := TBRound(Produto.Prod.vProd / qrAux1.FieldByName('PESO_PARTIDA_ANP').AsFloat, 2)
          else
            Produto.Prod.comb.vPart  := 0.00;
        end;

        if produto.Imposto.ICMS.CST = cst60 then
        begin
          if StringInSet(trim(qrNotaSaidaItem.FieldByName('codigo_anp').AsString),
          ['210203001','320101001','320101002',
           '320102002','320102001','320102003','320102005','320201001','320102001','320103001','220102001',
           '320301001','320103002','820101032','820101026','820101027','820101004','820101005','820101022',
           '820101031','820101030','820101014','820101006','820101016','820101015','820101025','820101017',
           '820101018','820101019','820101020','820101021','420105001','420101005','420101004','420102005',
           '420106001','420106002','420301002','510101001','510201003','420102004','820101011','830101001',
           '410103001','510101002','510301003','420104001','820101003','420301004','410101001','510102001',
           '510103001','820101033','820101013','420202001','410102001','510102002','510301001','820101034',
           '820101012','420301001','430101004','510201001']) then
          begin
            produto.Imposto.ICMS.CST := cstRep60;
//          produto.Imposto.ICMS.vBCSTRet     := 0; //tem que ser maior que Zero.
//          produto.Imposto.ICMS.vICMSSTRet   := 0;
//          produto.Imposto.ICMS.vBCSTDest    := 0;
//          produto.Imposto.ICMS.vICMSSTDest  := 0;
          end;
        end;
      except
      end;
    end;

    //Se o campo NAO RELEVANTE for falso
    if not qrNotaSaidaItem.FieldByName('nao_relevante').AsBoolean then
    begin
      produto.Prod.indEscala:= ieRelevante; //Relevante
      produto.Prod.CNPJFab:= ''; //Não precisa CNPJ
    end
    else
    begin
      produto.Prod.indEscala:= ieNaoRelevante; //Não Relevante
      produto.Prod.CNPJFab:= qrNotaSaidaItem.FieldByName('cnpj_fabricante').AsString; //CNPJ Fabricante
    end;

    qrNotaSaidaItem.Next;
  end;

  if NotaF.NFe.Emit.CRT = crtSimplesNacional  then
  begin
    NotaF.NFe.Total.ICMSTot.vBC := 0;
  end
  else
  begin
    NotaF.NFe.Total.ICMSTot.vBC := qrNotaSaida.FieldByName('valor_base_icms').asfloat;
  end;

  NotaF.NFe.Total.ICMSTot.vICMS   := qrNotaSaida.FieldByName('valor_icms').asfloat;

  //Se não for nota Normal adiciona sem pagamento
  if (qrNotaSaida.FieldByName('finalidade').asinteger <> 0) then
  begin
    with NotaF.NFe.pag.Add do
    begin
      tPAg      := fpSemPagamento;
      vPag      := 0;
      tpIntegra := tiPagNaoIntegrado;
      CNPJ      := '';
      tBand     := bcOutros;
      cAut      := '';
    end;

    NotaF.NFe.pag.vTroco := 0;
  end
  else
  begin
    //Se não tiver pagamentos adiciona o padrão
    if qrNotaSaidaPagamentos.RecordCount = 0 then
    begin
      with NotaF.NFe.pag.Add do
      begin
        if qrNotaSaidatipo_pagamento.AsInteger = 0 then //A Vista
          tPAg    := fpDinheiro
        else
          tPAg    := fpOutro;

        vPag      := qrNotaSaidavalor_total.AsFloat;
        tpIntegra := tiPagIntegrado;
        CNPJ      := '';
        tBand     := bcOutros;
        cAut      := '';
      end;

      NotaF.NFe.pag.vTroco := 0;
    end
    else //Senão pega dos pagamentos
    begin
      qrNotaSaidaPagamentos.First;
      while not qrNotaSaidaPagamentos.Eof do
      begin
        with NotaF.NFe.pag.Add do
        begin
          CNPJ      := '';
          tBand     := bcOutros;
          cAut      := '';
          vPag      := qrNotaSaidaPagamentosvalor.AsFloat;

          //1-Integrado / 2-Não Integrado
          if qrNotaSaidaPagamentostipo_integracao.AsInteger = 1 then
            tpIntegra := tiPagIntegrado
          else
            tpIntegra := tiPagNaoIntegrado;

          if qrNotaSaidaPagamentossfi_codigo.AsInteger = 1 then
            tPAg    := fpDinheiro
          else if qrNotaSaidaPagamentossfi_codigo.AsInteger = 2 then
            tPAg    := fpCheque
          else if qrNotaSaidaPagamentossfi_codigo.AsInteger = 3 then
            tPAg    := fpCartaoCredito
          else if qrNotaSaidaPagamentossfi_codigo.AsInteger = 4 then
            tPAg    := fpCartaoDebito
          else if qrNotaSaidaPagamentossfi_codigo.AsInteger = 5 then
            tPAg    := fpCreditoLoja
          else if qrNotaSaidaPagamentossfi_codigo.AsInteger = 6 then
            tPAg    := fpValeAlimentacao
          else if qrNotaSaidaPagamentossfi_codigo.AsInteger = 7 then
            tPAg    := fpValeRefeicao
          else if qrNotaSaidaPagamentossfi_codigo.AsInteger = 8 then
            tPAg    := fpValePresente
          else if qrNotaSaidaPagamentossfi_codigo.AsInteger = 9 then
            tPAg    := fpValeCombustivel
          else if qrNotaSaidaPagamentossfi_codigo.AsInteger = 10 then
            tPAg    := fpOutro
          else if qrNotaSaidaPagamentossfi_codigo.AsInteger = 15 then
            tPAg    := fpBoletoBancario;

          if (tPag = fpCartaoCredito) or (tPag = fpCartaoDebito) then
          begin
            //Se for tipo integrado
            if qrNotaSaidaPagamentostipo_integracao.AsInteger = 1 then
            begin
              CNPJ    := qrNotaSaidaPagamentoscnpjcred.AsString;
              cAut    := qrNotaSaidaPagamentosautorizacao.AsString;
            end;

            if qrNotaSaidaPagamentosbandeira_cartao.AsString = 'V' then
              tBand := bcVisa
            else if qrNotaSaidaPagamentosbandeira_cartao.AsString = 'M' then
              tBand := bcMasterCard
            else if qrNotaSaidaPagamentosbandeira_cartao.AsString = 'A' then
              tBand := bcAmericanExpress
            else if qrNotaSaidaPagamentosbandeira_cartao.AsString = 'S' then
              tBand := bcSorocred
            else if qrNotaSaidaPagamentosbandeira_cartao.AsString = 'D' then
              tBand := bcDinersClub
            else if qrNotaSaidaPagamentosbandeira_cartao.AsString = 'E' then
              tBand := bcElo
            else if qrNotaSaidaPagamentosbandeira_cartao.AsString = 'H' then
              tBand := bcHipercard
            else if qrNotaSaidaPagamentosbandeira_cartao.AsString = 'R' then
              tBand := bcAura
            else if qrNotaSaidaPagamentosbandeira_cartao.AsString = 'C' then
              tBand := bcCabal
            else if qrNotaSaidaPagamentosbandeira_cartao.AsString = 'O' then
              tBand := bcOutros;
          end;
        end;

        qrNotaSaidaPagamentos.Next;
      end;

      NotaF.NFe.pag.vTroco := 0;
    end;
  end;

  //FCP
  NotaF.NFe.Total.ICMSTot.vFCPUFDest   := fFCP;
  NotaF.NFe.Total.ICMSTot.vICMSUFDest  := fFCP_DESTINO;
  NotaF.NFe.Total.ICMSTot.vICMSUFRemet := fFCP_ORIGEM;

  NotaF.NFe.Total.ICMSTot.vBCST   := qrNotaSaida.FieldByName('valor_base_icms_sub').asfloat;
  NotaF.NFe.Total.ICMSTot.vST     := qrNotaSaida.FieldByName('valor_icms_sub').asfloat;
  NotaF.NFe.Total.ICMSTot.vProd   := qrNotaSaida.FieldByName('valor_produtos').asfloat;
  NotaF.NFe.Total.ICMSTot.vFrete  := qrNotaSaida.FieldByName('valor_frete').asfloat;
  NotaF.NFe.Total.ICMSTot.vSeg    := qrNotaSaida.FieldByName('valor_seguro').asfloat;
  NotaF.NFe.Total.ICMSTot.vDesc   := qrNotaSaida.FieldByName('valor_desconto').asfloat;
  NotaF.NFe.Total.ICMSTot.vII     := 0;
  NotaF.NFe.Total.ICMSTot.vIPI    := qrNotaSaida.FieldByName('valor_ipi').asfloat;
  NotaF.NFe.Total.ICMSTot.vPIS    := qrNotaSaida.FieldByName('valor_pis').asfloat;
  NotaF.NFe.Total.ICMSTot.vCOFINS := qrNotaSaida.FieldByName('valor_cofins').asfloat;
  NotaF.NFe.Total.ICMSTot.vOutro  := qrNotaSaida.FieldByName('valor_despesas').asfloat;
  NotaF.NFe.Total.ICMSTot.vNF     := qrNotaSaida.FieldByName('valor_total').asfloat;

  // lei da transparencia de impostos
  NotaF.NFe.Total.ICMSTot.vTotTrib := valor_tributos_ibpt;

  qrNotaSaidaDocRef.First;
  while not qrNotaSaidaDocRef.eof  do
  begin
    with NotaF.NFe.Ide.NFref.Add do
    begin
      if qrNotaSaidaDocRef.FieldByName('tipo_doc').AsString='NFE' then
      begin
        refNFe := qrNotaSaidaDocRef.FieldByName('chave_nfe').asstring;
      end
      else
      begin
        RefECF.modelo := ECFModRef2D;
        RefECF.nECF := qrNotaSaidaDocRef.FieldByName('numero_ecf').asstring;
        RefECF.nCOO := qrNotaSaidaDocRef.FieldByName('numero_cupom_ecf').asstring;
      end;
    end;

    qrNotaSaidaDocRef.Next;
  end;

  case qrNotaSaida.FieldByName('transp_modalidade').AsInteger of
    0: NotaF.NFe.Transp.modFrete := mfContaEmitente;
    1: NotaF.NFe.Transp.modFrete := mfContaDestinatario;
    2: NotaF.NFe.Transp.modFrete := mfContaTerceiros;
    3: NotaF.NFe.Transp.modFrete := mfProprioRemetente;
    4: NotaF.NFe.Transp.modFrete := mfProprioDestinatario;
  else
    NotaF.NFe.Transp.modFrete := mfSemFrete;
  end;

  NotaF.NFe.Transp.Transporta.CNPJCPF  := qrNotaSaida.FieldByName('transp_cnpj').asstring;
  NotaF.NFe.Transp.Transporta.xNome    := qrNotaSaida.FieldByName('transp_nome').asstring;
  NotaF.NFe.Transp.Transporta.IE       := qrNotaSaida.FieldByName('transp_ie').asstring;
  NotaF.NFe.Transp.Transporta.xEnder   := qrNotaSaida.FieldByName('transp_endereco').asstring;
  NotaF.NFe.Transp.Transporta.xMun     := qrNotaSaida.FieldByName('transp_cidade').asstring;
  NotaF.NFe.Transp.Transporta.UF       := qrNotaSaida.FieldByName('transp_uf').asstring;

  Volume := NotaF.NFe.Transp.Vol.Add;
  Volume.qVol  := qrNotaSaida.FieldByName('transp_quantidade_volumes').asinteger;
  Volume.esp   := qrNotaSaida.FieldByName('transp_especie').asstring;
  Volume.marca := qrNotaSaida.FieldByName('transp_marca').asstring;
  Volume.nVol  := qrNotaSaida.FieldByName('transp_numero_volumes').asstring;
  Volume.pesoL := qrNotaSaida.FieldByName('transp_peso_liquido').asfloat;
  Volume.pesoB := qrNotaSaida.FieldByName('transp_peso_bruto').asfloat;

  NotaF.NFe.Transp.veicTransp.placa := qrNotaSaida.FieldByName('transp_placa_numero').asstring;
  NotaF.NFe.Transp.veicTransp.UF    := qrNotaSaida.FieldByName('transp_placa_uf').asstring;
  NotaF.NFe.Transp.veicTransp.RNTC  := qrNotaSaida.FieldByName('transp_rntc').asstring;

  if Trim(qrNotaSaida.FieldByName('numero_fatura').AsString) <> EmptyStr then
  begin
    ACBRNFE1.Configuracoes.Geral.CamposFatObrigatorios:= True;
    NotaF.NFe.Cobr.Fat.nFat  := qrNotaSaida.FieldByName('numero_fatura').asstring;
    NotaF.NFe.Cobr.Fat.vOrig := qrNotaSaida.FieldByName('valor_total').asfloat;
    NotaF.NFe.Cobr.Fat.vDesc := 0.00;
    NotaF.NFe.Cobr.Fat.vLiq  := qrNotaSaida.FieldByName('valor_total').asfloat;
  end;

  qrNotaSaidaDuplicata.First;

  while not qrNotaSaidaDuplicata.Eof  do
  begin
    Duplicata := NotaF.NFe.Cobr.Dup.Add;
    Duplicata.nDup  := FormatFloat('000', qrNotaSaidaDuplicata.RecNo);
    Duplicata.dVenc := qrNotaSaidaDuplicata.FieldByName('data_vencimento').asdatetime;
    Duplicata.vDup  := qrNotaSaidaDuplicata.FieldByName('valor').asfloat;

    qrNotaSaidaDuplicata.Next;
  end;

  NotaF.NFe.InfAdic.infCpl     :=  qrNotaSaida.FieldByName('info_complementar').asstring;
  NotaF.NFe.InfAdic.infAdFisco :=  '';

  NotaF.NFe.exporta.UFembarq   := '';;
  NotaF.NFe.exporta.xLocEmbarq := '';

  NotaF.NFe.compra.xNEmp := '';
  NotaF.NFe.compra.xPed  := '';
  NotaF.NFe.compra.xCont := '';

  //gera e assina a nfe
  ACBrNFe1.NotasFiscais.GerarNFe;
end;

procedure TfrmControleNotaFiscalSaida.Inutilizao1Click(Sender: TObject);
begin
  inherited;
  frmInutilizacaoNFCe := TfrmInutilizacaoNFCe.Create(self, 'NFE');
  frmInutilizacaoNFCe.ShowModal;
  frmInutilizacaoNFCe.Free;
end;

procedure TfrmControleNotaFiscalSaida.C1Click(Sender: TObject);
var
  caminho_xml,chave_nota:string;
  data_nota : Tdate;
begin
  inherited;
  // Configuro o componente acbr
  ConfiguraACBRNFE;

  // Guardo a Chave da NFe e a Data da NFe nas variaveis abaixo
  chave_nota := qrNotaSaidachave_autorizacao.AsString;
  data_nota  := qrNotaSaida.FieldByName('data_emissao').asdatetime;

  // Nessa varialvel eu pego o caminho da nota
  caminho_xml := format('%s\%s\%s-nfe.xml',
                               [ACBRNFE1.Configuracoes.Arquivos.PathNFe,
                                FormatDateTime('yyyymm', data_nota),chave_nota]);

  // Consulto a nota pelo XML
  if FileExists(caminho_xml) then
  begin
    try
      ACBrNFe1.NotasFiscais.Clear;
      ACBrNFe1.NotasFiscais.LoadFromFile(caminho_xml);
      ACBrNFe1.Consultar;
    except
      Application.MessageBox(Pchar('Não foi possível carregar o xml no caminho ' + caminho_xml), 'Atenção', MB_ICONINFORMATION);
      exit;
    end;
  end
  else
  begin
    Application.MessageBox(Pchar('Não foi possível carregar o xml no caminho ' + caminho_xml), 'Atenção', MB_ICONINFORMATION);
    exit;
  end;

  // Imprimo a nota novamente
  ACBrNFe1.DANFE.MostraPreview := true;
  ACBrNFe1.DANFE.ImprimirDANFE;
end;

procedure TfrmControleNotaFiscalSaida.Cartadecorreo1Click(Sender: TObject);
var situacao, id_nota, codigo_retorno, cc_sequencial : integer;
    chave, correcao, caminho_xml, msg, str_sql, caminho_xml_correcao : string;
    b_erro : boolean;
    data_nota : Tdate;
begin
  inherited;
  if not b_config_nfe_ok then
  begin
    application.MessageBox('As configurações da NFE não estão corretas, confira a parametrização nas configurações do sistema antes de continuar!',
                           'Atenção', MB_ICONINFORMATION);
    exit;
  end;

  if qrNotaSaida.active then
  begin
    if qrNotaSaida.RecordCount>0 then
    begin
      situacao := qrNotaSaida.FieldByName('id_situacao').AsInteger;
      id_nota  := qrNotaSaida.FieldByName('id_nota_saida').AsInteger;
      data_nota := qrNotaSaida.FieldByName('data_emissao').asdatetime;
      cc_sequencial := qrNotaSaida.FieldByName('carta_correcao_sequencial').AsInteger+1;

      if situacao = 11 then
      begin
        chave:= qrNotaSaida.FieldByName('chave_autorizacao').asstring;
        try
          screen.Cursor := crHourglass;
          try
            correcao := trim(Chama_Justificativa('Correção a ser considerada', '','Correção a ser considerada' ));
            if Length(correcao)<15 then
            begin
              Application.MessageBox('É necessário uma correção com  mais 15 caracteres!', 'Atenção', 0 + 64);
              exit;
            end;

            //se o xml existir, carrega no componente...
            caminho_xml := format('%s\%s\%s-nfe.xml',
                               [ACBRNFE1.Configuracoes.Arquivos.PathNFe,
                                FormatDateTime('yyyymm', data_nota),chave]);
            if fileexists(caminho_xml) then
            begin
              ACBRNFE1.NotasFiscais.clear;
              try
                ACBrNFe1.NotasFiscais.LoadFromFile(caminho_xml);
                b_erro :=false;
              except
                raise Exception.Create(format('Não foi possível carregar o xml no caminho %s',[caminho_xml]));
                b_erro :=true;
              end;
            end
            else
            begin
              raise Exception.Create(format('XML da nota não encontrado no caminho %s',[caminho_xml]));
              b_erro :=true;
            end;

            if not b_erro then
            begin
              ACBrNFe1.EventoNFe.Evento.Clear;

              with ACBrNFe1.EventoNFe.Evento.Add do
              begin
                infEvento.chNFe := chave;
                infEvento.CNPJ   := qrDadosEmpresa.FieldByName('CNPJ').AsString;
                infEvento.dhEvento := now;
                infEvento.tpEvento := teCCe;
                infEvento.nSeqEvento := cc_sequencial;
                infEvento.detEvento.xCorrecao := correcao;
              end;
              ACBrNFe1.EnviarEvento(1);

              //msg := ACBrNFe1.WebServices.EnvEvento.RetWS;
              codigo_retorno:= ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cstat;
              msg := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.xMotivo;

              if codigo_retorno  = 135 then
              begin
                ACBrNFe1.ImprimirEvento;
                caminho_xml_correcao := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.NomeArquivo;
                //retorna o numero do protocolo de vinculo do evento
                Chave :=  copy(caminho_xml_correcao,lastdelimiter('\', caminho_xml_correcao)+1, 52);

                //pega o xml e copia para a pasta de correcao
                caminho_xml := path_correcao + '\' +
                           FormatDateTime('yyyymm', ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.dhRegEvento);
                criarDiretorio(caminho_xml);
                caminho_xml := caminho_xml + '\' + extractfilename(caminho_xml_correcao);
                CopyFileTo(caminho_xml_correcao, caminho_xml, false);
                DeleteFile(caminho_xml_correcao);

                str_sql := 'update nota_saida set carta_correcao_sequencial=:seq, carta_correcao =:correcao where id_nota_saida =:id_nota and id_empresa=:id_empresa';
                ExecutaComandoSQL(str_sql, vararrayof([cc_sequencial, correcao, id_nota, recproj.iEmp ])) ;
              end
              else
              begin
                msg:= 'Código do erro: ' + inttostr(codigo_retorno) + sLineBreak + msg;
                raise Exception.Create(msg);
              end;

            end;

          except
            on E: Exception do
            begin
              msg := 'Erro ao emitir carta de correção! Detalhes do erro:' + sLineBreak + E.Message;
              application.MessageBox(pchar(msg),'Atenção', mb_iconwarning);
              b_erro :=true;
            end;
          end;
        finally
          screen.Cursor := crDefault;
        end;
      end
      else
      begin
        if situacao=2 then
          msg :=  'Esta nota já foi cancelada!'
        else
          msg :=  'Não é possível emitir carta de correção para esta nota pois a mesma ainda não foi enviada à SEFAZ!';

        Application.MessageBox(pchar(msg), 'Atenção', MB_ICONINFORMATION);
      end;
      qrNotaSaida.Refresh;
    end
    else
      Application.MessageBox('Nenhuma nota selecionada!','Atenção', MB_ICONINFORMATION );
  end;
end;

function TfrmControleNotaFiscalSaida.ConfiguraACBRNFE : boolean;
var Ok: boolean;
    str_aguardar, str_tentativas, str_intervalo, str_timeout : string;
    i_aguardar, i_tentativas, i_intervalo, i_timeout : integer;
    path_exe,path_schemas , path_venda, path_inutilizacao, path_evento,
    path_logs, msg, path_logo_danfe : string;
    data_certificado : Tdate;
    dias_certificado_valido : integer;
begin
  try
    ACBRNFE1.SSL.SSLType:= LT_TLSv1_2;

    path_exe          := ExtractFilePath(ParamStr(0));
    path_schemas      := path_exe + 'NFe\Schemas';
    path_venda        := path_exe + 'NFe\NFeVenda';
    path_inutilizacao := path_exe + 'NFe\NFeInutilizacao';
    path_evento       := path_exe + 'NFe\NFeEvento';
    path_logs         := path_exe + 'NFe\NFeLogs';
    path_cancelamento := path_exe + 'NFe\NFeCancelamento';
    path_correcao     := path_exe + 'NFe\NFeCorrecao';
    path_logo_danfe   := LerStringConfig('EDLOGOTIPO', frmMenu.cdsCFG.FileName);

    criarDiretorio(path_venda);
    criarDiretorio(path_inutilizacao);
    criarDiretorio(path_evento);
    criarDiretorio(path_logs);
    criarDiretorio(path_cancelamento);
    criarDiretorio(path_correcao);

    ACBRNFE1.DANFE.TipoDANFE := TpcnTipoImpressao(LerIntegerConfig('CBNFETIPODANFE',frmMenu.cdsCFG.FileName));
    //ACBRNFE1.DANFE.Impressora := LerStringConfig('CAMIMPCAIXA',frmMenu.cdsCFG.FileName);
    ACBRNFE1.DANFE.MostraPreview := true;
    ACBRNFE1.DANFE.Site  :=  recproj.sSiteDevSistema ;
    ACBRNFE1.DANFE.Sistema := recproj.sInfoDevSistema1;
   // ACBRNFE1.DANFE.TributosSeparadamente := true;

    if fileexists(path_logo_danfe) then
      ACBrNFe1.DANFE.Logo := path_logo_danfe
    else
      ACBrNFe1.DANFE.Logo := '';

    ACBRNFE1.Configuracoes.Certificados.ArquivoPFX  := LerStringConfig('EDNFCECAMINHOCERTIFICADO',frmMenu.cdsCFG.FileName);
    ACBRNFE1.Configuracoes.Certificados.Senha       := LerStringConfig('EDNFCESENHACERTIFICADO',frmMenu.cdsCFG.FileName);
    ACBRNFE1.Configuracoes.Certificados.NumeroSerie := LerStringConfig('EDNFCENUMSERIECERTIFICADO',frmMenu.cdsCFG.FileName);

    ACBRNFE1.Configuracoes.Geral.CamposFatObrigatorios:= False;

    with ACBRNFE1.Configuracoes.Geral do
    begin
      ExibirErroSchema := true ; //LerBooleanConfig('CKNFCEEXIBIRERROSCHEMA',frmMenu.cdsCFG.FileName);
      RetirarAcentos   := LerBooleanConfig('CKNFCERETIRARACENTOS',frmMenu.cdsCFG.FileName);
      FormatoAlerta    := LerStringConfig('EDNFCEFORMATOALERTA',frmMenu.cdsCFG.FileName);
      FormaEmissao     := TpcnTipoEmissao(LerIntegerConfig('CBNFCEFORMAEMISSAO',frmMenu.cdsCFG.FileName));
      //ModeloDF         := TpcnModeloDF(LerIntegerConfig('CBNFCEMODELODF',frmMenu.cdsCFG.FileName));
      ModeloDF         :=  moNFe;
      VersaoDF         := TpcnVersaoDF(LerIntegerConfig('CBNFCEVERSAODF',frmMenu.cdsCFG.FileName));
      IdCSC            := LerStringConfig('EDNFCEIDTOKEN',frmMenu.cdsCFG.FileName);
      CSC              := LerStringConfig('EDNFCETOKEN',frmMenu.cdsCFG.FileName);
      Salvar           := LerBooleanConfig('CKNFCESALVAR',frmMenu.cdsCFG.FileName);

      SSLLib := TSSLLib(LerIntegerConfig('CBNFCETIPOEMISSAOSSLLIB', frmMenu.cdsCFG.FileName, 1));
      // campos preenchidos automaticamente pelo componente ao selecionar o tipo SSLLib
      //SSLCryptLib := TSSLCryptLib(LerIntegerConfig('CBNFCECRYPTLIB', frmMenu.cdsCFG.FileName, 1));
      //SSLHttpLib := TSSLHttpLib(LerIntegerConfig('CBNFCEHTTPLIB', frmMenu.cdsCFG.FileName, 3));
      //SSLXmlSignLib := TSSLXmlSignLib(LerIntegerConfig('CBNFCEXMLSIGNLIB', frmMenu.cdsCFG.FileName, 1));
    end;

    ACBrNFe1.SSL.SSLType := LT_TLSv1_2;

    with ACBRNFE1.Configuracoes.WebServices do
    begin
      UF         := LerStringConfig('CBNFCEUF',frmMenu.cdsCFG.FileName);
      Ambiente   := StrToTpAmb(Ok,IntToStr(LerIntegerConfig('RGNFCETIPOAMB',frmMenu.cdsCFG.FileName)+1));
      Visualizar := LerBooleanConfig('CKNCFEVISUALIZAR',frmMenu.cdsCFG.FileName);
      Salvar     := LerBooleanConfig('CKNCFESALVARSOAP',frmMenu.cdsCFG.FileName);
      AjustaAguardaConsultaRet := LerBooleanConfig('CKNCFEAJUSTARAUT',frmMenu.cdsCFG.FileName);

      str_aguardar := LerStringConfig('EDNFCEAGUARDAR',frmMenu.cdsCFG.FileName);
      str_tentativas  := LerStringConfig('EDNFCETENTATIVAS',frmMenu.cdsCFG.FileName);
      str_intervalo := LerStringConfig('EDNFCEINTERVALO',frmMenu.cdsCFG.FileName);
      str_timeout := LerStringConfig('EDNFCETIMEOUT',frmMenu.cdsCFG.FileName);

      if empty(str_aguardar) then  str_aguardar :='1000';
      if empty(str_tentativas) then  str_tentativas :='5';
      if empty(str_intervalo) then  str_intervalo :='1000';
      if empty(str_timeout) then  str_timeout :='20000';

      i_aguardar := StrToInt(str_aguardar);
      i_tentativas := strtoint(str_tentativas);
      i_intervalo :=  strtoint(str_intervalo) ;
      i_timeout :=  strtoint(str_timeout) ;

      if i_aguardar<1000 then i_aguardar:=i_aguardar *1000;
      if i_intervalo<1000 then i_intervalo:= i_intervalo*1000;
      if i_timeout<1000 then i_intervalo:= i_timeout*1000;

      AguardarConsultaRet := i_aguardar;   // tempo padrão que vai aguardar para consultar após enviar a NF-e
      IntervaloTentativas := i_intervalo;  // Intervalo entre as tentativas de envio
      Tentativas          := i_tentativas; // quantidade de tentativas de envio
      TimeOut             := i_timeout;    // tempo de timeout

      ProxyHost := LerStringConfig('EDNFCEPROXYHOST',frmMenu.cdsCFG.FileName);
      ProxyPort := LerStringConfig('EDNFCEPROXYPORTA',frmMenu.cdsCFG.FileName);
      ProxyUser := LerStringConfig('EDNFCEPROXYUSER',frmMenu.cdsCFG.FileName);
      ProxyPass := LerStringConfig('EDNFCEPROXYSENHA',frmMenu.cdsCFG.FileName);
    end;

    with ACBRNFE1.Configuracoes.Arquivos do
    begin
      Salvar             := true;
      SepararPorMes      := true;
      AdicionarLiteral   := false;
      EmissaoPathNFe     := true;
      SalvarEvento       := true;
      SepararPorCNPJ     := false;
      SepararPorModelo   := false;
      PathSalvar         := path_logs;
      PathSchemas        := path_schemas;
      PathNFe            := path_venda;
      PathInu            := path_inutilizacao;
      PathEvento         := path_evento;
    end;

    //iTipoEmissao := LerIntegerConfig('CBNFCETIPOEMISSAO', frmMenu.cdscfg.FileName);
    iAmbiente := LerIntegerConfig('RGNFCETIPOAMB', frmMenu.cdsCFG.FileName);
    //iCrt_Regime := LerIntegerConfig('CBNFCEREGIME', frmMenu.cdscfg.FileName);
    iFormaEmissao :=  LerIntegerConfig('CBNFCEFORMAEMISSAO', frmMenu.cdscfg.FileName);
    result := true;
  except
    on e : Exception do
    begin
      msg := 'Erro ao carregar parâmetros da NFE! Verifique as configurações! Detalhes do erro:' +
             sLineBreak + e.Message;
      application.messagebox(pchar(msg), 'Atenção', MB_ICONWARNING);
      result := false;
    end;
  end;

  //verifica a data de validade do certificado
  if result then
  begin
    //se estiver com os dados do certificado preenchidos, verifica...
    if  ((trim(ACBRNFE1.Configuracoes.Certificados.ArquivoPFX)<>'') and (trim(ACBRNFE1.Configuracoes.Certificados.Senha)<>'')) or
     (trim(ACBRNFE1.Configuracoes.Certificados.NumeroSerie)<>'') then
    begin
      try
        data_certificado := ACBrNFe1.SSL.CertDataVenc;

        if data_certificado< Date then
          application.MessageBox('O certificado da empresa expirou!', 'Atenção', MB_ICONWARNING )
        else
        begin
          dias_certificado_valido := DaysBetween(Date , data_certificado);
          if dias_certificado_valido <=10 then
          begin
            application.MessageBox(pchar(format('O certificado expira em %d dia(s)!',[dias_certificado_valido])), 'Atenção', MB_ICONWARNING)
          end;
        end;
      except
      end;
    end;
  end;

end;

procedure TfrmControleNotaFiscalSaida.btImprimirClick(Sender: TObject);
var situacao, id_nota : integer;
    chave, chave_cancelamento, caminho_xml,msg : string;
    data_nota : Tdate;
  b_erro: Boolean;
begin
  inherited;
  if not b_config_nfe_ok then
  begin
    application.MessageBox('As configurações da NFE não estão corretas, confira a parametrização nas configurações do sistema antes de continuar!',
                           'Atenção', MB_ICONINFORMATION);
    exit;
  end;

  if qrNotaSaida.active then
  begin
    if qrNotaSaida.RecordCount>0 then
    begin
      situacao := qrNotaSaida.FieldByName('id_situacao').AsInteger;
      id_nota  := qrNotaSaida.FieldByName('id_nota_saida').AsInteger;
      data_nota := qrNotaSaida.FieldByName('data_emissao').asdatetime;
      chave:= qrNotaSaida.FieldByName('chave_autorizacao').asstring;
      chave_cancelamento := qrNotaSaida.FieldByName('chave_cancelamento').asstring;
      if (situacao = 11) or (situacao = 2) then
      begin
        try
          screen.Cursor := crHourglass;
          try
            //se o xml existir, carrega no componente...
            caminho_xml := format('%s\%s\%s-nfe.xml',
                               [ACBRNFE1.Configuracoes.Arquivos.PathNFe,
                                FormatDateTime('yyyymm', data_nota),chave]);
            if fileexists(caminho_xml) then
            begin
              ACBRNFE1.NotasFiscais.clear;
              try
                ACBrNFe1.NotasFiscais.LoadFromFile(caminho_xml);
                b_erro :=false;
              except
                raise Exception.Create(format('Não foi possível carregar o xml no caminho %s',[caminho_xml]));
                b_erro :=true;
              end;
            end
            else //tenta pegar a nota no webservice pela chave
            begin
              if application.MessageBox(pchar('O arquivo XML desta nota não foi encontrado salvo neste computador, '+
                                        'gostaria de tentar baixar o XML a partir dos servidores da SEFAZ?'), 'Atenção', MB_ICONQUESTION + MB_YESNO)=mryes then
              begin
//                ACBrNFe1.NotasFiscais.Clear;
//                ACBrNFe1.DownloadNFe.Download.CNPJ:= qrDadosEmpresa.fieldbyname('cnpj').asstring;
//                ACBrNFe1.DownloadNFe.Download.tpAmb:= ACBrNFe1.Configuracoes.WebServices.Ambiente;
//                ACBrNFe1.DownloadNFe.Download.Chaves.Clear;
//                ACBrNFe1.DownloadNFe.Download.Chaves.add;
//                ACBrNFe1.DownloadNFe.Download.Chaves[0].chNFe := qrNotaSaida.fieldbyname('chave_autorizacao').asstring;
//
//                b_erro := not ACBrNFe1.Download;
              end
              else
                b_erro := true;
            end;

            if not b_erro then
            begin
              //nota autorizada
              if situacao = 11 then
              begin
                try
                ACBrNFe1.DANFE.MostraPreview := true;
                except
                showmessage('teste')
                end;
                ACBrNFe1.DANFE.ImprimirDANFE;

              end
              //nota cancelada
              else
              begin
                caminho_xml := format('%s\%s\%s-procEventoNFe.xml',[path_cancelamento, FormatDateTime('yyyymm', data_nota),chave_cancelamento]);
                if fileexists(caminho_xml) then
                begin
                  ACBrNFe1.EventoNFe.Evento.Clear;
                  ACBrNFe1.EventoNFe.LerXML(caminho_xml) ;
                  ACBrNFe1.ImprimirEvento;
                end
                else
                begin
                  raise Exception.Create(format('Não foi possível carregar o xml de cancelamento no caminho %s',[caminho_xml]));
                end;
              end;
            end;

          except
            on E: Exception do
            begin
              msg := 'Erro ao imprimir! Detalhes do erro:' + sLineBreak + E.Message;
              application.MessageBox(pchar(msg),'Atenção', mb_iconwarning);
              b_erro :=true;
            end;
          end;
        finally
          screen.Cursor := crDefault;
        end;
      end
      else
      begin
        Application.MessageBox('Não é possível imprimir esta nota pois a mesma não foi enviada à SEFAZ!', 'Atenção', MB_ICONINFORMATION);
      end;
      qrNotaSaida.Refresh;
    end
    else
      Application.MessageBox('Nenhuma nota selecionada!','Atenção', MB_ICONINFORMATION );
  end;

end;

procedure TfrmControleNotaFiscalSaida.btIncluirNFClick(Sender: TObject);
begin
  inherited;
  frmDetalheNotaSaida := TfrmDetalheNotaSaida.Create(self, id_usuario_nota);
  frmDetalheNotaSaida.ShowModal;
  frmDetalheNotaSaida.Free;
  qrNotaSaida.Refresh;
end;

procedure TfrmControleNotaFiscalSaida.btOpcoesClick(Sender: TObject);
var lPoint : tpoint;
begin
  lPoint := btOpcoes.ClientToScreen(Point(0,0));
  pmOpcoes.Popup(lPoint.X, lPoint.Y+btOpcoes.Height );
end;

procedure TfrmControleNotaFiscalSaida.btPesquisarClick(Sender: TObject);
var filtro : string;
begin
  inherited;
  qrNotaSaida.Close;
  filtro :=  'where ns.id_empresa=' + inttostr(recproj.iEmp);
  case cbFiltroData.ItemIndex of
    0: filtro := filtro + ' and ns.data_emissao>=:data_inicio and  ns.data_emissao<:data_fim ';
    1: filtro := filtro + ' and ns.data_saida>=:data_inicio and  ns.data_saida<:data_fim ';
    2: filtro := filtro + ' and ns.data_cancelamento>=:data_inicio and  ns.data_cancelamento<:data_fim ';
  end;

  if cod_cliente<>0 then
  begin
    filtro := filtro + format(' and ns.id_cliente = %d', [cod_cliente]);
  end;

  case cbFiltroSituacao.ItemIndex of
    1: filtro := filtro + ' and ns.id_situacao = 0' ;// em digitacao
    2: filtro := filtro + ' and ns.id_situacao = 11' ;// autorizada
    3: filtro := filtro + ' and ns.id_situacao = 2' ;// cancelada
  end;

  if trim(edCFOP.Text)<>'' then
  begin
    filtro := filtro + ' and ns.cfop=' + QuotedStr(trim(edCFOP.Text));
  end;

  if cbFiltroFinalidade.ItemIndex>0 then
  begin
    filtro := filtro + ' and ns.finalidade = ' +  cbFiltroFinalidade.Values[cbFiltroFinalidade.ItemIndex];
  end;

  qrNotaSaida.SQL[i_where] :=filtro;

  qrNotaSaida.ParamByName('data_inicio').AsDate := dtpDataInicial.Date;
  qrNotaSaida.ParamByName('data_fim').AsDate := dtpDataFinal.Date+1;
  qrNotaSaida.Open;
end;

procedure TfrmControleNotaFiscalSaida.btRelatorioClick(Sender: TObject);
begin
  inherited;
  frmRelatorioVendas := TfrmRelatorioVendas.Create(self, 15);
  frmRelatorioVendas.ShowModal;
  frmRelatorioVendas.Free;
end;

constructor TfrmControleNotaFiscalSaida.Create(sender : Tcomponent);
var ano, mes, dia : word;
begin
  inherited Create(sender);
  cod_cliente := 0;
  if not frmMenu.ConfirmacaoSenha('b_acesso_nfe', id_usuario_nota) then abort;

  qrDadosEmpresa.Close;
  qrDadosEmpresa.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrDadosEmpresa.open;

  DecodeDate(date, ano, mes, dia);
  dtpDataInicial.Date:= EncodeDate(ano, mes, 1);
  dtpDataFinal.Date:=EncodeDate(ano, mes, dia);

  cbFiltroData.ItemIndex := 0;
  cbFiltroSituacao.ItemIndex := 0;
  cbFiltroFinalidade.ItemIndex := 0;

  b_config_nfe_ok := ConfiguraACBRNFE;

  i_where := qrNotaSaida.SQL.Count -2;

  btPesquisar.Click;
end;


procedure TfrmControleNotaFiscalSaida.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  btEditarNFClick(nil);
end;

procedure TfrmControleNotaFiscalSaida.acBuscaCFOPExecute(Sender: TObject);
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

procedure TfrmControleNotaFiscalSaida.acBuscaClienteExecute(Sender: TObject);
var str_sql : string;
begin
  inherited;
  edCodCliente.SetFocus;

  str_sql:= ' select cli_001, cli_002, cli_012, cli_013, fn_situacoes(sit_001) from clientes ';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
    str_sql,
    CriaIntegerArray([0,1,2,3]) ,
    CriaStringArray(['Código', 'Cliente', 'Telefone 1','Telefone 2']),
    0, 1, ' emp_001='+IntToStr(RecProj.iEmp), 800, 500);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
    edCodCliente.Text:= frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.Free;
  edCodClienteExit(nil);
end;

procedure TfrmControleNotaFiscalSaida.btCancelarClick(Sender: TObject);
begin
  inherited;
  self.close;
end;

procedure TfrmControleNotaFiscalSaida.btCancelarNFClick(Sender: TObject);
var situacao, id_nota, codigo_retorno, finalidade : integer;
    msg, chave, caminho_xml, just_canc, str_sql, caminho_xml_cancelamento :string;
    b_erro : boolean;
    data_nota : TDate;
begin
  inherited;
  if not b_config_nfe_ok then
  begin
    application.MessageBox('As configurações da NFE não estão corretas, confira a parametrização nas configurações do sistema antes de continuar!',
                           'Atenção', MB_ICONINFORMATION);
    exit;
  end;

  if qrNotaSaida.active then
  begin
    if qrNotaSaida.RecordCount>0 then
    begin
      situacao := qrNotaSaida.FieldByName('id_situacao').AsInteger;
      id_nota  := qrNotaSaida.FieldByName('id_nota_saida').AsInteger;
      data_nota := qrNotaSaida.FieldByName('data_emissao').asdatetime;
      finalidade := qrNotaSaida.FieldByName('finalidade').AsInteger;

      if situacao = 11 then //autorizada
      begin
        chave:= qrNotaSaida.FieldByName('chave_autorizacao').asstring;
        try
          screen.Cursor := crHourglass;
          try
            just_canc := trim(Chama_Justificativa('Justificativa para cancelamento de Nota de Saída', 'Cancelamento de Nota de Saída','Cancelamento de Nota de Saída' ));

            if Length(just_canc)<15 then
            begin
              Application.MessageBox('É necessário uma justificativa com  mais 15 caracteres!', 'Atenção', 0 + 64);
              exit;
            end;

            //se o xml existir, carrega no componente...
            caminho_xml := format('%s\%s\%s-nfe.xml',
                               [ACBRNFE1.Configuracoes.Arquivos.PathNFe,
                                FormatDateTime('yyyymm', data_nota),chave]);
            if fileexists(caminho_xml) then
            begin
              ACBRNFE1.NotasFiscais.clear;
              try
                ACBrNFe1.NotasFiscais.LoadFromFile(caminho_xml);
                b_erro :=false;
              except
                raise Exception.Create(format('Não foi possível carregar o xml no caminho %s',[caminho_xml]));
                b_erro :=true;
              end;
            end
            else
            begin
              raise Exception.Create(format('XML da nota não encontrado no caminho %s',[caminho_xml]));
              b_erro :=true;
            end;

            //nada de errado.. cancela a nfe
            if not b_erro then
            begin
              ACBrNFe1.EventoNFe.Evento.Clear;
              ACBrNFe1.EventoNFe.idLote := 1 ;
              with ACBrNFe1.EventoNFe.Evento.Add do
              begin
                infEvento.dhEvento := now;
                infEvento.tpEvento := teCancelamento;
                infEvento.detEvento.xJust := just_canc;
              end;
              ACBrNFe1.EnviarEvento(1);
              codigo_retorno:= ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cstat;
              msg := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.xMotivo;


              if codigo_retorno = 135 then  //Evento de candelamento ok!
              begin
                ACBrNFe1.ImprimirEvento;
                caminho_xml_cancelamento := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.NomeArquivo;
                //retorna o numero do protocolo de vinculo do evento
                //Chave := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.nProt;
                Chave :=  copy(caminho_xml_cancelamento,lastdelimiter('\', caminho_xml_cancelamento)+1, 52);

                //pega o xml e copia para a pasta de canceladas
                caminho_xml := path_cancelamento + '\' +
                           FormatDateTime('yyyymm', ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.dhRegEvento);
                criarDiretorio(caminho_xml);
                caminho_xml := caminho_xml + '\' + extractfilename(caminho_xml_cancelamento);
                CopyFileTo(caminho_xml_cancelamento, caminho_xml, false);
                DeleteFile(caminho_xml_cancelamento);

                // atualiza o status da nota
                str_sql := format('update nota_saida set id_situacao=2, chave_cancelamento=%s where id_nota_saida = %d and id_empresa=%d',
                                [quotedstr(chave),id_nota, recproj.iEmp ]);
                ExecutaComandoSQL(str_sql) ;

                qrNotaSaidaItem.Close;
                qrNotaSaidaItem.ParamByName('id_nota_saida').AsInteger := id_nota;
                qrNotaSaidaItem.ParamByName('id_empresa').AsInteger := recproj.iEmp;
                qrNotaSaidaItem.Open;

                if (bNaoBaixarEstoque = False) or (qrNotaSaidabaixou_estoque.AsBoolean) then
                begin
                if finalidade = 0 then //Normal Saída
                  LancarEstoque('E')
                else if finalidade = 8 then //Normal Entrada
                  LancarEstoque('S');
                end;
              end
              else
              begin
                msg:= 'Código do erro: ' + inttostr(codigo_retorno) + sLineBreak + msg;
                raise Exception.Create(msg);
              end;
            end;

          except
            on E: Exception do
            begin
              msg := 'Erro ao cancelar NFe! Detalhes do erro:' + sLineBreak + E.Message;
              application.MessageBox(pchar(msg),'Atenção', mb_iconwarning);
              b_erro :=true;
            end;
          end;
        finally
          screen.Cursor := crDefault;
        end;
      end
      else
      begin
        if situacao=2 then
          msg :=  'Esta nota já foi cancelada!'
        else
          msg :=  'Não é possível cancelar esta nota pois a mesma ainda não foi enviada à SEFAZ!';

        Application.MessageBox(pchar(msg), 'Atenção', MB_ICONINFORMATION);
      end;
      qrNotaSaida.Refresh;
    end
    else
      Application.MessageBox('Nenhuma nota selecionada!','Atenção', MB_ICONINFORMATION );
  end;
end;

procedure TfrmControleNotaFiscalSaida.btEditarNFClick(Sender: TObject);
begin
  inherited;
  if qrNotaSaida.active then
  begin
    if qrNotaSaida.RecordCount>0 then
    begin
      frmDetalheNotaSaida := TfrmDetalheNotaSaida.Create(self, id_usuario_nota, qrNotaSaida.FieldByName('id_nota_saida').AsInteger);
      frmDetalheNotaSaida.ShowModal;
      frmDetalheNotaSaida.Free;
      qrNotaSaida.Refresh;
    end
    else
      Application.MessageBox('Nenhuma nota selecionada!','Atenção', MB_ICONINFORMATION );
  end;
end;

procedure TfrmControleNotaFiscalSaida.btEnviarNFEClick(Sender: TObject);
var situacao, id_nota, id_orcamento, finalidade : integer;
    msg, str_sql, chave, caminho_xml : string;
    b_erro:boolean;
    valor : double;
begin
  inherited;
  if not b_config_nfe_ok then
  begin
    application.MessageBox('As configurações da NFE não estão corretas, confira a parametrização nas configurações do sistema antes de continuar!',
                           'Atenção', MB_ICONINFORMATION);
    exit;
  end;

  if qrNotaSaida.active then
  begin
    if qrNotaSaida.RecordCount>0 then
    begin
      VerificaDadosCliente;

      situacao := qrNotaSaida.FieldByName('id_situacao').AsInteger;
      id_nota  := qrNotaSaida.FieldByName('id_nota_saida').AsInteger;
      id_orcamento := qrNotaSaida.FieldByName('id_orcamento').AsInteger;
      finalidade := qrNotaSaida.FieldByName('finalidade').AsInteger;

      if situacao = 0 then  //em digitação
      begin
        //carrega os itens da nota atual...
        qrNotaSaidaItem.Close;
        qrNotaSaidaDocRef.Close;
        qrNotaSaidaDuplicata.Close;
        qrNotaSaidaPagamentos.Close;

        qrNotaSaidaItem.ParamByName('id_empresa').AsInteger := recproj.iEmp;
        qrNotaSaidaItem.ParamByName('id_nota_saida').AsInteger := qrNotaSaida.FieldByName('id_nota_saida').AsInteger;

        qrNotaSaidaDocRef.ParamByName('id_empresa').AsInteger := recproj.iEmp;
        qrNotaSaidaDocRef.ParamByName('id_nota_saida').AsInteger := qrNotaSaida.FieldByName('id_nota_saida').AsInteger;

        qrNotaSaidaDuplicata.ParamByName('id_empresa').AsInteger := recproj.iEmp;
        qrNotaSaidaDuplicata.ParamByName('id_nota_saida').AsInteger := qrNotaSaida.FieldByName('id_nota_saida').AsInteger;

        qrNotaSaidaPagamentos.ParamByName('id_empresa').AsInteger := recproj.iEmp;
        qrNotaSaidaPagamentos.ParamByName('id_nota_saida').AsInteger := qrNotaSaida.FieldByName('id_nota_saida').AsInteger;

        qrNotaSaidaItem.open;
        qrNotaSaidaDocRef.open;
        qrNotaSaidaDuplicata.open;
        qrNotaSaidaPagamentos.open;

        if qrNotaSaidaItem.RecordCount<1 then
        begin
          application.MessageBox('Esta nota não possui itens!', 'Atenção', MB_ICONINFORMATION);
          exit;
        end;

        if qrNotaSaidaPagamentos.RecordCount<1 then
        begin
          application.MessageBox('Esta nota não possui pagamentos!', 'Atenção', MB_ICONINFORMATION);
          exit;
        end;

        str_sql := format('select ns.valor_total - coalesce(sub.valor, 0.0) as restante '+
                          ' from nota_saida ns left join (select sum(valor) as valor, id_nota_saida '+
                          ' from nota_saida_pagamentos where id_nota_saida=%d group by id_nota_saida )'+
                          ' sub on ns.id_nota_saida=sub.id_nota_saida '+
                          ' where ns.id_nota_saida=%d ', [qrNotaSaidaid_nota_saida.AsInteger,
                                                         qrNotaSaidaid_nota_saida.AsInteger]);

        BuscaCampo(valor, str_sql, 'restante', false);

        if valor <> 0 then
        begin
          application.MessageBox('O Valor dos pagamentos difere do valor da nota!', 'Atenção', MB_ICONINFORMATION);
          exit;
        end;

        try
          //Atualiza a data se a emissão não for a atual (Em digitação data anterior) - Bruno 08-03-2018
          if qrNotaSaidadata_emissao.AsDateTime <> Date then
          begin
            qrNotaSaida.Edit;
            qrNotaSaidadata_emissao.AsDateTime:= Date;
            qrNotaSaida.Post;
          end;

          //Tenta carregar os dados da nota
          GerarNFe;
          b_erro :=false;
        except
          on E: Exception do
          begin
            msg := 'Erro ao gerar NFe! Detalhes do erro:' + sLineBreak + E.Message;
            application.MessageBox(pchar(msg),'Atenção', mb_iconwarning);
            b_erro :=true;
          end;
        end;

        if not b_erro then // se não haver erros, envia a nota
        begin
          try
            screen.Cursor := crhourglass;
            try
              //tenta enviar a nota
              ACBrNFe1.Enviar(1,True);

              //autoriza a nfe
              AutorizaNFE(id_nota, finalidade, id_orcamento);

            except
              on E: Exception do
              begin
                chave:= Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);

                // Em alguns casos a nfe foi enviada e gerada na Sefaz mas não retorna a tempo... (timeout, conexao interrompida, etc...)
                // ao tentar enviar novamente, é constatada a duplicidade..
                // essa rotina verifica se é este o caso e autoriza a nfe
                if VerificaNFEEmitidaTimeout(chave) then
                  AutorizaNFE(id_nota, finalidade, id_orcamento)
                else
                begin
                  //apaga o xml da nota não autorizada...
                  caminho_xml := format('%s\%s\%s-nfe.xml',
                                       [ACBRNFE1.Configuracoes.Arquivos.PathNFe,
                                        FormatDateTime('yyyymm', date),chave]);
                  if fileexists(caminho_xml) then DeleteFile(caminho_xml);

                  msg := 'Erro ao transmitir NFe! Detalhes do erro:' + sLineBreak + E.Message;
                  application.MessageBox(pchar(msg),'Atenção', mb_iconwarning);
                  b_erro :=true;
                end;
              end;
            end;
          finally
            screen.Cursor := crDefault;
          end;
        end;

      end
      else
      begin
        Application.MessageBox('Esta nota já foi enviada à SEFAZ, não será possível refazer o envio!', 'Atenção', MB_ICONINFORMATION);
      end;
      qrNotaSaida.Refresh;
    end
    else
      Application.MessageBox('Nenhuma nota selecionada!','Atenção', MB_ICONINFORMATION );
  end;
end;

procedure TfrmControleNotaFiscalSaida.VerificaDadosCliente;
var Mensagem: string;
    str_sql : string;
    qr_aux : Tuniquery;
begin
  Mensagem:= EmptyStr;

  str_sql :=format(' select cli_002 as nome, cli_004 as cpf_cnpj, cli_005 as rg_ie , '+
                   ' cast(concat(cep_004, '' '', cli_008, '' '', cidade_desc) as varchar(100)) as endereco, '+
                   ' situacao_ie, cep_004 as logradouro, cli_008 as nro, cep_002 as cep, cep_003 as bairro, cidade_desc, uf '+
                   ' from clientes where cli_001 = %d and emp_001 =%d',
                   [qrNotaSaida.FieldByName('id_cliente').asinteger, recproj.iEmp]);
  qr_aux := CriaUniQuery(self, frmmenu.conexao);

  if ExecutaConsultaSQL(qr_aux, str_sql) then
  begin
    if (qr_aux.fieldbyname('cpf_cnpj').AsString = EmptyStr) or (qr_aux.fieldbyname('cpf_cnpj').AsString = '00000000000') then
      Mensagem:= Mensagem + 'CPF/CNPJ' + #13;

    if (qr_aux.fieldbyname('situacao_ie').AsString = 'C') and (qr_aux.fieldbyname('rg_ie').AsString = EmptyStr) then
      Mensagem:= Mensagem + 'RG/IE' + #13;

    if (qr_aux.fieldbyname('logradouro').AsString = EmptyStr) then
      Mensagem:= Mensagem + 'ENDEREÇO' + #13;

    if (qr_aux.fieldbyname('nro').AsString = EmptyStr) then
      Mensagem:= Mensagem + 'NRO. ENDEREÇO' + #13;

    if (qr_aux.fieldbyname('cep').AsString = EmptyStr) then
      Mensagem:= Mensagem + 'CEP' + #13;

    if (qr_aux.fieldbyname('bairro').AsString = EmptyStr) then
      Mensagem:= Mensagem + 'BAIRRO' + #13;

    if (qr_aux.fieldbyname('cidade_desc').AsString = EmptyStr) then
      Mensagem:= Mensagem + 'CIDADE' + #13;

    if (qr_aux.fieldbyname('uf').AsString = EmptyStr) then
      Mensagem:= Mensagem + 'UF' + #13;

    if Mensagem <> EmptyStr then
    begin
      Application.MessageBox(Pchar('VERIFIQUE OS DADOS ABAIXO NO CADASTRO DO CLIENTE' + #13 + Mensagem), 'Atenção', MB_ICONEXCLAMATION);
      qr_aux.Free;
      Abort;
    end;
  end
  else
  begin
    Application.MessageBox('Cliente não encontrado!', 'Atenção', MB_ICONINFORMATION);
    qrNotaSaida.FieldByName('id_cliente').value := null;
  end;
  qr_aux.Free;
end;

procedure TfrmControleNotaFiscalSaida.AutorizaNFE(id_nota , finalidade, id_orcamento : integer);
var chave, str_sql : string;
begin
  //se não ocorer erros, pega a chave gerada
  chave:= Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);

  //atualiza a nota para autorizada
  str_sql := format('update nota_saida set id_situacao=11, chave_autorizacao=%s, data_emissao=current_date, data_saida=current_date where id_nota_saida = %d and id_empresa=%d',
                  [quotedstr(chave),id_nota, recproj.iEmp ]);
  ExecutaComandoSQL(str_sql) ;

  //Verifica a configuração para baixar o estoque
  if not bNaoBaixarEstoque then
  begin
    if finalidade = 0 then //Normal Saída
      LancarEstoque('S')
    else if finalidade = 8 then //Normal Entrada
      LancarEstoque('E');

    //Atualiza a flag baixou_estoque - Bruno (04/05/2018)
    ExecutaComandoSQL('update nota_saida set baixou_estoque = true where id_nota_saida = :id_nota_saida and id_empresa = :id_empresa',
                       vararrayof([id_nota, recproj.iEmp]));
  end;

  if id_orcamento >0  then
  begin
    str_sql := format('update orcamento set id_situacao=1 where id_orcamento=%d and id_empresa=%d',
                      [id_orcamento, recproj.iEmp ]);
    ExecutaComandoSQL(str_sql) ;
  end;
end;

function TfrmControleNotaFiscalSaida.VerificaNFEEmitidaTimeout(chave_nfe: string): boolean;
var chave_ws: string;
begin
  //verifica se é erro de nfe duplicada (erro numero 204)
  if ACBrNFe1.WebServices.Retorno.cStat=204 then
  begin
    chave_ws := ACBrNFe1.WebServices.Retorno.ChaveNFe;

    //chave do webserver é a mesma da nota atual, então deve autorizar a nota
    result := trim(chave_ws)=trim(chave_nfe);
  end
  else
    result := false;
end;


procedure TfrmControleNotaFiscalSaida.btExcluirNFClick(Sender: TObject);
var situacao, id_nota : integer;
    msg, str_sql : string;
begin
  inherited;
  if qrNotaSaida.active then
  begin
    if qrNotaSaida.RecordCount>0 then
    begin
      situacao := qrNotaSaida.FieldByName('id_situacao').AsInteger;
      id_nota  := qrNotaSaida.FieldByName('id_nota_saida').AsInteger;

      if situacao = 0 then
      begin
        msg := format('Confirma a exclusão da nota %d?',[qrNotaSaida.FieldByName('numero').AsInteger]);
        if Application.MessageBox(pchar(msg), 'Atenção', MB_ICONQUESTION + MB_YESNO)=mryes then
        begin
          str_sql := format('delete from nota_saida_duplicata where id_nota_saida=%d and id_empresa=%d', [id_nota, recproj.iEmp]);
          ExecutaComandoSQL(str_sql);
          str_sql := format('delete from nota_saida_item where id_nota_saida=%d and id_empresa=%d', [id_nota, recproj.iEmp]);
          ExecutaComandoSQL(str_sql);
          str_sql := format('delete from nota_saida_doc_referenciado where id_nota_saida=%d and id_empresa=%d', [id_nota, recproj.iEmp]);
          ExecutaComandoSQL(str_sql);
          str_sql := format('delete from nota_saida_pagamentos where id_nota_saida=%d and id_empresa=%d', [id_nota, recproj.iEmp]);
          ExecutaComandoSQL(str_sql);
          str_sql := format('delete from nota_saida where id_nota_saida=%d and id_empresa=%d', [id_nota, recproj.iEmp]);
          ExecutaComandoSQL(str_sql);
          Application.MessageBox('Nota excluída com sucesso!', 'Atenção', MB_ICONINFORMATION);
          qrNotaSaida.Refresh;
        end;
      end
      else
      begin
        Application.MessageBox('Esta nota já foi enviada à SEFAZ, não será possível sua exclusão!', 'Atenção', MB_ICONINFORMATION);
      end;
    end
    else
      Application.MessageBox('Nenhuma nota selecionada!','Atenção', MB_ICONINFORMATION );
  end;
end;

procedure TfrmControleNotaFiscalSaida.edCFOPExit(Sender: TObject);
var  str_sql : string;
     cfop : integer;
begin
  inherited;
  str_sql := 'select cfop_descricao from cfop where cfop_codigo=''%d'' ';
  LookupBuscaExit(cfop, edCFOP, lbCFOP, str_sql, 'CFOP');
end;

procedure TfrmControleNotaFiscalSaida.edCodClienteExit(Sender: TObject);
var str_sql : string;
begin
  inherited;
  str_sql := 'select cli_002 from clientes where cli_001=%d and emp_001='+inttostr(recproj.iEmp);
  LookupBuscaExit(cod_cliente, edCodCliente, lbCliente, str_sql, 'Cliente');
end;

procedure TfrmControleNotaFiscalSaida.Editarcliente1Click(Sender: TObject);
begin
  inherited;
  if qrnotasaida.Active then
  begin
    if qrnotasaida.RecordCount>0 then
    begin
      frmDetalheCliente := TfrmDetalheCliente.Create(self, qrnotasaida.FieldByName('id_cliente').AsInteger);
      frmDetalheCliente.btEditar.Click;
      frmDetalheCliente.ShowModal;
      frmDetalheCliente.Free;
      qrnotasaida.Refresh;
    end;
  end;
end;

procedure TfrmControleNotaFiscalSaida.Enviarporemail1Click(Sender: TObject);
var chave,caminho_xml : string;
b_erro:boolean;
data_nota:tdate;
caminho_pdf,mensagem, msg, email_cliente:string;
anexos : tstringlist;
begin
  inherited;
  if qrnotasaida.RecordCount>0 then
  begin
    if qrnotasaida.FieldByName('id_situacao').AsInteger=11 then
    begin
      chave:= qrNotaSaida.FieldByName('chave_autorizacao').asstring;
      data_nota := qrNotaSaida.FieldByName('data_emissao').asdatetime;
      email_cliente := qrNotaSaida.FieldByName('email_cliente').asstring;
      caminho_pdf := ExtractFilePath(Application.ExeName)+'tmp\';
      criarDiretorio(caminho_pdf);
      caminho_pdf := caminho_pdf+ 'NFe.pdf';
      try
        screen.Cursor := crHourglass;
        try
          //se o xml existir, carrega no componente...
          caminho_xml := format('%s\%s\%s-nfe.xml',
                             [ACBRNFE1.Configuracoes.Arquivos.PathNFe,
                              FormatDateTime('yyyymm', data_nota),chave]);
          if fileexists(caminho_xml) then
          begin
            ACBRNFE1.NotasFiscais.clear;
            try
              ACBrNFe1.NotasFiscais.LoadFromFile(caminho_xml);
              b_erro :=false;
            except
              b_erro :=true;
              raise Exception.Create(format('Não foi possível carregar o xml no caminho %s',[caminho_xml]));
            end;
          end
          else //tenta pegar a nota no webservice pela chave
          begin
            b_erro :=true;
            raise Exception.Create(format('Não foi possível carregar o xml no caminho %s',[caminho_xml]));

          end;

          if not b_erro then
          begin
            //gerapdf para envio
            ACBrNFe1.DANFE.PathPDF := ExtractFilePath(caminho_pdf);
            ACBrNFe1.DANFe.MostraPreview := false;
            ACBrNFe1.NotasFiscais.ImprimirPDF;
            caminho_pdf:= ACBrNFe1.DANFE.PathPDF +
            Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44) + '-nfe.pdf';

            anexos := tstringlist.Create;
            anexos.Add(caminho_pdf);
            anexos.Add(caminho_xml);

            mensagem:= Recproj.sEmp + sLineBreak + sLineBreak +
                   'Segue anexo o arquivo Danfe da nota fiscal  '+
                   qrnotasaida.FieldByName('numero').AsString + sLineBreak +sLineBreak +
                   'Mensagem automática, não responda a este email';
            frmEnvioEmail := TfrmEnvioEmail.Create(self, email_cliente, 'Envio de Nota fiscal Eletrônica', mensagem, anexos , false);
            frmEnvioEmail.showmodal;
            frmEnvioEmail.free;
            deletefile(caminho_pdf);
          end;
        except
          on E: Exception do
          begin
            msg := 'Erro ao preparar o envio! Detalhes do erro:' + sLineBreak + E.Message;
            application.MessageBox(pchar(msg),'Atenção', mb_iconwarning);
            b_erro :=true;
          end;
        end;
      finally
        screen.Cursor := crDefault;
      end;
    end
    else
    begin
      application.MessageBox('Essa nota não foi autorizada, não será possível o envio!',
                         'Atenção', MB_ICONINFORMATION);
    end;
  end
  else
  begin
   application.MessageBox('Não existem notas para o envio!',
                       'Atenção', MB_ICONINFORMATION);
  end;

end;

procedure TfrmControleNotaFiscalSaida.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_return then Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmControleNotaFiscalSaida.FormShow(Sender: TObject);
begin
  Self.Caption:= frmMenu.Caption + ' - Controle NFE 4.0' ;

  if uppercase ( copy(frmmenu.Caption,1))= 'FCAFOOD' THEN
  begin
    recproj.sInfoDevSistema1 := 'Sistema desenvolvido por FCAFOOD - (38)9 9943-4322 / 99105-3410';
    recproj.sInfoDevSistema2 := 'Sistema desenvolvido por FCAFOOD '+ slinebreak +'Fones:(38)9 9943-4322 / 99105-3410(zAP)';
    recproj.sSiteDevSistema  := '';
  end;

  bNaoBaixarEstoque := LerBooleanConfig('ckNaoBaixarEstoqueNFe',frmMenu.cdsCFG.FileName);
end;

function TfrmControleNotaFiscalSaida.StringInSet(const S: String;
  const StringSet: array of String): Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := Low(StringSet) to High(StringSet) do
    if S = StringSet[I] then
    begin
      Result := True;
      Break;
    end;
end;

end.
