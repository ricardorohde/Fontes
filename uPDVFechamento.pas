unit uPDVFechamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, JvExStdCtrls,
  JvEdit, JvValidateEdit, Data.DB, MemDS, DBAccess, Uni, Vcl.ExtCtrls,
  Vcl.DBCtrls, Datasnap.Provider, Datasnap.DBClient, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, JvDataSource,
  cxEditRepositoryItems, Vcl.ActnList, cxButtonEdit, Vcl.ComCtrls, Vcl.Mask,
  cxContainer, cxTextEdit, cxDBEdit, frxClass, frxDBSet, System.Math,
  AdvGlowButton, AdvGroupBox, AdvPanel, cxMaskEdit, cxSpinEdit, Vcl.Imaging.jpeg,
  cxDropDownEdit, cxCalc, dxGDIPlusClasses, cxCheckBox,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, System.Actions, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, ACBrTEFDClass, ACBrBase, ACBrValidador,
  Vcl.Buttons, frxDesgn;

type
  TfrmPDVFechamento = class(TForm)
    qrVenda: TUniQuery;
    dsVenda: TDataSource;
    qrVendaid_mesa: TIntegerField;
    qrVendaid_venda: TIntegerField;
    qrVendanro_venda: TIntegerField;
    qrVendanro_mesa: TIntegerField;
    qrVendadescricao_mesa: TWideStringField;
    qrVendacod_venda: TIntegerField;
    qrVendanro_nome_mesa: TWideStringField;
    qrVendadata_abertura: TDateTimeField;
    qrVendavalor_venda: TFloatField;
    qrVendavalor_tx: TFloatField;
    dspVenda: TDataSetProvider;
    qrVendadesconto: TFloatField;
    qrVendatotal_pago: TFloatField;
    qrVendavalor_restante: TFloatField;
    qrVendavalor_troco: TFloatField;
    cdsVenda: TClientDataSet;
    cdsVendaid_mesa: TIntegerField;
    cdsVendaid_venda: TIntegerField;
    cdsVendanro_venda: TIntegerField;
    cdsVendanro_mesa: TIntegerField;
    cdsVendadescricao_mesa: TWideStringField;
    cdsVendacod_venda: TIntegerField;
    cdsVendanro_nome_mesa: TWideStringField;
    cdsVendadata_abertura: TDateTimeField;
    cdsVendavalor_venda: TFloatField;
    cdsVendavalor_tx: TFloatField;
    cdsVendadesconto: TFloatField;
    cdsVendatotal_pago: TFloatField;
    cdsVendavalor_restante: TFloatField;
    cdsVendavalor_troco: TFloatField;
    cdsVendavalor_total_venda: TFloatField;
    cdsVendadeconto_percent: TFloatField;
    cdsVendavalor_pessoa: TFloatField;
    qrVendadesconto_percent: TFloatField;
    qrVendanro_pessoas: TIntegerField;
    cdsVendanro_pessoas: TIntegerField;
    qrVendacouvert_m: TFloatField;
    qrVendacouvert_f: TFloatField;
    qrVendanro_couvert_m: TIntegerField;
    qrVendanro_couvert_f: TIntegerField;
    cdsVendacouvert_m: TFloatField;
    cdsVendacouvert_f: TFloatField;
    cdsVendanro_couvert_m: TIntegerField;
    cdsVendanro_couvert_f: TIntegerField;
    cdsVendatotal_couvert: TFloatField;
    qrVendaid_caixa: TIntegerField;
    cdsVendaid_caixa: TIntegerField;
    cdsVendacpf_cliente: TWideStringField;
    qrVendaobs_mesa: TWideStringField;
    cdsVendaobs_mesa: TWideStringField;
    qrVendaItem: TUniQuery;
    qrVendaItemid_empresa: TIntegerField;
    qrVendaItemid_venda: TIntegerField;
    qrVendaItemnro_item: TIntegerField;
    qrVendaItemqtdevenda: TFloatField;
    qrVendaItemvlrvenda: TFloatField;
    qrVendaItemdescricao_item: TWideStringField;
    qrVendaItemobservacao: TWideStringField;
    qrVendaItemcod_status: TIntegerField;
    qrVendaItemstatus: TWideMemoField;
    qrVendaItemdesconto: TFloatField;
    qrVendaItemvalor_total: TFloatField;
    qrVendaItemvalor_taxa10: TFloatField;
    qrVendaItemvalor_total_taxa10: TFloatField;
    qrVendaItemordem_item: TLargeintField;
    qrVendaItemvalor_desconto: TFloatField;
    qrVendaItemid_produto: TIntegerField;
    AdvPanel1: TAdvPanel;
    cdsVendadata_atual: TDateTimeField;
    qrVendacpf_cliente: TWideStringField;
    qrVendavalor_desconto_itens: TFloatField;
    cdsVendavalor_desconto_itens: TFloatField;
    qrVendanro_itens: TLargeintField;
    cdsVendanro_itens: TLargeintField;
    imgFundo: TImage;
    cbDescontoAcrescimo: TComboBox;
    qrListaFormapgto1: TUniQuery;
    qrListaFormapgto1for_001: TIntegerField;
    qrListaFormapgto1for_002: TWideStringField;
    qrListaFormapgto1emp_001: TIntegerField;
    dsListaFormapgto1: TDataSource;
    qrListaFormapgto2: TUniQuery;
    IntegerField18: TIntegerField;
    WideStringField12: TWideStringField;
    IntegerField19: TIntegerField;
    dsListaFormapgto2: TDataSource;
    dsListaFormapgto3: TDataSource;
    qrListaFormapgto3: TUniQuery;
    IntegerField20: TIntegerField;
    WideStringField13: TWideStringField;
    IntegerField21: TIntegerField;
    cbFormaPgto1: TDBLookupComboBox;
    cbFormaPgto2: TDBLookupComboBox;
    cbFormaPgto3: TDBLookupComboBox;
    edValorPagamento1: TJvValidateEdit;
    edValorPagamento2: TJvValidateEdit;
    edValorPagamento3: TJvValidateEdit;
    qrVendavalor_pag1: TFloatField;
    qrVendavalor_pag2: TFloatField;
    qrVendavalor_pag3: TFloatField;
    qrVendacod_pag1: TIntegerField;
    qrVendacod_pag2: TIntegerField;
    qrVendacod_pag3: TIntegerField;
    cdsVendavalor_pag1: TFloatField;
    cdsVendavalor_pag2: TFloatField;
    cdsVendavalor_pag3: TFloatField;
    cdsVendacod_pag1: TIntegerField;
    cdsVendacod_pag2: TIntegerField;
    cdsVendacod_pag3: TIntegerField;
    jvdsVenda: TJvDataSource;
    qrVendadesconto_acrescimo: TFloatField;
    cdsVendadesconto_acrescimo: TFloatField;
    edDescontoValor: TJvValidateEdit;
    RepFechaConta: TfrxReport;
    dbPedido: TfrxDBDataset;
    dbItensFechamento: TfrxDBDataset;
    dbEmpresa: TfrxDBDataset;
    dbPagamentos: TfrxDBDataset;
    dbItensFracionadoFechamento: TfrxDBDataset;
    qrVendaItemFracionadoRep: TUniQuery;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    IntegerField10: TIntegerField;
    WideMemoField2: TWideMemoField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    LargeintField2: TLargeintField;
    FloatField14: TFloatField;
    IntegerField11: TIntegerField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    IntegerField12: TIntegerField;
    qrVendaItemFracionadoRepqtd_fracao: TWideMemoField;
    qrVendaItemRep: TUniQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    IntegerField4: TIntegerField;
    WideMemoField1: TWideMemoField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    LargeintField1: TLargeintField;
    FloatField7: TFloatField;
    IntegerField5: TIntegerField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    IntegerField6: TIntegerField;
    dsVendaItemFracionadoRep: TDataSource;
    dsVendaItemRep: TDataSource;
    qrVendaItemFracionadoOpcional: TUniQuery;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    FloatField15: TFloatField;
    WideStringField11: TWideStringField;
    IntegerField17: TIntegerField;
    qrVendaItemOpcional: TUniQuery;
    qrVendaItemOpcionalid_venda: TIntegerField;
    qrVendaItemOpcionalid_empresa: TIntegerField;
    qrVendaItemOpcionalid_vendaitem: TIntegerField;
    qrVendaItemOpcionalid_opcional: TIntegerField;
    qrVendaItemOpcionaldescricao: TWideStringField;
    qrVendaItemOpcionalvalor: TFloatField;
    qrVendaItemOpcionalord: TIntegerField;
    dbItensFracionadoOpcional: TfrxDBDataset;
    dbItensOpcional: TfrxDBDataset;
    cdsParcelasPagamentos: TClientDataSet;
    cdsParcelasPagamentosid_formapgto: TIntegerField;
    cdsParcelasPagamentosdescr_formapag: TStringField;
    cdsParcelasPagamentosvalor: TFloatField;
    cdsParcelasPagamentosnro_autorizacao: TStringField;
    cdsParcelasPagamentosdinheiro: TBooleanField;
    cdsParcelasPagamentosantecipado: TBooleanField;
    qrVendanumero_cupom: TIntegerField;
    cdsVendanumero_cupom: TIntegerField;
    btConfirma: TAdvGlowButton;
    btCancela: TAdvGlowButton;
    qrVendatipo_venda: TWideStringField;
    cdsVendatipo_venda: TWideStringField;
    repPainelSenha: TfrxReport;
    ckImprimirCupom: TcxCheckBox;
    btClientes: TAdvGlowButton;
    pmCliente: TPopupActionBar;
    Alterar1: TMenuItem;
    Remover1: TMenuItem;
    qrVendacli_001: TIntegerField;
    qrVendanome_cliente: TWideStringField;
    cdsVendacli_001: TIntegerField;
    cdsVendanome_cliente: TWideStringField;
    cdsParcelasPagamentosfiado: TBooleanField;
    ActionList1: TActionList;
    acAbrirGaveta: TAction;
    RepFechaConta2: TfrxReport;
    qrCreceberFiado: TUniQuery;
    qrCreceberFiadodocumento: TWideStringField;
    qrCreceberFiadodata_vencimento: TDateField;
    qrCreceberFiadovalor: TFloatField;
    dbCreceberFiado: TfrxDBDataset;
    qrDadosCliente: TUniQuery;
    qrDadosClientenome: TWideStringField;
    qrDadosClienteendereco: TWideStringField;
    qrDadosClientebairro: TWideStringField;
    qrDadosClientecidade_desc: TWideStringField;
    qrDadosClientetelefone1: TWideStringField;
    qrDadosClientecpf: TWideStringField;
    dbDadosCliente: TfrxDBDataset;
    qrListaFormapgto1b_fiado: TBooleanField;
    qrListaFormapgto1b_devolucao: TBooleanField;
    qrVendaItemRepdata_hora_lancamento: TDateTimeField;
    qrVendaItemFracionadoRepdata_hora_lancamento: TDateTimeField;
    qrVendaItemdata_hora_lancamento: TDateTimeField;
    qrVendaacrescimo: TFloatField;
    cdsVendaacrescimo: TFloatField;
    qrVendatotal_itens: TFloatField;
    cdsVendatotal_itens: TFloatField;
    qrVendaItemid_setor: TIntegerField;
    qrVendaItemOpcionaltipo: TIntegerField;
    qrVendaItemFracionadoOpcionaltipo: TIntegerField;
    qrAuxiliar: TUniQuery;
    qrVendaItemutiliza_combo: TBooleanField;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    lblAut1: TLabel;
    lblAut2: TLabel;
    lblAut3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    DBText6: TDBText;
    DBText1: TDBText;
    DBText2: TDBText;
    edtAut1: TEdit;
    edtAut2: TEdit;
    edtAut3: TEdit;
    qrListaFormapgto1sfi_codigo: TIntegerField;
    qrListaFormapgto2sfi_codigo: TIntegerField;
    qrListaFormapgto3sfi_codigo: TIntegerField;
    qrListaFormapgto1tipo_integracao: TIntegerField;
    qrListaFormapgto2tipo_integracao: TIntegerField;
    qrListaFormapgto3tipo_integracao: TIntegerField;
    qrListaFormapgto1cnpjcred: TWideStringField;
    qrListaFormapgto2cnpjcred: TWideStringField;
    qrListaFormapgto3cnpjcred: TWideStringField;
    MemoCupomTEF: TMemo;
    MemoCupomTEF1: TMemo;
    MemoCupomTEF3: TMemo;
    MemoCupomTEF2: TMemo;
    qrListaFormapgto1b_tef: TBooleanField;
    qrListaFormapgto2b_tef: TBooleanField;
    qrListaFormapgto3b_tef: TBooleanField;
    qrListaFormapgto1bandeira_cartao: TWideStringField;
    qrListaFormapgto2bandeira_cartao: TWideStringField;
    qrListaFormapgto3bandeira_cartao: TWideStringField;
    pAguardeTef: TPanel;
    lMensagemCliente: TLabel;
    lMensagemOperador: TLabel;
    ActionList2: TActionList;
    Action1: TAction;
    Action2: TAction;
    frxDesigner1: TfrxDesigner;
    btn1: TBitBtn;
    constructor Create (Sender : TComponent ; id_venda: integer; modo_devolucao_pdv : boolean = false; valor_devolucao : double =0 ); reintroduce;
    procedure CalculaValorPago(flag_outros : boolean = false);
    procedure cdsVendaCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure aplicaDesconto(tipo : integer = 1);
    procedure edDescontoValorExit(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure cdsVendadescontoChange(Sender: TField);
    procedure cdsVendadeconto_percentChange(Sender: TField);
    procedure cdsVendanro_couvert_mChange(Sender: TField);
    procedure cdsVendanro_couvert_fChange(Sender: TField);
    procedure qrVendaItemBeforeOpen(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsVendacpf_clienteChange(Sender: TField);
    procedure edDescontoValorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbFormaPgto1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbFormaPgto2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbFormaPgto3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbFormaPgto1Enter(Sender: TObject);
    procedure cbFormaPgto2Enter(Sender: TObject);
    procedure cbFormaPgto3Enter(Sender: TObject);
    procedure edValorPagamento1Enter(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure edValorPagamento2Enter(Sender: TObject);
    procedure edValorPagamento3Enter(Sender: TObject);
    procedure cdsVendavalor_pag1Validate(Sender: TField);
    procedure cdsVendavalor_pag2Validate(Sender: TField);
    procedure cdsVendavalor_pag3Validate(Sender: TField);
    procedure cbDescontoAcrescimoChange(Sender: TObject);
    procedure ReimpressaoCupom;
    procedure ImprimeCupom(relatorio2 : boolean = false;numero_vias :integer=1);
    procedure ImprimePainelSenha;
    procedure insereParcela(id_formapgto : integer;
                            desc_formapgto : string; valor : double;
                            nro_autorizacao : string ='' ;
                            flag_dinheiro : boolean = false;
                            flag_antecipado : boolean = false;
                            flag_fiado : boolean = false);
    procedure btClientesClick(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure Remover1Click(Sender: TObject);
    procedure cdsVendacli_001Change(Sender: TField);
    procedure acAbrirGavetaExecute(Sender: TObject);
    procedure AtualizaNumeroCupom(id_venda : integer);
    procedure cbFormaPgto1Click(Sender: TObject);
    procedure cbFormaPgto2Click(Sender: TObject);
    procedure cbFormaPgto3Click(Sender: TObject);
    procedure cbFormaPgto1Exit(Sender: TObject);
    procedure cbFormaPgto2Exit(Sender: TObject);
    procedure cbFormaPgto3Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chamaTef(cnpjCred, bandeira, campo, numVenda : string; valorInformado : currency);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    b_calcular, permite_desconto, utiliza_painel_senha,
    bTaxaAdicional, utiliza_gaveta, emite_fiscal, modo_devolucao_pdv,
    impressora_modo_pos, b_utiliza_controle_cliente,
    imprime_varias_vias_cupom, imprime_duas_vias_cupom,
    b_permite_troco_todas_formas, nfce_contingencia, sugerir_nfce_contingencia : boolean;

    impressora_caixa, mensagem_txservico : string;
  public
    { Public declarations }
    IndiceTransacaoTef : integer;
    StatusTransacao, TransacaoComTef, bsat : boolean;
  end;

var
  frmPDVFechamento: TfrmPDVFechamento;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uFuncoes, uControleMesa, uGeradorSAT, uChamaFiscal,
  uBuscaRegistro, uVendaFiadoCrediario, uGeradorNFCe, uGeradorECF, uPDV, UTef,
  UImpressaoCupom;

procedure TfrmPDVFechamento.insereParcela(id_formapgto : integer;
                                        desc_formapgto : string; valor : double;
                                        nro_autorizacao : string ='' ;
                                        flag_dinheiro : boolean = false;
                                        flag_antecipado : boolean = false;
                                        flag_fiado : boolean = false);
var inserir : boolean;
begin
  inserir:=true;
  if valor<=0 then
  begin
    Application.MessageBox('Valor inválido!', 'Atenção', MB_ICONINFORMATION + mb_ok);
    exit;
  end;
  //agrupa os valores dinheiro
  if flag_dinheiro then
  begin
    if cdsParcelasPagamentos.Locate('id_formapgto;antecipado ', vararrayof([id_formapgto ,false]), [] ) then
      begin
        inserir:=false;
        cdsParcelasPagamentos.Edit;
        cdsParcelasPagamentos.FieldByName('valor').AsFloat:= valor +
                             cdsParcelasPagamentos.FieldByName('valor').AsFloat;
        cdsParcelasPagamentos.post;
      end;
  end;

  if inserir then
  begin
    cdsParcelasPagamentos.Append;
    cdsParcelasPagamentos.FieldByName('id_formapgto').AsInteger:=id_formapgto;
    cdsParcelasPagamentos.FieldByName('desc_formapag').AsString:=desc_formapgto;
    cdsParcelasPagamentos.FieldByName('valor').AsFloat:=valor;
    cdsParcelasPagamentos.FieldByName('nro_autorizacao').AsString:=nro_autorizacao;
    cdsParcelasPagamentos.FieldByName('dinheiro').AsBoolean:=flag_dinheiro;
    cdsParcelasPagamentos.FieldByName('antecipado').AsBoolean:=flag_antecipado;
    cdsParcelasPagamentos.FieldByName('fiado').AsBoolean:=flag_fiado;
    cdsParcelasPagamentos.post;
  end;
end;



procedure TfrmPDVFechamento.ReimpressaoCupom;
var str_sql : string;
    id_venda : integer;
    qr_aux : TUniquery;
    valor_troco : double;
begin
  id_venda := cdsVenda.FieldByName('id_venda').AsInteger;
  qr_aux := Tuniquery.Create(self);
  qr_aux.Connection := frmmenu.conexao;
  valor_troco := 0;
  // a venda ja foi fechada, apenas reimprime, para isso, reinsere as formas de pagamento
  str_sql := format(' select evi.id_formapgto, f.for_002 as desc_fpag, '+
                    ' (evi.ite_003+ coalesce(evi.troco_dinheiro, 0.0))  as valor, '+
                    ' coalesce(evi.troco_dinheiro, 0.0) as troco_dinheiro  '+
                    ' from encerravendaitem evi  '+
                    ' join encerravenda e on  e.enc_001=evi.enc_001 and e.emp_001=evi.emp_001 '+
                    ' join venda v on v.ven_001=e.ven_001 and e.emp_001=v.emp_001 '+
                    ' join formapgto f on f.for_001=evi.id_formapgto and f.emp_001 = evi.emp_001 '+
                    ' where v.ven_001=%d and v.emp_001=%d', [id_venda,Recproj.iEmp]);
  executaconsultaSQL(qr_aux, str_sql);
  cdsParcelasPagamentos.EmptyDataSet;
  while not qr_aux.eof  do
  begin
    insereParcela(qr_aux.Fields[0].AsInteger, qr_aux.Fields[1].asstring, qr_aux.Fields[2].AsFloat);
    valor_troco := valor_troco +  qr_aux.Fields[3].AsFloat;
    qr_aux.Next;
  end;
  CalculaValorPago;

  //adiciona o valor de desconto e acréscimo que já estão salvos, porém o dataset de venda não o considera
  b_calcular := false;

  { // O valor de desconto e acréscimo não era considerado no fechamento PDV ate então
    // Ja foi alterado na qrVenda para pegar o que está na tabela - Leo 18/10/2017
  str_sql := format(' select v.ven_007 as desconto, v.ven_008 as acrescimo from venda v '+
                  ' where v.ven_001=%d and v.emp_001=%d', [id_venda,Recproj.iEmp]);
  executaconsultaSQL(qr_aux, str_sql);
  cdsVenda.FieldByName('desconto').asfloat := qr_aux.FieldByName('desconto').asfloat;
  cdsVenda.FieldByName('valor_tx').asfloat := qr_aux.FieldByName('acrescimo').asfloat; }

  cdsVenda.FieldByName('valor_troco').AsFloat:=valor_troco;
 if bsat then
 begin
   ckImprimirCupom.Checked := True;

 end
 else
  ImprimeCupom;
end;

procedure TfrmPDVFechamento.Remover1Click(Sender: TObject);
begin
  cdsVenda.FieldByName('cli_001').value := null;
end;

procedure TfrmPDVFechamento.ImprimePainelSenha;
var str_impressao : string;
begin
  if impressora_modo_pos then
  begin
    str_impressao :='</zera>' +  sLineBreak+
                    '</linha_dupla>'+ sLineBreak +
                    '</fn></ce><n>' +  Recproj.sEmpFantasia  +sLineBreak+ sLineBreak+
                    '<e>COMANDA: '+ cdsvenda.FieldByName('nro_venda').AsString +
                    sLineBreak + sLineBreak +
                    '</n></e></ae></linha_dupla>'+ sLineBreak + '</corte_total>';
    if frmMenu.ConfiguraImpressoraPOS('CAIXA') then frmMenu.ACBrPosPrinter1.Imprimir(str_impressao);
  end
  else
  begin
    repPainelSenha.PrintOptions.Printer := impressora_caixa;
    repPainelSenha.PrepareReport;
    repPainelSenha.Print;
  end;
end;



procedure TfrmPDVFechamento.ImprimeCupom(relatorio2 : boolean = false; numero_vias : integer=1);
var id_venda, id_cliente, ultimo_fracionado, num_relatorio , i: integer;
    str_impressao, str_aux, msg_comanda : string;
begin
  id_venda := cdsVenda.FieldByName('id_venda').AsInteger;     //Prepara Query para impressão e outras coisas
  id_cliente := cdsVenda.FieldByName('cli_001').asinteger;

  qrVendaItemRep.Close;
  qrVendaItemFracionadoRep.Close;
  qrVendaItemopcional.Close;
  qrVendaItemFracionadoOpcional.Close;

  qrVendaItemRep.ParamByName('id_venda').AsInteger := id_venda;
  qrVendaItemRep.ParamByName('emp').AsInteger := recproj.iEmp;
  qrVendaItemFracionadoRep.ParamByName('id_venda').AsInteger := id_venda;
  qrVendaItemFracionadoRep.ParamByName('emp').AsInteger := recproj.iEmp;

  qrVendaItemopcional.ParamByName('id_venda').AsInteger := id_venda;
  qrVendaItemopcional.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrVendaItemFracionadoOpcional.ParamByName('id_venda').AsInteger := id_venda;
  qrVendaItemFracionadoOpcional.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrVendaItemOpcional.Open;
  qrVendaItemFracionadoOpcional.Open;

  if bTaxaAdicional then
  begin
    qrVendaItemFracionadoRep.ParamByName('flag_taxa_10').AsInteger :=1;
    qrVendaItemRep.ParamByName('flag_taxa_10').AsInteger :=1;
  end
  else
  begin
    qrVendaItemFracionadoRep.ParamByName('flag_taxa_10').AsInteger :=0;
    qrVendaItemRep.ParamByName('flag_taxa_10').AsInteger :=0;
  end;
  qrVendaItemRep.open;
  qrVendaItemFracionadoRep.open;

  qrCreceberFiado.Close;
  qrCreceberFiado.ParamByName('id_venda').AsInteger := id_venda;
  qrCreceberFiado.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrCreceberFiado.Open;

  qrDadosCliente.Close;
  qrDadosCliente.ParamByName('id_cliente').value := id_cliente;
  qrDadosCliente.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrDadosCliente.Open;

  if (cdsVenda.FieldByName('tipo_venda').AsString = 'B') and utiliza_painel_senha then
    msg_comanda := 'COMANDA: '+cdsVenda.FieldByName('nro_venda').AsString;

  if impressora_modo_pos then
  begin
    if relatorio2 then num_relatorio := 2 else num_relatorio := 1;

    frmmenu.ImprimeCupomPOS(cdsVenda, qrDadosCliente, qrVendaItemRep,
                        qrVendaItemOpcional, qrVendaItemFracionadoRep,
                        qrVendaItemFracionadoOpcional, cdsParcelasPagamentos,
                        qrCreceberFiado, num_relatorio, '', mensagem_txservico,
                        msg_comanda, false, '', 'CAIXA', numero_vias);

  end
  else
  begin
    // relatório 2 é o mesmo relatorio, porem a quantidade vem antes da descrição,
    // apenas o fechamento do balcão touch faz essa chamada (v2.6)
    if relatorio2 then
    begin
      RepFechaConta2.PrintOptions.Printer := impressora_caixa;
      RepFechaConta2.Variables['sNomeOperador'] := QuotedStr(recproj.sUsuario);
      RepFechaConta2.Variables['sMensagemTxServico'] := QuotedStr(mensagem_txservico);

      if (cdsVenda.FieldByName('tipo_venda').AsString = 'B') and utiliza_painel_senha then
        RepFechaConta2.Variables['sNroComanda'] := QuotedStr('COMANDA: '+cdsVenda.FieldByName('nro_venda').AsString)
      else
        RepFechaConta2.Variables['sNroComanda'] := QuotedStr('');

      if (cdsVenda.FieldByName('tipo_venda').AsString = 'D') then
        RepFechaConta2.Variables['sAcrescimo'] := QuotedStr(FormatFloat('###,###,##0.00', cdsVenda.FieldByName('valor_tx').asFloat))
      else
        RepFechaConta2.Variables['sAcrescimo'] := QuotedStr(FormatFloat('###,###,##0.00', cdsVenda.FieldByName('acrescimo').asFloat));

      RepFechaConta2.PrepareReport;
      RepFechaConta2.Print;
    end
    else
    begin
      RepFechaConta.PrintOptions.Printer := impressora_caixa;
      RepFechaConta.Variables['sNomeOperador'] := QuotedStr(recproj.sUsuario);
      RepFechaConta.Variables['sMensagemTxServico'] := QuotedStr(mensagem_txservico);
      RepFechaConta.Variables['sNroComanda'] := QuotedStr(msg_comanda);

      if (cdsVenda.FieldByName('tipo_venda').AsString = 'D') then
        RepFechaConta.Variables['sAcrescimo'] := QuotedStr(FormatFloat('###,###,##0.00', cdsVenda.FieldByName('valor_tx').asFloat))
      else
        RepFechaConta.Variables['sAcrescimo'] := QuotedStr(FormatFloat('###,###,##0.00', cdsVenda.FieldByName('acrescimo').asFloat));

      RepFechaConta.LoadFromFile('C:\EliteFood\Relatorios\FECHAMENTO_PDV.fr3');
      RepFechaConta.PrepareReport;
      for i := 1 to numero_vias do RepFechaConta.Print;
    end;
  end;
end;

procedure TfrmPDVFechamento.btCancelaClick(Sender: TObject);
begin
  tag:=0;
  close;
end;

procedure TfrmPDVFechamento.btClientesClick(Sender: TObject);
var str_sql : string; lPoint : tpoint;
begin
  if cdsVenda.FieldByName('cli_001').isnull or (cdsVenda.FieldByName('cli_001').asinteger=0) then
    Alterar1Click(nil)
  else
  begin
    lPoint := btClientes.ClientToScreen(Point(0,0));
    pmCliente.Popup(lPoint.X, lPoint.Y-btClientes.Height - 5 );
  end;
end;

procedure TfrmPDVFechamento.AtualizaNumeroCupom(id_venda : integer);
var nro_cupom : integer;
begin
    nro_cupom := novoid('venda', 'numero_cupom', recproj.iEmp, 'emp_001');
    ExecutaComandoSQL('update venda set numero_cupom=:cupom where ven_001=:id_venda and emp_001=:id_empresa',
                      VarArrayOf([nro_cupom,id_venda, recproj.iEmp ]));
    if cdsVenda.State<>dsEdit then cdsVenda.Edit;
    cdsVenda.FieldByName('numero_cupom').asinteger := nro_cupom;
end;

procedure TfrmPDVFechamento.btConfirmaClick(Sender: TObject);
var flag_dinheiro, finaliza_venda, venda_sat, venda_ecf, f_fpag1, f_fpag2, f_fpag3,
    f_dinheiro_pag1, f_dinheiro_pag2, f_dinheiro_pag3, f_fpag_duplicada,
    flag_fiado, flag_fiado2, venda_nfce, erro_nfce, bDevolucao  : boolean;
    valor_dinheiro, troco, troco_insert , valor, valor_venda, valor_acrescimos,
    valor_descontos, valor_pago, saldo_fiado, limite_fiado, valor_fiado : double;
    str_sql , obs, cpf_consum, str_aux: string;
    id_caixa, id_venda, id_formapgto, id_encerravenda, item, nro_cupom , i,
    cod_conta_fiado, nro_venda, id_forma_fiado_devolucao, numero_vias: integer;
    FGerarCFe : GerarCFe;
    FGerarNFCe : GerarNFCe;
    FGerarECF : GerarECF;
    qrAux1 : Tuniquery;
    id_cliente : variant;
    recebe:integer;
    utilizacontrolesituacao, indice_forma_troco  : integer;

    procedure AbortaFechamento;
    begin
      btConfirma.Enabled:=true;
      abort;
    end;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  flag_fiado:= false;
  bDevolucao:= false;

  btConfirma.Enabled:=false;
  qrAux1 := Tuniquery.Create(self);
  qrAux1.Connection := frmmenu.conexao;
  id_cliente := cdsVenda.FieldByName('cli_001').asinteger;
  id_venda := cdsVenda.FieldByName('id_venda').AsInteger;
  nro_venda:= cdsVenda.FieldByName('nro_venda').AsInteger;

  CalculaValorPago;
  //verifica se o valor esta pago corretamente
  valor := cdsVenda.FieldByName('valor_total_venda').AsFloat;
  valor_pago := cdsVenda.FieldByName('total_pago').AsFloat;

  if (not permite_desconto) and (cdsVenda.FieldByName('desconto').AsFloat>0) then
  begin
    Application.messagebox('Não é permitido desconto na venda!', 'Atenção', MB_ICONINFORMATION + mb_ok);
    AbortaFechamento;
  end;

  //Bruno 19-06-2018
  if (cdsVenda.FieldByName('cod_pag1').AsInteger=0) and
     (cdsVenda.FieldByName('cod_pag2').AsInteger=0) and
     (cdsVenda.FieldByName('cod_pag3').AsInteger=0) then
  begin
    Application.messagebox('Selecione a forma de pagamento!', 'Atenção', MB_ICONINFORMATION + mb_ok);
    cbFormaPgto1.SetFocus;
    AbortaFechamento;
  end;

  //define quantas formas de pagamento foram informadas
  f_fpag1 := cdsVenda.FieldByName('valor_pag1').AsFloat>0 ;
  f_fpag2 := cdsVenda.FieldByName('valor_pag2').AsFloat>0 ;
  f_fpag3 := cdsVenda.FieldByName('valor_pag3').AsFloat>0 ;

  if f_fpag1 then
  begin
    if (cdsVenda.FieldByName('cod_pag1').AsInteger=0) or cdsVenda.FieldByName('cod_pag1').IsNull then
    begin
      application.MessageBox('Forma de pagamento não informada!', 'Atenção', mb_iconinformation);
      if cbFormaPgto1.CanFocus then cbFormaPgto1.SetFocus;
      AbortaFechamento;
    end;
  end;
  if f_fpag2 then
  begin
    if (cdsVenda.FieldByName('cod_pag2').AsInteger=0) or  cdsVenda.FieldByName('cod_pag2').IsNull then
    begin
      application.MessageBox('Forma de pagamento não informada!', 'Atenção', mb_iconinformation);
      if cbFormaPgto2.CanFocus then cbFormaPgto2.SetFocus;
      AbortaFechamento;
    end;
  end;
  if f_fpag3 then
  begin
    if (cdsVenda.FieldByName('cod_pag3').AsInteger=0) or  cdsVenda.FieldByName('cod_pag3').IsNull then
    begin
      application.MessageBox('Forma de pagamento não informada!', 'Atenção', mb_iconinformation);
      if cbFormaPgto3.CanFocus then cbFormaPgto3.SetFocus;
      AbortaFechamento;
    end;
  end;

  if f_fpag1 then
  begin
    if (qrListaFormapgto1tipo_integracao.AsInteger = 1) and ((qrListaFormapgto1sfi_codigo.AsInteger = 3) or (qrListaFormapgto1sfi_codigo.AsInteger = 4)) then
    begin
      if qrListaFormapgto1cnpjcred.AsString = '' then
      begin
        Application.MessageBox('CNPJ Credenciadora Cartão não cadastrado.' + #13 +
                               'Verifique o cadastro da forma de pagamento!', 'Atenção', mb_iconinformation);
        AbortaFechamento;
      end;

      if qrListaFormapgto1b_tef.AsBoolean = False then
      begin
        if edtAut1.Text = EmptyStr then
        begin
          Application.MessageBox('Informe a Autorização de Operação!', 'Atenção', mb_iconinformation);
          edtAut1.SetFocus;
          AbortaFechamento;
        end;
      end;
    end;
  end;

  if f_fpag2 then
  begin
    if (qrListaFormapgto2tipo_integracao.AsInteger = 1) and ((qrListaFormapgto2sfi_codigo.AsInteger = 3) or (qrListaFormapgto2sfi_codigo.AsInteger = 4)) then
    begin
      if qrListaFormapgto2cnpjcred.AsString = '' then
      begin
        Application.MessageBox('CNPJ Credenciadora Cartão não cadastrado.' + #13 +
                               'Verifique o cadastro da forma de pagamento!', 'Atenção', mb_iconinformation);
        AbortaFechamento;
      end;

      if qrListaFormapgto2b_tef.AsBoolean = False then
      begin
        if edtAut2.Text = EmptyStr then
        begin
          Application.MessageBox('Informe a Autorização de Operação!', 'Atenção', mb_iconinformation);
          edtAut2.SetFocus;
          AbortaFechamento;
        end;
      end;
    end;
  end;

  if f_fpag3 then
  begin
    if (qrListaFormapgto3tipo_integracao.AsInteger = 1) and ((qrListaFormapgto3sfi_codigo.AsInteger = 3) or (qrListaFormapgto3sfi_codigo.AsInteger = 4)) then
    begin
      if qrListaFormapgto3cnpjcred.AsString = '' then
      begin
        Application.MessageBox('CNPJ Credenciadora Cartão não cadastrado.' + #13 +
                               'Verifique o cadastro da forma de pagamento!', 'Atenção', mb_iconinformation);
        AbortaFechamento;
      end;

      if qrListaFormapgto3b_tef.AsBoolean = False then
      begin
        if edtAut3.Text = EmptyStr then
        begin
          Application.MessageBox('Informe a Autorização de Operação!', 'Atenção', mb_iconinformation);
          edtAut3.SetFocus;
          AbortaFechamento;
        end;
      end;
    end;
  end;

  f_fpag_duplicada := false;
  //Verifica se foram informadas formas de pagamento repetidas
  if (cdsvenda.FieldByName('cod_pag1').asinteger = cdsvenda.FieldByName('cod_pag2').asinteger) then
  begin
    if (cdsvenda.FieldByName('cod_pag2').asinteger > 0) then
    begin
      f_fpag_duplicada:=true;
      if cbFormaPgto2.canfocus then cbFormaPgto2.setfocus;
    end
  end;
  if (cdsvenda.FieldByName('cod_pag1').asinteger = cdsvenda.FieldByName('cod_pag3').asinteger) then
  begin
    if (cdsvenda.FieldByName('cod_pag3').asinteger > 0) then
    begin
      f_fpag_duplicada:=true;
      if cbFormaPgto3.canfocus then cbFormaPgto3.setfocus;
    end;
  end;
  if (cdsvenda.FieldByName('cod_pag2').asinteger = cdsvenda.FieldByName('cod_pag3').asinteger) and //sao iguais
     (not ((cdsvenda.FieldByName('cod_pag2').asinteger =0) and (cdsvenda.FieldByName('cod_pag2').asinteger =0))) then // e diferente de 0
  begin
    if (cdsvenda.FieldByName('cod_pag3').asinteger > 0) then
    begin
      f_fpag_duplicada:=true;
      if cbFormaPgto3.canfocus then cbFormaPgto3.setfocus;
    end;
  end;
  if f_fpag_duplicada then
  begin
    application.MessageBox('Forma de pagamento informada mais de uma vez!', 'Atenção', mb_iconinformation);
    AbortaFechamento;
  end;

  // a comparação de duas variáveis do tipo float ( valor_pago < valor ) as vezes falha
  // para valores iguais. Usando a comparação para a diferença entre os dois valores
  if (RoundTo((valor_pago - valor), -2)  < -0.001  ) then
  begin
    Application.messagebox('O valor recebido é inferior ao valor da venda!', 'Atenção', MB_ICONINFORMATION + mb_ok);
    AbortaFechamento;
  end;

  //verifica se há troco e se foi informado dinheiro
  indice_forma_troco := 0;
  troco := cdsVenda.FieldByName('valor_troco').AsFloat;
  if troco>0 then
  begin
    str_sql := format( 'select sfi_codigo=1 from formapgto where for_001=%d and emp_001=%d',
              [cdsVenda.FieldByName('cod_pag1').asinteger, recproj.iEmp] );
    BuscaCampo(f_dinheiro_pag1, str_sql, '', false );
    str_sql := format( 'select sfi_codigo=1 from formapgto where for_001=%d and emp_001=%d',
              [cdsVenda.FieldByName('cod_pag2').asinteger, recproj.iEmp] );
    BuscaCampo(f_dinheiro_pag2, str_sql, '', false );
    str_sql := format( 'select sfi_codigo=1 from formapgto where for_001=%d and emp_001=%d',
              [cdsVenda.FieldByName('cod_pag3').asinteger, recproj.iEmp] );
    BuscaCampo(f_dinheiro_pag3, str_sql, '', false );

    flag_dinheiro :=  f_dinheiro_pag1 or f_dinheiro_pag2 or f_dinheiro_pag3;

    if f_dinheiro_pag1 then
    begin
      valor_dinheiro := cdsvenda.fieldbyname('valor_pag1').AsFloat;
      indice_forma_troco := 1;
    end;
    if f_dinheiro_pag2 then
    begin
      valor_dinheiro := cdsvenda.fieldbyname('valor_pag2').AsFloat;
      indice_forma_troco := 2;
    end;

    if f_dinheiro_pag3 then
    begin
      valor_dinheiro := cdsvenda.fieldbyname('valor_pag3').AsFloat;
      indice_forma_troco := 3;
    end;

    //faz o controle de troco
    if (not flag_dinheiro) and (not b_permite_troco_todas_formas) then
    begin
      Application.messagebox('O valor recebido é superior ao valor da venda!', 'Atenção', MB_ICONINFORMATION + mb_ok);
      AbortaFechamento;
    end
    else if flag_dinheiro  then
    begin
      if valor_dinheiro<troco then
      begin
        indice_forma_troco := 0;
        if not b_permite_troco_todas_formas  then
        begin
          Application.messagebox('Não é possível devolver troco pois o valor recebido em dinheiro é insuficiente!', 'Atenção', MB_ICONINFORMATION + mb_ok);
          AbortaFechamento;
        end;
      end
    end;

    //seleciona qual forma de pagamento recebera o troco caso nao foi possível no dinheiro...
    if indice_forma_troco=0 then
    begin
      if cdsvenda.fieldbyname('valor_pag1').AsFloat > troco then
      begin
        indice_forma_troco :=1
      end
      else if cdsvenda.fieldbyname('valor_pag2').AsFloat > troco then
      begin
        indice_forma_troco :=2
      end
      else if cdsvenda.fieldbyname('valor_pag3').AsFloat > troco then
      begin
        indice_forma_troco :=3
      end
      else
      begin
        Application.messagebox('Não é possível devolver troco em nenhuma forma de pagamento informada!', 'Atenção', MB_ICONINFORMATION + mb_ok);
        AbortaFechamento;
      end;
    end;
  end;

  if modo_devolucao_pdv then
  begin
    //Variavel para controalr se houve devolução - Bruno 28-02-2018
    bDevolucao:= true;
    id_forma_fiado_devolucao :=0;
    valor_fiado := cdsVenda.FieldByName('valor_pag1').AsFloat;
    if not
      BuscaCampo(cod_conta_fiado,format('select id_conta from formapgto where b_fiado and emp_001=%d and sit_001=4',
        [recproj.iEmp]), '', false) then
    begin
      application.MessageBox('Não foi encontrada uma forma de pagamento do tipo Fiado/Crediário!', 'Atenção', mb_iconinformation);
      AbortaFechamento;
    end;

    BuscaCampo(id_forma_fiado_devolucao,format('select for_001 from formapgto where b_fiado and emp_001=%d and sit_001=4',[recproj.iEmp]), '', false);

    // verifica se as outras formas de pagamentos selecionaram tambem o tipo fiado para compor o valor final do fiado
    if f_fpag2  then
    begin
      str_sql := format( 'select b_fiado from formapgto where for_001=%d and emp_001=%d',
            [cdsVenda.FieldByName('cod_pag2').asinteger, recproj.iEmp] );
      BuscaCampo(flag_fiado2, str_sql, '', false );
      if flag_fiado2 then
      begin
        valor_fiado := valor_fiado + cdsVenda.FieldByName('valor_pag2').AsFloat;
      end;
    end;
    if f_fpag3 then
    begin
      str_sql := format( 'select b_fiado from formapgto where for_001=%d and emp_001=%d',
            [cdsVenda.FieldByName('cod_pag3').asinteger, recproj.iEmp] );
      BuscaCampo(flag_fiado2, str_sql, '', false );
      if flag_fiado2 then
      begin
        valor_fiado := valor_fiado + cdsVenda.FieldByName('valor_pag3').AsFloat;
      end;
    end;
  end
  else
  begin
    if f_fpag1 then
    begin
      str_sql := format( 'select b_fiado from formapgto where for_001=%d and emp_001=%d',
            [cdsVenda.FieldByName('cod_pag1').asinteger, recproj.iEmp] );
      BuscaCampo(flag_fiado, str_sql, '', false );
      if flag_fiado then
      begin
        valor_fiado := cdsVenda.FieldByName('valor_pag1').AsFloat;
        BuscaCampo(cod_conta_fiado,format('select id_conta from formapgto where for_001 =%d and emp_001=%d',
                 [cdsVenda.FieldByName('cod_pag1').asinteger, recproj.iEmp]), '', false);
      end;

    end;
    if f_fpag2 and (not flag_fiado) then
    begin
      str_sql := format( 'select b_fiado from formapgto where for_001=%d and emp_001=%d',
            [cdsVenda.FieldByName('cod_pag2').asinteger, recproj.iEmp] );
      BuscaCampo(flag_fiado, str_sql, '', false );
      if flag_fiado then
      begin
        valor_fiado := cdsVenda.FieldByName('valor_pag2').AsFloat;
        BuscaCampo(cod_conta_fiado,format('select id_conta from formapgto where for_001 =%d and emp_001=%d',
                 [cdsVenda.FieldByName('cod_pag2').asinteger, recproj.iEmp]), '', false);
      end;
    end;
    if f_fpag3 and (not flag_fiado ) then
    begin
      str_sql := format( 'select b_fiado from formapgto where for_001=%d and emp_001=%d',
            [cdsVenda.FieldByName('cod_pag3').asinteger, recproj.iEmp] );
      BuscaCampo(flag_fiado, str_sql, '', false );
      if flag_fiado then
      begin
        valor_fiado := cdsVenda.FieldByName('valor_pag3').AsFloat;
        BuscaCampo(cod_conta_fiado,format('select id_conta from formapgto where for_001 =%d and emp_001=%d',
                 [cdsVenda.FieldByName('cod_pag3').asinteger, recproj.iEmp]), '', false);
      end;
    end;
  end;

  //Se tiver outra flag fiado, joga na principal
  if flag_fiado2 then
    flag_fiado:= True;

  //Verifica se foi informado o cliente
  if flag_fiado then
  begin
    if id_cliente=0 then
    begin
      Alterar1Click(nil);
    end;
        id_cliente := cdsVenda.FieldByName('cli_001').asinteger;
    //verifica novamente se o cliente foi selecionado....
    if id_cliente=0 then AbortaFechamento;


     //Inicio verificação da situação do cliente                Programador Rafael 26/04/2017
     str_sql:= 'select id_situacao_spc from clientes where    cli_001=' + IntToStr(id_cliente)+
     ' and emp_001 ='+IntToStr(RecProj.iEmp);
     ExecutaConsultaSQL(qraux1,str_sql);
     utilizacontrolesituacao:=qraux1.FieldByName('id_situacao_spc').AsInteger;

       { SITUAÇÃO DO CLIENTE
       1 - APROVADO
       2 - EM OBSERVAÇÃO
       3 - INATIVO
       4 - SPC
       5 - BLOQUEADO    }

     if utilizacontrolesituacao=2 then
     begin
        Application.MessageBox('Não foi possível fazer a venda! Cadastro em observação!','Atenção',MB_ICONINFORMATION + mb_ok);
        edValorPagamento1.SetFocus;
        abortafechamento;
     end
     else if utilizacontrolesituacao=3 then
     begin
         Application.MessageBox('Não foi possível fazer a venda! Cadastro está inativo!','Atenção', MB_ICONINFORMATION +mb_ok);
         edvalorpagamento1.SetFocus;
         abortafechamento;
     end

     else if utilizacontrolesituacao=4 then
     begin
        Application.MessageBox('Não foi possível fazer a venda! Cadastro está no SPC!','Atenção',MB_ICONINFORMATION + mb_ok);
        edvalorpagamento1.SetFocus;
        AbortaFechamento ;
     end

    else if utilizacontrolesituacao=5 then
     begin
       Application.MessageBox('Não foi possível fazer a venda! Cadastro está no Bloqueado!','Atenção',MB_ICONINFORMATION + mb_ok);
        edvalorpagamento1.SetFocus;
        AbortaFechamento ;
     end;

     // Termino 27/04/2017  Programador Rafael
     // buscar configuração controle de cliente se tem parcelas em atraso     inicio Rafael 20/04/2017
     if b_utiliza_controle_cliente then
     begin
       str_sql:=' select 1 from creceber where  id_situacao =4 and data_vencimento <localtimestamp '+
               ' and id_cliente ='+  IntToStr(id_cliente) + ' and id_empresa='+IntToStr(RecProj.iEmp);
       ExecutaConsultaSQL(qraux1, str_sql);
       if qraux1.RecordCount>0 then
       begin
         if  Application.MessageBox('O cliente possui contas em atraso. Deseja fazer a venda mesmo com as parcelas em atraso?   ','Atenção',MB_ICONQUESTION+MB_YESNO)=mrYes then
         begin
           if not  frmMenu.ConfirmacaoSenha('b_libera_venda_conta_atraso', recebe) then
           begin
             AbortaFechamento;
           end;
         end
         else
          AbortaFechamento;
       end;
     end;
     //termino 20/04/2017 Rafael

    //verifica se há saldo pro cliente informado
    if not VerificaSaldoFiado(saldo_fiado, limite_fiado, id_cliente, recproj.iEmp, valor_fiado) then
    begin
      str_aux :=Format( 'O cliente %s não possui saldo suficente!' +#13#10+
                 'Saldo: %m' +#13#10+  'Limite: %m', [cdsVenda.FieldByName('nome_cliente').asstring ,saldo_fiado, limite_fiado ]) ;
      Application.messagebox(pchar(str_aux), 'Atenção', MB_ICONINFORMATION + mb_ok);
      AbortaFechamento;
    end;

    //chama o form de controle de fiado
    frmVendaFiadoCrediario := TfrmVendaFiadoCrediario.Create(self, id_venda, id_cliente , valor_fiado);
    frmVendaFiadoCrediario.ShowModal;
    if frmVendaFiadoCrediario.Tag <> 1 then AbortaFechamento;
    id_cliente := frmVendaFiadoCrediario.id_cliente;
  end;

  //TEF - Bruno 02/08/2018
  if f_fpag1 then
  begin
    if qrListaFormapgto1b_tef.AsBoolean then
    begin
      try
      chamaTef(qrListaFormapgto1.FieldByName('cnpjCred').AsString,
               qrListaFormapgto1.FieldByName('bandeira_cartao').AsString,
               '1',
               cdsvenda.fieldByName('nro_venda').asstring,
               edValorPagamento1.Value);
      except
        AbortaFechamento;
      end;
    end;
  end;

  if f_fpag2 then
  begin
    if qrListaFormapgto2b_tef.AsBoolean then
    begin
      try
      chamaTef(qrListaFormapgto2.FieldByName('cnpjCred').AsString,
               qrListaFormapgto2.FieldByName('bandeira_cartao').AsString,
               '2',
               cdsvenda.fieldByName('nro_venda').asstring,
               edValorPagamento2.Value);
      except
        AbortaFechamento;
      end;
    end;
  end;

  if f_fpag3 then
  begin
    if qrListaFormapgto3b_tef.AsBoolean then
    begin
      try
      chamaTef(qrListaFormapgto3.FieldByName('cnpjCred').AsString,
               qrListaFormapgto3.FieldByName('bandeira_cartao').AsString,
               '3',
               cdsvenda.fieldByName('nro_venda').asstring,
               edValorPagamento3.Value);
      except
        AbortaFechamento;
      end;
    end;
  end;

  //Tudo OK, concretiza a venda
  if emite_fiscal then
  begin
    //Verifica se abre a tela Menu Fiscal - Bruno (27/04/2018)
    if not LerBooleanConfig('ckOcultar_menu_fiscal',frmMenu.cdsCFG.FileName)then
    begin
      frmChamaFiscal := TfrmChamaFiscal.Create(self);
      frmChamaFiscal.ShowModal;
      finaliza_venda := frmChamaFiscal.Tag=1;
      venda_sat  := frmChamaFiscal.forma_selecionada = 'SAT';
      venda_nfce := frmChamaFiscal.forma_selecionada = 'NFCE';
      venda_ecf  := frmChamaFiscal.forma_selecionada = 'ECF';
      FreeAndNil(frmChamaFiscal);
    end
    else
    begin
      if bsat then
      begin
        f_fpag1:= True;
        ckImprimirCupom.Checked := True;
      end;


      //Verifica a primeira forma - Bruno (27/04/2018)
      if f_fpag1 then
      begin
        qrAuxiliar.Close;
        qrAuxiliar.SQL.Text:= 'select emite_fiscal, tipo_fiscal from formapgto where for_001 = :forma';
        qrAuxiliar.ParamByName('forma').AsInteger:= cdsVenda.FieldByName('cod_pag1').AsInteger;
        qrAuxiliar.Open;
      end;

      //Verifica a segunda forma caso a primeira não tenha opção fiscal - Bruno (27/04/2018)
      if f_fpag2 then
      begin
        if (qrAuxiliar.FieldByName('emite_fiscal').AsBoolean = False) or (qrAuxiliar.FieldByName('tipo_fiscal').AsInteger = 0) then
        begin
          qrAuxiliar.Close;
          qrAuxiliar.SQL.Text:= 'select emite_fiscal, tipo_fiscal from formapgto where for_001 = :forma';
          qrAuxiliar.ParamByName('forma').AsInteger:= cdsVenda.FieldByName('cod_pag2').AsInteger;
          qrAuxiliar.Open;
        end;
      end;

      //Verifica a terceira forma caso as duas primeiras não tenham opção fiscal - Bruno (27/04/2018)
      if f_fpag3 then
      begin
        if (qrAuxiliar.FieldByName('emite_fiscal').AsBoolean = False) or (qrAuxiliar.FieldByName('tipo_fiscal').AsInteger = 0) then
        begin
          qrAuxiliar.Close;
          qrAuxiliar.SQL.Text:= 'select emite_fiscal, tipo_fiscal from formapgto where for_001 = :forma';
          qrAuxiliar.ParamByName('forma').AsInteger:= cdsVenda.FieldByName('cod_pag3').AsInteger;
          qrAuxiliar.Open;
        end;
      end;

      finaliza_venda := true;
      venda_sat      := (qrAuxiliar.FieldByName('emite_fiscal').AsBoolean) and (qrAuxiliar.FieldByName('tipo_fiscal').AsInteger = 1);
      venda_ecf      := (qrAuxiliar.FieldByName('emite_fiscal').AsBoolean) and (qrAuxiliar.FieldByName('tipo_fiscal').AsInteger = 2);
      venda_nfce     := (qrAuxiliar.FieldByName('emite_fiscal').AsBoolean) and (qrAuxiliar.FieldByName('tipo_fiscal').AsInteger = 3) and LerBooleanConfig('CKATIVARNFCE', frmMenu.cdsCFG.FileName);
      if bsat then
      begin
        venda_sat  := True;
      end;
    end
  end
  else
  begin
    finaliza_venda := true;
    venda_sat      := false;
    venda_ecf      := false;
    venda_nfce     := false;
  end;

  // pega o número de vias a imprimir...
  numero_vias := 1;
  if ckImprimirCupom.Checked then
  begin
    if imprime_duas_vias_cupom then
      numero_vias := 2
    else if imprime_varias_vias_cupom then
    begin
      numero_vias :=0;
      while not ((numero_vias >0) and (numero_vias <=3)) do
      begin
        str_aux := '2';
        if InputQuery('Informe o número de vias a imprimir', 'Número de vias:', str_aux) then
        begin
          try
            numero_vias := strtoint(trim(str_aux));
          except
            numero_vias := 0;
          end;
        end
        else
          numero_vias :=1;
        if (numero_vias <= 0) or (numero_vias>3)  then
          application.MessageBox('Valor inválido! A quantidade de impressão deve ser de 1 até 3 vias!', 'Atenção', MB_ICONINFORMATION);
      end;
    end;
  end;

  if finaliza_venda then
  begin
    id_caixa := cdsVenda.FieldByName('id_caixa').AsInteger;
    valor_venda := cdsVenda.FieldByName('valor_total_venda').AsFloat;
    valor_acrescimos := cdsVenda.FieldByName('acrescimo').AsFloat +
                        cdsVenda.FieldByName('total_couvert').AsFloat;
    valor_descontos := cdsVenda.FieldByName('desconto').AsFloat;
    cpf_consum := cdsVenda.FieldByName('cpf_cliente').asstring;
    //nro_cupom := novoid('venda', 'numero_cupom', recproj.iEmp, 'emp_001');
    AtualizaNumeroCupom(id_venda);
    valor := cdsVenda.FieldByName('valor_total_venda').AsFloat;
    if id_cliente <1 then id_cliente := null;

    ExecutaComandoSQL('update venda set cpf_cliente=:cpf, cli_001 = :idcliente where ven_001=:id_venda and emp_001=:id_empresa',
                      VarArrayOf([cpf_consum, id_cliente ,id_venda, recproj.iEmp ]));

    //Seleciona qual forma de pagamento vai para o encerramento de venda
    if cdsVenda.FieldByName('valor_pag1').AsFloat<=0 then
    begin
      if cdsVenda.FieldByName('valor_pag2').AsFloat<=0 then
        id_formapgto := cdsVenda.FieldByName('cod_pag3').asinteger
      else
        id_formapgto := cdsVenda.FieldByName('cod_pag2').asinteger
    end
    else
      id_formapgto := cdsVenda.FieldByName('cod_pag1').asinteger;

    //insere os dados de encerramento da venda
    //campos: id_encerramento, id_empresa, id_venda, id_cliente
    //        data encerramento, valor, forma de pgto, situacao
    str_sql := ' insert into encerravenda (enc_001, emp_001, ven_001 , cli_001, '+
               ' enc_002, enc_003, for_001, sit_001, enc_006, enc_007, VEN_CPFCONSUM ) '+
               ' values ((select coalesce(max(enc_001),0)+1 from encerravenda where emp_001=:emp), '+
               ' :emp , :id_venda, :id_cliente , localtimestamp,  :valor , '+
               ' :id_forma, 1, :acrescimos, :descontos, :cpf )';
    ExecutaComandoSQL(str_sql, CriaVariantArray([RecProj.iEmp,id_venda, 0, valor,
                      id_formapgto, valor_acrescimos, valor_descontos, cpf_consum]));
    ExecutaConsultaSQL(qrAux1, 'select max(enc_001) from encerravenda where emp_001='+IntToStr(RecProj.iEmp));
    id_encerravenda:= qrAux1.Fields[0].AsInteger;

    item := 1;
    //Insere o item 1 se foi informado
    if f_fpag1 then
    begin
      valor:= cdsVenda.FieldByName('valor_pag1').AsFloat;
      //se houver troco, corrige o valor em dinheiro
      if (troco>0) and (indice_forma_troco=1) then
      begin
        valor:=valor-troco;
        troco_insert :=  troco;
      end
      else
        troco_insert := 0;

      obs:='';
      if not modo_devolucao_pdv then
        id_formapgto := cdsVenda.FieldByName('cod_pag1').asinteger
      else
        id_formapgto := id_forma_fiado_devolucao;

      //insere os dados de item encerramento de venda
      //campos: id_empresa, id_encerramento, id item encerramento, data lançamento,
      //        nro item encerramento, valor, acrescimo, id formapgto
      str_sql := ' insert into encerravendaitem (emp_001, enc_001, ite_001, ite_002, '+
                 ' ite_004, ite_003, ite_005, id_formapgto, troco_dinheiro, autorizacao) ' +
                 ' values (:emp, :id_encerravenda, '+
                 ' :item, localtimestamp, :item,  :valor, 0, :id_forma, :troco_dinheiro, :autorizacao );';
      ExecutaComandoSQL(str_sql, CriaVariantArray([RecProj.iEmp, id_encerravenda, item, valor, id_formapgto, troco_insert, edtAut1.Text]));
      InserirCaixaItem(id_caixa, id_formapgto, valor, 'E', obs, id_venda, id_encerravenda, item);

      //alimenta o dataset para poder exibir no relatorio
      insereParcela(id_formapgto, cbFormaPgto1.Text, cdsVenda.FieldByName('valor_pag1').AsFloat);

      item := item + 1;
    end;

    //Insere o item 2 se foi informado
    if f_fpag2 then
    begin
      valor:= cdsVenda.FieldByName('valor_pag2').AsFloat;
      //se houver troco, corrige o valor em dinheiro
      if (troco>0) and (indice_forma_troco=2) then
      begin
        valor:=valor-troco;
        troco_insert :=  troco;
      end
      else
        troco_insert := 0;

      obs:='';
      id_formapgto := cdsVenda.FieldByName('cod_pag2').asinteger;

      //insere os dados de item encerramento de venda
      //campos: id_empresa, id_encerramento, id item encerramento, data lançamento,
      //        nro item encerramento, valor, acrescimo, id formapgto
      str_sql := ' insert into encerravendaitem (emp_001, enc_001, ite_001, ite_002, '+
                 ' ite_004, ite_003, ite_005, id_formapgto, troco_dinheiro, autorizacao) ' +
                 ' values (:emp, :id_encerravenda, '+
                 ' :item, localtimestamp, :item,  :valor, 0, :id_forma, :troco_dinheiro, :autorizacao );';
      ExecutaComandoSQL(str_sql, CriaVariantArray([RecProj.iEmp, id_encerravenda, item, valor, id_formapgto, troco_insert, edtAut2.Text]));
      InserirCaixaItem(id_caixa, id_formapgto, valor, 'E', obs, id_venda, id_encerravenda, item);

      insereParcela(id_formapgto, cbFormaPgto2.Text, cdsVenda.FieldByName('valor_pag2').AsFloat);

      item := item + 1;
    end;

    //Insere o item 3 se foi informado
    if f_fpag3 then
    begin
      valor:= cdsVenda.FieldByName('valor_pag3').AsFloat;
      //se houver troco, corrige o valor em dinheiro
      if (troco>0) and (indice_forma_troco=3) then
      begin
        valor:=valor-troco;
        troco_insert :=  troco;
      end
      else
        troco_insert := 0;

      obs:='';
      id_formapgto := cdsVenda.FieldByName('cod_pag3').asinteger;

      //insere os dados de item encerramento de venda
      //campos: id_empresa, id_encerramento, id item encerramento, data lançamento,
      //        nro item encerramento, valor, acrescimo, id formapgto
      str_sql := ' insert into encerravendaitem (emp_001, enc_001, ite_001, ite_002, '+
                 ' ite_004, ite_003, ite_005, id_formapgto, troco_dinheiro, autorizacao) ' +
                 ' values (:emp, :id_encerravenda, '+
                 ' :item, localtimestamp, :item,  :valor, 0, :id_forma, :troco_dinheiro, :autorizacao );';
      ExecutaComandoSQL(str_sql, CriaVariantArray([RecProj.iEmp, id_encerravenda, item, valor, id_formapgto, troco_insert, edtAut3.Text]));
      InserirCaixaItem(id_caixa, id_formapgto, valor, 'E', obs, id_venda, id_encerravenda, item);

      insereParcela(id_formapgto, cbFormaPgto3.Text, cdsVenda.FieldByName('valor_pag3').AsFloat);

      item := item + 1;
    end;

    //Faz o lançamento do fiado
    if flag_fiado then
    begin
      frmVendaFiadoCrediario.cdsParcelasFiado.First;
      while not frmVendaFiadoCrediario.cdsParcelasFiado.eof do
      begin
        if not frmVendaFiadoCrediario.cdsParcelasFiado.FieldByName('parcela_saldo_cliente').AsBoolean then
        begin
          str_sql :=' insert into creceber (id_empresa, data, id_cliente, id_conta, id_usuario, id_venda, '+
                    ' nota, descricao, valor_nota, valor, valor_pago, data_vencimento, id_situacao, documento) '+
                    ' values (:emp, localtimestamp, :id_cliente,:id_cont, :id_user, :id_venda , :nota, :desc, '+
                    ' :valor_nota, :valor, 0, :datavenc, 4, :documento)';
          ExecutaComandoSQL(str_sql, vararrayof([recproj.iemp,id_cliente,cod_conta_fiado, recproj.iUsuario, id_venda,
                                                id_venda, format('Venda %d', [ nro_venda]), valor_fiado,
                                                frmVendaFiadoCrediario.cdsParcelasFiado.fieldbyname('valor').AsFloat,
                                                frmVendaFiadoCrediario.cdsParcelasFiado.fieldbyname('vencimento').AsDateTime,
                                                frmVendaFiadoCrediario.cdsParcelasFiado.fieldbyname('documento').AsString]));
        end;
        frmVendaFiadoCrediario.cdsParcelasFiado.next;
      end;
      InserirMovimentoContaCliente(recproj.iemp, id_cliente, recproj.iUsuario,
         valor_fiado, 'S', '', Date + Time, id_venda, false, cod_conta_fiado);
      FreeAndNil(frmVendaFiadoCrediario);

    end
    else
    begin
      if (bDevolucao) and (valor_fiado > 0) then  //Se for Devolução e fiado - Bruno 26-02-2018
      begin
        InserirMovimentoContaCliente(recproj.iemp, id_cliente, recproj.iUsuario,
         valor_fiado, 'S', '', Date + Time, id_venda, false, cod_conta_fiado);
      end;
    end;

    // envia venda ao SAT
    if venda_sat then
    begin
      try
        FGerarCFe := GerarCFe.Create;
        finaliza_venda := FGerarCFe.Autorizar(cdsVendaid_venda.AsInteger, RecProj.iEmp);
        if not finaliza_venda then
        begin
          Application.MessageBox(pchar( 'Código erro SAT: '+ IntToStr(FGerarCFe.codigoRet) + #13#10 + FGerarCFe.mensagem), 'Atenção', MB_ICONWARNING);
        end;
        FreeAndNil(FGerarCFe);
      except
          on E : Exception do
        begin
          finaliza_venda := false;
          Application.MessageBox(pchar('Problema ao comunicar-se com o SAT. Detalhes do erro:'+#13#10+E.Message),'Atenção', mb_iconerror );
        end;
      end;
    end
    // NFCe
    else if venda_nfce then
    begin
      //tenta emitir uma vez, se falhar, tenta de novo em contingencia se configurado
      try
        FGerarNFCe := GerarNFCe.Create;
        erro_nfce := false;
        //se for marcado para emitir em contingencia, já cria nfce dessa forma de uma vez...
        if nfce_contingencia then
        begin
          finaliza_venda := FGerarNFCe.Autorizar(cdsVendaid_venda.AsInteger, RecProj.iEmp, true);
        end
        else
        begin
          finaliza_venda := FGerarNFCe.Autorizar(cdsVendaid_venda.AsInteger, RecProj.iEmp, false);
        end;
        FreeAndNil(FGerarNFCe);
        if not finaliza_venda then
        begin
          erro_nfce := true;
          if nfce_contingencia or (not sugerir_nfce_contingencia) then
             Application.MessageBox(pchar( 'Código erro NFCe: '+ IntToStr(FGerarNFCe.codigoRet) + #13#10 + FGerarNFCe.mensagem), 'Atenção', MB_ICONWARNING);
        end;

      except
        on E : Exception do
        begin
          finaliza_venda := false;
          erro_nfce := true;
          //exibe a mensagem de erro se for em contingência.. senão, vai tentar de novo mais a frente...
          str_aux := E.Message;
          if nfce_contingencia or (not sugerir_nfce_contingencia) then
            Application.MessageBox(pchar('Problema ao gerar NFCe. Detalhes do erro:'+ slinebreak +str_aux),'Atenção', mb_iconerror );
        end;
      end;

      //se houver erro, tenta enviar agora em contingêcia se configurado para sugerir
      if erro_nfce and sugerir_nfce_contingencia and (not nfce_contingencia) then
      begin
        str_aux := 'Problema ao gerar NFCe. Gostaria de tentar emitir em contingência?'+slinebreak + slinebreak +
                   'Se emitida em contingência, a NFCe deve ser enviada a SEFAZ em até 24 horas, certifique se que este tipo de erro não ocorrerá no envio definitivo. ' +
                   'Detalhes do erro:' + slinebreak + slinebreak + str_aux + slinebreak + slinebreak+
                   'Emitir em contingência?';
        if application.MessageBox(pchar(str_aux), 'Atenção', mb_iconwarning + MB_YESNO )=mryes then
        begin
          try
            FGerarNFCe := GerarNFCe.Create;
            finaliza_venda := FGerarNFCe.Autorizar(cdsVendaid_venda.AsInteger, RecProj.iEmp, true);
            if not finaliza_venda then
              Application.MessageBox(pchar( 'Código erro NFCe: '+ IntToStr(FGerarNFCe.codigoRet) + #13#10 + FGerarNFCe.mensagem), 'Atenção', MB_ICONWARNING);
          except
            on E : Exception do
            begin
              finaliza_venda := false;
              Application.MessageBox(pchar('Problema ao gerar NFCe. Detalhes do erro:'+#13#10+E.Message),'Atenção', mb_iconerror );
            end;
          end;
        end;
      end;
    end
    else if venda_ecf then
    begin
      try
        FGerarECF := GerarECF.Create;
        finaliza_venda := FGerarECF.Emitir(cdsVendaid_venda.AsInteger, RecProj.iEmp);
        if not finaliza_venda then
        begin
          Application.MessageBox(pchar(FGerarECF.mensagem), 'Atenção', MB_ICONWARNING);
        end;
        FreeAndNil(FGerarECF);
      except
        on E : Exception do
        begin
          finaliza_venda := false;
          Application.MessageBox(pchar('Problema ao gerar cupom fiscal. Detalhes do erro:'+#13#10+E.Message),'Atenção', mb_iconerror );
        end;
      end;
    end;

    // venda no SAT não autorizada, exclui os itens de encerravenda, e encerravenda, caixaitem e creceber
    if not finaliza_venda then
    begin
      str_sql := 'delete from caixaitem where id_encerravenda = :id_venda and id_empresa=:emp_001 and not antecipado';
      ExecutaComandoSQL(str_sql, vararrayof([id_encerravenda, RecProj.iEmp ]));
      str_sql := 'update caixaitem set id_encerravenda = null, item_encerravenda = null where id_encerravenda = :id_venda and id_empresa=:emp_001 and antecipado';
      ExecutaComandoSQL(str_sql, vararrayof([id_encerravenda, RecProj.iEmp ]));

      str_sql := 'delete from encerravendaitem where enc_001 = :id_encerra and emp_001=:emp_001';
      ExecutaComandoSQL(str_sql, vararrayof([id_encerravenda, RecProj.iEmp ]));

      str_sql := 'delete from encerravenda where enc_001 = :id_encerra and emp_001=:emp_001';
      ExecutaComandoSQL(str_sql, vararrayof([id_encerravenda, RecProj.iEmp ]));

      str_sql := 'delete from creceber where id_venda=:id_venda and id_empresa=:emp_001';
      ExecutaComandoSQL(str_sql, vararrayof([id_venda, RecProj.iEmp ]));

    end
    else
    begin
      //insere os movimentos dos itens
      qrVendaItem.First;
      while not qrVendaItem.Eof do
      begin
        InserirMovimentoProduto(qrVendaItem.FieldByName('id_produto').AsInteger, //Id produto
                                qrVendaItem.FieldByName('qtdevenda').AsFloat,    //quantidade
                                'S','', RecProj.iUsuario,                        //tipo movimento, observação, usuario
                                qrVendaItem.FieldByName('id_venda').AsInteger,   // id venda
                                qrVendaItem.FieldByName('nro_item').AsInteger,   //id venda item
                                'M', true,0, 0, 0, date+time, false, qrVendaItem.FieldByName('utiliza_combo').AsBoolean, //tipo de material, movimenta composicao, id fornecedor, valor de custo, valor de venda, data movimento , atualiza valor de venda
                                qrVendaItem.FieldByName('id_setor').AsInteger); // setor
        qrVendaItem.Next;
      end;


      //atualiza a flag de pago para os itens da venda...
      ExecutaComandoSQL('update vendaitem set ite_012=''S'' where emp_001=' +IntToStr(RecProj.iEmp) + ' and ven_001='+ IntToStr(id_venda));
      //atualiza o status da venda
      //id_venda, RecProj.iEmp,   valor_venda , valor_acrescimos, valor_descontos
      ExecutaComandoSQL(' update venda set sit_001=1, ven_009=:valor_venda, ' +
                        ' ven_008=:valor_acrescimos, ven_007=:valor_descontos '+
                        ' where emp_001=:emp and ven_001=:id_venda',
                        CriaVariantArray([valor_venda,valor_acrescimos,
                        valor_descontos, RecProj.iEmp, id_venda ]));


      //imprime o cupom
      if ckImprimirCupom.Checked and ( // flag de impressão
        (not (venda_sat or venda_nfce or venda_ecf)) or // venda não fiscal
        ((venda_sat or venda_nfce or venda_ecf) and (numero_vias>1))    or // se for fiscal mas o numero de vias é maior que 1
        flag_fiado) then// flag fiado, sempre imprime
      begin
        //já imprimiu uma via fiscal, imprime as outras não fiscal
        if (venda_sat or venda_nfce or venda_ecf) then
        begin
          if flag_fiado and (numero_vias = 1) then
            ImprimeCupom // Aqui imprimi o cupom
          else
            ImprimeCupom(false, numero_vias -1);
        end
        else
          ImprimeCupom(false, numero_vias);
      end;

      if utiliza_painel_senha then imprimePainelSenha;

      if utiliza_gaveta then frmmenu.AbrirGaveta;
      GravaBooelanConfig('PRE_FECHAMENTOPDVCKIMPCUPOM', ckImprimirCupom.Checked, frmMenu.cdsCFG.FileName);
      self.Tag:=1;
      close;
    end;
  end;

  btConfirma.Enabled:=true;

  if Assigned(frmPDV) then
    frmPDV.bImportando:= False;

  //Venda não fiscal com TEF - Bruno 02/08/2018
  if not (venda_sat or venda_nfce or venda_ecf) then
  begin
    if TransacaoComTef then
    begin
      if application.MessageBox('Deseja imprimir TEF?', 'Atenção', MB_ICONQUESTION + MB_YESNO) = mrYes then
      begin
        Application.CreateForm(TFImpressaoCupom, FImpressaoCupom);
        FImpressaoCupom.quemChamou := 'transacaoCOmTef';
        FImpressaoCupom.ShowModal;
        freeandnil(FImpressaoCupom);
      end;
    end;
  end;

  if bsat then
    ckImprimirCupom.Checked:= False;

end;

procedure TfrmPDVFechamento.btn1Click(Sender: TObject);
begin
RepFechaConta.LoadFromFile('C:\EliteFood\Relatorios\FECHAMENTO_PDV.fr3');
RepFechaConta.DesignReporT;
end;

procedure TfrmPDVFechamento.Button1Click(Sender: TObject);
var FGerarCFe : GerarCFe;
begin
  FGerarCFe := GerarCFe.Create;
  FGerarCFe.Cancelar(cdsVendaid_venda.AsInteger, RecProj.iEmp);
  FreeAndNil(FGerarCFe);
end;

procedure TfrmPDVFechamento.CalculaValorPago(flag_outros : boolean = false);
var  restante, troco, pag1, pag2, pag3 : double;
begin
  cdsVendaCalcFields(nil);
  troco:=0;

  pag1 := cdsVenda.FieldByName('valor_pag1').asfloat;
  pag2 := cdsVenda.FieldByName('valor_pag2').asfloat;
  pag3 := cdsVenda.FieldByName('valor_pag3').asfloat;
  cdsVenda.FieldByName('total_pago').AsFloat:= pag1 + pag2 + pag3;

  restante := roundto( cdsVenda.FieldByName('valor_total_venda').AsFloat - cdsVenda.FieldByName('total_pago').AsFloat, -2);
  if restante<0 then
  begin
    troco:=restante*(-1);
    restante:=0;
  end;
  cdsVenda.FieldByName('valor_restante').AsFloat:= restante;
  cdsVenda.FieldByName('valor_troco').AsFloat:=troco;

end;

procedure TfrmPDVFechamento.cbDescontoAcrescimoChange(Sender: TObject);
begin
  CalculaValorPago;
end;

procedure TfrmPDVFechamento.cbFormaPgto1Click(Sender: TObject);
begin
  if (qrListaFormapgto1tipo_integracao.AsInteger = 1) and ((qrListaFormapgto1sfi_codigo.AsInteger = 3) or (qrListaFormapgto1sfi_codigo.AsInteger = 4)) then //Cartões
  begin
    lblAut1.Visible:= True;
    edtAut1.Visible:= True;
  end
  else
  begin
    lblAut1.Visible:= False;
    edtAut1.Visible:= False;
  end;
end;

procedure TfrmPDVFechamento.cbFormaPgto1Enter(Sender: TObject);
begin
  if cdsVenda.FieldByName('cod_pag1').asinteger = 0 then cbFormaPgto1.DropDown;
end;

procedure TfrmPDVFechamento.cbFormaPgto1Exit(Sender: TObject);
begin
  if cdsVenda.FieldByName('cod_pag1').AsInteger = 0 then
  begin
    edValorPagamento1.Value:= 0;
    lblAut1.Visible:= False;
    edtAut1.Visible:= False;
  end;
end;

procedure TfrmPDVFechamento.cbFormaPgto1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) or (key =VK_TAB) then
  begin
    if edValorPagamento1.CanFocus then edValorPagamento1.SetFocus;
  end;
end;

procedure TfrmPDVFechamento.cbFormaPgto2Click(Sender: TObject);
begin
  if (qrListaFormapgto2tipo_integracao.AsInteger = 1) and ((qrListaFormapgto2sfi_codigo.AsInteger = 3) or (qrListaFormapgto2sfi_codigo.AsInteger = 4)) then //Cartões
  begin
    lblAut2.Visible:= True;
    edtAut2.Visible:= True;
  end
  else
  begin
    lblAut2.Visible:= False;
    edtAut2.Visible:= False;
  end;
end;

procedure TfrmPDVFechamento.cbFormaPgto2Enter(Sender: TObject);
begin
  if cdsVenda.FieldByName('cod_pag2').asinteger = 0 then cbFormaPgto2.DropDown;

end;

procedure TfrmPDVFechamento.cbFormaPgto2Exit(Sender: TObject);
begin
  if cdsVenda.FieldByName('cod_pag2').AsInteger = 0 then
  begin
    edValorPagamento2.Value:= 0;
    lblAut2.Visible:= False;
    edtAut2.Visible:= False;
  end;
end;

procedure TfrmPDVFechamento.cbFormaPgto2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) or (key =VK_TAB) then
  begin
    if edValorPagamento2.CanFocus then edValorPagamento2.SetFocus;
  end;
end;

procedure TfrmPDVFechamento.cbFormaPgto3Click(Sender: TObject);
begin
  if (qrListaFormapgto3tipo_integracao.AsInteger = 1) and ((qrListaFormapgto3sfi_codigo.AsInteger = 3) or (qrListaFormapgto3sfi_codigo.AsInteger = 4)) then //Cartões
  begin
    lblAut3.Visible:= True;
    edtAut3.Visible:= True;
  end
  else
  begin
    lblAut3.Visible:= False;
    edtAut3.Visible:= False;
  end;
end;

procedure TfrmPDVFechamento.cbFormaPgto3Enter(Sender: TObject);
begin
  if cdsVenda.FieldByName('cod_pag3').asinteger = 0 then cbFormaPgto3.DropDown;
end;

procedure TfrmPDVFechamento.cbFormaPgto3Exit(Sender: TObject);
begin
  if cdsVenda.FieldByName('cod_pag3').AsInteger = 0 then
  begin
    edValorPagamento3.Value:= 0;
    lblAut3.Visible:= False;
    edtAut3.Visible:= False;
  end;
end;

procedure TfrmPDVFechamento.cbFormaPgto3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) or (key =VK_TAB) then
  begin
    if edValorPagamento3.CanFocus then edValorPagamento3.SetFocus;
  end;
end;

procedure TfrmPDVFechamento.cdsVendaCalcFields(DataSet: TDataSet);
var valor : double;
begin
  if b_calcular then
  begin
    b_calcular :=false;
    //calcula o desconto
    case cbDescontoAcrescimo.ItemIndex of
      // desconto por porcentagem
      0 : begin
        valor := roundto(cdsVenda.FieldByName('total_itens').AsFloat * edDescontoValor.Value * 0.01, -2);
        cdsVenda.FieldByName('desconto').AsFloat := valor;
        cdsVenda.FieldByName('acrescimo').AsFloat := 0;
      end;
      // desconto por valor
      1 : begin
        cdsVenda.FieldByName('desconto').AsFloat := edDescontoValor.Value;
        cdsVenda.FieldByName('acrescimo').AsFloat := 0;
      end;
      // acrescimo por porcentagem
      2 : begin
        valor := roundto(cdsVenda.FieldByName('total_itens').AsFloat * edDescontoValor.Value * 0.01, -2);
        cdsVenda.FieldByName('acrescimo').AsFloat := valor;
        cdsVenda.FieldByName('desconto').AsFloat := 0;
      end;
      // acrescimo por valor
      3 : begin
        cdsVenda.FieldByName('acrescimo').AsFloat := edDescontoValor.Value;
        cdsVenda.FieldByName('desconto').AsFloat := 0;
      end;
    end;

    cdsVenda.FieldByName('valor_total_venda').AsFloat:=  roundto(
                                      cdsVenda.FieldByName('total_itens').asFloat +
                                      cdsVenda.FieldByName('acrescimo').AsFloat -
                                      cdsVenda.FieldByName('desconto').AsFloat,-2);

    cdsVenda.FieldByName('data_atual').AsDateTime := Date + Time;
    b_calcular :=true;
  end;
end;


procedure TfrmPDVFechamento.cdsVendacli_001Change(Sender: TField);
var str_sql, nome : string;
begin
  if cdsVenda.FieldByName('cli_001').isnull then
    cdsVenda.FieldByName('nome_cliente').AsString :=''
  else
  begin
    str_sql := format('select cli_002 from clientes where cli_001=%d and emp_001=%d', [cdsVenda.FieldByName('cli_001').asinteger, recproj.Iemp]);
    buscacampo(nome, str_sql ,'cliente', false);
    cdsVenda.FieldByName('nome_cliente').AsString :=nome;
  end;
end;

procedure TfrmPDVFechamento.cdsVendacpf_clienteChange(
  Sender: TField);
begin
  if not (Valida_CPF(Sender.AsString) or  Valida_CNPJ(Sender.AsString) ) then
  begin
    Application.MessageBox('CPF/CNPJ inválido', 'Atenção', MB_ICONINFORMATION);
  end;
end;

procedure TfrmPDVFechamento.cdsVendadeconto_percentChange(
  Sender: TField);
begin
  CalculaValorPago(true);
end;

procedure TfrmPDVFechamento.cdsVendadescontoChange(Sender: TField);
begin
  CalculaValorPago(true);
end;

procedure TfrmPDVFechamento.cdsVendanro_couvert_fChange(
  Sender: TField);
begin
  CalculaValorPago(true);
end;

procedure TfrmPDVFechamento.cdsVendanro_couvert_mChange(
  Sender: TField);
begin
  CalculaValorPago(true);
end;

procedure TfrmPDVFechamento.cdsVendavalor_pag1Validate(Sender: TField);
begin
  CalculaValorPago;
  if cdsvenda.fieldbyname('valor_restante').asfloat>0 then
  begin
    cbFormaPgto2.Enabled:=true;
    edValorPagamento2.Enabled :=true;

    if (edtAut1.Visible) and (edtAut1.CanFocus) then
      edtAut1.SetFocus
    else
    begin
      if cbFormaPgto2.canfocus and self.visible then cbFormaPgto2.SetFocus;
    end;

    if cdsvenda.fieldbyname('valor_pag2').asfloat>0 then
    begin
      cbFormaPgto3.Enabled:=true;
      edValorPagamento3.Enabled :=true;
    end
    else
    begin
      cbFormaPgto3.Enabled:=false;
      edValorPagamento3.Enabled :=false;
    end;
  end
  else
  begin
    if cdsvenda.fieldbyname('valor_pag2').asfloat>0 then
    begin
      cbFormaPgto2.Enabled:=true;
      edValorPagamento2.Enabled :=true;
    end
    else
    begin
      cbFormaPgto2.Enabled:=false;
      edValorPagamento2.Enabled :=false;
      if cdsvenda.fieldbyname('valor_pag3').asfloat>0 then
      begin
        cbFormaPgto3.Enabled:=true;
        edValorPagamento3.Enabled :=true;
      end
      else
      begin
        cbFormaPgto3.Enabled:=false;
        edValorPagamento3.Enabled :=false;
      end;
    end;

    if (edtAut1.Visible) and (edtAut1.CanFocus) then
      edtAut1.SetFocus
    else
    begin
      if btConfirma.canfocus and self.visible then btConfirma.setfocus;
    end;
  end;
end;

procedure TfrmPDVFechamento.cdsVendavalor_pag2Validate(Sender: TField);
begin
  CalculaValorPago;
  if cdsvenda.fieldbyname('valor_restante').asfloat>0 then
  begin
    cbFormaPgto3.Enabled:=true;
    edValorPagamento3.Enabled :=true;

    if (edtAut2.Visible) and (edtAut2.CanFocus) then
      edtAut2.SetFocus
    else
    begin
      if cbFormaPgto3.canfocus then cbFormaPgto3.setfocus;
    end;
  end
  else
  begin
    cbFormaPgto3.Enabled:=false;
    edValorPagamento3.Enabled :=false;

    if (edtAut2.Visible) and (edtAut2.CanFocus) then
      edtAut2.SetFocus
    else
    begin
      if btConfirma.canfocus then btConfirma.setfocus;
    end;
  end;
end;

procedure TfrmPDVFechamento.cdsVendavalor_pag3Validate(Sender: TField);
begin
  CalculaValorPago;
  if cdsvenda.fieldbyname('valor_restante').asfloat>0 then
  begin
    if (edtAut3.Visible) and (edtAut3.CanFocus) then
      edtAut3.SetFocus
    else
      cbFormaPgto1.setfocus;
  end
  else
  begin
    if (edtAut3.Visible) and (edtAut3.CanFocus) then
      edtAut3.SetFocus
    else
      btConfirma.setfocus;
  end;
end;

constructor TfrmPDVFechamento.Create (Sender : TComponent ; id_venda : integer; modo_devolucao_pdv : boolean = false; valor_devolucao : double =0 );
var query_aux : TUniQuery;
    str_sql : string;
begin
  inherited create(sender);
  self.modo_devolucao_pdv := modo_devolucao_pdv;
  impressora_modo_pos := LerIntegerConfig('CXMODOIMPCAIXA',frmmenu.cdsCFG.FileName)=1;
  //verifica se existe caixa aberto
  frmMenu.carregaCaixaUsuario;
  if RecProj.iIDCaixa=0 then
  begin
    Application.MessageBox(pchar('Não existe caixa aberto para o usuário '
                         + recproj.sUsuario+'!'), 'Atenção', MB_ICONINFORMATION);
    abort;
  end;
  cdsVenda.close;
  qrVenda.Close;
  qrVenda.ParamByName('id_venda').AsInteger:=id_venda;
  qrVenda.ParamByName('emp').AsInteger:=RecProj.iEmp;
  qrVenda.ParamByName('flag_tx_servico').AsBoolean:=false;
  qrVenda.ParamByName('flag_couvert_mesa').AsBoolean:= false;
  qrVenda.ParamByName('valor_couvert_masc').AsFloat := 0;
  qrVenda.ParamByName('valor_couvert_fem').AsFloat  := 0;
  qrVenda.ParamByName('id_caixa').AsInteger := RecProj.iIDCaixa;

  qrVendaItem.Close;
  qrVendaItem.ParamByName('id_venda').AsInteger:=id_venda;
  qrVendaItem.ParamByName('emp').AsInteger:=RecProj.iEmp;
  qrVendaItem.Open;

  cdsVenda.Open;
  cdsVenda.Edit;
  cdsVenda.FieldByName('valor_restante').AsFloat:=cdsVenda.FieldByName('valor_total_venda').AsFloat;
  edValorPagamento1.Value:= cdsVenda.FieldByName('valor_restante').AsFloat;
  //edDescontoValor.MaxValue:= cdsVenda.FieldByName('valor_total_venda').AsFloat;

  if cdsVenda.RecordCount <=0 then
  begin
    application.MessageBox('Não é possível encerrar esta venda!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  query_aux := TUniQuery.Create(self);
  query_aux.Connection:=frmMenu.conexao;

  //abre as tabelas dos combos de forma de pagamento;
  qrListaFormapgto1.ParamByName('emp').AsInteger := RecProj.iEmp;
  qrListaFormapgto1.ParamByName('b_devolucao').asboolean := modo_devolucao_pdv;
  qrListaFormapgto2.ParamByName('emp').AsInteger := RecProj.iEmp;
  qrListaFormapgto3.ParamByName('emp').AsInteger := RecProj.iEmp;

  qrListaFormapgto1.open;
  qrListaFormapgto2.open;
  qrListaFormapgto3.open;

  cdsParcelasPagamentos.CreateDataSet;

  //seleciona a primeira forma de pagamento;
  if modo_devolucao_pdv then
  begin
    b_calcular:=true;
    cdsVendaCalcFields(nil);
    if not qrListaFormapgto1.Locate('b_devolucao', true, []) then
    begin
      qrListaFormapgto1.First;
      edValorPagamento1.Enabled := true;
    end
    else
    begin
      edValorPagamento1.Enabled := false;
    end;
    if  compareVAlue(valor_devolucao,cdsVenda.FieldByName('valor_total_venda').AsFloat)=1  then
      cdsVenda.FieldByName('valor_pag1').asfloat := cdsVenda.FieldByName('valor_total_venda').AsFloat
    else
      cdsVenda.FieldByName('valor_pag1').asfloat := valor_devolucao;
  end
 
  else
    qrListaFormapgto1.First;

  //carrega o desconto ou acrescimo para o campo desconto_acrescimo
  if cdsVenda.FieldByName('desconto').asfloat>0.0 then
  begin
    cdsVenda.FieldByName('desconto_acrescimo').asfloat :=  cdsVenda.FieldByName('desconto').asfloat;
    cbDescontoAcrescimo.ItemIndex := 1;
  end
  else if cdsVenda.FieldByName('acrescimo').asfloat>0.0 then
  begin
    cdsVenda.FieldByName('desconto_acrescimo').asfloat :=  cdsVenda.FieldByName('acrescimo').asfloat;
    cbDescontoAcrescimo.ItemIndex := 3;
  end;

  cdsVenda.FieldByName('cod_pag1').asinteger := qrListaFormapgto1.Fieldbyname('for_001').AsInteger;

  if cdsVenda.FieldByName('tipo_venda').AsString = 'P' then
  begin
    permite_desconto := LerBooleanConfig('CKPERMITEDESCONTOFECHAMENTOPDV',frmMenu.cdsCFG.FileName);
    mensagem_txservico := LerStringConfig('EDMENSAGEMTXSERVICOPDV',frmMenu.cdsCFG.FileName);
    utiliza_painel_senha := false;
    emite_fiscal := true;
    imprime_varias_vias_cupom := LerBooleanConfig('CKIMPRIMIRVARIASVIASCUPOMPDV',frmMenu.cdsCFG.FileName);
    imprime_duas_vias_cupom :=false;
  end
  else if cdsVenda.FieldByName('tipo_venda').AsString = 'B' then
  begin
    permite_desconto := LerBooleanConfig('CKPERMITEDESCONTOFECHAMENTOBALCAO',frmMenu.cdsCFG.FileName);
    mensagem_txservico := LerStringConfig('EDMENSAGEMTXSERVICOBALCAO',frmMenu.cdsCFG.FileName);
    utiliza_painel_senha := LerBooleanConfig('CKUTILIZAPAINELSENHABALCAO',frmMenu.cdsCFG.FileName);
    emite_fiscal :=  LerBooleanConfig('CKEMITEFISCALBALCAO',frmMenu.cdsCFG.FileName);
    imprime_varias_vias_cupom := LerBooleanConfig('CKIMPRIMIRVARIASVIASCUPOMBALCAO',frmMenu.cdsCFG.FileName);
    imprime_duas_vias_cupom :=  LerBooleanConfig('CKIMPRIMIRDUASVIASCUPOMBALCAO',frmMenu.cdsCFG.FileName);
  end;

  impressora_caixa:= LerStringConfig('CAMIMPCAIXA',frmMenu.cdsCFG.FileName);
  ckImprimirCupom.Checked := LerBooleanConfig('PRE_FECHAMENTOPDVCKIMPCUPOM', frmMenu.cdsCFG.FileName);
  utiliza_gaveta := LerBooleanConfig('CKUTILIZAGAVETA',frmMenu.cdsCFG.FileName);
  nfce_contingencia := LerBooleanConfig('CKNFCEEMITIREMCONTINGENCIA',frmMenu.cdsCFG.FileName, false);
  sugerir_nfce_contingencia := LerBooleanConfig('CKNFCESUGERIRCONTINGENCIA',frmMenu.cdsCFG.FileName, false);

  str_sql :='select b_utiliza_controle_cliente, b_permite_troco_todas_formas from empresas where emp_001='+IntToStr( RecProj.iEmp);
  ExecutaConsultaSQL(query_aux,str_sql);

  b_utiliza_controle_cliente := query_aux.FieldByName('b_utiliza_controle_cliente').AsBoolean;
  b_permite_troco_todas_formas := query_aux.FieldByName('b_permite_troco_todas_formas').AsBoolean;

  bTaxaAdicional :=  false;

  b_calcular:=true;
end;

procedure TfrmPDVFechamento.FormCreate(Sender: TObject);
begin
  try
    imgFundo.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\imagens\FECHAMENTOPDV.png');
  except
  end;
end;

procedure TfrmPDVFechamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
  begin
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TfrmPDVFechamento.FormShow(Sender: TObject);
begin
  MemoCupomTEF.Lines.Clear;
  StatusTransacao := false;
  TransacaoComTef := false;

  CalculaValorPago;

  if cbFormaPgto1.canfocus then cbFormaPgto1.SetFocus
    else if cbFormaPgto2.canfocus then cbFormaPgto2.SetFocus
    else if  cbFormaPgto3.canfocus then cbFormaPgto3.SetFocus;
end;

procedure TfrmPDVFechamento.qrVendaItemBeforeOpen(DataSet: TDataSet);
begin
  if bTaxaAdicional then
    qrVendaItem.ParamByName('flag_taxa_10').AsInteger:=1
  else
    qrVendaItem.ParamByName('flag_taxa_10').AsInteger:=0;
end;

procedure TfrmPDVFechamento.edDescontoValorExit(Sender: TObject);
begin
  CalculaValorPago;
end;

procedure TfrmPDVFechamento.edDescontoValorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
{  if (key = vk_return) or (key =VK_TAB) then
  begin
    Perform(WM_NEXTDLGCTL, 0, 0);
    //if cbFormaPgto1.CanFocus then cbFormaPgto1.SetFocus;
  end;       }
end;

procedure TfrmPDVFechamento.edValorPagamento1Enter(Sender: TObject);
begin
  if (cdsVenda.FieldByName('valor_restante').AsFloat >0) and (cdsVenda.FieldByName('valor_pag1').AsFloat <=0)  then
    edValorPagamento1.Value := cdsVenda.FieldByName('valor_restante').AsFloat;
    edValorPagamento1.SelectAll;
end;

procedure TfrmPDVFechamento.edValorPagamento2Enter(Sender: TObject);
begin
  if (cdsVenda.FieldByName('valor_restante').AsFloat >0) and (cdsVenda.FieldByName('valor_pag2').AsFloat <=0)  then
    edValorPagamento2.Value := cdsVenda.FieldByName('valor_restante').AsFloat;
    edValorPagamento2.SelectAll;
end;

procedure TfrmPDVFechamento.edValorPagamento3Enter(Sender: TObject);
begin
  if (cdsVenda.FieldByName('valor_restante').AsFloat >0) and (cdsVenda.FieldByName('valor_pag3').AsFloat <=0)  then
    edValorPagamento3.Value := cdsVenda.FieldByName('valor_restante').AsFloat;
    edValorPagamento3.SelectAll;
end;

procedure TfrmPDVFechamento.acAbrirGavetaExecute(Sender: TObject);
begin
  if utiliza_gaveta then frmMenu.AbrirGaveta;
end;

procedure TfrmPDVFechamento.Action1Execute(Sender: TObject);
begin
  tag:=0;
  close;
end;

procedure TfrmPDVFechamento.Action2Execute(Sender: TObject);
begin
  bsat := True;
end;

procedure TfrmPDVFechamento.Alterar1Click(Sender: TObject);
var str_sql : string;
begin
  str_sql:= ' select cli_001, cli_002, cli_012, saldo_atual, limite_credito, fn_situacoes(sit_001) from clientes ';
  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
    str_sql,
    CriaIntegerArray([0,1,2,3,4]) ,
    CriaStringArray(['Código', 'Cliente', 'Telefone 1','Saldo Atual', 'Limite Crédito',  'Status' ]),
    0, 1, ' sit_001=4 and emp_001='+IntToStr(RecProj.iEmp), 800, 500);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
   cdsVenda.FieldByName('cli_001').value := frmBuscaRegistro.valor_retorno;
   FreeAndNil(frmBuscaRegistro);
end;

procedure TfrmPDVFechamento.aplicaDesconto(tipo : integer = 1);
var valor : double;
begin
  //desconto por porcentagem
  if tipo=1 then
  begin
    valor:= ( cdsVenda.FieldByName('total_itens').AsFloat +
    cdsVenda.FieldByName('acrescimo').AsFloat + cdsVenda.FieldByName('total_couvert').AsFloat ) *
        (cdsVenda.FieldByName('desconto_percent').AsFloat / 100);
    cdsVenda.FieldByName('desconto').AsFloat:= roundto(valor, -2);
  end
  //desconto por valor
  else
  begin
    valor:= (cdsVenda.FieldByName('desconto').AsFloat / ( cdsVenda.FieldByName('total_itens').AsFloat +
    cdsVenda.FieldByName('acrescimo').AsFloat  + cdsVenda.FieldByName('total_couvert').AsFloat )) * 100;
    cdsVenda.FieldByName('desconto_percent').AsFloat:=valor;
  end;
end;

procedure TfrmPDVFechamento.chamaTef(cnpjCred, bandeira, campo, numVenda : string; valorInformado : currency);
var index : integer;
begin
  index := 0;

  if RecProj.dTEF_TIPO > 0 then
    index := RecProj.dTEF_TIPO
  else
    index := 1;

  try
    FTEF.ACBrTEFDNFCe.BloquearMouseTeclado(true);
    pAguardeTef.Visible := true;
    pAguardeTef.repaint;
    FTef.valorInformado := valorInformado;
    FTef.campo := campo;

    if not FTef.ACBrTEFDNFCe.Inicializado then
      FTef.ACBrTEFDNFCe.Inicializar(TACBrTEFDTipo(index));

    StatusTransacao := True;
  except
    FTEF.ACBrTEFDNFCe.BloquearMouseTeclado(false);
    pAguardeTef.Visible := false;
    Application.MessageBox(
      'GP para tipo de pagamento solicitado não instalado.',
      'Informação do Sistema', MB_OK + MB_ICONINFORMATION);

    StatusTransacao := False;
  end;

  try
    FTEF.ACBrTEFDNFCe.BloquearMouseTeclado(false);
    StatusTransacao := FTEF.ACBrTEFDNFCe.CRT(ValorInformado, '02', numVenda);
    MemoCupomTEF.Visible := true;
    pAguardeTef.Visible := false;
    FTEF.ACBrTEFDNFCe.BloquearMouseTeclado(true);
  except
    On E: exception do
    begin
      BlockInput(false);
      StatusTransacao := False;
      TransacaoComTef := False;
      ShowMessage(E.ClassName + 'ERRO: ' + E.Message);
      pAguardeTef.Visible := false;
    end;
  end;

  if StatusTransacao then
  begin
    TransacaoComTef := True;

    if campo = '1' then
      edtAut1.Text:= FTef.ACBrTEFDNFCe.RespostasPendentes[IndiceTransacaoTef].CodigoAutorizacaoTransacao
    else if campo = '2' then
      edtAut2.Text:= FTef.ACBrTEFDNFCe.RespostasPendentes[IndiceTransacaoTef].CodigoAutorizacaoTransacao
    else if campo = '3' then
      edtAut3.Text:= FTef.ACBrTEFDNFCe.RespostasPendentes[IndiceTransacaoTef].CodigoAutorizacaoTransacao;

    FTef.estadoSimuladoEcf := tpsLivre;
    FTef.ACBrTEFDNFCe.ImprimirTransacoesPendentes;
  end;
  BlockInput(false);
end;


end.


