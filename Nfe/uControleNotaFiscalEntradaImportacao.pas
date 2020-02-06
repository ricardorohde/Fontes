unit uControleNotaFiscalEntradaImportacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, Data.DB, Datasnap.DBClient,
  AdvGlowButton, ACBrBase, ACBrDFe, ACBrNFe, Vcl.Grids, Vcl.DBGrids, pcnConversao,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, AdvPageControl, Vcl.ComCtrls, cxCurrencyEdit, cxDBEdit, AdvGroupBox,
  cxDropDownEdit, cxCalendar, cxMaskEdit, cxSpinEdit, cxTextEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxImageComboBox, cxButtonEdit, cxMemo, JvExStdCtrls, JvCombobox, JvDBCombobox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Uni, System.Actions, Vcl.ActnList,system.math,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack,
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
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfrmControleNotaFiscalEntradaImportacao = class(TfrmModelo)
    cdsNotaEntrada: TClientDataSet;
    dsNotaEntrada: TDataSource;
    Label1: TLabel;
    ACBrNFe1: TACBrNFe;
    cdsNotaEntradanumero: TIntegerField;
    cdsNotaEntradaserie: TIntegerField;
    cdsNotaEntradacnpj_fornecedor: TStringField;
    cdsNotaEntradarazao_fornecedor: TStringField;
    cdsNotaEntradadata_emissao: TDateTimeField;
    cdsNotaEntradacfop: TStringField;
    cdsNotaEntradavalor_icms: TFloatField;
    cdsNotaEntradavalor_base_icms: TFloatField;
    cdsNotaEntradavalor_icms_sub: TFloatField;
    cdsNotaEntradavalor_base_icms_sub: TFloatField;
    cdsNotaEntradavalor_frete: TFloatField;
    cdsNotaEntradavalor_seguro: TFloatField;
    cdsNotaEntradavalor_ipi: TFloatField;
    cdsNotaEntradavalor_despesas: TFloatField;
    cdsNotaEntradavalor_desconto: TFloatField;
    cdsNotaEntradavalor_total: TFloatField;
    cdsNotaEntradavalor_produtos: TFloatField;
    cdsNotaEntradavalor_pis: TFloatField;
    cdsNotaEntradavalor_cofins: TFloatField;
    cdsNotaEntradachave_autorizacao: TStringField;
    cdsNotaEntradainfo_complementar: TMemoField;
    cdsNotaEntradacnpj_transportador: TStringField;
    cdsNotaEntradarazao_transportador: TStringField;
    cdsNotaEntradaquantidade_volumes: TIntegerField;
    cdsNotaEntradanumero_volumes: TStringField;
    cdsNotaEntradatransp_especie: TStringField;
    cdsNotaEntradapeso_liquido: TFloatField;
    cdsNotaEntradapeso_bruto: TFloatField;
    cdsNotaEntradatransp_modalidade: TIntegerField;
    cdsNotaEntradatransp_placa: TStringField;
    cdsNotaEntradatransp_placa_uf: TStringField;
    cdsNotaEntradatransp_rntc: TStringField;
    btAdicionarItem: TAdvGlowButton;
    edCaminhoXML: TEdit;
    cdsNotaEntradanome_fantasia_fornecedor: TStringField;
    cdsNotaEntradafornecedor_ie: TStringField;
    cdsNotaEntradafornecedor_telefone: TStringField;
    cdsNotaEntradafornecedor_cep: TStringField;
    cdsNotaEntradafornecedor_logradouro: TStringField;
    cdsNotaEntradafornecedor_end_numero: TStringField;
    cdsNotaEntradafornecedor_end_complemento: TStringField;
    cdsNotaEntradafornecedor_bairro: TStringField;
    cdsNotaEntradafornecedor_cod_ibge: TIntegerField;
    cdsNotaEntradafornecedor_cidade: TStringField;
    cdsNotaEntradafornecedor_uf: TStringField;
    cdsNotaEntradacnpj_destinatario: TStringField;
    cdsNotaEntradaItem: TClientDataSet;
    dsNotaEntradaItem: TDataSource;
    cdsNotaEntradaItemitem: TIntegerField;
    cdsNotaEntradaItemcodigo: TStringField;
    cdsNotaEntradaItemcodigo_ean: TStringField;
    cdsNotaEntradaItemdescricao: TStringField;
    cdsNotaEntradaItemncm: TStringField;
    cdsNotaEntradaItemcfop: TStringField;
    cdsNotaEntradaItemunidade: TStringField;
    cdsNotaEntradaItemquantidade: TFloatField;
    cdsNotaEntradaItemvalor_unitario: TFloatField;
    cdsNotaEntradaItemvalor_total: TFloatField;
    cdsNotaEntradaItemvalor_despesas: TFloatField;
    cdsNotaEntradaItemvalor_seguro: TFloatField;
    cdsNotaEntradaItemvalor_desconto: TFloatField;
    cdsNotaEntradaItemcest: TStringField;
    cdsNotaEntradaItemcomplemento_descricao: TStringField;
    cdsNotaEntradaItemicms_origem: TIntegerField;
    cdsNotaEntradaItemcst_icms: TIntegerField;
    cdsNotaEntradaItemicms_aliq: TFloatField;
    cdsNotaEntradaItemvalor_icms: TFloatField;
    cdsNotaEntradaItemcst_pis: TIntegerField;
    cdsNotaEntradaItemvalor_base_pis_cofins: TFloatField;
    cdsNotaEntradaItempis_aliq: TFloatField;
    cdsNotaEntradaItemvalor_pis: TFloatField;
    cdsNotaEntradaItemcst_cofins: TIntegerField;
    cdsNotaEntradaItemcofins_aliq: TFloatField;
    cdsNotaEntradaItemvalor_cofins: TFloatField;
    cdsNotaEntradaItemvalor_base_icms: TFloatField;
    cdsNotaEntradaItemmvast: TFloatField;
    cdsNotaEntradaItemvalor_base_icms_sub: TFloatField;
    cdsNotaEntradaItemicms_aliq_sub: TFloatField;
    cdsNotaEntradaItemvalor_icms_sub: TFloatField;
    cdsNotaEntradaItemicms_aliq_reducao: TFloatField;
    cdsNotaEntradaItemcsosn: TIntegerField;
    cdsDocRef: TClientDataSet;
    cdsDocReftipo_doc: TStringField;
    cdsDocRefchave_nfe: TStringField;
    cdsDocRefnumero_ecf: TIntegerField;
    cdsDocRefnumero_cupom_ecf: TIntegerField;
    dsDocRef: TDataSource;
    cdsNotaEntradanumero_fatura: TStringField;
    cdsDuplicata: TClientDataSet;
    cdsDuplicatanumero_duplicata: TStringField;
    cdsDuplicatadata_vencimento: TDateField;
    cdsDuplicatavalor: TFloatField;
    dsDuplicata: TDataSource;
    cdsNotaEntradatipo_pagamento: TIntegerField;
    cdsNotaEntradatransp_marca: TStringField;
    cdsNotaEntradanatureza_operacao: TStringField;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label6: TLabel;
    Label7: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label8: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label9: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label10: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label11: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    AdvGroupBox2: TAdvGroupBox;
    Label12: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    cxDBCurrencyEdit14: TcxDBCurrencyEdit;
    cxDBCurrencyEdit13: TcxDBCurrencyEdit;
    cxDBCurrencyEdit11: TcxDBCurrencyEdit;
    cxDBCurrencyEdit10: TcxDBCurrencyEdit;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    PageControlNFE: TAdvPageControl;
    pgItens: TAdvTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1item: TcxGridDBColumn;
    cxGrid1DBTableView1codigo_produto: TcxGridDBColumn;
    cxGrid1DBTableView1descricao_produto: TcxGridDBColumn;
    cxGrid1DBTableView1cfop: TcxGridDBColumn;
    cxGrid1DBTableView1quantidade: TcxGridDBColumn;
    cxGrid1DBTableView1valor_unitario: TcxGridDBColumn;
    cxGrid1DBTableView1valor_total: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    pgDocReferenciado: TAdvTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1tipo_doc: TcxGridDBColumn;
    cxGridDBTableView1chave_nfe: TcxGridDBColumn;
    cxGridDBTableView1numero_ecf: TcxGridDBColumn;
    cxGridDBTableView1numero_cupom_ecf: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    pgFaturamento: TAdvTabSheet;
    Label27: TLabel;
    Label30: TLabel;
    Label28: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    JvDBComboBox3: TJvDBComboBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2numero_duplicata: TcxGridDBColumn;
    cxGridDBTableView2valor: TcxGridDBColumn;
    cxGridDBTableView2DataVencimento: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    pgInfoComplementares: TAdvTabSheet;
    cxDBMemo1: TcxDBMemo;
    pgTransportador: TAdvTabSheet;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    JvDBComboBox4: TJvDBComboBox;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBSpinEdit4: TcxDBSpinEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBCurrencyEdit15: TcxDBCurrencyEdit;
    cxDBCurrencyEdit16: TcxDBCurrencyEdit;
    cxDBCurrencyEdit17: TcxDBCurrencyEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cdsNotaEntradaItemvalor_frete: TFloatField;
    cdsNotaEntradaItemcod_fer_interno: TStringField;
    cdsNotaEntradaItemid_produto_interno: TIntegerField;
    edFornecedorRazao: TcxDBButtonEdit;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cdsNotaEntradaItemflag_encontrado: TBooleanField;
    edTransportadorRazao: TcxDBButtonEdit;
    cdsNotaEntradaid_fornecedor_interno: TIntegerField;
    cdsNotaEntradaid_transportador_interno: TIntegerField;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cdsNotaEntradaItemdescricao_interna: TStringField;
    ActionList1: TActionList;
    acBuscaMaterial: TAction;
    cdsNotaEntradatransportador_ie: TStringField;
    cdsNotaEntradatransportador_endereco: TStringField;
    cdsNotaEntradatransportador_cidade: TStringField;
    cdsNotaEntradatransportador_uf: TStringField;
    Label16: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label26: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    btnImportarNFe: TAdvGlowButton;
    btImportarCadastros: TAdvGlowButton;
    cdsNotaEntradaItemvalor_ipi: TFloatField;
    cdsNotaEntradaItemvalor_base_ipi: TFloatField;
    cdsNotaEntradaItemipi_aliq: TFloatField;
    cdsNotaEntradaItemmargem: TFloatField;
    cdsNotaEntradaItemvalor_venda: TFloatField;
    Label4: TLabel;
    cxDBMargem: TcxDBCurrencyEdit;
    Label5: TLabel;
    cxDBValorVenda: TcxDBCurrencyEdit;
    btnAplicarMargem: TAdvGlowButton;
    cdsNotaEntradaItemtipo_item: TStringField;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cdsNotaEntradaItemid_categoria: TIntegerField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    acBuscacategoria: TAction;
    constructor Create(sender : Tcomponent; id_usuario_nota : integer); reintroduce;
    procedure btAdicionarItemClick(Sender: TObject);
    procedure CarregarNFe;
    procedure VerificaFornecedorTransportador;
    procedure VerificaProdutos(ignora_preenchido : boolean = false);
    procedure ImportaFornecedorTransportador;
    procedure cdsNotaEntradaItemcod_fer_internoChange(Sender: TField);
    procedure acBuscaMaterialExecute(Sender: TObject);
    procedure btImportarCadastrosClick(Sender: TObject);
    function CadastrosPendentes(out flag_fornecedor : boolean;
                             out flag_transportador : boolean;out flag_produtos : boolean) : boolean;
    procedure ImportaProdutos;
    procedure btnImportarNFeClick(Sender: TObject);
    procedure cdsNotaEntradaItemmargemChange(Sender: TField);
    procedure cdsNotaEntradaItemvalor_vendaChange(Sender: TField);
    // italo 11/09/2017
    procedure btnAplicarMargemClick(Sender: TObject);
    procedure cdsNotaEntradaItemtipo_itemChange(Sender: TField);
    procedure acBuscacategoriaExecute(Sender: TObject);
    procedure cdsNotaEntradaItemid_categoriaChange(Sender: TField);
  private
    { Private declarations }
    id_usuario_nota : integer;
    CalculandoMargemValorVenda,inserir_custos_impostos_importacao_nfe: Boolean; // italo 11/09/2017
  public
    { Public declarations }
    id_nota : integer;
  end;

var
  frmControleNotaFiscalEntradaImportacao: TfrmControleNotaFiscalEntradaImportacao;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uBuscaRegistro, uFuncoes, uControleNotaFiscalEntrada;

procedure TfrmControleNotaFiscalEntradaImportacao.ImportaProdutos;
var str_sql, str_sql2, cod_ref : string;
    id_material, id_unidade, id_categoria, int_aux : integer;
    valor_custo, valor_venda:double;// VALOR_CUSTO RECEBE O VALOR UNITARIO DO PRODUTO PARA
    procedure trataUnidade(unidade : string);
    begin
      //busca a unidade de medida
      str_sql := format( 'select uni_001 from unidades where upper(uni_003)=upper(%s) and emp_001=%d',
                       [quotedstr(unidade) ,recproj.iEmp]);
      // se não encontrar, cadastra
      if not BuscaCampo(id_unidade, str_sql, '', false) then
      begin
        str_sql2 :=' insert into unidades (uni_001, emp_001, uni_002, uni_003, sit_001, usu_001_1, dat_001_1) '+
                   ' values ((select coalesce(max(uni_001), 0)+1 from unidades where emp_001=:id_empresa), '+
                   ' :id_empresa ,:unidade, :unidade, 4, :id_usuario, localtimestamp)';
        ExecutaComandoSQL(str_sql2, vararrayof([recproj.iEmp, uppercase(unidade), id_usuario_nota]));
        BuscaCampo(id_unidade, str_sql, '', false);
      end;
    end;
begin
  try
    Screen.Cursor := crHourGlass;
    //desvincula a grid do dataset pois este procedimento faz varios loops na tabela
    // e o vai e vem da grid causa lentidão na tela...
    cxGrid1DBTableView1.DataController.DataSource := nil;

    cdsNotaEntradaItem.First;
    while not cdsNotaEntradaItem.eof do
    begin
      if not cdsNotaEntradaItem.FieldByName('flag_encontrado').AsBoolean then
      begin
        if cdsNotaEntradaItem.FieldByName('tipo_item').asstring='M' then // M  seria material
        begin
          //busca o ultimo id e cria um codigo de referencia, se for ean, utilza este
          str_sql := format( 'select coalesce(max(mat_001),0)+1 from materiais where emp_001=%d', [recproj.iEmp]);
          BuscaCampo(id_material, str_sql, '', false);
          if  (length(cdsNotaEntradaItem.FieldByName('codigo_ean').asstring)>=8) and
              (length(cdsNotaEntradaItem.FieldByName('codigo_ean').asstring)<=13) then
            cod_ref := cdsNotaEntradaItem.FieldByName('codigo_ean').asstring
          else
            cod_ref:= inttostr(id_material);

          //busca ou cadastra a unidade de medida
          trataUnidade(cdsNotaEntradaItem.FieldByName('unidade').asstring);

          // Rafael  22/11/2017
          //pega a primeira categoria por padrão...
          if cdsnotaentradaitem.FieldByName('id_categoria').IsNull then
          begin
          str_sql := format( 'select cat_001 from categoria where emp_001=%d and sit_001=4 order by cat_001 limit 1', [recproj.iEmp]);
          BuscaCampo(id_categoria, str_sql, '', false);
          end
          else
          begin
               id_categoria:=cdsnotaentradaitem.FieldByName('id_categoria').AsInteger;
          end;


          // FIZEMOS UMA ROTINA PARA INSERIR OS CUSTOS DOS PRODUTOS, SE TIVER MARCADO EM  Configurações--NFE--DADOS NFE ----INSERIR CUSTOS DE IPI E SUBST
          // EXEMPLO NA NFE TEM O CUSTO DE IPI E SUBT, O SISTEMA CALCULA OS CUSTOS DO PRODUTO E INSERI NO CADASTRO DE PRODUTOS O CUSTO DO PRODUTO COM OS IMPOSTOS
          if inserir_custos_impostos_importacao_nfe then
          begin
            valor_custo:= roundto(cdsNotaEntradaItem.FieldByName('valor_unitario').AsFloat+
            (cdsNotaEntradaItem.FieldByName('valor_ipi').AsFloat/cdsNotaEntradaItem.FieldByName('quantidade').AsFloat) +
             (cdsNotaEntradaItem.FieldByName('valor_icms_sub').AsFloat/cdsNotaEntradaItem.FieldByName('quantidade').AsFloat),-2);
            valor_venda:= roundto(valor_custo * (1 + cdsNotaEntradaItem.FieldByName('margem').AsFloat / 100), -2);
          end
          else
          begin
           valor_custo:= roundto(cdsNotaEntradaItem.FieldByName('valor_unitario').AsFloat,-2);
           valor_venda:= roundto(cdsNotaEntradaItem.FieldByName('valor_venda').AsFloat,-2);
          end;


          str_sql :=' INSERT INTO materiais'+
                    '  (mat_001, '+
                    '   emp_001, mat_003, mat_004, uni_001, mat_008, '+
                    '   mtp_001, mat_009, usu_001_1, usu_001_2, dat_001_1, dat_001_2, mat_006, mat_012, '+
                    '   cat_001, '+
                    '   mat_021, orm_codigo, cfop_consumidor, icms, '+
                    '   cst_consumidor,  pis, cofins, '+
                    '   pis_codigo_saida, cof_codigo_saida, ncm, cso_codigo,'+
                    '   tipo_producao, valor_tabela2, cest, sit_001, mat_018,id_fornecedor, id_setor)'+
                    ' VALUES'+
                    '  (:mat_001, '+
                    '   :id_empresa, :descricao, :cod_ref, :id_unidade, :valor_venda, '+
                    '   1, 1, :id_usuario, null, localtimestamp, null, 0.00, :valor_custo, '+
                    '   :id_categoria, '+
                    '   0, :origem_material, :cfop_consumidor, :icms, '+
                    '   :cst_consumidor,  :pis, :cofins, '+
                    '   :pis_codigo_saida, :cof_codigo_saida, :ncm, :csosn, '+
                    '   ''T'', :valor_tabela2, :cest, 4, :margem,:id_fornecedor, 1)';
          ExecutaComandoSQL(str_sql, vararrayof([
                          id_material,   // Id Produto
                          recproj.iEmp,
                          copy(cdsNotaEntradaItem.FieldByName('descricao').AsString, 0, 100),
                          cod_ref,
                          id_unidade,
                          roundto(valor_venda, -2),
                          id_usuario_nota,
                          roundto(valor_custo, -2),
                          id_categoria, // Categoria do produto
                          cdsNotaEntradaItem.FieldByName('icms_origem').asinteger,
                          cdsNotaEntradaItem.FieldByName('cfop').asstring,
                          cdsNotaEntradaItem.FieldByName('icms_aliq').AsFloat,
                          cdsNotaEntradaItem.FieldByName('cst_icms').asinteger,
                          cdsNotaEntradaItem.FieldByName('pis_aliq').asfloat,
                          cdsNotaEntradaItem.FieldByName('cofins_aliq').asfloat,
                          cdsNotaEntradaItem.FieldByName('cst_pis').asinteger,
                          cdsNotaEntradaItem.FieldByName('cst_cofins').asinteger,
                          cdsNotaEntradaItem.FieldByName('ncm').asstring,
                          cdsNotaEntradaItem.FieldByName('csosn').asinteger,
                          roundto(valor_venda, -2),
                          cdsNotaEntradaItem.FieldByName('cest').asstring,
                          roundto(((valor_venda / (valor_custo)) - 1)* 100, -2),
                          cdsnotaentrada.FieldByName('id_fornecedor_interno').AsInteger]));  // Id fornecedor


          // insere o material na tabela materiais_fornecedor se não existir
          str_sql := format(' select 1 from materiais_fornecedor where id_empresa =%d '+
                     ' and id_fornecedor=%d and codigo_fornecedor =%s',
                     [recproj.iEmp,
                     cdsNotaEntrada.FieldByName('id_fornecedor_interno').asinteger,
                     quotedstr(cdsNotaEntradaItem.FieldByName('codigo').asstring)]);
          if not BuscaCampo(int_aux, str_sql, '', false) then
          begin
            str_sql := ' insert into materiais_fornecedor (id_material, id_empresa, id_fornecedor, codigo_fornecedor)'+
                       ' values (:material, :id_empresa, :id_fornecedor, :codigo_fornecedor) ';
            ExecutaComandoSQL(str_sql, vararrayof([id_material, recproj.iEmp,
                                         cdsNotaEntrada.FieldByName('id_fornecedor_interno').asinteger,
                                         cdsNotaEntradaItem.FieldByName('codigo').asstring]));
          end;
        end
        else // Insere composição
        begin
          //busca o ultimo id e cria um codigo de referencia, se for ean, utilza este
          str_sql := format('select coalesce(max(id_composicao),0)+1 from composicao where id_empresa=%d', [recproj.iEmp]);
          BuscaCampo(id_material, str_sql, '', false);
          if  (length(cdsNotaEntradaItem.FieldByName('codigo_ean').asstring)>=8) and
              (length(cdsNotaEntradaItem.FieldByName('codigo_ean').asstring)<=13) then
            cod_ref := cdsNotaEntradaItem.FieldByName('codigo_ean').asstring
          else
            cod_ref:= inttostr(id_material);

          //busca ou cadastra a unidade de medida
          trataUnidade(cdsNotaEntradaItem.FieldByName('unidade').asstring);

          //insere o item de composição
          str_sql :=' insert into composicao (id_composicao, descricao, valor_custo,  estoque_minimo, id_situacao, id_empresa, id_unidade, codigo_ref) '+
                    ' values (:id_composicao, :descricao , :custo, 0,  4, :id_empresa, :id_unidade, :codref );';

          // insere o item na tabela composicao
          ExecutaComandoSQL(str_sql, vararrayof([id_material,
                                                 cdsNotaEntradaItem.FieldByName('descricao').AsString,
                                                 cdsNotaEntradaItem.FieldByName('valor_unitario').AsFloat,
                                                 recproj.iEmp,
                                                 id_unidade,
                                                 cod_ref]));

        end;

        int_aux := cdsNotaEntradaItem.RecNo;
        VerificaProdutos(true);
        cdsNotaEntradaItem.RecNo := int_aux;
      end;
      cdsNotaEntradaItem.next;
    end;
  finally
    Screen.Cursor := crDefault;
    //revincula a grid ao dataset
    cxGrid1DBTableView1.DataController.DataSource := dsNotaEntradaItem;
  end;
end;

procedure TfrmControleNotaFiscalEntradaImportacao.ImportaFornecedorTransportador;
var str_sql  : string;
    id_cidade, cod_ibge: variant;
    qr_aux : Tuniquery;
begin
  qr_aux := CriaUniQuery(self, frmmenu.conexao);
  //importa o fornecedor se não estiver informado
  if cdsNotaEntrada.FieldByName('id_fornecedor_interno').IsNull then
  begin
    //busca a cidade do fornecedor pelo codigo ibge
    str_sql := format('select cid_001 from cidades where cid_003=%s',[
                      quotedstr(cdsNotaEntrada.FieldByName('fornecedor_cod_ibge').asstring)]);
    if not BuscaCampo(id_cidade,str_sql, '', false)  then  id_cidade := null;

    str_sql :='INSERT INTO fornecedor'+
              '  (nome_fantasia, id_cidade, razao_social, id_usuario_cadastro, id_empresa, endereco_logradouro, '+
              '   endereco_numero, endereco_bairro, endereco_cidade, endereco_uf, endereco_cep, id_situacao,'+
              '   endereco_complemento, telefone1, telefone2, celular1, celular2, email, site, cnpj, '+
              '   nome_contato1, nome_contato2, banco, agencia, conta, data_cadastro, cpf, tipo_pessoa, '+
              '   codigo_municipio, codigo_ibge, cnae, inscricao_estadual, inscricao_municipal, observacoes)'+
              ' VALUES '+
              '  (:nome_fantasia, :id_cidade, :razao_social, :id_usuario_cadastro, :id_empresa, :endereco_logradouro, '+
              '   :endereco_numero, :endereco_bairro, :endereco_cidade, :endereco_uf, :endereco_cep, 4, '+
              '   :endereco_complemento, :telefone1, null, null, null, null, null, :cnpj, '+
              '   null, null, null, null, null, localtimestamp, null, ''J'', '+
              '   null, :codigo_ibge, null, :inscricao_estadual, null, :observacoes)';
    ExecutaComandoSQL(str_sql, vararrayof([
                      cdsNotaEntrada.FieldByName('fornecedor_nome_fantasia').asstring,
                      id_cidade,
                      cdsNotaEntrada.FieldByName('fornecedor_razao').asstring,
                      id_usuario_nota,
                      recproj.iEmp,
                      cdsNotaEntrada.FieldByName('fornecedor_logradouro').asstring,
                      cdsNotaEntrada.FieldByName('fornecedor_end_numero').asstring,
                      cdsNotaEntrada.FieldByName('fornecedor_bairro').asstring,
                      cdsNotaEntrada.FieldByName('fornecedor_cidade').asstring,
                      cdsNotaEntrada.FieldByName('fornecedor_uf').asstring,
                      cdsNotaEntrada.FieldByName('fornecedor_cep').asstring,
                      cdsNotaEntrada.FieldByName('fornecedor_end_complemento').asstring,
                      cdsNotaEntrada.FieldByName('fornecedor_telefone').asstring,
                      cdsNotaEntrada.FieldByName('fornecedor_cnpj').asstring,
                      cdsNotaEntrada.FieldByName('fornecedor_cod_ibge').asstring,
                      cdsNotaEntrada.FieldByName('fornecedor_ie').asstring,
                      'Fornecedor cadastrado através de importação de NFe']));
  end;

  //importa o transportador se não estiver informado
  if (cdsNotaEntrada.FieldByName('id_transportador_interno').IsNull) and
     (not cdsNotaEntrada.FieldByName('transportador_cnpj').IsNull)  then
  begin
    //busca a cidade do fornecedor pelo codigo ibge
    str_sql := format(' select c.cid_003 as cod_ibge, c.cid_001 as id_cidade from  cidades c '+
                      ' join estados e on  c.est_001=e.est_001 '+
                      ' where upper(e.est_003)=upper(%s) and upper(c.cid_002)=upper(%s) ',
                      [quotedstr(cdsNotaEntrada.FieldByName('transportador_uf').asstring),
                       quotedstr(cdsNotaEntrada.FieldByName('transportador_cidade').asstring)]);

    if ExecutaConsultaSQL(qr_aux, str_sql) then
    begin
      id_cidade := qr_aux.FieldByName('id_cidade').AsInteger;
      cod_ibge := qr_aux.FieldByName('cod_ibge').AsString;
    end
    else
    begin
      id_cidade :=null;
      cod_ibge :=null;
    end;

    str_sql :='INSERT INTO fornecedor'+
              '  (nome_fantasia, id_cidade, razao_social, id_usuario_cadastro, id_empresa, endereco_logradouro, '+
              '   endereco_numero, endereco_bairro, endereco_cidade, endereco_uf, endereco_cep, id_situacao,'+
              '   endereco_complemento, telefone1, telefone2, celular1, celular2, email, site, cnpj, '+
              '   nome_contato1, nome_contato2, banco, agencia, conta, data_cadastro, cpf, tipo_pessoa, '+
              '   codigo_municipio, codigo_ibge, cnae, inscricao_estadual, inscricao_municipal, observacoes)'+
              'VALUES'+
              '  (:nome_fantasia, :id_cidade, :razao_social, :id_usuario_cadastro, :id_empresa, :endereco_logradouro, '+
              '   :endereco_numero, :endereco_bairro, :endereco_cidade, :endereco_uf, :endereco_cep, 4, '+
              '   :endereco_complemento, :telefone1, null, null, null, null, null, :cnpj, '+
              '   null, null, null, null, null, localtimestamp, null, ''J'', '+
              '   null, :codigo_ibge, null, :inscricao_estadual, null, :observacoes)';
    ExecutaComandoSQL(str_sql, vararrayof([
                      cdsNotaEntrada.FieldByName('transportador_razao').asstring,
                      id_cidade,
                      cdsNotaEntrada.FieldByName('transportador_razao').asstring,
                      id_usuario_nota,
                      recproj.iEmp,
                      cdsNotaEntrada.FieldByName('transportador_endereco').asstring,
                      null,
                      null,
                      cdsNotaEntrada.FieldByName('transportador_cidade').asstring,
                      cdsNotaEntrada.FieldByName('transportador_uf').asstring,
                      null,
                      null,
                      null,
                      cdsNotaEntrada.FieldByName('transportador_cnpj').asstring,
                      cod_ibge,
                      cdsNotaEntrada.FieldByName('transportador_ie').asstring,
                      'Fornecedor cadastrado através de importação de NFe']));
  end;

  qr_aux.Free;

end;

procedure TfrmControleNotaFiscalEntradaImportacao.VerificaProdutos(ignora_preenchido : boolean = false);
var  str_sql, cod_ref : string;
     flag_ok , flag_produto: boolean;
     margem: double;  // Rafael 22/11/2017
     qr_aux : TUniQuery;
begin
  cdsNotaEntradaItem.First;
  qr_aux := CriaUniQuery(self, frmmenu.conexao);
  while not cdsNotaEntradaItem.Eof do
  begin
    flag_ok := false;
    flag_produto := cdsNotaEntradaItem.FieldByName('tipo_item').AsString<>'C';
    cod_ref :='';
    //tenta buscar pelo ean (pode ser tamanho 8 ou 13)
    if (length(cdsNotaEntradaItem.FieldByName('codigo_ean').AsString)>=8) and
       (length(cdsNotaEntradaItem.FieldByName('codigo_ean').AsString)<=13)  then
    begin
      if flag_produto then
        str_sql := 'select mat_004 as codigo_ref, mat_018 as margem from materiais where mat_004 = %s and emp_001=%d'
      else
        str_sql := 'select id_composicao as codigo_ref , 0 as margem from composicao where codigo_ref = %s and id_empresa=%d';

      str_sql := format(str_sql, [quotedstr(cdsNotaEntradaItem.FieldByName('codigo_ean').AsString), recproj.iEmp]);
      if ExecutaConsultaSQL(qr_aux, str_sql) then
      begin
        flag_ok := true;
        cod_ref := qr_aux.FieldByName('codigo_ref').AsString;
        margem  := qr_aux.FieldByName('margem').AsFloat;
      end
      else
      begin
        flag_ok := false;
        cod_ref := '';
        margem  := 0;
      end;


    end;
    //tenta encontrar pelo codigo do fornecedor da tabela materiais_fornecedor
    if (not flag_ok) and (flag_produto) then
    begin
      if not  cdsNotaEntrada.FieldByName('id_fornecedor_interno').IsNull then
      begin
        str_sql := format(' select m.mat_004 from materiais_fornecedor mf '+
                          ' join materiais m on m.mat_001=mf.id_material and m.emp_001=mf.id_empresa '+
                          ' where mf.id_fornecedor=%d and mf.id_empresa=%d and mf.codigo_fornecedor=%s',
                          [cdsNotaEntrada.FieldByName('id_fornecedor_interno').AsInteger, recproj.iEmp,
                           quotedstr(cdsNotaEntradaItem.FieldByName('codigo').AsString)]);
        flag_ok :=  BuscaCampo(cod_ref, str_sql, '',false);
        // italo 11/09/2017
        if flag_ok then
        begin
          str_sql := format(' select m.mat_018 from materiais_fornecedor mf '+
                            ' join materiais m on m.mat_001=mf.id_material and m.emp_001=mf.id_empresa '+
                            ' where mf.id_fornecedor=%d and mf.id_empresa=%d and mf.codigo_fornecedor=%s',
                            [cdsNotaEntrada.FieldByName('id_fornecedor_interno').AsInteger, recproj.iEmp,
                             quotedstr(cdsNotaEntradaItem.FieldByName('codigo').AsString)]);
          flag_ok :=  BuscaCampo(Margem, str_sql, '',false);
        end;
      end;
    end;
   
    if not (cdsNotaEntradaItem.FieldByName('flag_encontrado').asboolean and ignora_preenchido )  then
    begin
      // se encontrou, insere o cod_ref do produto
      cdsNotaEntradaItem.Edit;
      if flag_ok then
      begin
        cdsNotaEntradaItem.FieldByName('cod_ref_interno').asstring := cod_ref;
        // italo 11/09/2017
        CalculandoMargemValorVenda := False;
        cdsNotaEntradaItem.FieldByName('margem').AsFloat := Margem;
      end
      else
        cdsNotaEntradaItem.FieldByName('cod_ref_interno').value := null;
      cdsNotaEntradaItem.Post;
    end;
    
    cdsNotaEntradaItem.next;
  end;
  qr_aux.Free;
end;

procedure TfrmControleNotaFiscalEntradaImportacao.VerificaFornecedorTransportador;
var str_sql : string;
    id_fornecedor, id_transportador : integer;
begin
  if not (cdsNotaEntrada.State in [dsEdit, dsInsert]) then cdsNotaEntrada.Edit;

  str_sql := format('select id_fornecedor from fornecedor where cnpj=%s and id_empresa = %d and cnpj<>'''' ',
                   [quotedstr(cdsNotaEntrada.FieldByName('fornecedor_cnpj').AsString), recproj.iEmp ] );
  if BuscaCampo(id_fornecedor, str_sql, '', false) then
  begin
    cdsNotaEntrada.FieldByName('id_fornecedor_interno').AsInteger := id_fornecedor;
    edFornecedorRazao.Properties.Buttons[0].ImageIndex := 5;
  end
  else
  begin
    cdsNotaEntrada.FieldByName('id_fornecedor_interno').value := null;
    edFornecedorRazao.Properties.Buttons[0].ImageIndex := 4;
  end;

  str_sql := format('select id_fornecedor from fornecedor where cnpj=%s and id_empresa = %d and cnpj<>'''' ',
                   [quotedstr(cdsNotaEntrada.FieldByName('transportador_cnpj').AsString), recproj.iEmp ] );
  if BuscaCampo(id_transportador, str_sql, '', false)  and
     (cdsNotaEntrada.FieldByName('transportador_cnpj').AsString<>'') then
  begin
    cdsNotaEntrada.FieldByName('id_transportador_interno').AsInteger := id_fornecedor;
    edTransportadorRazao.Properties.Buttons[0].ImageIndex := 5;
  end
  else
  begin
    cdsNotaEntrada.FieldByName('id_transportador_interno').value := null;
    edTransportadorRazao.Properties.Buttons[0].ImageIndex := 4;
  end;

end;

constructor TfrmControleNotaFiscalEntradaImportacao.Create(sender: TComponent;id_usuario_nota:integer);
var str_sql : string;
 int_aux : integer;
 qraux1:tuniquery;
begin
  inherited Create(sender);
  self.id_usuario_nota := id_usuario_nota;
  //verifica se o usuario tem permissão de nfe, senão, abre a tela de confirmação
  str_sql := format( 'select 1 from usuarios where b_acesso_nfe and sit_001=4 and usu_001=%d', [id_usuario_nota]);
  if not BuscaCampo(int_aux, str_sql, '', false) then
  begin
    if not frmMenu.ConfirmacaoSenha('b_acesso_nfe', id_usuario_nota) then
    abort;
  end;

  // Busco a configuração se esta marcado  inserir_custos_impostos_importacao_nfe, se tiver marcado ele vai inserir os impostos no custo do produto
   str_sql:='select inserir_custos_impostos_importacao_nfe from empresas where emp_001=:emp_001';
   qraux1:=tuniquery.Create(self);
   qraux1.Connection:=frmMenu.conexao;
   qrAux1.Close;
   qrAux1.SQL.Clear;
   qrAux1.SQL.Add(str_sql);
   qraux1.ParamByName('emp_001').AsInteger:=RecProj.iemp;
   qraux1.Open;
   inserir_custos_impostos_importacao_nfe:=qraux1.FieldByName('inserir_custos_impostos_importacao_nfe').AsBoolean;
   qraux1.free;


  cdsNotaEntrada.CreateDataSet;
  cdsNotaEntradaItem.CreateDataSet;
  cdsDocRef.CreateDataSet;
  cdsDuplicata.CreateDataSet;
  PageControlNFE.ActivePageIndex := 0;

  CalculandoMargemValorVenda := False; //
end;

procedure TfrmControleNotaFiscalEntradaImportacao.CarregarNFe;
var i, int_aux, regime_fornecedor : integer;
begin
  cdsNotaEntradaItem.EmptyDataSet;
  cdsNotaEntrada.EmptyDataSet;
  cdsDocRef.EmptyDataSet;
  cdsDuplicata.EmptyDataSet;

  cdsNotaEntrada.Append;
  cdsNotaEntrada.FieldByName('cnpj_destinatario').asstring :=  ACBrNFe1.NotasFiscais[0].NFe.Dest.CNPJCPF;
  cdsNotaEntrada.FieldByName('numero').asinteger := ACBrNFe1.NotasFiscais[0].NFe.Ide.nNF;
  cdsNotaEntrada.FieldByName('serie').asinteger := ACBrNFe1.NotasFiscais[0].NFe.Ide.serie;
  cdsNotaEntrada.FieldByName('chave_autorizacao').asstring := Copy(ACBrNFe1.NotasFiscais[0].NFe.infNFe.ID, 4, 44);
  cdsNotaEntrada.FieldByName('natureza_operacao').asstring := ACBrNFe1.NotasFiscais[0].NFe.Ide.natOp;

  cdsNotaEntrada.FieldByName('data_emissao').AsDateTime := ACBrNFe1.NotasFiscais[0].NFe.Ide.dEmi;

  cdsNotaEntrada.FieldByName('valor_icms').asfloat :=  ACBrNFe1.NotasFiscais[0].NFe.Total.ICMSTot.vICMS;
  cdsNotaEntrada.FieldByName('valor_base_icms_sub').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Total.ICMSTot.vBCST;
  cdsNotaEntrada.FieldByName('valor_icms_sub').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Total.ICMSTot.vST;
  cdsNotaEntrada.FieldByName('valor_produtos').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Total.ICMSTot.vProd;
  cdsNotaEntrada.FieldByName('valor_frete').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Total.ICMSTot.vFrete;
  cdsNotaEntrada.FieldByName('valor_seguro').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Total.ICMSTot.vSeg;
  cdsNotaEntrada.FieldByName('valor_desconto').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Total.ICMSTot.vDesc;

  cdsNotaEntrada.FieldByName('valor_ipi').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Total.ICMSTot.vIPI;
  cdsNotaEntrada.FieldByName('valor_pis').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Total.ICMSTot.vPIS;
  cdsNotaEntrada.FieldByName('valor_cofins').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Total.ICMSTot.vCOFINS;
  cdsNotaEntrada.FieldByName('valor_despesas').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Total.ICMSTot.vOutro;
  cdsNotaEntrada.FieldByName('valor_total').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Total.ICMSTot.vNF;

  cdsNotaEntrada.FieldByName('valor_base_icms').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Total.ICMSTot.vBC ;
  cdsNotaEntrada.FieldByName('info_complementar').asstring :=  ACBrNFe1.NotasFiscais[0].NFe.InfAdic.infCpl;

  cdsNotaEntrada.FieldByName('fornecedor_ie').AsString:=ACBrNFe1.NotasFiscais[0].NFe.Emit.IE;
  cdsNotaEntrada.FieldByName('fornecedor_razao').AsString:=ACBrNFe1.NotasFiscais[0].NFe.Emit.xNome;
  cdsNotaEntrada.FieldByName('fornecedor_nome_fantasia').AsString:=ACBrNFe1.NotasFiscais[0].NFe.Emit.xFant;

  cdsNotaEntrada.FieldByName('fornecedor_cnpj').asstring := ACBrNFe1.NotasFiscais[0].NFe.Emit.CNPJCPF;
  cdsNotaEntrada.FieldByName('fornecedor_nome_fantasia').asstring := ACBrNFe1.NotasFiscais[0].NFe.Emit.xFant;
  cdsNotaEntrada.FieldByName('fornecedor_telefone').AsString:=ACBrNFe1.NotasFiscais[0].NFe.Emit.EnderEmit.fone;
  cdsNotaEntrada.FieldByName('fornecedor_cep').AsString:= inttostr(ACBrNFe1.NotasFiscais[0].NFe.Emit.EnderEmit.CEP);
  cdsNotaEntrada.FieldByName('fornecedor_logradouro').AsString:=ACBrNFe1.NotasFiscais[0].NFe.Emit.EnderEmit.xLgr;
  cdsNotaEntrada.FieldByName('fornecedor_end_numero').AsString:=ACBrNFe1.NotasFiscais[0].NFe.Emit.EnderEmit.nro;
  cdsNotaEntrada.FieldByName('fornecedor_end_complemento').AsString:=ACBrNFe1.NotasFiscais[0].NFe.Emit.EnderEmit.xCpl;
  cdsNotaEntrada.FieldByName('fornecedor_bairro').AsString:=ACBrNFe1.NotasFiscais[0].NFe.Emit.EnderEmit.xBairro;
  cdsNotaEntrada.FieldByName('fornecedor_cod_ibge').asinteger:=ACBrNFe1.NotasFiscais[0].NFe.Emit.EnderEmit.cMun;
  cdsNotaEntrada.FieldByName('fornecedor_cidade').AsString:=ACBrNFe1.NotasFiscais[0].NFe.Emit.EnderEmit.xMun;
  cdsNotaEntrada.FieldByName('fornecedor_uf').AsString:=ACBrNFe1.NotasFiscais[0].NFe.Emit.EnderEmit.UF;

  regime_fornecedor := ord(ACBrNFe1.NotasFiscais[0].NFe.Emit.crt); // (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)

  if ACBrNFe1.NotasFiscais[0].NFe.Transp.Transporta.CNPJCPF<>'' then
  begin
    cdsNotaEntrada.FieldByName('transportador_ie').AsString := ACBrNFe1.NotasFiscais[0].NFe.Transp.Transporta.IE;
    cdsNotaEntrada.FieldByName('transportador_razao').AsString := ACBrNFe1.NotasFiscais[0].NFe.Transp.Transporta.xNome;
    cdsNotaEntrada.FieldByName('transportador_cnpj').AsString :=  ACBrNFe1.NotasFiscais[0].NFe.Transp.Transporta.CNPJCPF;
    cdsNotaEntrada.FieldByName('transportador_endereco').AsString := ACBrNFe1.NotasFiscais[0].NFe.Transp.Transporta.xEnder;
    cdsNotaEntrada.FieldByName('transportador_cidade').AsString := ACBrNFe1.NotasFiscais[0].NFe.Transp.Transporta.xMun;
    cdsNotaEntrada.FieldByName('transportador_uf').AsString := ACBrNFe1.NotasFiscais[0].NFe.Transp.Transporta.UF;
  end;

  //pega os dados do primeiro volume
  if ACBrNFe1.NotasFiscais[0].NFe.Transp.Vol.Count >0 then
  begin
    cdsNotaEntrada.FieldByName('transp_quantidade_volumes').asinteger := ACBrNFe1.NotasFiscais[0].NFe.Transp.Vol[0].qVol;
    cdsNotaEntrada.FieldByName('transp_especie').asstring  := ACBrNFe1.NotasFiscais[0].NFe.Transp.Vol[0].esp;
    cdsNotaEntrada.FieldByName('transp_marca').asstring := ACBrNFe1.NotasFiscais[0].NFe.Transp.Vol[0].marca;
    cdsNotaEntrada.FieldByName('transp_numero_volumes').asstring := ACBrNFe1.NotasFiscais[0].NFe.Transp.Vol[0].nVol;
    cdsNotaEntrada.FieldByName('transp_peso_liquido').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Transp.Vol[0].pesoL;
    cdsNotaEntrada.FieldByName('transp_peso_bruto').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Transp.Vol[0].pesoB;
  end;

  cdsNotaEntrada.FieldByName('transp_modalidade').AsInteger :=  ord(ACBrNFe1.NotasFiscais[0].NFe.Transp.modFrete);
  cdsNotaEntrada.FieldByName('numero_fatura').asstring :=ACBrNFe1.NotasFiscais[0].NFe.Cobr.Fat.nFat;
  cdsNotaEntrada.FieldByName('tipo_pagamento').asinteger :=  ord(ACBrNFe1.NotasFiscais[0].NFe.Ide.indPag);

  for I := 0 to ACBrNFe1.NotasFiscais[0].NFe.Det.Count-1 do
  begin
    if i=0 then cdsNotaEntrada.FieldByName('cfop').AsString := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Prod.CFOP;

    cdsNotaEntradaItem.Append;

    cdsNotaEntradaItem.FieldByName('item').asinteger := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Prod.nItem;
    cdsNotaEntradaItem.FieldByName('codigo').asstring := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Prod.cProd;
    cdsNotaEntradaItem.FieldByName('codigo_ean').asstring := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Prod.cEAN ;
    cdsNotaEntradaItem.FieldByName('descricao').asstring := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Prod.xProd;
    cdsNotaEntradaItem.FieldByName('ncm').asstring := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Prod.NCM;
    cdsNotaEntradaItem.FieldByName('cfop').asstring := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Prod.CFOP;
    cdsNotaEntradaItem.FieldByName('unidade').asstring := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Prod.uCom;
    cdsNotaEntradaItem.FieldByName('quantidade').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Prod.qCom;
    cdsNotaEntradaItem.FieldByName('valor_unitario').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Prod.vUnCom;
    cdsNotaEntradaItem.FieldByName('valor_despesas').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Prod.vOutro;
    cdsNotaEntradaItem.FieldByName('valor_frete').asfloat :=  ACBrNFe1.NotasFiscais[0].NFe.Det[i].Prod.vFrete;
    cdsNotaEntradaItem.FieldByName('valor_seguro').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Prod.vSeg;
    cdsNotaEntradaItem.FieldByName('valor_desconto').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Prod.vDesc;
    cdsNotaEntradaItem.FieldByName('cest').asstring := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Prod.CEST;
    cdsNotaEntradaItem.FieldByName('complemento_descricao').asstring := ACBrNFe1.NotasFiscais[0].NFe.Det[i].infAdProd;
    cdsNotaEntradaItem.FieldByName('valor_total').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Prod.vProd + cdsNotaEntradaItem.FieldByName('valor_desconto').asfloat - cdsNotaEntradaItem.FieldByName('valor_despesas').asfloat;

    cdsNotaEntradaItem.FieldByName('icms_origem').asinteger := ord(ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.ICMS.orig);
    cdsNotaEntradaItem.FieldByName('icms_aliq').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.ICMS.pICMS;
    cdsNotaEntradaItem.FieldByName('valor_icms').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.ICMS.vICMS;
    // italo 11/09/2017
    cdsNotaEntradaItem.FieldByName('margem').asfloat := 0.0;
    cdsNotaEntradaItem.FieldByName('valor_venda').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Prod.vUnCom;

    if regime_fornecedor=2 then
    begin
      int_aux :=0;
      case ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.ICMS.cst of
        cst00 : int_aux :=0;
        cst10 : int_aux :=10;
        cst20 : int_aux :=20;
        cst30 : int_aux :=30;
        cst40 : int_aux :=40;
        cst41 : int_aux :=41;
        cst45 : int_aux :=45;
        cst50 : int_aux :=50;
        cst51 : int_aux :=51;
        cst60 : int_aux :=60;
        cst70 : int_aux :=70;
        cst80 : int_aux :=80;
        cst81 : int_aux :=81;
        cst90 : int_aux :=90;
      end;
      cdsNotaEntradaItem.FieldByName('cst_icms').asinteger:=int_aux;
    end
    else
    begin
      int_aux :=101;
      case ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.ICMS.CSOSN of
        csosn101 : int_aux :=101;
        csosn102 : int_aux :=102;
        csosn103 : int_aux :=103;
        csosn201 : int_aux :=201;
        csosn202 : int_aux :=202;
        csosn203 : int_aux :=203;
        csosn300 : int_aux :=300;
        csosn400 : int_aux :=400;
        csosn500 : int_aux :=500;
        csosn900 : int_aux :=900;
      end;
      cdsNotaEntradaItem.FieldByName('csosn').asinteger:=int_aux;
    end;

    cdsNotaEntradaItem.FieldByName('valor_base_pis_cofins').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.PIS.vBC;
    cdsNotaEntradaItem.FieldByName('pis_aliq').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.PIS.pPis;
    cdsNotaEntradaItem.FieldByName('valor_pis').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.PIS.vPIS;

    int_aux :=0;
    case ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.PIS.CST of
      pis01 : int_aux := 1;
      pis02 : int_aux := 2;
      pis03 : int_aux := 3;
      pis04 : int_aux := 4;
      pis05 : int_aux := 5;
      pis06 : int_aux := 6;
      pis07 : int_aux := 7;
      pis08 : int_aux := 8;
      pis09 : int_aux := 9;
      pis49 : int_aux := 49;
      pis50 : int_aux := 50;
      pis51 : int_aux := 51;
      pis52 : int_aux := 52;
      pis53 : int_aux := 53;
      pis54 : int_aux := 54;
      pis55 : int_aux := 55;
      pis56 : int_aux := 56;
      pis60 : int_aux := 60;
      pis61 : int_aux := 61;
      pis62 : int_aux := 62;
      pis63 : int_aux := 63;
      pis64 : int_aux := 64;
      pis65 : int_aux := 65;
      pis66 : int_aux := 66;
      pis67 : int_aux := 67;
      pis70 : int_aux := 70;
      pis71 : int_aux := 71;
      pis72 : int_aux := 72;
      pis73 : int_aux := 73;
      pis74 : int_aux := 74;
      pis75 : int_aux := 75;
      pis98 : int_aux := 98;
      pis99 : int_aux := 99;
    end;
    cdsNotaEntradaItem.FieldByName('cst_pis').asinteger:=int_aux;

    cdsNotaEntradaItem.FieldByName('cofins_aliq').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.COFINS.pCOFINS;
    cdsNotaEntradaItem.FieldByName('valor_cofins').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.COFINS.vCOFINS;
    int_aux :=0;
    case ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.COFINS.CST of
      cof01 : int_aux := 1;
      cof02 : int_aux := 2;
      cof03 : int_aux := 3;
      cof04 : int_aux := 4;
      cof05 : int_aux := 5;
      cof06 : int_aux := 6;
      cof07 : int_aux := 7;
      cof08 : int_aux := 8;
      cof09 : int_aux := 9;
      cof49 : int_aux := 49;
      cof50 : int_aux := 50;
      cof51 : int_aux := 51;
      cof52 : int_aux := 52;
      cof53 : int_aux := 53;
      cof54 : int_aux := 54;
      cof55 : int_aux := 55;
      cof56 : int_aux := 56;
      cof60 : int_aux := 60;
      cof61 : int_aux := 61;
      cof62 : int_aux := 62;
      cof63 : int_aux := 63;
      cof64 : int_aux := 64;
      cof65 : int_aux := 65;
      cof66 : int_aux := 66;
      cof67 : int_aux := 67;
      cof70 : int_aux := 70;
      cof71 : int_aux := 71;
      cof72 : int_aux := 72;
      cof73 : int_aux := 73;
      cof74 : int_aux := 74;
      cof75 : int_aux := 75;
      cof98 : int_aux := 98;
      cof99 : int_aux := 99;
    end;
    cdsNotaEntradaItem.FieldByName('cst_cofins').asinteger:=int_aux;

    cdsNotaEntradaItem.FieldByName('valor_base_icms').asfloat :=  ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.ICMS.vBC;
    cdsNotaEntradaItem.FieldByName('mvast').asfloat :=  ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.ICMS.pMVAST;
    cdsNotaEntradaItem.FieldByName('icms_aliq').asfloat :=  ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.ICMS.pICMS;
    cdsNotaEntradaItem.FieldByName('valor_icms').asfloat :=  ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.ICMS.vICMS;

    cdsNotaEntradaItem.FieldByName('valor_base_icms_sub').asfloat :=  ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.ICMS.vBCST;
    cdsNotaEntradaItem.FieldByName('icms_aliq_sub').asfloat :=  ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.ICMS.pICMSST;
    cdsNotaEntradaItem.FieldByName('valor_icms_sub').asfloat :=  ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.ICMS.vICMSST;
    cdsNotaEntradaItem.FieldByName('icms_aliq_reducao').asfloat :=  ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.ICMS.pRedBC;

    cdsNotaEntradaItem.FieldByName('valor_base_ipi').asfloat :=  ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.IPI.vBC;
    cdsNotaEntradaItem.FieldByName('ipi_aliq').asfloat :=  ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.IPI.pIPI;
    cdsNotaEntradaItem.FieldByName('valor_ipi').asfloat :=  ACBrNFe1.NotasFiscais[0].NFe.Det[i].Imposto.IPI.vIPI;    

    //flag_encontrado
    cdsNotaEntradaItem.FieldByName('flag_encontrado').asboolean := false;
    cdsNotaEntradaItem.FieldByName('tipo_item').asstring := 'M';
    cdsNotaEntradaItem.post;

  end;

  for I := 0 to ACBrNFe1.NotasFiscais[0].NFe.Ide.NFref.Count -1 do
  begin
    if trim(ACBrNFe1.NotasFiscais[0].NFe.Ide.NFref[i].refNFe) <> '' then
    begin
      cdsDocRef.Append;
      cdsDocRef.FieldByName('tipo_doc').AsString := 'NFE';
      cdsDocRef.FieldByName('chave_nfe').AsString := ACBrNFe1.NotasFiscais[0].NFe.Ide.NFref[i].refNFe;
      cdsDocRef.post;
    end
    else if (ACBrNFe1.NotasFiscais[0].NFe.Ide.NFref[i].RefECF.nECF<>'') and
            (ACBrNFe1.NotasFiscais[0].NFe.Ide.NFref[i].RefECF.nCOO<>'') then
    begin
      cdsDocRef.Append;
      cdsDocRef.FieldByName('numero_ecf').asinteger := strtoint(ACBrNFe1.NotasFiscais[0].NFe.Ide.NFref[i].RefECF.nECF);
      cdsDocRef.FieldByName('numero_cupom_ecf').asinteger := strtoint(ACBrNFe1.NotasFiscais[0].NFe.Ide.NFref[i].RefECF.nCOO);
      cdsDocRef.post;
    end;
  end;

  for I := 0 to ACBrNFe1.NotasFiscais[0].NFe.Cobr.Dup.Count -1 do
  begin
    cdsDuplicata.Append;
    cdsDuplicata.FieldByName('numero_duplicata').asstring := ACBrNFe1.NotasFiscais[0].NFe.Cobr.Dup[i].nDup;
    cdsDuplicata.FieldByName('data_vencimento').asdatetime := ACBrNFe1.NotasFiscais[0].NFe.Cobr.Dup[i].dVenc;
    cdsDuplicata.FieldByName('valor').asfloat := ACBrNFe1.NotasFiscais[0].NFe.Cobr.Dup[i].vDup;
    cdsDuplicata.post;
  end;

  cdsNotaEntrada.post;

end;


procedure TfrmControleNotaFiscalEntradaImportacao.cdsNotaEntradaItemcod_fer_internoChange(
  Sender: TField);
var str_sql : string;
    id_material : integer;
    flag_ok : boolean;
    qr_aux : TUniQuery;
begin
  inherited;
  if cdsNotaEntradaItem.FieldByName('cod_ref_interno').isnull then
  begin
    cdsNotaEntradaItem.FieldByName('descricao_interna').value :=null;
    cdsNotaEntradaItem.FieldByName('id_produto_interno').value :=null;
    cdsNotaEntradaItem.FieldByName('flag_encontrado').Asboolean :=false;
  end
  else
  begin
    if cdsNotaEntradaItem.FieldByName('tipo_item').asstring='M' then
      str_sql := format('select mat_003 as descricao, mat_001 as id, mat_018 as margem from materiais where mat_004 =%s and emp_001=%d',
                      [quotedstr(cdsNotaEntradaItem.FieldByName('cod_ref_interno').AsString), recproj.iEmp])
    else
      str_sql := format('select id_composicao as id, descricao, 0.0 as margem from composicao where codigo_ref =%s and id_empresa=%d',
                      [quotedstr(cdsNotaEntradaItem.FieldByName('cod_ref_interno').AsString), recproj.iEmp]);

    qr_aux :=CriaUniQuery(self, frmmenu.conexao);

    flag_ok :=  ExecutaConsultaSQL(qr_aux, str_sql);

    if flag_ok then
    begin
      cdsNotaEntradaItem.FieldByName('descricao_interna').AsString :=qr_aux.FieldByName('descricao').AsString;
      cdsNotaEntradaItem.FieldByName('id_produto_interno').AsInteger :=qr_aux.FieldByName('id').AsInteger;
      cdsNotaEntradaItem.FieldByName('flag_encontrado').Asboolean :=true;
      // italo 11/09/2017
      CalculandoMargemValorVenda := False;
      cdsNotaEntradaItem.FieldByName('margem').AsFloat :=qr_aux.FieldByName('margem').AsFloat;
    end
    else
      cdsNotaEntradaItem.FieldByName('cod_ref_interno').value :=null;
  end;
end;

procedure TfrmControleNotaFiscalEntradaImportacao.cdsNotaEntradaItemid_categoriaChange(Sender: TField);
var
str_sql:string;
qraux1:tuniquery;

begin
  if not cdsnotaentradaitem.FieldByName('id_categoria').isnull then
  begin
    str_sql:='select cat_001, cat_002 from categoria where emp_001 =:emp_001 and sit_001=4 and cat_001=:codigo';
    qraux1:=tuniquery.Create(self);
    qraux1.Connection:=frmMenu.conexao;
    qrAux1.Close;
    qrAux1.SQL.Clear;
    qrAux1.SQL.Add(str_sql);
    qraux1.ParamByName('emp_001').AsInteger:=RecProj.iemp;
    qraux1.ParamByName('codigo').AsInteger:=cdsnotaentradaitem.FieldByName('id_categoria').AsInteger;
    qraux1.Open;
    if qraux1.RecordCount<=0 then
    begin
        Application.MessageBox('CATEGORIA NÃO CADASTRADA, POR FAVOR INFORMAR UMA CATEGORIA CADASTRADA','ALTERTA',+MB_ICONQUESTION+MB_OK);
        cdsnotaentradaitem.FieldByName('id_categoria').Clear;

    end;

  end;


end;

procedure TfrmControleNotaFiscalEntradaImportacao.cdsNotaEntradaItemmargemChange(
  Sender: TField);
var
  Margem, ValorVenda: Double;
  str_sql: String;
begin
  inherited;

  if not CalculandoMargemValorVenda then
  begin
    CalculandoMargemValorVenda := True;
    if not (cdsNotaEntradaItem.State in [dsEdit, dsInsert]) then
      cdsNotaEntradaItem.Edit;

    Margem := cdsNotaEntradaItem.FieldByName('margem').AsFloat;

    if Margem >= 0.0 then
    begin
      ValorVenda := cdsNotaEntradaItem.FieldByName('valor_unitario').AsFloat * (1 + Margem / 100);
      cdsNotaEntradaItem.FieldByName('valor_venda').Value := roundto(ValorVenda, - 2);
    end
    else
    begin
      application.MessageBox('Margem Inválida, deve ser maior ou igual a Zero!', 'Atenção', MB_ICONINFORMATION);
      cxDBMargem.SetFocus;
    end;

    CalculandoMargemValorVenda := False;
  end;
end;

procedure TfrmControleNotaFiscalEntradaImportacao.cdsNotaEntradaItemtipo_itemChange(
  Sender: TField);
begin
  inherited;
  cdsNotaEntradaItem.FieldByName('cod_ref_interno').Clear;
end;

procedure TfrmControleNotaFiscalEntradaImportacao.cdsNotaEntradaItemvalor_vendaChange(
  Sender: TField);
var
  Margem, ValorVenda: Double;
  str_sql: String;
begin
  inherited;  // italo 11/09/2017

  if not CalculandoMargemValorVenda then
  begin
    CalculandoMargemValorVenda := True;
    if not (cdsNotaEntradaItem.State in [dsEdit, dsInsert]) then
      cdsNotaEntradaItem.Edit;

    ValorVenda := cdsNotaEntradaItem.FieldByName('valor_venda').AsFloat;

    if ValorVenda >= cdsNotaEntradaItem.FieldByName('valor_unitario').AsFloat then
    begin
      Margem := (ValorVenda / cdsNotaEntradaItem.FieldByName('valor_unitario').AsFloat - 1) * 100;
      cdsNotaEntradaItem.FieldByName('margem').Value := roundto(Margem, -2);
    end
    else
    begin
      application.MessageBox('Valor de Venda Inválido, deve ser maior ou igual a Valor Unitário!', 'Atenção', MB_ICONINFORMATION);
      cxDBValorVenda.SetFocus;
    end;

    CalculandoMargemValorVenda := False;
  end;
end;

procedure TfrmControleNotaFiscalEntradaImportacao.acBuscacategoriaExecute(Sender: TObject);
var
str_sql:string;
begin
  if not (cdsNotaEntradaItem.State in [dsEdit, dsInsert]) then
      cdsNotaEntradaItem.Edit;

      str_sql:= 'select cat_001, cat_002,fn_situacoes(sit_001) from categoria ';
      frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
      CriaIntegerArray([0,1,2]), CriaStringArray(['Código', 'Descrição','Situação'])
      , 0, 1, ' sit_001=4 and emp_001=' +IntToStr(RecProj.iEmp), 800, 500);
        frmBuscaRegistro.ShowModal;
      if frmBuscaRegistro.Tag=1 then
      begin
        cdsNotaEntradaItem.FieldByName('id_categoria').value := frmBuscaRegistro.valor_retorno;
      end;
      frmBuscaRegistro.Free;


end;

procedure TfrmControleNotaFiscalEntradaImportacao.acBuscaMaterialExecute(
  Sender: TObject);
var str_sql : string;
begin
  inherited;
  if not (cdsNotaEntradaItem.State in [dsEdit, dsInsert]) then   cdsNotaEntradaItem.Edit;
  begin
    //edIdMaterial.SetFocus;

    if cdsNotaEntradaItem.FieldByName('tipo_item').asstring='M' then
    begin
      str_sql:= ' SELECT MAT.MAT_001, MAT.MAT_004, MAT.MAT_003, ' +
                ' CAT.CAT_002,  UNI.UNI_002, MAT.MAT_008 ' +
                ' FROM MATERIAIS MAT ' +
                ' LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND (UNI.UNI_001 = MAT.UNI_001) ' +
                ' LEFT OUTER JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.CAT_001 = MAT.CAT_001)';

      frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
      CriaIntegerArray([1, 2, 3, 4, 5]), CriaStringArray(['Código', 'Produto',
      'Categoria', 'Unidade', 'Preço']), 1, 1, ' mat.sit_001=4 and MAT.emp_001=' +
      IntToStr(RecProj.iEmp), 800, 500);
      frmBuscaRegistro.ShowModal;
      if frmBuscaRegistro.Tag=1 then
      begin
        cdsNotaEntradaItem.FieldByName('cod_ref_interno').value := frmBuscaRegistro.valor_retorno;
      end;
      frmBuscaRegistro.Free;
    end
    else
    begin

      str_sql:= ' select c.id_composicao,  '+
                ' c.descricao,    '+
                ' u.uni_003,  '+
                ' c.valor_custo, '+
                ' c.codigo_ref'+
                ' from composicao c '+
                ' join unidades u on u.uni_001=c.id_unidade and u.emp_001=c.id_empresa ';
       frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
          vararrayof([0,1,2,3,4]) , //Campos visiveis
          vararrayof(['Código', 'Descrição', 'Unidade','Valor Custo',  'Código referência' ]),//Caption dos campos
          4, 1, ' c.id_situacao=4 and c.id_empresa='+IntToStr(RecProj.iEmp));
       frmBuscaRegistro.ShowModal;
       if frmBuscaRegistro.Tag=1 then
         cdsNotaEntradaItem.FieldByName('cod_ref_interno').value := frmBuscaRegistro.valor_retorno;
       frmBuscaRegistro.Free;

    end;
  end;

end;

procedure TfrmControleNotaFiscalEntradaImportacao.btnAplicarMargemClick(
  Sender: TObject);
var
  i: Integer;
  Margem: Double;
begin
  inherited;  // Rafael 22/11/2017

  Margem := cdsNotaEntradaItem.FieldByName('margem').AsFloat;

  if Margem <> 0.0 then
  begin
    //Desabilita os controles para não 'correr' a grid - (Bruno 16/04/2018)
    cdsNotaEntradaItem.DisableControls;
    cdsNotaEntradaItem.First;

    while not cdsNotaEntradaItem.eof do
    begin
      cdsNotaEntradaItem.Edit;
      CalculandoMargemValorVenda := False;
      cdsNotaEntradaItem.FieldByName('margem').Value := Margem;
      cdsNotaEntradaItem.Post;
      cdsNotaEntradaItem.Next;
    end;

    cdsNotaEntradaItem.First;
     //Habilita os controles - (Bruno 16/04/2018)
    cdsNotaEntradaItem.EnableControls;
  end;
end;

procedure TfrmControleNotaFiscalEntradaImportacao.btnImportarNFeClick(
  Sender: TObject);
var  flag_fornecedor, flag_transportador, flag_produtos : boolean ;
     msg, str_sql, str_sql2 , tipo_item : string;
     i : integer;
     id_material, id_composicao : Variant;
     valor_custo, valor_venda:double;
begin
  inherited;
  msg := '';

  if cdsNotaEntrada.IsEmpty then
  begin
    application.MessageBox('Nenhuma nota selecionada para importar!', 'Atenção', MB_ICONINFORMATION);
    exit;
  end;

  if CadastrosPendentes(flag_fornecedor, flag_transportador, flag_produtos) then
  begin
    if flag_fornecedor then
      msg := 'Fornecedor não encontrado no cadastro!' + sLineBreak;
    if flag_transportador then
      msg := msg + 'Transportador não encontrado no cadastro!' + sLineBreak;  
    if flag_produtos then
      msg := msg + 'Produto(s) não encontrado(s) no cadastro! Faça a importação dos cadastros ou selecione os registros correspondentes para cada item!' + sLineBreak;           
    
    msg := 'Impossível fazer a importação!' + sLineBreak + msg;

    Application.MessageBox(pchar(msg), 'Atenção', MB_ICONINFORMATION) ; 
  end
  else
  begin
    //Verifica se já não existe a nota para esse mesmo fornecedor
    str_sql :=format(' select 1 from nota_entrada where id_fornecedor=%d and numero=%d '+
                     ' and serie=%d and date_part(''year'',data_emissao)=date_part(''year'', timestamp %s)',
                     [cdsNotaEntrada.FieldByName('id_fornecedor_interno').AsInteger,
                      cdsNotaEntrada.FieldByName('numero').AsInteger,
                      cdsNotaEntrada.FieldByName('serie').asinteger,
                      quotedstr(formatdatetime('yyyy-mm-dd', cdsNotaEntrada.FieldByName('data_emissao').asdatetime))]);
    if BuscaCampo(i, str_sql, '', false) then
    begin
      application.MessageBox('Esta nota já foi cadastrada!', 'Atenção', MB_ICONINFORMATION);
      exit;
    end;
  
    if Application.MessageBox('Confirma a importação desta nota?', 'Atenção', MB_ICONQUESTION + MB_YESNO)=mrYes then
    begin

    
      str_sql :='INSERT INTO nota_entrada '+
                '  (id_empresa, id_fornecedor, id_usuario, id_situacao, numero, data_emissao, data_entrada, cfop, serie, '+
                '   valor_icms, valor_base_icms, valor_icms_sub, valor_base_icms_sub, valor_frete, valor_seguro, valor_ipi, valor_despesas, '+
                '   valor_desconto, valor_total, valor_produtos, valor_icms_retido, valor_pis, valor_cofins, chave_autorizacao,'+
                '   info_complementar, numero_fatura, tipo_pagamento, id_transportador, transp_numero_volumes, transp_quantidade_volumes,'+
                '   transp_especie, transp_marca, transp_peso_liquido, transp_peso_bruto, transp_modalidade, transp_placa_numero, transp_placa_uf,'+
                '   transp_rntc )'+
                ' VALUES '+
                '  (:id_empresa, :id_fornecedor, :id_usuario, 0, :numero, :data_emissao, localtimestamp, :cfop, :serie, '+
                '   :valor_icms, :valor_base_icms, :valor_icms_sub, :valor_base_icms_sub, :valor_frete, :valor_seguro, :valor_ipi, :valor_despesas, '+
                '   :valor_desconto, :valor_total, :valor_produtos, 0, :valor_pis, :valor_cofins, :chave_autorizacao,'+
                '   :info_complementar, :numero_fatura, :tipo_pagamento, :id_transportador, :transp_numero_volumes, :transp_quantidade_volumes,'+
                '   :transp_especie, :transp_marca, :transp_peso_liquido, :transp_peso_bruto, :transp_modalidade, :transp_placa_numero, :transp_placa_uf, '+
                '   :transp_rntc)';
      ExecutaComandoSQL(str_sql, vararrayof([recproj.iEmp,
                                             cdsNotaEntrada.FieldByName('id_fornecedor_interno').AsInteger,
                                             id_usuario_nota,
                                             cdsNotaEntrada.FieldByName('numero').AsInteger,
                                             cdsNotaEntrada.FieldByName('data_emissao').asdatetime,
                                             cdsNotaEntrada.FieldByName('cfop').asstring,
                                             cdsNotaEntrada.FieldByName('serie').asinteger,
                                             cdsNotaEntrada.FieldByName('valor_icms').asfloat,
                                             cdsNotaEntrada.FieldByName('valor_base_icms').asfloat,
                                             cdsNotaEntrada.FieldByName('valor_icms_sub').asfloat,
                                             cdsNotaEntrada.FieldByName('valor_base_icms_sub').asfloat,
                                             cdsNotaEntrada.FieldByName('valor_frete').asfloat,
                                             cdsNotaEntrada.FieldByName('valor_seguro').asfloat,
                                             cdsNotaEntrada.FieldByName('valor_ipi').asfloat,
                                             cdsNotaEntrada.FieldByName('valor_despesas').asfloat,
                                             cdsNotaEntrada.FieldByName('valor_desconto').asfloat,
                                             cdsNotaEntrada.FieldByName('valor_total').asfloat,
                                             cdsNotaEntrada.FieldByName('valor_produtos').asfloat,
                                             cdsNotaEntrada.FieldByName('valor_pis').asfloat,
                                             cdsNotaEntrada.FieldByName('valor_cofins').asfloat,
                                             cdsNotaEntrada.FieldByName('chave_autorizacao').asstring,
                                             cdsNotaEntrada.FieldByName('info_complementar').AsString,
                                             cdsNotaEntrada.FieldByName('numero_fatura').asstring,
                                             cdsNotaEntrada.FieldByName('tipo_pagamento').asinteger,
                                             cdsNotaEntrada.FieldByName('id_transportador_interno').value,
                                             cdsNotaEntrada.FieldByName('transp_numero_volumes').value,
                                             cdsNotaEntrada.FieldByName('transp_quantidade_volumes').value,
                                             cdsNotaEntrada.FieldByName('transp_especie').value,
                                             cdsNotaEntrada.FieldByName('transp_marca').value,
                                             cdsNotaEntrada.FieldByName('transp_peso_liquido').value,
                                             cdsNotaEntrada.FieldByName('transp_peso_bruto').value,
                                             cdsNotaEntrada.FieldByName('transp_modalidade').value,
                                             cdsNotaEntrada.FieldByName('transp_placa').value,
                                             cdsNotaEntrada.FieldByName('transp_placa_uf').value,
                                             cdsNotaEntrada.FieldByName('transp_rntc').value]));
      str_sql := 'select coalesce(max(id_nota_entrada),0) as id from nota_entrada'; 
      BuscaCampo(id_nota, str_sql, '', false);
      
      //insere os itens
      cdsNotaEntradaItem.First;
      i:=1;
      str_sql :='INSERT INTO nota_entrada_item'+
                '  (id_nota_entrada, id_empresa, item, id_material, codigo_fornecedor, descricao_fornecedor, codigo_ean, '+
                '   cst, cfop, quantidade, peso_unitario_liquido, peso_unitario_bruto, valor_unitario, valor_total, '+
                '   valor_frete, valor_seguro, valor_despesas, icms_aliq, icms_aliq_reducao, valor_base_icms, valor_icms, '+
                '   icms_aliq_sub, valor_base_icms_sub, valor_icms_sub, valor_icms_isento, valor_icms_nao_trib, valor_desconto,'+
                '   tipo_ipi, ipi_aliq, pis_aliq, cofins_aliq, valor_base_ipi, valor_base_pis_cofins, valor_ipi, id_situacao, '+
                '   ncm, valor_pis, valor_cofins, unidade, serial, numeracao, complemento_descricao, cest, csosn, cst_pis, '+
                '   cst_cofins, mvast, margem, valor_venda, id_composicao, tipo_item)'+
                'VALUES  (:id_nota_entrada, :id_empresa, :item, :id_material, :codigo_fornecedor, :descricao, :codigo_ean, '+
                '   :cst, :cfop, :quantidade, 0, 0, :valor_unitario, :valor_total, '+
                '   :valor_frete, :valor_seguro, :valor_despesas, :icms_aliq, :icms_aliq_reducao, :valor_base_icms, :valor_icms, '+
                '   :icms_aliq_sub, :valor_base_icms_sub, :valor_icms_sub, 0, 0, :valor_desconto, '+
                '   0, :ipi_aliq, :pis_aliq, :cofins_aliq, :valor_base_ipi, :valor_base_pis_cofins, :valor_ipi, 4, '+
                '   :ncm, :valor_pis, :valor_cofins, :unidade, null, null, :complemento_descricao, :cest, :csosn, :cst_pis, '+
                '   :cst_cofins, :mvast, :margem, :valor_venda, :id_composicao, :tipo_item)';

      while not cdsNotaEntradaItem.eof do
      begin

       if inserir_custos_impostos_importacao_nfe then     // Se tiver marcado para inserir custo dos impostos
        begin
          valor_custo:= roundto(cdsNotaEntradaItem.FieldByName('valor_unitario').AsFloat+
          (cdsNotaEntradaItem.FieldByName('valor_ipi').AsFloat/cdsNotaEntradaItem.FieldByName('quantidade').AsFloat) +
          (cdsNotaEntradaItem.FieldByName('valor_icms_sub').AsFloat/cdsNotaEntradaItem.FieldByName('quantidade').AsFloat),2);
          valor_venda:= roundto(valor_custo * (1 + cdsNotaEntradaItem.FieldByName('margem').AsFloat / 100), -2);
        end
        else
        begin
         valor_custo:= cdsNotaEntradaItem.FieldByName('valor_unitario').AsFloat;
         valor_venda:= cdsNotaEntradaItem.FieldByName('valor_venda').AsFloat;
        end;

        tipo_item := cdsNotaEntradaItem.FieldByName('tipo_item').AsString;

        if tipo_item='M' then
        begin
          id_material := cdsNotaEntradaItem.FieldByName('id_produto_interno').asinteger;
          id_composicao :=null;
        end
        else
        begin
          id_material := null;
          id_composicao :=cdsNotaEntradaItem.FieldByName('id_produto_interno').asinteger;
        end;

          ExecutaComandoSQL(str_sql, vararrayof([id_nota, recproj.iEmp, i,
                                             id_material,
                                             cdsNotaEntradaItem.FieldByName('codigo').Asstring,
                                             cdsNotaEntradaItem.FieldByName('descricao').Asstring,
                                             cdsNotaEntradaItem.FieldByName('codigo_ean').Asstring,
                                             cdsNotaEntradaItem.FieldByName('cst_icms').value,
                                             cdsNotaEntradaItem.FieldByName('cfop').asstring,
                                             cdsNotaEntradaItem.FieldByName('quantidade').asfloat,
                                             roundto(valor_custo, -2),
                                             cdsNotaEntradaItem.FieldByName('valor_total').asfloat,
                                             cdsNotaEntradaItem.FieldByName('valor_frete').asfloat,
                                             cdsNotaEntradaItem.FieldByName('valor_seguro').asfloat,
                                             cdsNotaEntradaItem.FieldByName('valor_despesas').asfloat,
                                             cdsNotaEntradaItem.FieldByName('icms_aliq').asfloat,
                                             cdsNotaEntradaItem.FieldByName('icms_aliq_reducao').asfloat,
                                             cdsNotaEntradaItem.FieldByName('valor_base_icms').asfloat,
                                             cdsNotaEntradaItem.FieldByName('valor_icms').asfloat,
                                             cdsNotaEntradaItem.FieldByName('icms_aliq_sub').asfloat,
                                             cdsNotaEntradaItem.FieldByName('valor_base_icms_sub').asfloat,
                                             cdsNotaEntradaItem.FieldByName('valor_icms_sub').asfloat,
                                             cdsNotaEntradaItem.FieldByName('valor_desconto').asfloat,
                                             cdsNotaEntradaItem.FieldByName('ipi_aliq').asfloat,
                                             cdsNotaEntradaItem.FieldByName('pis_aliq').asfloat,
                                             cdsNotaEntradaItem.FieldByName('cofins_aliq').asfloat,
                                             cdsNotaEntradaItem.FieldByName('valor_base_ipi').asfloat,
                                             cdsNotaEntradaItem.FieldByName('valor_base_pis_cofins').asfloat,
                                             cdsNotaEntradaItem.FieldByName('valor_ipi').asfloat,
                                             cdsNotaEntradaItem.FieldByName('ncm').asstring,
                                             cdsNotaEntradaItem.FieldByName('valor_pis').asfloat,
                                             cdsNotaEntradaItem.FieldByName('valor_cofins').asfloat,
                                             cdsNotaEntradaItem.FieldByName('unidade').asstring,
                                             cdsNotaEntradaItem.FieldByName('complemento_descricao').value,
                                             cdsNotaEntradaItem.FieldByName('cest').value,
                                             cdsNotaEntradaItem.FieldByName('csosn').value,
                                             cdsNotaEntradaItem.FieldByName('cst_pis').value,
                                             cdsNotaEntradaItem.FieldByName('cst_cofins').value,
                                             cdsNotaEntradaItem.FieldByName('mvast').value,
                                             roundto(((valor_venda / (valor_custo)) - 1)* 100, -2),
                                             roundto(valor_venda, -2),
                                             id_composicao,
                                             tipo_item]));

        cdsNotaEntradaItem.Next;
        i:= i +1;
      end;

      //insere os documentos referenciados
      cdsDocRef.First;
      i:=1;
      str_sql :=' INSERT INTO nota_entrada_doc_referenciado '+
                ' (id_nota_entrada, id_empresa, item, tipo_doc, chave_nfe, numero_ecf, numero_cupom_ecf, id_situacao)'+
                ' VALUES  (:id_nota_entrada, :id_empresa, :item, :tipo_doc, :chave_nfe, :numero_ecf, :numero_cupom_ecf, 4)';
       
      while not cdsDocRef.eof do
      begin
        ExecutaComandoSQL(str_sql, vararrayof([id_nota, recproj.iEmp, i,
                                             cdsDocRef.FieldByName('tipo_doc').asstring,
                                             cdsDocRef.FieldByName('chave_nfe').value,
                                             cdsDocRef.FieldByName('numero_ecf').value,
                                             cdsDocRef.FieldByName('numero_cupom_ecf').value]));                      
        cdsDocRef.Next;
        i:= i +1;
      end;     

      //insere as duplicatas
      cdsDuplicata.First;
      i:=1;
      str_sql :=' INSERT INTO nota_entrada_duplicata '+
                ' (id_nota_entrada, id_empresa, item, numero_duplicata, data_vencimento, valor, id_situacao) '+
                ' VALUES (:id_nota_entrada, :id_empresa, :item, :numero_duplicata, :data_vencimento, :valor, 4)';
       
      while not cdsDuplicata.eof do
      begin
        ExecutaComandoSQL(str_sql, vararrayof([id_nota, recproj.iEmp, i,
                                             cdsDuplicata.FieldByName('numero_duplicata').asstring,
                                             cdsDuplicata.FieldByName('data_vencimento').asdatetime,
                                             cdsDuplicata.FieldByName('valor').asfloat]));                      
        cdsDuplicata.Next;
        i:= i +1;
      end;    

      self.Tag := 1;

      //faz o lançamento em estoque e contas a pagar
      frmControleNotaFiscalEntrada.LancarNota(id_nota, id_usuario_nota);

      application.MessageBox('Nota importada com sucesso!', 'Atenção', MB_ICONINFORMATION);
      self.close;      
    
    end;
  end;
end;

procedure TfrmControleNotaFiscalEntradaImportacao.btAdicionarItemClick(
  Sender: TObject);
var openDialog : TOpenDialog;
    msg : string;
begin
  inherited;
  openDialog := TOpenDialog.Create(self);
  openDialog.Filter := 'Arquivo XML|*.xml';
  if openDialog.Execute then
  begin
    edCaminhoXML.Text := openDialog.FileName;
    if FileExists(openDialog.FileName) then
    begin
      try
        ACBrNFe1.NotasFiscais.Clear;
        ACBrNFe1.NotasFiscais.LoadFromFile(openDialog.FileName);
        CarregarNFe;
        VerificaFornecedorTransportador;
        VerificaProdutos;
      except
        on E : Exception do
        begin
          msg := 'Não foi possível carregar este arquivo, certifique-se de que o XML é de uma nota válida!' + sLineBreak +
                 'Detalhes do erro: '+ sLineBreak + e.Message;

          application.MessageBox(pchar(msg), 'Atenção', MB_ICONWARNING);
        end;
      end;
    end;
  end;
end;

procedure TfrmControleNotaFiscalEntradaImportacao.btImportarCadastrosClick(
  Sender: TObject);
  var flag_fornecedor, flag_transportador, flag_produtos  : boolean;
begin
  if cdsNotaEntrada.IsEmpty then exit;  // Se for vazio ele

   // CadastrosPendentes é responsavel pela busca flag_fornecedor, Flag_transportador, Flag_produtos
  if CadastrosPendentes(flag_fornecedor, flag_transportador, flag_produtos) then //
  begin
    if application.MessageBox('Confirma a importação dos dados de fornecedor e produtos desta nota?', 'Atenção', MB_ICONQUESTION + MB_YESNO)=mryes then
    begin
      if flag_fornecedor or flag_transportador then
      begin
        ImportaFornecedorTransportador;  // Insere fornecedor e transportador
        VerificaFornecedorTransportador; // Ele verifica o fornecedor e transportador
      end;
      if flag_produtos then
        ImportaProdutos;  // Responsavel para importar os produtos , todos os insert são feitos aqui
    end;

  end
  else
  begin
    application.MessageBox('Todos os dados de fornecedor e produtos já encontram-se no banco de dados!', 'Atenção', MB_ICONINFORMATION);
  end;

  VerificaFornecedorTransportador;
  VerificaProdutos(true);

  cdsNotaEntradaItem.First;
end;

function TfrmControleNotaFiscalEntradaImportacao.CadastrosPendentes(out flag_fornecedor : boolean;
                             out flag_transportador : boolean;out flag_produtos : boolean)   : boolean;

begin
  inherited;
  VerificaFornecedorTransportador;
  VerificaProdutos(true);

  flag_fornecedor := cdsNotaEntrada.FieldByName('id_fornecedor_interno').IsNull;

  if cdsNotaEntrada.FieldByName('transportador_cnpj').AsString<>'' then
    flag_transportador := cdsNotaEntrada.FieldByName('id_transportador_interno').IsNull
  else
    flag_transportador := false;

  flag_produtos :=false;
  cdsNotaEntradaItem.First;
  while not cdsNotaEntradaItem.eof do
  begin
    if not flag_produtos then
    begin
      flag_produtos := not cdsNotaEntradaItem.FieldByName('flag_encontrado').AsBoolean;
    end;
    cdsNotaEntradaItem.next;
  end;

  result := flag_fornecedor or  flag_transportador or flag_produtos;

end;

end.
