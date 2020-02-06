unit uDetalheNotaSaida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, System.Actions,
  Vcl.ActnList, cxCurrencyEdit, cxDBEdit, cxButtonEdit, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, Data.DB, MemDS,
  DBAccess, Uni, Vcl.ExtCtrls, AdvPanel, AdvGlowButton, JvExStdCtrls,
  JvCombobox, JvDBCombobox, Vcl.DBCtrls, AdvGroupBox, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, AdvPageControl, Vcl.ComCtrls, cxImageComboBox,
  cxMemo, system.Math, System.StrUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmDetalheNotaSaida = class(TfrmModelo)
    qrNotaSaida: TUniQuery;
    qrNotaSaidaid_nota_saida: TIntegerField;
    qrNotaSaidaid_empresa: TIntegerField;
    qrNotaSaidaid_cliente: TIntegerField;
    qrNotaSaidaid_usuario: TIntegerField;
    qrNotaSaidanumero: TIntegerField;
    qrNotaSaidamodelo_especie: TIntegerField;
    qrNotaSaidadata_emissao: TDateField;
    qrNotaSaidadata_saida: TDateField;
    qrNotaSaidacfop: TWideStringField;
    qrNotaSaidaserie: TIntegerField;
    qrNotaSaidavalor_icms: TFloatField;
    qrNotaSaidavalor_base_icms: TFloatField;
    qrNotaSaidavalor_icms_sub: TFloatField;
    qrNotaSaidavalor_base_icms_sub: TFloatField;
    qrNotaSaidavalor_frete: TFloatField;
    qrNotaSaidavalor_seguro: TFloatField;
    qrNotaSaidavalor_ipi: TFloatField;
    qrNotaSaidavalor_despesas: TFloatField;
    qrNotaSaidavalor_desconto: TFloatField;
    qrNotaSaidavalor_total: TFloatField;
    qrNotaSaidavalor_produtos: TFloatField;
    qrNotaSaidavalor_icms_retido: TFloatField;
    qrNotaSaidavalor_pis: TFloatField;
    qrNotaSaidavalor_cofins: TFloatField;
    DSNotaSaida: TDataSource;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label3: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label4: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    ActionList1: TActionList;
    acBuscaCliente: TAction;
    edCFOP: TcxDBButtonEdit;
    acBuscaCFOP: TAction;
    btCancelar: TAdvGlowButton;
    btSalvar: TAdvGlowButton;
    qrNotaSaidanome_cliente: TWideStringField;
    qrNotaSaidacpf_cnpj_cliente: TWideStringField;
    qrNotaSaidarg_ie_cliente: TWideStringField;
    Label20: TLabel;
    AdvGroupBox1: TAdvGroupBox;
    Label21: TLabel;
    DBText1: TDBText;
    Label22: TLabel;
    DBText2: TDBText;
    Label23: TLabel;
    DBText3: TDBText;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    JvDBComboBox1: TJvDBComboBox;
    Label24: TLabel;
    edCodCliente: TcxDBButtonEdit;
    qrNotaSaidachave_autorizacao: TWideStringField;
    Label19: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    AdvGroupBox2: TAdvGroupBox;
    Label6: TLabel;
    cxDBCurrencyEdit14: TcxDBCurrencyEdit;
    cxDBCurrencyEdit13: TcxDBCurrencyEdit;
    cxDBCurrencyEdit12: TcxDBCurrencyEdit;
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
    Label18: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    qrNotaSaidaendereco_cliente: TWideStringField;
    qrNotaSaidacfop_descricao: TWideStringField;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    qrNotaSaidaItem: TUniQuery;
    qrNotaSaidaItemitem: TIntegerField;
    qrNotaSaidaItemcodigo_produto: TWideStringField;
    qrNotaSaidaItemdescricao_produto: TWideStringField;
    qrNotaSaidaItemcst: TIntegerField;
    qrNotaSaidaItemcfop: TWideStringField;
    qrNotaSaidaItemquantidade: TFloatField;
    qrNotaSaidaItempeso: TFloatField;
    qrNotaSaidaItemvalor_unitario: TFloatField;
    qrNotaSaidaItemsubtotal: TFloatField;
    qrNotaSaidaItemvalor_desconto: TFloatField;
    qrNotaSaidaItemvalor_total: TFloatField;
    qrNotaSaidaItemvalor_icms: TFloatField;
    qrNotaSaidaItemvalor_ipi: TFloatField;
    dsNotaSaidaItem: TDataSource;
    qrNotaSaidaid_situacao: TIntegerField;
    qrNotaSaidafinalidade: TIntegerField;
    cbFinalidade: TJvDBComboBox;
    Label25: TLabel;
    qrNotaSaidachave_nf_devolvida: TWideStringField;
    Label26: TLabel;
    edChaveNFDevolvida: TcxDBTextEdit;
    PageControlNFE: TAdvPageControl;
    pgItens: TAdvTabSheet;
    pgDocReferenciado: TAdvTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1item: TcxGridDBColumn;
    cxGrid1DBTableView1codigo_produto: TcxGridDBColumn;
    cxGrid1DBTableView1descricao_produto: TcxGridDBColumn;
    cxGrid1DBTableView1cst: TcxGridDBColumn;
    cxGrid1DBTableView1cfop: TcxGridDBColumn;
    cxGrid1DBTableView1quantidade: TcxGridDBColumn;
    cxGrid1DBTableView1peso: TcxGridDBColumn;
    cxGrid1DBTableView1valor_unitario: TcxGridDBColumn;
    cxGrid1DBTableView1subtotal: TcxGridDBColumn;
    cxGrid1DBTableView1valor_desconto: TcxGridDBColumn;
    cxGrid1DBTableView1valor_total: TcxGridDBColumn;
    cxGrid1DBTableView1valor_icms: TcxGridDBColumn;
    cxGrid1DBTableView1valor_ipi: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    btAdicionarItem: TAdvGlowButton;
    btRemoverItem: TAdvGlowButton;
    btEditarItem: TAdvGlowButton;
    qrNotaSaidaDocRef: TUniQuery;
    dsNotaSaidaDocRef: TDataSource;
    qrNotaSaidaDocRefid_nota_saida: TIntegerField;
    qrNotaSaidaDocRefid_empresa: TIntegerField;
    qrNotaSaidaDocRefitem: TIntegerField;
    qrNotaSaidaDocReftipo_doc: TWideStringField;
    qrNotaSaidaDocRefchave_nfe: TWideStringField;
    qrNotaSaidaDocRefnumero_ecf: TIntegerField;
    qrNotaSaidaDocRefnumero_cupom_ecf: TIntegerField;
    qrNotaSaidaDocRefid_situacao: TIntegerField;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1item: TcxGridDBColumn;
    cxGridDBTableView1tipo_doc: TcxGridDBColumn;
    cxGridDBTableView1chave_nfe: TcxGridDBColumn;
    cxGridDBTableView1numero_ecf: TcxGridDBColumn;
    cxGridDBTableView1numero_cupom_ecf: TcxGridDBColumn;
    btAdicionarDoc: TAdvGlowButton;
    btRemoverDoc: TAdvGlowButton;
    btEditarDoc: TAdvGlowButton;
    pgFaturamento: TAdvTabSheet;
    qrNotaSaidainfo_complementar: TWideMemoField;
    qrNotaSaidanumero_fatura: TWideStringField;
    qrNotaSaidatipo_pagamento: TIntegerField;
    pgInfoComplementares: TAdvTabSheet;
    meObservacoes: TcxDBMemo;
    Label27: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    JvDBComboBox3: TJvDBComboBox;
    Label30: TLabel;
    qrNotaSaidaDuplicata: TUniQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField6: TIntegerField;
    dsNotaSaidaDuplicata: TDataSource;
    qrNotaSaidaDuplicatanumero_duplicata: TWideStringField;
    qrNotaSaidaDuplicatavalor: TFloatField;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2item: TcxGridDBColumn;
    cxGridDBTableView2numero_duplicata: TcxGridDBColumn;
    cxGridDBTableView2valor: TcxGridDBColumn;
    cxGridDBTableView2DataVencimento: TcxGridDBColumn;
    btAdicionarDuplicata: TAdvGlowButton;
    btRemoverDuplicata: TAdvGlowButton;
    btEditarDuplicata: TAdvGlowButton;
    qrNotaSaidaDuplicatadata_vencimento: TDateField;
    Label28: TLabel;
    pgCartaCorrecao: TAdvTabSheet;
    qrNotaSaidacarta_correcao: TWideMemoField;
    qrNotaSaidacarta_correcao_sequencial: TIntegerField;
    Label29: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label31: TLabel;
    cxDBMemo2: TcxDBMemo;
    pgTransportador: TAdvTabSheet;
    qrNotaSaidaid_transportador: TIntegerField;
    qrNotaSaidatransp_numero_volumes: TWideStringField;
    qrNotaSaidatransp_quantidade_volumes: TIntegerField;
    qrNotaSaidatransp_especie: TWideStringField;
    qrNotaSaidatransp_marca: TWideStringField;
    qrNotaSaidatransp_peso_liquido: TFloatField;
    qrNotaSaidatransp_peso_bruto: TFloatField;
    qrNotaSaidatransp_modalidade: TIntegerField;
    edCodTransportador: TcxDBButtonEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    qrNotaSaidanome_transportador: TWideStringField;
    qrNotaSaidacnpj_transportador: TWideStringField;
    qrNotaSaidaie_transportador: TWideStringField;
    acBuscaTransportador: TAction;
    Label35: TLabel;
    Label36: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label37: TLabel;
    cxDBSpinEdit4: TcxDBSpinEdit;
    Label38: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label39: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label40: TLabel;
    Label41: TLabel;
    cxDBCurrencyEdit15: TcxDBCurrencyEdit;
    cxDBCurrencyEdit16: TcxDBCurrencyEdit;
    Label42: TLabel;
    cxDBCurrencyEdit17: TcxDBCurrencyEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    qrNotaSaidatransp_placa_numero: TWideStringField;
    qrNotaSaidatransp_placa_uf: TWideStringField;
    qrNotaSaidatransp_rntc: TWideStringField;
    Label43: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    Label44: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    Label45: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    qrNotaSaidaItemefetuar_calculos: TBooleanField;
    AdvTabSheet1: TAdvTabSheet;
    qrNotaSaidaPagamentos: TUniQuery;
    qrNotaSaidaPagamentosid_nota_saida: TIntegerField;
    qrNotaSaidaPagamentosid_empresa: TIntegerField;
    qrNotaSaidaPagamentositem: TIntegerField;
    qrNotaSaidaPagamentosid_forma: TIntegerField;
    qrNotaSaidaPagamentosvalor: TFloatField;
    qrNotaSaidaPagamentosforma: TWideStringField;
    dsNotaSaidaPagamentos: TDataSource;
    Label46: TLabel;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3item: TcxGridDBColumn;
    cxGridDBTableView3forma: TcxGridDBColumn;
    cxGridDBTableView3valor: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    btAdicionarPagamento: TAdvGlowButton;
    btRemoverPagamento: TAdvGlowButton;
    btEditarPagamento: TAdvGlowButton;
    JvDBComboBox4: TJvDBComboBox;
    cbPresenca: TJvDBComboBox;
    Label47: TLabel;
    qrNotaSaidaindpres: TIntegerField;
    procedure acBuscaClienteExecute(Sender: TObject);
    procedure qrNotaSaidaBeforePost(DataSet: TDataSet);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure acBuscaCFOPExecute(Sender: TObject);
    procedure qrNotaSaidaid_clienteChange(Sender: TField);
    constructor Create(sender : Tcomponent ; id_usuario_nota: integer; id_nota_saida : integer = 0);  reintroduce;
    procedure qrNotaSaidacfopChange(Sender: TField);
    procedure qrNotaSaidaNewRecord(DataSet: TDataSet);
    procedure btAdicionarItemClick(Sender: TObject);
    procedure btEditarItemClick(Sender: TObject);
    procedure qrNotaSaidaAfterOpen(DataSet: TDataSet);
    procedure btRemoverItemClick(Sender: TObject);
    procedure ReordenaItensNf(tabela : string = 'nota_saida_item');
    procedure AtualizaTotalNota;
    procedure qrNotaSaidafinalidadeChange(Sender: TField);
    procedure DSNotaSaidaStateChange(Sender: TObject);
    procedure btAdicionarDocClick(Sender: TObject);
    procedure btRemoverDocClick(Sender: TObject);
    procedure btEditarDocClick(Sender: TObject);
    procedure btAdicionarDuplicataClick(Sender: TObject);
    procedure btRemoverDuplicataClick(Sender: TObject);
    procedure btEditarDuplicataClick(Sender: TObject);
    procedure acBuscaTransportadorExecute(Sender: TObject);
    procedure qrNotaSaidaid_transportadorChange(Sender: TField);
    procedure RateiaFreteSeguro;
    procedure qrNotaSaidaAfterPost(DataSet: TDataSet);
    procedure qrNotaSaidavalor_freteChange(Sender: TField);
    procedure qrNotaSaidavalor_seguroChange(Sender: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure VerificaDadosCliente;
    procedure btAdicionarPagamentoClick(Sender: TObject);
    procedure btRemoverPagamentoClick(Sender: TObject);
    procedure btEditarPagamentoClick(Sender: TObject);
    //procedure AtualizaTotaisItens;

  private
    { Private declarations }
    id_usuario_nota : integer;
  public
    { Public declarations }
    ultima_flag_efetuar: Boolean;
  end;

var
  frmDetalheNotaSaida: TfrmDetalheNotaSaida;

implementation

{$R *.dfm}

uses uMenu, uFuncoes, uBuscaRegistro, uDetalheNotaSaidaItem, Funcao_DB,
  uDetalheNotaSaidaDocReferenciado, uDetalheNotaSaidaDuplicata,
  uDetalheNotaSaidaPagamentos;

{procedure TfrmDetalheNotaSaida.AtualizaTotaisItens;
var str_sql : string;
    qr_aux  : Tuniquery;
begin
  qr_aux := CriaUniQuery(self, frmMenu.conexao);
  str_sql := 'update nota_saida_item set valor_total =     ';

end;   }

procedure TfrmDetalheNotaSaida.RateiaFreteSeguro;
var str_sql : string;
    qr_aux, qr_aux2  : Tuniquery;
    rateio_frete_peso : boolean;
    total_frete, total_seguro, total_produtos, valor_seguro_item,
    valor_frete_item, total_peso_bruto,
    valor_seguro_dif, valor_frete_dif : double;
    id_nota : integer;
begin
  qr_aux := CriaUniQuery(self, frmMenu.conexao);
  qr_aux2:= CriaUniQuery(self, frmMenu.conexao);

  id_nota := qrNotaSaida.FieldByName('id_nota_saida').AsInteger;
  total_frete  := qrNotaSaida.FieldByName('valor_frete').asfloat;
  total_seguro := qrNotaSaida.FieldByName('valor_seguro').asfloat;
  total_produtos := qrNotaSaida.FieldByName('valor_produtos').asfloat;

  //verifica se existe peso bruto informado nos itens para poder fazer o rateio por peso
  str_sql := format('select coalesce(sum(peso_unitario_bruto*quantidade),0.0) as peso_bruto from nota_saida_item where id_nota_saida=%d and id_empresa=%d and id_situacao=4',
             [id_nota, recproj.iEmp]);
  ExecutaConsultaSQL(qr_aux, str_sql);
  total_peso_bruto := qr_aux.fieldbyname('peso_bruto').AsFloat;
  rateio_frete_peso := total_peso_bruto >0.0;

  str_sql := format(' select item, valor_total, (peso_unitario_bruto*quantidade) as peso_bruto '+
                    ' from nota_saida_item where id_nota_saida=%d and id_empresa=%d and id_situacao=4 '+
                    ' order by item',
             [id_nota, recproj.iEmp]);
  if ExecutaConsultaSQL(qr_aux, str_sql) then
  begin
    while not qr_aux.Eof do
    begin
      //rateia o valor do seguro
      if  total_produtos = 0 then total_produtos := 0.01; //pra nao dar divisao por zero...
      valor_seguro_item := total_seguro * (qr_aux.FieldByName('valor_total').AsFloat / total_produtos);

      //rateia o valor do frete por peso
      if rateio_frete_peso then
      begin
         valor_frete_item := total_frete * (qr_aux.FieldByName('peso_bruto').AsFloat / total_peso_bruto);
      end
      else //ou rateia por valor
      begin
        valor_frete_item := total_frete * (qr_aux.FieldByName('valor_total').AsFloat / total_produtos);
      end;
      str_sql := ' update nota_saida_item set valor_frete = :frete, valor_seguro = :seguro '+
                 ' where id_nota_saida=:id_nota and id_empresa=:id_empresa and item = :item ';
      ExecutaComandoSQL(str_sql, vararrayof([valor_frete_item,valor_seguro_item, id_nota, recproj.iEmp,qr_aux.FieldByName('item').AsInteger]) );
      qr_aux.Next;
    end;

    //corrige eventuais diferenças de arredondamento no primeiro item
    str_sql := format(' select sum(valor_frete) as frete, sum(valor_seguro) as seguro '+
                      ' from nota_saida_item where id_nota_saida=%d and id_empresa=%d and id_situacao=4 ',
             [id_nota, recproj.iEmp]);
    ExecutaConsultaSQL(qr_aux2, str_sql);
    valor_seguro_dif := total_seguro - qr_aux2.FieldByName('seguro').AsFloat;
    valor_frete_dif := total_frete - qr_aux2.FieldByName('frete').AsFloat;

    str_sql := ' update nota_saida_item set valor_frete = valor_frete + :frete_dif, valor_seguro = valor_seguro + :seguro_dif '+
               ' where id_nota_saida=:id_nota and id_empresa=:id_empresa and item = 1 ';
    ExecutaComandoSQL(str_sql, vararrayof([valor_frete_dif,valor_seguro_dif, id_nota, recproj.iEmp]) );

  end;
  qr_aux.free;
end;


procedure TfrmDetalheNotaSaida.AtualizaTotalNota;
var str_sql : string;
    qr_aux : Tuniquery;
begin
  inherited;
  if not (qrNotaSaida.State in [dsInsert, dsEdit] ) then exit;
  RateiaFreteSeguro;

  str_sql := format(' select sum(valor_base_icms) as total_base_icms  , sum(valor_icms) as total_icms , '+
             ' sum(valor_base_icms_sub) as total_base_icms_sub, sum(valor_icms_sub) as total_icms_sub, '+
             ' sum(valor_total) as total_itens, sum(valor_unitario * quantidade) as total_produtos ,'+
             ' sum(valor_frete) as total_frete, sum(valor_seguro) as total_seguro, '+
             ' sum(valor_desconto) as total_desconto, sum(valor_despesas) as total_despesas, '+
             ' sum(valor_ipi) as total_ipi, sum(valor_pis) as total_pis, sum(valor_cofins) as total_cofins, 0.0 as valor_icms_retido '+
             ' from nota_saida_item where id_nota_saida=%d and id_empresa=%d',
              [qrNotaSaida.FieldByName('id_nota_saida').AsInteger, recproj.iEmp]);
  qr_aux := CriaUniQuery(self, frmmenu.conexao);
  if ExecutaConsultaSQL(qr_aux, str_sql) then
  begin
    qrNotaSaida.FieldByName('valor_icms').asfloat := qr_aux.FieldByName('total_icms').asfloat;
    qrNotaSaida.FieldByName('valor_base_icms').asfloat := qr_aux.FieldByName('total_base_icms').asfloat;
    qrNotaSaida.FieldByName('valor_icms_sub').asfloat := qr_aux.FieldByName('total_icms_sub').asfloat;
    qrNotaSaida.FieldByName('valor_base_icms_sub').asfloat := qr_aux.FieldByName('total_base_icms_sub').asfloat;
    //qrNotaSaida.FieldByName('valor_frete').asfloat := qr_aux.FieldByName('total_frete').asfloat;
    //qrNotaSaida.FieldByName('valor_seguro').asfloat := qr_aux.FieldByName('total_seguro').asfloat;
    qrNotaSaida.FieldByName('valor_ipi').asfloat := qr_aux.FieldByName('total_ipi').asfloat;
    qrNotaSaida.FieldByName('valor_despesas').asfloat := qr_aux.FieldByName('total_despesas').asfloat;
    qrNotaSaida.FieldByName('valor_desconto').asfloat := qr_aux.FieldByName('total_desconto').asfloat;

    qrNotaSaida.FieldByName('valor_produtos').asfloat := qr_aux.FieldByName('total_produtos').asfloat;
    qrNotaSaida.FieldByName('valor_icms_retido').asfloat := qr_aux.FieldByName('valor_icms_retido').asfloat;
    qrNotaSaida.FieldByName('valor_pis').asfloat := qr_aux.FieldByName('total_pis').asfloat;
    qrNotaSaida.FieldByName('valor_cofins').asfloat := qr_aux.FieldByName('total_cofins').asfloat;
    qrNotaSaida.FieldByName('valor_total').asfloat := qr_aux.FieldByName('total_itens').asfloat +
      qrNotaSaida.FieldByName('valor_frete').asfloat + qrNotaSaida.FieldByName('valor_seguro').asfloat;
  end
  else
  begin
    qrNotaSaida.FieldByName('valor_icms').asfloat:=0;
    qrNotaSaida.FieldByName('valor_base_icms').asfloat:=0;
    qrNotaSaida.FieldByName('valor_icms_sub').asfloat:=0;
    qrNotaSaida.FieldByName('valor_base_icms_sub').asfloat:=0;
    //qrNotaSaida.FieldByName('valor_frete').asfloat:=0;
    //qrNotaSaida.FieldByName('valor_seguro').asfloat:=0;
    qrNotaSaida.FieldByName('valor_ipi').asfloat:=0;
    qrNotaSaida.FieldByName('valor_despesas').asfloat:=0;
    qrNotaSaida.FieldByName('valor_desconto').asfloat:=0;
    qrNotaSaida.FieldByName('valor_total').asfloat:=0;
    qrNotaSaida.FieldByName('valor_produtos').asfloat:=0;
    qrNotaSaida.FieldByName('valor_icms_retido').asfloat:=0;
    qrNotaSaida.FieldByName('valor_pis').asfloat:=0;
    qrNotaSaida.FieldByName('valor_cofins').asfloat:=0;
  end;

end;


procedure TfrmDetalheNotaSaida.ReordenaItensNf(tabela : string = 'nota_saida_item');
var str_sql : string;
    qr_aux : TUniQuery;
    contador : integer;
begin
  inherited;
  //acrescenta 10000 ao numero do item para evitar duplicidade ao reordenar mais adiante
  str_sql := format('update %s set item=item+10000 where id_nota_saida=%d and id_empresa=%d',
                    [tabela, qrNotaSaida.FieldByName('id_nota_saida').AsInteger, recproj.iEmp]);
  ExecutaComandoSQL(str_sql);

  qr_aux := CriaUniQuery(self, frmMenu.conexao);
  str_sql := format('select item from %s where id_nota_saida=%d and id_empresa=%d order by item',
                    [tabela, qrNotaSaida.FieldByName('id_nota_saida').AsInteger, recproj.iEmp]);
  ExecutaConsultaSQL(qr_aux, str_sql);
  contador :=1;
  while not qr_aux.eof do
  begin
    str_sql := format('update %s set item=%d where item=%d and id_nota_saida=%d and id_empresa=%d',
                    [tabela, contador, qr_aux.FieldByName('item').AsInteger,
                     qrNotaSaida.FieldByName('id_nota_saida').AsInteger, recproj.iEmp]);
    ExecutaComandoSQL(str_sql);
    qr_aux.Next;
    contador := contador + 1;
  end;

end;

constructor TfrmDetalheNotaSaida.Create(sender : Tcomponent ;  id_usuario_nota: integer; id_nota_saida : integer = 0);
begin
  inherited Create(sender);
  self.id_usuario_nota := id_usuario_nota;
  qrNotaSaida.Close;
  qrNotaSaida.ParamByName('id_nota_saida').AsInteger := id_nota_saida;
  qrNotaSaida.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrNotaSaida.Open;

  if id_nota_saida =0 then
    qrNotaSaida.Append
  else
  begin
     // 0 - em digitacao
     // 11 - autorizada
     // 2 - cancelada
    if qrNotaSaida.fieldByName('id_situacao').asinteger in [2,11] then
    begin
      btSalvar.Enabled:=false;
    end
    else
    begin
      qrNotaSaida.Edit;
    end;

  end;

  PageControlNFE.ActivePageIndex :=0;

  //:id_nota_saida and ns.id_empresa = :id_empresa
end;

procedure TfrmDetalheNotaSaida.acBuscaCFOPExecute(Sender: TObject);
var str_sql, filtro : string;
begin
  edCFOP.SetFocus;

  str_sql:= 'select cfop_codigo, cfop_descricao from cfop';
  filtro := ' substring(cfop_codigo,1,1) in (''5'',''6'') ';
  filtro := '' ;// pode todos

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
    CriaIntegerArray([0,1]) ,
    CriaStringArray(['CFOP', 'Descrição']),
    0, 0, filtro);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
    qrNotaSaida.FieldByName('cfop').value := frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.Free;
end;

procedure TfrmDetalheNotaSaida.acBuscaClienteExecute(Sender: TObject);
var str_sql : string;
begin
  inherited;
  edCodCliente.SetFocus;

  str_sql:= ' select cli_001, cli_002, cli_012, cli_013, fn_situacoes(sit_001) from clientes ';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
    str_sql,
    CriaIntegerArray([0,1,2,3]) ,
    CriaStringArray(['Código', 'Cliente', 'Telefone 1','Telefone 2']),
    0, 1, ' sit_001=4 and emp_001='+IntToStr(RecProj.iEmp), 800, 500);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
  begin
    qrNotaSaida.FieldByName('id_cliente').value := frmBuscaRegistro.valor_retorno;
  end;
  frmBuscaRegistro.Free;
end;

procedure TfrmDetalheNotaSaida.acBuscaTransportadorExecute(Sender: TObject);
var str_sql : string;
begin
  inherited;
  edCodTransportador.SetFocus;

  str_sql:= 'select id_fornecedor, nome_fantasia, razao_social, ' +
           ' cast(case when tipo_pessoa=''J'' then ''Jurídica'' else ''Física'' end as varchar(10)) as tipo_p, '+
           ' cast(fn_situacoes(id_situacao) as varchar(100)) as situacao from fornecedor ';

   frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
      str_sql,
      CriaIntegerArray([0,1,2,3,4]) ,
      CriaStringArray(['Código', 'Fornecedor', 'Razão Social','Tipo', 'Status' ]),
      0, 1, ' id_situacao=4 and id_empresa='+IntToStr(RecProj.iEmp), 800, 500);
   frmBuscaRegistro.ShowModal;
   if frmBuscaRegistro.Tag=1 then
     qrNotaSaida.FieldByName('id_transportador').value := frmBuscaRegistro.valor_retorno;
   frmBuscaRegistro.Free;

end;

procedure TfrmDetalheNotaSaida.btAdicionarDocClick(Sender: TObject);
begin
  inherited;
  if qrNotaSaida.State = dsinsert  then
  begin
    if application.MessageBox('A nota atual deve ser salva para poder inserir os itens, gostaria de salvar agora?',
                              'Atenção', MB_ICONQUESTION + MB_YESNO )=mryes then
    begin
      qrNotaSaida.Post;
      qrNotaSaida.edit;
    end
    else
    begin
      exit;
    end;
  end;

  frmDetalheNotaSaidaDocReferenciado := TfrmDetalheNotaSaidaDocReferenciado.Create(self,
                         qrNotaSaida.FieldByName('id_nota_saida').AsInteger, 0);
  frmDetalheNotaSaidaDocReferenciado.ShowModal;
  frmDetalheNotaSaidaDocReferenciado.free;
  qrNotaSaidaDocRef.Refresh;
end;

procedure TfrmDetalheNotaSaida.btAdicionarDuplicataClick(Sender: TObject);
var str_sql : string;
    valor : double;
begin
  inherited;
  if qrNotaSaida.State = dsinsert  then
  begin
    if application.MessageBox('A nota atual deve ser salva para poder inserir os itens, gostaria de salvar agora?',
                              'Atenção', MB_ICONQUESTION + MB_YESNO )=mryes then
    begin
      qrNotaSaida.Post;
      qrNotaSaida.edit;
    end
    else
    begin
      exit;
    end;
  end;

  str_sql := format('select coalesce(sum(valor),0.0) as valor from nota_saida_duplicata where id_nota_saida=%d and id_empresa = %d',
             [qrNotaSaida.FieldByName('id_nota_saida').AsInteger, recproj.iEmp]);
  BuscaCampo(valor, str_sql, '', false);

  if CompareValue(valor,qrNotaSaida.FieldByName('valor_total').asfloat )=-1 then
  begin
    frmDetalheNotaSaidaDuplicata := TfrmDetalheNotaSaidaDuplicata.Create(self,
                           qrNotaSaida.FieldByName('id_nota_saida').AsInteger, 0);
    frmDetalheNotaSaidaDuplicata.ShowModal;
    frmDetalheNotaSaidaDuplicata.free;
  end
  else
    application.MessageBox('O valor das duplicatas já atingiu o valor total da nota!', 'Atenção', MB_ICONINFORMATION);

  qrNotaSaidaDuplicata.Refresh;
end;

procedure TfrmDetalheNotaSaida.btAdicionarItemClick(Sender: TObject);
var ok : boolean;
begin
  inherited;
  if qrNotaSaida.State in [dsinsert, dsedit]  then
  begin
    ok := qrNotaSaida.State=dsedit;

    if not ok then
      ok := application.MessageBox('A nota atual deve ser salva para poder inserir os itens, gostaria de salvar agora?',
                                   'Atenção', MB_ICONQUESTION + MB_YESNO )=mryes;

    if ok then
    begin
      qrNotaSaida.Post;
      qrNotaSaida.edit;
    end
    else
    begin
      exit;
    end;

  end;

  //Controla se o ultimo produto adicionado tinha os calculos
  //efetuados automaticamente e mantém para o novo - Bruno - 09-03-2018
  ultima_flag_efetuar:= True;

  if qrNotaSaidaItem.Active then
  begin
    if qrNotaSaidaItem.RecordCount > 0 then
    begin
      qrNotaSaidaItem.Last;
      ultima_flag_efetuar:= qrNotaSaidaItemefetuar_calculos.AsBoolean;
      qrNotaSaidaItem.First;
    end;
  end;

  frmDetalheNotaSaidaItem := TfrmDetalheNotaSaidaItem.Create(self, qrNotaSaida.FieldByName('id_nota_saida').AsInteger, 0);
  frmDetalheNotaSaidaItem.ShowModal;
  frmDetalheNotaSaidaItem.free;
  AtualizaTotalNota;
  qrNotaSaida.refresh;
  qrNotaSaidaItem.Refresh;
  qrNotaSaida.edit;
end;

procedure TfrmDetalheNotaSaida.btAdicionarPagamentoClick(Sender: TObject);
var str_sql : string;
    valor : double;
begin
  inherited;
  if qrNotaSaida.State = dsinsert  then
  begin
    if application.MessageBox('A nota atual deve ser salva para poder inserir os itens, gostaria de salvar agora?',
                              'Atenção', MB_ICONQUESTION + MB_YESNO )=mryes then
    begin
      qrNotaSaida.Post;
      qrNotaSaida.edit;
    end
    else
    begin
      exit;
    end;
  end;

  str_sql := format('select coalesce(sum(valor),0.0) as valor from nota_saida_pagamentos where id_nota_saida=%d and id_empresa = %d',
             [qrNotaSaida.FieldByName('id_nota_saida').AsInteger, recproj.iEmp]);
  BuscaCampo(valor, str_sql, '', false);

  if CompareValue(valor,qrNotaSaida.FieldByName('valor_total').asfloat )=-1 then
  begin
    frmDetalheNotaSaidaPagamentos := TfrmDetalheNotaSaidaPagamentos.Create(self,
                           qrNotaSaida.FieldByName('id_nota_saida').AsInteger, 0);
    frmDetalheNotaSaidaPagamentos.ShowModal;
    FreeAndNil(frmDetalheNotaSaidaPagamentos);
  end
  else
    application.MessageBox('O valor dos pagamentos já atingiu o valor total da nota!', 'Atenção', MB_ICONINFORMATION);

  qrNotaSaidaPagamentos.Refresh;
end;

procedure TfrmDetalheNotaSaida.btCancelarClick(Sender: TObject);
begin
  inherited;
  btcancelar.SetFocus;
  if qrNotaSaida.State in [dsEdit, dsInsert] then qrNotaSaida.Cancel;
  qrNotaSaida.Refresh;
  self.Close;
end;

procedure TfrmDetalheNotaSaida.btEditarDocClick(Sender: TObject);
begin
  inherited;
  if qrNotaSaidaDocRef.Active then
  begin
    if qrNotaSaidaDocRef.RecordCount>0 then
    begin
      frmDetalheNotaSaidaDocReferenciado := TfrmDetalheNotaSaidaDocReferenciado.Create(self,
                             qrNotaSaida.FieldByName('id_nota_saida').AsInteger,
                             qrNotaSaidaDocRef.FieldByName('item').AsInteger);
      frmDetalheNotaSaidaDocReferenciado.ShowModal;
      frmDetalheNotaSaidaDocReferenciado.free;
      qrNotaSaidaDocRef.Refresh;
    end;
  end;
end;

procedure TfrmDetalheNotaSaida.btEditarDuplicataClick(Sender: TObject);
begin
  inherited;
  if qrNotaSaidaDuplicata.Active then
  begin
    if qrNotaSaidaDuplicata.RecordCount>0 then
    begin
      frmDetalheNotaSaidaDuplicata := TfrmDetalheNotaSaidaDuplicata.Create(self,
                             qrNotaSaidaDuplicata.FieldByName('id_nota_saida').AsInteger,
                             qrNotaSaidaDuplicata.FieldByName('item').AsInteger);
      frmDetalheNotaSaidaDuplicata.ShowModal;
      frmDetalheNotaSaidaDuplicata.free;
      qrNotaSaidaDuplicata.Refresh;
    end;
  end;
end;

procedure TfrmDetalheNotaSaida.btEditarItemClick(Sender: TObject);
begin
  inherited;
  if qrNotaSaidaItem.Active then
  begin
    if qrNotaSaidaItem.RecordCount>0 then
    begin

      frmDetalheNotaSaidaItem := TfrmDetalheNotaSaidaItem.Create(self,
                             qrNotaSaida.FieldByName('id_nota_saida').AsInteger,
                             qrNotaSaidaItem.FieldByName('item').AsInteger);
      frmDetalheNotaSaidaItem.ShowModal;
      frmDetalheNotaSaidaItem.free;

      if qrNotaSaida.state in [dsedit, dsinsert] then qrNotaSaida.Post;
      qrNotaSaida.edit;

      AtualizaTotalNota;
      qrNotaSaidaItem.Refresh;
    end;
  end;
end;

procedure TfrmDetalheNotaSaida.btEditarPagamentoClick(Sender: TObject);
begin
  inherited;
  if qrNotaSaidaPagamentos.Active then
  begin
    if qrNotaSaidaPagamentos.RecordCount>0 then
    begin
      frmDetalheNotaSaidaPagamentos := TfrmDetalheNotaSaidaPagamentos.Create(self,
                             qrNotaSaidaPagamentos.FieldByName('id_nota_saida').AsInteger,
                             qrNotaSaidaPagamentos.FieldByName('item').AsInteger);
      frmDetalheNotaSaidaPagamentos.ShowModal;
      FreeAndNil(frmDetalheNotaSaidaPagamentos);
      qrNotaSaidaPagamentos.Refresh;
    end;
  end;
end;

procedure TfrmDetalheNotaSaida.btRemoverDocClick(Sender: TObject);
var msg, str_sql : string;
begin
  inherited;
  if qrNotaSaidaDocRef.Active then
  begin
    if qrNotaSaidaDocRef.RecordCount>0 then
    begin
      msg := format('Confirma a exclusão do item %d?',[qrNotaSaidaDocRef.FieldByName('item').AsInteger]);
      if Application.MessageBox(pchar(msg), 'Atenção', MB_ICONQUESTION + mb_yesno)=mryes then
      begin
        str_sql := format('delete from nota_saida_doc_referenciado where id_nota_saida=%d and item=%d and id_empresa=%d',
                         [qrNotaSaidaDocRef.FieldByName('id_nota_saida').AsInteger,
                         qrNotaSaidaDocRef.FieldByName('item').AsInteger, recproj.iEmp]);
        ExecutaComandoSQL(str_sql);
        ReordenaItensNf('nota_saida_doc_referenciado');
        Application.MessageBox('Item excluído!','Atenção', MB_ICONINFORMATION );
        qrNotaSaidaDocRef.Refresh;
      end;
    end
    else
    begin
      Application.MessageBox('Nenhum item selecionado!','Atenção', MB_ICONINFORMATION );
    end;
  end;
end;

procedure TfrmDetalheNotaSaida.btRemoverDuplicataClick(Sender: TObject);
var msg, str_sql : string;
begin
  inherited;
  if qrNotaSaidaDuplicata.Active then
  begin
    if qrNotaSaidaDuplicata.RecordCount>0 then
    begin
      msg := format('Confirma a exclusão do item %d?',[qrNotaSaidaDuplicata.FieldByName('item').AsInteger]);
      if Application.MessageBox(pchar(msg), 'Atenção', MB_ICONQUESTION + mb_yesno)=mryes then
      begin
        str_sql := format('delete from nota_saida_duplicata where id_nota_saida=%d and item=%d and id_empresa=%d',
                         [qrNotaSaidaDuplicata.FieldByName('id_nota_saida').AsInteger,
                         qrNotaSaidaDuplicata.FieldByName('item').AsInteger, recproj.iEmp]);
        ExecutaComandoSQL(str_sql);
        ReordenaItensNf('nota_saida_duplicata');
        Application.MessageBox('Item excluído!','Atenção', MB_ICONINFORMATION );
        qrNotaSaidaDuplicata.Refresh;
      end;
    end
    else
    begin
      Application.MessageBox('Nenhum item selecionado!','Atenção', MB_ICONINFORMATION );
    end;
  end;

end;

procedure TfrmDetalheNotaSaida.btRemoverItemClick(Sender: TObject);
var msg, str_sql : string;
begin
  inherited;
  if qrnotasaidaitem.Active then
  begin
    if qrNotaSaidaItem.RecordCount>0 then
    begin
      msg := format('Confirma a exclusão do item %d?',[qrNotaSaidaItem.FieldByName('item').AsInteger]);
      if Application.MessageBox(pchar(msg), 'Atenção', MB_ICONQUESTION + mb_yesno)=mryes then
      begin
        str_sql := format('delete from nota_saida_item where id_nota_saida=%d and item=%d and id_empresa=%d',
                         [qrNotaSaida.FieldByName('id_nota_saida').AsInteger,
                         qrNotaSaidaItem.FieldByName('item').AsInteger, recproj.iEmp]);
        ExecutaComandoSQL(str_sql);

        ReordenaItensNf;

        Application.MessageBox('Item excluído!','Atenção', MB_ICONINFORMATION );
        AtualizaTotalNota;
        qrNotaSaidaItem.Refresh;
      end;

    end
    else
    begin
      Application.MessageBox('Nenhum item selecionado!','Atenção', MB_ICONINFORMATION );
    end;
  end;
end;

procedure TfrmDetalheNotaSaida.btRemoverPagamentoClick(Sender: TObject);
var msg, str_sql : string;
begin
  inherited;
  if qrNotaSaidaPagamentos.Active then
  begin
    if qrNotaSaidaPagamentos.RecordCount>0 then
    begin
      msg := format('Confirma a exclusão do item %d?',[qrNotaSaidaPagamentos.FieldByName('item').AsInteger]);
      if Application.MessageBox(pchar(msg), 'Atenção', MB_ICONQUESTION + mb_yesno)=mryes then
      begin
        str_sql := format('delete from nota_saida_pagamentos where id_nota_saida=%d and item=%d and id_empresa=%d',
                         [qrNotaSaidaPagamentos.FieldByName('id_nota_saida').AsInteger,
                         qrNotaSaidaPagamentos.FieldByName('item').AsInteger, recproj.iEmp]);
        ExecutaComandoSQL(str_sql);
        ReordenaItensNf('nota_saida_pagamentos');
        Application.MessageBox('Item excluído!','Atenção', MB_ICONINFORMATION );
        qrNotaSaidaPagamentos.Refresh;
      end;
    end
    else
    begin
      Application.MessageBox('Nenhum item selecionado!','Atenção', MB_ICONINFORMATION );
    end;
  end;
end;

procedure TfrmDetalheNotaSaida.btSalvarClick(Sender: TObject);
var msg : string;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  inherited;

  //verifica se possui cfop que exige documento referenciado...
  if AnsiIndexStr(qrNotaSaida.fieldByName('cfop').asstring,
                   ['5201', '5202', '5410', '5411', '5412', '5413', '5555',
                    '5556', '6201', '6202', '6410', '6412', '6413', '6555', '6556'])>=0  then
  begin
    if qrNotaSaidaDocRef.RecordCount<1 then
    begin
      msg := format('O CFOP %s exige que seja informadas as chaves dos documentos fiscais referenciados!',
             [qrNotaSaida.fieldByName('cfop').asstring]);
      application.MessageBox(pchar(msg), 'Atenção', MB_ICONINFORMATION);
      PageControlNFE.ActivePageIndex := pgDocReferenciado.PageIndex;
      abort;
    end;
  end;

  if qrNotaSaidaindpres.AsInteger = 0 then
  begin
    Application.MessageBox('Selecione o indicador de presença!', 'Atenção', MB_ICONINFORMATION);
    cbPresenca.SetFocus;
    Abort;
  end;

  btSalvar.SetFocus;
  qrNotaSaida.Post;
  qrNotaSaida.ParamByName('id_nota_saida').AsInteger:= qrNotaSaida.FieldByName('id_nota_saida').AsInteger;
  qrNotaSaida.Refresh;
  self.Close;
end;

procedure TfrmDetalheNotaSaida.DSNotaSaidaStateChange(Sender: TObject);
begin
  inherited;
  if qrNotaSaida.Active then
  begin
    //aberto, nao editando...
    if qrNotaSaida.State = dsBrowse then
    begin
      btSalvar.Enabled:=false;
      //btCancelar.Enabled:=false;

      btAdicionarItem.Enabled := false;
      btRemoverItem.Enabled := false;
      btEditarItem.Enabled := false;

      btAdicionarDoc.Enabled := false;
      btRemoverDoc.Enabled := false;
      btEditarDoc.Enabled := false;

      btAdicionarDuplicata.Enabled := false;
      btRemoverDuplicata.Enabled := false;
      btEditarDuplicata.Enabled := false;

      acBuscaCliente.Enabled :=false;
      acBuscaCFOP.Enabled :=false;
      acBuscaTransportador.Enabled := false;
    end
    else if qrNotaSaida.State in [dsInsert, dsEdit]  then
    begin
      btSalvar.Enabled:=true;
      //btCancelar.Enabled:=true;

      btAdicionarItem.Enabled := true;
      btRemoverItem.Enabled := true;
      btEditarItem.Enabled := true;

      btAdicionarDoc.Enabled := true;
      btRemoverDoc.Enabled := true;
      btEditarDoc.Enabled := true;

      btAdicionarDuplicata.Enabled := true;
      btRemoverDuplicata.Enabled := true;
      btEditarDuplicata.Enabled := true;

      acBuscaCliente.Enabled :=true;
      acBuscaCFOP.Enabled :=true;
      acBuscaTransportador.Enabled := true;
      qrNotaSaidafinalidadeChange(nil);
    end;
  end
  else
  begin
    btSalvar.Enabled:=false;
    //btCancelar.Enabled:=false;

    btAdicionarItem.Enabled := false;
    btRemoverItem.Enabled := false;
    btEditarItem.Enabled := false;

    btAdicionarDoc.Enabled := false;
    btRemoverDoc.Enabled := false;
    btEditarDoc.Enabled := false;

    btAdicionarDuplicata.Enabled := false;
    btRemoverDuplicata.Enabled := false;
    btEditarDuplicata.Enabled := false;

    acBuscaCliente.Enabled := false;
    acBuscaCFOP.Enabled := false;
    acBuscaTransportador.Enabled := false;
  end;
end;

procedure TfrmDetalheNotaSaida.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then
  begin
    //enter não deve sair do memo de observações
    if Screen.ActiveControl is TcxCustomInnerMemo then
    begin
      if not (lowercase(TcxCustomInnerTextEdit(Screen.ActiveControl).Parent.Name) = 'meobservacoes') then
      begin
        Perform(WM_NEXTDLGCTL, 0, 0);
      end;
    end
    else
      Perform(WM_NEXTDLGCTL, 0, 0);    
  end;
end;

procedure TfrmDetalheNotaSaida.qrNotaSaidaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qrNotaSaida.ParamByName('id_nota_saida').AsInteger := qrNotaSaida.FieldByName('id_nota_saida').AsInteger;

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
  qrNotaSaidaDuplicata.OPen;
  qrNotaSaidaPagamentos.Open;
end;

procedure TfrmDetalheNotaSaida.qrNotaSaidaAfterPost(DataSet: TDataSet);
begin
  inherited;
  qrNotaSaidaAfterOpen(nil);
  RateiaFreteSeguro;
end;

procedure TfrmDetalheNotaSaida.qrNotaSaidaBeforePost(DataSet: TDataSet);
var i : integer;
    str_sql : string;
begin
  inherited;

  for I := 0 to qrNotaSaida.FieldCount-1 do
  begin
    if qrNotaSaida.Fields[i].Required and  qrNotaSaida.Fields[i].IsNull then
    begin
      Application.MessageBox(pchar( 'O campo obrigatório ' +  qrNotaSaida.Fields[i].DisplayLabel+
                                    ' não foi preenchido!' ), 'Atenção', MB_ICONWARNING);
      abort;
    end;
  end;

  if AnsiIndexStr(qrNotaSaida.fieldByName('transp_placa_uf').asstring,
                   ['AC', 'AL', 'AM', 'AP', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA',
                    'MG', 'MS', 'MT', 'PA', 'PB', 'PE', 'PI', 'PR', 'RJ', 'RN',
                    'RO', 'RR', 'RS', 'SC', 'SE', 'SP', 'TO', 'EX', ''])<0  then
  begin
    application.MessageBox('UF da placa do veículo de transporte inválida!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  if qrNotaSaida.FieldByName('cfop').AsString = EmptyStr then
  begin
    Application.MessageBox('Preencha o campo CFOP!','Atenção', MB_ICONINFORMATION );
    Abort;
  end;

  if Trim(qrNotaSaida.FieldByName('numero_fatura').AsString) <> EmptyStr then
  begin
    if qrNotaSaidaDuplicata.RecordCount = 0 then
    begin
      Application.MessageBox('Informe a(s) duplicatas (Faturamento)!','Atenção', MB_ICONINFORMATION );
      Abort;
    end;
  end;

  if qrNotaSaidaDuplicata.RecordCount > 0 then
  begin
    if Trim(qrNotaSaida.FieldByName('numero_fatura').AsString) = EmptyStr then
    begin
      Application.MessageBox('Informe o número da fatura (Faturamento)!','Atenção', MB_ICONINFORMATION );
      Abort;
    end;
  end;

  if qrNotaSaida.State = dsInsert then
  begin
    str_sql := format('update empresas set numero_nfe = %d where emp_001=%d',
                      [qrNotaSaida.Fieldbyname('numero').asinteger, recproj.iEmp]);
    ExecutaComandoSQL(str_sql);
  end;
end;

procedure TfrmDetalheNotaSaida.qrNotaSaidacfopChange(Sender: TField);
var descricao_campo, str_sql : string;
begin
  inherited;
  if (qrNotaSaida.FieldByName('cfop').isnull) or (qrNotaSaida.FieldByName('cfop').asstring='') then
  begin
    qrNotaSaida.FieldByName('cfop_descricao').value := null;
    exit;
  end;

  str_sql := format('select cfop_descricao from cfop where cfop_codigo =%s',
                    [quotedstr( qrNotaSaida.FieldByName('cfop').Asstring)]);
  if BuscaCampo(descricao_campo, str_sql, 'CFOP', true  ) then
  begin
    if (not ((copy(qrNotaSaida.FieldByName('cfop').Asstring,1,1)='5') or
            (copy(qrNotaSaida.FieldByName('cfop').Asstring,1,1)='6')) ) and
            (cbFinalidade.ItemIndex in [0,1,2] )  then //normal, devolucao, garantia
    begin
      application.messagebox('O CFOP informado não é de saída!', 'Atenção', MB_ICONINFORMATION);
      qrNotaSaida.FieldByName('cfop').value := null;
    end
    else
      qrNotaSaida.FieldByName('cfop_descricao').asstring := descricao_campo;
  end
  else
  begin
    qrNotaSaida.FieldByName('cfop_descricao').value := null;
    qrNotaSaida.FieldByName('cfop').value := null;
  end;
end;

procedure TfrmDetalheNotaSaida.qrNotaSaidafinalidadeChange(Sender: TField);
begin
  inherited;
  if  qrNotaSaida.fieldbyname('finalidade').asinteger = 0  then
  begin
    edChaveNFDevolvida.Properties.ReadOnly :=true;
    edChaveNFDevolvida.Style.Color := $00E4D8C9;
  end
  else
  begin
    edChaveNFDevolvida.Properties.ReadOnly :=false;
    edChaveNFDevolvida.Style.Color := clWindow;
  end;
end;

procedure TfrmDetalheNotaSaida.qrNotaSaidaid_clienteChange(Sender: TField);
begin
  if qrNotaSaida.FieldByName('id_cliente').Isnull then
  begin
    qrNotaSaida.fieldbyname('cpf_cnpj_cliente').asstring := '';
    qrNotaSaida.fieldbyname('rg_ie_cliente').asstring := '';
    qrNotaSaida.fieldbyname('endereco_cliente').asstring := '';
    qrNotaSaida.fieldbyname('nome_cliente').asstring := '';
  end
  else
    VerificaDadosCliente;
end;

procedure TfrmDetalheNotaSaida.VerificaDadosCliente;
var str_sql : string;
    qr_aux : Tuniquery;
begin
  str_sql :=format(' select cli_002 as nome, cli_004 as cpf_cnpj, cli_005 as rg_ie , '+
                   ' cast(concat(cep_004, '' '', cli_008, '' '', cidade_desc) as varchar(100)) as endereco, '+
                   ' situacao_ie, cep_004 as logradouro, cli_008 as nro, cep_002 as cep, cep_003 as bairro, cidade_desc, uf '+
                   ' from clientes where cli_001 = %d and emp_001 =%d',
                   [qrNotaSaida.FieldByName('id_cliente').asinteger, recproj.iEmp]);
  qr_aux := CriaUniQuery(self, frmmenu.conexao);

  if ExecutaConsultaSQL(qr_aux, str_sql) then
  begin
    qrNotaSaida.fieldbyname('cpf_cnpj_cliente').asstring := qr_aux.fieldbyname('cpf_cnpj').asstring;
    qrNotaSaida.fieldbyname('rg_ie_cliente').asstring := qr_aux.fieldbyname('rg_ie').asstring;
    qrNotaSaida.fieldbyname('endereco_cliente').asstring := qr_aux.fieldbyname('endereco').asstring;
    qrNotaSaida.fieldbyname('nome_cliente').asstring := qr_aux.fieldbyname('nome').asstring;
  end
  else
  begin
    Application.MessageBox('Cliente não encontrado!', 'Atenção', MB_ICONINFORMATION);
    qrNotaSaida.FieldByName('id_cliente').value := null;
  end;
  qr_aux.Free;
end;

procedure TfrmDetalheNotaSaida.qrNotaSaidaid_transportadorChange(
  Sender: TField);
var cod_trans : integer;
    str_sql : string;
    qr_aux : Tuniquery;
begin
  if qrNotaSaida.FieldByName('id_transportador').Isnull then
  begin
    qrNotaSaida.fieldbyname('cnpj_transportador').asstring := '';
    qrNotaSaida.fieldbyname('ie_transportador').asstring := '';
    qrNotaSaida.fieldbyname('nome_transportador').asstring := '';
  end
  else
  begin
    str_sql :=format(' select nome_fantasia, cnpj, inscricao_estadual '+
                     ' from fornecedor where id_fornecedor = %d and id_empresa =%d',
                     [qrNotaSaida.FieldByName('id_transportador').asinteger, recproj.iEmp]);
    qr_aux := CriaUniQuery(self, frmmenu.conexao);
    if ExecutaConsultaSQL(qr_aux, str_sql) then
    begin
      qrNotaSaida.fieldbyname('cnpj_transportador').asstring := qr_aux.fieldbyname('cnpj').asstring;
      qrNotaSaida.fieldbyname('ie_transportador').asstring := qr_aux.fieldbyname('inscricao_estadual').asstring;
      qrNotaSaida.fieldbyname('nome_transportador').asstring := qr_aux.fieldbyname('nome_fantasia').asstring;
    end
    else
    begin
      Application.MessageBox('Transportador (fornecedor) não encontrado!', 'Atenção', MB_ICONINFORMATION);
      qrNotaSaida.FieldByName('id_transportador').value := null;
    end;
    qr_aux.Free;
  end;

end;

procedure TfrmDetalheNotaSaida.qrNotaSaidaNewRecord(DataSet: TDataSet);
var numero_nota, serie : integer;

begin
  inherited;
  BuscaCampo(numero_nota, 'select coalesce(numero_nfe,0)+1 as numero from empresas where emp_001='+ inttostr(recproj.iemp) , '', false);
  BuscaCampo(serie, 'select coalesce(serie_nfe,1) as numero from empresas where emp_001='+ inttostr(recproj.iemp) , '', false);
  qrNotaSaida.FieldByName('id_empresa').asinteger:=recproj.iEmp;
  qrNotaSaida.FieldByName('modelo_especie').asinteger:=6;
  qrNotaSaida.FieldByName('id_usuario').asinteger := id_usuario_nota;
  qrNotaSaida.FieldByName('data_emissao').AsDateTime := Date;
  qrNotaSaida.FieldByName('numero').asinteger := numero_nota;
  qrNotaSaida.FieldByName('serie').asinteger := serie;
  qrNotaSaida.FieldByName('finalidade').asinteger := 0;
  qrNotaSaida.FieldByName('indpres').asinteger := 9; //não presencial, outros
  qrNotaSaida.FieldByName('cfop').asstring := LerStringConfig('EDNFECFOPSAIDAPADRAO', frmMenu.cdsCFG.FileName);
  qrNotaSaida.FieldByName('info_complementar').asstring := LerStringConfig('EDNFEINFOCOMPLEMENTARPADRAO', frmMenu.cdsCFG.FileName);
end;

procedure TfrmDetalheNotaSaida.qrNotaSaidavalor_freteChange(Sender: TField);
begin
  inherited;
  AtualizaTotalNota;
end;

procedure TfrmDetalheNotaSaida.qrNotaSaidavalor_seguroChange(Sender: TField);
begin
  inherited;
  AtualizaTotalNota;
end;

end.


