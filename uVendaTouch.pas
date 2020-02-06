unit uVendaTouch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Touch.Keyboard,
  Vcl.ExtCtrls, AdvSmoothTouchKeyBoard, Vcl.DBCGrids, Data.DB, MemDS, DBAccess,
  Uni, AdvGlowButton, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  System.Actions, Vcl.ActnList, Vcl.DBCtrls, cxContainer, dxGDIPlusClasses,
  cxImage, Vcl.Imaging.pngimage, cxLabel, cxDBLabel, AdvGroupBox, AdvPanel,
  Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  TfrmVendaTouch = class(TForm)
    qrVendaMesa: TUniQuery;
    qrVendaMesaid_mesa: TIntegerField;
    qrVendaMesaid_venda: TIntegerField;
    qrVendaMesanro_mesa: TIntegerField;
    qrVendaMesadescricao_mesa: TWideStringField;
    qrVendaMesavalor_venda: TFloatField;
    qrVendaMesastatus: TIntegerField;
    qrVendaMesacod_venda: TIntegerField;
    qrVendaMesadesc_status: TWideStringField;
    qrVendaMesanro_nome_mesa: TWideStringField;
    qrVendaMesaobs_mesa: TWideStringField;
    qrVendaMesanome_reserva: TWideStringField;
    qrVendaMesatelefone_reserva: TWideStringField;
    qrVendaMesadata_reserva: TDateField;
    qrVendaMesahora_reserva: TTimeField;
    qrVendaMesadata_atual: TDateTimeField;
    qrVendaMesadata_abertura: TDateTimeField;
    qrVendaMesanro_pessoas: TIntegerField;
    qrVendaMesanro_couvert_m: TIntegerField;
    qrVendaMesanro_couvert_f: TIntegerField;
    qrVendaMesacpf_cliente: TWideStringField;
    qrVendaMesavalor_antecipado: TFloatField;
    qrVendaMesatipo_venda: TWideStringField;
    qrVendaMesavalor_pendente: TFloatField;
    dsVendaMesa: TDataSource;
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
    qrVendaItemid_material: TIntegerField;
    qrVendaItemdescricao_item_sem_tamanho: TWideStringField;
    qrVendaItemdesc_tamanho: TWideStringField;
    qrVendaItemitem_fracionado: TIntegerField;
    qrVendaItemgar_001: TIntegerField;
    qrVendaItemite_013: TIntegerField;
    qrVendaItemb_venda_tamanho: TBooleanField;
    qrVendaItemtamanho: TWideStringField;
    qrVendaItemite_012: TWideStringField;
    qrVendaItemite_011: TWideStringField;
    qrVendaItemite_008: TWideStringField;
    qrVendaItemquantidade_impressao: TFloatField;
    dsVendaItem: TDataSource;
    ActionList1: TActionList;
    acAberturaDeMesa: TAction;
    acPreFechamentoImprimir: TAction;
    acFecharMesa: TAction;
    acEnviarCozinha: TAction;
    acTranferenciaMesa: TAction;
    acJuntarMesas: TAction;
    acPagamentoAntecipado: TAction;
    acReabrirMesa: TAction;
    acCancelaMesa: TAction;
    acPesquisarItem: TAction;
    acCancelaItem: TAction;
    acDescontoItem: TAction;
    acObservacaoItem: TAction;
    acReservarMesa: TAction;
    acImprimirPrevia: TAction;
    acTransferirGarcom: TAction;
    acAlterarTituloMesa: TAction;
    acPesquisaGarcom: TAction;
    acAlteraPessoas: TAction;
    acInsereProdutoFracionado: TAction;
    acOpcionaisItem: TAction;
    acLimparMesa: TAction;
    qrVendaItemcod_produto: TWideStringField;
    pnMesaComanda: TPanel;
    lbTipoVenda: TLabel;
    DBCtrlGrid1: TDBCtrlGrid;
    imgMesa: TImage;
    btLimpar: TAdvGlowButton;
    edMesa: TEdit;
    btnSair: TAdvGlowButton;
    btTipoComanda: TAdvGlowButton;
    btTipoMesa: TAdvGlowButton;
    pnLegenda: TPanel;
    lbLegendaLivre: TLabel;
    lbLegendaOcupada: TLabel;
    lbLegendaFechada: TLabel;
    Label9: TLabel;
    pnItens: TPanel;
    cxGridVendaItem: TcxGrid;
    cxGridVendaItemDBTableView1: TcxGridDBTableView;
    cxGridVendaItemDBTableView1descricao_item: TcxGridDBColumn;
    cxGridVendaItemDBTableView1valor_total: TcxGridDBColumn;
    cxGridVendaItemDBTableView1qtdevenda: TcxGridDBColumn;
    cxGridVendaItemDBTableView1vlrvenda: TcxGridDBColumn;
    cxGridVendaItemDBTableView1desconto: TcxGridDBColumn;
    cxGridVendaItemDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridVendaItemLevel1: TcxGridLevel;
    pnAcoes: TPanel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBText7: TDBText;
    btCancelarMesa: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    btOK: TAdvGlowButton;
    dbtTotalVenda: TDBText;
    qrVendaMesanro_itens: TLargeintField;
    Label10: TLabel;
    DBText9: TDBText;
    Label11: TLabel;
    DBText10: TDBText;
    qrVendaMesanro_itens_cacelados: TLargeintField;
    lbNroMesaComanda: TcxDBLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    pnImagensLegenda: TPanel;
    imgLivre: TImage;
    imgReserva: TImage;
    imgLimpeza: TImage;
    imgComandaLimpeza: TImage;
    imgComandaOcupada: TImage;
    imgOcupada: TImage;
    imgFechada: TImage;
    imgComandaFechada: TImage;
    AdvSmoothTouchKeyBoard1: TAdvSmoothTouchKeyBoard;
    qrInsereItem: TUniQuery;
    qrVendaMesaid_garcom_abertura: TIntegerField;
    btImprimir: TAdvGlowButton;
    btFecharMesa: TAdvGlowButton;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    puPopupOpcoesMesa: TPopupMenu;
    ransferirmesaF81: TMenuItem;
    PagantecipadoF101: TMenuItem;
    acAlterarTituloMesa1: TMenuItem;
    acLimparMesa1: TMenuItem;
    qrVendaItemdata_hora_lancamento: TDateTimeField;
    Panel3: TPanel;
    Panel4: TPanel;
    pnValorItens: TPanel;
    pnItem: TPanel;
    pnObs: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    pnAcao2: TPanel;
    pnStatus: TPanel;
    lbTotalProdutos: TLabel;
    DBText8: TDBText;
    lbDescontos: TLabel;
    lbTxdeServico: TLabel;
    lbAntecipação: TLabel;
    lbTotalVenda: TLabel;
    AdvGlowButton2: TAdvGlowButton;
    Label1: TLabel;
    btInserirItem: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    btCredito: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    acTranferenciaItem: TAction;
    Timer1: TTimer;
    constructor Create(sender: Tcomponent); reintroduce;
    procedure btnSairClick(sender: TObject);
    procedure qrVendaMesaAfterScroll(DataSet: TDataSet);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure btTipoMesaClick(sender: TObject);
    procedure AlternaMesaComanda;
    procedure btTipoComandaClick(sender: TObject);
    // procedure FormResize(Sender: TObject);
    // procedure AjustaPanels;
    procedure btLimparClick(sender: TObject);
    procedure btOKClick(sender: TObject);
    procedure ValidaAcoesStatusMesas;
    procedure CarregaParametrosConfig;
    procedure acAberturaDeMesaExecute(sender: TObject); overload;
    procedure DBCtrlGrid1Click(sender: TObject);
    procedure acCancelaItemExecute(sender: TObject);
    procedure acCancelaMesaExecute(sender: TObject);
    procedure AtualizaTotalMesa(iVenda: Integer);
    procedure AdvSmoothTouchKeyBoard1KeyClick(sender: TObject; Index: Integer);
    procedure acPesquisarItemExecute(sender: TObject); overload;
    procedure qrVendaMesaAfterOpen(DataSet: TDataSet);
    procedure acPreFechamentoImprimirExecute(sender: TObject);
    procedure qrVendaMesaAfterRefresh(DataSet: TDataSet);
    procedure FormClose(sender: TObject; var Action: TCloseAction);
    procedure acFecharMesaExecute(sender: TObject);
    procedure acLimparMesaExecute(sender: TObject);
    procedure DBCtrlGrid1DblClick(sender: TObject);
    procedure acPagamentoAntecipadoExecute(sender: TObject);
    procedure qrVendaMesaBeforeRefresh(DataSet: TDataSet);
    procedure cliqueAbertura;
    procedure acReabrirMesaExecute(sender: TObject);
    procedure acTranferenciaMesaExecute(sender: TObject);
    procedure edMesaKeyDown(sender: TObject; var Key: Word; Shift: TShiftState);
    // procedure FormShow(Sender: TObject);
    procedure acAlterarTituloMesaExecute(sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acTranferenciaItemExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    vendaSelecionada, iNroComandaInicio, iNroComandaFim,
      nroMesaSelecionada: Integer;
    tipoVendaSelecionada: string;

    bExigeSenhaCancelamentoItemMesa, bExigeSenhaCancelamentoItemComanda,
      bExigeGarconLancarItemMesa, bExigeGarconLancarItemComanda, bCouvertMesa,
      bCouvertComanda, bExigePreFechamentoMesa, bExigePreFechamentoComanda,
      bExigeSenhaReaberturaComanda, bExigeSenhaReaberturaMesa,
      bExigeSenhaTranferenciaMesa, bAgruparItensIguaisMesa,
      bAgruparItensIguaisComanda, acesso_mesa_usuario, acesso_comanda_usuario,
      acesso_touch_usuario, bExigirsenhacancelarmesa,
      bExigirSenhaCancelamentoComanda, bExigirsenhaprefechamentomesa,
      bExigirsenhaprefechamentocomanda, bExigirsenhafechamentomesa,
      bExigirsenhafechamentocomanda, bExigeSenhaTranferenciaItem: boolean;

  public
    { Public declarations }
    procedure acAberturaDeMesaExecute(sender: TObject; tipo_venda: string;
      comanda: variant); overload;
    procedure acPesquisarItemExecute(sender: TObject;
      id_garcom: Integer); overload;
  end;

var
  frmVendaTouch: TfrmVendaTouch;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uFuncoes, uControleMesaItensAcoes, uVendaTouchAbertura,
  uVendaTouchInsercao, uControleMesaRelatorios, uControleMesaFechamento,
  uControleMesaJuntarTransferir,
  uControleMesaRenomear, uControleMesaPagamentoAntecipado, uTransferenciaiten;

procedure TfrmVendaTouch.CarregaParametrosConfig;
var
  sql: string;
  qrAux1: TUniQuery;
begin

  buscacampo(acesso_mesa_usuario,
    'select b_acesso_venda_mesa from usuarios where usu_001=' +
    inttostr(recproj.iUsuario), '', false);
  buscacampo(acesso_comanda_usuario,
    'select b_acesso_venda_comanda from usuarios where usu_001=' +
    inttostr(recproj.iUsuario), '', false);
  buscacampo(acesso_touch_usuario,
    'select b_acesso_venda_touch from usuarios where usu_001=' +
    inttostr(recproj.iUsuario), '', false);

  bExigeSenhaTranferenciaMesa := LerBooleanConfig('CKEXIGIRSENHATRANSFMESA',
    frmMenu.cdsCFG.FileName);
  bExigeSenhaReaberturaComanda :=
    LerBooleanConfig('CKEXIGIRSENHAREABRIRCOMANDA', frmMenu.cdsCFG.FileName);
  bExigeSenhaReaberturaMesa := LerBooleanConfig('CKEXIGIRSENHAREABRIRMESA',
    frmMenu.cdsCFG.FileName);

  bExigeGarconLancarItemMesa := LerBooleanConfig('CKEXIGIRGARCOMLANCARITEM',
    frmMenu.cdsCFG.FileName);
  bExigeGarconLancarItemComanda :=
    LerBooleanConfig('CKEXIGIRGARCOMLANCARITEMCOMANDA',
    frmMenu.cdsCFG.FileName);
  bExigeSenhaCancelamentoItemMesa :=
    LerBooleanConfig('CKEXIGIRSENHACANCELAMENTOITENS', frmMenu.cdsCFG.FileName);
  bExigeSenhaCancelamentoItemComanda :=
    LerBooleanConfig('CKEXIGIRSENHACANCELAMENTOITENSCOMANDA',
    frmMenu.cdsCFG.FileName);
  bCouvertMesa := LerBooleanConfig('CKCOUVERTMESA', frmMenu.cdsCFG.FileName);
  bCouvertComanda := LerBooleanConfig('CKCOUVERTCOMANDA',
    frmMenu.cdsCFG.FileName);
  bExigePreFechamentoMesa := LerBooleanConfig('CKEXIGEPREFECHAMENTOMESA',
    frmMenu.cdsCFG.FileName);
  bExigePreFechamentoComanda := LerBooleanConfig('CKEXIGEPREFECHAMENTOCOMANDA',
    frmMenu.cdsCFG.FileName);
  bExigirsenhacancelarmesa := LerBooleanConfig('ckExigirsenhacancelarmesa',
    frmMenu.cdsCFG.FileName);

  bAgruparItensIguaisMesa := LerBooleanConfig('CKAGRUPARITENSIGUAISMESA',
    frmMenu.cdsCFG.FileName);
  bAgruparItensIguaisComanda := LerBooleanConfig('CKAGRUPARITENSIGUAISCOMANDA',
    frmMenu.cdsCFG.FileName);
  bExigirSenhaCancelamentoComanda :=
    LerBooleanConfig('ckExigirSenhaCancelamentoComanda',
    frmMenu.cdsCFG.FileName);
  bExigirsenhaprefechamentomesa :=
    LerBooleanConfig('ckExigirsenhaprefechamentomesa', frmMenu.cdsCFG.FileName);
  bExigirsenhaprefechamentocomanda :=
    LerBooleanConfig('ckExigirsenhaprefechamentocomanda',
    frmMenu.cdsCFG.FileName);
  bExigirsenhafechamentomesa := LerBooleanConfig('ckExigirsenhafechamentomesa',
    frmMenu.cdsCFG.FileName);
  bExigirsenhafechamentocomanda :=
    LerBooleanConfig('ckExigirsenhafechamentocomanda', frmMenu.cdsCFG.FileName);



  qrAux1 := TUniQuery.Create(self);
  qrAux1.Connection := frmMenu.conexao;

  sql := format
    ('select numero_comanda_inicio, numero_comanda_fim from empresas where emp_001=%d',
    [recproj.iemp]);
  ExecutaConsultaSQL(qrAux1, sql);
  iNroComandaInicio := qrAux1.Fields[0].AsInteger;
  iNroComandaFim := qrAux1.Fields[1].AsInteger;

  qrAux1.free;

end;

procedure TfrmVendaTouch.ValidaAcoesStatusMesas;
var
  tipo_venda: string;
  codStatus: Integer;
begin
  if qrVendaMesa.recordcount > 0 then
  begin
    // habilita desabilita ações de acordo com o status da mesa
    codStatus := qrVendaMesa.fieldByName('status').AsInteger;
    tipo_venda := qrVendaMesa.fieldByName('tipo_venda').asstring;
    // Disponivel e reservada
    if codStatus in [4, 19] then
    begin
      acAberturaDeMesa.Enabled := true;
      acPreFechamentoImprimir.Enabled := false;
      acFecharMesa.Enabled := false;
      acEnviarCozinha.Enabled := false;
      acTranferenciaMesa.Enabled := false;
      acJuntarMesas.Enabled := false;
      acPagamentoAntecipado.Enabled := false;
      acReabrirMesa.Enabled := false;
      acCancelaMesa.Enabled := false;
      acPesquisarItem.Enabled := false;
      acCancelaItem.Enabled := false;
      acDescontoItem.Enabled := false;
      acObservacaoItem.Enabled := false;
      acReservarMesa.Enabled := true;
      acImprimirPrevia.Enabled := false;
      acTransferirGarcom.Enabled := false;
      acAlterarTituloMesa.Enabled := false;
      acAlteraPessoas.Enabled := false;
      acInsereProdutoFracionado.Enabled := false;
      acOpcionaisItem.Enabled := false;
      acLimparMesa.Enabled := false;
      acTranferenciaItem.Enabled := false;
    end
    // ocupada
    else if codStatus = 8 then
    begin
      acAberturaDeMesa.Enabled := false;
      acPreFechamentoImprimir.Enabled := true;
      acFecharMesa.Enabled := true;
      acEnviarCozinha.Enabled := true;
      acPagamentoAntecipado.Enabled := true;
      acReabrirMesa.Enabled := false;
      acCancelaMesa.Enabled := true;
      acPesquisarItem.Enabled := true;
      acReservarMesa.Enabled := false;
      acImprimirPrevia.Enabled := true;
      acTransferirGarcom.Enabled := true;
      acAlterarTituloMesa.Enabled := true;
      acAlteraPessoas.Enabled := true;
      acInsereProdutoFracionado.Enabled := true;
      acOpcionaisItem.Enabled := true;
      acLimparMesa.Enabled := false;

      if qrVendaItem.Active then
      begin
        if qrVendaItem.recordcount > 0 then
        begin
          acCancelaItem.Enabled := true;
          acDescontoItem.Enabled := true;
          acObservacaoItem.Enabled := true;
          acOpcionaisItem.Enabled := true;
          acTranferenciaItem.Enabled := true;
        end
        else
        begin
          acCancelaItem.Enabled := false;
          acDescontoItem.Enabled := false;
          acObservacaoItem.Enabled := false;
          acOpcionaisItem.Enabled := false;
          acTranferenciaItem.Enabled := false;
        end;
      end;

      if tipo_venda = 'M' then
      begin
        acTranferenciaMesa.Enabled := true;
        acJuntarMesas.Enabled := true;
      end
      else
      begin
        acTranferenciaMesa.Enabled := false;
        acJuntarMesas.Enabled := false;
        acTranferenciaItem.Enabled := false;
      end;
    end
    // Pre Fechada
    else if codStatus = 21 then
    begin
      acAberturaDeMesa.Enabled := false;
      acPreFechamentoImprimir.Enabled := false;
      acFecharMesa.Enabled := true;
      acEnviarCozinha.Enabled := false;
      acTranferenciaMesa.Enabled := false;
      acJuntarMesas.Enabled := false;
      acPagamentoAntecipado.Enabled := false;
      acReabrirMesa.Enabled := true;
      acCancelaMesa.Enabled := true;
      acPesquisarItem.Enabled := false;
      acCancelaItem.Enabled := false;
      acDescontoItem.Enabled := false;
      acObservacaoItem.Enabled := false;
      acReservarMesa.Enabled := false;
      acImprimirPrevia.Enabled := true;
      acTransferirGarcom.Enabled := true;
      acAlterarTituloMesa.Enabled := true;
      acAlteraPessoas.Enabled := false;
      acInsereProdutoFracionado.Enabled := false;
      acOpcionaisItem.Enabled := false;
      acLimparMesa.Enabled := false;
      acTranferenciaItem.Enabled := false;
    end
    else if codStatus = 15 then // Aguardando liberação para limpeza
    begin
      acAberturaDeMesa.Enabled := false;
      acPreFechamentoImprimir.Enabled := false;
      acFecharMesa.Enabled := false;
      acEnviarCozinha.Enabled := false;
      acTranferenciaMesa.Enabled := false;
      acJuntarMesas.Enabled := false;
      acPagamentoAntecipado.Enabled := false;
      acReabrirMesa.Enabled := false;
      acCancelaMesa.Enabled := false;
      acPesquisarItem.Enabled := false;
      acCancelaItem.Enabled := false;
      acDescontoItem.Enabled := false;
      acObservacaoItem.Enabled := false;
      acReservarMesa.Enabled := false;
      acImprimirPrevia.Enabled := false;
      acTransferirGarcom.Enabled := false;
      acAlterarTituloMesa.Enabled := false;
      acAlteraPessoas.Enabled := false;
      acInsereProdutoFracionado.Enabled := false;
      acOpcionaisItem.Enabled := false;
      acLimparMesa.Enabled := true;
      acTranferenciaItem.Enabled := false;
    end;
  end
  else
  begin
    acAberturaDeMesa.Enabled := false;
    acPreFechamentoImprimir.Enabled := false;
    acFecharMesa.Enabled := false;
    acEnviarCozinha.Enabled := false;
    acTranferenciaMesa.Enabled := false;
    acJuntarMesas.Enabled := false;
    acPagamentoAntecipado.Enabled := false;
    acReabrirMesa.Enabled := false;
    acCancelaMesa.Enabled := false;
    acPesquisarItem.Enabled := false;
    acCancelaItem.Enabled := false;
    acDescontoItem.Enabled := false;
    acObservacaoItem.Enabled := false;
    acReservarMesa.Enabled := false;
    acImprimirPrevia.Enabled := false;
    acTransferirGarcom.Enabled := false;
    acAlterarTituloMesa.Enabled := false;
    acAlteraPessoas.Enabled := false;
    acInsereProdutoFracionado.Enabled := false;
    acOpcionaisItem.Enabled := false;
    acLimparMesa.Enabled := false;
    acTranferenciaItem.Enabled := false;
  end;
end;

procedure TfrmVendaTouch.AdvSmoothTouchKeyBoard1KeyClick(sender: TObject;
  Index: Integer);
var
  tecla: string;
begin
  // analisa qual tecla foi pressionada
  case Index of
    0:
      tecla := '7';
    1:
      tecla := '8';
    2:
      tecla := '9';
    3:
      tecla := '4';
    4:
      tecla := '5';
    5:
      tecla := '6';
    6:
      tecla := '1';
    7:
      tecla := '2';
    8:
      tecla := '3';
    9:
      tecla := '0'
  end;

  if not(lowercase(ActiveControl.Name) = 'edmesa') then
  begin
    edMesa.Text := edMesa.Text + tecla;
    edMesa.SetFocus;
    edMesa.SelStart := Length(edMesa.Text);
  end;
end;

procedure TfrmVendaTouch.acAberturaDeMesaExecute(sender: TObject);
begin
  acAberturaDeMesaExecute(sender, 'M', null);
end;

procedure TfrmVendaTouch.acAberturaDeMesaExecute(sender: TObject;
  tipo_venda: string; comanda: variant);
var
  sql: string;
  liberada, bExigeGarconLancarItem, bExigeCouvert: boolean;
  id_mesa: variant;
  qtd_couvert_f, qtd_couvert_m, id_garcom, qtd_pessoas: Integer;
begin
  liberada := true;
  // se a mesa esta reservada pergunta se deseja abrir
  if tipo_venda = 'M' then
  begin
    if (qrVendaMesa.fieldByName('status').AsInteger = 19) then
      liberada := Application.MessageBox
        ('A mesa está reservada, gostaria de abrir mesmo assim?', 'Atenção',
        MB_ICONQUESTION + MB_yesno) = mrYes;
  end;

  if liberada then
  begin
    if tipo_venda = 'M' then
    begin
      id_mesa := qrVendaMesa.fieldByName('id_mesa').AsInteger;
      bExigeGarconLancarItem := bExigeGarconLancarItemMesa;
      bExigeCouvert := bCouvertMesa;
    end
    else
    begin
      id_mesa := null;
      bExigeGarconLancarItem := bExigeGarconLancarItemComanda;
      bExigeCouvert := bCouvertComanda;
    end;

    frmVendaTouchAbertura := tfrmVendaTouchAbertura.Create(self,
      bExigeGarconLancarItem, bExigeCouvert);
    frmVendaTouchAbertura.ShowModal;
    liberada := frmVendaTouchAbertura.Tag = 1;
    if liberada then
    begin
      qtd_couvert_f := frmVendaTouchAbertura.qtd_couvert_f;
      qtd_couvert_m := frmVendaTouchAbertura.qtd_couvert_m;
      id_garcom := frmVendaTouchAbertura.id_garcom;
      qtd_pessoas := frmVendaTouchAbertura.qtd_pessoas;
      // abre a venda para a mesa selecionada ou comanda
      sql := ' insert into venda (ven_001, ven_002, emp_001, dat_001_1, ven_025, cli_001, '
        + ' sit_001, usu_001_1, VEN_024, ven_029, ' +
        ' ven_004, ven_023, id_caixa_abertura, ven_026, ' +
        ' nro_pessoas, nro_couvert_m, nro_couvert_f, id_garcom_abertura, terminal_abertura) '
        + ' values ( (select coalesce(max(ven_001) ,0)+1 from  venda where emp_001 = :emp) , 0 , :emp, LOCALTIMESTAMP, :id_mesa, 0, '
        + ' 8, :id_usuario, :tipo_venda, (select coalesce(max(ven_001) ,0)+1 from  venda where emp_001 = :emp), '
        + ' LOCALTIMESTAMP, ''N'', :id_caixa_abertura, :comanda, ' +
        ' :nro_pessoas, :nro_couvert_m, :nro_couvert_f, :id_garcom_abertura, :terminal_abertura)';
      ExecutaComandoSQL(sql, vararrayof([recproj.iemp, id_mesa,
        recproj.iUsuario, tipo_venda, recproj.iIDCaixa, comanda, qtd_pessoas,
        qtd_couvert_m, qtd_couvert_f, id_garcom, NomeDoTerminal]));
      // atualiza a mesa reservada
      if tipo_venda = 'M' then
      begin
        sql := ' update mesa set sit_001=4, nome_reserva=null, telefone_reserva=null, '
          + ' data_reserva=null,  hora_reserva=null ' + ' where mes_001=' +
          qrVendaMesa.fieldByName('id_mesa').asstring + ' and emp_001=' +
          inttostr(recproj.iemp);
        ExecutaComandoSQL(sql);
      end;

      qrVendaMesa.Refresh;

      // Define o foco para a mesa/comanda selecionada
      if tipo_venda = 'M' then
        qrVendaMesa.Locate('id_mesa', id_mesa, [])
      else
        qrVendaMesa.Locate('nro_mesa', comanda, []);

      ValidaAcoesStatusMesas;
      acPesquisarItemExecute(self, id_garcom);
    end;

    frmVendaTouchAbertura.free;

  end;
end;

procedure TfrmVendaTouch.acAlterarTituloMesaExecute(sender: TObject);
begin
  frmControleMesaRenomear := TfrmControleMesaRenomear.Create(self,
    qrVendaMesa.fieldByName('id_venda').AsInteger);
  frmControleMesaRenomear.ShowModal;
  frmControleMesaRenomear.free;
  qrVendaMesa.Refresh;
end;

procedure TfrmVendaTouch.acCancelaItemExecute(sender: TObject);
var
  ok, bExigeSenhaCancelamentoItem: boolean;
  id_usuario_cancelamento: Integer;
begin
  if qrVendaItem.Active then
  begin
    if qrVendaItem.recordcount > 0 then
    begin
      id_usuario_cancelamento := recproj.iUsuario;

      if qrVendaMesa.fieldByName('tipo_venda').asstring = 'M' then
        bExigeSenhaCancelamentoItem := bExigeSenhaCancelamentoItemMesa
      else
        bExigeSenhaCancelamentoItem := bExigeSenhaCancelamentoItemComanda;

      if bExigeSenhaCancelamentoItem then
      begin
        frmVendaTouchAbertura := tfrmVendaTouchAbertura.Create(self, true,
          false, 3, 'b_cancelamento_mesa');
        frmVendaTouchAbertura.ShowModal;
        ok := frmVendaTouchAbertura.Tag = 1;
        id_usuario_cancelamento := frmVendaTouchAbertura.id_garcom;
        frmVendaTouchAbertura.free;
      end
      else
        ok := true;

      if ok then
      begin
        // qrVendaMesaBeforeScroll(nil);
        frmControleMesaItensAcoes := TfrmControleMesaItensAcoes.Create(self,
          qrVendaMesa.fieldByName('id_venda').AsInteger,
          id_usuario_cancelamento, 3, true);
        frmControleMesaItensAcoes.ShowModal;
        frmControleMesaItensAcoes.free;
        AtualizaTotalMesa(qrVendaMesa.fieldByName('id_venda').AsInteger);
        qrVendaItem.Refresh;
        qrVendaMesa.Refresh;
      end;
    end
    else
      Application.MessageBox('Esta venda não possui itens!', 'Atenção',
        MB_ICONINFORMATION + MB_OK);
  end;
end;

procedure TfrmVendaTouch.acCancelaMesaExecute(sender: TObject);
var
  str_sql, sJust: string;
  id_venda, cod_venda, nro_mesa, id_usuario_cancelamento: Integer;
  ok, bExigeSenhaCancelamento, permite_cancelamento_usuario: boolean;
  qrAux1: TUniQuery;
begin
  buscacampo(permite_cancelamento_usuario,
    'select b_cancelamento_mesa from usuarios where usu_001=' +
    inttostr(recproj.iUsuario), '', false);
  qrAux1 := TUniQuery.Create(self);
  qrAux1.Connection := frmMenu.conexao;

  if qrVendaMesa.Active then
  begin
    if qrVendaMesa.fieldByName('status').AsInteger in [8, 21] then
    begin
      if qrVendaMesa.fieldByName('tipo_venda').asstring = 'M' then
        bExigeSenhaCancelamento := bExigirsenhacancelarmesa
        // Alteração para exigir senha para cancelar Mesa   24/08  Programador Rafael
      else
        bExigeSenhaCancelamento := bExigirSenhaCancelamentoComanda;
      // Alteração para exigir senha para cancelar Comanda 24/08  Programador Rafael
      // Varivael
      id_venda := qrVendaMesa.fieldByName('id_venda').AsInteger;
      cod_venda := qrVendaMesa.fieldByName('cod_venda').AsInteger;
      nro_mesa := qrVendaMesa.fieldByName('nro_mesa').AsInteger;
      // verifica se existe pagamento antecipado para a mesa
      str_sql := ' select 1 from venda_pag_antecipado ' +
        ' where id_situacao=4 and  id_venda=' + inttostr(id_venda) +
        ' and id_empresa=' + inttostr(recproj.iemp);
      ExecutaConsultaSQL(qrAux1, str_sql);

      if qrAux1.recordcount > 0 then
      begin
        Application.MessageBox
          ('A venda não pode ser cancelada pois já recebeu pagamento!',
          'Atenção', MB_ICONINFORMATION + MB_OK);
        exit;
      end;

      if Application.MessageBox('Deseja cancelar esta venda?', 'Atenção',
        MB_ICONQUESTION + MB_yesno) = mrYes then
      begin
        // verifica se a venda não possui items
        str_sql :=
          'select 1 from vendaitem where ven_001=:id_venda and emp_001=:emp';
        PreparaQuerySQL(qrAux1, str_sql);
        qrAux1.ParamByName('id_venda').AsInteger := id_venda;
        qrAux1.ParamByName('emp').AsInteger := recproj.iemp;
        qrAux1.Open;

        if qrAux1.recordcount < 1 then
        begin
          str_sql :=
            'delete from venda where ven_001=:id_venda and emp_001=:emp';
          PreparaQuerySQL(qrAux1, str_sql);
          qrAux1.ParamByName('id_venda').AsInteger := id_venda;
          qrAux1.ParamByName('emp').AsInteger := recproj.iemp;
          qrAux1.Execute;
          Application.MessageBox('Venda cancelada com sucesso!', 'Atenção',
            MB_ICONINFORMATION + MB_OK);
          qrVendaMesa.Refresh;
        end
        else
        begin
          id_usuario_cancelamento := recproj.iUsuario;

          // Verifica primeiro se está configurado para exigir senha para cancelamento...
          // Então chama a tela de seleção de usuario com a permissão correta
          if bExigeSenhaCancelamento then
          begin
            frmVendaTouchAbertura := tfrmVendaTouchAbertura.Create(self, true,
              false, 3, 'b_cancelamento_mesa');
            frmVendaTouchAbertura.ShowModal;
            ok := frmVendaTouchAbertura.Tag = 1;
            id_usuario_cancelamento := frmVendaTouchAbertura.id_garcom;
            frmVendaTouchAbertura.free;
          end
          else
          begin
            // senão, verifica se o usuario atual nao tem permissão e chama novamente o form de ususario
            if not permite_cancelamento_usuario then
            begin
              frmVendaTouchAbertura := tfrmVendaTouchAbertura.Create(self, true,
                false, 3, 'b_cancelamento_mesa');
              frmVendaTouchAbertura.ShowModal;
              ok := frmVendaTouchAbertura.Tag = 1;
              id_usuario_cancelamento := frmVendaTouchAbertura.id_garcom;
              frmVendaTouchAbertura.free;
            end
            else
              ok := true;
          end;

          if ok then
          begin
            if CancelaVenda(id_venda, id_usuario_cancelamento, 'Cancelamento')
            then
            begin
              qrVendaMesa.Refresh;
            end;
          end;
        end;
      end;
    end;
  end;
  qrAux1.free;
end;

procedure TfrmVendaTouch.acFecharMesaExecute(sender: TObject);
var
  bExigePreFechamento, ok, Exigirsenha: boolean;
  id_venda: Integer;
begin
  id_venda := qrVendaMesa.fieldByName('id_venda').AsInteger;
  if qrVendaMesa.fieldByName('tipo_venda').asstring = 'M' then
  begin
    Exigirsenha := bExigirsenhafechamentomesa;
    bExigePreFechamento:= bExigePreFechamentoMesa
  end;


  if qrVendaMesa.fieldByName('tipo_venda').asstring = 'C' then
  begin
     bExigirsenhafechamentocomanda :=  bExigirsenhafechamentocomanda;
      bExigirsenhaprefechamentocomanda :=  bExigirsenhaprefechamentocomanda ;
  end

  else
  begin
    bExigePreFechamento := bExigirsenhafechamentocomanda;
    bExigePreFechamento:= bExigePreFechamentoComanda;
  end;

  if Exigirsenha then
  begin
//    frmVendaTouchAbertura := tfrmVendaTouchAbertura.Create(self, true, false, 3,
//      'b_permite_fechamento_mesa_comanda');
//    frmVendaTouchAbertura.ShowModal;
//    ok := frmVendaTouchAbertura.Tag = 1;
//    frmVendaTouchAbertura.free;
  end
  else
    ok := true;

  if ok then
  begin
    if not(qrVendaMesa.fieldByName('status').AsInteger in [8, 21]) then
      exit;

    if qrVendaItem.recordcount < 1 then
    begin
      Application.MessageBox('Esta venda não possui itens!', 'Atenção',
        MB_ICONINFORMATION + MB_OK);
    end
    else
    begin
      if (bExigePreFechamento and (qrVendaMesa.fieldByName('status').AsInteger
        <> 21)) then
      begin
        frmControleMesaRelatorios.ImprimeVenda(id_venda);
        MudaStatusVendaImpresso(id_venda);
        qrVendaMesa.Refresh;
      end;

      frmControleMesaFechamento := TfrmControleMesaFechamento.Create(self,
        id_venda, true);
      frmControleMesaFechamento.ShowModal;
      frmControleMesaFechamento.free;
      qrVendaMesa.Refresh;
    end;
  end;

end;

procedure TfrmVendaTouch.acLimparMesaExecute(sender: TObject);
var
  str_sql, str_mesa: string;
begin
  if qrVendaMesa.Active then
  begin
    if qrVendaMesa.recordcount > 0 then
    begin
      if qrVendaMesa.fieldByName('tipo_venda').asstring = 'M' then
        str_mesa := 'mesa'
      else
        str_mesa := 'comanda';

      if Application.MessageBox(pchar(format('Deseja liberar esta %s?',
        [str_mesa])), 'Atenção', MB_ICONQUESTION + MB_yesno) = mrYes then
      begin
        str_sql :=
          'update venda set ven_015=0 where ven_001=:ivenda and emp_001=:emp';
        ExecutaComandoSQL(str_sql,
          vararrayof([qrVendaMesa.fieldByName('id_venda').AsInteger,
          recproj.iemp]));
        qrVendaMesa.Refresh;
      end;
    end
  end;
end;

procedure TfrmVendaTouch.acPagamentoAntecipadoExecute(sender: TObject);
begin
  frmControleMesaPagamentoAntecipado :=
    TfrmControleMesaPagamentoAntecipado.Create(self,
    qrVendaMesa.fieldByName('id_venda').AsInteger, true);
  frmControleMesaPagamentoAntecipado.ShowModal;
  frmControleMesaPagamentoAntecipado.free;
  qrVendaMesa.Refresh;
end;

procedure TfrmVendaTouch.acPesquisarItemExecute(sender: TObject);
begin
  acPesquisarItemExecute(sender, 0);
end;

procedure TfrmVendaTouch.acPesquisarItemExecute(sender: TObject;
  id_garcom: Integer);
var
  nro_item, item_atual, id_venda, pedido: Integer;
  str_sql: string;
  bExigeGarconLancarItem, bAgruparItensIguais, atualiza: boolean;
  qr_aux : tUniquery;
begin
  qr_aux :=  CriaUniQuery(self, frmmenu.conexao);
  id_venda := qrVendaMesa.fieldByName('id_venda').AsInteger;

  if qrVendaMesa.fieldByName('tipo_venda').asstring = 'M' then
  begin
    bExigeGarconLancarItem := bExigeGarconLancarItemMesa;
    bAgruparItensIguais := bAgruparItensIguaisMesa;
  end
  else
  begin
    bExigeGarconLancarItem := bExigeGarconLancarItemComanda;
    bAgruparItensIguais := bAgruparItensIguaisComanda;
  end;

  // se exige garçom e não foi informado, abre a pesquisa
 { if bExigeGarconLancarItem and (id_garcom = 0) then
  begin
    frmVendaTouchAbertura := tfrmVendaTouchAbertura.Create(self, true,
      false, 2);
    frmVendaTouchAbertura.ShowModal;
    if frmVendaTouchAbertura.Tag = 1 then
    begin
      id_garcom := frmVendaTouchAbertura.id_garcom;
      frmVendaTouchAbertura.free;
    end
    else
    begin
      frmVendaTouchAbertura.free;
      abort;
    end;
  end;    }

  // atribui o garcom da abertura caso não seja informado
  if id_garcom = 0 then
    id_garcom := qrVendaMesa.fieldByName('id_garcom_abertura').AsInteger;

  frmVendaTouchInsercao := TfrmVendaTouchInsercao.Create(self, id_venda, id_garcom);
  frmVendaTouchInsercao.ShowModal;
  if frmVendaTouchInsercao.Tag = 1 then
  begin
    nro_item := 0;
    str_sql :=
      format('select coalesce(max(ite_001),0)+1 as item, coalesce(max(numero_pedido),0)+1 as numero_pedido  from vendaitem where ven_001=%d and emp_001=%d ',
      [id_venda, recproj.iemp]);
    ExecutaConsultaSQL(qr_aux, str_sql);
    nro_item := qr_aux.FieldByName('item').AsInteger;
    pedido := qr_aux.FieldByName('numero_pedido').AsInteger;

    buscacampo(nro_item, str_sql, '', false);

    frmVendaTouchInsercao.cdsItensInseridos.First;
    while not frmVendaTouchInsercao.cdsItensInseridos.eof do
    begin
      // Se estiver configurado para agrupar itens de mesmo codigo, tenta localizar
      if bAgruparItensIguais then
      begin
        atualiza := qrVendaItem.Locate('id_material;vlrvenda;desconto;tamanho',
          vararrayof([frmVendaTouchInsercao.cdsItensInseridos.fieldByName
          ('id_material').AsInteger,
          frmVendaTouchInsercao.cdsItensInseridos.fieldByName('valor_unitario')
          .AsFloat, 0.00, frmVendaTouchInsercao.cdsItensInseridos.fieldByName
          ('tamanho').asstring]), []);
      end
      else
        atualiza := false;

      // se encontrou o produto e deve atualizar....
      if atualiza then
      begin
        item_atual := qrVendaItem.fieldByName('nro_item').AsInteger;
        ExecutaComandoSQL(' update vendaitem set ite_002=ITE_002+:quantidade, '
          + ' quantidade_impressao=quantidade_impressao+:quantidade, ' +
          ' ite_011=''N'', ite_008=''N'', ' +
          ' ite_005=ite_005+:valor_total where ' +
          ' mat_001=:id_material and ite_001=:item and EMP_001=:emp ' +
          ' and ven_001=:id_venda ',
          vararrayof([frmVendaTouchInsercao.cdsItensInseridos.fieldByName
          ('quantidade').AsFloat,
          frmVendaTouchInsercao.cdsItensInseridos.fieldByName('valor_total')
          .AsFloat, frmVendaTouchInsercao.cdsItensInseridos.fieldByName
          ('id_material').AsInteger, item_atual, recproj.iemp,
          qrVendaMesa.fieldByName('id_venda').AsInteger]));
      end
      else
      // senao insere o item novo
      begin

        qrInsereItem.ParamByName('emp').AsInteger := recproj.iemp;
        qrInsereItem.ParamByName('id_venda').AsInteger := id_venda;
        qrInsereItem.ParamByName('id_material').AsInteger := frmVendaTouchInsercao.cdsItensInseridos.fieldByName('id_material').AsInteger;
        qrInsereItem.ParamByName('quantidade').AsFloat := frmVendaTouchInsercao.cdsItensInseridos.fieldByName('quantidade').AsFloat;
        qrInsereItem.ParamByName('valor_unit').AsFloat := frmVendaTouchInsercao.cdsItensInseridos.fieldByName('valor_unitario').AsFloat;
        qrInsereItem.ParamByName('valor_total').AsFloat := frmVendaTouchInsercao.cdsItensInseridos.fieldByName('valor_total').AsFloat;
        // qrInsereItem.ParamByName('hora').AsTime := Time;
        qrInsereItem.ParamByName('observacao').asstring := frmVendaTouchInsercao.cdsItensInseridos.fieldByName('observacao').asstring;
        qrInsereItem.ParamByName('nro_item').AsInteger := nro_item;
        qrInsereItem.ParamByName('id_garcom').AsInteger := frmVendaTouchInsercao.id_garcom;
        qrInsereItem.ParamByName('cod_impressora').AsInteger := frmVendaTouchInsercao.cdsItensInseridos.fieldByName('cod_impressora') .AsInteger;
        qrInsereItem.ParamByName('b_venda_tamanho').asBoolean := frmVendaTouchInsercao.cdsItensInseridos.fieldByName('b_venda_tamanho').asBoolean;
        qrInsereItem.ParamByName('tamanho').asstring := frmVendaTouchInsercao.cdsItensInseridos.fieldByName('tamanho').asstring;
        qrInsereItem.ParamByName('item_fracionado').value := frmVendaTouchInsercao.cdsItensInseridos.fieldByName('item_fracionado').value;
        qrInsereItem.ParamByName('quantidade_impressao').AsFloat := frmVendaTouchInsercao.cdsItensInseridos.fieldByName('quantidade').AsFloat;
        qrInsereItem.ParamByName('desconto').AsFloat := frmVendaTouchInsercao.cdsItensInseridos.fieldByName('desconto').AsFloat;
        qrInsereItem.ParamByName('numero_pedido').value := pedido;
        qrInsereItem.Execute;

        //insere os opcionais
        frmVendaTouchInsercao.cdsOpcionaisInseridos.First;
        frmVendaTouchInsercao.cdsOpcionaisInseridos.filter :=  format('item=%d', [frmVendaTouchInsercao.cdsItensInseridos.fieldByName('item').Asinteger]);
        frmVendaTouchInsercao.cdsOpcionaisInseridos.filtered := true;
        while not frmVendaTouchInsercao.cdsOpcionaisInseridos.eof do
        begin
          str_sql := ' insert into vendaitemopcional (id_venda, id_empresa, id_vendaitem, id_opcional) '+
                     ' values (:id_venda, :id_empresa, :id_vendaietem, :id_opcional)';
          ExecutaComandoSQL(str_sql, vararrayof([id_venda , recproj.iemp, nro_item,
                              frmVendaTouchInsercao.cdsOpcionaisInseridos.FieldByName('id_opcional').AsInteger]));
          frmVendaTouchInsercao.cdsOpcionaisInseridos.next;
        end;
        nro_item := nro_item + 1;
      end;

      frmVendaTouchInsercao.cdsItensInseridos.Next;
    end;
    AtualizaTotalMesa(id_venda);
  end;
  frmVendaTouchInsercao.free;
  frmmenu.TmImpMobileTimer(nil);  //chama o timer de impressão de produção do menu principal
end;

procedure TfrmVendaTouch.acPreFechamentoImprimirExecute(sender: TObject);
var
  Exigirsenha, ok: boolean;
begin

  if qrVendaItem.recordcount > 0 then
  begin
    if Application.MessageBox('Confirma o encerramento da venda atual?',
      'Atenção', MB_ICONQUESTION + MB_yesno) = mrYes then
    begin
      if qrVendaMesa.fieldByName('tipo_venda').asstring = 'M' then
      begin
        Exigirsenha := bExigirsenhaprefechamentomesa;
      end
      else
        Exigirsenha := bExigirsenhaprefechamentocomanda;

      if Exigirsenha then
      begin

        frmVendaTouchAbertura := tfrmVendaTouchAbertura.Create(self, true,
          false, 3, 'b_permite_prefechamento_mesa_comanda');
        frmVendaTouchAbertura.ShowModal;
        ok := frmVendaTouchAbertura.Tag = 1;
        frmVendaTouchAbertura.free;
      end
      else
        ok := true;

      if ok then
      begin
        frmControleMesaRelatorios.ImprimeVenda
          (qrVendaMesa.fieldByName('id_venda').AsInteger);
        MudaStatusVendaImpresso(qrVendaMesa.fieldByName('id_venda').AsInteger);
        qrVendaMesa.Refresh;
      end;
    end;
  end
  else
    Application.MessageBox('Esta venda não possui itens!', 'Atenção',
      MB_ICONINFORMATION);
end;

procedure TfrmVendaTouch.acReabrirMesaExecute(sender: TObject);
var
  mesa_comanda: string;
  exige_senha, ok, acesso_reabrir: boolean;
  id_usuario: Integer;
begin
  buscacampo(acesso_reabrir,
    'select b_reabrir_mesa_comanda from usuarios where usu_001=' +
    inttostr(recproj.iUsuario), '', false);
  if qrVendaMesa.fieldByName('status').AsInteger = 21 then
  begin
    if qrVendaMesa.fieldByName('tipo_venda').asstring = 'M' then
    begin
      mesa_comanda := 'mesa';
      exige_senha := bExigeSenhaReaberturaMesa;
    end
    else
    begin
      mesa_comanda := 'comanda';
      exige_senha := bExigeSenhaReaberturaComanda;
    end;

    if Application.MessageBox
      (pchar(format
      ('A %s encontra-se fechada, deseja reabrir a %s selecionada?',
      [mesa_comanda, mesa_comanda])), 'Atenção', MB_ICONQUESTION + MB_yesno) = mrYes
    then
    begin
      ok := true;

      if exige_senha then
      begin
        frmVendaTouchAbertura := tfrmVendaTouchAbertura.Create(self, true,
          false, 3, 'b_reabrir_mesa_comanda');
        frmVendaTouchAbertura.ShowModal;
        ok := frmVendaTouchAbertura.Tag = 1;
        id_usuario := frmVendaTouchAbertura.id_garcom;
        frmVendaTouchAbertura.free;
      end
      else
      begin
        if not acesso_reabrir then
        begin
          frmVendaTouchAbertura := tfrmVendaTouchAbertura.Create(self, true,
            false, 3, 'b_reabrir_mesa_comanda');
          frmVendaTouchAbertura.ShowModal;
          ok := frmVendaTouchAbertura.Tag = 1;
          id_usuario := frmVendaTouchAbertura.id_garcom;
          frmVendaTouchAbertura.free;
        end;
      end;

      if ok then
      begin
        ExecutaComandoSQL(' update venda set sit_001=8 where emp_001=' +
          inttostr(recproj.iemp) + ' and ven_001=' + qrVendaMesa.fieldByName
          ('id_venda').asstring);
        qrVendaMesa.Refresh;
      end;
    end;
  end;
end;

procedure TfrmVendaTouch.acTranferenciaItemExecute(Sender: TObject);
var
  id_usuario: Integer;
  ok : boolean;
begin
  if qrVendaItem.Active then
  begin
    if qrVendaItem.RecordCount > 0 then
    begin

      if bExigeSenhaTranferenciaItem then
      begin
        frmVendaTouchAbertura := tfrmVendaTouchAbertura.Create(self, true, false, 3,
          'b_permite_transferencia_item');
        frmVendaTouchAbertura.ShowModal;
        ok := frmVendaTouchAbertura.Tag = 1;
        id_usuario := frmVendaTouchAbertura.id_garcom;
        frmVendaTouchAbertura.free;
      end
      else
        ok := true;

      if ok then
      begin
        frmTransferenciaitem := TfrmTransferenciaitem.Create(self,
          qrVendaMesa.FieldByName('id_venda').AsInteger);
        frmTransferenciaitem.ShowModal;
        if frmTransferenciaitem.tag = 1 then
        begin
          AtualizaTotalMesa(qrVendaMesa.FieldByName('id_venda').AsInteger); //
          AtualizaTotalMesa(frmTransferenciaitem.id_venda_destino); //
        end;
        frmTransferenciaitem.Free;
      end;
      qrVendaMesa.Refresh; // Atualiza a query na tela, nesse caso os valores

    end
    else
      Application.MessageBox('Esta venda não possui itens!', 'Atenção',
        MB_ICONINFORMATION + MB_OK);
  end;
end;

procedure TfrmVendaTouch.acTranferenciaMesaExecute(sender: TObject);
var
  ok: boolean;
  id_usuario_transf: Integer;
begin
  id_usuario_transf := recproj.iUsuario;

  if bExigeSenhaTranferenciaMesa then
  begin
    frmVendaTouchAbertura := tfrmVendaTouchAbertura.Create(self, true, false, 3,
      'b_transferencia_mesa');
    frmVendaTouchAbertura.ShowModal;
    ok := frmVendaTouchAbertura.Tag = 1;
    id_usuario_transf := frmVendaTouchAbertura.id_garcom;
    frmVendaTouchAbertura.free;
  end
  else
    ok := true;

  if ok then
  begin
    frmControleMesaJuntarTransferir := TfrmControleMesaJuntarTransferir.Create
      (nil, qrVendaMesa.fieldByName('id_venda').AsInteger,
      qrVendaMesa.fieldByName('nro_mesa').AsInteger, 1, id_usuario_transf);
    frmControleMesaJuntarTransferir.ShowModal;
    if frmControleMesaJuntarTransferir.Tag = 1 then
    begin
      qrVendaMesa.Locate('id_mesa',
        frmControleMesaJuntarTransferir.id_mesa_destino, []);
      edMesa.Text := qrVendaMesa.fieldByName('nro_mesa').asstring;
    end;
    frmControleMesaJuntarTransferir.free;
  end;
  qrVendaMesa.Refresh;
end;

procedure TfrmVendaTouch.AtualizaTotalMesa(iVenda: Integer);
begin
  ExecutaComandoSQL('select fn_calcula_total_venda(:idvenda,:idempresa);',
    vararrayof([iVenda, recproj.iemp]));
  qrVendaMesa.Refresh;
  qrVendaItem.Refresh;
end;

procedure TfrmVendaTouch.AlternaMesaComanda;
begin
  btTipoMesa.Enabled := tipoVendaSelecionada = 'C';
  btTipoComanda.Enabled := tipoVendaSelecionada = 'M';

  if tipoVendaSelecionada = 'C' then
    lbTipoVenda.Caption := 'COMANDA'
  else
    lbTipoVenda.Caption := 'MESA';

  if tipoVendaSelecionada = 'M' then
  begin
    if not acesso_mesa_usuario then
    begin
      Application.MessageBox(pchar(format('Acesso negado para o usuário %s!',
        [recproj.sUsuario])), 'Atenção', MB_ICONWARNING);
      btTipoMesa.Enabled := false;
      btTipoComanda.Enabled := true;
      abort;
    end;

    qrVendaMesa.Filter := 'tipo_venda=''M''';
    acFecharMesa.Caption := '&Fechar mesa [F6]';
    acReabrirMesa.Caption := 'Rea&brir mesa [Ctrl+A]';
    // acCancelaMesa.Caption := 'Cancelar mesa [Ctrl+W]';
    acLimparMesa.Caption := 'Liberar mesa';
    acAlterarTituloMesa.Caption := 'Alterar nome da mesa';

    imgLivre.Visible := true;
    imgOcupada.Visible := true;
    imgFechada.Visible := true;
    imgReserva.Visible := true;
    imgLimpeza.Visible := true;
    imgComandaOcupada.Visible := false;
    imgComandaFechada.Visible := false;
    imgComandaLimpeza.Visible := false;
    // lbLegendaLivre.Visible :=true;
    // lbLegendaReservada.Visible := true;

  end
  else
  begin
    if not acesso_comanda_usuario then
    begin
      Application.MessageBox(pchar(format('Acesso negado para o usuário %s!',
        [recproj.sUsuario])), 'Atenção', MB_ICONWARNING);
      btTipoMesa.Enabled := true;
      btTipoComanda.Enabled := false;
      abort;
    end;

    qrVendaMesa.Filter := 'tipo_venda=''C''';
    acFecharMesa.Caption := '&Fechar comanda [F6]';
    acReabrirMesa.Caption := 'Rea&brir comanda [Ctrl+A]';
    // acCancelaMesa.Caption := 'Cancelar comanda [Ctrl+W]';
    acLimparMesa.Caption := 'Liberar comanda';
    acAlterarTituloMesa.Caption := 'Alterar nome da comanda';

    imgLivre.Visible := false;
    imgOcupada.Visible := false;
    imgFechada.Visible := false;
    imgReserva.Visible := false;
    imgLimpeza.Visible := false;
    imgComandaOcupada.Visible := true;
    imgComandaFechada.Visible := true;
    imgComandaLimpeza.Visible := true;
    // lbLegendaLivre.Visible := false;
    // lbLegendaReservada.Visible:= false;
  end;
end;

procedure TfrmVendaTouch.btTipoComandaClick(sender: TObject);
begin
  if not acesso_comanda_usuario then
    exit;
  qrVendaMesa.Filtered := true;
  tipoVendaSelecionada := 'C';
  AlternaMesaComanda;
end;

procedure TfrmVendaTouch.btTipoMesaClick(sender: TObject);
begin
  if not acesso_mesa_usuario then
    exit;
  qrVendaMesa.Filtered := true;
  tipoVendaSelecionada := 'M';
  AlternaMesaComanda;
end;

procedure TfrmVendaTouch.Button3Click(Sender: TObject);
begin
  showmessage('Janela: ' + inttostr(self.Width) + ' X '  +inttostr(self.height) + sLineBreak +
              'Panel :' + inttostr(DBCtrlGrid1.PanelWidth) + ' X ' + inttostr(DBCtrlGrid1.Panelheight));
end;

procedure TfrmVendaTouch.btLimparClick(sender: TObject);
begin
  edMesa.Clear;
end;

procedure TfrmVendaTouch.btnSairClick(sender: TObject);
begin
  self.close;
end;

procedure TfrmVendaTouch.cliqueAbertura;
var
  statusMesa: Integer;
begin
  edMesa.SelectAll;
  ValidaAcoesStatusMesas;
  statusMesa := qrVendaMesa.fieldByName('status').AsInteger;

  // Se a mesa nao estiver aberta
  if statusMesa <> 8 then
  begin
    // Mesa disponível não aberta (não ocorre para comanda)
    if statusMesa = 4 then
    begin
      if Application.MessageBox
        ('A mesa ainda não foi aberta, gostaria de abri-la?',
        pchar(self.Caption), MB_ICONQUESTION + MB_yesno) = mrYes then
        acAberturaDeMesa.Execute
      else
      begin
        edMesa.Clear;
        edMesa.SetFocus;
      end;
    end
    // mesa Reservada (não ocorre para comanda)
    else if statusMesa = 19 then
    begin
      if Application.MessageBox
        ('A mesa encontra-se reservada, gostaria de abrir a mesa mesmo assim?',
        pchar(self.Caption), MB_ICONQUESTION + MB_yesno) = mrYes then
        acAberturaDeMesa.Execute
      else
      begin
        edMesa.Clear;
        edMesa.SetFocus;
      end;
    end
    // mesa fechada
    else
    begin
      acReabrirMesa.Execute;
    end;
  end;
end;

procedure TfrmVendaTouch.btOKClick(sender: TObject);
var
  mesaAtual, mesaTopo: string;
  statusMesa, numero_mesa_comanda: Integer;
  procedure Limpa_sai;
  begin
    edMesa.Clear;
    edMesa.SetFocus;
  end;

begin
  if edMesa.Text <> '' then
  begin
    if qrVendaMesa.Locate('nro_mesa;tipo_venda',
      vararrayof([edMesa.Text, tipoVendaSelecionada]), []) then
    begin
      cliqueAbertura;
    end
    else
    // nao encontrou a mesa
    begin
      if tipoVendaSelecionada = 'M' then
      begin
        Limpa_sai;
        Application.MessageBox('Mesa inexistente!', pchar(self.Caption),
          MB_ICONINFORMATION);
      end
      else
      begin
        numero_mesa_comanda := strtoint(edMesa.Text);
        // verifica se o número da comanda está  dentro do parametrizado...
        if (numero_mesa_comanda >= iNroComandaInicio) and
          (numero_mesa_comanda <= iNroComandaFim) then
        begin
//         if Application.MessageBox
//            ('A comanda ainda não foi aberta, gostaria de abri-la?',
//            pchar(self.Caption), MB_ICONQUESTION + MB_yesno) = mrYes then
            acAberturaDeMesaExecute(self, 'C', numero_mesa_comanda)
        end
        else
        begin
          Application.MessageBox('Comanda inexistente!', pchar(self.Caption),
            MB_ICONINFORMATION);
          Limpa_sai;
        end;
      end;
    end;
  end
  else
    edMesa.Text := qrVendaMesa.fieldByName('nro_mesa').asstring;
  ValidaAcoesStatusMesas;

end;

constructor TfrmVendaTouch.Create(sender: Tcomponent);
begin
  inherited Create(sender);
  CarregaParametrosConfig;
  frmMenu.VerificaPermissaoAcesso((acesso_touch_usuario and acesso_mesa_usuario)
    or (acesso_touch_usuario and acesso_comanda_usuario));
  // verifica se existe caixa aberto para o usuário atual
  frmMenu.VerificaCaixaAberto;
  qrVendaMesa.ParamByName('id_empresa').AsInteger := recproj.iemp;
  qrVendaMesa.Open;
  tipoVendaSelecionada := 'M';


  // ajusta a imagem de fundo
  { imgFundo.Top:=0;
    imgFundo.left:=0;
    imgFundo.Width:=self.Width;
    imgFundo.height:=self.height;

    AjustaPanels; }
  if acesso_mesa_usuario then
    btTipoMesa.Click
  else
    btTipoComanda.Click;


  frmControleMesaRelatorios := TfrmControleMesaRelatorios.Create(self);

  lbTotalVenda.Visible := not LerBooleanConfig('CKOCULTARVALORESMESA',
    frmMenu.cdsCFG.FileName);
  dbtTotalVenda.Visible := not LerBooleanConfig('CKOCULTARVALORESMESA',
    frmMenu.cdsCFG.FileName);

end;

procedure TfrmVendaTouch.DBCtrlGrid1Click(sender: TObject);
begin
  edMesa.Text := qrVendaMesa.fieldByName('nro_mesa').asstring;

  if qrVendaMesa.Active then
  begin
    if qrVendaMesa.recordcount > 0 then
    begin
      cliqueAbertura;
    end;
  end;
  // cliqueAbertura(statusMesa);
end;

procedure TfrmVendaTouch.DBCtrlGrid1DblClick(sender: TObject);
begin
  if acLimparMesa.Enabled then
    acLimparMesa.Execute;
end;

procedure TfrmVendaTouch.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
  if qrVendaMesa.Active then
  begin
    imgMesa.Align := alNone;
    imgMesa.Top := 1;
    imgMesa.Left := 1;
    imgMesa.Width := DBCtrlGrid.PanelWidth - 2;
    imgMesa.Height := DBCtrlGrid.PanelHeight - 2;
    imgMesa.Stretch := true;
    imgMesa.proportional := false;

    if Index = DBCtrlGrid1.PanelIndex then
    begin
      imgMesa.Top := 6;
      imgMesa.Left := 6;
      imgMesa.Width := DBCtrlGrid.PanelWidth - 12;
      imgMesa.Height := DBCtrlGrid.PanelHeight - 12;
    end;

    if qrVendaMesa.recordcount > 0 then
    begin
      if qrVendaMesa.fieldByName('tipo_venda').asstring = 'M' then
      begin
        if qrVendaMesa.fieldByName('status').AsInteger = 4 then
          imgMesa.Picture := imgLivre.Picture
        else if qrVendaMesa.fieldByName('status').AsInteger = 19 then
          imgMesa.Picture := imgReserva.Picture
        else if qrVendaMesa.fieldByName('status').AsInteger = 8 then
          imgMesa.Picture := imgOcupada.Picture
        else if qrVendaMesa.fieldByName('status').AsInteger = 15 then
          imgMesa.Picture := imgLimpeza.Picture
        else
          imgMesa.Picture := imgFechada.Picture;

        if trim(qrVendaMesa.fieldByName('obs_mesa').asstring) <> '' then
          lbNroMesaComanda.Style.Font.Size := 9
        else
          lbNroMesaComanda.Style.Font.Size := 12

      end

      else
      begin
        if qrVendaMesa.fieldByName('status').AsInteger = 8 then
          imgMesa.Picture := imgComandaOcupada.Picture
        else if qrVendaMesa.fieldByName('status').AsInteger = 15 then
          imgMesa.Picture := imgComandaLimpeza.Picture
        else
          imgMesa.Picture := imgComandaFechada.Picture;
      end;
      imgMesa.Visible := true;
    end
    else
      imgMesa.Picture := nil;
  end;

end;

procedure TfrmVendaTouch.edMesaKeyDown(sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
    btOK.Click;
end;

procedure TfrmVendaTouch.FormClose(sender: TObject; var Action: TCloseAction);
begin
  frmControleMesaRelatorios.free;
end;


procedure TfrmVendaTouch.FormResize(Sender: TObject);
begin
  //AjustaPanels;
  DBCtrlGrid1.ColCount :=  Trunc(DBCtrlGrid1.Width / 64);

end;

procedure TfrmVendaTouch.FormShow(Sender: TObject);
begin
  FormResize(nil);
  btTipoComanda.Click;
  if uppercase( copy(frmmenu.Caption, 1))='GRCONTROL'  then // Empresa do Ezequiel
  begin
//    self.Caption := 'GRCONTROL RESTAURANTE  |  GR SOLUTION FONE: (85) 98802-4258 / (85) 3224-6638  |  WWW.GRSOLUTION.COM.BR' ;
//    recproj.sInfoDevSistema1 := 'Sistema desenvolvido por Gr Solution (85)98802-4258 / (85)3224-6638';
//    recproj.sInfoDevSistema2 := 'Sistema desenvolvido por Gr Solution '+ slinebreak +'Fones: (85)98802-4258 / (85)3224-6638';
//    recproj.sSiteDevSistema  := 'www.grsolution.com.br';
  end;

  if uppercase( copy(frmmenu.Caption, 1))='AGENTE'  then    // Empresa do Adans
  begin
//    recproj.sInfoDevSistema1 := 'Sistema desenvolvido por Onix System (11)2758+4600 / 98984-3407';
//    recproj.sInfoDevSistema2 := 'Sistema desenvolvido por Onix System '+ slinebreak +'Fones: (11)2758+4600 / 98984-3407';
//    recproj.sSiteDevSistema  := 'www.onixsystem.com.br';
  end;

  if uppercase( copy(frmmenu.Caption, 1))='INTEGRACAO'  then  // Empresa Rogerio
  begin
//    self.Caption := 'INTEGRAÇÃO | INTEGRAÇÃO C (11)2905-4918 / (11)94756-9617';
//    recproj.sInfoDevSistema1 := 'Sistema desenvolvido por INTEGRAÇÃO C (11)2905-4918 / (11)94756-9617 ';
//    recproj.sInfoDevSistema2 := 'Sistema desenvolvido por INTEGRAÇÃO C '+ slinebreak +'Fones: (11)2905-4918 /(11)94756-9617';
//    recproj.sSiteDevSistema  := 'www.integracaoc.com.br';
  end;

  if uppercase ( copy(frmmenu.Caption,1))='ELITEFOOD' THEN
  begin
    recproj.sInfoDevSistema1 := 'Sistema desenvolvido por ELITE STORY';
          recproj.sInfoDevSistema2 := 'Sistema desenvolvido por ELITE STORY';
          recproj.sSiteDevSistema  := '';
  end

end;



procedure TfrmVendaTouch.qrVendaMesaAfterOpen(DataSet: TDataSet);
begin
  ValidaAcoesStatusMesas;
end;

procedure TfrmVendaTouch.qrVendaMesaAfterRefresh(DataSet: TDataSet);
begin
  if nroMesaSelecionada <> 0 then
    qrVendaMesa.Locate('nro_mesa;tipo_venda',
      vararrayof([nroMesaSelecionada, tipoVendaSelecionada]), []);
end;

procedure TfrmVendaTouch.qrVendaMesaAfterScroll(DataSet: TDataSet);
begin
  qrVendaItem.close;
  if qrVendaMesa.Active then
  begin
    if qrVendaMesa.fieldByName('id_venda').isnull then
      vendaSelecionada := 0
    else
    begin
      vendaSelecionada := qrVendaMesa.fieldByName('id_venda').AsInteger;
      tipoVendaSelecionada := qrVendaMesa.fieldByName('tipo_venda').asstring;
      qrVendaItem.ParamByName('emp').AsInteger := recproj.iemp;
      qrVendaItem.ParamByName('id_venda').AsInteger := vendaSelecionada;
      qrVendaItem.Open;
    end;
    ValidaAcoesStatusMesas;
  end;
end;

procedure TfrmVendaTouch.qrVendaMesaBeforeRefresh(DataSet: TDataSet);
begin
  nroMesaSelecionada := qrVendaMesa.fieldByName('nro_mesa').AsInteger;
  tipoVendaSelecionada := qrVendaMesa.fieldByName('tipo_venda').asstring;
end;

procedure TfrmVendaTouch.Timer1Timer(Sender: TObject);
begin
if qrVendaMesa.Active then // Atualiza as vendas das mesas no tempo de 30 segundos
  begin
    qrVendaMesa.Refresh;
  end;
end;

end.
