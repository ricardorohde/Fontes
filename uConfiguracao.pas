unit uConfiguracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadrao, Data.DB, Datasnap.DBClient,
  cxLookAndFeels, Vcl.DBActns, Vcl.ActnList, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.ToolWin, Vcl.StdCtrls, Vcl.Mask, cxGraphics, cxControls, ACBrPosPrinter,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxDBEdit, cxMaskEdit, System.TypInfo,
  cxButtonEdit, cxGroupBox, Vcl.DBCtrls, cxImage, cxTextEdit, MemDS,
  DBAccess, Uni, dxGDIPlusClasses, JvExStdCtrls, JvEdit, JvValidateEdit,
  JvExMask, JvToolEdit, Vcl.Samples.Spin, JvCombobox, JvDBCombobox,
  AdvGlowButton, ACBrBase, ACBrSocket, ACBrIBPTax, cxDropDownEdit, cxCalc,
  AdvGroupBox, cxCurrencyEdit, Printers, cxCheckBox, cxClasses, System.Actions,
  cxSpinEdit, frxClass, ACBRBal, ACBRDevice, Vcl.Buttons, ACBRUtil, ACBrDFe, ACBrDFeSSL,
  ACBrNFe, pcnConversao, pcnConversaoNFe, CPort, ACBrSAT,
  ACBrSATExtratoFortesFr, ACBrSATExtratoClass, ACBrSATExtratoESCPOS, ACBrSATClass,
  cxRadioGroup, ACBrECF, ACBrECFClass, ACBrPAFClass, System.Math,
  ACBrSATExtratoReportClass, ACBrTEFDClass, ACBrTEFD, System.DateUtils, JvSpin,
  JvDBSpinEdit, JvExControls, JvXPCore, JvXPButtons, JvExExtCtrls, JvImage,
  JvDialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, ACBrDFeReport;

type
tEstadoEcfSimulado = (tpsLivre, tpsVenda, tpsSubTotal, tpsTotalPagar, tpsPagamento, tpsRelatorio);
  TfrmConfiguracao = class(TfrmPadrao)
    btConfirmar: TToolButton;
    btCancelar: TToolButton;
    pcPrincipal: TPageControl;
    pgGeral: TTabSheet;
    pgEmpresa: TTabSheet;
    qrEmpresa: TUniQuery;
    qrEmpresaemp_001: TIntegerField;
    qrEmpresaemp_002: TWideStringField;
    qrEmpresaemp_003: TWideStringField;
    qrEmpresaemp_004: TWideStringField;
    qrEmpresaemp_005: TWideStringField;
    qrEmpresaemp_006: TWideStringField;
    qrEmpresaemp_008: TWideStringField;
    qrEmpresadat_001_1: TDateTimeField;
    qrEmpresadat_001_2: TDateTimeField;
    qrEmpresausu_001_1: TIntegerField;
    qrEmpresausu_001_2: TIntegerField;
    qrEmpresainclusao: TWideStringField;
    qrEmpresaedicao: TWideStringField;
    qrEmpresacid_001: TIntegerField;
    qrEmpresaest_003: TWideStringField;
    qrEmpresapai_002: TWideStringField;
    qrEmpresacid_002: TWideStringField;
    qrEmpresacep_002: TWideStringField;
    qrEmpresaemp_007: TWideStringField;
    qrEmpresaemp_011: TBlobField;
    qrEmpresaemp_012: TIntegerField;
    qrEmpresacep_004: TWideStringField;
    qrEmpresacep_003: TWideStringField;
    qrEmpresasituacao: TWideStringField;
    qrEmpresaemp_013: TWideStringField;
    qrEmpresaemp_014: TWideStringField;
    dsEmpresa: TDataSource;
    Label13: TLabel;
    lbRazaoSocial: TLabel;
    Label15: TLabel;
    lbCNPJ: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    lbTipoEmp: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    dbeRazaoSocial: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBImage1: TcxDBImage;
    cxDBTextEdit3: TDBEdit;
    cxGroupBox1: TcxGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    edEndereco: TDBEdit;
    edComplemento: TDBEdit;
    edBairro: TDBEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    edNumero: TcxDBTextEdit;
    edTelefone: TcxDBMaskEdit;
    edMail: TcxDBTextEdit;
    btAlterar: TToolButton;
    pgSATNFC: TTabSheet;
    grSAT: TGroupBox;
    edSATcodAtivacao: TEdit;
    Label14: TLabel;
    Label19: TLabel;
    cbIndRatISSQN: TComboBox;
    cbIndExigISSQN: TComboBox;
    Label22: TLabel;
    edSWHCNPJ: TEdit;
    Label23: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    edAssSWH: TEdit;
    pgMesa: TTabSheet;
    GroupBox7: TGroupBox;
    edTaxaAdicional: TComboBox;
    Label11: TLabel;
    Label37: TLabel;
    edMensagemTxServico: TEdit;
    Label38: TLabel;
    GroupBox8: TGroupBox;
    ckCouvertMesa: TCheckBox;
    edMensagemCouvertMesa: TEdit;
    GroupBox9: TGroupBox;
    Label40: TLabel;
    Label39: TLabel;
    GroupBox10: TGroupBox;
    ckConsumacao: TCheckBox;
    GroupBox11: TGroupBox;
    ckExigirGarcomLancarItem: TCheckBox;
    ckExigirSenhaCancelamentoItens: TCheckBox;
    ckExigirSenhaTransfMesa: TCheckBox;
    ckHabilitarAlterarValorUnitario: TCheckBox;
    ckAgruparItensIguaisMesa: TCheckBox;
    Label41: TLabel;
    edValorCouvertFem: TJvValidateEdit;
    edValorConsumacao: TJvValidateEdit;
    edValorCouvertMasc: TJvValidateEdit;
    edIdCep: TcxDBButtonEdit;
    edIdCidade: TcxDBButtonEdit;
    acBuscaCEP: TAction;
    acBuscaCidade: TAction;
    ckExigePreFechamentoMesa: TCheckBox;
    edCaminhoDLLSAT: TJvFilenameEdit;
    edSATDiretorioXML: TJvDirectoryEdit;
    Label43: TLabel;
    cbTipo: TJvDBComboBox;
    qrEmpresacrt_codigo: TIntegerField;
    qrListaRegimeTributario: TUniQuery;
    Label16: TLabel;
    qrListaRegimeTributariocrt_codigo: TIntegerField;
    qrListaRegimeTributariocrt_descricao: TWideStringField;
    dsListaRegimeTributario: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    edSATVersaoLayout: TEdit;
    Label44: TLabel;
    btImportarIBPT: TAdvGlowButton;
    pgDelivery: TTabSheet;
    AdvGroupBox1: TAdvGroupBox;
    qrEmpresataxadeliverypadrao: TFloatField;
    dbValordelivery: TcxDBCurrencyEdit;
    ckHabilitarAlterarValorUnitarioDL: TCheckBox;
    Label46: TLabel;
    edMensagemCupomDelivery: TEdit;
    ckImprimirIngredientesCozinhaMesa: TCheckBox;
    ckImprimirIngredientesCozinhaDelivery: TCheckBox;
    ckFacionadoMaiorValorDelivery: TCheckBox;
    ckFacionadoMaiorValorMesa: TCheckBox;
    qrEmpresab_pdv_coletivo: TBooleanField;
    qrEmpresab_permite_fechamento_caixa_venda_aberta: TBooleanField;
    pgPDV: TTabSheet;
    GroupBox13: TGroupBox;
    ckAlterarValorUnitarioPDV: TCheckBox;
    ckAlterarQtdPDV: TCheckBox;
    ckPermiteDescontoFechamentoPDV: TCheckBox;
    ckPermiteDescontoItemPDV: TCheckBox;
    ckExigirSenhaCancelamentoItensPDV: TCheckBox;
    ckExigirSenhaCancelamentoVendaPDV: TCheckBox;
    ckNumeroVendaPorCaixaDelivery: TCheckBox;
    ckSolicitarCLienteVendaPDV: TCheckBox;
    pgBalcao: TTabSheet;
    GroupBox14: TGroupBox;
    ckFacionadoMaiorValorBalcao: TCheckBox;
    ckUtilizaPainelSenhaBalcao: TCheckBox;
    CKALTERARVALORUNITARIOBALCAO: TCheckBox;
    CKEXIGIRSENHACANCELAMENTOITENSBALCAO: TCheckBox;
    CKSOLICITARCLIENTEVENDABALCAO: TCheckBox;
    ckExigirSenhaCancelamentoVendaBalcao: TCheckBox;
    ckPermiteDescontoFechamentoBalcao: TCheckBox;
    pgComanda: TTabSheet;
    GroupBox15: TGroupBox;
    ckExigirGarcomLancarItemComanda: TCheckBox;
    ckExigirSenhaCancelamentoItensComanda: TCheckBox;
    ckHabilitarAlterarValorUnitarioComanda: TCheckBox;
    ckAgruparItensIguaisComanda: TCheckBox;
    ckExigePreFechamentoComanda: TCheckBox;
    ckImprimirIngredientesCozinhaComanda: TCheckBox;
    ckFacionadoMaiorValorComanda: TCheckBox;
    ckExigirSenhaCancelamentoComanda: TCheckBox;
    qrEmpresanumero_comanda_inicio: TIntegerField;
    qrEmpresanumero_comanda_fim: TIntegerField;
    GroupBox16: TGroupBox;
    Label5: TLabel;
    edNumeroComandaInicio: TcxDBSpinEdit;
    Label6: TLabel;
    edNumeroComandaFim: TcxDBSpinEdit;
    GroupBox19: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    edTaxaAdicionalComanda: TComboBox;
    edMensagemTxServicoComanda: TEdit;
    GroupBox17: TGroupBox;
    ckCouvertComanda: TCheckBox;
    edMensagemCouvertComanda: TEdit;
    ckImprimirCupomFechamentoDelivery: TCheckBox;
    ckImprimirCupomCancelamentoItemMesa: TCheckBox;
    ckImprimirCupomCancelamentoItemComanda: TCheckBox;
    ckLiberacaoPosFechamentoComanda: TCheckBox;
    ckLiberacaoPosFechamentoMesa: TCheckBox;
    ckExigirSenhaReabrirMesa: TCheckBox;
    ckExigirSenhaReabrirComanda: TCheckBox;
    pgGaveta: TTabSheet;
    grGavetaConfig: TAdvGroupBox;
    cbModeloImpGaveta: TComboBox;
    cbPortaImpGaveta: TComboBox;
    Label47: TLabel;
    Label10: TLabel;
    btTestarGaveta: TAdvGlowButton;
    ckUtilizaGaveta: TCheckBox;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    pgImpressao: TTabSheet;
    repTesteImpressao: TfrxReport;
    ckBalcaoModoTouch: TCheckBox;
    ckEmiteFiscalBalcao: TCheckBox;
    ckExibeCodProdutoBalcaoTouch: TCheckBox;
    ckOcultaObsTecladoBalcaoTouch: TCheckBox;
    GroupBox20: TGroupBox;
    cxDBCheckBox2: TcxDBCheckBox;
    dbPdvcoletivo: TcxDBCheckBox;
    ckFechamentoCaixaEmail: TCheckBox;
    edEmailFechamentoCaixa: TEdit;
    pgBalanca: TTabSheet;
    ckUtilizaBalanca: TCheckBox;
    ACBrBAL1: TACBrBAL;
    pgNFCe: TTabSheet;
    pcConfigNFCEACBR: TPageControl;
    pgConfigNFCEACBRCertificado: TTabSheet;
    Label34: TLabel;
    gbCertificado: TGroupBox;
    Label36: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    edNFCeSenhaCertificado: TEdit;
    edNFCeNumSerieCertificado: TEdit;
    cbNFCeTipoEmissaoSSLLib: TComboBox;
    pgConfigNFCEACBRGeral: TTabSheet;
    GroupBox6: TGroupBox;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    ckNFCeSalvar: TCheckBox;
    cbNFCeFormaEmissao: TComboBox;
    ckNFCeAtualizarXML: TCheckBox;
    ckNFCeExibirErroSchema: TCheckBox;
    edNFCeFormatoAlerta: TEdit;
    cbNFCeModeloDF: TComboBox;
    ckNFCeRetirarAcentos: TCheckBox;
    cbNFCeVersaoDF: TComboBox;
    edNfceIdToken: TEdit;
    edNfceToken: TEdit;
    pgConfigNFCEACBRWebservice: TTabSheet;
    GroupBox21: TGroupBox;
    Label72: TLabel;
    ckNCFeVisualizar: TCheckBox;
    cbNFCeUF: TComboBox;
    ckNCFeSalvarSOAP: TCheckBox;
    GroupBox23: TGroupBox;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    edNFCeProxyHost: TEdit;
    edNFCeProxyPorta: TEdit;
    edNFCeProxyUser: TEdit;
    edNFCeProxySenha: TEdit;
    gbxRetornoEnvio: TGroupBox;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    ckNCFeAjustarAut: TCheckBox;
    edNFCeTentativas: TEdit;
    edNFCeIntervalo: TEdit;
    edNFCeAguardar: TEdit;
    pgConfigNFCEACBREmitente: TTabSheet;
    pgConfigNFCEACBRArquivos: TTabSheet;
    sbPathNFe: TSpeedButton;
    Label93: TLabel;
    Label94: TLabel;
    sbPathCan: TSpeedButton;
    Label95: TLabel;
    sbPathCCe: TSpeedButton;
    Label96: TLabel;
    sbPathInu: TSpeedButton;
    Label97: TLabel;
    sbPathDPEC: TSpeedButton;
    Label98: TLabel;
    sbPathEvento: TSpeedButton;
    edtPathCCe: TEdit;
    edtPathNFe: TEdit;
    edtPathCan: TEdit;
    edtPathInu: TEdit;
    edtPathDPEC: TEdit;
    edtPathEvento: TEdit;
    pgConfigNFCEACBRDANFE: TTabSheet;
    pgConfigNFCEACBREmail: TTabSheet;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    edtSmtpHost: TEdit;
    edtSmtpPort: TEdit;
    edtSmtpUser: TEdit;
    edtSmtpPass: TEdit;
    edtEmailAssunto: TEdit;
    cbEmailSSL: TCheckBox;
    mmEmailMsg: TMemo;
    cbxSalvarArqs: TCheckBox;
    cbxPastaMensal: TCheckBox;
    cbxAdicionaLiteral: TCheckBox;
    cbxEmissaoPathNFe: TCheckBox;
    cbxSalvaPathEvento: TCheckBox;
    cbxSepararPorCNPJ: TCheckBox;
    cbxSepararPorModelo: TCheckBox;
    edNFCeCaminhoCertificado: TJvFilenameEdit;
    btNFCeDataValidadeCertificado: TAdvGlowButton;
    btNFCeSha256Certificado: TAdvGlowButton;
    btNFCeCNPJCertificado: TAdvGlowButton;
    btNFCeSubjectNameCertificado: TAdvGlowButton;
    btNFCeNumSerieCertificado: TAdvGlowButton;
    ckNFCeAssinar: TCheckBox;
    edNFCeSHA256: TEdit;
    ACBrNFe1: TACBrNFe;
    edNFCePathLogs: TJvDirectoryEdit;
    edNFCePathSchemas: TJvDirectoryEdit;
    rgNFCeTipoAmb: TRadioGroup;
    qrEmpresanumero_nfce: TIntegerField;
    ComPort1: TComPort;
    AdvGroupBox2: TAdvGroupBox;
    ckUtilizaIDChamada: TCheckBox;
    Label83: TLabel;
    edPortaIDChamada: TEdit;
    cbBaudIDChamada: TComboBox;
    Label84: TLabel;
    cbDatabIDChamada: TComboBox;
    Label85: TLabel;
    cbStopIDChamada: TComboBox;
    Label86: TLabel;
    cbParidadeIDChamada: TComboBox;
    Label87: TLabel;
    cbFlowcontrolIDChamada: TComboBox;
    Label88: TLabel;
    CKIGNORADDDIDCHAMADA: TCheckBox;
    AdvGroupBox4: TAdvGroupBox;
    Label91: TLabel;
    meIdchamda: TMemo;
    btTesteIdChamada: TAdvGlowButton;
    ACBrSAT: TACBrSAT;

    ACBrPosPrinter: TACBrPosPrinter;
    GroupBox24: TGroupBox;
    btAtivarSAT: TAdvGlowButton;
    btConsultarSAT: TAdvGlowButton;
    btStatusOperacional: TAdvGlowButton;
    btTesteFimAFim: TAdvGlowButton;
    btAtualizacaoSW: TAdvGlowButton;
    btExtrairLog: TAdvGlowButton;
    qrEmpresaserie_nfce: TIntegerField;
    ACBrSATExtratoESCPOS: TACBrSATExtratoESCPOS;
    ACBrSATExtratoFortes: TACBrSATExtratoFortes;
    ScrollBox1: TScrollBox;
    edCaminhoImp: TComboBox;
    btTestarImpressoraTermica: TAdvGlowButton;
    btConfigTermica: TAdvGlowButton;
    Label113: TLabel;
    cxModoImpTermica: TcxRadioGroup;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    edImpBalcao: TComboBox;
    btTestarImpressoraBalcao: TAdvGlowButton;
    edImpCozinha1: TComboBox;
    btConfigCozinha: TAdvGlowButton;
    btTestarImpressoraCozinha: TAdvGlowButton;
    edImpBar1: TComboBox;
    btTestarImpressoraBar: TAdvGlowButton;
    edImpCaixa: TComboBox;
    btTestarImpressoraCaixa: TAdvGlowButton;
    edImpDelivery: TComboBox;
    btTestarImpressoraDelivery: TAdvGlowButton;
    cxModoImpBalcao: TcxRadioGroup;
    cxModoImpCozinha: TcxRadioGroup;
    cxModoImpBar: TcxRadioGroup;
    cxModoImpCaixa: TcxRadioGroup;
    cxModoImpDelivery: TcxRadioGroup;
    btConfigBalcao: TAdvGlowButton;
    btConfigBAR: TAdvGlowButton;
    btConfigCaixa: TAdvGlowButton;
    btConfigDelivery: TAdvGlowButton;
    gbescpos: TGroupBox;
    rgSuporteESCPOS: TRadioGroup;
    gbComSuporte: TGroupBox;
    Label89: TLabel;
    Label90: TLabel;
    Label92: TLabel;
    Label99: TLabel;
    Label106: TLabel;
    edtLinhaEntreExtratos: TSpinEdit;
    edtColunaBobina: TSpinEdit;
    edtEspacoEntreLinhas: TSpinEdit;
    edtLarguraCodigoBarra: TSpinEdit;
    cmbImpressoraNaoFiscal: TComboBox;
    gbSemSuporte: TGroupBox;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    edtLargura: TSpinEdit;
    edtMargemTopo: TSpinEdit;
    edtMargemRodape: TSpinEdit;
    edtMargemEsquerda: TSpinEdit;
    ckbExtratoPreview: TCheckBox;
    edtMargemDireita: TSpinEdit;
    btnTestaImpressaoExtrato: TAdvGlowButton;
    lCryptLib: TLabel;
    lHttpLib: TLabel;
    lXmlSign: TLabel;
    cbNFCECryptLib: TComboBox;
    cbNFCEHttpLib: TComboBox;
    cbNFCEXmlSignLib: TComboBox;
    Label35: TLabel;
    qrEmpresacod_ibge: TWideStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    Label119: TLabel;
    ckCederTrocoGarcomMesa: TCheckBox;
    ckCederTrocoGarcomComanda: TCheckBox;
    ckCederTrocoEntregadorDelivery: TCheckBox;
    ckSuprimirCabecalhoRodapeDelivery: TCheckBox;
    ckOcultarValoresMesa: TCheckBox;
    ckOcultarValoresComanda: TCheckBox;
    ckAvisaEstoqueMinimoMesa: TCheckBox;
    ckAvisaEstoqueMinimoDelivery: TCheckBox;
    ckAvisaEstoqueMinimoPDV: TCheckBox;
    ckAvisaEstoqueMinimoBalcao: TCheckBox;
    ckAvisaEstoqueMinimoComanda: TCheckBox;
    ckExigeJustificativaCancItemMesa: TCheckBox;
    ckExigeJustificativaCancItemPDV: TCheckBox;
    ckExigeJustificativaCancItemBalcao: TCheckBox;
    ckExigeJustificativaCancItemComanda: TCheckBox;
    GroupBox1: TGroupBox;
    qrEmpresab_utiliza_controle_cliente: TBooleanField;
    qrEmpresab_permite_fechamento_caixa_outro_usuario: TBooleanField;
    qrEmpresataxa_juros: TFloatField;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    pgEcf: TTabSheet;
    pcConfigECF: TPageControl;
    TabSheet4: TTabSheet;
    SbArqLog: TSpeedButton;
    Label126: TLabel;
    Label129: TLabel;
    ckECFTentarNovamente: TCheckBox;
    ckECFBloqueiaMouseTeclado: TCheckBox;
    ckECFExibeMsg: TCheckBox;
    ckECFArredondaPorQtd: TCheckBox;
    ckECFGavetaSinalInvertido: TCheckBox;
    ckECFDescricaoGrande: TCheckBox;
    edECFMsgTrabalhando: TEdit;
    Button1: TButton;
    btnIdentificaPafECF: TButton;
    ckECFArredondamentoItemMFD: TCheckBox;
    TabSheet3: TTabSheet;
    PageControl2: TPageControl;
    TabSheet6: TTabSheet;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    edSH_RazaoSocial: TEdit;
    edSH_COO: TEdit;
    edSH_CNPJ: TEdit;
    edSH_IE: TEdit;
    edSH_IM: TEdit;
    edSH_Aplicativo: TEdit;
    edSH_NumeroAP: TEdit;
    edSH_VersaoAP: TEdit;
    edSH_Linha1: TEdit;
    edSH_Linha2: TEdit;
    TabSheet5: TTabSheet;
    Panel4: TPanel;
    bRFDLer: TButton;
    bRFDSalvar: TButton;
    mRFDParam: TMemo;
    Panel3: TPanel;
    sbDirRFD: TSpeedButton;
    Label145: TLabel;
    chRFD: TCheckBox;
    edDirRFD: TEdit;
    TabSheet9: TTabSheet;
    Label146: TLabel;
    btnDadosRZ: TButton;
    mRZ: TMemo;
    btnDadosUltimaRZ: TButton;
    tbsMenuFiscal: TTabSheet;
    grpMenuFiscalOpcoes: TGroupBox;
    btnMenuFiscalLX: TButton;
    btnMenuFiscalLMFC: TButton;
    btnMenuFiscalLMFS: TButton;
    btnMenuFiscalMFDEspelho: TButton;
    btnMenuFiscalMFDArq: TButton;
    btnMenuFiscalRelMeiosPagto: TButton;
    btnMenuFiscalRelDAVEmitidos: TButton;
    btnMenuFiscalRelIdentPAFECF: TButton;
    btnMenuFiscalConfigPAFECF: TButton;
    btnMenuFiscalNotaPaulista: TButton;
    btnArqMFNovo: TButton;
    btnArqMFDNovo: TButton;
    chkMenuFiscalCotepe1704: TCheckBox;
    chkMenuFiscalGerarArquivo: TCheckBox;
    tsTagsImpressao: TTabSheet;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    speBarrasLargura: TSpinEdit;
    BitBtn6: TBitBtn;
    MemoTesteTags: TMemo;
    chBarrasImprimeTexto: TCheckBox;
    speBarrasAltura: TSpinEdit;
    chIgnorarTagsFormatacao: TCheckBox;
    edECFMsgAguarde: TEdit;
    pgcMenuFiscalTipo: TPageControl;
    tbsMenuFiscalTipoData: TTabSheet;
    Label148: TLabel;
    Label149: TLabel;
    edtDtInicial: TDateTimePicker;
    edtDtFinal: TDateTimePicker;
    tbsMenuFiscalTipoCOO: TTabSheet;
    Label150: TLabel;
    Label151: TLabel;
    edtCOOInicial: TSpinEdit;
    edtCOOFinal: TSpinEdit;
    bAtivar: TBitBtn;
    ACBrECF1: TACBrECF;
    mResp: TMemo;
    Label127: TLabel;
    Label128: TLabel;
    lbECFStatus: TLabel;
    Label133: TLabel;
    lbECFUltimoComando: TLabel;
    btECFTestaVenda: TButton;
    btECFCancelarCupom: TButton;
    btnEfetuarRZ: TButton;
    btECFCancelarCupom2: TButton;
    ckECFindiceFormaPagDuasCasas: TCheckBox;
    grBalancaConfig: TGroupBox;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label62: TLabel;
    cbBalancaModelo: TComboBox;
    cbBalancaPortaSerial: TComboBox;
    cbBalancaBaud: TComboBox;
    cbBalancaDataBits: TComboBox;
    cbBalancaHandShaking: TComboBox;
    cbBalancaParity: TComboBox;
    cbBalancaStopBits: TComboBox;
    AdvGroupBox3: TAdvGroupBox;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    sttPeso: TStaticText;
    sttResposta: TStaticText;
    Memo1: TMemo;
    btBalancaLerPeso: TAdvGlowButton;
    edBalancaTimeOut: TSpinEdit;
    GroupBox3: TGroupBox;
    edBalancaLarguraCodigoBarras: TSpinEdit;
    Label131: TLabel;
    edBalancaCodigoBarrasDigitoInicial: TSpinEdit;
    Label134: TLabel;
    edBalancaLarguraCodigoProduto: TSpinEdit;
    Label147: TLabel;
    Image1: TImage;
    Label155: TLabel;
    ckExigirsenhafechamentomesa: TCheckBox;
    ckExigirsenhaprefechamentomesa: TCheckBox;
    ckExigirsenhaprefechamentocomanda: TCheckBox;
    ckExigirsenhafechamentocomanda: TCheckBox;
    qrEmpresanumero_nfe: TIntegerField;
    qrEmpresaserie_nfe: TIntegerField;
    pgConfigNFEACBREmitente: TTabSheet;
    GroupBox2: TGroupBox;
    cxDBSpinEdit4: TcxDBSpinEdit;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label157: TLabel;
    Label156: TLabel;
    GroupBox4: TGroupBox;
    Label81: TLabel;
    Label107: TLabel;
    cxUltimaNFCE: TcxDBSpinEdit;
    cxSerieNFCE: TcxDBSpinEdit;
    Label80: TLabel;
    edMensagemCupomBalcao: TEdit;
    qrEmpresab_utiliza_controle_ambiente: TBooleanField;
    ckUtilizacontroleambiente: TDBCheckBox;
    btVinculacaoMesaAmbiente: TAdvGlowButton;
    btNFCeSelecionarCertificado: TAdvGlowButton;
    GroupBox5: TGroupBox;
    GroupBox25: TGroupBox;
    Label82: TLabel;
    cbNFCeTipoDanfe: TComboBox;
    Label159: TLabel;
    cbNFeTipoDanfe: TComboBox;
    ckImprimirVariasViasCupomPDV: TCheckBox;
    ckImprimirVariasViasCupomBalcao: TCheckBox;
    ckImprimirVariasViasCupomMesa: TCheckBox;
    ckImprimirVariasViasCupomComanda: TCheckBox;
    GroupBox27: TGroupBox;
    Label162: TLabel;
    Label163: TLabel;
    Label164: TLabel;
    Label165: TLabel;
    Label166: TLabel;
    cbECFBaud: TComboBox;
    cbECFDataBits: TComboBox;
    cbECFParity: TComboBox;
    cbECFStopBits: TComboBox;
    cbECFHandShaking: TComboBox;
    Label123: TLabel;
    cbECFPorta: TComboBox;
    cbECFModelo: TComboBox;
    Label122: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label130: TLabel;
    Label132: TLabel;
    edECFTimeOut: TSpinEdit;
    edECFIntervaloAposComando: TSpinEdit;
    edECFLinBuf: TSpinEdit;
    edECFPaginaCodigo: TSpinEdit;
    qrEmpresab_permite_fechamento_caixa_venda_pag_antecipado: TBooleanField;
    cxDBCheckBox5: TcxDBCheckBox;
    ckExigirSenhaJuntarMesa: TCheckBox;
    ckExigirSenhaJuntarComanda: TCheckBox;
    ckPermiteAlterarQuantidadeBalancaPDV: TCheckBox;
    ckPermiteAlterarTaxaDelivery: TCheckBox;
    ckNaoImprimirCozinhaDelivery: TCheckBox;
    ckExigir70pcValorUnitMesa: TCheckBox;
    ckExigir70pcValorUnitComanda: TCheckBox;
    ckFracionado70pcCatDiffMesa: TCheckBox;
    ckFracionado70pcCatDiffComanda: TCheckBox;
    ckFracionado70pcCatDiffDelivery: TCheckBox;
    CKEXIGIR70PCVALORUNITDELIVERY: TCheckBox;
    ckImprimirDuasViasCupomBalcao: TCheckBox;
    acBuscaNFeCFOP: TAction;
    Label167: TLabel;
    edNFeCFOPSaidaPadrao: TEdit;
    ckNaoImprimirCozinhaBalcao: TCheckBox;
    ckNaoPermitirAlterarQtdMesaTouch: TCheckBox;
    ckNaoPermitirAlterarQtdComandaTouch: TCheckBox;
    Label168: TLabel;
    edNFeInfoComplementarPadrao: TEdit;
    ckImprimirDadosEndClienteCozinhaDelivery: TCheckBox;
    edIDContaPagarPadaraoNfe: TcxDBButtonEdit;
    qrEmpresaid_conta_padrao_cpagar_nfe: TIntegerField;
    Label169: TLabel;
    lbContaPagarNfe: TLabel;
    GroupBox29: TGroupBox;
    ckExigirsenhacancelarmesa: TCheckBox;
    ckExigirsenhatransferiritem: TCheckBox;
    ckExigirnomemesa: TCheckBox;
    pgCasaNoturna: TTabSheet;
    rgDocClienteCNoturna: TRadioGroup;
    qrEmpresacampo_doc_cliente_cnoturna: TWideStringField;
    pgTEF: TTabSheet;
    ACBrTEFD1: TACBrTEFD;
    qrEmpresamargem_preco_prazo: TFloatField;
    ProgressBarIbpt: TProgressBar;
    lbInfoIBPT: TLabel;
    qrEmpresab_atualiza_custo_material_composicao: TBooleanField;
    GroupBox31: TGroupBox;
    cxDBCheckBox6: TcxDBCheckBox;
    Label176: TLabel;
    qrEmpresab_permite_troco_todas_formas: TBooleanField;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    Label178: TLabel;
    qrEmpresab_considera_rendimento_entrada_composicao: TBooleanField;
    GroupBox32: TGroupBox;
    Label179: TLabel;
    Label180: TLabel;
    Label181: TLabel;
    edMFETimeout: TSpinEdit;
    edMFEInput: TJvDirectoryEdit;
    edMFEOutput: TJvDirectoryEdit;
    rgTipoSisSAT: TRadioGroup;
    ckUtilizaSAT: TCheckBox;
    ckUtilizaNFE: TCheckBox;
    ckUtilizaECF: TCheckBox;
    ckHabilitarAlterarValorUnitariocouvertmesa: TCheckBox;
    ckHabilitarAlterarValorUnitariocouvertcomanda: TCheckBox;
    edNFCeJustificativaContingencia: TEdit;
    Label183: TLabel;
    ckNFCeEmitirEmContingencia: TCheckBox;
    ckNFCeSugerirContingencia: TCheckBox;
    Label170: TLabel;
    cbxGP: TComboBox;
    bADM: TButton;
    Panel1: TPanel;
    sECF: TShape;
    lECFName: TLabel;
    sTEFDial: TShape;
    sTEFDisc: TShape;
    sHiperTEF: TShape;
    sCliSiTef: TShape;
    sVSPague: TShape;
    sAuttar: TShape;
    ckTEFDIAL: TCheckBox;
    ckTEFDISC: TCheckBox;
    ckHIPERTEF: TCheckBox;
    ckCliSiTef: TCheckBox;
    bCancelarResp: TButton;
    ckVSPague: TCheckBox;
    ckAuttar: TCheckBox;
    bInicializar: TButton;
    bAtivarGP: TButton;
    GroupBox33: TGroupBox;
    MemoCupomTEF: TMemo;
    pMensagem: TPanel;
    pMensagemOperador: TPanel;
    lMensagemOperador: TLabel;
    Label171: TLabel;
    pMensagemCliente: TPanel;
    Label172: TLabel;
    lMensagemCliente: TLabel;
    GroupBox34: TGroupBox;
    TEfVias: TLabeledEdit;
    GroupBox35: TGroupBox;
    TEFTransmissao: TLabeledEdit;
    GroupBox36: TGroupBox;
    TEFRecepcao: TLabeledEdit;
    ckAgruparItensIguaisImpressaoMesa: TCheckBox;
    ckAgruparItensIguaisImpressaoComanda: TCheckBox;
    qrEmpresatempo_espera_delivery: TIntegerField;
    JvDBSpinEdit1: TJvDBSpinEdit;
    Label175: TLabel;
    pgFinanceiro: TTabSheet;
    qrEmpresatipo_calculo_juros: TIntegerField;
    qrEmpresajuros_mora_valor: TFloatField;
    qrEmpresajuros_mora_percent: TFloatField;
    GroupBox37: TGroupBox;
    Label184: TLabel;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    cbTipoCalculoJuros: TJvDBComboBox;
    Label12: TLabel;
    edJurosMoraValor: TcxDBCurrencyEdit;
    Label185: TLabel;
    edJurosMoraPercent: TcxDBCurrencyEdit;
    Label186: TLabel;
    Label187: TLabel;
    qrEmpresainserir_custos_impostos_importacao_nfe: TBooleanField;
    cxDBCheckBox9: TcxDBCheckBox;
    Label188: TLabel;
    edNFCeNumeroVias: TSpinEdit;
    qrEmpresab_buscar_valores_fechamento_caixa: TBooleanField;
    cxDBCheckBox10: TcxDBCheckBox;
    edNFCeTimeout: TEdit;
    Label189: TLabel;
    Label190: TLabel;
    Label191: TLabel;
    edImpCozinha2: TComboBox;
    btTestarImpressoraCozinha2: TAdvGlowButton;
    edImpBar2: TComboBox;
    btTestarImpressoraBar2: TAdvGlowButton;
    cxModoImpCozinha2: TcxRadioGroup;
    cxModoImpBar2: TcxRadioGroup;
    btConfigCozinha2: TAdvGlowButton;
    btConfigBar2: TAdvGlowButton;
    ckcaixa_garcom: TCheckBox;
    qrEmpresab_pdv_nao_coletivo: TBooleanField;
    dbpdv_nao_coletivo: TcxDBCheckBox;
    AdvGroupBox5: TAdvGroupBox;
    Label192: TLabel;
    Label193: TLabel;
    Label194: TLabel;
    Label195: TLabel;
    qrEmpresautiliza_ifood: TBooleanField;
    qrEmpresacliente_id_ifood: TWideStringField;
    qrEmpresacliente_secret_ifood: TWideStringField;
    qrEmpresausername_ifood: TWideStringField;
    qrEmpresapassword_ifood: TWideStringField;
    edClient_id: TcxDBTextEdit;
    edClient_secret: TcxDBTextEdit;
    edUsername: TcxDBTextEdit;
    edPassword: TcxDBTextEdit;
    ckUtilizaIFood: TcxDBCheckBox;
    edSite: TEdit;
    Label196: TLabel;
    JvFoto: TJvOpenDialog;
    Label197: TLabel;
    edLogotipo: TEdit;
    grpFotos: TGroupBox;
    Panel2: TPanel;
    imgProduto: TJvImage;
    btLogo: TAdvGlowButton;
    tsBackup: TTabSheet;
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edCaminhoPgDump: TJvFilenameEdit;
    edRepositorioBkp: TJvDirectoryEdit;
    edRepositorioBkp2: TJvDirectoryEdit;
    ckBackupAutomatico: TCheckBox;
    ckBackupAutomaticoExcluirAntigos: TCheckBox;
    grpVenda: TGroupBox;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    ckImprimePedidosCozinha: TCheckBox;
    ckReplicaImpressaoCozinha: TCheckBox;
    seQtdeViasProducao: TSpinEdit;
    ckImpressaoProducaoExpandido: TCheckBox;
    grpConfigRede: TGroupBox;
    grpIPFix: TGroupBox;
    lblSSID2: TLabel;
    lblSSID3: TLabel;
    lblSSID4: TLabel;
    lblSSID5: TLabel;
    lblSSID6: TLabel;
    edtSATRedeIP: TEdit;
    edtSATRedeMask: TEdit;
    edtSATRedeGW: TEdit;
    edtSATRedeDNS1: TEdit;
    edtSATRedeDNS2: TEdit;
    grpPPPoE: TGroupBox;
    lblSSID7: TLabel;
    lblSSID8: TLabel;
    edSATRedeUsuario: TEdit;
    edSATRedeSenha: TEdit;
    grpWiFi: TGroupBox;
    lblSSID: TLabel;
    lbl7: TLabel;
    lblSSID1: TLabel;
    edSATRedeSSID: TEdit;
    cbSATRedeSeg: TComboBox;
    edSATRedeCodigo: TEdit;
    grpProxy: TGroupBox;
    lblSSID9: TLabel;
    lblSSID10: TLabel;
    lblSSID11: TLabel;
    lblSSID12: TLabel;
    cbbSATRedeProxy: TComboBox;
    edtSATRedeProxyIP: TEdit;
    edtSATRedeProxyUser: TEdit;
    edtSATRedeProxySenha: TEdit;
    seSATRedeProxyPorta: TSpinEdit;
    rgSATRedeTipoLan: TRadioGroup;
    rgSATRedeTipoInter: TRadioGroup;
    grp2: TGroupBox;
    ckConsumacaoComanda: TCheckBox;
    edValorConsumacaoComanda: TJvValidateEdit;
    grp3: TGroupBox;
    lbl8: TLabel;
    lbl9: TLabel;
    edValorCouvertFemComanda: TJvValidateEdit;
    edValorCouvertMascComanda: TJvValidateEdit;
    qrEmpresausuario_dropbox: TWideStringField;
    qrEmpresasenha_dropbox: TWideStringField;
    lbl10: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    lbl11: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    ckPermiteDescontoitemBalcao: TCheckBox;
    ckTaxadeliverypadrao: TCheckBox;
    AdvGroupBox6: TAdvGroupBox;
    ckPermiteacessopdv: TCheckBox;
    ckPermiteacessobalcao: TCheckBox;
    ckPermiteacessomesaecomanda: TCheckBox;
    ckPermiteacessodelivery: TCheckBox;
    ckPermiteacessofechamentodecontas: TCheckBox;
    ckPermiteacessomonitorpreparo: TCheckBox;
    GroupBox12: TGroupBox;
    ckTrabalharTipoOpcionais: TCheckBox;
    Label1: TLabel;
    qrEmpresacelular: TWideStringField;
    Label2: TLabel;
    cxDBMaskEdit1: TcxDBMaskEdit;
    ckEnviar_email_informando_situacao_pedido: TCheckBox;
    ckNaoBaixarEstoqueNFe: TCheckBox;
    ckAtivarNFCE: TCheckBox;
    ckCaixinhaEntregador: TCheckBox;
    CKIMPRIMEDESTAQUE: TCheckBox;
    ckOcultar_menu_fiscal: TCheckBox;
    ckUtilizar_selecao_precos: TCheckBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ckcartao: TCheckBox;
    procedure btCancelarClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CNPJ_CPF(Sender: TField);
    procedure btAlterarClick(Sender: TObject);
{ As procedures RecuperaValoresXML e SalvaValoresXML percorre todo os componentes
  do form, aqueles com a propriedade tag=1 são salvas e recuperadas no XML de
  configuração, salvando seus valores no arquivo. Os componentes tratados são
  Tedit, Tcombobox, TCheckbox e TJvValidateEdit }
    procedure RecuperaValoresXML;
    procedure SalvaValoresXML;
    procedure edMensagemTxServicoExit(Sender: TObject);
    procedure edMensagemCouvertMesaExit(Sender: TObject);
    procedure edMensagemCouvertComandaExit(Sender: TObject);
    procedure acBuscaCEPExecute(Sender: TObject);
    procedure acBuscaCidadeExecute(Sender: TObject);
    constructor Create(sender: TComponent ; tab_visivel : integer = -1);
    procedure rgSATRedeTipoInterClick(Sender: TObject);
    procedure rgSATRedeTipoLanClick(Sender: TObject);
    procedure cbbSATRedeProxyChange(Sender: TObject);
    procedure btImportarIBPTClick(Sender: TObject);
    procedure btTestarGavetaClick(Sender: TObject);
    procedure ckUtilizaGavetaClick(Sender: TObject);
    procedure btTestarImpressoraTermicaClick(Sender: TObject);
    procedure testaImpressora(nome_impressora, local : string);
    procedure btTestarImpressoraBalcaoClick(Sender: TObject);
    procedure btTestarImpressoraCozinhaClick(Sender: TObject);
    procedure btTestarImpressoraBarClick(Sender: TObject);
    procedure btTestarImpressoraCaixaClick(Sender: TObject);
    procedure btTestarImpressoraDeliveryClick(Sender: TObject);
    procedure btBalancaLerPesoClick(Sender: TObject);
    procedure ACBrBAL1LePeso(Peso: Double; Resposta: AnsiString);
    procedure ckUtilizaBalancaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure qrEmpresacep_002Change(Sender: TField);
    procedure qrEmpresacid_001Change(Sender: TField);
    procedure btNFCeDataValidadeCertificadoClick(Sender: TObject);
    procedure btNFCeNumSerieCertificadoClick(Sender: TObject);
    procedure btNFCeSubjectNameCertificadoClick(Sender: TObject);
    procedure btNFCeCNPJCertificadoClick(Sender: TObject);
    procedure btNFCeSha256CertificadoClick(Sender: TObject);
    procedure btTesteIdChamadaClick(Sender: TObject);
    procedure ComPort1RxChar(Sender: TObject; Count: Integer);
    procedure rgSuporteESCPOSClick(Sender: TObject);
    procedure btnTestaImpressaoExtratoClick(Sender: TObject);
    procedure ACBrSATGetcodigoDeAtivacao(var Chave: AnsiString);
    procedure ACBrSATGetsignAC(var Chave: AnsiString);
    procedure btAtivarSATClick(Sender: TObject);
    procedure btAtualizacaoSWClick(Sender: TObject);
    procedure btConsultarSATClick(Sender: TObject);
    procedure btStatusOperacionalClick(Sender: TObject);
    procedure btTesteFimAFimClick(Sender: TObject);
    procedure btExtrairLogClick(Sender: TObject);
    procedure btConfigTermicaClick(Sender: TObject);
    procedure btConfigCozinhaClick(Sender: TObject);
    procedure AbreConfigImpressora(impressora : string);
    procedure btConfigBalcaoClick(Sender: TObject);
    procedure btConfigBARClick(Sender: TObject);
    procedure btConfigCaixaClick(Sender: TObject);
    procedure btConfigDeliveryClick(Sender: TObject);
    procedure bAtivarClick(Sender: TObject);
    procedure btnMenuFiscalLXClick(Sender: TObject);
    procedure btnMenuFiscalMFDEspelhoClick(Sender: TObject);
    procedure btnMenuFiscalRelMeiosPagtoClick(Sender: TObject);
    procedure btnMenuFiscalLMFCClick(Sender: TObject);
    procedure btnMenuFiscalMFDArqClick(Sender: TObject);
    procedure btnMenuFiscalRelDAVEmitidosClick(Sender: TObject);
    procedure btnMenuFiscalLMFSClick(Sender: TObject);
    procedure btnMenuFiscalNotaPaulistaClick(Sender: TObject);
    procedure btnMenuFiscalRelIdentPAFECFClick(Sender: TObject);
    procedure btnArqMFNovoClick(Sender: TObject);
    procedure btnArqMFDNovoClick(Sender: TObject);
    procedure btnMenuFiscalConfigPAFECFClick(Sender: TObject);
    procedure btECFTestaVendaClick(Sender: TObject);
    procedure btECFCancelarCupomClick(Sender: TObject);
    procedure btnDadosRZClick(Sender: TObject);
    procedure btnEfetuarRZClick(Sender: TObject);
    procedure btnDadosUltimaRZClick(Sender: TObject);
    procedure edJurosMoraValorKeyPress(Sender: TObject; var Key: Char);
    procedure dbValordeliveryKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBCurrencyEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure edValorCouvertMascComandaKeyPress(Sender: TObject; var Key: Char);
    procedure edValorCouvertFemComandaKeyPress(Sender: TObject; var Key: Char);
    procedure edValorCouvertMascKeyPress(Sender: TObject; var Key: Char);
    procedure edValorCouvertFemKeyPress(Sender: TObject; var Key: Char);
    procedure ckUtilizacontroleambienteClick(Sender: TObject);
    procedure edNFCeNumSerieCertificadoChange(Sender: TObject);
    procedure btNFCeSelecionarCertificadoClick(Sender: TObject);
    procedure cbECFBaudChange(Sender: TObject);
    procedure cbECFDataBitsChange(Sender: TObject);
    procedure btVinculacaoMesaAmbienteClick(Sender: TObject);
    procedure cbNFCeTipoEmissaoSSLLibChange(Sender: TObject);
    procedure ckImprimirVariasViasCupomBalcaoClick(Sender: TObject);
    procedure ckImprimirDuasViasCupomBalcaoClick(Sender: TObject);
    procedure acBuscaNFeCFOPExecute(Sender: TObject);
    procedure ckBackupAutomaticoClick(Sender: TObject);
    procedure qrEmpresaid_conta_padrao_cpagar_nfeChange(Sender: TField);
    procedure edIDContaPagarPadaraoNfePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure qrEmpresaAfterOpen(DataSet: TDataSet);
    procedure qrEmpresacampo_doc_cliente_cnoturnaChange(Sender: TField);
    procedure rgDocClienteCNoturnaClick(Sender: TObject);
    procedure cbTEFGPChange(Sender: TObject);
    procedure ckUtilizaSATClick(Sender: TObject);
    procedure ckUtilizaNFEClick(Sender: TObject);
    procedure ckUtilizaECFClick(Sender: TObject);
    procedure cbxGPChange(Sender: TObject);
    procedure bInicializarClick(Sender: TObject);
    procedure bAtivarGPClick(Sender: TObject);
    procedure bADMClick(Sender: TObject);
    procedure ACBrTEFD1ExibeMsg(Operacao: TACBrTEFDOperacaoMensagem; Mensagem: string; var AModalResult: TModalResult);
    procedure ACBrTEFD1ComandaECF(Operacao: TACBrTEFDOperacaoECF;
      Resp: TACBrTEFDResp; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFAbreVinculado(COO, IndiceECF: string;
      Valor: Double; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFImprimeVia(
      TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
      ImagemComprovante: TStringList; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFSubtotaliza(DescAcre: Double;
      var RetornoECF: Integer);
    procedure ACBrTEFD1InfoECF(Operacao: TACBrTEFDInfoECF;
      var RetornoECF: string);
    procedure qrEmpresatipo_calculo_jurosChange(Sender: TField);
    procedure cbTipoCalculoJurosChange(Sender: TObject);
    procedure btTestarImpressoraCozinha2Click(Sender: TObject);
    procedure btTestarImpressoraBar2Click(Sender: TObject);
    procedure btConfigCozinha2Click(Sender: TObject);
    procedure btConfigBar2Click(Sender: TObject);
    procedure ckUtilizaIFoodClick(Sender: TObject);
    procedure btLogoClick(Sender: TObject);
    procedure ckTaxadeliverypadraoClick(Sender: TObject);
    procedure ckAtivarNFCEClick(Sender: TObject);
  private
    procedure VerificaSuporteESCPOS();
    procedure CarregaModelosImpressora();
    procedure TesteFimAFimExtrato(Imprimir: Boolean);
    procedure AjustaSAT();
    procedure AjustaImpressoraExtrato(ESCPOS: Boolean);
    procedure AtivarECF;
    procedure DesativarECF;
    procedure AtualizaStatusECF;
    Function EstadoECF : String ;
    function VerificaConfigImpPOS(radio_group_imp : TcxRadioGroup ; nome_impressora, local_impressora : string): boolean;
    function ConverteCmdECF(cmd : string) : string;
    procedure AtualizaSSLLibsCombo;
    procedure AvaliaTEFs;

  public
    { Public declarations }
  end;

  const
    EstadosECF : array[TACBrECFEstado] of string =
    ('Não Inicializada', 'Desconhecido', 'Livre', 'Venda',
    'Pagamento', 'Relatório', 'Bloqueada', 'Requer Z', 'Requer X', 'Nao Fiscal' );
   _C = 'tYk*5W@' ;

var
  frmConfiguracao: TfrmConfiguracao;
    IndiceTransacaoTef : Integer;
  estadoSimuladoEcf : tEstadoEcfSimulado;

implementation

{$R *.dfm}

uses uMenu, Funcoes_XE, uFuncoes, uBuscaRegistro, Funcao_DB,Comunicador, untConstSAT, uLogAparelhoSAT,
  uPosPrinterTeste, uNFeSelecionarCertificado, uVinculacaomesaeambiente;

{ TfrmConfiguracao }


procedure TfrmConfiguracao.AtualizaSSLLibsCombo;
begin
 cbNFCeTipoEmissaoSSLLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLLib );
 cbNFCECryptLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLCryptLib );
 cbNFCEHttpLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLHttpLib );
 cbNFCEXmlSignLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib );

 //cbSSLType.Enabled := (ACBrNFe1.Configuracoes.Geral.SSLHttpLib in [httpWinHttp, httpOpenSSL]) ;
end;



function TfrmConfiguracao.VerificaConfigImpPOS(radio_group_imp : TcxRadioGroup ; nome_impressora, local_impressora : string): boolean;
begin
  if (radio_group_imp.ItemIndex=1) and
    (not FilesExists(ExtractFilePath(Application.ExeName) + 'CONF\IMP_'+ local_impressora +'.xml')) then
  begin
    Application.MessageBox(pchar('A impressora '+ nome_impressora +
                           ' foi definida como ESC/POS porém esta não foi configurada! ' +
                           'Faça a configuração antes de continuar'),'Atenção' , MB_ICONINFORMATION + mb_ok);
    result := false;
  end
  else
    result:=true;
end;

procedure TfrmConfiguracao.TesteFimAFimExtrato(Imprimir: Boolean);
var
  TotalItem: Double;
  A: Integer;
  TotalProdutos, TotalImpostoAprox: Double;
  OK : Boolean;
  NotaFiscal: TNotaFiscal;
begin
    Self.AjustaSAT();

    // Montando uma Venda //
    with ACBrSat.CFe do
    begin
        ide.numeroCaixa := 1;

        Dest.CNPJCPF := '05481336000137';
        Dest.xNome   := 'EMPRESA TESTE';

        Entrega.xLgr    := 'logradouro';
        Entrega.nro     := '112233';
        Entrega.xCpl    := 'complemento';
        Entrega.xBairro := 'bairro';
        Entrega.xMun    := 'municipio';
        Entrega.UF      := 'RJ';

        TotalProdutos     := 0;
        TotalImpostoAprox := 0;
        for A := 1 to 1 do
        begin
            with Det.Add do
            begin
                nItem         := A;
                Prod.cProd    := 'ACBR' + Format('%3.3d', [A]);
                Prod.cEAN     := '6291041500213';
                Prod.xProd    := 'DESCRICAO DO PRODUTO GIGANTE ' + Format('%3.3d', [A]);
                prod.NCM      := '99';
                Prod.CFOP     := '5001';
                Prod.uCom     := 'UN';
                Prod.indRegra := irArredondamento;
                Prod.qCom     := 1;
                Prod.vUnCom   := 654.320;
                Prod.vDesc    := 0;
                Prod.vOutro   := 0;

                Imposto.ICMS.orig  := oeNacional;
                if ACBrSat.Config.emit_cRegTrib = RTRegimeNormal then
                begin
                    Imposto.ICMS.CST   := cst00;
                    Imposto.ICMS.pICMS := 12;
                    Imposto.ICMS.vICMS := 78.52;

                    Imposto.PIS.CST  := pis01;
                    Imposto.PIS.vBC  := 654.32;
                    Imposto.PIS.pPIS := 0.0600;
                    Imposto.PIS.vPIS := 39.26;

                    Imposto.COFINS.CST     := cof01;
                    Imposto.COFINS.vBC     := 654.32;
                    Imposto.COFINS.pCOFINS := 0.0400;
                    Imposto.COFINS.vCOFINS := 29.17;
                end
                else
                begin
                    Imposto.ICMS.CSOSN := csosn102;

                    Imposto.PIS.CST  := pis49;
                    Imposto.PIS.vBC  := 0;
                    Imposto.PIS.pPIS := 0;

                    Imposto.COFINS.CST     := cof49;
                    Imposto.COFINS.vBC     := 0;
                    Imposto.COFINS.pCOFINS := 0;
                end;

                infAdProd := 'Informacoes adicionais';

                // imposto aproximado
                TotalItem := (Prod.qCom * Prod.vUnCom);
                Imposto.vItem12741 := TotalItem * 0.12;

                TotalProdutos     := TotalProdutos     + TotalItem;
                TotalImpostoAprox := TotalImpostoAprox + Imposto.vItem12741;
            end;
        end;

        Total.DescAcrEntr.vDescSubtot := 0;
        Total.vCFeLei12741            := TotalImpostoAprox;

        with Pagto.Add do
        begin
          cMP := mpDinheiro;
          vMP := 2000;
        end;

        InfAdic.infCpl := 'Teste Fim a Fim com SAT';
    end;

    ACBrSat.TesteFimAFim(ACBrSat.CFe.GerarXML( True ));

    if ACBrSat.Resposta.codigoDeRetorno = 9000 then
    begin
        if Imprimir then
        begin
            if LerBoolean('SUPORTEESCPOS') then
               ACBrSAT.Extrato := ACBrSATExtratoESCPOS
            else
               ACBrSAT.Extrato := ACBrSATExtratoFortes;

            Self.AjustaImpressoraExtrato(LerBoolean('SUPORTEESCPOS'));
            ACBrSat.ImprimirExtrato;
        end
        else
          ShowMessage(ACBrSat.Resposta.mensagemRetorno);
    end
    else
      ShowMessage('Erro:' + ACBrSat.Resposta.mensagemRetorno);
end;

Procedure TfrmConfiguracao.testaImpressora(nome_impressora, local: string);
var grafica : boolean;
    texto : string;
begin
  inherited;
  local:=uppercase(local);

  if local = 'TERMICA' then
    grafica :=  cxModoImpTermica.ItemIndex<> 1
  else if local = 'BALCAO' then
    grafica :=  cxModoImpBalcao.ItemIndex<> 1
  else if local = 'COZINHA' then
    grafica :=  cxModoImpCozinha.ItemIndex<> 1
  else if local = 'BAR' then
    grafica :=  cxModoImpBar.ItemIndex<> 1
  else if local = 'COZINHA2' then
    grafica :=  cxModoImpCozinha2.ItemIndex<> 1
  else if local = 'BAR2' then
    grafica :=  cxModoImpBar2.ItemIndex<> 1
  else if local = 'CAIXA' then
    grafica :=  cxModoImpCaixa.ItemIndex<> 1
  else // local = 'DELIVERY'
    grafica :=  cxModoImpDelivery.ItemIndex<> 1;

  if grafica then
  begin
    repTesteImpressao.PrintOptions.Printer := nome_impressora;
    repTesteImpressao.Variables['sImpressora'] := QuotedStr(nome_impressora);
    repTesteImpressao.Variables['sImpressoraLocal'] := QuotedStr(local);
    repTesteImpressao.PrepareReport;
    repTesteImpressao.Print;
  end
  else
  begin
    if frmMenu.ConfiguraImpressoraPOS(local) then
    begin
      texto :='</zera>' +  sLineBreak+
              '</linha_dupla>'+ sLineBreak+
              '</fn></ce>'+sLineBreak+
              '<n>TESTE DE IMPRESSÃO'+sLineBreak+
              'Impressora: ' + nome_impressora +sLineBreak+
              'Local: '+ local +sLineBreak+
              'Modo ESC/POS ' +sLineBreak+
              '</n></linha_dupla>' + sLineBreak+
              '</corte_total>';
      frmMenu.ACBrPosPrinter1.Imprimir(texto);
    end;
  end;
end;

procedure TfrmConfiguracao.VerificaSuporteESCPOS;
begin
  if rgSuporteESCPOS.ItemIndex = 0 then
  begin
     gbComSuporte.Visible := true;
     gbSemSuporte.Visible := false;
  end
  else
  begin
     gbComSuporte.Visible := false;
     gbSemSuporte.Visible := true;
  end;
end;

constructor TfrmConfiguracao.Create(sender: TComponent; tab_visivel: Integer = -1);
var i : integer;
    j: TACBrPosPrinterModelo;
    k : TACBrBALModelo ;
    l : TSSLLib;
    m : TpcnCRT;
    n : TpcnTipoEmissao ;
    o : TpcnModeloDF;
    p : TpcnVersaoDF;
    q : TpcnTipoImpressao;
    r : TACBrECFModelo;
    U : TSSLCryptLib;
    V : TSSLHttpLib;
    X : TSSLXmlSignLib;
    t : TACBrTEFDTipo;
begin
  inherited Create(sender);
  if not frmMenu.ConfirmacaoSenha('b_acesso_configuracao', i) then abort;

  fSufix := 'CONFIGURACAO';

  //define as abas visiveis
  if tab_visivel>=0 then
  begin
    pcPrincipal.ActivePageIndex:=tab_visivel;
    for I := 0 to pcPrincipal.PageCount-1 do
    begin
      pcPrincipal.Pages[i]. TabVisible:= i=tab_visivel;
      pcPrincipal.Pages[i].Visible := i=tab_visivel;
    end;
  end;
  qrListaRegimeTributario.Open;

  //carrega as impressoras nos comboboxes
  edCaminhoImp.Items.Assign(Printer.Printers);
  edImpBalcao.Items.Assign(Printer.Printers);
  edImpCozinha1.Items.Assign(Printer.Printers);
  edImpCozinha2.Items.Assign(Printer.Printers);
  edImpBar1.Items.Assign(Printer.Printers);
  edImpBar2.Items.Assign(Printer.Printers);
  edImpCaixa.Items.Assign(Printer.Printers);
  edImpDelivery.Items.Assign(Printer.Printers);

  //carrega as configurações da gaveta
  cbModeloImpGaveta.Items.Clear ;
  For j := Low(TACBrPosPrinterModelo) to High(TACBrPosPrinterModelo) do
     cbModeloImpGaveta.Items.Add(GetEnumName(TypeInfo(TACBrPosPrinterModelo), integer(j))) ;

  //carrega as informações da balança
  cbBalancaModelo.Items.Clear ;
  For k := Low(TACBrBALModelo) to High(TACBrBALModelo) do
     cbBalancaModelo.Items.Add(GetEnumName(TypeInfo(TACBrBALModelo), integer(k))) ;

  //carrega os combos NFCe
  cbNFCeTipoEmissaoSSLLib.Items.Clear ;
  For l := Low(TSSLLib) to High(TSSLLib) do
    cbNFCeTipoEmissaoSSLLib.Items.Add( GetEnumName(TypeInfo(TSSLLib), integer(l)));

  cbNFCECryptLib.Items.Clear ;
  For U := Low(TSSLCryptLib) to High(TSSLCryptLib) do
    cbNFCECryptLib.Items.Add( GetEnumName(TypeInfo(TSSLCryptLib), integer(U) ) ) ;

  cbNFCEHttpLib.Items.Clear ;
  For V := Low(TSSLHttpLib) to High(TSSLHttpLib) do
    cbNFCEHttpLib.Items.Add( GetEnumName(TypeInfo(TSSLHttpLib), integer(V) ) ) ;

  cbNFCEXmlSignLib.Items.Clear ;
  For X := Low(TSSLXmlSignLib) to High(TSSLXmlSignLib) do
    cbNFCEXmlSignLib.Items.Add( GetEnumName(TypeInfo(TSSLXmlSignLib), integer(X) ) ) ;



  cbNFCeFormaEmissao.Items.Clear ;
  For n := Low(TpcnTipoEmissao) to High(TpcnTipoEmissao) do
     cbNFCeFormaEmissao.Items.Add( GetEnumName(TypeInfo(TpcnTipoEmissao), integer(n) ) ) ;

  cbNFCeModeloDF.Items.Clear ;
  For o := Low(TpcnModeloDF) to High(TpcnModeloDF) do
     cbNFCeModeloDF.Items.Add( GetEnumName(TypeInfo(TpcnModeloDF), integer(o) ) ) ;
  cbNFCeModeloDF.Items[0] := 'moNFe' ;

  cbNFCeVersaoDF.Items.Clear ;
  For p := Low(TpcnVersaoDF) to High(TpcnVersaoDF) do
     cbNFCeVersaoDF.Items.Add( GetEnumName(TypeInfo(TpcnVersaoDF), integer(p) ) ) ;

  cbNFCeTipoDanfe.Items.clear;
  cbNFeTipoDanfe.Items.clear;
  for q := low(TpcnTipoImpressao) to High(TpcnTipoImpressao) do
  begin
    cbNFCeTipoDanfe.Items.add(GetEnumName(TypeInfo(TpcnTipoImpressao), integer(q)));
    cbNFeTipoDanfe.Items.add(GetEnumName(TypeInfo(TpcnTipoImpressao), integer(q)));
  end;

  //carrega os modelos de ECF
  cbECFModelo.Items.Clear ;
  For r := Low(TACBrECFModelo) to High(TACBrECFModelo) do
     cbECFModelo.Items.Add( GetEnumName(TypeInfo(TACBrECFModelo), integer(r) ) ) ;
  cbECFModelo.Items[0] := 'Procurar' ;

  // Config TEF
   cbxGP.Items.Clear ;
  For t := Low(TACBrTEFDTipo) to High(TACBrTEFDTipo) do
     cbxGP.Items.Add( GetEnumName(TypeInfo(TACBrTEFDTipo), integer(t) ) ) ;
  cbxGP.Items[0] := 'Todos' ;
  cbxGP.ItemIndex := 0 ;

  //Config geral (Margem de preco a vista para ser aplicado no preco a prazo)
 // Exemplo: Se o preço a vista tiver R$10,00 e o valor informado for 10%,no valor á prazo será R$ 12,00






end;

procedure TfrmConfiguracao.dbValordeliveryKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key in ['-']  then key:=#0
end;

procedure TfrmConfiguracao.edJurosMoraValorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key in ['-']  then key:=#0
end;

procedure TfrmConfiguracao.cxDBCurrencyEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key in ['-']  then key:=#0
end;

procedure TfrmConfiguracao.FormShow(Sender: TObject);
var
  i: TACBrTEFDTipo;
begin
  //Formatar_String(qrEmpresacep_002, sMskCEP);
  qrEmpresaemp_012.OnChange := CNPJ_CPF;
  inherited;

  pcConfigNFCEACBR.ActivePageIndex:=0;
  pcConfigECF.ActivePageIndex:=0;

  //oculta as configurações do acbr que não serão usadas por ora...
  pgConfigNFCEACBREmail.TabVisible :=false;
  pgConfigNFCEACBRArquivos.TabVisible :=false;

  edNFCeFormatoAlerta.Text := 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.';

  edCaminhoImp.Text := LerString('CAMIMPARGOX');
  edImpBalcao.Text := LerString('CAMIMPBALCAO');
  edImpCozinha1.Text := LerString('CAMIMPCOZINHA');
  edImpCozinha2.Text := LerString('CAMIMPCOZINHA2');
  edImpBar1.Text := LerString('CAMIMPBAR1');
  edImpBar2.Text := LerString('CAMIMPBAR2');
  edImpCaixa.Text := LerString('CAMIMPCAIXA');
  edImpDelivery.Text := LerString('CAMIMPDELIVERY');

  if LerBoolean('TAXAADICIONAL') then
   edTaxaAdicional.ItemIndex := 0;
  if LerBoolean('TAXAADICIONALCOMANDA') then
   edTaxaAdicionalComanda.ItemIndex := 0;

  pcPrincipal.ActivePageIndex:=0;

  Campo_Obrigatorio([lbRazaoSocial, lbCNPJ, lbTipoEmp]);
  CNPJ_CPF(qrEmpresaemp_012);

  cbModeloImpGaveta.ItemIndex := LerInteger('CBMODELOIMPGAVETA');

  cbBalancaParity.ItemIndex := LerInteger('CBBALANCAPARITY');
  cbBalancaStopBits.ItemIndex := LerInteger('CBBALANCASTOPBITS');
  cbBalancaModelo.ItemIndex := LerInteger('CBBALANCAMODELO');
  cbBalancaHandShaking.ItemIndex := LerInteger('CBBALANCAHANDSHAKING');

  //carrega os dados do xml
  RecuperaValoresXML;

  //define valores padrão para balança caso não tenham vindo do xml
  if trim(cbBalancaPortaSerial.Text)='' then cbBalancaPortaSerial.Text := 'COM1';
  if cbBalancaBaud.ItemIndex<0 then cbBalancaBaud.Text :='9600';
  if cbBalancaDataBits.ItemIndex<0 then cbBalancaDataBits.Text :='8';
  if trim(edBalancaTimeOut.Text)='' then  edBalancaTimeOut.Text:='2000';

  qrEmpresa.Close;
  qrEmpresa.ParamByName('ID').AsInteger:=RecProj.iEMP;
  qrEmpresa.Open;
  btAlterar.Click;
  ckUtilizaGavetaClick(nil);
  ckUtilizaBalancaClick(nil);
  ckUtilizacontroleambienteClick(nil);
  edNFCeNumSerieCertificadoChange(nil);

  // Configuração do Suporte ESCPOS
  Self.CarregaModelosImpressora();

  if LerBoolean('SUPORTEESCPOS', true) then
     rgSuporteESCPOS.ItemIndex := 0
  else
     rgSuporteESCPOS.ItemIndex := 1;

  // Config com suporte ESCPOS
  cmbImpressoraNaoFiscal.ItemIndex := LerInteger('MODELONAOFISCAL', 1);
  edtLinhaEntreExtratos.Value      := LerInteger('LINHASENTREEXTRATO', 3);
  edtColunaBobina.Value            := LerInteger('COLUNAS', 48);
  edtEspacoEntreLinhas.Value       := LerInteger('ESPACOENTRELINHAS', 0);
  edtLarguraCodigoBarra.Value      := LerInteger('LARGURACODIGOBARRA', 0);

  // Config sem suporte ESCPOS
  ckbExtratoPreview.Checked := LerBoolean('EXIBIRPREVIEWEXTRATO', false);
  edtLargura.Value          := LerInteger('LARGURA', 0);
  edtMargemTopo.Value       := LerInteger('MARGEMTOPO', 0);
  edtMargemRodape.Value     := LerInteger('MARGEMRODAPE', 0);
  edtMargemEsquerda.Value   := LerInteger('MARGEMESQUERDA', 0);
  edtMargemDireita.Value    := LerInteger('MARGEMDIREITA', 0);

  Self.VerificaSuporteESCPOS();

  //define valores padrão do webservice de nfe se não estiverem presentes...
  if edNFCeAguardar.Text='' then edNFCeAguardar.Text:= '1';
  if edNFCeTentativas.Text='' then edNFCeTentativas.Text:= '5';
  if edNFCeIntervalo.Text='' then edNFCeIntervalo.Text:= '1';
  if edNFCeTimeout.Text='' then edNFCeTimeout.Text:= '20';


  // Config dispara o evento ,Informe a margem de valor a venda á prazo ,para ser aplicado no valor á vista
  //Exemplo: Se o preço a vista tiver R$10,00 e o valor informado prazo será R$12,00


  ckUtilizaSATClick(nil);
  ckUtilizaNFEClick(nil);
  ckUtilizaECFClick(nil);
  if edSATVersaoLayout.Text='' then
  begin
    edSATVersaoLayout.Text:='00.07';
  end;

  edClient_secret.Properties.EchoMode:= eemPassword;
  edPassword.Properties.EchoMode:= eemPassword;

  if ckUtilizaIFood.Checked then
  begin
    edClient_id.Enabled     := True;
    edClient_secret.Enabled := True;
    edUsername.Enabled      := True;
    edPassword.Enabled      := True;
  end
  else
  begin
    edClient_id.Enabled     := False;
    edClient_secret.Enabled := False;
    edUsername.Enabled      := False;
    edPassword.Enabled      := False;
  end;

  //Carrega o logotipo
  if FileExists(edLogotipo.Text) then
    imgProduto.Picture.LoadFromFile(edLogotipo.Text)
  else
    imgProduto.Picture:= nil;
   // Verifica se usa a taxa padrão do delivery  10/04/2018 V2.36.0.0  Rafael

  if ckTaxadeliverypadrao.Checked then
    dbValordelivery.Enabled:=true
  else
  begin
    dbValordelivery.Enabled:=false;
    qrempresa.FieldByName('taxadeliverypadrao').asfloat:=0;
  end;

  //Atualiza os componentes da NFCe
  ckAtivarNFCEClick(nil);
end;

procedure TfrmConfiguracao.cbTipoCalculoJurosChange(Sender: TObject);
begin
  inherited;
  qrEmpresatipo_calculo_jurosChange(nil);
end;

procedure TfrmConfiguracao.qrEmpresaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qrEmpresaid_conta_padrao_cpagar_nfeChange(nil);
  qrEmpresacampo_doc_cliente_cnoturnaChange(nil);
  qrEmpresatipo_calculo_jurosChange(nil);
end;



procedure TfrmConfiguracao.qrEmpresacampo_doc_cliente_cnoturnaChange(
  Sender: TField);
begin
  inherited;
  if qrEmpresa.FieldByName('campo_doc_cliente_cnoturna').AsString = 'C' then
    rgDocClienteCNoturna.ItemIndex := 0
  else
    rgDocClienteCNoturna.ItemIndex := 1;

end;

procedure TfrmConfiguracao.qrEmpresacep_002Change(Sender: TField);
var str_sql : string;
    qry : TUniQuery;
begin
  inherited;
  qry := TUniQuery.Create(self);
  qry.Connection := frmMenu.conexao;
  str_sql:=' SELECT CEP.CEP_001, CEP.CID_001, CEP.CEP_002, CEP.CEP_004, CEP.CEP_003,   CID.CID_002, EST.EST_003, PAI.PAI_002 ' +
           ' FROM CEPS CEP '+
           ' LEFT OUTER JOIN CIDADES CID ON (CID.CID_001 = CEP.CID_001) '+
           ' LEFT OUTER JOIN ESTADOS EST ON (EST.EST_001 = CID.EST_001) '+
           ' LEFT OUTER JOIN PAISES PAI ON (PAI.PAI_001 = EST.PAI_001) '+
           ' where CEP.CEP_002 = '+ QuotedStr(qrEmpresa.FieldByName('CEP_002').AsString);
  ExecutaConsultaSQL(qry, str_sql);
  if qry.RecordCount>0 then
  begin
    //codigo da cidade
    qrEmpresa.FieldByName('cid_001').AsInteger := qry.FieldByName('cid_001').AsInteger;
    //descricao da cidade
    qrEmpresa.FieldByName('cid_002').AsString := qry.FieldByName('cid_002').AsString;
    //logradouro
    qrEmpresa.FieldByName('cep_004').AsString := qry.FieldByName('cep_004').AsString;
  end;
end;


procedure TfrmConfiguracao.qrEmpresacid_001Change(Sender: TField);
var cidade, str_sql : string;
    qr_aux : TUniquery;
begin
  inherited;
  qr_aux := TUniquery.Create(self);
  qr_aux.Connection := frmmenu.conexao;


  if sender.IsNull then
  begin
    qrEmpresa.FieldByName('cid_002').AsString := '' ;
    qrEmpresa.FieldByName('est_003').AsString := '' ;
    qrEmpresa.FieldByName('pai_002').AsString := '' ;
  end
  else
  begin
    if not BuscaCampo(cidade, 'select cid_002 from cidades where cid_001=' +
                                Sender.AsString , 'Cidade') then
    begin
      Sender.value:=null;
      abort;
    end
    else
    begin
      //preenche o nome da cidade
      qrEmpresa.FieldByName('cid_002').AsString := cidade ;
      str_sql := ' select e.est_003, p.pai_002, c.cid_003 from cidades c '+
                 ' join estados e  on c.est_001=e.est_001 '+
                 ' join paises p on e.pai_001=p.pai_001 '+
                 ' where c.cid_001=' + Sender.AsString;
      if ExecutaConsultaSQL(qr_aux, str_sql) then
      begin
        qrEmpresa.FieldByName('est_003').AsString := qr_aux.fields[0].AsString ;
        qrEmpresa.FieldByName('pai_002').AsString := qr_aux.fields[1].AsString ;
        qrEmpresa.FieldByName('cod_ibge').AsString := qr_aux.fields[2].AsString ;
        if qr_aux.fields[2].AsString='' then
          application.messagebox('A cidade selecionada não possui código de IBGE. Este é um campo obrigatório para SAT e NFCe!', 'Atenção', MB_ICONINFORMATION);

      end;
    end;
  end;

end;

procedure TfrmConfiguracao.qrEmpresaid_conta_padrao_cpagar_nfeChange(
  Sender: TField);
var str_sql : string;
    id_conta : integer;
begin
  inherited;
  if not qrEmpresa.FieldByName('id_conta_padrao_cpagar_nfe').isnull then
  begin
    str_sql := 'select descricao from conta where id_conta=%d  and b_pagar and id_empresa='+inttostr(recproj.iEmp);
    id_conta := qrEmpresa.FieldByName('id_conta_padrao_cpagar_nfe').asinteger;
    LookupBuscaExit(id_conta,TcxButtonEdit(edIDContaPagarPadaraoNfe), lbContaPagarNfe, str_sql, 'Conta', true);
    if id_conta = 0 then
      qrEmpresa.FieldByName('id_conta_padrao_cpagar_nfe').value := null;
  end;

end;

procedure TfrmConfiguracao.qrEmpresatipo_calculo_jurosChange(Sender: TField);
begin
  inherited;
  case qrEmpresa.FieldByName('tipo_calculo_juros').AsInteger of
    3 : //juros mora valor
    begin
      edJurosMoraPercent.Enabled := false;
      edJurosMoraValor.Enabled := true;

      //ainda não implementado juros com mora....
      qrEmpresa.FieldByName('tipo_calculo_juros').AsInteger := 1;
    end;
    4 :  //juros mora percent
    begin
      edJurosMoraPercent.Enabled := true;
      edJurosMoraValor.Enabled := false;

      //ainda não implementado juros com mora....
      qrEmpresa.FieldByName('tipo_calculo_juros').AsInteger := 1;
    end;
    else //os outros...
    begin
      edJurosMoraPercent.Enabled := false;
      edJurosMoraValor.Enabled := false;
    end;

  end;

end;

procedure TfrmConfiguracao.SalvaValoresXML;
var i : integer;
begin
  for I := 0 to self.ComponentCount-1 do
  begin
    //busca os componentes marcados com a Tag=1 e salva valores no xml
    if self.Components[i].Tag=1 then
    begin
      if Components[i] is TEdit then
        GravaString(UpperCase(Components[i].Name), TEdit(Components[i]).Text)
      else if self.Components[i] is TJvFilenameEdit  then
        GravaString(UpperCase(Components[i].Name), TJvFilenameEdit(Components[i]).Text)
      else if self.Components[i] is TJvDirectoryEdit  then
        GravaString(UpperCase(Components[i].Name), TJvDirectoryEdit(Components[i]).Text)
      else if Components[i] is TComboBox then
      begin
        if (UpperCase(Components[i].Name)=UpperCase('cbSATRedeSeg')) or
           (UpperCase(Components[i].Name)=UpperCase('cbSATRedeProxy')) or
           (UpperCase(Components[i].Name)=UpperCase('cbNFCeTipoEmissaoSSLLib')) or
           (UpperCase(Components[i].Name)=UpperCase('cbNFCeRegime')) or
           (UpperCase(Components[i].Name)=UpperCase('cbNFCeFormaEmissao')) or
           (UpperCase(Components[i].Name)=UpperCase('cbNFCeModeloDF')) or
           (UpperCase(Components[i].Name)=UpperCase('cbNFCeTipoDanfe')) or
           (UpperCase(Components[i].Name)=UpperCase('cbNFeTipoDanfe')) or
           (UpperCase(Components[i].Name)=UpperCase('cbNFCECryptLib')) or
           (UpperCase(Components[i].Name)=UpperCase('cbNFCEHttpLib')) or
           (UpperCase(Components[i].Name)=UpperCase('cbNFCEXmlSignLib')) or
           (UpperCase(Components[i].Name)=UpperCase('cbNFCeVersaoDF')) or
           (UpperCase(Components[i].Name)=UpperCase('cbECFModelo')) or
           (UpperCase(Components[i].Name)=UpperCase('cbECFParity')) or
           (UpperCase(Components[i].Name)=UpperCase('cbECFStopBits')) or
           (UpperCase(Components[i].Name)=UpperCase('cbECFHandShaking')) or
           (UpperCase(Components[i].Name)=UpperCase('cbxGP')) or
           (UpperCase(Components[i].Name)=UpperCase('cbECFUF'))  then
          GravaInteger(UpperCase(Components[i].Name),  TComboBox(Components[i]).ItemIndex)
        else
          GravaString(UpperCase(Components[i].Name), TComboBox(Components[i]).Text);
      end
      else if Components[i] is TCheckBox then
        GravaBoolean(UpperCase(Components[i].Name), TCheckBox(Components[i]).Checked)
      else if Components[i] is TJvValidateEdit then
        GravaFloat(UpperCase(Components[i].Name), TJvValidateEdit(Components[i]).AsFloat)
      else if Components[i] is TRadioGroup then
        GravaInteger(UpperCase(Components[i].Name), TRadioGroup(Components[i]).ItemIndex)
      else if Components[i] is TcxRadioGroup then
        GravaInteger(UpperCase(Components[i].Name), TcxRadioGroup(Components[i]).ItemIndex)
      else if Components[i] is TSpinEdit then
        GravaInteger(UpperCase(Components[i].Name), TSpinEdit(Components[i]).value)
    end;
  end;
end;



procedure TfrmConfiguracao.rgSuporteESCPOSClick(Sender: TObject);
begin
  inherited;
  Self.VerificaSuporteESCPOS();

end;

procedure TfrmConfiguracao.RecuperaValoresXML;
var i : integer;
begin
  for I := 0 to self.ComponentCount-1 do
  begin
    //busca os componentes marcados com a Tag=1 e recupera valored do xml
    if self.Components[i].Tag=1 then
    begin
      if Components[i] is TEdit then
        TEdit(Components[i]).Text := LerString(UpperCase(Components[i].Name))
      else if self.Components[i] is TJvFilenameEdit then
        TJvFilenameEdit(Components[i]).Text := LerString(UpperCase(Components[i].Name))
      else if self.Components[i] is TJvDirectoryEdit  then
        TJvDirectoryEdit(Components[i]).Text := LerString(UpperCase(Components[i].Name))
      else if Components[i] is TComboBox then
      begin
        if (UpperCase(Components[i].Name)=UpperCase('cbSATRedeSeg')) or
           (UpperCase(Components[i].Name)=UpperCase('cbSATRedeProxy')) or
           (UpperCase(Components[i].Name)=UpperCase('cbNFCeTipoEmissaoSSLLib')) or
           (UpperCase(Components[i].Name)=UpperCase('cbNFCeRegime')) or
           (UpperCase(Components[i].Name)=UpperCase('cbNFCeFormaEmissao')) or
           (UpperCase(Components[i].Name)=UpperCase('cbNFCeModeloDF')) or
           (UpperCase(Components[i].Name)=UpperCase('cbNFCeTipoDanfe')) or
           (UpperCase(Components[i].Name)=UpperCase('cbNFeTipoDanfe')) or
           (UpperCase(Components[i].Name)=UpperCase('cbNFCeVersaoDF')) or
           (UpperCase(Components[i].Name)=UpperCase('cbNFCECryptLib')) or
           (UpperCase(Components[i].Name)=UpperCase('cbNFCEHttpLib')) or
           (UpperCase(Components[i].Name)=UpperCase('cbNFCEXmlSignLib')) or
           (UpperCase(Components[i].Name)=UpperCase('cbECFModelo')) or
           (UpperCase(Components[i].Name)=UpperCase('cbECFParity')) or
           (UpperCase(Components[i].Name)=UpperCase('cbECFStopBits')) or
           (UpperCase(Components[i].Name)=UpperCase('cbECFHandShaking')) or
           (UpperCase(Components[i].Name)=UpperCase('cbxGP')) or
           (UpperCase(Components[i].Name)=UpperCase('cbECFUF')) then
          TComboBox(Components[i]).ItemIndex:=LerInteger(UpperCase(Components[i].Name))
        else
          TComboBox(Components[i]).Text := LerString(UpperCase(Components[i].Name));
      end
      else if Components[i] is TCheckBox then
        TCheckBox(Components[i]).Checked := LerBoolean(UpperCase(Components[i].Name))
      else if Components[i] is TJvValidateEdit then
        TJvValidateEdit(Components[i]).Value:= LerFloat(UpperCase(Components[i].Name))
      else if Components[i] is TRadioGroup then
        TRadioGroup(Components[i]).ItemIndex:= LerInteger(UpperCase(Components[i].Name))
      else if Components[i] is TcxRadioGroup then
        TcxRadioGroup(Components[i]).ItemIndex:= LerInteger(UpperCase(Components[i].Name))
      else if Components[i] is TSpinEdit then
        TSpinEdit(Components[i]).value:= LerInteger(UpperCase(Components[i].Name));
    end;
  end;
end;


procedure TfrmConfiguracao.rgDocClienteCNoturnaClick(Sender: TObject);
begin
  inherited;
  if qrEmpresa.State<> dsEdit then exit;

  if rgDocClienteCNoturna.ItemIndex=0 then
    qrEmpresa.FieldByName('campo_doc_cliente_cnoturna').AsString := 'C'
  else
    qrEmpresa.FieldByName('campo_doc_cliente_cnoturna').AsString := 'R';

end;

procedure TfrmConfiguracao.rgSATRedeTipoInterClick(Sender: TObject);
begin
  inherited;
  //gbWiFi.Visible := (rgSATRedeTipoInter.ItemIndex = 1);
end;

procedure TfrmConfiguracao.rgSATRedeTipoLanClick(Sender: TObject);
begin
  inherited;
 // gbPPPoE.Visible := (rgSATRedeTipoLan.ItemIndex = 1);
 // gbIPFix.Visible := (rgSATRedeTipoLan.ItemIndex = 2);
end;

procedure TfrmConfiguracao.btConfirmarClick(Sender: TObject);
var
qraux1:tuniquery;
str_sql:string;


begin
  inherited;
  if Confirma('Confirma as alterações?', 'ATENÇÃO', True) then
  begin

    if qrEmpresa.FieldByName('numero_comanda_fim').asinteger <=
        qrEmpresa.FieldByName('numero_comanda_inicio').asinteger then
    begin
      Application.MessageBox('O número final das comandas deve ser maior que o número inicial!', 'Atenção', MB_ICONINFORMATION + mb_ok);
      if edNumeroComandaFim.CanFocus then edNumeroComandaFim.SetFocus;
      abort;
    end;

    if (ckCouvertComanda.Checked) then
    begin
      if trim(edMensagemCouvertComanda.Text)='' then
      begin
        Application.MessageBox('É necessário informar a mensagem do couvert!', 'Atenção', MB_ICONINFORMATION + mb_ok);
        edMensagemCouvertComanda.SetFocus;
        abort;
      end;
    end;

    if (ckCouvertMesa.Checked) then
    begin
      if trim(edMensagemCouvertMesa.Text)='' then
      begin
        Application.MessageBox('É necessário informar a mensagem do couvert!', 'Atenção', MB_ICONINFORMATION + mb_ok);
        edMensagemCouvertMesa.SetFocus;
        abort;
      end;
    end;

    // Verifica se o PDV coletivo e o micro garcom está true, se estiver ele aborta
    // 19/12/2017   Rafael Luiz
    if (dbpdvcoletivo.Checked) and (ckcaixa_garcom.Checked) and (dbpdv_nao_coletivo.Checked) then
    begin
      Application.MessageBox('NÃO É POSSIVEL DEIXAR O PDV COLETIVO SELECIONADO E O MICRO DO GARCOM SELECIONADO E CAIXA INDIVIDUAL, POR FAVOR SELECIONE APENAS UMA OPÇÃO','ALERTA',+MB_ICONQUESTION+MB_OK);
      abort;
    end;

    if (dbpdvcoletivo.Checked) and (dbpdv_nao_coletivo.Checked) then
    begin
      Application.MessageBox('NÃO É POSSIVEL DEIXAR O PDV COLETIVO SELECIONADO E O CAIXA INDIVIDUAL, POR FAVOR SELECIONE APENAS UMA OPÇÃO','ALERTA',+MB_ICONQUESTION+MB_OK);
      abort;
    end;

    if (ckcaixa_garcom.Checked) and (dbpdv_nao_coletivo.Checked) then
    begin
      Application.MessageBox('NÃO É POSSIVEL DEIXAR MICRO DO GARCOM E O CAIXA INDIVIDUAL, POR FAVOR SELECIONE APENAS UMA OPÇÃO','ALERTA',+MB_ICONQUESTION+MB_OK);
      abort;
    end;

    if (dbpdvcoletivo.Checked = false) and  (ckcaixa_garcom.Checked= false) and (dbpdv_nao_coletivo.Checked=false) then
    begin
      qrempresa.FieldByName('b_pdv_coletivo').AsBoolean:=true;
      dbPdvcoletivo.Checked:=true;
    end;

    if ckUtilizaIFood.Checked then
    begin
      if qrEmpresacliente_id_ifood.AsString = EmptyStr then
      begin
        Application.MessageBox('É necessário informar o client_id do IFood!','Alerta',+MB_ICONQUESTION+MB_OK);
        abort;
      end;

      if qrEmpresacliente_secret_ifood.AsString = EmptyStr then
      begin
        Application.MessageBox('É necessário informar o client_secret do IFood!','Alerta',+MB_ICONQUESTION+MB_OK);
        abort;
      end;

      if qrEmpresausername_ifood.AsString = EmptyStr then
      begin
        Application.MessageBox('É necessário informar o username do IFood!','Alerta',+MB_ICONQUESTION+MB_OK);
        abort;
      end;

      if qrEmpresapassword_ifood.AsString = EmptyStr then
      begin
        Application.MessageBox('É necessário informar o password do IFood!','Alerta',+MB_ICONQUESTION+MB_OK);
        abort;
      end;
    end;

    // Verifica se Ocultar menu fiscal está checado    Rafael 10/05/2018 V2.39
     if not  ckOcultar_menu_fiscal.Checked then
    begin
      str_sql:=' update formapgto set emite_fiscal=false, tipo_fiscal=0 where emp_001='+IntToStr(RecProj.iEmp);
      qraux1:=tuniquery.Create(self);
      qraux1.Connection:=frmMenu.conexao;
      qrAux1.SQL.Clear;
      qrAux1.SQL.Add(str_sql);
      qrAux1.execute;
    end;


    //verifica se as configurações das impressoras POS foram feitas
    if not VerificaConfigImpPOS(cxModoImpTermica,'Térmica', 'TERMICA')   then abort;
    if not VerificaConfigImpPOS(cxModoImpBalcao,'Balcão', 'BALCAO')   then abort;
    if not VerificaConfigImpPOS(cxModoImpCozinha,'Cozinha', 'COZINHA')   then abort;
    if not VerificaConfigImpPOS(cxModoImpCaixa,'Caixa', 'CAIXA')   then abort;
    if not VerificaConfigImpPOS(cxModoImpBar,'Bar', 'BAR')   then abort;
    if not VerificaConfigImpPOS(cxModoImpDelivery,'Delivery', 'DELIVERY')   then abort;

    //verifica se o endereço do integrador foi informado para MFE
    if (ckUtilizaSAT.Checked) and (rgTipoSisSAT.ItemIndex = 1 ) and
      ((trim(edMFEInput.Text)='') or ((trim(edMFEOutput.Text)='')) ) then
    begin
      Application.MessageBox('Dados do integrador MFE não informados!', 'Atenção', MB_ICONINFORMATION + mb_ok);
      pcPrincipal.ActivePageIndex := pgSATNFC.PageIndex;
      edMFEInput.SetFocus;
      abort;
    end;

    GravaString('CAMIMPARGOX', edCaminhoImp.Text);
    GravaString('CAMIMPBALCAO', edImpBalcao.Text);
    GravaString('CAMIMPCOZINHA', edImpCozinha1.Text);
    GravaString('CAMIMPCOZINHA2', edImpCozinha2.Text);
    GravaString('CAMIMPBAR1', edImpBar1.Text);
    GravaString('CAMIMPBAR2', edImpBar2.Text);
    GravaString('CAMIMPCAIXA', edImpCaixa.Text);
    GravaString('CAMIMPDELIVERY', edImpDelivery.Text);

    case edTaxaAdicional.ItemIndex of
      0: GravaBoolean('TAXAADICIONAL', True);
      1: GravaBoolean('TAXAADICIONAL', False);
    end;

    case edTaxaAdicionalComanda.ItemIndex of
      0: GravaBoolean('TAXAADICIONALCOMANDA', True);
      1: GravaBoolean('TAXAADICIONALCOMANDA', False);
    end;

    //Dados da gaveta
    GravaInteger('CBMODELOIMPGAVETA', cbModeloImpGaveta.ItemIndex);

    // Dados da balança
    GravaInteger('CBBALANCAPARITY', cbBalancaParity.ItemIndex);
    GravaInteger('CBBALANCASTOPBITS', cbBalancaStopBits.ItemIndex);
    GravaInteger('CBBALANCAMODELO', cbBalancaModelo.ItemIndex);
    GravaInteger('CBBALANCAHANDSHAKING', cbBalancaHandShaking.ItemIndex);

    // Dados suporte ESCPOS
    case rgSuporteESCPOS.ItemIndex of
      0: GravaBoolean('SUPORTEESCPOS', True);
      1: GravaBoolean('SUPORTEESCPOS', False);
    end;

    if rgSuporteESCPOS.ItemIndex = 0 then
    begin
     GravaInteger('MODELONAOFISCAL', cmbImpressoraNaoFiscal.ItemIndex);
     GravaInteger('LINHASENTREEXTRATOS', edtLinhaEntreExtratos.Value);
     GravaInteger('COLUNAS', edtColunaBobina.Value);
     GravaInteger('ESPACOENTRELINHAS', edtEspacoEntreLinhas.Value);
     GravaInteger('LARGURACODIGOBARRA', edtLarguraCodigoBarra.Value);
    end
    else
    begin
      GravaBoolean('EXIBIRPREVIEWEXTRATO', ckbExtratoPreview.Checked);
      GravaInteger('LARGURA', edtLargura.Value);
      GravaInteger('MARGEMTOPO', edtMargemTopo.Value);
      GravaInteger('MARGEMRODAPE', edtMargemRodape.Value);
      GravaInteger('MARGEMESQUERDA', edtMargemEsquerda.Value);
      GravaInteger('MARGEMDIREITA', edtMargemDireita.Value);
    end;

    //Salva Configurações TEF
    GravaString('TEF_REQ', TEFTransmissao.Text);
    GravaString('TEF_REP', TEFRecepcao.Text);
    GravaInteger('TEF_TIPO', cbxGP.ItemIndex);
    GravaString('TEF_VIAS', TEfVias.Text);

    SalvaValoresXML;

    //Configura TEF para não precisar REINICIAR
    RecProj.dTEF_REQ := LerString('TEF_REQ');
    RecProj.dTEF_REP := LerString('TEF_REP');
    RecProj.dTEF_VIAS := LerString('TEF_VIAS');
    RecProj.dTEF_TIPO := LerIntegerConfig('TEF_TIPO',cdsCFG.FileName);

    RecProj.sEmp:= qrEmpresa.FieldByName('emp_002').AsString;
    RecProj.sEmpFantasia:=qrEmpresa.FieldByName('emp_003').AsString;

    if (edRepositorioBkp.Text='') and (ckBackupAutomatico.Checked) then
    begin
      Application.MessageBox('O diretório do backup não pode ser vazio, se tiver marcado a opção executar Backup Automaticamente nesse computador, Por favor define um local para o backup ser executado','alerta',+MB_ICONQUESTION+mb_ok);
      Abort;
    end;

    if qrEmpresa.Active then
    begin
      if qrEmpresa.State in [dsEdit] then
      begin
        qrEmpresa.Post;
      end;
    end;
    Close;
  end;
end;

procedure TfrmConfiguracao.btECFCancelarCupomClick(Sender: TObject);
begin
  inherited;
  if ACBrECF1.Ativo then
  begin
    if Application.MessageBox('Deseja cancelar o ultimo cupom fiscal emitido?', 'Atenção', MB_ICONQUESTION + MB_YESNO)=mryes then
    begin
      try
        ACBrECF1.CancelaCupom ;
        mResp.Lines.Add( 'CancelaCupom' );
        AtualizaStatusECF;
      except
        on E : Exception do
        begin
          Application.MessageBox('Erro ao cancelar cupom!', 'Atenção', MB_ICONINFORMATION);
          mResp.Lines.Add( 'Não foi possível cancelar o cupom!') ;
          mResp.Lines.Add( 'Erro: '+ E.Message) ;
          AtualizaStatusECF ;
        end;
      end;
    end;
  end
  else
    application.MessageBox('ECF não está ativo!', 'Atenção', MB_ICONINFORMATION);
end;

procedure TfrmConfiguracao.btECFTestaVendaClick(Sender: TObject);
var Est, uf, f_pag : String ;
begin
  inherited;
  if ACBrECF1.Ativo then
  begin
    if Application.MessageBox('Confirma a emissão de cupom fiscal para teste?', 'Atenção', MB_ICONQUESTION + MB_YESNO)=mryes then
    begin
      uf := uppercase(qrEmpresa.FieldByName('est_003').AsString);
      Est := EstadosECF[ ACBrECF1.Estado ] ;

      try
        ACBrECF1.TestaPodeAbrirCupom;

        //Abre o cupom
        ACBrECF1.AbreCupom( '', '', '' ); //CPF, NOME, Endereço
        mResp.Lines.Add( 'AbreCupom' );
        AtualizaStatusECF;

        //Vende um item
        ACBrECF1.VendeItem('1234', //Código
                           'Produto teste', //Descrição
                           'NN', //Incidencia de ICMS
                           1, //Quantidade
                           0.1, //valor unitario
                           0, //Desconto
                           'UN',//Unidade
                          '$' ); //Tipo desconto ($ ou %)

        mResp.Lines.Add( 'Vende Item: Cod 1234' +
                    ' Desc: Produto teste'+
                    ' Aliq: NN'+
                    ' Qtd: 1 '+
                    ' Preço: 0,10'+
                    ' Desc: 0,00'+
                    ' Un: UN'+
                    ' Desc: $');
        //Faz o subtotal (desconto, observação)
        ACBrECF1.SubtotalizaCupom( 0, '' );
        mResp.Lines.Add( 'Efetua Subtotal');

        //faz os meios de pagamento

        if ckECFindiceFormaPagDuasCasas.Checked then
          f_pag := '01'
        else
          f_pag := '1';

        ACBrECF1.EfetuaPagamento( f_pag, //código pagamento
                                    1, //valor
                                    '',//Observacao
                                    false);//Cupom vinculado
        mResp.Lines.Add( 'Efetua Pagamento: 01' +
                            ' Valor: 1,00'+
                            ' Obs: '+
                            ' Vinc: N');

        //Fecha o cupom
        // informações que devem ir no rodapé do cupom obrigatoriamente
        // conforme a legislação do paf-ecf
        // preencha somente as informações que for utilizar, o que não foi informado
        // não será impresso
        ACBrECF1.InfoRodapeCupom.MD5 := '12345678901234567890123456789012';
        ACBrECF1.InfoRodapeCupom.Dav := '0000000001';
        ACBrECF1.InfoRodapeCupom.DavOs := '0000000002';
        ACBrECF1.InfoRodapeCupom.PreVenda := '0000000003';
        ACBrECF1.InfoRodapeCupom.CupomMania := uf ='RJ' ; // RJ
        ACBrECF1.InfoRodapeCupom.MinasLegal := uf='MG';  //MG
        ACBrECF1.InfoRodapeCupom.ParaibaLegal := uf='PB'; //PB
        ACBrECF1.InfoRodapeCupom.NotaLegalDF.Imprimir := uf = 'DF'; //DF

        if ACBrECF1.InfoRodapeCupom.NotaLegalDF.Imprimir then
        begin
          ACBrECF1.InfoRodapeCupom.NotaLegalDF.ProgramaDeCredito := True;
          ACBrECF1.InfoRodapeCupom.NotaLegalDF.ValorICMS := 0; //implementar
          ACBrECF1.InfoRodapeCupom.NotaLegalDF.ValorISS  := 0; //implementar
        end;

        // lei 12.741/2013 transparencia dos impostos
        // ACBrECF1.InfoRodapeCupom.Imposto.Texto := '...'; utilize essa propriedade se quiser personalizar o texto exemplo: Valor impostos %s (%s %) meu texto
        // ACBrECF1.InfoRodapeCupom.Imposto.ValorAproximado := 1.23;  // informar o valor aproximado calculado a partir dos itens
        // ACBrECF1.InfoRodapeCupom.Imposto.Fonte           := 'IBPT'; // informar a fonte de onde veio a informação para calculo

        // Novo formato da lei de transparência que divide a informação.
        ACBrECF1.InfoRodapeCupom.Imposto.ValorAproximadoFederal   := 0;  // informar o valor aproximado calculado a partir dos itens
        ACBrECF1.InfoRodapeCupom.Imposto.ValorAproximadoEstadual  := 0;  // informar o valor aproximado calculado a partir dos itens
        ACBrECF1.InfoRodapeCupom.Imposto.ValorAproximadoMunicipal := 0;  // informar o valor aproximado calculado a partir dos itens
        ACBrECF1.InfoRodapeCupom.Imposto.Fonte := 'IBPT/FECOMERCIO (aWd7S8)'; // informar a fonte de onde veio a informação para calculo e a Chave se vier da tabela do IBPT
        ACBrECF1.InfoRodapeCupom.Imposto.ModoCompacto := True; //Faz com que a impressão seja em apenas duas linhas;


        // ER 02.01 - Requisito XXVIII item 8
        ACBrECF1.InfoRodapeCupom.NF := '';

        ACBrECF1.FechaCupom( recproj.sInfoDevSistema1, 0);
        mResp.Lines.Add( 'Fecha Cupom' );
        AtualizaStatusECF ;

      except
        on E : Exception do
        begin
          Application.MessageBox('Erro ao emitir cupom!', 'Atenção', MB_ICONINFORMATION);
          mResp.Lines.Add( 'Não foi possível abrir o cupom!') ;
          mResp.Lines.Add( 'Estado atual é '+Est) ;
          mResp.Lines.Add( 'Erro: '+ E.Message) ;
          AtualizaStatusECF ;
        end;

      end ;

      AtualizaStatusECF ;

    end;
  end
  else
    application.MessageBox('ECF não está ativo!', 'Atenção', MB_ICONINFORMATION);

end;

procedure TfrmConfiguracao.btImportarIBPTClick(Sender: TObject);
var ACBrIBPTax1: TACBrIBPTax;
    OpenDialog1: TOpenDialog;
    qry : TUniQuery;
    i, qtd_up, qtd_in  : integer;
    str_sql_sl, str_sql_in, str_sql_up  : string;
begin
  inherited;
  ProgressBarIbpt.Visible :=true;
  lbInfoIBPT.Visible :=true;

  OpenDialog1 := TOpenDialog.Create(self);
  OpenDialog1.Filter :='CSV|*.csv' ;
  if OpenDialog1.Execute then
  begin
    if FileExists(OpenDialog1.FileName) then
    begin
      ProgressBarIbpt.Position :=0;
      ACBrIBPTax1:= TACBrIBPTax.Create(self);
      try
        if ACBrIBPTax1.AbrirTabela(OpenDialog1.FileName) then
        begin
          ProgressBarIbpt.max := ACBrIBPTax1.Itens.Count;

          str_sql_in:=' insert into ibpt ( descricao, ex, tabela, aliqfednacional, aliqfedimportado, aliqestadual, aliqmunicipal, ncm) '+
                         ' values (:descricao,:ex, :tabela, :nacional, :importado,:estadual,:municipal, :ncm) ';
          str_sql_up:=' update ibpt set descricao = :descricao, ex=:ex, tabela=:tabela, '+
                       ' aliqfednacional=:nacional, aliqfedimportado=:importado, aliqestadual=:estadual, '+
                       ' aliqmunicipal=:municipal where ncm=:ncm';
          qry:= TUniQuery.Create(self);
          qry.Connection:=frmMenu.conexao;
          qtd_up :=0;
          qtd_in :=0;

          for I := 0 to ACBrIBPTax1.Itens.Count -1 do
          begin
            str_sql_sl := 'select 1 from ibpt where ncm=' + QuotedStr(ACBrIBPTax1.Itens[i].NCM);
            if ExecutaConsultaSQL(qry, str_sql_sl ) then
            begin
              qtd_up := qtd_up + ExecutaComandoSQL(str_sql_up, vararrayof([
                                  uppercase(copy(Trim(ACBrIBPTax1.Itens[i].Descricao), 1, 255)),
                                  ACBrIBPTax1.Itens[i].Excecao,
                                  ACBrIBPTax1.Itens[i].Tabela,
                                  ACBrIBPTax1.Itens[i].FederalNacional,

                                  ACBrIBPTax1.Itens[i].FederalImportado,
                                  ACBrIBPTax1.Itens[i].Estadual,
                                  ACBrIBPTax1.Itens[i].Municipal,
                                  ACBrIBPTax1.Itens[i].NCM]));
            end
            else
            begin
              qtd_in := qtd_in + ExecutaComandoSQL(str_sql_in, vararrayof([
                                  uppercase(copy(TrimLeft(ACBrIBPTax1.Itens[i].Descricao),1,255)),
                                  ACBrIBPTax1.Itens[i].Excecao,
                                  ACBrIBPTax1.Itens[i].Tabela,
                                  ACBrIBPTax1.Itens[i].FederalNacional,
                                  ACBrIBPTax1.Itens[i].FederalImportado,
                                  ACBrIBPTax1.Itens[i].Estadual,
                                  ACBrIBPTax1.Itens[i].Municipal,
                                  ACBrIBPTax1.Itens[i].NCM]));
            end;
            ProgressBarIbpt.StepIt;
          end;
          Application.MessageBox(pchar(Format('Tabela IBPT atualizada!'+#13#10+
                                       'Itens inseridos: %d' +#13#10+
                                       'Itens atualizados: %d', [qtd_in, qtd_up] )),
                                       'Atenção', MB_ICONINFORMATION);

        end;
      except
        Application.MessageBox('Erro ao importar a tabela!', 'Atenção', MB_ICONWARNING);
      end;
    end;
  end;
  ProgressBarIbpt.Visible:=false;
  lbInfoIBPT.Visible :=false;

end;

procedure TfrmConfiguracao.btLogoClick(Sender: TObject);
var sCaminho: string;
begin
  inherited;
  if JvFoto.Execute then
  begin
    sCaminho := JvFoto.FileName;

    if FileExists(sCaminho) then
    begin
      imgProduto.Picture.LoadFromFile(sCaminho);
      edLogotipo.Text:= sCaminho;
    end
    else
    begin
      imgProduto.Picture:= nil;
      edLogotipo.Text:= '';
    end;
  end;
end;

procedure TfrmConfiguracao.btnArqMFDNovoClick(Sender: TObject);
var
  PathArquivo: String;
  dlgDialogoSalvar:  TSaveDialog;
begin
  if ACBrECF1.Ativo then
  begin
    try
      dlgDialogoSalvar:=  TSaveDialog.Create(self);
      dlgDialogoSalvar.DefaultExt := '.mfd';
      dlgDialogoSalvar.Filter := 'Arquivos binários MF|*.mfd';

      if dlgDialogoSalvar.Execute then
      begin
        PathArquivo := dlgDialogoSalvar.FileName;
        ACBrECF1.PafMF_ArqMFD_Binario(PathArquivo);

        // será gerado o arquivo bináio e o arquivo .txt com a assinatura EAD

        ShowMessage(Format('Arquivo MFD gerado com sucesso em:'#13#10' "%s"', [PathArquivo]));
      end;
    except
      on E : Exception do
      begin
        Application.MessageBox('Erro ao completar o procedimento!', 'Atenção', MB_ICONINFORMATION);
        mResp.Lines.Add( 'Erro: '+ E.Message) ;
        AtualizaStatusECF ;
      end;
    end;
  end
  else
    application.MessageBox('ECF não está ativo!', 'Atenção', MB_ICONINFORMATION);

end;

procedure TfrmConfiguracao.btnArqMFNovoClick(Sender: TObject);
var
  dlgDialogoSalvar:  TSaveDialog;
  PathArquivo: String;
begin
  inherited;
  if ACBrECF1.Ativo then
  begin
    try
      dlgDialogoSalvar:=  TSaveDialog.Create(self);
      dlgDialogoSalvar.DefaultExt := '.mf';
      dlgDialogoSalvar.Filter := 'Arquivos binários MF|*.mf';

      if dlgDialogoSalvar.Execute then
      begin
        PathArquivo := dlgDialogoSalvar.FileName;
        ACBrECF1.PafMF_ArqMFD_Binario(PathArquivo);

        // será gerado o arquivo bináio e o arquivo .txt com a assinatura EAD

        ShowMessage(Format('Arquivo MF gerado com sucesso em:'#13#10' "%s"', [PathArquivo]));
      end;
    except
      on E : Exception do
      begin
        Application.MessageBox('Erro ao completar o procedimento!', 'Atenção', MB_ICONINFORMATION);
        mResp.Lines.Add( 'Erro: '+ E.Message) ;
        AtualizaStatusECF ;
      end;
    end;
  end
  else
    application.MessageBox('ECF não está ativo!', 'Atenção', MB_ICONINFORMATION);

end;

procedure TfrmConfiguracao.btAtivarSATClick(Sender: TObject);
begin
  inherited;
  Self.AjustaSAT;
  ShowMessage(ACBrSAT.AtivarSAT(1, qrEmpresaemp_004.Text, 35));
end;

procedure TfrmConfiguracao.btAtualizacaoSWClick(Sender: TObject);
begin
  inherited;
  Self.AjustaSAT;
  ShowMessage(ACBrSAT.AtualizarSoftwareSAT);
end;

procedure TfrmConfiguracao.btConsultarSATClick(Sender: TObject);
begin
  inherited;
  Self.AjustaSAT;
  ACBrSAT.ConsultarSAT;

  if ACBrSAT.Resposta.codigoDeRetorno = 8000 then
     ShowMessage(ACBrSAT.Resposta.mensagemRetorno)
  else
     ShowMessage(ACBrSAT.Resposta.mensagemRetorno);
end;

procedure TfrmConfiguracao.btnDadosRZClick(Sender: TObject);
var
  I: integer;
  SRZ: AnsiString;
begin
  if ACBrECF1.Ativo then
  begin
    try
      SRZ := ACBrECF1.DadosReducaoZ;

      mRZ.Clear;
      with ACBrECF1.DadosReducaoZClass do
      begin
         mRZ.Lines.Add( 'Data Impressora    : ' + DateToStr( DataDaImpressora ) );
         mRZ.Lines.Add( 'Numero Série       : ' + NumeroDeSerie );
         mRZ.Lines.Add( 'Numero Série MFD   : ' + NumeroDeSerieMFD );
         mRZ.Lines.Add( 'Numero ECF         : ' + NumeroDoECF );
         mRZ.Lines.Add( 'Numero Loja        : ' + NumeroDaLoja );
         mRZ.Lines.Add( 'Numero COO Inicial : ' + NumeroCOOInicial );

         mRZ.Lines.Add( '{ REDUÇÃO Z }');
         mRZ.Lines.Add( 'Data Movimento  : ' +DateToStr( DataDoMovimento ) );
         mRZ.Lines.Add( '' );
         mRZ.Lines.Add( '{ CONTADORES }');
         mRZ.Lines.Add( 'COO  : ' + IntToStr(COO) );
         mRZ.Lines.Add( 'GNF  : ' + IntToStr(GNF) );
         mRZ.Lines.Add( 'CRO  : ' + IntToStr(CRO) );
         mRZ.Lines.Add( 'CRZ  : ' + IntToStr(CRZ) );
         mRZ.Lines.Add( 'CCF  : ' + IntToStr(CCF) );
         mRZ.Lines.Add( 'CFD  : ' + IntToStr(CFD) );
         mRZ.Lines.Add( 'CDC  : ' + IntToStr(CDC) );
         mRZ.Lines.Add( 'GRG  : ' + IntToStr(GRG) );
         mRZ.Lines.Add( 'GNFC : ' + IntToStr(GNFC) );
         mRZ.Lines.Add( 'CFC  : ' + IntToStr(CFC) );
         mRZ.Lines.Add( 'NCN  : ' + IntToStr(NCN) );
         mRZ.Lines.Add( 'CCDC : ' + IntToStr(CCDC  ) );
         mRZ.Lines.Add( '' );

         mRZ.Lines.Add( '{ TOTALIZADORES }' );
         mRZ.Lines.Add( 'Grande Total      : ' + FormatFloat('###,##0.00', ValorGrandeTotal) );
         mRZ.Lines.Add( 'VendaBruta        : ' + FormatFloat('###,##0.00', ValorVendaBruta) );
         mRZ.Lines.Add( 'CancelamentoICMS  : ' + FormatFloat('###,##0.00', CancelamentoICMS) );
         mRZ.Lines.Add( 'DescontoICMS      : ' + FormatFloat('###,##0.00', DescontoICMS) );
         mRZ.Lines.Add( 'CancelamentoISSQN : ' + FormatFloat('###,##0.00', CancelamentoISSQN) );
         mRZ.Lines.Add( 'DescontoISSQN     : ' + FormatFloat('###,##0.00', DescontoISSQN) );
         mRZ.Lines.Add( 'CancelamentoOPNF  : ' + FormatFloat('###,##0.00', CancelamentoOPNF) );
         mRZ.Lines.Add( 'DescontoOPNF      : ' + FormatFloat('###,##0.00', DescontoOPNF) );
         mRZ.Lines.Add( 'VendaLiquida      : ' + FormatFloat('###,##0.00', VendaLiquida) );
         mRZ.Lines.Add( 'AcrescimoICMS     : ' + FormatFloat('###,##0.00', AcrescimoICMS) );
         mRZ.Lines.Add( 'AcrescimoISSQN    : ' + FormatFloat('###,##0.00', AcrescimoISSQN) );
         mRZ.Lines.Add( 'AcrescimoOPNF     : ' + FormatFloat('###,##0.00', AcrescimoOPNF) );
         mRZ.Lines.Add( '' );

         mRZ.Lines.Add( '{ ICMS }' );
         for I := 0 to ICMS.Count -1 do
         begin
             mRZ.Lines.Add( 'Indice    : ' + ICMS[I].Indice );
             mRZ.Lines.Add( 'Tipo      : ' + ICMS[I].Tipo );
             mRZ.Lines.Add( 'Aliquota  : ' + FormatFloat('0.00', ICMS[I].Aliquota) );
             mRZ.Lines.Add( 'Total     : ' + FormatFloat('###,##0.00', ICMS[I].Total) );
         end;
         mRZ.Lines.Add( 'TotalICMS         : ' + FormatFloat('###,##0.00', TotalICMS) );
         mRZ.Lines.Add( 'SubstituicaoTributariaICMS: ' + FormatFloat('###,##0.00', SubstituicaoTributariaICMS) );
         mRZ.Lines.Add( 'IsentoICMS                : ' + FormatFloat('###,##0.00', IsentoICMS) );
         mRZ.Lines.Add( 'NaoTributadoICMS          : ' + FormatFloat('###,##0.00', NaoTributadoICMS) );
         mRZ.Lines.Add( '' );

         mRZ.Lines.Add( '{ ISSQN }' );
         for I := 0 to ISSQN.Count -1 do
         begin
             mRZ.Lines.Add( 'Indice    : ' + ISSQN[I].Indice );
             mRZ.Lines.Add( 'Tipo      : ' + ISSQN[I].Tipo );
             mRZ.Lines.Add( 'Aliquota  : ' + FormatFloat('0.00', ISSQN[I].Aliquota) );
             mRZ.Lines.Add( 'Total     : ' + FormatFloat('###,##0.00', ISSQN[I].Total) );
         end;
         mRZ.Lines.Add( 'TotalISSQN        : ' + FormatFloat('###,##0.00', TotalISSQN) );
         mRZ.Lines.Add( 'SubstituicaoTributariaISSQN: ' + FormatFloat('###,##0.00', SubstituicaoTributariaISSQN) );
         mRZ.Lines.Add( 'IsentoISSQN                : ' + FormatFloat('###,##0.00', IsentoISSQN) );
         mRZ.Lines.Add( 'NaoTributadoISSQN          : ' + FormatFloat('###,##0.00', NaoTributadoISSQN) );
         mRZ.Lines.Add( '' );

         mRZ.Lines.Add( '{ TOTALIZADORES NÃO FISCAIS }' );
         for I := 0 to TotalizadoresNaoFiscais.Count -1 do
         begin
             mRZ.Lines.Add( 'Indice     : ' + TotalizadoresNaoFiscais[I].Indice );
             mRZ.Lines.Add( 'Descrição  : ' + TotalizadoresNaoFiscais[I].Descricao );
             mRZ.Lines.Add( 'Forma Pagto: ' + TotalizadoresNaoFiscais[I].FormaPagamento );
             mRZ.Lines.Add( 'Total      : ' + FormatFloat('###,##0.00', TotalizadoresNaoFiscais[I].Total) );
         end;
         mRZ.Lines.Add( 'TotalOperacaoNaoFiscal : ' + FormatFloat('###,##0.00', TotalOperacaoNaoFiscal) );
         mRZ.Lines.Add( '' );

         mRZ.Lines.Add( '{ RELATÓRIO GERENCIAL }' );
         for I := 0 to RelatorioGerencial.Count -1 do
         begin
             mRZ.Lines.Add( 'Indice     : ' + RelatorioGerencial[I].Indice );
             mRZ.Lines.Add( 'Descrição  : ' + RelatorioGerencial[I].Descricao );
         end;
         mRZ.Lines.Add( '' );

         mRZ.Lines.Add( '{ MEIOS DE PAGAMENTO }' );
         for I := 0 to MeiosDePagamento.Count -1 do
         begin
             mRZ.Lines.Add( 'Indice     : ' + MeiosDePagamento[I].Indice );
             mRZ.Lines.Add( 'Descrição  : ' + MeiosDePagamento[I].Descricao );
             mRZ.Lines.Add( 'Total      : ' + FormatFloat('###,##0.00', MeiosDePagamento[I].Total) );
         end;
         mRZ.Lines.Add( 'Total Troco : ' + FormatFloat('###,##0.00', TotalTroco) );
      end;

      mRZ.Lines.Add( '********  Retorno sem tratamento INICIO  ********');
      mRZ.Lines.Add( SRZ);
      mRZ.Lines.Add( '********  Retorno sem tratamento FIM  ********');

    except
      on E : Exception do
      begin
        Application.MessageBox('Erro ao completar o procedimento!', 'Atenção', MB_ICONINFORMATION);
        mResp.Lines.Add( 'Erro: '+ E.Message) ;
        AtualizaStatusECF ;
      end;
    end;
  end
  else
    application.MessageBox('ECF não está ativo!', 'Atenção', MB_ICONINFORMATION);

end;

procedure TfrmConfiguracao.btnDadosUltimaRZClick(Sender: TObject);
var
  I: integer;
  SRZ: AnsiString;
begin
  if ACBrECF1.Ativo then
  begin
    try
      SRZ := ACBrECF1.DadosUltimaReducaoZ;

      mRZ.Clear;
      with ACBrECF1.DadosReducaoZClass do
      begin
         mRZ.Lines.Add( 'Data Impressora    : ' + DateToStr( DataDaImpressora ) );
         mRZ.Lines.Add( 'Numero Série       : ' + NumeroDeSerie );
         mRZ.Lines.Add( 'Numero Série MFD   : ' + NumeroDeSerieMFD );
         mRZ.Lines.Add( 'Numero ECF         : ' + NumeroDoECF );
         mRZ.Lines.Add( 'Numero Loja        : ' + NumeroDaLoja );
         mRZ.Lines.Add( 'Numero COO Inicial : ' + NumeroCOOInicial );

         mRZ.Lines.Add( '{ REDUÇÃO Z }');
         mRZ.Lines.Add( 'Data Movimento  : ' +DateToStr( DataDoMovimento ) );
         mRZ.Lines.Add( '' );
         mRZ.Lines.Add( '{ CONTADORES }');
         mRZ.Lines.Add( 'COO  : ' + IntToStr(COO) );
         mRZ.Lines.Add( 'GNF  : ' + IntToStr(GNF) );
         mRZ.Lines.Add( 'CRO  : ' + IntToStr(CRO) );
         mRZ.Lines.Add( 'CRZ  : ' + IntToStr(CRZ) );
         mRZ.Lines.Add( 'CCF  : ' + IntToStr(CCF) );
         mRZ.Lines.Add( 'CFD  : ' + IntToStr(CFD) );
         mRZ.Lines.Add( 'CDC  : ' + IntToStr(CDC) );
         mRZ.Lines.Add( 'GRG  : ' + IntToStr(GRG) );
         mRZ.Lines.Add( 'GNFC : ' + IntToStr(GNFC) );
         mRZ.Lines.Add( 'CFC  : ' + IntToStr(CFC) );
         mRZ.Lines.Add( 'NCN  : ' + IntToStr(NCN) );
         mRZ.Lines.Add( 'CCDC : ' + IntToStr(CCDC  ) );
         mRZ.Lines.Add( '' );

         mRZ.Lines.Add( '{ TOTALIZADORES }' );
         mRZ.Lines.Add( 'Grande Total      : ' + FormatFloat('###,##0.00', ValorGrandeTotal) );
         mRZ.Lines.Add( 'VendaBruta        : ' + FormatFloat('###,##0.00', ValorVendaBruta) );
         mRZ.Lines.Add( 'CancelamentoICMS  : ' + FormatFloat('###,##0.00', CancelamentoICMS) );
         mRZ.Lines.Add( 'DescontoICMS      : ' + FormatFloat('###,##0.00', DescontoICMS) );
         mRZ.Lines.Add( 'CancelamentoISSQN : ' + FormatFloat('###,##0.00', CancelamentoISSQN) );
         mRZ.Lines.Add( 'DescontoISSQN     : ' + FormatFloat('###,##0.00', DescontoISSQN) );
         mRZ.Lines.Add( 'CancelamentoOPNF  : ' + FormatFloat('###,##0.00', CancelamentoOPNF) );
         mRZ.Lines.Add( 'DescontoOPNF      : ' + FormatFloat('###,##0.00', DescontoOPNF) );
         mRZ.Lines.Add( 'VendaLiquida      : ' + FormatFloat('###,##0.00', VendaLiquida) );
         mRZ.Lines.Add( 'AcrescimoICMS     : ' + FormatFloat('###,##0.00', AcrescimoICMS) );
         mRZ.Lines.Add( 'AcrescimoISSQN    : ' + FormatFloat('###,##0.00', AcrescimoISSQN) );
         mRZ.Lines.Add( 'AcrescimoOPNF     : ' + FormatFloat('###,##0.00', AcrescimoOPNF) );
         mRZ.Lines.Add( '' );

         mRZ.Lines.Add( '{ ICMS }' );
         for I := 0 to ICMS.Count -1 do
         begin
             mRZ.Lines.Add( 'Indice    : ' + ICMS[I].Indice );
             mRZ.Lines.Add( 'Tipo      : ' + ICMS[I].Tipo );
             mRZ.Lines.Add( 'Aliquota  : ' + FormatFloat('0.00', ICMS[I].Aliquota) );
             mRZ.Lines.Add( 'Total     : ' + FormatFloat('###,##0.00', ICMS[I].Total) );
         end;
         mRZ.Lines.Add( 'TotalICMS         : ' + FormatFloat('###,##0.00', TotalICMS) );
         mRZ.Lines.Add( 'SubstituicaoTributariaICMS: ' + FormatFloat('###,##0.00', SubstituicaoTributariaICMS) );
         mRZ.Lines.Add( 'IsentoICMS                : ' + FormatFloat('###,##0.00', IsentoICMS) );
         mRZ.Lines.Add( 'NaoTributadoICMS          : ' + FormatFloat('###,##0.00', NaoTributadoICMS) );
         mRZ.Lines.Add( '' );

         mRZ.Lines.Add( '{ ISSQN }' );
         for I := 0 to ISSQN.Count -1 do
         begin
             mRZ.Lines.Add( 'Indice    : ' + ISSQN[I].Indice );
             mRZ.Lines.Add( 'Tipo      : ' + ISSQN[I].Tipo );
             mRZ.Lines.Add( 'Aliquota  : ' + FormatFloat('0.00', ISSQN[I].Aliquota) );
             mRZ.Lines.Add( 'Total     : ' + FormatFloat('###,##0.00', ISSQN[I].Total) );
         end;
         mRZ.Lines.Add( 'TotalISSQN        : ' + FormatFloat('###,##0.00', TotalISSQN) );
         mRZ.Lines.Add( 'SubstituicaoTributariaISSQN: ' + FormatFloat('###,##0.00', SubstituicaoTributariaISSQN) );
         mRZ.Lines.Add( 'IsentoISSQN                : ' + FormatFloat('###,##0.00', IsentoISSQN) );
         mRZ.Lines.Add( 'NaoTributadoISSQN          : ' + FormatFloat('###,##0.00', NaoTributadoISSQN) );
         mRZ.Lines.Add( '' );

         mRZ.Lines.Add( '{ TOTALIZADORES NÃO FISCAIS }' );
         for I := 0 to TotalizadoresNaoFiscais.Count -1 do
         begin
             mRZ.Lines.Add( 'Indice     : ' + TotalizadoresNaoFiscais[I].Indice );
             mRZ.Lines.Add( 'Descrição  : ' + TotalizadoresNaoFiscais[I].Descricao );
             mRZ.Lines.Add( 'Forma Pagto: ' + TotalizadoresNaoFiscais[I].FormaPagamento );
             mRZ.Lines.Add( 'Total      : ' + FormatFloat('###,##0.00', TotalizadoresNaoFiscais[I].Total) );
         end;
         mRZ.Lines.Add( 'TotalOperacaoNaoFiscal : ' + FormatFloat('###,##0.00', TotalOperacaoNaoFiscal) );
         mRZ.Lines.Add( '' );

         mRZ.Lines.Add( '{ RELATÓRIO GERENCIAL }' );
         for I := 0 to RelatorioGerencial.Count -1 do
         begin
             mRZ.Lines.Add( 'Indice     : ' + RelatorioGerencial[I].Indice );
             mRZ.Lines.Add( 'Descrição  : ' + RelatorioGerencial[I].Descricao );
         end;
         mRZ.Lines.Add( '' );

         mRZ.Lines.Add( '{ MEIOS DE PAGAMENTO }' );
         for I := 0 to MeiosDePagamento.Count -1 do
         begin
             mRZ.Lines.Add( 'Indice     : ' + MeiosDePagamento[I].Indice );
             mRZ.Lines.Add( 'Descrição  : ' + MeiosDePagamento[I].Descricao );
             mRZ.Lines.Add( 'Total      : ' + FormatFloat('###,##0.00', MeiosDePagamento[I].Total) );
         end;
         mRZ.Lines.Add( 'Total Troco : ' + FormatFloat('###,##0.00', TotalTroco) );
      end;
      mRZ.Lines.Add( '********  Retorno sem tratamento INICIO  ********');
      mRZ.Lines.Add( SRZ);
      mRZ.Lines.Add( '********  Retorno sem tratamento FIM  ********');
    except
      on E : Exception do
      begin
        Application.MessageBox('Erro ao completar o procedimento!', 'Atenção', MB_ICONINFORMATION);
        mResp.Lines.Add( 'Erro: '+ E.Message) ;
        AtualizaStatusECF ;
      end;
    end;
  end
  else
    application.MessageBox('ECF não está ativo!', 'Atenção', MB_ICONINFORMATION);

end;

procedure TfrmConfiguracao.btnEfetuarRZClick(Sender: TObject);
Var Resp : TModalResult ;
  emite_z : boolean;
begin
  emite_z:=true;
  if ACBrECF1.Ativo then
  begin
    try
      if ACBrECF1.Estado <> estRequerZ then
        emite_z := application.MessageBox('A Redução Z vai bloquear o ECF até o próximo dia útil. Confirma a geração da Redução Z?',
                                          'Atenção', MB_ICONQUESTION + MB_YESNO) = mrYes;
      if emite_z then
      begin
        ACBrECF1.ReducaoZ();
        mResp.Lines.Add( 'Reduçao Z');
        AtualizaStatusECF ;
      end;
    except
      on E : Exception do
      begin
        Application.MessageBox('Erro ao completar o procedimento!', 'Atenção', MB_ICONINFORMATION);
        mResp.Lines.Add( 'Erro: '+ E.Message) ;
        AtualizaStatusECF ;
      end;
    end;
  end
  else
    application.MessageBox('ECF não está ativo!', 'Atenção', MB_ICONINFORMATION);

end;

procedure TfrmConfiguracao.btExtrairLogClick(Sender: TObject);
begin
  inherited;
  Self.AjustaSAT();

  ACBrSAT.ExtrairLogs(ExtractFilePath(Application.ExeName) + 'logSAT.txt');
  try
     frmLogAparelho := TfrmLogAparelho.Create(nil);
     frmLogAparelho.ShowModal;
  finally
     FreeAndNil(frmLogAparelho);
  end;
end;

procedure TfrmConfiguracao.btNFCeCNPJCertificadoClick(Sender: TObject);
begin
  inherited;
  if trim(edNFCeNumSerieCertificado.Text)<>'' then
  begin
    ACBrNFe1.Configuracoes.Certificados.NumeroSerie:=trim(edNFCeNumSerieCertificado.Text);
    ShowMessage( ACBrNFe1.SSL.CertCNPJ );
  end;
end;

procedure TfrmConfiguracao.btNFCeDataValidadeCertificadoClick(Sender: TObject);
begin
  inherited;
  if trim(edNFCeNumSerieCertificado.Text)<>'' then
  begin
    ACBrNFe1.Configuracoes.Certificados.NumeroSerie:=trim(edNFCeNumSerieCertificado.Text);
    ShowMessage( FormatDateBr(ACBrNFe1.SSL.CertDataVenc) );
  end;
end;

procedure TfrmConfiguracao.btNFCeNumSerieCertificadoClick(Sender: TObject);
begin
  inherited;
  if trim(edNFCeNumSerieCertificado.Text)<>'' then
  begin
    ACBrNFe1.Configuracoes.Certificados.NumeroSerie:=trim(edNFCeNumSerieCertificado.Text);
    ShowMessage( ACBrNFe1.SSL.CertNumeroSerie );
  end;
end;

procedure TfrmConfiguracao.btNFCeSelecionarCertificadoClick(Sender: TObject);
begin
  inherited;
  try
    frmNFeSelecionarCertificado := TfrmNFeSelecionarCertificado.create(self, ACBrNFe1);
    frmNFeSelecionarCertificado.ShowModal;

    if frmNFeSelecionarCertificado.ModalResult = mrOK then
      edNFCeNumSerieCertificado.Text := frmNFeSelecionarCertificado.StringGrid1.Cells[ 0,
                            frmNFeSelecionarCertificado.StringGrid1.Row];

  finally
     frmNFeSelecionarCertificado.Free;
  end;

end;

procedure TfrmConfiguracao.btNFCeSha256CertificadoClick(Sender: TObject);
  var Ahash: AnsiString;
begin
  inherited;
  Ahash := ACBrNFe1.SSL.CalcHash(edNFCeSHA256.Text, dgstSHA256, outBase64, ckNFCeAssinar.Checked);
  ShowMessage( Ahash );
end;

procedure TfrmConfiguracao.btNFCeSubjectNameCertificadoClick(Sender: TObject);
begin
  inherited;
  if trim(edNFCeNumSerieCertificado.Text)<>'' then
  begin
    ACBrNFe1.Configuracoes.Certificados.NumeroSerie:=trim(edNFCeNumSerieCertificado.Text);
    ShowMessage( ACBrNFe1.SSL.CertSubjectName + sLineBreak + sLineBreak +
               'Razão Social: '+ACBrNFe1.SSL.CertRazaoSocial);
  end;
end;

procedure TfrmConfiguracao.btnMenuFiscalConfigPAFECFClick(Sender: TObject);
var
  Parametros: TACBrECFInfoPaf;
begin
  inherited;
  if ACBrECF1.Ativo then
  begin
    // para ERs mais novas usar, onde 'X' é o perfil de requisitos aplicado
    ACBrECF1.PafMF_RelParametrosConfiguracao('X');

    {
    if Assigned(ACBrECF1.AAC) then
      ACBrECF1.PafMF_RelParametrosConfiguracao(ACBrECF1.AAC.IdentPAF.Paf)
    else
    begin
      Parametros := TACBrECFInfoPaf.Create;
      try
        Parametros.TipoFuncionamento   := tpfEmRede;
        Parametros.TipoDesenvolvimento := tpdExclusivoTerceirizado;
        Parametros.IntegracaoPAFECF    := tpiRetaguarda;

        Parametros.RealizaPreVenda              := True;
        Parametros.RealizaDAVECF                := True;
        Parametros.RealizaDAVNaoFiscal          := True;
        Parametros.RealizaDAVOS                 := True;
        Parametros.DAVConfAnexoII               := True;
        Parametros.RealizaLancamentoMesa        := True;
        Parametros.IndiceTecnicoProd            := True;
        Parametros.BarSimilarECFRestaurante     := True;
        Parametros.BarSimilarECFComum           := True;
        Parametros.BarSimilarBalanca            := True;
        Parametros.UsaImpressoraNaoFiscal       := True;
        Parametros.DAVDiscrFormula              := True;
        Parametros.ImpedeVendaVlrZero           := True;
        Parametros.AcumulaVolumeDiario          := True;
        Parametros.ArmazenaEncerranteIniFinal   := True;
        Parametros.EmiteContrEncerrAposREDZLEIX := True;
        Parametros.IntegradoComBombas           := True;
        Parametros.CriaAbastDivergEncerrante    := True;
        Parametros.CadastroPlacaBomba           := True;
        Parametros.TransportePassageiro         := True;
        Parametros.TotalizaValoresLista         := True;
        Parametros.TransfPreVenda               := True;
        Parametros.TransfDAV                    := True;
        Parametros.RecompoeGT                   := True;
        Parametros.EmitePED                     := True;
        Parametros.CupomMania                   := True;
        Parametros.MinasLegal                   := True;
        Parametros.NotaLegalDF                  := True;
        Parametros.ParaibaLegal                 := True;
        Parametros.TrocoEmCartao                := True;

        ACBrECF1.PafMF_RelParametrosConfiguracao(Parametros);
      finally
        Parametros.Free;
      end;
    end;
    }
  end
  else
    application.MessageBox('ECF não está ativo!', 'Atenção', MB_ICONINFORMATION);

end;

procedure TfrmConfiguracao.btnMenuFiscalLMFCClick(Sender: TObject);
var
  PathArquivo: string;
  dlgDialogoSalvar: TSaveDialog;
begin
  inherited;
  if ACBrECF1.Ativo then
  begin
    try
      if chkMenuFiscalGerarArquivo.Checked then
      begin
        dlgDialogoSalvar:=  TSaveDialog.Create(self);
        dlgDialogoSalvar.DefaultExt := '.txt';
        dlgDialogoSalvar.Filter := 'Arquivos texto|*.txt';

        if dlgDialogoSalvar.Execute then
        begin
          PathArquivo := dlgDialogoSalvar.FileName;

          if chkMenuFiscalCotepe1704.Checked then
          begin
            if pgcMenuFiscalTipo.ActivePageIndex = 0 then
              ACBrECF1.PafMF_LMFC_Cotepe1704(edtDtInicial.Date, edtDtFinal.Date, PathArquivo)
            else
              ACBrECF1.PafMF_LMFC_Cotepe1704(edtCOOInicial.Value, edtCOOFinal.Value, PathArquivo);
          end
          else
          begin
            if pgcMenuFiscalTipo.ActivePageIndex = 0 then
              ACBrECF1.PafMF_LMFC_Espelho(edtDtInicial.Date, edtDtFinal.Date, PathArquivo)
            else
              ACBrECF1.PafMF_LMFC_Espelho(edtCOOInicial.Value, edtCOOFinal.Value, PathArquivo);
          end;

          ShowMessage(Format('Arquivo gerado com sucesso em:'#13#10' "%s"', [PathArquivo]));
        end;
      end
      else
      begin
        if pgcMenuFiscalTipo.ActivePageIndex = 0 then
          ACBrECF1.PafMF_LMFC_Impressao(edtDtInicial.Date, edtDtFinal.Date)
        else
          ACBrECF1.PafMF_LMFC_Impressao(edtCOOInicial.Value, edtCOOFinal.Value);
      end;
    except
      on E : Exception do
      begin
        Application.MessageBox('Erro ao completar o procedimento!', 'Atenção', MB_ICONINFORMATION);
        mResp.Lines.Add( 'Erro: '+ E.Message) ;
        AtualizaStatusECF ;
      end;
    end;
  end
  else
    application.MessageBox('ECF não está ativo!', 'Atenção', MB_ICONINFORMATION);

end;

procedure TfrmConfiguracao.btnMenuFiscalLMFSClick(Sender: TObject);
var
  PathArquivo: string;
  dlgDialogoSalvar: TSaveDialog;
begin
  inherited;
  if ACBrECF1.Ativo then
  begin
    try
      if chkMenuFiscalGerarArquivo.Checked then
      begin
        dlgDialogoSalvar:=  TSaveDialog.Create(self);
        dlgDialogoSalvar.DefaultExt := '.txt';
        dlgDialogoSalvar.Filter := 'Arquivos texto|*.txt';

        if dlgDialogoSalvar.Execute then
        begin
          PathArquivo := dlgDialogoSalvar.FileName;
          if pgcMenuFiscalTipo.ActivePageIndex = 0 then
            ACBrECF1.PafMF_LMFS_Espelho(edtDtInicial.Date, edtDtFinal.Date, PathArquivo)
          else
            ACBrECF1.PafMF_LMFS_Espelho(edtCOOInicial.Value, edtCOOFinal.Value, PathArquivo);

          ShowMessage(Format('Arquivo gerado com sucesso em:'#13#10' "%s"', [PathArquivo]));
        end;
      end
      else
      begin
        if pgcMenuFiscalTipo.ActivePageIndex = 0 then
          ACBrECF1.PafMF_LMFS_Impressao(edtDtInicial.Date, edtDtFinal.Date)
        else
          ACBrECF1.PafMF_LMFS_Impressao(edtCOOInicial.Value, edtCOOFinal.Value);
      end;
    except
      on E : Exception do
      begin
        Application.MessageBox('Erro ao completar o procedimento!', 'Atenção', MB_ICONINFORMATION);
        mResp.Lines.Add( 'Erro: '+ E.Message) ;
        AtualizaStatusECF ;
      end;
    end;
  end
  else
    application.MessageBox('ECF não está ativo!', 'Atenção', MB_ICONINFORMATION);



end;

procedure TfrmConfiguracao.btnMenuFiscalLXClick(Sender: TObject);
begin
  inherited;
  if ACBrECF1.Ativo then
  begin
    try
      ACBrECF1.PafMF_LX_Impressao;
    except
      on E : Exception do
      begin
        Application.MessageBox('Erro ao completar o procedimento!', 'Atenção', MB_ICONINFORMATION);
        mResp.Lines.Add( 'Erro: '+ E.Message) ;
        AtualizaStatusECF ;
      end;
    end;
  end
  else
    application.MessageBox('ECF não está ativo!', 'Atenção', MB_ICONINFORMATION);

end;

procedure TfrmConfiguracao.btnMenuFiscalMFDArqClick(Sender: TObject);
var PathArquivo: string;
    dlgDialogoSalvar: TSaveDialog;
begin
  inherited;
  if ACBrECF1.Ativo then
  begin
    try
      dlgDialogoSalvar:=  TSaveDialog.Create(self);
      dlgDialogoSalvar.DefaultExt := '.txt';
      dlgDialogoSalvar.Filter := 'Arquivos text|*.txt';

      if dlgDialogoSalvar.Execute then
      begin
        PathArquivo := dlgDialogoSalvar.FileName;

        if pgcMenuFiscalTipo.ActivePageIndex = 0 then
          ACBrECF1.PafMF_MFD_Cotepe1704(edtDtInicial.Date, edtDtFinal.Date, PathArquivo)
        else
          ACBrECF1.PafMF_MFD_Cotepe1704(edtCOOInicial.Value, edtCOOFinal.Value, PathArquivo);

        ShowMessage(Format('Arquivo gerado com sucesso em:'#13#10' "%s"', [PathArquivo]));
      end;
    except
      on E : Exception do
      begin
        Application.MessageBox('Erro ao completar o procedimento!', 'Atenção', MB_ICONINFORMATION);
        mResp.Lines.Add( 'Erro: '+ E.Message) ;
        AtualizaStatusECF ;
      end;
    end;
  end
  else
    application.MessageBox('ECF não está ativo!', 'Atenção', MB_ICONINFORMATION);

end;

procedure TfrmConfiguracao.btnMenuFiscalMFDEspelhoClick(Sender: TObject);
var dlgDialogoSalvar: TSaveDialog;
    PathArquivo: string;
begin
  inherited;
  if ACBrECF1.Ativo then
  begin
    try
      dlgDialogoSalvar:=  TSaveDialog.Create(self);
      dlgDialogoSalvar.DefaultExt := '.txt';
      dlgDialogoSalvar.Filter := 'Arquivos texto|*.txt';

      if dlgDialogoSalvar.Execute then
      begin
        PathArquivo := dlgDialogoSalvar.FileName;

        if pgcMenuFiscalTipo.ActivePageIndex = 0 then
          ACBrECF1.PafMF_MFD_Espelho(edtDtInicial.Date, edtDtFinal.Date, PathArquivo)
        else
          ACBrECF1.PafMF_MFD_Espelho(edtCOOInicial.Value, edtCOOFinal.Value, PathArquivo);

        ShowMessage(Format('Arquivo gerado com sucesso em:'#13#10' "%s"', [PathArquivo]));
      end;
    except
      on E : Exception do
      begin
        Application.MessageBox('Erro ao completar o procedimento!', 'Atenção', MB_ICONINFORMATION);
        mResp.Lines.Add( 'Erro: '+ E.Message) ;
        AtualizaStatusECF ;
      end;
    end;
  end
  else
    application.MessageBox('ECF não está ativo!', 'Atenção', MB_ICONINFORMATION);

end;

procedure TfrmConfiguracao.btnMenuFiscalNotaPaulistaClick(Sender: TObject);
var
  DirArquivos: string;
begin
  if ACBrECF1.Ativo then
  begin
    try
      DirArquivos := ExtractFilePath(ParamStr(0)) + 'ECF\CAT52';
      if not DirectoryExists(DirArquivos) then
        ForceDirectories(DirArquivos);

      ACBrECF1.PafMF_GerarCAT52(edtDtInicial.Date, edtDtFinal.Date, DirArquivos);

      ShowMessage(Format('Arquivos gerados com sucesso em:'#13#10' "%s"', [DirArquivos]));
    except
      on E : Exception do
      begin
        Application.MessageBox('Erro ao completar o procedimento!', 'Atenção', MB_ICONINFORMATION);
        mResp.Lines.Add( 'Erro: '+ E.Message) ;
        AtualizaStatusECF ;
      end;
    end;
  end
  else
    application.MessageBox('ECF não está ativo!', 'Atenção', MB_ICONINFORMATION);

end;

procedure TfrmConfiguracao.btnMenuFiscalRelDAVEmitidosClick(Sender: TObject);
var
  DAVs: TACBrECFDAVs;
  I: Integer;
const
  TipoDAV: array[0..1] of string = ('PEDIDO', 'ORCAMENTO');
  Valores: array[0..3] of Double = (1.00, 2.00, 3.50, 10.45);
  Datas:   array[0..4] of string = ('30/12/2000', '01/01/2011', '25/02/2010', '04/02/2011', '13/04/2011');
begin
  inherited;
  if ACBrECF1.Ativo then
  begin
    DAVs := TACBrECFDAVs.Create;
    try
      //veriricar quais os requisitos desse item
      {for I := 1 to 25 do
      begin
        with DAVs.New do
        begin
          Numero    := Format('%10.10d', [I]);
          COO_Dav   := RandomRange(0, 999999);
          COO_Cupom := RandomRange(0, 999999);
          Titulo    := RandomFrom(TipoDAV);
          DtEmissao := StrToDate(RandomFrom(Datas));
          Valor     := RandomFrom(Valores)
        end;
      end;}

      ACBrECF1.PafMF_RelDAVEmitidos(DAVs, 'REFERENCIA: 00/00/0000 A 00/00/0000', 0);
    finally
      DAVs.Free;
    end;
  end
  else
    application.MessageBox('ECF não está ativo!', 'Atenção', MB_ICONINFORMATION);

end;

procedure TfrmConfiguracao.btnMenuFiscalRelIdentPAFECFClick(Sender: TObject);
  var
  IdentPaf: TACBrECFIdentificacaoPAF;
  I: Integer;
begin
  inherited;
  if ACBrECF1.Ativo then
  begin
    // Se está usando o AAC, basta informar o Objeto IdentPAF //
    // Se NAO está usando o AAC, o Objeto IdentPAF deve ser instânciado e populado //
    if Assigned( ACBrECF1.AAC ) then
      ACBrECF1.PafMF_RelIdentificacaoPafECF( ACBrECF1.AAC.IdentPAF, 0)
    else
    begin
      IdentPaf := TACBrECFIdentificacaoPAF.Create;
      try
        IdentPaf.NumeroLaudo := 'ABC1234567890'; // retirar do laudo
        IdentPaf.VersaoER    := '01.06'; // retirar do laudo

        // preencher dados da empresa conforme o que foi informado no laudo de análise
        IdentPaf.Empresa.RazaoSocial := 'Razao social Empresa';
        IdentPaf.Empresa.CNPJ        := '01.222.333/00001-99';
        IdentPaf.Empresa.Endereco    := 'Rua da Felicidade, 1';
        IdentPaf.Empresa.Cidade      := 'SAO PAULO';
        IdentPaf.Empresa.Uf          := 'SP';
        IdentPaf.Empresa.Cep         := '99.999-999';
        IdentPaf.Empresa.Telefone    := '(99)1111.2222';
        IdentPaf.Empresa.Contato     := 'Nome do Contato';

        IdentPaf.Paf.Nome              := 'DemoECF';// preencher conforme o laudo
        IdentPaf.Paf.Versao            := 'v01.01.01'; // versão atual do aplicativo
        IdentPaf.Paf.PrincipalExe.Nome := UpperCase(ExtractFileName(ParamStr(0)));
        IdentPaf.Paf.PrincipalExe.MD5  := StringOfChar('X', 32); // md5 atual do aplicativo

        IdentPaf.ArquivoListaAutenticados.Nome := 'lista_arquivos.txt'; // nome do arquivo contendo a lista de autenticados
        IdentPaf.ArquivoListaAutenticados.MD5  := 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'; // md5 do arquivo, mesmo que vai impresso nos cupons

        // adicionar os arquivos adicionados ao arquivo da lista de autenticados
        for I := 1 to 5 do
        begin
          with IdentPaf.OutrosArquivos.New do
          begin
            Nome := Format('Arquivo %3.3d', [I]);
            MD5  := StringOfChar('X', 32);
          end;
        end;

        // ecfs autorizados para funcionamento na máquina
        IdentPaf.ECFsAutorizados.clear;
        for I := 1 to 3 do
        begin
          with IdentPaf.ECFsAutorizados.New do
            NumeroSerie := StringOfChar('A', 15) ;
        end;

        ACBrECF1.PafMF_RelIdentificacaoPafECF(IdentPaf, 0);
      finally
        IdentPaf.Free;
      end;
    end;
  end
  else
    application.MessageBox('ECF não está ativo!', 'Atenção', MB_ICONINFORMATION);


end;

procedure TfrmConfiguracao.btnMenuFiscalRelMeiosPagtoClick(Sender: TObject);
var
  FormasPagamento: TACBrECFFormasPagamento;
  I: Integer;
const
  arrayTipoDoc: array[0..2] of String = ('Cupom Fiscal', 'Compr. Não Fiscal', 'Nota Fiscal');
  arrayDescrFormaPagto: array[0..3] of string = ('Dinheiro', 'Cheque', 'Cartão Crédito', 'Cartão Débito');
  arrayDataLancamento: array[0..4] of String = ('01/01/2010', '31/12/2010', '04/05/2011', '02/01/2010', '03/05/2011');
  arrayValores: array[0..4] of Double = (10.56, 14.23, 0.00, 12.00, 1.20);

begin
  inherited;
  if ACBrECF1.Ativo then
  begin
    FormasPagamento := TACBrECFFormasPagamento.Create;
    //verificar o que deve ser enviado ao ECF neste caso
    try
      {for I := 1 to 25 do
      begin
        with FormasPagamento.New do
        begin
          Descricao := RandomFrom(arrayDescrFormaPagto);
          Data      := StringToDateTime(RandomFrom(arrayDataLancamento), 'dd/mm/yyyy');
          Total     := RandomFrom(arrayValores);
          TipoDoc   := RandomFrom(arrayTipoDoc);
        end;
      end; }

      ACBrECF1.PafMF_RelMeiosPagamento(
        FormasPagamento,
        'PERIODO DE 01/01/2000 A 31/12/2000',
        0
      );
    finally
      FormasPagamento.Free;
    end;
  end
  else
    application.MessageBox('ECF não está ativo!', 'Atenção', MB_ICONINFORMATION);

end;

procedure TfrmConfiguracao.btStatusOperacionalClick(Sender: TObject);
var
  retorno : string;
begin
    Self.AjustaSAT();
    ACBrSAT.ConsultarStatusOperacional;

    with ACBrSAT.Status do
    begin
      retorno :=           'NSERIE.........: '+NSERIE+#13#10;
      retorno := retorno + 'LAN_MAC........: '+LAN_MAC+#13#10;
      retorno := retorno + 'STATUS_LAN.....: '+StatusLanToStr(STATUS_LAN)+#13#10;
      retorno := retorno + 'NIVEL_BATERIA..: '+NivelBateriaToStr(NIVEL_BATERIA)+#13#10;
      retorno := retorno + 'MT_TOTAL.......: '+MT_TOTAL+#13#10;
      retorno := retorno + 'MT_USADA.......: '+MT_USADA+#13#10;
      retorno := retorno + 'DH_ATUAL.......: '+DateTimeToStr(DH_ATUAL)+#13#10;
      retorno := retorno + 'VER_SB.........: '+VER_SB+#13#10;
      retorno := retorno + 'VER_LAYOUT.....: '+VER_LAYOUT+#13#10;
      retorno := retorno + 'ULTIMO_CFe.....: '+ULTIMO_CFe+#13#10;
      retorno := retorno + 'LISTA_INICIAL..: '+LISTA_INICIAL+#13#10;
      retorno := retorno + 'LISTA_FINAL....: '+LISTA_FINAL+#13#10;
      retorno := retorno + 'DH_CFe.........: '+DateTimeToStr(DH_CFe)+#13#10;
      retorno := retorno + 'DH_ULTIMA......: '+DateTimeToStr(DH_CFe)+#13#10;
      retorno := retorno + 'CERT_EMISSAO...: '+DateToStr(CERT_EMISSAO)+#13#10;;
      retorno := retorno + 'CERT_VENCIMENTO: '+DateToStr(CERT_VENCIMENTO)+#13#10;
      retorno := retorno + 'ESTADO_OPERACAO: '+EstadoOperacaoToStr(ESTADO_OPERACAO);
    end;

    ShowMessage(retorno);
end;

procedure TfrmConfiguracao.btnTestaImpressaoExtratoClick(Sender: TObject);
begin
  inherited;
  TesteFimAFimExtrato(true);
end;

procedure TfrmConfiguracao.btTesteFimAFimClick(Sender: TObject);
begin
  inherited;
  Self.AjustaSAT();
  Self.TesteFimAFimExtrato(False);
end;

procedure TfrmConfiguracao.btTestarGavetaClick(Sender: TObject);
begin
  inherited;
  if frmmenu.ACBrPosPrinter1.Ativo  then frmmenu.ACBrPosPrinter1.Desativar;

  frmmenu.ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo( cbModeloImpGaveta.ItemIndex );
  frmmenu.ACBrPosPrinter1.Porta  := cbPortaImpGaveta.Text;
  frmmenu.ACBrPosPrinter1.Ativar;
  frmmenu.ACBrPosPrinter1.AbrirGaveta;
  frmmenu.ACBrPosPrinter1.Desativar;
end;

procedure TfrmConfiguracao.btTestarImpressoraBalcaoClick(Sender: TObject);
begin
  inherited;
  testaImpressora(edImpBalcao.Text, 'BALCAO');
end;

procedure TfrmConfiguracao.btTestarImpressoraBar2Click(Sender: TObject);
begin
  inherited;
  testaImpressora(edImpCozinha2.Text, 'AMBIENTE');
end;

procedure TfrmConfiguracao.btTestarImpressoraBarClick(Sender: TObject);
begin
  inherited;
  testaImpressora(edImpCozinha2.Text, 'BAR');
end;

procedure TfrmConfiguracao.btTestarImpressoraCaixaClick(Sender: TObject);
begin
  inherited;
  testaImpressora(edImpCaixa.Text, 'CAIXA');
end;



procedure TfrmConfiguracao.btTestarImpressoraCozinha2Click(Sender: TObject);
begin
  inherited;
  testaImpressora(edImpCozinha2.Text, 'SALAO');
end;

procedure TfrmConfiguracao.btTestarImpressoraCozinhaClick(Sender: TObject);
begin
  inherited;
  testaImpressora(edImpCozinha1.Text, 'COZINHA');
end;

procedure TfrmConfiguracao.btTestarImpressoraDeliveryClick(Sender: TObject);
begin
  inherited;
  testaImpressora(edImpDelivery.Text, 'DELIVERY');
end;

procedure TfrmConfiguracao.btTestarImpressoraTermicaClick(Sender: TObject);
begin
  inherited;
  testaImpressora(edCaminhoImp.Text,'TERMICA');
end;

procedure TfrmConfiguracao.btTesteIdChamadaClick(Sender: TObject);
var baud, sDataBits, sStopBits, parity, flowControl, porta: string;
    bIgnoraDDDIDchamada : boolean;
    databits : TdataBits;
    stopbits : TStopBits;
begin
  inherited;
  try
    //Identificador de chamado testado da fabricante IC Box
    if  ComPort1.Connected then ComPort1.Close;

    baud :=  'br' + cbBaudIDChamada.Text;
    sDataBits := cbDatabIDChamada.Text;
    sStopBits := cbStopIDChamada.Text;
    parity := 'pr' + cbParidadeIDChamada.Text;
    flowControl := 'fc' +  cbFlowcontrolIDChamada.Text;
    porta :=edPortaIDChamada.Text;
    bIgnoraDDDIDchamada := CKIGNORADDDIDCHAMADA.Checked;

    if sDataBits='5' then
      databits := dbFive
    else if sDataBits='6' then
      databits := dbSix
    else if sDataBits='7' then
      databits := dbSeven
    else
      databits := dbEight;

    if sStopBits='2' then
      stopbits := sbTwoStopBits
    else if sStopBits='1.5' then
      stopbits := sbOne5StopBits
    else
      stopbits := sbOneStopBit;

    ComPort1.BaudRate := TBaudRate(GetEnumValue(TypeInfo(TBaudRate),baud ) );
    ComPort1.DataBits := databits ;
    ComPort1.StopBits := stopbits;
    ComPort1.Parity.Bits := TParityBits(GetEnumValue(TypeInfo(TParityBits), parity )) ;
    ComPort1.FlowControl.FlowControl := TFlowControl(GetEnumValue(TypeInfo(TFlowControl), flowControl )) ;
    ComPort1.Port := porta;
    ComPort1.Open;

    meIdchamda.Text := 'Configuração OK!' + sLineBreak + 'Aguardando chamada'
  except
    on E: Exception do
    begin                           ;
      Application.MessageBox(PWideChar(format(
           'Erro ao iniciar o identificador de chamada! Detalhes:%s%s',
           [slineBreak,E.Message ])),'Atenção', MB_ICONWarning);
      meIdchamda.Text := 'Erro de configuração';
    end;
  end;
end;

procedure TfrmConfiguracao.btVinculacaoMesaAmbienteClick(Sender: TObject);
begin
  inherited;
  frmVinculacaomesaeambiente := TfrmVinculacaomesaeambiente.Create(self);
  frmVinculacaomesaeambiente.ShowModal;
  frmVinculacaomesaeambiente.Free;
end;

procedure TfrmConfiguracao.Button1Click(Sender: TObject);
begin
  inherited;
  cbBalancaModelo.Text:='balToledo';
end;



procedure TfrmConfiguracao.CarregaModelosImpressora;
var
   I: TACBrPosPrinterModelo;
begin
     cmbImpressoraNaoFiscal.Items.Clear ;
     For I := Low(TACBrPosPrinterModelo) to High(TACBrPosPrinterModelo) do
         cmbImpressoraNaoFiscal.Items.Add( GetEnumName(TypeInfo(TACBrPosPrinterModelo), integer(I) ) ) ;
end;

procedure TfrmConfiguracao.cbECFBaudChange(Sender: TObject);
begin
  inherited;
  try
    strtoint(cbECFBaud.Text);
  except
    cbECFBaud.Text := '9600';
  end;
end;

procedure TfrmConfiguracao.cbECFDataBitsChange(Sender: TObject);
begin
  inherited;
  try
    strtoint(cbECFDataBits.Text);
  except
    cbECFDataBits.Text := '8';
  end;
end;

procedure TfrmConfiguracao.cbNFCeTipoEmissaoSSLLibChange(Sender: TObject);
begin
  inherited;
  try
    if cbNFCeTipoEmissaoSSLLib.ItemIndex <> -1 then
      ACBrNFe1.Configuracoes.Geral.SSLLib := TSSLLib(cbNFCeTipoEmissaoSSLLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure TfrmConfiguracao.cbbSATRedeProxyChange(Sender: TObject);
begin
  inherited;
  {edSATRedeProxyIP.Enabled    := (cbSATRedeProxy.ItemIndex > 0);
  edSATRedeProxyPorta.Enabled := edSATRedeProxyIP.Enabled;
  edSATRedeProxyUser.Enabled  := edSATRedeProxyIP.Enabled;
  edSATRedeProxySenha.Enabled := edSATRedeProxyIP.Enabled;  }
end;

procedure TfrmConfiguracao.cbTEFGPChange(Sender: TObject);
begin
  inherited;

  if not (Sender is TComboBox) then exit ;

  try
    ACBrTEFD1.GPAtual := TACBrTEFDTipo(  TComboBox(Sender).ItemIndex ) ;
  finally
    AvaliaTEFs;
  end;
end;

procedure TfrmConfiguracao.cbxGPChange(Sender: TObject);
begin
  inherited;
if not (Sender is TComboBox) then exit ;

  try
    ACBrTEFD1.GPAtual := TACBrTEFDTipo(  TComboBox(Sender).ItemIndex ) ;
  finally
    AvaliaTEFs;
  end;
end;

procedure TfrmConfiguracao.ckAtivarNFCEClick(Sender: TObject);
begin
  inherited;
  if ckAtivarNFCE.Checked then
  begin
    cxUltimaNFCE.Enabled                    := True;
    cxSerieNFCE.Enabled                     := True;
    ckNFCeEmitirEmContingencia.Enabled      := True;
    ckNFCeSugerirContingencia.Enabled       := True;
    edNFCeJustificativaContingencia.Enabled := True;
    edNFCeNumeroVias.Enabled                := True;
  end
  else
  begin
    cxUltimaNFCE.Enabled                    := False;
    cxSerieNFCE.Enabled                     := False;
    ckNFCeEmitirEmContingencia.Enabled      := False;
    ckNFCeSugerirContingencia.Enabled       := False;
    edNFCeJustificativaContingencia.Enabled := False;
    edNFCeNumeroVias.Enabled                := False;
  end;
end;

procedure TfrmConfiguracao.ckBackupAutomaticoClick(Sender: TObject);
var caminho_pg_dump : string;
begin
  inherited;
  if ckBackupAutomatico.Checked then
  begin
    caminho_pg_dump:= edCaminhoPgDump.FileName;
    if not FileExists(caminho_pg_dump) then
    begin
      Application.MessageBox(pchar(format('Não foi possível acessar o aplicativo pg_dump no caminho:'+#13#10+'%s!', [caminho_pg_dump])), 'Atenção', MB_ICONWARNING );
      ckBackupAutomatico.Checked := false;
    end;

  end;
end;

procedure TfrmConfiguracao.ckImprimirDuasViasCupomBalcaoClick(Sender: TObject);
begin
  inherited;
  if ckImprimirDuasViasCupomBalcao.Checked then
    ckImprimirVariasViasCupomBalcao.Checked := false;
end;

procedure TfrmConfiguracao.ckImprimirVariasViasCupomBalcaoClick(
  Sender: TObject);
begin
  inherited;
  if ckImprimirVariasViasCupomBalcao.Checked then
    ckImprimirDuasViasCupomBalcao.Checked := false;
end;

procedure TfrmConfiguracao.ckTaxadeliverypadraoClick(Sender: TObject);
begin
  inherited;
    if ckTaxadeliverypadrao.Checked then
     dbValordelivery.Enabled:=true
     else
     begin
       dbValordelivery.Enabled:=false;
       qrempresa.FieldByName('taxadeliverypadrao').asfloat:=0;
     end;
end;

procedure TfrmConfiguracao.ckUtilizaBalancaClick(Sender: TObject);
begin
  inherited;
  grBalancaConfig.Enabled := ckUtilizaBalanca.Checked;
end;

procedure TfrmConfiguracao.ckUtilizacontroleambienteClick(Sender: TObject);
begin
  inherited;
  btVinculacaoMesaAmbiente.Enabled := ckUtilizacontroleambiente.Checked;
end;

procedure TfrmConfiguracao.ckUtilizaECFClick(Sender: TObject);
begin
  inherited;
  pcConfigECF.Visible := ckUtilizaECF.Checked;
end;

procedure TfrmConfiguracao.ckUtilizaGavetaClick(Sender: TObject);
begin
  inherited;
  grGavetaConfig.Enabled := ckUtilizaGaveta.Checked;
end;

procedure TfrmConfiguracao.ckUtilizaIFoodClick(Sender: TObject);
begin
  inherited;
  if ckUtilizaIFood.Checked then
  begin
    edClient_id.Enabled     := True;
    edClient_secret.Enabled := True;
    edUsername.Enabled      := True;
    edPassword.Enabled      := True;
  end
  else
  begin
    edClient_id.Enabled     := False;
    edClient_secret.Enabled := False;
    edUsername.Enabled      := False;
    edPassword.Enabled      := False;
  end;
end;

procedure TfrmConfiguracao.ckUtilizaNFEClick(Sender: TObject);
begin
  inherited;
  pcConfigNFCEACBR.Visible := ckUtilizaNFE.Checked;
end;

procedure TfrmConfiguracao.ckUtilizaSATClick(Sender: TObject);
begin
  inherited;
  grsat.Visible := ckUtilizaSAT.Checked;
end;

procedure TfrmConfiguracao.ACBrBAL1LePeso(Peso: Double; Resposta: AnsiString);
var valid : integer;
begin
  inherited;
   sttPeso.Caption     := formatFloat('##0.000', Peso );
   sttResposta.Caption := ConverteRespostaBalanca(Resposta) ;

   if Peso > 0 then
      Memo1.Lines.Text := 'Leitura OK !'
   else
    begin
      valid := Trunc(ACBrBAL1.UltimoPesoLido);
      case valid of
         0 : Memo1.Lines.Text := 'TimeOut !'+sLineBreak+
                                 'Coloque o produto sobre a Balança!' ;
        -1 : Memo1.Lines.Text := 'Peso Instavel ! ' +sLineBreak+
                                 'Tente Nova Leitura' ;
        -2 : Memo1.Lines.Text := 'Peso Negativo !' ;
       -10 : Memo1.Lines.Text := 'Sobrepeso !' ;
      end;
    end ;
end;

procedure TfrmConfiguracao.ACBrSATGetcodigoDeAtivacao(var Chave: AnsiString);
begin
  inherited;
  Chave := CODIGO_ATIVACAO_SAT;
end;

procedure TfrmConfiguracao.ACBrSATGetsignAC(var Chave: AnsiString);
begin
  inherited;
  Chave := ASSINATURA_AC_SAT;
end;

procedure TfrmConfiguracao.acBuscaCEPExecute(Sender: TObject);
begin
  inherited;
  if qrEmpresa.Active then
  begin
    if qrEmpresa.State in [dsEdit] then
    begin
      edIdCep.SetFocus;
      frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
           ' SELECT CEP.CEP_001, CEP.CEP_002, CEP.CEP_004, CEP.CEP_003,   CID.CID_002, EST.EST_003, PAI.PAI_002 ' +
           ' FROM CEPS CEP '+
           ' LEFT OUTER JOIN CIDADES CID ON (CID.CID_001 = CEP.CID_001) '+
           ' LEFT OUTER JOIN ESTADOS EST ON (EST.EST_001 = CID.EST_001) '+
           ' LEFT OUTER JOIN PAISES PAI ON (PAI.PAI_001 = EST.PAI_001)',
          CriaIntegerArray([1,2,3,4,5,6]) ,
          CriaStringArray(['CEP', 'Endereço', 'Bairro', 'Cidade', 'Estado', 'Pais']),
          1, 0);
      frmBuscaRegistro.ShowModal;
      if frmBuscaRegistro.Tag=1 then
        qrEmpresa.FieldByName('cep_002').Value:=frmBuscaRegistro.valor_retorno;
      frmBuscaRegistro.Free;
    end;
  end;
end;

procedure TfrmConfiguracao.acBuscaCidadeExecute(Sender: TObject);
begin
  inherited;
  if qrEmpresa.Active then
  begin
    if qrEmpresa.State in [dsEdit] then
    begin
      edIdCep.SetFocus;
      frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
            ' SELECT CID.CID_001, CID.CID_002, EST.EST_003, PAI.PAI_002 '+
            ' FROM CIDADES CID '+
            ' LEFT OUTER JOIN ESTADOS EST ON (EST.EST_001 = CID.EST_001) '+
            ' LEFT OUTER JOIN PAISES PAI ON (PAI.PAI_001 = EST.PAI_001)',
          CriaIntegerArray([1,2,3]) ,
          CriaStringArray(['Cidade', 'Estado', 'Pais']),
          0, 0);
      frmBuscaRegistro.ShowModal;
      if frmBuscaRegistro.Tag=1 then
        qrEmpresa.FieldByName('cid_001').Value:=frmBuscaRegistro.valor_retorno;
      frmBuscaRegistro.Free;
    end;
  end;
end;

procedure TfrmConfiguracao.acBuscaNFeCFOPExecute(Sender: TObject);
var str_sql : string;
begin
  edNFeCFOPSaidaPadrao.SetFocus;

  str_sql:= 'select cfop_codigo, cfop_descricao from cfop';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
    CriaIntegerArray([0,1]) ,
    CriaStringArray(['CFOP', 'Descrição']),0, 0);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
    edNFeCFOPSaidaPadrao.Text:= frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.Free;

end;

procedure TfrmConfiguracao.btConfigTermicaClick(Sender: TObject);
begin
  inherited;
  AbreConfigImpressora('TERMICA');
end;

procedure TfrmConfiguracao.AbreConfigImpressora(impressora : string);
var avisa : boolean;
begin
  inherited;    // Configuração das impressoras
  impressora := uppercase(impressora);
  if impressora = 'TERMICA' then
    avisa :=  cxModoImpTermica.ItemIndex<> 1
  else if impressora = 'BALCAO' then
    avisa :=  cxModoImpBalcao.ItemIndex<> 1
  else if impressora = 'COZINHA' then
    avisa :=  cxModoImpCozinha.ItemIndex<> 1
  else if impressora = 'BAR' then
    avisa :=  cxModoImpBar.ItemIndex<> 1
  else if impressora = 'SALAO' then  //  COZINHA2
    avisa :=  cxModoImpCozinha2.ItemIndex<> 1
  else if impressora = 'AMBIENTE' then    //  BAR2
    avisa :=  cxModoImpBar2.ItemIndex<> 1
  else if impressora = 'CAIXA' then
    avisa :=  cxModoImpCaixa.ItemIndex<> 1
  else // impressora = 'DELIVERY'
    avisa :=  cxModoImpDelivery.ItemIndex<> 1;

  if avisa then
    application.MessageBox('As configurações a seguir somente tem efeito para a impressora no modo ESC/POS!',
                           'Atenção', MB_ICONINFORMATION);

  FrmPosPrinterConfig := TFrmPosPrinterConfig.Create(self, impressora);
  FrmPosPrinterConfig.Showmodal;
  FrmPosPrinterConfig.Free;
end;

procedure TfrmConfiguracao.btConfigBalcaoClick(Sender: TObject);
begin
  inherited;
  AbreConfigImpressora('BALCAO');
end;

procedure TfrmConfiguracao.btConfigBar2Click(Sender: TObject);
begin
  inherited;
  AbreConfigImpressora('AMBIENTE');
end;

procedure TfrmConfiguracao.btConfigBARClick(Sender: TObject);
begin
  inherited;
  AbreConfigImpressora('BAR');
end;

procedure TfrmConfiguracao.btConfigCaixaClick(Sender: TObject);
begin
  inherited;
  AbreConfigImpressora('CAIXA');
end;

procedure TfrmConfiguracao.btConfigCozinha2Click(Sender: TObject);
begin
  inherited;
  AbreConfigImpressora('SALAO');
end;

procedure TfrmConfiguracao.btConfigCozinhaClick(Sender: TObject);
begin
  inherited;
  AbreConfigImpressora('COZINHA');
end;

procedure TfrmConfiguracao.btConfigDeliveryClick(Sender: TObject);
begin
  inherited;
  AbreConfigImpressora('DELIVERY');
end;



procedure TfrmConfiguracao.AjustaImpressoraExtrato(Escpos: Boolean);
begin
    if Escpos then
    begin
         ACBrPosPrinter.Porta              := LerString('CAMIMPCAIXA');
         ACBrPosPrinter.ConfigBarras.LarguraLinha := LerInteger('LARGURACODIGOBARRA', 0);
         ACBrPosPrinter.ColunasFonteNormal := LerInteger('COLUNAS', 0);
         ACBrPosPrinter.Modelo             := TACBrPosPrinterModelo(LerInteger('MODELONAOFISCAL', 0));
         ACBrPosPrinter.LinhasEntreCupons  := LerInteger('LINHASENTREEXTRATOS', 0);
         ACBrPosPrinter.EspacoEntreLinhas  := LerInteger('ESPACOENTRELINHAS', 0);
         ACBrPosPrinter.Ativar;
    end
    else
    begin
        ACBrSATExtratoFortes.MostraPreview   := LerBoolean('EXIBIRPREVIEWEXTRATO', false);
        ACBrSATExtratoFortes.LarguraBobina    := LerInteger('LARGURA', 0);
        ACBrSATExtratoFortes.MargemSuperior     := LerInteger('MARGEMTOPO', 0);
//        ACBrSATExtratoFortes.Margens.Fundo    := LerInteger('MARGEMRODAPE', 0);
        ACBrSATExtratoFortes.MargemEsquerda := LerInteger('MARGEMESQUERDA', 0);
        ACBrSATExtratoFortes.MargemDireita  := LerInteger('MARGEMDIREITA', 0);
    end;
end;

procedure TfrmConfiguracao.AjustaSAT;
var
  OK: Boolean;
  ambiente: Integer;
begin

    lerDadosConfig();

    ACBrSAT.DesInicializar;
    ACBrSAT.NomeDLL := '';
    ACBrSAT.Config.Clear;
    ACBrSAT.ConfigArquivos.Clear;
    ACBrSAT.CFe.Clear;

    with ACBrSAT do
    begin
      if rgTipoSisSAT.ItemIndex=0 then
        Modelo := satDinamico_stdcall
      else
        Modelo := mfe_Integrador_XML;

        NomeDLL                      := NOME_DLL;
        Config.ide_CNPJ              := CNPJ_SOFTHOUSE;
        Config.ide_numeroCaixa       := 1;
        Config.emit_CNPJ             := qrEmpresaemp_004.Text;
        Config.emit_IE               := qrEmpresaemp_005.Text;
        Config.emit_IM               := qrEmpresaemp_006.Text;
        Config.emit_cRegTrib         := StrToRegTrib(OK, qrEmpresacrt_codigo.AsString) ;
        Config.PaginaDeCodigo        := 0;
        Config.EhUTF8                := true;
        Config.infCFe_versaoDadosEnt := VERSAO_LAYOUT;

        ConfigArquivos.SalvarCFe      := true;
        ConfigArquivos.SalvarCFeCanc  := true;
        //ConfigArquivos.SalvarEnvio    := true;
        ConfigArquivos.SepararPorCNPJ := false;
        ConfigArquivos.SepararPorMes  := false;

        ConfigArquivos.PastaCFeCancelamento := PATH_CFE_CANC;
        //ConfigArquivos.PastaEnvio           := PATH_CFE_VENDA ;
        ConfigArquivos.PastaCFeVenda        := PATH_CFE_VENDA;
        ConfigArquivos.SepararPorMes        := True;
    end;

    ACBrSAT.Inicializar;
    ACBrSAT.InicializaCFe;
    ACBrSAT.CFe.IdentarXML := true;
    ACBrSAT.CFe.TamanhoIdentacao := 3;
end;

procedure TfrmConfiguracao.bADMClick(Sender: TObject);
begin
  inherited;
  if estadoSimuladoEcf <> tpsLivre then
    raise Exception.Create('Estado do Simulador ECF deve ser Livre');

  ACBrTEFD1.ADM(TACBrTEFDTipo(cbxGP.ItemIndex ));
  //MemoCupomTEF.Lines.Add('Administrativo TEF');
end;

procedure TfrmConfiguracao.bAtivarClick(Sender: TObject);
begin
  inherited;
  if bAtivar.Caption = 'Ativar (teste)' then
    AtivarECF
  else
    DesativarECF;
end;

procedure TfrmConfiguracao.bAtivarGPClick(Sender: TObject);
begin
  inherited;
  ACBrTEFD1.AtivarGP( TACBrTEFDTipo( cbxGP.ItemIndex ) );
  AvaliaTEFs;
  MemoCupomTEF.Lines.Add('AtivarGP');

end;

procedure TfrmConfiguracao.bInicializarClick(Sender: TObject);
begin
  inherited;
if bInicializar.Caption = 'Inicializar' then
  begin

    estadoSimuladoEcf := tpsLivre;
    ACBrTEFD1.Inicializar( TACBrTEFDTipo( cbxGP.ItemIndex ) );
    //pgRespostas.ActivePage := TabSheetCupomTef;
    MemoCupomTEF.Lines.Add('Inicializar');
     bInicializar.Caption := 'DesInicializar' ;
  end
  else
  begin
    ACBrTEFD1.DesInicializar( TACBrTEFDTipo( cbxGP.ItemIndex ) );
    MemoCupomTEF.Lines.Add('ACBrTEFD.DesInicializar Executado' );
    bInicializar.Caption := 'Inicializar' ;
  end;

  AvaliaTEFs;
end;

procedure TfrmConfiguracao.AtivarECF;
begin
  try
    Self.Enabled := False ;
    ACBrECF1.Porta := cbECFPorta.Text ;
    ACBrECF1.Device.Baud := strtoint(cbECFBaud.Text);
    ACBrECF1.Device.Data := strtoint(cbECFDataBits.Text);
    ACBrECF1.Device.Parity := TACBrSerialParity( cbECFParity.ItemIndex );
    ACBrECF1.Device.Stop := TACBrSerialStop( cbECFStopBits.ItemIndex );
    ACBrECF1.Device.HandShake := TACBrHandShake( cbECFHandShaking.ItemIndex ) ;

    if cbECFModelo.ItemIndex = 0 then
    begin
      if not ACBrECF1.AcharECF(true,False) then
      begin
        MessageDlg('Nenhum ECF encontrado.',mtInformation,[mbOk],0) ;
        exit ;
      end;
    end
    else
      ACBrECF1.Modelo := TACBrECFModelo(cbECFModelo.ItemIndex ) ;

    ACBrECF1.ReTentar := ckECFTentarNovamente.Checked ;
    ACBrECF1.BloqueiaMouseTeclado := ckECFBloqueiaMouseTeclado.Checked ;
    ACBrECF1.ExibeMensagem := ckECFExibeMsg.Checked ;
    ACBrECF1.ArredondaPorQtd := ckECFArredondaPorQtd.Checked ;
    ACBrECF1.ArredondaItemMFD := ckECFArredondamentoItemMFD.Checked ;

    ACBrECF1.TimeOut := edECFTimeOut.Value ;
    ACBrECF1.IntervaloAposComando := edECFIntervaloAposComando.Value ;
    ACBrECF1.MaxLinhasBuffer := edECFLinBuf.Value ;
    ACBrECF1.PaginaDeCodigo := edECFPaginaCodigo.Value;

    ACBrECF1.MsgTrabalhando := edECFMsgTrabalhando.Text ;
    ACBrECF1.MsgAguarde := edECFMsgAguarde.Text ;

    ACBrECF1.Ativar ;

    bAtivar.Caption := 'Desativar (teste)' ;
    mResp.Lines.Add( 'Ativar' );
    AtualizaStatusECF;

  finally
     Self.Enabled := True ;
     cbECFModelo.ItemIndex   := Integer(ACBrECF1.Modelo) ;
     cbECFPorta.Text         := ACBrECF1.Porta ;
     edECFPaginaCodigo.Value  := ACBrECF1.PaginaDeCodigo;
  end ;
end;


procedure TfrmConfiguracao.AtualizaStatusECF;
begin
  lbECFUltimoComando.Caption := ConverteCmdECF( ACBrECF1.ComandoEnviado );
  mResp.Lines.Add( ConverteCmdECF( ACBrECF1.RespostaComando) );
  mResp.Lines.Add('- - - - - - - - - - - - - - - - - - - - - - -') ;
  lbECFStatus.Caption:= EstadoECF ;
end;

procedure TfrmConfiguracao.AvaliaTEFs;
begin
 if ACBrTEFD1.TEFDial.Inicializado then
     sTEFDial.Brush.Color := clLime
  else
     sTEFDial.Brush.Color := clRed ;
  ckTEFDIAL.Checked := ACBrTEFD1.TEFDial.Habilitado;

  if ACBrTEFD1.TEFDisc.Inicializado then
     sTEFDisc.Brush.Color := clLime
  else
     sTEFDisc.Brush.Color := clRed ;
  ckTEFDISC.Checked := ACBrTEFD1.TEFDisc.Habilitado;

  if ACBrTEFD1.TEFHiper.Inicializado then
     sHiperTEF.Brush.Color := clLime
  else
     sHiperTEF.Brush.Color := clRed ;
  ckHIPERTEF.Checked := ACBrTEFD1.TEFHiper.Habilitado;

  if ACBrTEFD1.TEFCliSiTef.Inicializado then
     sCliSiTef.Brush.Color := clLime
  else
     sCliSiTef.Brush.Color := clRed ;
  ckCliSiTef.Checked := ACBrTEFD1.TEFCliSiTef.Habilitado;

  if ACBrTEFD1.TEFVeSPague.Inicializado then
     sVSPague.Brush.Color := clLime
  else
     sVSPague.Brush.Color := clRed ;
  ckVSPague.Checked := ACBrTEFD1.TEFVeSPague.Habilitado;


  if ACBrTEFD1.TEFAuttar.Inicializado then
     sAuttar.Brush.Color := clLime
  else
     sAuttar.Brush.Color := clRed ;
  ckAuttar.Checked := ACBrTEFD1.TEFAuttar.Habilitado;

  cbxGP.ItemIndex  := Integer( ACBrTEFD1.GPAtual ) ;

end;


Function TfrmConfiguracao.EstadoECF : String ;
begin
  try
     Result :=  EstadosECF[ ACBrECF1.Estado ] ;
     { GetEnumName(TypeInfo(TACBrECFEstado), integer( ACBrECF1.Estado ) ) ;}
  except
     Result := 'Falha ao ler' ;
     mResp.Lines.Add( '**** Falha ao ler ESTADO do ECF ****' );
  end ;
end ;


procedure TfrmConfiguracao.DesativarECF;
begin
  ACBrECF1.Desativar ;
  bAtivar.Caption := 'Ativar (teste)' ;
  mResp.Lines.Add( 'Desativar' );
  AtualizaStatusECF ;

end;


function TfrmConfiguracao.ConverteCmdECF(cmd: String): String;
var A : Integer ;
begin
  Result := '' ;
  For A := 1 to length( cmd ) do
  begin
     if (Ord(cmd[A]) < 32) or (Ord(cmd[A]) > 127) then
        Result := Result + '#' + IntToStr(ord( cmd[A] ))
     else
        Result := Result + cmd[A] ;
  end ;
end;


procedure TfrmConfiguracao.btAlterarClick(Sender: TObject);
begin
  inherited;
  qrEmpresa.Edit;
  if pcPrincipal.ActivePageIndex = 1 then
  begin
    dbeRazaoSocial.SetFocus;
  end;
end;

procedure TfrmConfiguracao.btBalancaLerPesoClick(Sender: TObject);
var Timeout : integer;
begin
  inherited;
  btBalancaLerPeso.Enabled := false;
  try
    // se houver conexão aberta, Fecha a conexão
    if acbrBal1.Ativo then
      ACBrBAL1.Desativar;

    // configura porta de comunicação
    ACBrBAL1.Modelo           := TACBrBALModelo( cbBalancaModelo.ItemIndex );
    ACBrBAL1.Device.HandShake := TACBrHandShake( cbBalancaHandShaking.ItemIndex );
    ACBrBAL1.Device.Parity    := TACBrSerialParity( cbBalancaParity.ItemIndex );
    ACBrBAL1.Device.Stop      := TACBrSerialStop( cbBalancaStopBits.ItemIndex );
    ACBrBAL1.Device.Data      := StrToInt( cbBalancaDataBits.text );
    ACBrBAL1.Device.Baud      := StrToInt( cbBalancaBaud.Text );
    ACBrBAL1.Device.Porta     := cbBalancaPortaSerial.Text;
    ACBrBAL1.ArqLOG           := format('%sLog\Balanca\Balanca_%s.log' ,[ExtractFilePath(Application.ExeName) , FormatDateTime('ddmmyyyy', Date)]);

    //cria o diretório de log
    if Not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Log\Balanca') then
      ForceDirectories(ExtractFilePath(Application.ExeName) + 'Log\Balanca');

    // Conecta com a balança
    ACBrBAL1.Ativar;

    // lê o peso na balança
    try
      TimeOut := StrToInt(edBalancaTimeOut.Text) ;
    except
      TimeOut := 2000 ;
    end ;

    ACBrBAL1.LePeso( TimeOut );
    ACBrBAL1.Desativar;
  except
    on E : Exception do
    begin
    application.MessageBox(pchar('Erro ao executar o teste, verifique as configurações! Detalhes do erro:'+#13#10+
                                  E.Message ),'Atenção', MB_ICONERROR );
    end;
  end;
  btBalancaLerPeso.Enabled := true;
end;

procedure TfrmConfiguracao.btCancelarClick(Sender: TObject);
begin
  inherited;
   Close;
end;


procedure TfrmConfiguracao.CNPJ_CPF(Sender: TField);
begin
   if Sender.AsInteger = 1 then
      Formatar_String(qrEmpresaemp_004, sMskCNPJ);
   if Sender.AsInteger = 2 then
      Formatar_String(qrEmpresaemp_004, sMskCPF);
   if Sender.AsInteger = 3 then
      Formatar_String(qrEmpresaemp_004, '');
   //
   Ajusta_Valor_Mask(qrEmpresaemp_004);
end;

procedure TfrmConfiguracao.ComPort1RxChar(Sender: TObject; Count: Integer);
var Str_com, telefone_itentificado : string;
begin
  inherited;
  ComPort1.ReadStr(Str_com, Count);
  Str_com := trim(Str_com);
  if CKIGNORADDDIDCHAMADA.Checked then
    telefone_itentificado := copy(Str_com, 3, pos('E',Str_com)-3)
  else
    telefone_itentificado := copy(Str_com, 1, pos('E',Str_com)-1);

  if trim(telefone_itentificado)='' then telefone_itentificado :='NÚMERO PRIVADO';
  meIdchamda.Text:= 'Chamada identificada' + sLineBreak + telefone_itentificado ;
end;

procedure TfrmConfiguracao.edIDContaPagarPadaraoNfePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var str_sql : string;
begin
  inherited;
  edIDContaPagarPadaraoNfe.SetFocus;

  str_sql:= ' select id_conta, descricao, '+
            ' cast(fn_situacoes(id_situacao) as varchar(100)) as situacao from conta ';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
    str_sql,
    CriaIntegerArray([0,1,2]) ,
    CriaStringArray(['Código', 'Conta', 'Status' ]),
    0, 1, ' id_situacao=4 and b_pagar and id_empresa='+IntToStr(RecProj.iEmp));
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
    edIDContaPagarPadaraoNfe.Text:= frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.Free;

end;

procedure TfrmConfiguracao.edMensagemCouvertComandaExit(Sender: TObject);
begin
  inherited;
  edMensagemCouvertComanda.Text:=copy(edMensagemCouvertComanda.Text, 0, 40);
end;

procedure TfrmConfiguracao.edMensagemCouvertMesaExit(Sender: TObject);
begin
  inherited;
  edMensagemCouvertMesa.Text:=copy(edMensagemCouvertMesa.Text, 0, 40);
end;

procedure TfrmConfiguracao.edMensagemTxServicoExit(Sender: TObject);
begin
  inherited;
  edMensagemTxServico.Text:=copy(edMensagemTxServico.Text, 0, 40);
end;





procedure TfrmConfiguracao.edNFCeNumSerieCertificadoChange(Sender: TObject);
begin
  inherited;
  if trim(edNFCeNumSerieCertificado.text)<>'' then
  begin
    btNFCeDataValidadeCertificado.Enabled := true;
    btNFCeNumSerieCertificado.Enabled := true;
    btNFCeSubjectNameCertificado.Enabled := true;
    btNFCeCNPJCertificado.Enabled := true;
  end
  else
    begin
    btNFCeDataValidadeCertificado.Enabled := false;
    btNFCeNumSerieCertificado.Enabled := false;
    btNFCeSubjectNameCertificado.Enabled := false;
    btNFCeCNPJCertificado.Enabled := false;
  end;

end;

procedure TfrmConfiguracao.edValorCouvertFemComandaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if key in ['-']  then key:=#0
end;

procedure TfrmConfiguracao.edValorCouvertFemKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if key in ['-']  then key:=#0
end;

procedure TfrmConfiguracao.edValorCouvertMascComandaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if key in ['-']  then key:=#0
end;

procedure TfrmConfiguracao.edValorCouvertMascKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if key in ['-']  then key:=#0
end;


procedure TfrmConfiguracao.ACBrTEFD1ComandaECF(Operacao: TACBrTEFDOperacaoECF;
  Resp: TACBrTEFDResp; var RetornoECF: Integer);
begin
  inherited;
 try
    case Operacao of
      opeAbreGerencial :
         MemoCupomTEF.Lines.Add('Abre Gerencial') {ACBrECF1.AbreRelatorioGerencial} ;

      opeFechaCupom :
         estadoSimuladoEcf := tpsLivre;

      opeSubTotalizaCupom :
         MemoCupomTEF.Lines.Add('Sub Totaliza');

      opeFechaGerencial, opeFechaVinculado :
         estadoSimuladoEcf := tpsRelatorio;

      opePulaLinhas :
        begin
          MemoCupomTEF.Lines.Add('PulaLinhas');
          Sleep(200);
        end;

      opeImprimePagamentos :
        begin
          MemoCupomTEF.Lines.Add('ImprimePagamentos');
        end;
    end;
    RetornoECF := 1 ;
  except
    RetornoECF := 0 ;
  end;
end;

procedure TfrmConfiguracao.ACBrTEFD1ComandaECFAbreVinculado(COO,
  IndiceECF: string; Valor: Double; var RetornoECF: Integer);
begin
  inherited;
  try
     RetornoECF := 1 ;
  except
     RetornoECF := 0 ;
  end;
end;

procedure TfrmConfiguracao.ACBrTEFD1ComandaECFImprimeVia(
  TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
  ImagemComprovante: TStringList; var RetornoECF: Integer);
begin
  inherited;
  try
     case TipoRelatorio of
       trGerencial :
         MemoCupomTEF.Lines.Add('GERENCIAL:' + ImagemComprovante.Text);
       trVinculado :
         MemoCupomTEF.Lines.Add('VINCULADO:' + ImagemComprovante.Text);
     end;

     RetornoECF := 1 ;
  except
     RetornoECF := 0 ;
  end;
end;

procedure TfrmConfiguracao.ACBrTEFD1ComandaECFSubtotaliza(DescAcre: Double;
  var RetornoECF: Integer);
begin
  inherited;
  estadoSimuladoEcf := tpsPagamento;
  RetornoECF := 1 ;
end;

procedure TfrmConfiguracao.ACBrTEFD1ExibeMsg(
  Operacao: TACBrTEFDOperacaoMensagem; Mensagem: string;
  var AModalResult: TModalResult);
var
   Fim : TDateTime;
   OldMensagem : String;
begin

  case Operacao of

    opmOK :
       AModalResult := MessageDlg( Mensagem, mtInformation, [mbOK], 0);

    opmYesNo :
       AModalResult := MessageDlg( Mensagem, mtConfirmation, [mbYes,mbNo], 0);

    opmExibirMsgOperador, opmRemoverMsgOperador :
         lMensagemOperador.Caption := Mensagem ;

    opmExibirMsgCliente, opmRemoverMsgCliente :
         lMensagemCliente.Caption := Mensagem ;

    opmDestaqueVia :
       begin
         OldMensagem := lMensagemOperador.Caption ;
         try
            lMensagemOperador.Caption := Mensagem ;
            pMensagemOperador.Visible := True ;
            pMensagem.Visible         := True ;

            { Aguardando 3 segundos }
            Fim := IncSecond( now, 3)  ;
            repeat
               sleep(200) ;
               lMensagemOperador.Caption := Mensagem + ' ' + IntToStr(SecondsBetween(Fim,now));
               Application.ProcessMessages;
            until (now > Fim) ;

         finally
            lMensagemOperador.Caption := OldMensagem ;
         end;
       end;
  end;

  pMensagemOperador.Visible := (lMensagemOperador.Caption <> '') ;
  pMensagemCliente.Visible  := (lMensagemCliente.Caption <> '') ;

  pMensagem.Visible := pMensagemOperador.Visible or pMensagemCliente.Visible;
  Application.ProcessMessages;

end;

procedure TfrmConfiguracao.ACBrTEFD1InfoECF(Operacao: TACBrTEFDInfoECF;
  var RetornoECF: string);
var
   ASubTotal: Double;
begin
   case Operacao of
     ineSubTotal :
       begin
         ASubTotal := 0;
         //ASubTotal := ASubTotal - StringToFloatDef(EditTotalPago.Text, 0){ + Tratar Desconto e Acrescimo aqui: StringToFloatDef(edValorDescAcre.Text, 0)};
         RetornoECF := FloatToStr(ASubTotal);
         if estadoSimuladoEcf = tpsPagamento then
           RetornoECF := FloatToStr(0);
       end;

     ineTotalAPagar :
       RetornoECF := '0';

     ineEstadoECF :
       begin
         Case estadoSimuladoEcf of
           tpsLivre     : RetornoECF := 'L' ;
           tpsVenda     : RetornoECF := 'V' ;
           tpsPagamento : RetornoECF := 'P' ;
           tpsRelatorio : RetornoECF := 'R' ;
         else
           RetornoECF := 'O' ;
         end;
       end;
   end;

end;


end.
