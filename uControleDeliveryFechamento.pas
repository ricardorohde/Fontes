unit uControleDeliveryFechamento;

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
  AdvGlowButton, AdvGroupBox, AdvPanel, cxCheckBox, System.Actions, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, ACBrTEFDClass, Vcl.Buttons;

type
  TfrmControleDeliveryFechamento = class(TForm)
    pmCredito: TPopupMenu;
    qrVenda: TUniQuery;
    dsVenda: TDataSource;
    qrVendaid_venda: TIntegerField;
    qrVendanro_venda: TIntegerField;
    qrVendadata_abertura: TDateTimeField;
    qrVendavalor_venda: TFloatField;
    dspVendaMesa: TDataSetProvider;
    qrVendatotal_pago: TFloatField;
    qrVendavalor_restante: TFloatField;
    qrVendavalor_troco: TFloatField;
    cdsVenda: TClientDataSet;
    cdsVendaid_venda: TIntegerField;
    cdsVendanro_venda: TIntegerField;
    cdsVendadata_abertura: TDateTimeField;
    cdsVendavalor_venda: TFloatField;
    cdsVendatotal_pago: TFloatField;
    cdsVendavalor_restante: TFloatField;
    cdsVendavalor_troco: TFloatField;
    qrAux1: TUniQuery;
    cdsParcelasPagamentos: TClientDataSet;
    cdsParcelasPagamentosid_formapgto: TIntegerField;
    cdsParcelasPagamentosdescr_formapag: TStringField;
    cdsParcelasPagamentosvalor: TFloatField;
    icMasterCard: TMenuItem;
    icVisa: TMenuItem;
    icAmericanExpress: TMenuItem;
    icOutro: TMenuItem;
    pmDebito: TPopupMenu;
    idMasterCard: TMenuItem;
    idVisa: TMenuItem;
    idAmericanExpress: TMenuItem;
    idOutro: TMenuItem;
    cdsParcelasPagamentosnro_autorizacao: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsParcelasPagamentos: TDataSource;
    cxGrid1DBTableView1descr_formapag: TcxGridDBColumn;
    cxGrid1DBTableView1valor: TcxGridDBColumn;
    pmOutros: TPopupMenu;
    jvdsVendaMesa: TJvDataSource;
    cdsVendavalor_total_venda: TFloatField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cdsVendadeconto_percent: TFloatField;
    qrVendadesconto_percent: TFloatField;
    cdsParcelasPagamentosdinheiro: TBooleanField;
    qrVendaid_caixa: TIntegerField;
    cdsVendaid_caixa: TIntegerField;
    RepFechaConta: TfrxReport;
    dbPedido: TfrxDBDataset;
    dbEmpresa: TfrxDBDataset;
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
    dbPagamentos: TfrxDBDataset;
    qrVendaItemordem_item: TLargeintField;
    qrVendaItemvalor_desconto: TFloatField;
    qrVendaItemid_produto: TIntegerField;
    cdsParcelasPagamentosantecipado: TBooleanField;
    AdvGroupBox1: TAdvGroupBox;
    Label9: TLabel;
    DBText1: TDBText;
    AdvGroupBox2: TAdvGroupBox;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    AdvGroupBox3: TAdvGroupBox;
    Label11: TLabel;
    Label13: TLabel;
    edDescontoValor: TJvValidateEdit;
    edDescontoPercent: TJvValidateEdit;
    Label12: TLabel;
    AdvGroupBox4: TAdvGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    edValorPagamento: TJvValidateEdit;
    edNroAutorizacao: TEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    lpPnlBotoesFormas: TFlowPanel;
    btDinheiro: TAdvGlowButton;
    btDebito: TAdvGlowButton;
    BtCredito: TAdvGlowButton;
    btCheque: TAdvGlowButton;
    btOutros: TAdvGlowButton;
    pnBotoes: TFlowPanel;
    AdvPanel1: TAdvPanel;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    cdsVendadata_atual: TDateTimeField;
    cdsVendadesconto: TFloatField;
    qrVendavalor_tx: TFloatField;
    qrVendadesconto: TFloatField;
    qrVendaobservacoes: TWideStringField;
    qrVendanome_cliente: TWideStringField;
    qrVendacpf_cliente: TWideStringField;
    cdsVendavalor_tx: TFloatField;
    cdsVendaobservacoes: TWideStringField;
    cdsVendanome_cliente: TWideStringField;
    cdsVendacpf_cliente: TWideStringField;
    Label15: TLabel;
    DBText2: TDBText;
    qrVendasit_001: TIntegerField;
    cdsVendasit_001: TIntegerField;
    ckImprimirCupom: TcxCheckBox;
    qrVendatelefone1: TWideStringField;
    qrVendatelefone2: TWideStringField;
    qrVendacelular1: TWideStringField;
    qrVendaendereco: TWideStringField;
    qrVendaendereco_numero: TWideStringField;
    qrVendaendereco_complemento: TWideStringField;
    qrVendabairro: TWideStringField;
    qrVendacidade: TWideStringField;
    qrVendaendereco_referencia: TWideStringField;
    cdsVendatelefone1: TWideStringField;
    cdsVendatelefone2: TWideStringField;
    cdsVendacelular1: TWideStringField;
    cdsVendaendereco: TWideStringField;
    cdsVendaendereco_numero: TWideStringField;
    cdsVendaendereco_complemento: TWideStringField;
    cdsVendabairro: TWideStringField;
    cdsVendacidade: TWideStringField;
    cdsVendaendereco_referencia: TWideStringField;
    qrVendaItemdescricao_item_sem_obs: TWideStringField;
    qrVendanome_entregador: TWideStringField;
    cdsVendanome_entregador: TWideStringField;
    qrVendab_taxa_entrega: TBooleanField;
    cdsVendab_taxa_entrega: TBooleanField;
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
    dbItensFracionadoFechamento: TfrxDBDataset;
    dbItensFechamento: TfrxDBDataset;
    qrVendavalor_desconto_itens: TFloatField;
    qrVendanro_itens: TLargeintField;
    cdsVendavalor_desconto_itens: TFloatField;
    cdsVendanro_itens: TLargeintField;
    dsVendaItemRep: TDataSource;
    qrVendaItemOpcional: TUniQuery;
    qrVendaItemOpcionalid_venda: TIntegerField;
    qrVendaItemOpcionalid_empresa: TIntegerField;
    qrVendaItemOpcionalid_vendaitem: TIntegerField;
    qrVendaItemOpcionalid_opcional: TIntegerField;
    qrVendaItemOpcionaldescricao: TWideStringField;
    qrVendaItemOpcionalvalor: TFloatField;
    qrVendaItemOpcionalord: TIntegerField;
    dbItensOpcional: TfrxDBDataset;
    dbItensFracionadoOpcional: TfrxDBDataset;
    qrVendaItemFracionadoOpcional: TUniQuery;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    FloatField15: TFloatField;
    WideStringField11: TWideStringField;
    IntegerField17: TIntegerField;
    dsVendaItemFracionadoRep: TDataSource;
    btFiado: TAdvGlowButton;
    cdsParcelasPagamentosfiado: TBooleanField;
    qrVendaid_cliente: TIntegerField;
    cdsVendaid_cliente: TIntegerField;
    cdsParcelasPagamentosid_conta: TIntegerField;
    ActionList1: TActionList;
    acAbrirGaveta: TAction;
    qrVendanumero_cupom: TIntegerField;
    cdsVendanumero_cupom: TIntegerField;
    qrCreceberFiado: TUniQuery;
    qrCreceberFiadodocumento: TWideStringField;
    qrCreceberFiadodata_vencimento: TDateField;
    qrCreceberFiadovalor: TFloatField;
    dbCreceberFiado: TfrxDBDataset;
    qrAuxCabRod: TUniQuery;
    qrAuxCabRoddummy: TIntegerField;
    dbAuxCabRod: TfrxDBDataset;
    qrDadosCliente: TUniQuery;
    qrDadosClientenome: TWideStringField;
    qrDadosClienteendereco: TWideStringField;
    qrDadosClientebairro: TWideStringField;
    qrDadosClientecidade_desc: TWideStringField;
    qrDadosClientetelefone1: TWideStringField;
    qrDadosClientecpf: TWideStringField;
    qrDadosClienteendereco_complemento: TWideStringField;
    qrDadosClienteendereco_referencia: TWideStringField;
    qrDadosClientetelefone2: TWideStringField;
    qrDadosClientecelular1: TWideStringField;
    qrVendatipo_venda: TWideStringField;
    cdsVendatipo_venda: TWideStringField;
    qrDadosClienteendereco_numero: TWideStringField;
    qrVendaItemRepdata_hora_lancamento: TDateTimeField;
    qrVendaItemFracionadoRepdata_hora_lancamento: TDateTimeField;
    qrVendaItemdata_hora_lancamento: TDateTimeField;
    Label16: TLabel;
    qrVendatotal_itens: TFloatField;
    cdsVendatotal_itens: TFloatField;
    qrVendaItemid_setor: TIntegerField;
    qrVendaItemOpcionaltipo: TIntegerField;
    qrVendaItemFracionadoOpcionaltipo: TIntegerField;
    qrAuxiliar: TUniQuery;
    qrVendaItemutiliza_combo: TBooleanField;
    grCaixinha: TAdvGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    edCaixinha: TJvValidateEdit;
    qrVendacaixinha_entregador: TFloatField;
    cdsVendacaixinha_entregador: TFloatField;
    qrForma: TUniQuery;
    qrFormafor_001: TIntegerField;
    qrFormafor_002: TWideStringField;
    qrFormaemp_001: TIntegerField;
    qrFormab_fiado: TBooleanField;
    qrFormab_devolucao: TBooleanField;
    qrFormasfi_codigo: TIntegerField;
    qrFormatipo_integracao: TIntegerField;
    qrFormacnpjcred: TWideStringField;
    qrFormab_tef: TBooleanField;
    qrFormabandeira_cartao: TWideStringField;
    btn1: TBitBtn;
    constructor Create (Sender : TComponent ; id_venda: integer; concluir_venda : boolean = false);
    procedure este1Click(Sender: TObject);
    procedure teste21Click(Sender: TObject);
    procedure PopupItemClick(Sender: TObject);
    procedure habilitaItemMenuFPag(var menuItem : TMenuItem ; id_formapgto : integer );
    procedure insereParcela(id_formapgto : integer; desc_formapgto : string;
                           valor : double; nro_autorizacao : string ='';
                           flag_dinheiro : boolean = false; flag_antecipado : boolean = false;
                           flag_fiado : boolean = false);
    procedure btDebitoClick(Sender: TObject);
    procedure btCreditoClick(Sender: TObject);
    procedure btOutrosClick(Sender: TObject);
    procedure btDinheiroClick(Sender: TObject);
    procedure btChequeClick(Sender: TObject);
    procedure CalculaValorPago(flag_outros : boolean = false);
    procedure cdsVendaCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cdsParcelasPagamentosAfterDelete(DataSet: TDataSet);
    procedure delPagamentoExecute(Sender: TObject);
    procedure cxEditRepository1ButtonItem1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid2DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure carregaPagamentosBotoes;
    procedure edDescontoPercentExit(Sender: TObject);
    procedure aplicaDesconto(tipo : integer = 1);
    procedure edDescontoValorExit(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure cdsVendadescontoChange(Sender: TField);
    procedure cdsVendadeconto_percentChange(Sender: TField);
    procedure cdsVendanro_couvert_mChange(Sender: TField);
    procedure cdsVendanro_couvert_fChange(Sender: TField);
    procedure cdsParcelasPagamentosAfterPost(DataSet: TDataSet);
    procedure btConfirmaClick(Sender: TObject);
    procedure qrVendaItemBeforeOpen(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CarregaParametrosConfig;
    procedure ImprimirRelatorio(com_entregador : boolean = false; numero_vias : integer = 1);
    procedure cdsVendacpf_clienteChange(Sender: TField);
    procedure btFiadoClick(Sender: TObject);
    procedure acAbrirGavetaExecute(Sender: TObject);
    procedure AtualizaNumeroCupom(id_venda : integer);
    procedure chamaTef(cnpjCred, bandeira, campo, numVenda : string; valorInformado : currency);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    bTaxaAdicional, bImprimeCupomFechamento, bUtilizaGaveta,
    cede_troco_enregador, suprimir_cabecalho_rodape_cupom, imprimir_cozinha,
    nfce_contingencia, sugerir_nfce_contingencia, bCaixinha : boolean;
    sMensagemTxServico, sCamImpDelivery : string;
  public
    { Public declarations }
    venda_concluida : boolean;
    id_entregador : integer;
    nome_entregador : string;

    IndiceTransacaoTef : integer;
    StatusTransacao, TransacaoComTef : boolean;
  end;

var
  frmControleDeliveryFechamento: TfrmControleDeliveryFechamento;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uFuncoes, uGeradorSAT, uChamaFiscal, uConfiguracao,
  uVendaFiadoCrediario, uGeradorNFCe, uBuscaRegistro, uGeradorECF, UTef,
  UImpressaoCupom, uControleDeliveryFinaliza;

procedure TfrmControleDeliveryFechamento.AtualizaNumeroCupom(id_venda : integer);
var nro_cupom : integer;
begin
  nro_cupom := novoid('venda', 'numero_cupom', recproj.iEmp, 'emp_001');
  ExecutaComandoSQL('update venda set numero_cupom=:cupom where ven_001=:id_venda and emp_001=:id_empresa',
                    VarArrayOf([nro_cupom,id_venda, recproj.iEmp ]));
  if cdsVenda.State<>dsEdit then cdsVenda.Edit;
  cdsVenda.FieldByName('numero_cupom').asinteger := nro_cupom;
end;

procedure TfrmControleDeliveryFechamento.ImprimirRelatorio(com_entregador : boolean = false; numero_vias : integer =1);
var modo_pos_delivery : boolean;
    entregador : string;
    ultimo_fracionado, i : integer;
begin
  modo_pos_delivery := LerIntegerConfig('CXMODOIMPDELIVERY',frmmenu.cdsCFG.FileName)=1;
  qrVendaItemRep.Close;
  qrVendaItemFracionadoRep.Close;

  qrVendaItemOpcional.Close;
  qrVendaItemFracionadoOpcional.Close;

  qrVendaItemRep.ParamByName('id_venda').AsInteger := cdsvenda.FieldByName('id_venda').AsInteger;
  qrVendaItemRep.ParamByName('emp').AsInteger := recproj.iEmp;
  qrVendaItemFracionadoRep.ParamByName('id_venda').AsInteger := cdsvenda.FieldByName('id_venda').AsInteger;
  qrVendaItemFracionadoRep.ParamByName('emp').AsInteger := recproj.iEmp;

  qrVendaItemOpcional.ParamByName('id_venda').AsInteger := cdsvenda.FieldByName('id_venda').AsInteger;
  qrVendaItemOpcional.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrVendaItemFracionadoOpcional.ParamByName('id_venda').AsInteger := cdsvenda.FieldByName('id_venda').AsInteger;
  qrVendaItemFracionadoOpcional.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrVendaItemOpcional.Open;
  qrVendaItemFracionadoOpcional.Open;

  qrCreceberFiado.Close;
  qrCreceberFiado.ParamByName('id_venda').AsInteger := cdsvenda.FieldByName('id_venda').AsInteger;
  qrCreceberFiado.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrCreceberFiado.Open;

  qrDadosCliente.Close;
  qrDadosCliente.ParamByName('id_cliente').value := cdsvenda.FieldByName('id_cliente').asinteger;
  qrDadosCliente.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrDadosCliente.Open;

  //query auxiliar para exibir cabeçalho e rodape no relatorio grafico
  qrAuxCabRod.Close;
  qrAuxCabRod.ParamByName('flag').asboolean := not suprimir_cabecalho_rodape_cupom ;
  qrAuxCabRod.Open;

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

  if modo_pos_delivery then
  begin

    if com_entregador then
      entregador := cdsVenda.FieldByName('nome_entregador').AsString
    else
      entregador :='';

    frmmenu.ImprimeCupomPOS(cdsVenda, qrDadosCliente, qrVendaItemRep,
                        qrVendaItemOpcional, qrVendaItemFracionadoRep,
                        qrVendaItemFracionadoOpcional, cdsParcelasPagamentos,
                        qrCreceberFiado, 1, '', sMensagemTxServico, '',
                        suprimir_cabecalho_rodape_cupom, entregador,
                        'DELIVERY', numero_vias );

  end
  else
  begin
    RepFechaConta.PrintOptions.Printer := sCamImpDelivery;
    RepFechaConta.Variables['sMensagemTxServico'] := QuotedStr(sMensagemTxServico);
    RepFechaConta.Variables['sSisDev'] := QuotedStr(recproj.sInfoDevSistema2);
    RepFechaConta.Variables['sSisVersao'] := QuotedStr(GetFileVersion(ParamStr(0)));
    if com_entregador then
    begin
      RepFechaConta.Variables['sMensagemRetBalcao'] := QuotedStr('');
      RepFechaConta.Variables['sEntregador'] := QuotedStr('Entregador: ' + cdsVendanome_entregador.AsString );
    end
    else
    begin
      RepFechaConta.Variables['sEntregador'] := QuotedStr('');
      if cdsVenda.FieldByName('b_taxa_entrega').AsBoolean then
        RepFechaConta.Variables['sMensagemRetBalcao'] := QuotedStr('')
      else
        RepFechaConta.Variables['sMensagemRetBalcao'] := QuotedStr('RETIRADA NO BALCÃO');
    end;
    RepFechaConta.LoadFromFile('C:\EliteFood\Relatorios\IMPRESSAODELIVERY.fr3');
    RepFechaConta.PrepareReport;
    for I := 1 to numero_vias do RepFechaConta.Print;
  end;
end;

procedure TfrmControleDeliveryFechamento.CarregaParametrosConfig;
begin
  sMensagemTxServico := LerStringConfig('EDMENSAGEMCUPOMDELIVERY', frmMenu.cdsCFG.FileName);
  sCamImpDelivery := LerStringConfig('CAMIMPDELIVERY', frmMenu.cdsCFG.FileName);
  ckImprimirCupom.Checked := LerBooleanConfig('PRE_FECHAMENTODELIVERYCKIMPCUPOM', frmMenu.cdsCFG.FileName);
  bTaxaAdicional :=  LerBooleanConfig('TAXAADICIONAL', frmMenu.cdsCFG.FileName);
  bImprimeCupomFechamento := LerBooleanConfig('CKIMPRIMIRCUPOMFECHAMENTODELIVERY', frmMenu.cdsCFG.FileName);
  bUtilizaGaveta := LerBooleanConfig('CKUTILIZAGAVETA',frmMenu.cdsCFG.FileName);
  cede_troco_enregador := LerBooleanConfig('CKCEDERTROCOENTREGADORDELIVERY',frmMenu.cdsCFG.FileName);
  suprimir_cabecalho_rodape_cupom := LerBooleanConfig('CKSUPRIMIRCABECALHORODAPEDELIVERY',frmMenu.cdsCFG.FileName);
  imprimir_cozinha := not LerBooleanConfig('CKNAOIMPRIMIRCOZINHADELIVERY',frmMenu.cdsCFG.FileName);
  nfce_contingencia := LerBooleanConfig('CKNFCEEMITIREMCONTINGENCIA',frmMenu.cdsCFG.FileName, false);
  sugerir_nfce_contingencia := LerBooleanConfig('CKNFCESUGERIRCONTINGENCIA',frmMenu.cdsCFG.FileName, false);
  bCaixinha :=  LerBooleanConfig('CKCAIXINHAENTREGADOR', frmMenu.cdsCFG.FileName);
end;

procedure  TfrmControleDeliveryFechamento.habilitaItemMenuFPag(var menuItem : TMenuItem ; id_formapgto : integer );
begin
  menuItem.Enabled:=true;
  menuItem.OnClick := PopupItemClick;
  menuItem.Tag := id_formapgto;
end;


procedure TfrmControleDeliveryFechamento.btCancelaClick(Sender: TObject);
begin
  tag:=0;
  close;
end;

procedure TfrmControleDeliveryFechamento.btChequeClick(Sender: TObject);
begin
  insereParcela(btCheque.Tag, 'Cheque', edValorPagamento.Value, edNroAutorizacao.Text, false);
end;

procedure TfrmControleDeliveryFechamento.btConfirmaClick(Sender: TObject);
var flag_dinheiro, finaliza_venda, venda_sat , flag_fiado, venda_nfce,
    utilizacontrolecliente, venda_ecf, erro_nfce : boolean;
    valor_dinheiro, troco, valor, valor_venda, valor_acrescimos,
    valor_descontos, valor_pago , valor_fiado, saldo_fiado, limite_fiado : double;
    str_sql , obs, cpf_consum, str_aux : string;
    id_caixa, id_venda, id_formapgto, id_encerravenda, item,
    id_cliente, status_venda, cod_conta_fiado, nro_venda,  int_aux , utilizacontrolesituacao: integer;
    FGerarCFe : GerarCFe;
    FGerarNFCe : GerarNFCe;
    FGerarECF : GerarECF;
    troco_insert: Double;
    troco_cliente:double;  //Inserir para mostrar o troco na grid
    bAchouFiscal: Boolean;

    procedure AbortaFechamento;
    begin
      btConfirma.Enabled:=true;
      abort;
    end;
begin
  bAchouFiscal:= false;
  venda_nfce:= false;
  venda_sat := false;
  btConfirma.Enabled:=false;
  cdsVendaCalcFields(nil);

  //verifica se o valor esta pago corretamente
  valor        := cdsVenda.FieldByName('valor_total_venda').AsFloat;
  valor_pago   := cdsVenda.FieldByName('total_pago').AsFloat;
  status_venda :=  cdsVenda.FieldByName('sit_001').asinteger;
  id_cliente   := cdsVenda.FieldByName('id_cliente').asinteger;
  nro_venda    := cdsVenda.FieldByName('nro_venda').AsInteger;
  id_venda     := cdsVenda.FieldByName('id_venda').AsInteger;

  // a comparação de duas variáveis do tipo float ( valor_pago < valor ) as vezes falha
  // para valores iguais. usando a comparação para a diferença entre os dois valores
  if (RoundTo((valor_pago - valor), -2)  < -0.001  ) then
  begin
    Application.messagebox('O valor recebido é inferior ao valor da venda!', 'Atenção', MB_ICONINFORMATION + mb_ok);
    AbortaFechamento;
  end;

  //verifica se há troco e se foi informado dinheiro
  troco := cdsVenda.FieldByName('valor_troco').AsFloat;

  if troco>0 then
  begin
    cdsParcelasPagamentos.First;
    flag_dinheiro:=false;
    valor_dinheiro:=0;
    while not cdsParcelasPagamentos.eof do
    begin
      if not flag_dinheiro then
      begin
        flag_dinheiro  := cdsParcelasPagamentos.FieldByName('dinheiro').AsBoolean;
        valor_dinheiro := cdsParcelasPagamentos.FieldByName('valor').AsFloat;
      end;
      cdsParcelasPagamentos.Next;
    end;

    if not flag_dinheiro then
    begin
      Application.messagebox('O valor recebido é superior ao valor da venda!', 'Atenção', MB_ICONINFORMATION + mb_ok);
      AbortaFechamento;
    end
    else
    begin
      if valor_dinheiro<troco then
      begin
        Application.messagebox('Não é possivel devolver troco pois o valor recebido em dinheiro é insuficiente!', 'Atenção', MB_ICONINFORMATION + mb_ok);
        AbortaFechamento;
      end;
    end;
  end;

  // 06/08/2018   Rafael     Tirei validação do caixinha- Agora é possivel dar caixinha sem que haja troco


  //faz o controle de fiado
  cdsParcelasPagamentos.First;
  flag_fiado := false;
  valor_fiado := 0;
  cod_conta_fiado := 0;
  while not cdsParcelasPagamentos.eof do
  begin
    if cdsParcelasPagamentos.FieldByName('fiado').AsBoolean then
    begin
      flag_fiado  := true;
      valor_fiado := valor_fiado + cdsParcelasPagamentos.FieldByName('valor').AsFloat;
      cod_conta_fiado := cdsParcelasPagamentos.FieldByName('id_conta').asInteger;
    end;
    cdsParcelasPagamentos.Next;
  end;

  if flag_fiado then
  begin
    // Inicio verificação da situação do cliente                Programador Rafael 27/04/2017
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
      Application.MessageBox('Não foi possível fazer a venda, cadastro do cliente está em observação!','Atenção',MB_ICONINFORMATION + mb_ok);
      edValorPagamento.SetFocus;
      abortafechamento;
    end
    else if utilizacontrolesituacao=3 then
    begin
       Application.MessageBox('Não foi possível fazer a venda, cadastro do cliente está inativo!','Atenção', MB_ICONINFORMATION +mb_ok);
       edvalorpagamento.SetFocus;
       abortafechamento;
    end
    else if utilizacontrolesituacao=4 then
    begin
      Application.MessageBox('Não foi possível fazer a venda, cadastro do cliente está no SPC!','Atenção',MB_ICONINFORMATION + mb_ok);
      edvalorpagamento.SetFocus;
      AbortaFechamento ;
    end
    else if utilizacontrolesituacao=5 then
    begin
     Application.MessageBox('Não foi possível fazer a venda, cadastro do cliente está Bloqueado!','Atenção',MB_ICONINFORMATION + mb_ok);
      edvalorpagamento.SetFocus;
      AbortaFechamento ;
    end;
   // Termino 27/04/2017   Rafael

    // buscar configuração controle de cliente se tem parcelas em atraso     inicio Rafael 20/04/2017
    str_sql:='select b_utiliza_controle_cliente from empresas where emp_001='+IntToStr( RecProj.iEmp);
    qrAux1.Close;
    qraux1.SQL.Clear;
    qraux1.SQL.Add(str_sql);
    qraux1.Open;
    utilizacontrolecliente:=qraux1.FieldByName('b_utiliza_controle_cliente').AsBoolean ;
    if utilizacontrolecliente=true then
    begin
      str_sql:=' select * from creceber where  id_situacao =4 and data_vencimento <localtimestamp '+
               ' and id_cliente ='+  IntToStr(id_cliente) + ' and id_empresa='+IntToStr(RecProj.iEmp);
      qraux1.Close;
      qraux1.SQL.Clear;
      qraux1.SQL.Add(str_sql);
      qraux1.Open;
      if qraux1.RecordCount>0 then
      begin
        if  Application.MessageBox('Cliente possui contas em atraso. Deseja fazer a venda mesmo com as parcelas em atraso?   ','Atenção',MB_ICONQUESTION+MB_YESNO)=mrYes then
        begin
          if not  frmMenu.ConfirmacaoSenha('b_libera_venda_conta_atraso', int_aux) then
          begin
            AbortaFechamento;
          end;
        end
        else
          AbortaFechamento;
      end;
    end;

    //verifica se há saldo pro cliente informado
    if not VerificaSaldoFiado(saldo_fiado, limite_fiado, id_cliente, recproj.iEmp, valor_fiado) then
    begin
      str_aux :=Format( 'O cliente %s não possui saldo suficente!' +#13#10+
                        'Saldo: %m' +#13#10+  'Limite: %m', [cdsVenda.FieldByName('nome_cliente').asstring ,saldo_fiado, limite_fiado ]) ;
      Application.messagebox(pchar(str_aux), 'Atenção', MB_ICONINFORMATION + mb_ok);
      AbortaFechamento;
    end;

    if venda_concluida then
    begin
      //chama o form de controle de fiado
      frmVendaFiadoCrediario := TfrmVendaFiadoCrediario.Create(self, id_venda, id_cliente , valor_fiado);
      frmVendaFiadoCrediario.edCodCliente.enabled := false;
      frmVendaFiadoCrediario.ShowModal;
      if frmVendaFiadoCrediario.Tag <> 1 then AbortaFechamento;
      id_cliente := frmVendaFiadoCrediario.id_cliente;
    end;
  end;

  //Tudo OK, concretiza a venda
  if venda_concluida then //delivery concluído
  begin
    //TEF - Bruno 02/08/2018
    cdsParcelasPagamentos.First;
    while not cdsParcelasPagamentos.eof do
    begin
      qrForma.Close;
      qrForma.ParamByName('emp').AsInteger    := RecProj.iEmp;
      qrForma.ParamByName('codigo').AsInteger := cdsParcelasPagamentosid_formapgto.AsInteger;
      qrForma.Open;

      if qrFormab_tef.AsBoolean then
      begin
        try
          chamaTef(qrForma.FieldByName('cnpjCred').AsString,
                   qrForma.FieldByName('bandeira_cartao').AsString,
                   '1',
                   IntToStr(nro_venda),
                   cdsParcelasPagamentosvalor.AsFloat);
        except
          AbortaFechamento;
        end;
      end;

      cdsParcelasPagamentos.Next;
    end;

    //Verifica se abre a tela Menu Fiscal - Bruno (27/04/2018)
    if not LerBooleanConfig('ckOcultar_menu_fiscal',frmMenu.cdsCFG.FileName)then
    begin
      frmChamaFiscal := TfrmChamaFiscal.Create(self);
      frmChamaFiscal.ShowModal;
      finaliza_venda := frmChamaFiscal.Tag=1;
      venda_sat      := frmChamaFiscal.forma_selecionada = 'SAT';
      venda_nfce     := frmChamaFiscal.forma_selecionada = 'NFCE';
      venda_ecf      := frmChamaFiscal.forma_selecionada = 'ECF';
      frmChamaFiscal.Free;
    end
    else
    begin
      //Verifica se alguma forma emite fiscal - Bruno (27/04/2018)
      cdsParcelasPagamentos.First;
      while not (cdsParcelasPagamentos.Eof) and (not bAchouFiscal) do
      begin
        qrAuxiliar.Close;
        qrAuxiliar.SQL.Text:= 'select emite_fiscal, tipo_fiscal from formapgto where for_001 = :forma';
        qrAuxiliar.ParamByName('forma').AsInteger:= cdsParcelasPagamentosid_formapgto.AsInteger;
        qrAuxiliar.Open;

        if (qrAuxiliar.FieldByName('emite_fiscal').AsBoolean = False) or (qrAuxiliar.FieldByName('tipo_fiscal').AsInteger = 0) then
          bAchouFiscal:= False
        else
          bAchouFiscal:= True;

        cdsParcelasPagamentos.Next;
      end;

      finaliza_venda := true;
      venda_sat      := (qrAuxiliar.FieldByName('emite_fiscal').AsBoolean) and (qrAuxiliar.FieldByName('tipo_fiscal').AsInteger = 1);
      venda_ecf      := (qrAuxiliar.FieldByName('emite_fiscal').AsBoolean) and (qrAuxiliar.FieldByName('tipo_fiscal').AsInteger = 2);
      venda_nfce     := (qrAuxiliar.FieldByName('emite_fiscal').AsBoolean) and (qrAuxiliar.FieldByName('tipo_fiscal').AsInteger = 3) and LerBooleanConfig('CKATIVARNFCE', frmMenu.cdsCFG.FileName);
    end
  end
  else
  begin
    finaliza_venda := true;
    venda_sat      := false;
    venda_ecf      := false;
    venda_nfce     := false;
  end;

  if finaliza_venda then
  begin
    id_caixa         := cdsVenda.FieldByName('id_caixa').AsInteger;
    valor_venda      := cdsVenda.FieldByName('valor_total_venda').AsFloat;
    valor_acrescimos := cdsVenda.FieldByName('valor_tx').AsFloat;
    valor_descontos  := cdsVenda.FieldByName('desconto').AsFloat;
    valor            := cdsVenda.FieldByName('valor_total_venda').AsFloat;
    cpf_consum       := cdsVenda.FieldByName('cpf_cliente').asstring;

    if not venda_concluida then //delivery em processo, pendente, apenas atualiza a venda, o pagamento sera feito posteriormente
    begin
      //atualiza dados da venda: valor total, desconto, cpf do cliente, caixinha
      str_sql:='update venda set ven_007=:desconto , ven_009=:valor_venda , cpf_cliente = :cpf, caixinha_entregador = :caixinha where ven_001=:id_venda and emp_001=:emp';
      ExecutaComandoSQL(str_sql, vararrayof([valor_descontos,valor, cdsVenda.FieldByName('cpf_cliente').asstring, edCaixinha.Value, id_venda,RecProj.iEmp]));

      // reinsere os pagamentos antecipados
      str_sql:='delete from venda_pag_antecipado where id_venda=:id_venda and id_empresa=:id_empresa';
      ExecutaComandoSQL(str_sql, vararrayof([id_venda,RecProj.iEmp]));
      cdsParcelasPagamentos.First;
      while not cdsParcelasPagamentos.Eof do
      begin
        valor:= cdsParcelasPagamentos.FieldByName('valor').AsFloat;
        obs:= cdsParcelasPagamentos.FieldByName('nro_autorizacao').AsString;
        id_formapgto := cdsParcelasPagamentos.FieldByName('id_formapgto').asinteger;
        str_sql := ' insert into venda_pag_antecipado (id_venda, id_empresa, valor, id_formapgto, observacao) '+
                   ' values (:id_venda, :id_empresa, :valor, :id_forma , :obs)';
        ExecutaComandoSQL(str_sql, vararrayof([id_venda,RecProj.iEmp,valor,id_formapgto,obs ]));
        cdsParcelasPagamentos.Next;
      end;

      //Muda o flag de pendende para impressão para cozinha
      if imprimir_cozinha then
      begin
        str_sql :=' UPDATE VENDAITEM SET ITE_011 = ''S'' where ' +
                  ' VEN_001=%d and emp_001=%d and ite_008= ''N'' ' ;
        ExecutaComandoSQL(format(str_sql, [id_venda, RecProj.iEmp]));
      end;

      if ckImprimirCupom.Checked then ImprimirRelatorio;

    end
    else   //senão, finalizar a venda de fato
    begin
      AtualizaNumeroCupom(id_venda);
      cdsParcelasPagamentos.First;
      id_formapgto := cdsParcelasPagamentos.FieldByName('id_formapgto').AsInteger;
      //insere os dados de encerramento da venda
      //campos: id_encerramento, id_empresa, id_venda, id_cliente
      //        data encerramento, valor, forma de pgto, situacao
      str_sql := ' insert into encerravenda (enc_001, emp_001, ven_001 , cli_001, '+
                 ' enc_002, enc_003, for_001, sit_001, enc_006, enc_007, VEN_CPFCONSUM ) '+
                 ' values ((select coalesce(max(enc_001),0)+1 from encerravenda where emp_001=:emp), '+
                 ' :emp , :id_venda, :id_cliente , localtimestamp,  :valor , '+
                 ' :id_forma, 1, :acrescimos, :descontos, :cpf )';
      ExecutaComandoSQL(str_sql, CriaVariantArray([RecProj.iEmp,id_venda, 0, valor,
                        id_formapgto, valor_acrescimos, valor_descontos, cpf_consum ]));
      ExecutaConsultaSQL(qrAux1, 'select max(enc_001) from encerravenda where emp_001='+IntToStr(RecProj.iEmp));
      id_encerravenda:= qrAux1.Fields[0].AsInteger;

      item:=1;
      while not cdsParcelasPagamentos.Eof do
      begin
        valor:= cdsParcelasPagamentos.FieldByName('valor').AsFloat;

        //se houver troco, corrige o valor em dinheiro
        if (troco>0) and (cdsParcelasPagamentos.FieldByName('dinheiro').AsBoolean) then
        begin
          valor:= valor - troco;
          troco_insert:=  troco;
        end
        else
          troco_insert:= 0;

        obs:= cdsParcelasPagamentos.FieldByName('nro_autorizacao').AsString;
        id_formapgto := cdsParcelasPagamentos.FieldByName('id_formapgto').asinteger;

        //insere os dados de item encerramento de venda
        //campos: id_empresa, id_encerramento, id item encerramento, data lançamento,
        //        nro item encerramento, valor, acrescimo, id formapgto
        str_sql := ' insert into encerravendaitem (emp_001, enc_001, ite_001, ite_002, '+
                   ' ite_004, ite_003, ite_005, id_formapgto, troco_dinheiro, autorizacao) ' +
                   ' values (:emp, :id_encerravenda, '+
                   ' :item, localtimestamp, :item,  :valor, 0, :id_forma, :troco_dinheiro, :autorizacao);';
        ExecutaComandoSQL(str_sql, CriaVariantArray([RecProj.iEmp, id_encerravenda, item, valor, id_formapgto, troco_insert, cdsParcelasPagamentos.FieldByName('nro_autorizacao').AsString]));
        //Insere laçamento no caixa
        InserirCaixaItem(id_caixa, id_formapgto, valor, 'E',obs, id_venda, id_encerravenda, item);

        cdsParcelasPagamentos.Next;

        item:=item +1;
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
        frmVendaFiadoCrediario.free;
      end;

      // SAT
      if venda_sat then
      begin
        try
          FGerarCFe := GerarCFe.Create;
          finaliza_venda := FGerarCFe.Autorizar(id_venda, RecProj.iEmp);
          if not finaliza_venda then
            Application.MessageBox(pchar( 'Código erro SAT: '+ IntToStr(FGerarCFe.codigoRet) + #13#10 + FGerarCFe.mensagem), 'Atenção', MB_ICONWARNING);
          FGerarCFe.Free;
        except
          on E : Exception do
          begin
            finaliza_venda := false;
            Application.MessageBox(pchar('Problema ao comunicar-se com o SAT. Detalhes do erro:'+#13#10+E.Message),'Atenção', mb_iconerror );
          end;
        end;
      end
      else if venda_nfce then
      begin

        //tenta emitir uma vez, se falhar, tenta de novo em contingencia se configurado
        try
          FGerarNFCe := GerarNFCe.Create;
          erro_nfce := false;
          //se for marcado para emitir em contingencia, já cria nfce dessa forma de uma vez...
          if nfce_contingencia then
          begin
            finaliza_venda := FGerarNFCe.Autorizar(id_venda, RecProj.iEmp, true);
          end
          else
          begin
            finaliza_venda := FGerarNFCe.Autorizar(id_venda, RecProj.iEmp, false);
          end;
          FGerarNFCe.Free;
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
              finaliza_venda := FGerarNFCe.Autorizar(id_venda, RecProj.iEmp, true);
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
          finaliza_venda := FGerarECF.Emitir(id_venda, RecProj.iEmp);
          if not finaliza_venda then
            Application.MessageBox(pchar(FGerarECF.mensagem), 'Atenção', MB_ICONWARNING);
          FGerarECF.Free;
        except
          on E : Exception do
          begin
            finaliza_venda := false;
            Application.MessageBox(pchar('Problema ao gerar cupom fiscal. Detalhes do erro:'+#13#10+E.Message),'Atenção', mb_iconerror );
          end;
        end;
      end;

      if not finaliza_venda then // desfaz os lançamentos
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
          InserirMovimentoProduto( qrVendaItem.FieldByName('id_produto').AsInteger, //Id produto
                                   qrVendaItem.FieldByName('qtdevenda').AsFloat,    //quantidade
                                   'S','', RecProj.iUsuario, //tipo movimento, observação, usuario
                                   qrVendaItem.FieldByName('id_venda').AsInteger, // id venda
                                   qrVendaItem.FieldByName('nro_item').AsInteger, //id venda item
                                   'M', true, 0, 0, 0, date+time, false, qrVendaItem.FieldByName('utiliza_combo').AsBoolean, //tipo de material, movimenta composicao, id fornecedor, valor de custo, valor de venda, data movimento , atualiza valor de venda
                                   qrVendaItem.FieldByName('id_setor').AsInteger);
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


        if (bImprimeCupomFechamento and (not (venda_sat or venda_nfce or venda_ecf ))) or ( bImprimeCupomFechamento and flag_fiado ) then
          ImprimirRelatorio(false,1);

        if cede_troco_enregador and (CompareValue(troco, 0)=1) and (id_entregador>0 )then
        begin
          str_aux := format('Deseja ceder o troco de RS %.2f ao entregador %s?',[troco, nome_entregador]);
          if application.MessageBox(pchar(str_aux), 'Atenção', MB_ICONQUESTION+ mb_yesno)=mrYes then
          begin
            str_sql := ' insert into trocogarcom (id_caixa, id_empresa, id_usuario, id_venda, valor) '+
                       ' values (:id_caixa, :id_empresa, :id_usuario, :id_venda, :valor) ';
            ExecutaComandoSQL(str_sql, vararrayof([id_caixa, recproj.iEmp,
                                                   id_entregador, id_venda,troco]));
          end;
        end;

        if bUtilizaGaveta then frmmenu.AbrirGaveta;

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
      end;
    end;
    GravaBooelanConfig('PRE_FECHAMENTODELIVERYCKIMPCUPOM', ckImprimirCupom.Checked, frmMenu.cdsCFG.FileName);
    self.Tag:=1;
    close;
  end;
  btConfirma.Enabled:=true;
end;

procedure TfrmControleDeliveryFechamento.btCreditoClick(Sender: TObject);
var lPoint : tpoint;
begin
  lPoint := btCredito.ClientToScreen(Point(0,0));
  pmCredito.Popup(lPoint.X, lPoint.Y+btCredito.Height );
end;

procedure TfrmControleDeliveryFechamento.btDebitoClick(Sender: TObject);
var lPoint : tpoint;
begin
  lPoint := btDebito.ClientToScreen(Point(0,0));
  pmDebito.Popup(lPoint.X, lPoint.Y+btDebito.Height );
end;

procedure TfrmControleDeliveryFechamento.btDinheiroClick(Sender: TObject);
begin
  insereParcela(btDinheiro.Tag, 'DINHEIRO', edValorPagamento.Value,edNroAutorizacao.Text, true);
end;

procedure TfrmControleDeliveryFechamento.btFiadoClick(Sender: TObject);
begin
  insereParcela(btFiado.Tag, 'FIADO', edValorPagamento.Value, edNroAutorizacao.Text, false, false, true);
end;

procedure TfrmControleDeliveryFechamento.btn1Click(Sender: TObject);
begin
RepFechaConta.LoadFromFile('C:\EliteFood\Relatorios\IMPRESSAODELIVERY.fr3');
RepFechaConta.DesignReporT;
end;

procedure TfrmControleDeliveryFechamento.btOutrosClick(Sender: TObject);
var lPoint : tpoint;
begin
  lPoint := btOutros.ClientToScreen(Point(0,0));
  pmOutros.Popup(lPoint.X, lPoint.Y+btOutros.Height);
end;

procedure TfrmControleDeliveryFechamento.Button1Click(Sender: TObject);
var FGerarCFe : GerarCFe;
begin
  FGerarCFe := GerarCFe.Create;
  FGerarCFe.Cancelar(cdsVendaid_venda.AsInteger, RecProj.iEmp);
  FGerarCFe.Free;
end;

procedure TfrmControleDeliveryFechamento.cdsParcelasPagamentosAfterDelete(
  DataSet: TDataSet);
begin
  CalculaValorPago;
end;

procedure TfrmControleDeliveryFechamento.cdsParcelasPagamentosAfterPost(
  DataSet: TDataSet);
begin
  CalculaValorPago;
end;

procedure TfrmControleDeliveryFechamento.CalculaValorPago(flag_outros : boolean = false);
var  restante, troco : double;
begin
  cdsVendaCalcFields(nil);
  troco:=0;
  if VarIsNull(cdsParcelasPagamentos.Aggregates[0].Value) then
    cdsVenda.FieldByName('total_pago').AsFloat:=0
  else
    cdsVenda.FieldByName('total_pago').AsFloat:= cdsParcelasPagamentos.Aggregates[0].Value;

  restante := cdsVenda.FieldByName('valor_total_venda').AsFloat - cdsVenda.FieldByName('total_pago').AsFloat;
  if restante<0 then
  begin
    troco:=restante*(-1);
    restante:=0;
  end;
  cdsVenda.FieldByName('valor_restante').AsFloat:= roundto(restante,-3);
  cdsVenda.FieldByName('valor_troco').AsFloat:=roundto(troco,-3);
  if restante<=0 then
  begin
    btOutros.Enabled:=false;
    btDinheiro.Enabled:=false;
    btDebito.Enabled:=false;
    btCredito.Enabled:=false;
    btCheque.Enabled:=false;
    btFiado.Enabled :=false;
  end
  else
  carregaPagamentosBotoes;
  edNroAutorizacao.Clear;
  edValorPagamento.Value:= cdsVenda.FieldByName('valor_restante').AsFloat;

  if not flag_outros then
  if self.Visible then
    edValorPagamento.SetFocus;
end;

procedure TfrmControleDeliveryFechamento.cdsVendaCalcFields(DataSet: TDataSet);   //calcula Valor da venda + taxa de entrega e menos desconto
begin
  cdsVenda.FieldByName('valor_total_venda').AsFloat:= roundto(
                                      cdsVenda.FieldByName('valor_venda').AsFloat +
                                      cdsVenda.FieldByName('valor_tx').AsFloat -
                                      cdsVenda.FieldByName('desconto').AsFloat, -2);
  cdsVenda.FieldByName('data_atual').AsDateTime := Date + Time;
end;


procedure TfrmControleDeliveryFechamento.cdsVendacpf_clienteChange(
  Sender: TField);
begin
  if not (Valida_CPF(Sender.AsString) or  Valida_CNPJ(Sender.AsString) ) then
  begin
    Application.MessageBox('CPF/CNPJ inválido', 'Atenção', MB_ICONINFORMATION);
  end;
end;

procedure TfrmControleDeliveryFechamento.cdsVendadeconto_percentChange(
  Sender: TField);
begin
  CalculaValorPago(true);
end;

procedure TfrmControleDeliveryFechamento.cdsVendadescontoChange(Sender: TField);
begin
  CalculaValorPago(true);
end;

procedure TfrmControleDeliveryFechamento.cdsVendanro_couvert_fChange(
  Sender: TField);
begin
  CalculaValorPago(true);
end;

procedure TfrmControleDeliveryFechamento.cdsVendanro_couvert_mChange(
  Sender: TField);
begin
  CalculaValorPago(true);
end;

procedure TfrmControleDeliveryFechamento.carregaPagamentosBotoes;
var str_sql : string;
    menuItem : TMenuItem;
    i: integer;
begin
{ Tipos de forma de pagamento SAT
1, Dinheiro
2, Cheque
3, Cartao de Crédito
4, Cartao de Débito
5, Crédito Loja
6, Vale Alimentação
7, Vale Refeição
8, Vale Presente
9, Vale Combustivel
10,Outros}
  pmOutros.Items.Clear;
  for I := 0 to pmCredito.Items.Count-1 do pmCredito.Items[i].Enabled:=false;
  for I := 0 to pmDebito.Items.Count-1 do pmDebito.Items[i].Enabled:=false;

  str_sql := ' select for_001, emp_001, for_002, (sfi_codigo = 3) as credito, '+
             ' (sfi_codigo = 4) as debito, (sfi_codigo = 2) as cheque, b_fiado as fiado, '+
             ' (sfi_codigo = 1) as dinheiro, bandeira_cartao from formapgto where sit_001=4 and emp_001='+IntToStr(RecProj.iEmp)+
             ' and ( (b_fiado and id_conta is not null ) or (not b_fiado) ) and (not b_devolucao) ';
  ExecutaConsultaSQL(qrAux1, str_sql);
  qrAux1.First;
  while not qrAux1.Eof  do
  begin
    //preenche os dados do botao de dinheiro apenas uma vez
    if qrAux1.FieldByName('dinheiro').AsBoolean then
    begin
      if not btDinheiro.Enabled then
      begin
        btDinheiro.Enabled:=true;
        btDinheiro.Tag:=qrAux1.FieldByName('for_001').AsInteger;
      end;
    end;

    //habilita os botoes para credito
    if qrAux1.FieldByName('credito').AsBoolean then
    begin
      btCredito.Enabled:=true;
      if qrAux1.FieldByName('bandeira_cartao').AsString='M' then
        habilitaItemMenuFPag(icMasterCard,qrAux1.FieldByName('for_001').AsInteger);
      if qrAux1.FieldByName('bandeira_cartao').AsString='V' then
        habilitaItemMenuFPag(icVisa,qrAux1.FieldByName('for_001').AsInteger);
      if qrAux1.FieldByName('bandeira_cartao').AsString='A' then
        habilitaItemMenuFPag(icAmericanExpress,qrAux1.FieldByName('for_001').AsInteger);
      if qrAux1.FieldByName('bandeira_cartao').AsString='O' then
        habilitaItemMenuFPag(icOutro,qrAux1.FieldByName('for_001').AsInteger);
    end;

    //habilita os botoes para débito
    if qrAux1.FieldByName('debito').AsBoolean then
    begin
      btDebito.Enabled:=true;
      if qrAux1.FieldByName('bandeira_cartao').AsString='M' then
        habilitaItemMenuFPag(idMasterCard,qrAux1.FieldByName('for_001').AsInteger);
      if qrAux1.FieldByName('bandeira_cartao').AsString='V' then
        habilitaItemMenuFPag(idVisa,qrAux1.FieldByName('for_001').AsInteger);
      if qrAux1.FieldByName('bandeira_cartao').AsString='A' then
        habilitaItemMenuFPag(idAmericanExpress,qrAux1.FieldByName('for_001').AsInteger);
      if qrAux1.FieldByName('bandeira_cartao').AsString='O' then
        habilitaItemMenuFPag(idOutro,qrAux1.FieldByName('for_001').AsInteger);
    end;
    //cheque
    if qrAux1.FieldByName('cheque').AsBoolean then
    begin
      if not btCheque.Enabled then
      begin
        btCheque.Enabled:=true;
        btCheque.Tag:=qrAux1.FieldByName('for_001').AsInteger;
      end;
    end;
    //Fiado
    if qrAux1.FieldByName('fiado').AsBoolean then
    begin
      if not btFiado.Enabled then
      begin
        btFiado.Enabled:=true;
        btFiado.Tag:=qrAux1.FieldByName('for_001').AsInteger;
      end;
    end;
    //adiciona as outras forma de pagamento ao botao outro
    // se nao for dinheiro, cartao, cheque ou fiado
    if not ( qrAux1.FieldByName('dinheiro').AsBoolean or qrAux1.FieldByName('credito').AsBoolean or
             qrAux1.FieldByName('debito').AsBoolean or qrAux1.FieldByName('cheque').AsBoolean or
             qrAux1.FieldByName('fiado').AsBoolean ) then
    begin
      btOutros.Enabled:=true;
      //adiciona um item de menu ao pop up
      menuItem:= TMenuItem.Create(pmOutros);
      menuItem.Caption := qrAux1.FieldByName('for_002').AsString ;
      menuItem.Tag := qrAux1.FieldByName('for_001').AsInteger ;
      menuItem.OnClick := PopupItemClick;
      pmOutros.Items.Add(menuItem) ;
    end;
    qrAux1.Next;
  end;
end;

constructor TfrmControleDeliveryFechamento.Create (Sender : TComponent ; id_venda : integer; concluir_venda : boolean = false);
var str_sql : string;
    query_aux : TUniQuery;
begin
  inherited create(sender);

  venda_concluida := concluir_venda;
  cdsVenda.Close;
  qrVenda.Close;
  qrVenda.ParamByName('id_venda').AsInteger:=id_venda;
  qrVenda.ParamByName('emp').AsInteger:=RecProj.iEmp;
  qrVenda.ParamByName('id_caixa').AsInteger := RecProj.iIDCaixa;

  qrVendaItem.Close;
  qrVendaItem.ParamByName('id_venda').AsInteger:=id_venda;
  qrVendaItem.ParamByName('emp').AsInteger:=RecProj.iEmp;
  qrVendaItem.Open;

  //localiza as formas de pagamento e atribui a id às tags dos botoes
  carregaPagamentosBotoes;

  cdsParcelasPagamentos.CreateDataSet;
  cdsParcelasPagamentos.Open;

  cdsVenda.Open;
  cdsVenda.Edit;
  cdsVenda.FieldByName('valor_venda').AsFloat:= TotalItensVenda(id_venda);;
  cdsVenda.FieldByName('valor_restante').AsFloat:=
    cdsVenda.FieldByName('valor_total_venda').AsFloat;
  edValorPagamento.Value:= cdsVenda.FieldByName('valor_restante').AsFloat;
  edDescontoValor.MaxValue:= cdsVenda.FieldByName('valor_total_venda').AsFloat;

  query_aux := TUniQuery.Create(self);
  query_aux.Connection:=frmMenu.conexao;
  // busca os pagamentos antecipados para a venda selecionada
  str_sql:=' select vpa.id_formapgto, vpa.valor, f.for_002 as desc_forma, f.id_conta, '+
           ' f.b_fiado, f.sfi_codigo=1 as dinheiro from venda_pag_antecipado vpa '+
           ' join formapgto f on f.emp_001=vpa.id_empresa and f.for_001=vpa.id_formapgto '+
           ' where vpa.id_situacao=4 and vpa.id_venda='+IntToStr(id_venda)+' and vpa.id_empresa='+IntToStr(RecProj.iEmp);
  ExecutaConsultaSQL(query_aux, str_sql);
  query_aux.First;
  while not query_aux.Eof  do
  begin
    insereParcela(query_aux.FieldByName('id_formapgto').AsInteger,
                  query_aux.FieldByName('desc_forma').AsString,
                  query_aux.FieldByName('valor').AsFloat, '',
                  query_aux.FieldByName('dinheiro').AsBoolean,
                  true,
                  query_aux.FieldByName('b_fiado').AsBoolean);
    query_aux.Next;
  end;
  ckImprimirCupom.Visible:= not venda_concluida;
  CarregaParametrosConfig;
end;

procedure TfrmControleDeliveryFechamento.cxEditRepository1ButtonItem1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if Application.MessageBox('Deseja excluir o registro?', 'Atenção', MB_ICONQUESTION + mb_yesno)=mryes then
    cdsParcelasPagamentos.Delete;
end;

procedure TfrmControleDeliveryFechamento.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   if Application.MessageBox('Deseja excluir o registro?', 'Atenção', MB_ICONQUESTION + mb_yesno)=mryes then
    cdsParcelasPagamentos.Delete;
end;

procedure TfrmControleDeliveryFechamento.cxGrid2DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
 showmessage('teste');
end;

procedure TfrmControleDeliveryFechamento.delPagamentoExecute(Sender: TObject);
begin
  if Application.MessageBox('Deseja exluir o registro?', 'Atenção', MB_ICONQUESTION + mb_yesno)=mryes then
    cdsParcelasPagamentos.Delete;
end;

procedure TfrmControleDeliveryFechamento.este1Click(Sender: TObject);
begin
  showmessage(tcomponent(sender).Name );
end;

procedure TfrmControleDeliveryFechamento.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=vk_return then
  begin
    if lowercase(ActiveControl.Name)='edvalorpagamento' then
    begin
      if cdsVenda.FieldByName('valor_restante').AsFloat=0 then
        begin
          if btConfirma.CanFocus then btConfirma.SetFocus
        end
      else
      begin
        if btDinheiro.CanFocus then btDinheiro.SetFocus;
      end;
    end
    else
      Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmControleDeliveryFechamento.FormShow(Sender: TObject);
begin
  StatusTransacao := false;
  TransacaoComTef := false;

  grCaixinha.Visible:= bCaixinha;

  edValorPagamento.SetFocus;
end;

procedure TfrmControleDeliveryFechamento.teste21Click(Sender: TObject);
begin
  showmessage(tcomponent(sender).Name );
end;

 procedure TfrmControleDeliveryFechamento.PopupItemClick(Sender: TObject) ;
 var str_aux : string;
 begin
  if NOT (Sender is TMenuItem) then exit;
  str_aux :='';

  //opcões de cartao
  if ((TMenuItem(sender).Name='icMasterCard') or
        (TMenuItem(sender).Name= 'icVisa') or
        (TMenuItem(sender).Name= 'icAmericanExpress') or
        (TMenuItem(sender).Name= 'icOutro')) then str_aux := 'Crédito '
  else if ((TMenuItem(sender).Name='idMasterCard') or
        (TMenuItem(sender).Name= 'idVisa') or
        (TMenuItem(sender).Name= 'idAmericanExpress') or
        (TMenuItem(sender).Name= 'idOutro')) then str_aux := 'Débito ';

  qrForma.Close;
  qrForma.ParamByName('emp').AsInteger    := RecProj.iEmp;
  qrForma.ParamByName('codigo').AsInteger := TMenuItem(sender).tag;
  qrForma.Open;

  if (qrFormatipo_integracao.AsInteger = 1) then
  begin
    if qrFormab_tef.AsBoolean = False then
    begin
      if edNroAutorizacao.Text = EmptyStr then
      begin
        Application.MessageBox('Informe a Autorização de Operação!', 'Atenção', mb_iconinformation);
        edNroAutorizacao.SetFocus;
        Abort;
      end;
    end;

    if qrFormacnpjcred.AsString = '' then
    begin
      Application.MessageBox('CNPJ Credenciadora Cartão não cadastrado.' + #13 +
                             'Verifique o cadastro da forma de pagamento!', 'Atenção', mb_iconinformation);
      Abort;
    end;
  end;

  insereParcela(TMenuItem(sender).tag, trim(StringReplace(  str_aux + TMenuItem(sender).Caption, '&', '', [])), edValorPagamento.Value, edNroAutorizacao.Text);
end;

procedure TfrmControleDeliveryFechamento.qrVendaItemBeforeOpen(DataSet: TDataSet);
begin
  if bTaxaAdicional then
    qrVendaItem.ParamByName('flag_taxa_10').AsInteger:=1
  else
    qrVendaItem.ParamByName('flag_taxa_10').AsInteger:=0;
end;

procedure TfrmControleDeliveryFechamento.insereParcela(id_formapgto : integer;
                                        desc_formapgto : string; valor : double;
                                        nro_autorizacao : string ='' ;
                                        flag_dinheiro : boolean = false;
                                        flag_antecipado : boolean = false;
                                        flag_fiado : boolean = false);
var inserir : boolean;
    cod_conta_fiado : integer;
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
    if cdsParcelasPagamentos.Locate('id_formapgto;antecipado ', vararrayof([id_formapgto ,true]), [] ) then
      begin
        inserir:=false;
        cdsParcelasPagamentos.Edit;
        cdsParcelasPagamentos.FieldByName('valor').AsFloat:= valor +         //
                             cdsParcelasPagamentos.FieldByName('valor').AsFloat;
        cdsParcelasPagamentos.post;
      end;
  end;

  //agrupa os valores fiado
  if flag_fiado then
  begin
    BuscaCampo(cod_conta_fiado,format('select id_conta from formapgto where for_001 =%d and emp_001=%d',
               [id_formapgto, recproj.iEmp]), '', false);

    if cdsParcelasPagamentos.Locate('id_formapgto ', vararrayof([id_formapgto]), [] ) then
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
    if flag_fiado then
      cdsParcelasPagamentos.FieldByName('id_conta').AsInteger:=cod_conta_fiado;
    cdsParcelasPagamentos.post;
  end;
end;


procedure TfrmControleDeliveryFechamento.edDescontoValorExit(Sender: TObject);
begin
  aplicaDesconto(2);
end;

procedure TfrmControleDeliveryFechamento.edDescontoPercentExit(Sender: TObject);
begin
  aplicaDesconto(1);
  edDescontoValorExit(nil); //Calcular o valor restante - Bruno 08/02/2018
end;

procedure TfrmControleDeliveryFechamento.acAbrirGavetaExecute(Sender: TObject);
begin
  if bUtilizaGaveta then frmMenu.AbrirGaveta;
end;

procedure TfrmControleDeliveryFechamento.aplicaDesconto(tipo : integer = 1);
var valor : double;
begin
  //desconto por porcentagem
  if tipo=1 then
  begin
    valor:= ( cdsVenda.FieldByName('valor_venda').AsFloat +
    cdsVenda.FieldByName('valor_tx').AsFloat  ) *
        (cdsVenda.FieldByName('desconto_percent').AsFloat / 100);
    cdsVenda.FieldByName('desconto').AsFloat:=roundto(valor, -2);
  end
  //desconto por valor
  else
  begin
    valor:= (cdsVenda.FieldByName('desconto').AsFloat / ( cdsVenda.FieldByName('valor_venda').AsFloat +
    cdsVenda.FieldByName('valor_tx').AsFloat )) * 100;
    cdsVenda.FieldByName('desconto_percent').AsFloat:=valor;
  end;
end;

procedure TfrmControleDeliveryFechamento.chamaTef(cnpjCred, bandeira, campo, numVenda : string; valorInformado : currency);
var index : integer;
begin
  index := 0;

  if RecProj.dTEF_TIPO > 0 then
    index := RecProj.dTEF_TIPO
  else
    index := 1;

  try
    FTEF.ACBrTEFDNFCe.BloquearMouseTeclado(true);

    if Assigned(frmControleDeliveryFinaliza) then
    begin
      frmControleDeliveryFinaliza.pAguardeTef.Visible := true;
      frmControleDeliveryFinaliza.pAguardeTef.repaint;
    end;

    FTef.valorInformado := valorInformado;
    FTef.campo := campo;

    if not FTef.ACBrTEFDNFCe.Inicializado then
      FTef.ACBrTEFDNFCe.Inicializar(TACBrTEFDTipo(index));

    StatusTransacao := True;
  except
    FTEF.ACBrTEFDNFCe.BloquearMouseTeclado(false);

    if Assigned(frmControleDeliveryFinaliza) then
      frmControleDeliveryFinaliza.pAguardeTef.Visible := false;

    Application.MessageBox(
      'GP para tipo de pagamento solicitado não instalado.',
      'Informação do Sistema', MB_OK + MB_ICONINFORMATION);

    StatusTransacao := False;
  end;

  try
    FTEF.ACBrTEFDNFCe.BloquearMouseTeclado(false);
    StatusTransacao := FTEF.ACBrTEFDNFCe.CRT(ValorInformado, '02', numVenda);

    if Assigned(frmControleDeliveryFinaliza) then
    begin
      frmControleDeliveryFinaliza.MemoCupomTEF.Visible := true;
      frmControleDeliveryFinaliza.pAguardeTef.Visible := false;
    end;

    FTEF.ACBrTEFDNFCe.BloquearMouseTeclado(true);
  except
    On E: exception do
    begin
      BlockInput(false);
      StatusTransacao := False;
      TransacaoComTef := False;
      ShowMessage(E.ClassName + 'ERRO: ' + E.Message);

      if Assigned(frmControleDeliveryFinaliza) then
        frmControleDeliveryFinaliza.pAguardeTef.Visible := false;
    end;
  end;

  if StatusTransacao then
  begin
    TransacaoComTef := True;

    if campo = '1' then
    begin
      cdsParcelasPagamentos.Edit;
      cdsParcelasPagamentosnro_autorizacao.AsString:= FTef.ACBrTEFDNFCe.RespostasPendentes[IndiceTransacaoTef].CodigoAutorizacaoTransacao;
      cdsParcelasPagamentos.Post;
    end;

    FTef.estadoSimuladoEcf := tpsLivre;
    FTef.ACBrTEFDNFCe.ImprimirTransacoesPendentes;
  end;
  BlockInput(false);
end;

end.

