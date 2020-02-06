unit uDetalheNotaEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, cxCurrencyEdit, cxDBEdit, Vcl.StdCtrls, AdvGroupBox,
  AdvGlowButton, Data.DB, MemDS, DBAccess, Uni, System.Actions, Vcl.ActnList,
  cxMaskEdit, cxButtonEdit, Vcl.DBCtrls, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxImageComboBox, cxMemo,
  JvExStdCtrls, JvCombobox, JvDBCombobox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  AdvPageControl, Vcl.ComCtrls, cxDropDownEdit, cxCalendar, cxSpinEdit,
  SYstem.Math, system.strutils, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TfrmDetalheNotaFiscalEntrada = class(TfrmModelo)
    qrNotaEntrada: TUniQuery;
    DSNotaEntrada: TDataSource;
    qrNotaEntradaid_nota_entrada: TIntegerField;
    qrNotaEntradaid_empresa: TIntegerField;
    qrNotaEntradaid_fornecedor: TIntegerField;
    qrNotaEntradacnpj_fornecedor: TWideStringField;
    qrNotaEntradanome_fornecedor: TWideStringField;
    qrNotaEntradaid_usuario: TIntegerField;
    qrNotaEntradaid_situacao: TIntegerField;
    qrNotaEntradanumero: TIntegerField;
    qrNotaEntradadata_emissao: TDateField;
    qrNotaEntradadata_entrada: TDateField;
    qrNotaEntradacfop: TWideStringField;
    qrNotaEntradaserie: TIntegerField;
    qrNotaEntradavalor_icms: TFloatField;
    qrNotaEntradavalor_base_icms: TFloatField;
    qrNotaEntradavalor_icms_sub: TFloatField;
    qrNotaEntradavalor_base_icms_sub: TFloatField;
    qrNotaEntradavalor_frete: TFloatField;
    qrNotaEntradavalor_seguro: TFloatField;
    qrNotaEntradavalor_ipi: TFloatField;
    qrNotaEntradavalor_despesas: TFloatField;
    qrNotaEntradavalor_desconto: TFloatField;
    qrNotaEntradavalor_total: TFloatField;
    qrNotaEntradavalor_produtos: TFloatField;
    qrNotaEntradavalor_icms_retido: TFloatField;
    qrNotaEntradavalor_pis: TFloatField;
    qrNotaEntradavalor_cofins: TFloatField;
    qrNotaEntradachave_autorizacao: TWideStringField;
    btCancelar: TAdvGlowButton;
    btSalvar: TAdvGlowButton;
    AdvGroupBox2: TAdvGroupBox;
    Label6: TLabel;
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
    AdvGroupBox1: TAdvGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    DBText2: TDBText;
    edCodFornecedor: TcxDBButtonEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    Label19: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    ActionList1: TActionList;
    acBuscaFornecedor: TAction;
    acBuscaCFOP: TAction;
    acBuscaTransportador: TAction;
    qrNotaEntradaendereco_fornecedor: TWideStringField;
    Label20: TLabel;
    edCFOP: TcxDBButtonEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    qrNotaEntradacfop_descricao: TWideStringField;
    edNumero: TcxDBSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    Label3: TLabel;
    PageControlNFE: TAdvPageControl;
    pgItens: TAdvTabSheet;
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
    pgDocReferenciado: TAdvTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1item: TcxGridDBColumn;
    cxGridDBTableView1tipo_doc: TcxGridDBColumn;
    cxGridDBTableView1chave_nfe: TcxGridDBColumn;
    cxGridDBTableView1numero_ecf: TcxGridDBColumn;
    cxGridDBTableView1numero_cupom_ecf: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    btAdicionarDoc: TAdvGlowButton;
    btRemoverDoc: TAdvGlowButton;
    btEditarDoc: TAdvGlowButton;
    pgFaturamento: TAdvTabSheet;
    Label27: TLabel;
    Label30: TLabel;
    Label28: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    JvDBComboBox3: TJvDBComboBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2item: TcxGridDBColumn;
    cxGridDBTableView2numero_duplicata: TcxGridDBColumn;
    cxGridDBTableView2valor: TcxGridDBColumn;
    cxGridDBTableView2DataVencimento: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    btAdicionarDuplicata: TAdvGlowButton;
    btRemoverDuplicata: TAdvGlowButton;
    btEditarDuplicata: TAdvGlowButton;
    pgInfoComplementares: TAdvTabSheet;
    cxDBMemo1: TcxDBMemo;
    pgTransportador: TAdvTabSheet;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
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
    edCodTransportador: TcxDBButtonEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    JvDBComboBox4: TJvDBComboBox;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBSpinEdit4: TcxDBSpinEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBCurrencyEdit15: TcxDBCurrencyEdit;
    cxDBCurrencyEdit16: TcxDBCurrencyEdit;
    cxDBCurrencyEdit17: TcxDBCurrencyEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    DBText1: TDBText;
    qrNotaEntradaItem: TUniQuery;
    qrNotaEntradaItemitem: TIntegerField;
    qrNotaEntradaItemcodigo_produto: TWideStringField;
    qrNotaEntradaItemdescricao_produto: TWideStringField;
    qrNotaEntradaItemcst: TIntegerField;
    qrNotaEntradaItemcfop: TWideStringField;
    qrNotaEntradaItemquantidade: TFloatField;
    qrNotaEntradaItempeso: TFloatField;
    qrNotaEntradaItemvalor_unitario: TFloatField;
    qrNotaEntradaItemsubtotal: TFloatField;
    qrNotaEntradaItemvalor_desconto: TFloatField;
    qrNotaEntradaItemvalor_total: TFloatField;
    qrNotaEntradaItemvalor_icms: TFloatField;
    qrNotaEntradaItemvalor_ipi: TFloatField;
    dsNotaEntradaItem: TDataSource;
    qrNotaEntradaItemid_nota_entrada: TIntegerField;
    qrNotaEntradaDocRef: TUniQuery;
    qrNotaEntradaDocRefid_empresa: TIntegerField;
    qrNotaEntradaDocRefitem: TIntegerField;
    qrNotaEntradaDocReftipo_doc: TWideStringField;
    qrNotaEntradaDocRefchave_nfe: TWideStringField;
    qrNotaEntradaDocRefnumero_ecf: TIntegerField;
    qrNotaEntradaDocRefnumero_cupom_ecf: TIntegerField;
    qrNotaEntradaDocRefid_situacao: TIntegerField;
    dsNotaEntradaDocRef: TDataSource;
    qrNotaEntradaDocRefid_nota_entrada: TIntegerField;
    qrNotaEntradaDuplicata: TUniQuery;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField6: TIntegerField;
    qrNotaEntradaDuplicatanumero_duplicata: TWideStringField;
    qrNotaEntradaDuplicatavalor: TFloatField;
    qrNotaEntradaDuplicatadata_vencimento: TDateField;
    dsNotaEntradaDuplicata: TDataSource;
    qrNotaEntradaDuplicataid_nota_entrada: TIntegerField;
    qrNotaEntradainfo_complementar: TWideMemoField;
    qrNotaEntradanumero_fatura: TWideStringField;
    qrNotaEntradatipo_pagamento: TIntegerField;
    qrNotaEntradaid_transportador: TIntegerField;
    qrNotaEntradatransp_numero_volumes: TWideStringField;
    qrNotaEntradatransp_quantidade_volumes: TIntegerField;
    qrNotaEntradatransp_especie: TWideStringField;
    qrNotaEntradatransp_marca: TWideStringField;
    qrNotaEntradatransp_peso_liquido: TFloatField;
    qrNotaEntradatransp_peso_bruto: TFloatField;
    qrNotaEntradatransp_modalidade: TIntegerField;
    qrNotaEntradatransp_placa_numero: TWideStringField;
    qrNotaEntradatransp_placa_uf: TWideStringField;
    qrNotaEntradatransp_rntc: TWideStringField;
    qrNotaEntradanome_transportador: TWideStringField;
    qrNotaEntradacnpj_transportador: TWideStringField;
    qrNotaEntradaie_transportador: TWideStringField;
    qrNotaEntradaItemtipo_item: TWideStringField;
    cxGrid1DBTableView1tipo_item: TcxGridDBColumn;
    constructor Create(sender : Tcomponent ; id_usuario_nota : integer;  id_nota_entrada : integer = 0);  reintroduce;
    procedure btCancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure qrNotaEntradaNewRecord(DataSet: TDataSet);
    procedure qrNotaEntradaBeforePost(DataSet: TDataSet);
    procedure acBuscaFornecedorExecute(Sender: TObject);
    procedure acBuscaCFOPExecute(Sender: TObject);
    procedure qrNotaEntradaid_fornecedorChange(Sender: TField);
    procedure qrNotaEntradacfopChange(Sender: TField);
    procedure qrNotaEntradaAfterOpen(DataSet: TDataSet);
    procedure qrNotaEntradaAfterPost(DataSet: TDataSet);
    procedure btAdicionarItemClick(Sender: TObject);
    procedure AtualizaTotalNota;
    procedure RateiaFreteSeguro;
    procedure btRemoverItemClick(Sender: TObject);
    procedure ReordenaItensNf(tabela : string = 'nota_entrada_item');
    procedure btEditarItemClick(Sender: TObject);
    procedure qrNotaEntradavalor_freteChange(Sender: TField);
    procedure qrNotaEntradavalor_seguroChange(Sender: TField);
    procedure qrNotaEntradanumeroChange(Sender: TField);
    procedure btAdicionarDocClick(Sender: TObject);
    procedure btRemoverDocClick(Sender: TObject);
    procedure btEditarDocClick(Sender: TObject);
    procedure btAdicionarDuplicataClick(Sender: TObject);
    procedure btRemoverDuplicataClick(Sender: TObject);
    procedure btEditarDuplicataClick(Sender: TObject);
    procedure acBuscaTransportadorExecute(Sender: TObject);
    procedure qrNotaEntradaid_transportadorChange(Sender: TField);
    procedure DSNotaEntradaStateChange(Sender: TObject);
  private
    { Private declarations }
    id_usuario_nota : integer;
  public
    { Public declarations }
  end;

var
  frmDetalheNotaFiscalEntrada: TfrmDetalheNotaFiscalEntrada;

implementation

{$R *.dfm}

uses uMenu, uBuscaRegistro, uFuncoes, Funcao_DB, uDetalheNotaEntradaItem,
  uDetalheNotaEntradaDocReferenciado, uDetalheNotaEntradaDuplicata;


procedure TfrmDetalheNotaFiscalEntrada.RateiaFreteSeguro;
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

  id_nota := qrNotaEntrada.FieldByName('id_nota_entrada').AsInteger;
  total_frete  := qrNotaEntrada.FieldByName('valor_frete').asfloat;
  total_seguro := qrNotaEntrada.FieldByName('valor_seguro').asfloat;
  total_produtos := qrNotaEntrada.FieldByName('valor_produtos').asfloat;

  //verifica se existe peso bruto informado nos itens para poder fazer o rateio por peso
  str_sql := format('select coalesce(sum(peso_unitario_bruto*quantidade),0.0) as peso_bruto from nota_entrada_item where id_nota_entrada=%d and id_empresa=%d and id_situacao=4',
             [id_nota, recproj.iEmp]);
  ExecutaConsultaSQL(qr_aux, str_sql);
  total_peso_bruto := qr_aux.fieldbyname('peso_bruto').AsFloat;
  rateio_frete_peso := total_peso_bruto >0.0;

  str_sql := format(' select item, valor_total, (peso_unitario_bruto*quantidade) as peso_bruto '+
                    ' from nota_entrada_item where id_nota_entrada=%d and id_empresa=%d and id_situacao=4 '+
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
      str_sql := ' update nota_entrada_item set valor_frete = :frete, valor_seguro = :seguro '+
                 ' where id_nota_entrada=:id_nota and id_empresa=:id_empresa and item = :item ';
      ExecutaComandoSQL(str_sql, vararrayof([valor_frete_item,valor_seguro_item, id_nota, recproj.iEmp,qr_aux.FieldByName('item').AsInteger]) );
      qr_aux.Next;
    end;

    //corrige eventuais diferenças de arredondamento no primeiro item
    str_sql := format(' select sum(valor_frete) as frete, sum(valor_seguro) as seguro '+
                      ' from nota_entrada_item where id_nota_entrada=%d and id_empresa=%d and id_situacao=4 ',
             [id_nota, recproj.iEmp]);
    ExecutaConsultaSQL(qr_aux2, str_sql);
    valor_seguro_dif := total_seguro - qr_aux2.FieldByName('seguro').AsFloat;
    valor_frete_dif := total_frete - qr_aux2.FieldByName('frete').AsFloat;

    str_sql := ' update nota_entrada_item set valor_frete = valor_frete + :frete_dif, valor_seguro = valor_seguro + :seguro_dif '+
               ' where id_nota_entrada=:id_nota and id_empresa=:id_empresa and item = 1 ';
    ExecutaComandoSQL(str_sql, vararrayof([valor_frete_dif,valor_seguro_dif, id_nota, recproj.iEmp]) );

  end;
  qr_aux.free;
end;

procedure TfrmDetalheNotaFiscalEntrada.AtualizaTotalNota;
var str_sql : string;
    qr_aux : Tuniquery;
begin
  inherited;
  if not (qrNotaEntrada.State in [dsInsert, dsEdit] ) then exit;
  RateiaFreteSeguro;

  str_sql := format(' select sum(valor_base_icms) as total_base_icms  , sum(valor_icms) as total_icms , '+
             ' sum(valor_base_icms_sub) as total_base_icms_sub, sum(valor_icms_sub) as total_icms_sub, '+
             ' sum(valor_total) as total_itens, sum(valor_unitario * quantidade) as total_produtos ,'+
             ' sum(valor_frete) as total_frete, sum(valor_seguro) as total_seguro, '+
             ' sum(valor_desconto) as total_desconto, sum(valor_despesas) as total_despesas, '+
             ' sum(valor_ipi) as total_ipi, sum(valor_pis) as total_pis, sum(valor_cofins) as total_cofins, 0.0 as valor_icms_retido '+
             ' from nota_entrada_item where id_nota_entrada=%d and id_empresa=%d',
              [qrNotaEntrada.FieldByName('id_nota_entrada').AsInteger, recproj.iEmp]);
  qr_aux := CriaUniQuery(self, frmmenu.conexao);
  if ExecutaConsultaSQL(qr_aux, str_sql) then
  begin
    qrNotaEntrada.FieldByName('valor_icms').asfloat := qr_aux.FieldByName('total_icms').asfloat;
    qrNotaEntrada.FieldByName('valor_base_icms').asfloat := qr_aux.FieldByName('total_base_icms').asfloat;
    qrNotaEntrada.FieldByName('valor_icms_sub').asfloat := qr_aux.FieldByName('total_icms_sub').asfloat;
    qrNotaEntrada.FieldByName('valor_base_icms_sub').asfloat := qr_aux.FieldByName('total_base_icms_sub').asfloat;
    //qrNotaSaida.FieldByName('valor_frete').asfloat := qr_aux.FieldByName('total_frete').asfloat;
    //qrNotaSaida.FieldByName('valor_seguro').asfloat := qr_aux.FieldByName('total_seguro').asfloat;
    qrNotaEntrada.FieldByName('valor_ipi').asfloat := qr_aux.FieldByName('total_ipi').asfloat;
    qrNotaEntrada.FieldByName('valor_despesas').asfloat := qr_aux.FieldByName('total_despesas').asfloat;
    qrNotaEntrada.FieldByName('valor_desconto').asfloat := qr_aux.FieldByName('total_desconto').asfloat;

    qrNotaEntrada.FieldByName('valor_produtos').asfloat := qr_aux.FieldByName('total_produtos').asfloat;
    qrNotaEntrada.FieldByName('valor_icms_retido').asfloat := qr_aux.FieldByName('valor_icms_retido').asfloat;
    qrNotaEntrada.FieldByName('valor_pis').asfloat := qr_aux.FieldByName('total_pis').asfloat;
    qrNotaEntrada.FieldByName('valor_cofins').asfloat := qr_aux.FieldByName('total_cofins').asfloat;
    qrNotaEntrada.FieldByName('valor_total').asfloat := qr_aux.FieldByName('total_itens').asfloat +
      qrNotaEntrada.FieldByName('valor_frete').asfloat + qrNotaEntrada.FieldByName('valor_seguro').asfloat;
  end
  else
  begin
    qrNotaEntrada.FieldByName('valor_icms').asfloat:=0;
    qrNotaEntrada.FieldByName('valor_base_icms').asfloat:=0;
    qrNotaEntrada.FieldByName('valor_icms_sub').asfloat:=0;
    qrNotaEntrada.FieldByName('valor_base_icms_sub').asfloat:=0;
    //qrNotaSaida.FieldByName('valor_frete').asfloat:=0;
    //qrNotaSaida.FieldByName('valor_seguro').asfloat:=0;
    qrNotaEntrada.FieldByName('valor_ipi').asfloat:=0;
    qrNotaEntrada.FieldByName('valor_despesas').asfloat:=0;
    qrNotaEntrada.FieldByName('valor_desconto').asfloat:=0;
    qrNotaEntrada.FieldByName('valor_total').asfloat:=0;
    qrNotaEntrada.FieldByName('valor_produtos').asfloat:=0;
    qrNotaEntrada.FieldByName('valor_icms_retido').asfloat:=0;
    qrNotaEntrada.FieldByName('valor_pis').asfloat:=0;
    qrNotaEntrada.FieldByName('valor_cofins').asfloat:=0;
  end;

end;


procedure TfrmDetalheNotaFiscalEntrada.acBuscaCFOPExecute(Sender: TObject);
var str_sql, filtro : string;
begin
  edCFOP.SetFocus;

  str_sql:= 'select cfop_codigo, cfop_descricao from cfop';
  //filtro := ' substring(cfop_codigo,1,1) in (''5'',''6'') ';
  filtro :='';

   frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
      CriaIntegerArray([0,1]) ,
      CriaStringArray(['CFOP', 'Descrição']),
      0, 0, filtro);
   frmBuscaRegistro.ShowModal;
   if frmBuscaRegistro.Tag=1 then
     qrNotaEntrada.FieldByName('cfop').value := frmBuscaRegistro.valor_retorno;
   frmBuscaRegistro.Free;

end;

procedure TfrmDetalheNotaFiscalEntrada.acBuscaFornecedorExecute(
  Sender: TObject);
var str_sql : string;
begin
  inherited;
  edCodFornecedor.SetFocus;

  str_sql:= 'select id_fornecedor, nome_fantasia, razao_social, cnpj, fn_situacoes(id_situacao) as status from fornecedor ';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
    str_sql,
    CriaIntegerArray([0,1,2,3,4]) ,
    CriaStringArray(['Código', 'Nome Fantasia', 'Razão social','CNPJ', 'Status' ]),
    0, 1, ' id_situacao=4 and id_empresa='+IntToStr(RecProj.iEmp), 800, 500);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
  begin
   qrNotaEntrada.FieldByName('id_fornecedor').value := frmBuscaRegistro.valor_retorno;
  end;
  frmBuscaRegistro.Free;
end;

procedure TfrmDetalheNotaFiscalEntrada.acBuscaTransportadorExecute(
  Sender: TObject);
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
     qrNotaentrada.FieldByName('id_transportador').value := frmBuscaRegistro.valor_retorno;
   frmBuscaRegistro.Free;
end;

procedure TfrmDetalheNotaFiscalEntrada.btAdicionarDocClick(Sender: TObject);
begin
  inherited;
  if qrNotaentrada.State = dsinsert  then
  begin
    if application.MessageBox('A nota atual deve ser salva para poder inserir os itens, gostaria de salvar agora?',
                              'Atenção', MB_ICONQUESTION + MB_YESNO )=mryes then
    begin
      qrNotaentrada.Post;
      qrNotaentrada.edit;
    end
    else
    begin
      exit;
    end;
  end;

  frmDetalheNotaentradaDocReferenciado := TfrmDetalheNotaentradaDocReferenciado.Create(self,
                         qrNotaentrada.FieldByName('id_nota_entrada').AsInteger, 0);
  frmDetalheNotaentradaDocReferenciado.ShowModal;
  frmDetalheNotaentradaDocReferenciado.free;
  qrNotaentradaDocRef.Refresh;
end;

procedure TfrmDetalheNotaFiscalEntrada.btAdicionarDuplicataClick(
  Sender: TObject);
var str_sql : string;
    valor : double;
begin
  inherited;
  if qrNotaentrada.State = dsinsert  then
  begin
    if application.MessageBox('A nota atual deve ser salva para poder inserir os itens, gostaria de salvar agora?',
                              'Atenção', MB_ICONQUESTION + MB_YESNO )=mryes then
    begin
      qrNotaentrada.Post;
      qrNotaentrada.edit;
    end
    else
    begin
      exit;
    end;
  end;

  str_sql := format('select coalesce(sum(valor),0.0) as valor from nota_entrada_duplicata where id_nota_entrada=%d and id_empresa = %d',
             [qrNotaentrada.FieldByName('id_nota_entrada').AsInteger, recproj.iEmp]);
  BuscaCampo(valor, str_sql, '', false);

  if CompareValue(valor,qrNotaentrada.FieldByName('valor_total').asfloat )=-1 then
  begin
    frmDetalheNotaentradaDuplicata := TfrmDetalheNotaentradaDuplicata.Create(self,
                           qrNotaentrada.FieldByName('id_nota_entrada').AsInteger, 0);
    frmDetalheNotaentradaDuplicata.ShowModal;
    frmDetalheNotaentradaDuplicata.free;
  end
  else
    application.MessageBox('O valor das duplicatas já atingiu o valor total da nota!', 'Atenção', MB_ICONINFORMATION);

  qrNotaentradaDuplicata.Refresh;

end;

procedure TfrmDetalheNotaFiscalEntrada.btAdicionarItemClick(Sender: TObject);
var ok : boolean;
begin
  inherited;
  if qrNotaEntrada.State in [dsinsert, dsedit]  then
  begin
    ok := qrNotaEntrada.State=dsedit;

    if not ok then
      ok := application.MessageBox('A nota atual deve ser salva para poder inserir os itens, gostaria de salvar agora?',
                              'Atenção', MB_ICONQUESTION + MB_YESNO )=mryes;

    if ok then
    begin
      qrNotaEntrada.Post;
      qrNotaEntrada.edit;
    end
    else
    begin
      exit;
    end;

  end;

  frmDetalheNotaEntradaItem := TfrmDetalheNotaEntradaItem.Create(self,
                         qrNotaEntrada.FieldByName('id_nota_entrada').AsInteger, 0);
  frmDetalheNotaEntradaItem.ShowModal;
  frmDetalheNotaEntradaItem.free;
  AtualizaTotalNota;
  qrNotaEntrada.refresh;
  qrNotaEntradaItem.Refresh;
  qrNotaEntrada.edit;

end;

procedure TfrmDetalheNotaFiscalEntrada.btCancelarClick(Sender: TObject);
begin
  inherited;
  btcancelar.SetFocus;
  if qrNotaEntrada.State in [dsEdit, dsInsert] then qrNotaEntrada.Cancel;
  qrNotaEntrada.Refresh;
  self.Close;
end;

procedure TfrmDetalheNotaFiscalEntrada.btEditarDocClick(Sender: TObject);
begin
  inherited;
  if qrNotaentradaDocRef.Active then
  begin
    if qrNotaentradaDocRef.RecordCount>0 then
    begin
      frmDetalheNotaentradaDocReferenciado := TfrmDetalheNotaentradaDocReferenciado.Create(self,
                             qrNotaentrada.FieldByName('id_nota_entrada').AsInteger,
                             qrNotaentradaDocRef.FieldByName('item').AsInteger);
      frmDetalheNotaentradaDocReferenciado.ShowModal;
      frmDetalheNotaentradaDocReferenciado.free;
      qrNotaentradaDocRef.Refresh;
    end;
  end;
end;

procedure TfrmDetalheNotaFiscalEntrada.btEditarDuplicataClick(Sender: TObject);
begin
  inherited;
  if qrNotaentradaDuplicata.Active then
  begin
    if qrNotaentradaDuplicata.RecordCount>0 then
    begin
      frmDetalheNotaentradaDuplicata := TfrmDetalheNotaentradaDuplicata.Create(self,
                             qrNotaentradaDuplicata.FieldByName('id_nota_entrada').AsInteger,
                             qrNotaentradaDuplicata.FieldByName('item').AsInteger);
      frmDetalheNotaentradaDuplicata.ShowModal;
      frmDetalheNotaentradaDuplicata.free;
      qrNotaentradaDuplicata.Refresh;
    end;
  end;
end;

procedure TfrmDetalheNotaFiscalEntrada.btEditarItemClick(Sender: TObject);
begin
  inherited;
  if qrNotaentradaItem.Active then
  begin
    if qrNotaentradaItem.RecordCount>0 then
    begin

      frmDetalheNotaentradaItem := TfrmDetalheNotaentradaItem.Create(self,
                             qrNotaentrada.FieldByName('id_nota_entrada').AsInteger,
                             qrNotaentradaItem.FieldByName('item').AsInteger);
      frmDetalheNotaentradaItem.ShowModal;
      frmDetalheNotaentradaItem.free;

      if qrNotaentrada.state in [dsedit, dsinsert] then qrNotaentrada.Post;
      qrNotaentrada.edit;

      AtualizaTotalNota;
      qrNotaentradaItem.Refresh;
    end;
  end;
end;

procedure TfrmDetalheNotaFiscalEntrada.ReordenaItensNf(tabela : string = 'nota_entrada_item');
var str_sql : string;
    qr_aux : TUniQuery;
    contador : integer;
begin
  inherited;
  //acrescenta 10000 ao numero do item para evitar duplicidade ao reordenar mais adiante
  str_sql := format('update %s set item=item+10000 where id_nota_entrada=%d and id_empresa=%d',
                    [tabela, qrNotaentrada.FieldByName('id_nota_entrada').AsInteger, recproj.iEmp]);
  ExecutaComandoSQL(str_sql);

  qr_aux := CriaUniQuery(self, frmMenu.conexao);
  str_sql := format('select item from %s where id_nota_entrada=%d and id_empresa=%d order by item',
                    [tabela, qrNotaentrada.FieldByName('id_nota_entrada').AsInteger, recproj.iEmp]);
  ExecutaConsultaSQL(qr_aux, str_sql);
  contador :=1;
  while not qr_aux.eof do
  begin
    str_sql := format('update %s set item=%d where item=%d and id_nota_entrada=%d and id_empresa=%d',
                    [tabela, contador, qr_aux.FieldByName('item').AsInteger,
                     qrNotaentrada.FieldByName('id_nota_entrada').AsInteger, recproj.iEmp]);
    ExecutaComandoSQL(str_sql);
    qr_aux.Next;
    contador := contador + 1;
  end;

end;

procedure TfrmDetalheNotaFiscalEntrada.btRemoverDocClick(Sender: TObject);
var msg, str_sql : string;
begin
  inherited;
  if qrNotaentradaDocRef.Active then
  begin
    if qrNotaentradaDocRef.RecordCount>0 then
    begin
      msg := format('Confirma a exclusão do item %d?',[qrNotaentradaDocRef.FieldByName('item').AsInteger]);
      if Application.MessageBox(pchar(msg), 'Atenção', MB_ICONQUESTION + mb_yesno)=mryes then
      begin
        str_sql := format('delete from nota_entrada_doc_referenciado where id_nota_entrada=%d and item=%d and id_empresa=%d',
                         [qrNotaentradaDocRef.FieldByName('id_nota_entrada').AsInteger,
                         qrNotaentradaDocRef.FieldByName('item').AsInteger, recproj.iEmp]);
        ExecutaComandoSQL(str_sql);
        ReordenaItensNf('nota_entrada_doc_referenciado');
        Application.MessageBox('Item excluído!','Atenção', MB_ICONINFORMATION );
        qrNotaentradaDocRef.Refresh;
      end;
    end
    else
    begin
      Application.MessageBox('Nenhum item selecionado!','Atenção', MB_ICONINFORMATION );
    end;
  end;
end;

procedure TfrmDetalheNotaFiscalEntrada.btRemoverDuplicataClick(Sender: TObject);
var msg, str_sql : string;
begin
  inherited;
  if qrNotaentradaDuplicata.Active then
  begin
    if qrNotaentradaDuplicata.RecordCount>0 then
    begin
      msg := format('Confirma a exclusão do item %d?',[qrNotaentradaDuplicata.FieldByName('item').AsInteger]);
      if Application.MessageBox(pchar(msg), 'Atenção', MB_ICONQUESTION + mb_yesno)=mryes then
      begin
        str_sql := format('delete from nota_entrada_duplicata where id_nota_entrada=%d and item=%d and id_empresa=%d',
                         [qrNotaentradaDuplicata.FieldByName('id_nota_entrada').AsInteger,
                         qrNotaentradaDuplicata.FieldByName('item').AsInteger, recproj.iEmp]);
        ExecutaComandoSQL(str_sql);
        ReordenaItensNf('nota_entrada_duplicata');
        Application.MessageBox('Item excluído!','Atenção', MB_ICONINFORMATION );
        qrNotaentradaDuplicata.Refresh;
      end;
    end
    else
    begin
      Application.MessageBox('Nenhum item selecionado!','Atenção', MB_ICONINFORMATION );
    end;
  end;

end;

procedure TfrmDetalheNotaFiscalEntrada.btRemoverItemClick(Sender: TObject);
var msg, str_sql : string;
begin
  inherited;
  if qrnotaEntradaitem.Active then
  begin
    if qrnotaEntradaitem.RecordCount>0 then
    begin
      msg := format('Confirma a exclusão do item %d?',[qrnotaEntradaitem.FieldByName('item').AsInteger]);
      if Application.MessageBox(pchar(msg), 'Atenção', MB_ICONQUESTION + mb_yesno)=mryes then
      begin
        str_sql := format('delete from nota_entrada_item where id_nota_entrada=%d and item=%d and id_empresa=%d',
                         [qrnotaEntradaitem.FieldByName('id_nota_entrada').AsInteger,
                         qrnotaEntradaitem.FieldByName('item').AsInteger, recproj.iEmp]);
        ExecutaComandoSQL(str_sql);

        ReordenaItensNf;

        Application.MessageBox('Item excluído!','Atenção', MB_ICONINFORMATION );
        AtualizaTotalNota;
        qrnotaEntradaitem.Refresh;
      end;

    end
    else
    begin
      Application.MessageBox('Nenhum item selecionado!','Atenção', MB_ICONINFORMATION );
    end;
  end;

end;

procedure TfrmDetalheNotaFiscalEntrada.btSalvarClick(Sender: TObject);
begin
  inherited;
  btSalvar.SetFocus;
  qrNotaEntrada.Post;
  qrNotaEntrada.ParamByName('id_nota_entrada').AsInteger:= qrNotaEntrada.FieldByName('id_nota_entrada').AsInteger;
  qrNotaEntrada.Refresh;
  self.Close;
end;

constructor TfrmDetalheNotaFiscalEntrada.Create(sender : Tcomponent ; id_usuario_nota : integer; id_nota_entrada : integer = 0);
begin
  inherited Create(sender);
  self.id_usuario_nota := id_usuario_nota;
  qrNotaEntrada.Close;
  qrNotaEntrada.ParamByName('id_nota_entrada').AsInteger := id_nota_entrada;
  qrNotaEntrada.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrNotaEntrada.Open;

  if id_nota_entrada =0 then
    qrNotaEntrada.Append
  else
  begin
     // 0 - em digitacao
     // 1 - lançada
    if qrNotaEntrada.fieldByName('id_situacao').asinteger in [1] then
    begin
      btSalvar.Enabled:=false;
    end
    else
    begin
      qrNotaEntrada.Edit;
    end;

  end;

  PageControlNFE.ActivePageIndex :=0;


  //:id_nota_saida and ns.id_empresa = :id_empresa
end;

procedure TfrmDetalheNotaFiscalEntrada.DSNotaEntradaStateChange(
  Sender: TObject);
begin
  inherited;
  if qrNotaEntrada.Active then
  begin
    //aberto, nao editando...
    if qrNotaEntrada.State = dsBrowse then
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

      acBuscaFornecedor.Enabled :=false;
      acBuscaCFOP.Enabled :=false;
      acBuscaTransportador.Enabled := false;
    end
    else if qrNotaEntrada.State in [dsInsert, dsEdit]  then
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

      acBuscaFornecedor.Enabled :=true;
      acBuscaCFOP.Enabled :=true;
      acBuscaTransportador.Enabled := true;
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

    acBuscaFornecedor.Enabled := false;
    acBuscaCFOP.Enabled := false;
    acBuscaTransportador.Enabled := false;
  end;
end;

procedure TfrmDetalheNotaFiscalEntrada.qrNotaEntradaAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  qrNotaEntrada.ParamByName('id_nota_entrada').AsInteger := qrNotaEntrada.FieldByName('id_nota_entrada').AsInteger;

  qrNotaEntradaItem.Close;
  qrNotaEntradaDocRef.Close;
  qrNotaentradaDuplicata.Close;

  qrNotaEntradaItem.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrNotaEntradaItem.ParamByName('id_nota_entrada').AsInteger := qrNotaEntrada.FieldByName('id_nota_entrada').AsInteger;

  qrNotaEntradaDocRef.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrNotaEntradaDocRef.ParamByName('id_nota_entrada').AsInteger := qrNotaEntrada.FieldByName('id_nota_entrada').AsInteger;

  qrNotaentradaDuplicata.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrNotaentradaDuplicata.ParamByName('id_nota_entrada').AsInteger := qrNotaentrada.FieldByName('id_nota_entrada').AsInteger;

  qrNotaentradaDuplicata.OPen;

  qrNotaEntradaDocRef.Open;
  qrNotaEntradaItem.open;
end;

procedure TfrmDetalheNotaFiscalEntrada.qrNotaEntradaAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  qrNotaEntradaAfterOpen(nil);
end;

procedure TfrmDetalheNotaFiscalEntrada.qrNotaEntradaBeforePost(
  DataSet: TDataSet);
var i : integer;
    str_sql : string;
begin
  inherited;

  for I := 0 to qrNotaentrada.FieldCount-1 do
  begin
    if qrNotaentrada.Fields[i].Required and  qrNotaentrada.Fields[i].IsNull then
    begin
      Application.MessageBox(pchar( 'O campo obrigatório ' +  qrNotaentrada.Fields[i].DisplayLabel+
                                    ' não foi preenchido!' ), 'Atenção', MB_ICONWARNING);
      abort;
    end;
  end;

  if AnsiIndexStr(qrNotaentrada.fieldByName('transp_placa_uf').asstring,
                   ['AC', 'AL', 'AM', 'AP', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA',
                    'MG', 'MS', 'MT', 'PA', 'PB', 'PE', 'PI', 'PR', 'RJ', 'RN',
                    'RO', 'RR', 'RS', 'SC', 'SE', 'SP', 'TO', 'EX', ''])<0  then
  begin
    application.MessageBox('UF da placa do veículo de transporte inválida!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  if qrNotaentrada.State = dsInsert then
  begin
    if qrNotaentrada.Fieldbyname('data_entrada').IsNull then
      qrNotaentrada.Fieldbyname('data_entrada').asdatetime := Date + time;

    {str_sql := format('update empresas set numero_nfe = %d where emp_001=%d',
                      [qrNotaentrada.Fieldbyname('numero').asinteger, recproj.iEmp]);
    ExecutaComandoSQL(str_sql);}
  end;
end;

procedure TfrmDetalheNotaFiscalEntrada.qrNotaEntradacfopChange(Sender: TField);
var descricao_campo, str_sql : string;
begin
  inherited;
  if (qrNotaEntrada.FieldByName('cfop').isnull) or (qrNotaEntrada.FieldByName('cfop').asstring='') then
  begin
    qrNotaEntrada.FieldByName('cfop_descricao').value := null;
    exit;
  end;

  str_sql := format('select cfop_descricao from cfop where cfop_codigo =%s',
                    [quotedstr( qrNotaEntrada.FieldByName('cfop').Asstring)]);
  if BuscaCampo(descricao_campo, str_sql, 'CFOP', true  ) then
  begin
    {if not ((copy(qrNotaEntrada.FieldByName('cfop').Asstring,1,1)='5')or
            (copy(qrNotaEntrada.FieldByName('cfop').Asstring,1,1)='6')) then
    begin
      application.messagebox('O CFOP informado não é de saída!', 'Atenção', MB_ICONINFORMATION);
      qrNotaEntrada.FieldByName('cfop').value := null;
    end
    else }
      qrNotaEntrada.FieldByName('cfop_descricao').asstring := descricao_campo;
  end
  else
  begin
    qrNotaEntrada.FieldByName('cfop_descricao').value := null;
    qrNotaEntrada.FieldByName('cfop').value := null;
  end;

end;

procedure TfrmDetalheNotaFiscalEntrada.qrNotaEntradaid_fornecedorChange(
  Sender: TField);
var cod_fornecedor : integer;
    str_sql : string;
    qr_aux : Tuniquery;
begin
  if qrNotaEntrada.FieldByName('id_fornecedor').Isnull then
  begin
    qrNotaEntrada.fieldbyname('cnpj_fornecedor').asstring := '';
    qrNotaEntrada.fieldbyname('endereco_fornecedor').asstring := '';
    qrNotaEntrada.fieldbyname('nome_fornecedor').asstring := '';
  end
  else
  begin
    str_sql :=format(' select id_fornecedor, nome_fantasia, razao_social, cnpj, '+
                     ' cast(trim(concat(endereco_logradouro, '' '', endereco_numero, '' '', endereco_cidade)) as varchar(100))  as endereco_fornecedor  '+
                     ' from fornecedor where id_fornecedor=%d and id_empresa=%d',
                     [qrNotaEntrada.FieldByName('id_fornecedor').asinteger, recproj.iEmp]);
    qr_aux := CriaUniQuery(self, frmmenu.conexao);
    if ExecutaConsultaSQL(qr_aux, str_sql) then
    begin
      qrNotaEntrada.fieldbyname('cnpj_fornecedor').asstring := qr_aux.fieldbyname('cnpj').asstring;
      qrNotaEntrada.fieldbyname('endereco_fornecedor').asstring  := qr_aux.fieldbyname('endereco_fornecedor').asstring;
      qrNotaEntrada.fieldbyname('nome_fornecedor').asstring := qr_aux.fieldbyname('razao_social').asstring;
    end
    else
    begin
      Application.MessageBox('Cliente não encontrado!', 'Atenção', MB_ICONINFORMATION);
      qrNotaEntrada.FieldByName('id_fornecedor').value := null;
    end;
    qr_aux.Free;
  end;

  qrNotaEntradanumeroChange(nil);

end;

procedure TfrmDetalheNotaFiscalEntrada.qrNotaEntradaid_transportadorChange(
  Sender: TField);
var cod_trans : integer;
    str_sql : string;
    qr_aux : Tuniquery;
begin
  if qrNotaentrada.FieldByName('id_transportador').Isnull then
  begin
    qrNotaentrada.fieldbyname('cnpj_transportador').asstring := '';
    qrNotaentrada.fieldbyname('ie_transportador').asstring := '';
    qrNotaentrada.fieldbyname('nome_transportador').asstring := '';
  end
  else
  begin
    str_sql :=format(' select nome_fantasia, cnpj, inscricao_estadual '+
                     ' from fornecedor where id_fornecedor = %d and id_empresa =%d',
                     [qrNotaentrada.FieldByName('id_transportador').asinteger, recproj.iEmp]);
    qr_aux := CriaUniQuery(self, frmmenu.conexao);
    if ExecutaConsultaSQL(qr_aux, str_sql) then
    begin
      qrNotaentrada.fieldbyname('cnpj_transportador').asstring := qr_aux.fieldbyname('cnpj').asstring;
      qrNotaentrada.fieldbyname('ie_transportador').asstring := qr_aux.fieldbyname('inscricao_estadual').asstring;
      qrNotaentrada.fieldbyname('nome_transportador').asstring := qr_aux.fieldbyname('nome_fantasia').asstring;
    end
    else
    begin
      Application.MessageBox('Transportador (fornecedor) não encontrado!', 'Atenção', MB_ICONINFORMATION);
      qrNotaentrada.FieldByName('id_transportador').value := null;
    end;
    qr_aux.Free;
  end;

end;

procedure TfrmDetalheNotaFiscalEntrada.qrNotaEntradaNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  qrNotaEntrada.FieldByName('id_empresa').asinteger:=recproj.iEmp;
  qrNotaEntrada.FieldByName('id_usuario').asinteger := id_usuario_nota;
  qrNotaEntrada.FieldByName('data_emissao').AsDateTime := Date;

end;

procedure TfrmDetalheNotaFiscalEntrada.qrNotaEntradanumeroChange(
  Sender: TField);
var str_sql : string;
    ano, mes, dia :word;
    qraux : TUniQuery;
begin
  inherited;
  //verifica se não existe o mesmo numero de nota para o fornecedor
  if not (qrNotaEntrada.fieldbyname('id_fornecedor').IsNull or
          qrNotaEntrada.fieldbyname('numero').IsNull) then
  begin
    decodedate(qrNotaEntrada.FieldByName('data_emissao').AsDateTime, ano, mes, dia) ;
    str_sql := 'select 1 from nota_entrada where date_part(''year'', data_emissao)=%d and id_fornecedor=%d and numero=%d and id_nota_entrada<>%d';
    str_sql := format(str_sql,[ano, qrNotaEntrada.fieldbyname('id_fornecedor').asinteger,
           qrNotaEntrada.fieldbyname('numero').asinteger,
           qrNotaEntrada.fieldbyname('id_nota_entrada').asinteger ]);
    qraux := CriaUniQuery(self, frmMenu.conexao);
    if ExecutaConsultaSQL(qraux, str_sql) then
    begin
      Application.MessageBox('Já existe uma nota com esse número para este fornecedor!', 'Atenção', MB_ICONWARNING);
      if edNumero.CanFocus then edNumero.SetFocus;
    end;
  end;

end;

procedure TfrmDetalheNotaFiscalEntrada.qrNotaEntradavalor_freteChange(
  Sender: TField);
begin
  inherited;
  AtualizaTotalNota;
end;

procedure TfrmDetalheNotaFiscalEntrada.qrNotaEntradavalor_seguroChange(
  Sender: TField);
begin
  inherited;
  AtualizaTotalNota;
end;

end.
