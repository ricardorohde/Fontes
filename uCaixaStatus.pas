{   [Caixa]
  - Classificação dos movimentos (itens)
    V - Venda  (tipo Entrada)
    S - Suprimento (tipo Entrada)
    C - Outros Creditos (tipo Entrada)
    D - Outros débitos (tipo Saída)
    R - Retirada / Sangria (tipo Saída)
    E - Estorno de Venda (tipo Saida)  }
unit uCaixaStatus;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, MemDS, DBAccess, Uni, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, frxClass, frxDBSet, AdvPanel, AdvGroupBox,
  AdvGlowButton, Vcl.Menus, frxExportPDF, cxContainer, cxGroupBox, cxRadioGroup,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmCaixaStatus = class(TForm)
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    qrCaixa: TUniQuery;
    qrCaixaid_caixa: TIntegerField;
    qrCaixadata_abertura: TDateTimeField;
    qrCaixadata_fechamento: TDateTimeField;
    qrCaixahora_abertura: TTimeField;
    qrCaixahora_fechamento: TTimeField;
    qrCaixavalor_inicial: TFloatField;
    qrCaixavalor_informado_dinheiro: TFloatField;
    qrCaixavalor_informado_cartao: TFloatField;
    qrCaixavalor_informado_cheque: TFloatField;
    qrCaixavalor_informado_outros: TFloatField;
    qrCaixatotal_mesa: TFloatField;
    qrCaixatotal_delivery: TFloatField;
    qrCaixatotal_balcao: TFloatField;
    qrCaixatotal_comanda: TFloatField;
    qrCaixaacrescimo_venda: TFloatField;
    qrCaixatotal_retirada: TFloatField;
    qrCaixatotal_outros_creditos: TFloatField;
    qrCaixatotal_outros_debitos: TFloatField;
    dsCaixa: TDataSource;
    cxgridCaixaDBTableView1: TcxGridDBTableView;
    cxgridCaixaLevel1: TcxGridLevel;
    cxgridCaixa: TcxGrid;
    cxgridCaixaDBTableView1DataAbertura: TcxGridDBColumn;
    cxgridCaixaDBTableView1DataFechamento: TcxGridDBColumn;
    qrCaixanro_pessoas: TFloatField;
    qrCaixanro_couvert_f: TFloatField;
    qrCaixanro_couvert_m: TFloatField;
    qrCaixatotal_desconto_item: TFloatField;
    qrCaixatotal_desconto_venda: TFloatField;
    qrCaixatotal_descontos: TFloatField;
    qrCaixatotal_informado: TFloatField;
    qrCaixasaldo: TFloatField;
    qrCaixatotal_pagamento_debito: TFloatField;
    qrCaixatotal_pagamento_credito: TFloatField;
    qrCaixatotal_pagamento_dinheiro: TFloatField;
    qrCaixatotal_pagamento_cheque: TFloatField;
    qrCaixanome_usuario: TWideStringField;
    qrCaixadesc_status: TWideStringField;
    qrRelSuprimentos: TUniQuery;
    qrRelRetiradas: TUniQuery;
    qrRelSuprimentosvalor: TFloatField;
    qrRelSuprimentosid_empresa: TIntegerField;
    qrRelSuprimentosid_caixa: TIntegerField;
    qrRelSuprimentosobservacao: TBlobField;
    qrRelSuprimentosclassif: TWideMemoField;
    qrRelSuprimentosnome_usuario: TWideStringField;
    qrRelSuprimentosdesc_status: TWideStringField;
    qrRelSuprimentosdata_abertura: TDateTimeField;
    qrRelSuprimentosdata_fechamento: TDateTimeField;
    qrRelRetiradasvalor: TFloatField;
    qrRelRetiradasid_empresa: TIntegerField;
    qrRelRetiradasid_caixa: TIntegerField;
    qrRelRetiradasobservacao: TBlobField;
    qrRelRetiradasclassif: TWideMemoField;
    qrRelRetiradasnome_usuario: TWideStringField;
    qrRelRetiradasdesc_status: TWideStringField;
    qrRelRetiradasdata_abertura: TDateTimeField;
    qrRelRetiradasdata_fechamento: TDateTimeField;
    qrRelDescontoVendas: TUniQuery;
    qrRelDescontoVendasvalor_venda: TFloatField;
    qrRelDescontoVendasdesconto_venda: TFloatField;
    qrRelDescontoVendasnro_pessoas: TIntegerField;
    qrRelDescontoVendasnro_couvert_f: TIntegerField;
    qrRelDescontoVendasnro_couvert_m: TIntegerField;
    qrRelDescontoVendasid_caixa: TIntegerField;
    qrRelDescontoVendasid_empresa: TIntegerField;
    qrRelDescontoVendasmesa: TWideStringField;
    qrRelDescontoVendasnome_usuario: TWideStringField;
    qrRelDescontoVendasdesc_status: TWideStringField;
    qrRelDescontoVendasdata_abertura: TDateTimeField;
    qrRelDescontoVendasdata_fechamento: TDateTimeField;
    qrRelDescontoItens: TUniQuery;
    qrRelDescontoItensvalor_unit_s_desc: TFloatField;
    qrRelDescontoItensdesc_produto: TWideStringField;
    qrRelDescontoItensdeconto_item: TFloatField;
    qrRelDescontoItensid_caixa: TIntegerField;
    qrRelDescontoItensid_empresa: TIntegerField;
    qrRelDescontoItensvalor_venda: TFloatField;
    qrRelDescontoItensdesconto_venda: TFloatField;
    qrRelDescontoItensnro_pessoas: TIntegerField;
    qrRelDescontoItenstipo_venda: TWideStringField;
    qrRelDescontoItensnro_couvert_f: TIntegerField;
    qrRelDescontoItensnro_couvert_m: TIntegerField;
    qrRelDescontoItensmesa: TWideStringField;
    qrRelDescontoItensnome_usuario: TWideStringField;
    qrRelDescontoItensdesc_status: TWideStringField;
    qrRelDescontoItensdata_abertura: TDateTimeField;
    qrRelDescontoItensdata_fechamento: TDateTimeField;
    qrRelVendasCanceladas: TUniQuery;
    qrRelVendasCanceladasmesa: TWideStringField;
    qrRelVendasCanceladasvalor_venda: TFloatField;
    qrRelVendasCanceladasobservacoes: TWideStringField;
    qrRelVendasCanceladasnome_usuario: TWideStringField;
    qrRelVendasCanceladasdesc_status: TWideStringField;
    qrRelVendasCanceladasdata_abertura: TDateTimeField;
    qrRelVendasCanceladasdata_fechamento: TDateTimeField;
    qrRelDescontoItenscodigo: TWideStringField;
    qrRelProdutosVendidos: TUniQuery;
    qrRelProdutosVendidoscodigo: TWideStringField;
    qrRelProdutosVendidosdesc_produto: TWideStringField;
    qrRelProdutosVendidosid_caixa: TIntegerField;
    qrRelProdutosVendidosid_empresa: TIntegerField;
    qrRelProdutosVendidosqtde_total_item: TFloatField;
    qrRelProdutosVendidosvalor_total_item: TFloatField;
    qrRelProdutosVendidosnome_usuario: TWideStringField;
    qrRelProdutosVendidosdesc_status: TWideStringField;
    qrRelProdutosVendidosdata_abertura: TDateTimeField;
    qrRelProdutosVendidosdata_fechamento: TDateTimeField;
    qrRelMovimentoFormaPag: TUniQuery;
    qrRelMovimentoFormaPagtotal_forma: TFloatField;
    qrRelMovimentoFormaPagid_caixa: TIntegerField;
    qrRelMovimentoFormaPagid_empresa: TIntegerField;
    qrRelMovimentoFormaPagdesc_forma: TWideStringField;
    qrRelMovimentoFormaPagtipo_movimento: TWideStringField;
    qrRelMovimentoFormaPagnome_usuario: TWideStringField;
    qrRelMovimentoFormaPagdesc_status: TWideStringField;
    qrRelMovimentoFormaPagdata_abertura: TDateTimeField;
    qrRelMovimentoFormaPagdata_fechamento: TDateTimeField;
    qrRelMovimentoFormaPagtipo_venda: TWideMemoField;
    repCaixa: TfrxReport;
    dbCaixa: TfrxDBDataset;
    qrCaixaobservacao: TWideStringField;
    qrCaixaqtde_vendas_mesa: TFloatField;
    qrCaixaqtde_vendas_delivery: TFloatField;
    qrCaixaqtde_vendas_balcao: TFloatField;
    qrCaixaqtde_vendas_comanda: TFloatField;
    repRetiradasSuprimentos: TfrxReport;
    dbRetiradas: TfrxDBDataset;
    qrRelRetiradasobservacao_caixa: TBlobField;
    btRelRetiradas: TButton;
    qrCaixaid_empresa: TIntegerField;
    dsRetiradaSuprimento: TDataSource;
    qrRelSuprimentosobservacao_caixa: TBlobField;
    repDescontoVendas: TfrxReport;
    dbDescontoVendas: TfrxDBDataset;
    qrRelDescontoVendasobservacao: TBlobField;
    qrRelDescontoVendastipo_venda: TWideStringField;
    repDescontoItens: TfrxReport;
    dbDescontoItens: TfrxDBDataset;
    qrRelDescontoItensobservacao: TBlobField;
    repVendasCanceladas: TfrxReport;
    dbVendasCanceladas: TfrxDBDataset;
    qrRelVendasCanceladastipo_venda: TWideStringField;
    qrRelVendasCanceladasobservacao: TBlobField;
    repProdutosVendidos: TfrxReport;
    dbProdutosVendidos: TfrxDBDataset;
    qrRelProdutosVendidosobservacao: TBlobField;
    qrRelDescontoVendasvalor_total_venda: TFloatField;
    repMovimentoFormaPag: TfrxReport;
    dbMovimentoFormaPag: TfrxDBDataset;
    qrRelMovimentoFormaPagobservacao: TBlobField;
    qrCaixatotal_pagamento_outra: TFloatField;
    AdvPanel1: TAdvPanel;
    pnTopo: TPanel;
    lbTipoMovimentoCaixa: TLabel;
    AdvGroupBox1: TAdvGroupBox;
    btRelAcrescimosPorUsuario: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGroupBox2: TAdvGroupBox;
    btRelVendasCanceladas: TAdvGlowButton;
    btRelProdutosVendidos: TAdvGlowButton;
    btRelDescontoItens: TAdvGlowButton;
    btRelDescontoVendas: TAdvGlowButton;
    AdvGroupBox3: TAdvGroupBox;
    btRelTotalFormapag: TAdvGlowButton;
    btRelSuprimento: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    bRelCaixa: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    btRelAcrescimos: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    qrRelProdutosCancelados: TUniQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    BlobField1: TBlobField;
    dbProdutosCancelados: TfrxDBDataset;
    repProdutosCancelados: TfrxReport;
    qrRelProdutosCanceladosmesa: TWideStringField;
    qrRelProdutosCanceladosvenda_mesa: TWideStringField;
    qrRelAcrescimosVendas: TUniQuery;
    FloatField3: TFloatField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    DateTimeField3: TDateTimeField;
    DateTimeField4: TDateTimeField;
    BlobField2: TBlobField;
    WideStringField8: TWideStringField;
    FloatField5: TFloatField;
    dbAcrescimosVendas: TfrxDBDataset;
    repAcrescimosVendas: TfrxReport;
    qrRelAcrescimosVendasacrescimo_venda: TFloatField;
    qrRelAcrescimosVendasPorUsuario: TUniQuery;
    dbAcrescimosVendasPorUsuario: TfrxDBDataset;
    repAcrescimosVendasPorUsuario: TfrxReport;
    qrCaixatotal_estorno: TFloatField;
    qrRelAcrescimosVendasPorUsuarioqtde_venda: TLargeintField;
    qrRelAcrescimosVendasPorUsuariototal_acrescimo_venda: TFloatField;
    qrRelAcrescimosVendasPorUsuariotipo_venda: TWideStringField;
    qrRelAcrescimosVendasPorUsuarioid_caixa: TIntegerField;
    qrRelAcrescimosVendasPorUsuarioid_empresa: TIntegerField;
    qrRelAcrescimosVendasPorUsuarionome_usuario: TWideStringField;
    qrRelAcrescimosVendasPorUsuarionome_entregador_garcom: TWideStringField;
    qrRelAcrescimosVendasPorUsuariodesc_status: TWideStringField;
    qrRelAcrescimosVendasPorUsuariodata_abertura: TDateTimeField;
    qrRelAcrescimosVendasPorUsuariodata_fechamento: TDateTimeField;
    qrRelAcrescimosVendasPorUsuarioobservacao: TBlobField;
    AdvGlowButton2: TAdvGlowButton;
    qrRelVendasCFe: TUniQuery;
    dbVendasCFe: TfrxDBDataset;
    repVendasCFe: TfrxReport;
    qrRelVendasCFeven_001: TIntegerField;
    qrRelVendasCFevalor_venda: TFloatField;
    qrRelVendasCFetipo_venda: TWideStringField;
    qrRelVendasCFenome_usuario: TWideStringField;
    qrRelVendasCFedesc_status: TWideStringField;
    qrRelVendasCFedata_abertura: TDateTimeField;
    qrRelVendasCFedata_fechamento: TDateTimeField;
    qrRelVendasCFenro_cupom: TIntegerField;
    qrRelVendasCFeobservacao: TBlobField;
    btDetalheVendas: TAdvGlowButton;
    qrRelDetalheVendas: TUniQuery;
    dbDetalheVendas: TfrxDBDataset;
    repDetalheVendas: TfrxReport;
    qrRelDetalheVendasnrovenda: TIntegerField;
    qrRelDetalheVendasdata_venda: TDateTimeField;
    qrRelDetalheVendasvalor_venda: TFloatField;
    qrRelDetalheVendastipo_venda: TWideStringField;
    qrRelDetalheVendasretirada_balcao: TWideStringField;
    qrRelDetalheVendascodigo_produto: TWideStringField;
    qrRelDetalheVendasdesc_produto: TWideStringField;
    qrRelDetalheVendasid_caixa: TIntegerField;
    qrRelDetalheVendasid_empresa: TIntegerField;
    qrRelDetalheVendasqtde_total_item: TFloatField;
    qrRelDetalheVendasvalor_total_item: TFloatField;
    qrRelDetalheVendasnome_usuario: TWideStringField;
    qrRelDetalheVendasdesc_status: TWideStringField;
    qrRelDetalheVendasdata_abertura: TDateTimeField;
    qrRelDetalheVendasdata_fechamento: TDateTimeField;
    qrRelDetalheVendasobservacao: TBlobField;
    qrRelDetalheVendasnome_cliente: TWideStringField;
    qrRelDetalheVendasvalor_unitario: TFloatField;
    qrRelAcrescimosVendasPorUsuariototal_venda: TFloatField;
    AdvGroupBox4: TAdvGroupBox;
    AdvGroupBox5: TAdvGroupBox;
    Label23: TLabel;
    DBText23: TDBText;
    Label24: TLabel;
    DBText24: TDBText;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText5: TDBText;
    Label6: TLabel;
    DBText6: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    Label8: TLabel;
    DBText8: TDBText;
    Label9: TLabel;
    DBText9: TDBText;
    Label10: TLabel;
    DBText10: TDBText;
    Label11: TLabel;
    DBText11: TDBText;
    Label12: TLabel;
    Label13: TLabel;
    DBText12: TDBText;
    DBText13: TDBText;
    Label14: TLabel;
    DBText14: TDBText;
    Label15: TLabel;
    DBText15: TDBText;
    Label16: TLabel;
    DBText16: TDBText;
    Label17: TLabel;
    DBText17: TDBText;
    Label18: TLabel;
    DBText18: TDBText;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Label19: TLabel;
    DBText19: TDBText;
    DBText20: TDBText;
    Label20: TLabel;
    Label21: TLabel;
    DBText21: TDBText;
    DBText22: TDBText;
    Label22: TLabel;
    Shape6: TShape;
    Label25: TLabel;
    DBText25: TDBText;
    Label26: TLabel;
    DBText26: TDBText;
    qrCaixaqtde_vendas_pdv: TFloatField;
    qrCaixatotal_pdv: TFloatField;
    DBText27: TDBText;
    Label27: TLabel;
    AdvGroupBox6: TAdvGroupBox;
    Label28: TLabel;
    DBText28: TDBText;
    Label29: TLabel;
    DBText29: TDBText;
    Label30: TLabel;
    DBText30: TDBText;
    Label31: TLabel;
    DBText31: TDBText;
    DBText32: TDBText;
    Label32: TLabel;
    qrRelDetalheVendastelefone1: TWideStringField;
    qrRelDetalheVendastelefone2: TWideStringField;
    qrRelDetalheVendaslogradouro: TWideStringField;
    qrRelDetalheVendaslogradouro_numero: TWideStringField;
    qrRelDetalheVendascomplemento: TWideStringField;
    qrRelDetalheVendasbairro: TWideStringField;
    qrRelDetalheVendascidade_desc: TWideStringField;
    pmOpcoesDetalhamentoVendas: TPopupMenu;
    Delivery1: TMenuItem;
    DeliveryBalco1: TMenuItem;
    qrRelVendasFiado: TUniQuery;
    qrRelVendasFiadovalor: TFloatField;
    qrRelVendasFiadoid_caixa: TIntegerField;
    qrRelVendasFiadoid_empresa: TIntegerField;
    qrRelVendasFiadodesc_forma: TWideStringField;
    qrRelVendasFiadotipo_movimento: TWideStringField;
    qrRelVendasFiadonome_usuario: TWideStringField;
    qrRelVendasFiadodesc_status: TWideStringField;
    qrRelVendasFiadodata_abertura: TDateTimeField;
    qrRelVendasFiadodata_fechamento: TDateTimeField;
    qrRelVendasFiadoobservacao: TBlobField;
    qrRelVendasFiadonome_cliente: TWideStringField;
    dbVendasFiado: TfrxDBDataset;
    repVendasFiado: TfrxReport;
    btRelVendasFiado: TAdvGlowButton;
    qrCaixatotal_pagamento_fiado: TFloatField;
    Label33: TLabel;
    DBText33: TDBText;
    qrRelProdutosCanceladosid_venda: TIntegerField;
    qrRelProdutosCanceladosnumero_cupom: TIntegerField;
    qrRelDescontoVendasnro_venda: TIntegerField;
    qrRelVendasFiadotipo_venda: TWideStringField;
    qrRelAcrescimosVendasnro_pessoas: TLargeintField;
    qrRelAcrescimosVendasnro_couvert_f: TLargeintField;
    qrRelAcrescimosVendasnro_couvert_m: TLargeintField;
    qrCaixaterminal: TWideStringField;
    Label34: TLabel;
    DBText34: TDBText;
    qrRelProdutosVendidosdesc_categoria: TWideStringField;
    qrRelProdutosVendidosLucro: TUniQuery;
    WideStringField5: TWideStringField;
    WideStringField9: TWideStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    FloatField4: TFloatField;
    FloatField6: TFloatField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    DateTimeField5: TDateTimeField;
    DateTimeField6: TDateTimeField;
    BlobField3: TBlobField;
    WideStringField12: TWideStringField;
    qrRelProdutosVendidosLucrototal_lucro_item: TFloatField;
    dbProdutosVendidosLucro: TfrxDBDataset;
    repProdutosVendidosLucro: TfrxReport;
    btRelProdutosVendidosLucro: TAdvGlowButton;
    frxPDFExport1: TfrxPDFExport;
    btRelProdutosDevolvidos: TAdvGlowButton;
    qrRelProdutosDevolvidos: TUniQuery;
    dbProdutosDevolvidos: TfrxDBDataset;
    repProdutosDevolvidos: TfrxReport;
    qrRelProdutosDevolvidosid_venda: TIntegerField;
    qrRelProdutosDevolvidoscodigo: TWideStringField;
    qrRelProdutosDevolvidosdesc_produto: TWideStringField;
    qrRelProdutosDevolvidosid_caixa: TIntegerField;
    qrRelProdutosDevolvidosid_empresa: TIntegerField;
    qrRelProdutosDevolvidosqtde_total_item: TFloatField;
    qrRelProdutosDevolvidosvalor_total_item: TFloatField;
    qrRelProdutosDevolvidosnome_usuario: TWideStringField;
    qrRelProdutosDevolvidosdesc_status: TWideStringField;
    qrRelProdutosDevolvidosdata_abertura: TDateTimeField;
    qrRelProdutosDevolvidosdata_fechamento: TDateTimeField;
    qrRelProdutosDevolvidosobservacao: TBlobField;
    qrRelProdutosDevolvidosmesa: TWideStringField;
    qrRelProdutosDevolvidosvenda_mesa: TWideStringField;
    qrRelProdutosDevolvidosnumero_cupom: TIntegerField;
    qrRelProdutosDevolvidosnro_venda: TIntegerField;
    qrRelProdutosDevolvidosnome_responsavel: TWideStringField;
    Label35: TLabel;
    DBText35: TDBText;
    qrCaixanome_usuario_fechamento: TWideStringField;
    qrRelAcrescimosVendasCouvert: TUniQuery;
    FloatField7: TFloatField;
    IntegerField5: TIntegerField;
    IntegerField8: TIntegerField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    DateTimeField7: TDateTimeField;
    DateTimeField8: TDateTimeField;
    BlobField4: TBlobField;
    WideStringField15: TWideStringField;
    FloatField9: TFloatField;
    LargeintField1: TLargeintField;
    LargeintField2: TLargeintField;
    LargeintField3: TLargeintField;
    dbAcrescimosVendasCouvert: TfrxDBDataset;
    repAcrescimosVendasCouvert: TfrxReport;
    qrRelAcrescimosVendasCouverttotal_couvert: TFloatField;
    btRelAcrescimosCouvert: TAdvGlowButton;
    qrCaixavalor_couvert: TFloatField;
    Label36: TLabel;
    DBText36: TDBText;
    qrCaixatotal_suprimento: TFloatField;
    qrRelProdutosCanceladosobservacao_cancelamento: TWideStringField;
    qrCaixadiferenca: TFloatField;
    qrRelDescontoVendasnomecliente: TWideStringField;
    pmDescVendas: TPopupMenu;
    ImprimiNome: TMenuItem;
    NaoImprimiNome: TMenuItem;
    qrRelProdutosCanceladosdata_abertura_venda: TDateTimeField;
    qrRelProdutosCanceladostipo_cancelamento: TWideMemoField;
    pmRelatorioCaixa: TPopupMenu;
    detalhado1: TMenuItem;
    resumido1: TMenuItem;
    qrConferencia: TUniQuery;
    qrConferenciatotal_forma: TFloatField;
    qrConferenciadesc_forma: TWideMemoField;
    qrRelAcrescimosVendascaixinha_entregador: TFloatField;
    qrRelAcrescimosVendasPorUsuariocaixinha_entregador: TFloatField;
    qrCaixacaixinha_entregador: TFloatField;
    Label37: TLabel;
    DBText37: TDBText;
    AdvGlowButton1: TAdvGlowButton;
    constructor Create(sender: tcomponent);
    procedure FiltraCaixaData;
    procedure dtpDataInicialChange(Sender: TObject);
    procedure dtpDataFinalChange(Sender: TObject);
    procedure btRelRetiradasClick(Sender: TObject);
    procedure abreRepRetiradaSuprimento(var dsRel :TDataSource; titulo_rep : string );
    procedure btRelSuprimentoClick(Sender: TObject);
    procedure btRelDescontoVendasClick(Sender: TObject);
    procedure AbreRelatorio( var Query: TUniQuery ; var relatorio : TfrxReport);
    procedure btRelVendasCanceladasClick(Sender: TObject);
    procedure btRelProdutosVendidosClick(Sender: TObject);
    procedure CarregaParametrosConfig;
    procedure btRelMovFormaPgtoClick(Sender: TObject);
    procedure btRelTotalFormapagClick(Sender: TObject);
    procedure btRelDescontoItensClick(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure btRelAcrescimosClick(Sender: TObject);
    procedure qrCaixaAfterOpen(DataSet: TDataSet);
    procedure btRelAcrescimosPorUsuarioClick(Sender: TObject);
    procedure bRelCaixaClick(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure btDetalheVendasClick(Sender: TObject);
    procedure DeliveryBalco1Click(Sender: TObject);
    procedure Delivery1Click(Sender: TObject);
    procedure AbreRelatorioDetalhamentoVendaDelivery(com_taxa_entrega : boolean);
    procedure btRelVendasFiadoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btRelProdutosVendidosLucroClick(Sender: TObject);
    procedure btRelProdutosDevolvidosClick(Sender: TObject);
    procedure btRelAcrescimosCouvertClick(Sender: TObject);
    // 07/07/2017 - Rafael
    procedure AbreRelatorioDesconto(com_Cliente: Boolean);
    procedure ImprimiNomeClick(Sender: TObject);
    procedure NaoImprimiNomeClick(Sender: TObject);
    procedure ImprimeRelatorioDetalhadoCaixa;
    procedure ImprimeRelatorioResumidoCaixa;
    procedure detalhado1Click(Sender: TObject);
    procedure resumido1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
      sCamImpCaixa,consulta_caixa: string;
      numero_colunas_impressora : integer;
      todos_caixas:boolean;
  public
    { Public declarations }
  end;

var
  frmCaixaStatus: TfrmCaixaStatus;

implementation

{$R *.dfm}

uses uMenu, uPadrao, uFuncoes, Funcao_DB, uVisualizaRelatorioTexto;

{   [Caixa]
  - Classificação dos movimentos (itens)
    V - Venda  (tipo Entrada)
    S - Suprimento (tipo Entrada)
    C - Outros Creditos (tipo Entrada)
    D - Outros débitos (tipo Saída)
    R - Retirada / Sangria (tipo Saída)
    E - Estorno de Venda (tipo Saida)  }


procedure TfrmCaixaStatus.CarregaParametrosConfig;
var tmpFrmPadrao : TfrmPadrao;
begin
  tmpFrmPadrao := TfrmPadrao.Create(nil);
  tmpFrmPadrao.fSufix:='CONFIGURACAO';
  tmpFrmPadrao.AbreXMLCFG;
  //pega o caminho da impressora nas configuração
  sCamImpCaixa:= tmpFrmPadrao.LerString('CAMIMPCAIXA');
  tmpFrmPadrao.Free;
  if sCamImpCaixa='' then application.MessageBox('O caminho da impressora do caixa não está definido!', 'Atenção', MB_ICONWARNING);
end;

procedure TfrmCaixaStatus.ImprimeRelatorioDetalhadoCaixa;
var
  str_impressao, str_aux1, str_aux2,
  Categoria: string;
  valor_total: Double;
  qtde, indice,valor_retirada : Integer;

  aux1, aux2, aux3, aux4, aux5, aux6, aux7, aux8 : double;


  total_produtos, troco_garcom, valor_fatuaramento_liq, total_venda_liq,
  total_forma, total_forma_percent, forma_percent, total_entradas,
  total_saidas, produto_percent : double;

  //cont_mesa, cont_delivery, cont_balcao, cont_comanda, cont_pdv : integer;
  valor_media_mesa, valor_media_delivery, valor_media_balcao,
  valor_media_comanda, valor_media_pdv, valor_media_vendas,
  quantidade_produto, valor_produto,

  valor_total_vendas , quantidade_total_produtos, valor_total_produtos : double;
  quantidade_vendas : integer;
  valor_total_forma: Double;
  valor_total_informado: Double;
  valor_total_diferenca: Double;
  valor_forma: Double;
  valor_informado: Double;
  diferenca_forma: Double;
  diferenca: Double;
  descricao:string;
  valor_abertura_caixa:double;
begin
{   [Caixa]
  - Classificação dos movimentos (itens)
    V - Venda  (tipo Entrada)
    S - Suprimento (tipo Entrada)
    C - Outros Creditos (tipo Entrada)
    D - Outros débitos (tipo Saída)
    R - Retirada / Sangria (tipo Saída)
    E - Estorno de Venda (tipo Saida)  }

  if not (qrCaixa.RecordCount>0) then
  begin
    Application.MessageBox('Não existe caixa selecionado para imprimir!', 'Atenção', MB_ICONINFORMATION);
    exit;
  end;

  //monta o cabeçalho do relatorio
  if qrcaixa.FieldByName('data_fechamento').isnull then
  begin
    str_aux1 := '';
    str_aux2 := '';
  end
  else
  begin
    str_aux1 := formatdatetime('dd/mm/yyyy',qrcaixa.FieldByName('data_fechamento').asdatetime);
    str_aux2 := formatdatetime('hh:nn',qrcaixa.FieldByName('hora_fechamento').asdatetime);
  end;

  str_impressao := '</zera>' +
                  '************INFORMACOES CAIXA ************' + sLineBreak +
                  'RESPONSAVEL CAIXA:' + AcertaTexto(qrcaixa.FieldByName('nome_usuario').AsString, 'E', 22, ' ') + slinebreak +
                  'DATA ABERTURA:    ' + AcertaTexto(formatdatetime('dd/mm/yyyy', qrcaixa.FieldByName('data_abertura').asdatetime), 'E', 12, ' ') +
                  'HRS:'+ AcertaTexto(formatdatetime('hh:nn',qrcaixa.FieldByName('hora_abertura').asdatetime), 'E', 6, ' ') +slinebreak+

                  'DATA FECHAMENTO:  ' + AcertaTexto(str_aux1, 'E', 12, ' ')  +
                  'HRS:'+ AcertaTexto(str_aux2, 'E', 5, ' ') +slinebreak +
                  '------------------------------------------' + sLineBreak;

  //produtos vendidos relatório qrRelProdutosVendidos
  qrRelProdutosVendidos.Close;
  qrRelProdutosVendidos.ParamByName('id_caixa').AsInteger:= qrCaixa.FieldByName('id_caixa').AsInteger;
  qrRelProdutosVendidos.ParamByName('emp').AsInteger:= qrCaixa.FieldByName('id_empresa').AsInteger;
  qrRelProdutosVendidos.Open;
  total_produtos := 0.0;
  while not qrRelProdutosVendidos.eof do
  begin
    // Produtos
    total_produtos := total_produtos + qrRelProdutosVendidos.FieldByName('valor_total_item').asfloat;

    qrRelProdutosVendidos.Next;
  end;
  // Rafael 21/10/2017

  troco_garcom :=0.0;
  str_aux1 := format(' select coalesce(sum(t.valor), 0.0) as total_troco from trocogarcom t ' +
                     ' join venda v on v.ven_001 = t.id_venda and v.emp_001=t.id_empresa '+
                     ' where v.sit_001=1 and t.id_caixa=%d and t.id_empresa=%d',
                     [qrCaixa.FieldByName('id_caixa').AsInteger, recproj.iEmp]);
  BuscaCampo(troco_garcom, str_aux1, '', false);

  str_impressao := str_impressao +
                  'ENTRADAS(+)' + sLineBreak +
                  '------------------------------------------' + sLineBreak +
                  'Produtos:                    ' + AcertaTexto(format  ('R$ %.2f',[total_produtos]), 'D', 13, ' ') + slineBreak +
                  '------------------------------------------' + sLineBreak +
                  'Servicos:                    ' + AcertaTexto(format  ('R$ %.2f',[qrcaixa.FieldByName('acrescimo_venda').asfloat]), 'D', 13, ' ') + slineBreak +
                  '------------------------------------------' + sLineBreak +
                  'Caixinha Entregador:         ' + AcertaTexto(format  ('R$ %.2f',[qrcaixa.FieldByName('caixinha_entregador').asfloat]), 'D', 13, ' ') + slineBreak +
                  '------------------------------------------' + sLineBreak +
                  'Couvert:                     ' + AcertaTexto(format  ('R$ %.2f',[qrcaixa.FieldByName('valor_couvert').asfloat]), 'D', 13, ' ') + slineBreak +
                  '------------------------------------------' + sLineBreak +
                  'Entradas:                    ' + AcertaTexto(format  ('R$ %.2f',[qrcaixa.FieldByName('total_suprimento').asfloat]), 'D', 13, ' ') + slineBreak +
                  '------------------------------------------' + sLineBreak +
                  'Pagamentos Conta:            ' + AcertaTexto(format  ('R$ %.2f',[qrcaixa.FieldByName('total_outros_creditos').asfloat]), 'D', 13, ' ') + slineBreak +
                  '------------------------------------------' + sLineBreak +
                  'Abertura:                    ' + AcertaTexto(format  ('R$ %.2f',[qrcaixa.FieldByName('valor_inicial').asfloat]), 'D', 13, ' ') + slineBreak +
                  '------------------------------------------' + sLineBreak +
                  'SAIDAS(-)' + sLineBreak +
                  '------------------------------------------' + sLineBreak +
                  'Descontos:                   ' + AcertaTexto(format  ('R$ %.2f',[qrcaixa.FieldByName('total_desconto_venda').asfloat]), 'D', 13, ' ') +  slineBreak +
                  '------------------------------------------'  +slinebreak +
                  'Saidas:                      ' + AcertaTexto(format  ('R$ %.2f',[qrcaixa.FieldByName('total_retirada').asfloat]), 'D', 13, ' ') +  slineBreak +
                  '------------------------------------------' + sLineBreak +
                  'Outros Débitos:              ' + AcertaTexto(format  ('R$ %.2f',[qrcaixa.FieldByName('total_outros_debitos').asfloat]), 'D', 13, ' ') +  slineBreak +
                  '------------------------------------------' + sLineBreak +
                  'Deixado Conta:               ' + AcertaTexto(format  ('R$ %.2f',[troco_garcom]), 'D', 13, ' ') +  slineBreak +
                  '------------------------------------------' + sLineBreak +
                  'Resultado(=)' + sLineBreak +
                  '------------------------------------------' + sLineBreak;

                //Alteração 27/10/2017  Rafael

  valor_fatuaramento_liq := total_produtos +                         //Produtos vendidos
                 qrcaixa.FieldByName('acrescimo_venda').asfloat +    // Acrescimo de venda (taxa do garçom 10% + taxa delivery)
                 qrcaixa.FieldByName('total_suprimento').asfloat +   //Total de suprimentos
                 qrcaixa.FieldByName('valor_couvert').AsFloat +      // Couvert artistico
                 qrcaixa.FieldByName('total_outros_creditos').asfloat -  // Seria uma suprimento com nome outros creditos e Recebimento de contas a receber
                 qrcaixa.FieldByName('total_desconto_venda').asfloat -    // Total de desconto na venda, os descontos cedidos nos itens ja fazem parte do valor do item
                 qrcaixa.FieldByName('total_retirada').asfloat -         // Sangria
                 qrcaixa.FieldByName('total_outros_debitos').asfloat;    // Outros débitos (na tela de sangria, outra categoria de debito
  valor_total := valor_fatuaramento_liq + qrcaixa.FieldByName('valor_inicial').asfloat; // Valor abertura do caixa
  str_impressao := str_impressao +
                  'Faturamento Liquido:         ' + AcertaTexto(format  ('R$ %.2f',[valor_fatuaramento_liq]), 'D', 13, ' ') + slineBreak +
                  '------------------------------------------' + sLineBreak +
                  'Total Caixa:                 ' + AcertaTexto(format  ('R$ %.2f',[valor_total]), 'D', 13, ' ') + slineBreak +
                  '------------------------------------------' + sLineBreak +
                  ' ' + sLineBreak +
                  '-----------POSICAO FINANCEIRA-------------' + sLineBreak +
                  'DESCRICAO                  VALOR     PERC.' + sLineBreak +
                  '------------------------------------------' + sLineBreak +
                  'Valor Abertura:    ' + AcertaTexto(format  ('R$ %.2f',[qrcaixa.FieldByName('valor_inicial').asfloat]), 'D', 13, ' ') + slineBreak +
                  ' ' + sLineBreak +
                  'VENDA LIQUIDA' + sLineBreak ;

  //Relatório de formas de pagamentos
  qrRelMovimentoFormaPag.Close;
  qrRelMovimentoFormaPag.ParamByName('id_caixa').AsInteger:= qrCaixa.FieldByName('id_caixa').AsInteger;
  qrRelMovimentoFormaPag.ParamByName('emp').AsInteger:= qrCaixa.FieldByName('id_empresa').AsInteger;
  qrRelMovimentoFormaPag.open;
  Categoria := qrRelMovimentoFormaPag.FieldByName('desc_forma').asstring;
  total_forma := 0.0;
  total_forma_percent := 0.0;
  total_venda_liq := 0.0;

  //percorre uma vez para pegar o valor total
  while not qrRelMovimentoFormaPag.eof do
  begin
    total_venda_liq := total_venda_liq + qrRelMovimentoFormaPag.FieldByName('total_forma').asfloat;
    qrRelMovimentoFormaPag.Next;
  end;

  qrRelMovimentoFormaPag.First;
  while not qrRelMovimentoFormaPag.eof do
  begin
    forma_percent := qrRelMovimentoFormaPag.FieldByName('total_forma').asfloat / total_venda_liq * 100;

    if Categoria = qrRelMovimentoFormaPag.FieldByName('desc_forma').asstring then
    begin
      total_forma := total_forma + qrRelMovimentoFormaPag.FieldByName('total_forma').asfloat;
      total_forma_percent := total_forma_percent + forma_percent;
    end
    else
    begin
      str_impressao:= str_impressao +
         AcertaTexto(Categoria,'E',20, ' ') +
         AcertaTexto(format  ('%.2f',[total_forma]), 'D', 12, ' ') +
         AcertaTexto(format  ('%.2f',[total_forma_percent])+'%', 'D', 10, ' ') +
         slineBreak;

      total_forma := qrRelMovimentoFormaPag.FieldByName('total_forma').asfloat;
      total_forma_percent := forma_percent;
      Categoria := qrRelMovimentoFormaPag.FieldByName('desc_forma').asstring;
    end;

    qrRelMovimentoFormaPag.Next;
  end;

  str_impressao:= str_impressao +
         AcertaTexto(Categoria,'E',20, ' ') +
         AcertaTexto(format  ('%.2f',[total_forma]), 'D', 12, ' ') +
         AcertaTexto(format  ('%.2f',[total_forma_percent])+'%', 'D', 10, ' ') +
         slineBreak;

  str_impressao := str_impressao +
                  '                    ------------' + sLineBreak +
                  'TOTAL VENDA LIQUIDA: ' + AcertaTexto(format  ('R$ %.2f',[total_venda_liq]), 'D', 11, ' ') + slineBreak +
                  ' ' + sLineBreak+ '------------------------------------------' + sLineBreak;

  //Entrada de caixa
  qrRelSuprimentos.Close;
  qrRelSuprimentos.ParamByName('id_caixa').AsInteger:= qrCaixa.FieldByName('id_caixa').AsInteger;
  qrRelSuprimentos.ParamByName('emp').AsInteger:= qrCaixa.FieldByName('id_empresa').AsInteger;
  qrRelSuprimentos.Open;
  total_entradas := 0.0;

  if qrRelSuprimentos.RecordCount > 0 then
  begin
    str_impressao := str_impressao +
                  '-----------ENTRADA DE CAIXA---------------' + sLineBreak +
                  'DATA/HORA           MOTIVO           VALOR' + sLineBreak +
                  '------------------------------------------' + sLineBreak;


    while not qrRelSuprimentos.eof do
    begin
      total_entradas := total_entradas + qrRelSuprimentos.FieldByName('valor').asfloat;
      str_impressao:= str_impressao +
                   AcertaTexto(FormatDateTime('dd/mm/yyyy hh:mm', qrRelSuprimentos.FieldByName('data_abertura').AsDateTime),'E',27, ' ') +
                   AcertaTexto(format  ('%.2f',[qrRelSuprimentos.FieldByName('valor').asfloat]), 'D', 13, ' ') + slineBreak +
                   'MOTIVO: ' + AcertaTexto(qrRelSuprimentos.FieldByName('observacao').asstring, 'E', 28, ' ') + slineBreak +
                   '------------------------------------------' + sLineBreak;

      qrRelSuprimentos.Next;
    end;

    str_impressao := str_impressao +
                  'TOTAL ENTRADAS:  ' + AcertaTexto(format  ('R$ %.2f',[total_entradas]), 'E', 10, ' ') + slineBreak +
                  ' ' + sLineBreak;
  end;
  //Saida de caixa
  qrRelRetiradas.Close;
  qrRelRetiradas.ParamByName('id_caixa').AsInteger:= qrCaixa.FieldByName('id_caixa').AsInteger;
  qrRelRetiradas.ParamByName('emp').AsInteger:= qrCaixa.FieldByName('id_empresa').AsInteger;
  qrRelRetiradas.Open;


  total_saidas := 0.0;

  if qrRelRetiradas.RecordCount > 0 then
  begin
    str_impressao := str_impressao +
                  '------------------SAIDA DE CAIXA----------' + sLineBreak +
                  'DATA/HORA        MOTIVO              VALOR' + sLineBreak +
                  '------------------------------------------' + sLineBreak;

    while not qrRelRetiradas.eof do
    begin
      total_saidas := total_saidas + qrRelRetiradas.FieldByName('valor').asfloat;
      str_impressao:= str_impressao +
                   AcertaTexto(FormatDateTime('dd/mm/yyyy hh:mm', qrRelRetiradas.FieldByName('data_abertura').AsDateTime),'E',27, ' ') +
                   AcertaTexto(format  ('%.2f',[qrRelRetiradas.FieldByName('valor').asfloat]), 'D', 13, ' ') + slineBreak +
                  'MOTIVO: ' + AcertaTexto(qrRelRetiradas.FieldByName('observacao').asstring, 'E', 28, ' ') + slineBreak +
                   '------------------------------------------' + sLineBreak;

      qrRelRetiradas.Next;
    end;

    str_impressao := str_impressao +
                  'TOTAL SAIDAS:    ' + AcertaTexto(format  ('R$ %.2f',[total_saidas]), 'E', 10, ' ') + slineBreak +
                  ' ' + '------------------------------------------' + sLineBreak;
  end;
//-------------------------------- Final Saida de caixa ------------------------------------------------


              str_impressao := str_impressao + '---------INFORMACOES ATENDIMENTOS---------' + slineBreak +
                  'TIPO ATEND.      QTDE.  MEDIA        TOTAL' + slineBreak +
                  '------------------------------------------' + sLineBreak;

  if qrcaixa.FieldByName('qtde_vendas_mesa').AsFloat > 0.0 then
    valor_media_mesa := qrcaixa.FieldByName('total_mesa').asfloat / qrcaixa.FieldByName('qtde_vendas_mesa').AsFloat
  else
    valor_media_mesa := 0.0;
  quantidade_vendas := qrcaixa.FieldByName('qtde_vendas_mesa').Asinteger; //antes era aux2
  valor_total_vendas := qrcaixa.FieldByName('total_mesa').asfloat;  //antes era aux3

  str_impressao := str_impressao +
                  'MESA         ' +
                        AcertaTexto(qrcaixa.FieldByName('qtde_vendas_mesa').asstring,'D',7, ' ') +
                        AcertaTexto(format  ('%.2f',[valor_media_mesa]), 'D', 9, ' ') +
                        AcertaTexto(format  ('%.2f',[qrcaixa.FieldByName('total_mesa').asfloat]), 'D', 13, ' ') + slineBreak;

  if qrcaixa.FieldByName('qtde_vendas_delivery').AsFloat > 0.0 then
    valor_media_delivery := qrcaixa.FieldByName('total_delivery').asfloat / qrcaixa.FieldByName('qtde_vendas_delivery').AsFloat
  else
    valor_media_delivery := 0.0;
  quantidade_vendas := quantidade_vendas + qrcaixa.FieldByName('qtde_vendas_delivery').Asinteger;
  valor_total_vendas := valor_total_vendas + qrcaixa.FieldByName('total_delivery').asfloat;

  str_impressao := str_impressao +
                  'DELIVERY     ' +
                        AcertaTexto(qrcaixa.FieldByName('qtde_vendas_delivery').asstring,'D',7, ' ') +
                        AcertaTexto(format  ('%.2f',[valor_media_delivery]), 'D', 9, ' ') +
                        AcertaTexto(format  ('%.2f',[qrcaixa.FieldByName('total_delivery').asfloat]), 'D', 13, ' ') + slineBreak;

  if qrcaixa.FieldByName('qtde_vendas_balcao').AsFloat > 0.0 then
    valor_media_balcao := qrcaixa.FieldByName('total_balcao').asfloat / qrcaixa.FieldByName('qtde_vendas_balcao').AsFloat
  else
    valor_media_balcao := 0.0;
  quantidade_vendas := quantidade_vendas + qrcaixa.FieldByName('qtde_vendas_balcao').Asinteger;
  valor_total_vendas := valor_total_vendas + qrcaixa.FieldByName('total_balcao').asfloat;

  str_impressao := str_impressao +
                  'BALCAO       ' +
                        AcertaTexto(qrcaixa.FieldByName('qtde_vendas_balcao').asstring,'D',7, ' ') +
                        AcertaTexto(format  ('%.2f',[valor_media_balcao]), 'D', 9, ' ') +
                        AcertaTexto(format  ('%.2f',[qrcaixa.FieldByName('total_balcao').asfloat]), 'D', 13, ' ') + slineBreak;

  if qrcaixa.FieldByName('qtde_vendas_comanda').AsFloat > 0.0 then
    valor_media_comanda := qrcaixa.FieldByName('total_comanda').asfloat / qrcaixa.FieldByName('qtde_vendas_comanda').AsFloat
  else
    valor_media_comanda := 0.0;
  quantidade_vendas := quantidade_vendas + qrcaixa.FieldByName('qtde_vendas_comanda').Asinteger;
  valor_total_vendas := valor_total_vendas + qrcaixa.FieldByName('total_comanda').asfloat;


  str_impressao := str_impressao +
                  'COMANDA      ' +
                        AcertaTexto(qrcaixa.FieldByName('qtde_vendas_comanda').asstring,'D',7, ' ') +
                        AcertaTexto(format  ('%.2f',[valor_media_comanda]), 'D', 9, ' ') +
                        AcertaTexto(format  ('%.2f',[qrcaixa.FieldByName('total_comanda').asfloat]), 'D', 13, ' ') + slineBreak;

  if qrcaixa.FieldByName('qtde_vendas_pdv').AsFloat > 0.0 then
    valor_media_pdv := qrcaixa.FieldByName('total_pdv').asfloat / qrcaixa.FieldByName('qtde_vendas_pdv').AsFloat
  else
    valor_media_pdv := 0.0;

  quantidade_vendas := quantidade_vendas + qrcaixa.FieldByName('qtde_vendas_pdv').Asinteger;
  valor_total_vendas := valor_total_vendas + qrcaixa.FieldByName('total_pdv').asfloat;

  if quantidade_vendas>0 then
    valor_media_vendas := valor_total_vendas / quantidade_vendas
  else
    valor_media_vendas := valor_total_vendas;

  str_impressao := str_impressao +
                  'PDV          ' +
                        AcertaTexto(qrcaixa.FieldByName('qtde_vendas_pdv').asstring,'D',7, ' ') +
                        AcertaTexto(format  ('%.2f',[valor_media_pdv]), 'D', 9, ' ') +
                        AcertaTexto(format  ('%.2f',[qrcaixa.FieldByName('total_pdv').asfloat]), 'D', 13, ' ') + slineBreak +
                  '------------------------------------------' + sLineBreak +
                  'TOTAL:         ' +
                      AcertaTexto(format  ('%d',[quantidade_vendas]), 'D', 5, ' ') +
                      AcertaTexto(format  ('%.2f',[valor_media_vendas]), 'D', 9, ' ') +
                      AcertaTexto(format  ('%.2f',[valor_total_vendas]), 'D', 13, ' ') + slineBreak ;
                      str_impressao := str_impressao +  '------------------------------------------' + slinebreak+
                  'TAXA DE SERVICO/ENTREGA:'+ AcertaTexto(format  ('R$ %.2f',[qrcaixa.FieldByName('acrescimo_venda').asfloat]), 'D', 13, ' ') + slineBreak +
                  'CAIXINHA ENTREGADOR:    '+ AcertaTexto(format  ('R$ %.2f',[qrcaixa.FieldByName('caixinha_entregador').asfloat]), 'D', 13, ' ') + slineBreak +
                  'COUVERT:               '+ AcertaTexto(format  ('R$ %.2f',[qrcaixa.FieldByName('valor_couvert').asfloat]), 'D', 13, ' ') + slineBreak ;




  //--- Alterei aqui 27/10/2017

  str_impressao := str_impressao+   '------------------------------------------' + sLineBreak ;


  str_impressao := str_impressao + '---- PRODUTOS VENDIDOS POR FATURAMENTO ---' + slineBreak +
                 'PROD/SERV.            QTDE. VL.TOTAL PERC.' + slineBreak +
                 '------------------------------------------' +slinebreak;

  // relatório produtos vendidos qrRelProdutosVendidos
  qrRelProdutosVendidos.Close;
  indice := qrRelProdutosVendidos.SQL.Count;
  qrRelProdutosVendidos.SQL.Strings[indice-1]  := 'order by valor_total_item desc';
  qrRelProdutosVendidos.ParamByName('id_caixa').AsInteger:= qrCaixa.FieldByName('id_caixa').AsInteger;
  qrRelProdutosVendidos.ParamByName('emp').AsInteger:= qrCaixa.FieldByName('id_empresa').AsInteger;
  qrRelProdutosVendidos.Open;
  Categoria := qrRelProdutosVendidos.FieldByName('desc_categoria').asstring; // Categoria
  qtde := 0;

  //while not qrRelProdutosVendidos.eof and (qtde < 10) do //10 produtos mais vendidos
  while not qrRelProdutosVendidos.eof do // todos produtos vendidos
  begin
    if total_produtos >0 then
      produto_percent := qrRelProdutosVendidos.FieldByName('valor_total_item').asfloat / total_produtos * 100
    else
      produto_percent := 100;

    str_impressao:= str_impressao +
                 AcertaTexto(qrRelProdutosVendidos.FieldByName('desc_produto').asstring,'E',19, ' ') +
                 AcertaTexto(format  ('%.2f',[qrRelProdutosVendidos.FieldByName('qtde_total_item').asfloat]), 'D', 8, ' ') +
                 AcertaTexto(format  ('%.2f',[qrRelProdutosVendidos.FieldByName('valor_total_item').asfloat]), 'D', 9, ' ') +
                 AcertaTexto(format  ('%.2f',[produto_percent]), 'D', 6, ' ') + slineBreak;

    inc(qtde);
    qrRelProdutosVendidos.Next;
  end;

  qrRelProdutosVendidos.Close;
  indice := qrRelProdutosVendidos.SQL.Count;
  qrRelProdutosVendidos.SQL.Strings[indice-1] := 'order by mat.cat_001, qtde_total_item desc, mat.mat_003';

  str_impressao:= str_impressao +
                  ' '  + sLineBreak  +
                  '-----------VENDAS POR CATEGORIA-----------' + slineBreak +
                  'PRODUTO                QTE.    VALOR TOTAL' + slinebreak +
                  '------------------------------------------' + sLineBreak;

  // Relatorio de categorias vendidas
  qrRelProdutosVendidos.Close;
  qrRelProdutosVendidos.ParamByName('id_caixa').AsInteger:= qrCaixa.FieldByName('id_caixa').AsInteger;
  qrRelProdutosVendidos.ParamByName('emp').AsInteger:= qrCaixa.FieldByName('id_empresa').AsInteger;
  qrRelProdutosVendidos.Open;
  quantidade_total_produtos := 0.0; //era aux1
  valor_total_produtos := 0.0; //era aux2
  quantidade_produto := 0.0;  //era aux3
  valor_produto := 0.0; //era aux4
   Categoria := qrRelProdutosVendidos.FieldByName('desc_categoria').asstring; // Categoria
  descricao:= qrRelProdutosVendidos.FieldByName('desc_produto').asstring; // Categoria


   while not qrRelProdutosVendidos.eof do
    begin
      quantidade_total_produtos := quantidade_total_produtos + qrRelProdutosVendidos.FieldByName('qtde_total_item').asfloat;
      valor_total_produtos := valor_total_produtos + qrRelProdutosVendidos.FieldByName('valor_total_item').asfloat;

      if (Categoria = qrRelProdutosVendidos.FieldByName('desc_categoria').asstring) then
      begin
        quantidade_produto := quantidade_produto + qrRelProdutosVendidos.FieldByName('qtde_total_item').asfloat;
        valor_produto := valor_produto + qrRelProdutosVendidos.FieldByName('valor_total_item').asfloat;
      end
      else
      begin
        str_impressao:= str_impressao +
              AcertaTexto(Categoria,'E',19, ' ') +
              AcertaTexto(format  ('%.1f',[quantidade_produto]), 'D', 7, ' ')+
              AcertaTexto(format  ('%.2f',[valor_produto]), 'D', 16, ' ') + slineBreak;

        quantidade_produto := qrRelProdutosVendidos.FieldByName('qtde_total_item').asfloat;
        valor_produto :=qrRelProdutosVendidos.FieldByName('valor_total_item').asfloat;
        Categoria := qrRelProdutosVendidos.FieldByName('desc_categoria').asstring;
      end;

      qrRelProdutosVendidos.Next;
    end;

    str_impressao:= str_impressao +
              AcertaTexto(Categoria,'E',19, ' ') +
              AcertaTexto(format  ('%.1f',[quantidade_produto]), 'D', 7, ' ')+
              AcertaTexto(format  ('%.2f',[valor_produto]), 'D', 16, ' ') + slineBreak;

    str_impressao:= str_impressao +
                    '                   ------- ---------------' + sLineBreak +
                    'TOTAL PRODUTOS:    ' +
                        AcertaTexto(format  ('%.1f',[quantidade_total_produtos]), 'D', 7, ' ') +
                        AcertaTexto(format  ('%.2f',[valor_total_produtos]), 'D', 16, ' ') + slineBreak +
                    ' ' + sLineBreak;

//-------------------------------------------------------------------------------------------------
  // Relatório de produtos cancelados
  qrRelProdutosCancelados.Close;
  qrRelProdutosCancelados.ParamByName('id_caixa').AsInteger:= qrCaixa.FieldByName('id_caixa').AsInteger;
  qrRelProdutosCancelados.ParamByName('emp').AsInteger:= qrCaixa.FieldByName('id_empresa').AsInteger;
  qrRelProdutosCancelados.Open;

  if qrRelProdutoscancelados.RecordCount > 0 then
  begin
    str_impressao:= str_impressao +
                  '------------------------------------------' + sLineBreak +
                  '               AUDITORIA                  ' + sLineBreak +
                  '------------------------------------------' + sLineBreak +
                  ' '  + sLineBreak  +

                  '-----------EXCLUSAO DE PRODUTOS-----------' + sLineBreak +
                  'ORIGEM     FUNC.             AUTORIZ.     ' + slinebreak +
                  'DATA/HORA PED.             DATA/HORA EXCL.' + slinebreak +
                  'PRODUTO            QTDE.             VALOR' + slinebreak +
                  'MOTIVO                                    ' + slinebreak +
                  '------------------------------------------' + sLineBreak;

    while not qrRelProdutoscancelados.Eof do
    begin
      //if qrRelProdutosCancelados.FieldByName('Tipo_Cancelamento').asstring = 'P' then         // 21.10.2107   Rafael
      //begin
      str_impressao:= str_impressao +
          AcertaTexto(qrRelProdutosCancelados.FieldByName('mesa').asstring,'E',11, ' ') +
          AcertaTexto(qrRelProdutosCancelados.FieldByName('nome_usuario').asstring,'E',18, ' ') +
          AcertaTexto(qrRelProdutosCancelados.FieldByName('nome_usuario').asstring,'E',13, ' ') + slineBreak +
          AcertaTexto(FormatDateTime('dd/mm/yyyy hh:mm', qrRelProdutosCancelados.FieldByName('data_abertura_venda').AsDateTime),'E',21, ' ') +
          AcertaTexto(FormatDateTime('dd/mm/yyyy hh:mm', qrRelProdutosCancelados.FieldByName('data_abertura_venda').AsDateTime),'E',21, ' ') + slineBreak +
          AcertaTexto(qrRelProdutosCancelados.FieldByName('desc_produto').asstring,'E',18, ' ') +
          AcertaTexto(format  ('%.1f',[qrRelProdutosCancelados.FieldByName('qtde_total_item').asfloat]), 'D', 6, ' ')+
          AcertaTexto(format  ('%.2f',[qrRelProdutosCancelados.FieldByName('valor_total_item').asfloat]), 'D', 18, ' ') + slineBreak+
          'MOTIVO: ' +
          AcertaTexto(qrRelProdutosCancelados.FieldByName('observacao_cancelamento').asstring,'E',27, ' ') + slineBreak +    // Motivo cancelamento campo justificativa_cancelamento
          '------------------------------------------' + sLineBreak;
      //end;

      qrRelProdutosCancelados.Next;
    end;
  end;


  str_impressao := str_impressao +       //Inicio Valores de conferencia

                  '---------VALORES DE CONFERENCIA-----------' + slineBreak +
                  'FORMA PAG.    VL SIST.  VL. INFO  DIFEREN.' + slineBreak +
                  '------------------------------------------' + sLineBreak;

  qrConferencia.Close;
  qrConferencia.ParamByName('id_caixa').AsInteger := qrCaixa.FieldByName('id_caixa').AsInteger;
  qrConferencia.ParamByName('emp').AsInteger      := qrCaixa.FieldByName('id_empresa').AsInteger;
  qrConferencia.open;

  valor_total_forma     := 0.0;
  valor_total_informado := 0.0;
  valor_total_diferenca := 0.0;
  valor_forma           := 0.0;
  valor_informado       := 0.0;
  diferenca_forma       := 0.0;
  valor_abertura_caixa  := 0.0;

  valor_abertura_caixa:= qrcaixa.FieldByName('valor_inicial').AsFloat;

  while not qrConferencia.eof do
  begin
    Categoria := qrConferencia.FieldByName('desc_forma').asstring;

    if qrConferencia.FieldByName('desc_forma').asstring = 'DINHEIRO' then
      valor_informado := qrCaixa.FieldByName('valor_informado_dinheiro').AsFloat
    else
      valor_informado := qrConferencia.FieldByName('total_forma').asfloat;

    diferenca := (valor_informado - qrConferencia.FieldByName('total_forma').asfloat);

    valor_total_forma     := valor_total_forma + qrConferencia.FieldByName('total_forma').asfloat;
    valor_total_informado := valor_total_informado + valor_informado;

    valor_total_diferenca := valor_total_diferenca + diferenca;

    valor_forma := qrConferencia.FieldByName('total_forma').asfloat;

    diferenca_forma := diferenca;

    str_impressao:= str_impressao +
                    AcertaTexto(Categoria,'E', 13, ' ') +
                    AcertaTexto(format  ('%.2f',[valor_forma]), 'D', 9, ' ') +
                    AcertaTexto(format  ('%.2f',[valor_informado]), 'D', 10, ' ') +
                    AcertaTexto(format  ('%.2f',[diferenca_forma]), 'D', 10, ' ') + slineBreak;

    qrConferencia.Next;
  end;

  str_impressao := str_impressao +
                  '             --------- --------- ---------' + slineBreak +
                  'TOTAL GERAL  ' +
                      AcertaTexto(format  ('%.2f',[valor_total_forma]), 'D', 09, ' ') +
                      AcertaTexto(format  ('%.2f',[valor_total_informado]), 'D', 10, ' ') +
                      AcertaTexto(format  ('%.2f',[valor_total_diferenca]), 'D', 10, ' ') + slineBreak +
                    '------------------------------------------' + sLineBreak;

    str_impressao := str_impressao +
    '<n>SALDO DO CAIXA</n>:   ' + AcertaTexto(format  ('<e>R$ %.2f',[valor_total]), 'E', 13, ' ') +'</e>'+ slineBreak +
    '------------------------------------------' + sLineBreak+
    '<n>'+'SALDO INFORMADO:  </n>'+ AcertaTexto(format  ('<e>R$ %.2f',[qrcaixa.FieldByName('total_informado').asfloat]), 'E', 13, ' ')+ '</e>' +  slineBreak +
      '------------------------------------------' + sLineBreak+
    '<n>'+'DIFERENCA:        </n>'+ AcertaTexto(format  ('<e>R$ %.2f',[qrcaixa.FieldByName('diferenca').asfloat]), 'E', 13, ' ')+ '</e>'+  slineBreak +
      '------------------------------------------' + sLineBreak+
    '</corte_total>';

  //envia a string do relatorio para pre visualizar
  frmVisualizaRelatorioTexto := TfrmVisualizaRelatorioTexto.Create(self,'CAIXA',str_impressao);
  frmVisualizaRelatorioTexto.ShowModal;
  frmVisualizaRelatorioTexto.Free;
end;

procedure TfrmCaixaStatus.bRelCaixaClick(Sender: TObject);
var lPoint : tpoint;
begin
  lPoint := bRelCaixa.ClientToScreen(Point(0,0));
  pmRelatorioCaixa.Popup(lPoint.X, lPoint.Y+bRelCaixa.Height );
end;


procedure TfrmCaixaStatus.btRelDescontoItensClick(Sender: TObject);
begin
 AbreRelatorio(qrRelDescontoItens,repDescontoItens);
end;

procedure TfrmCaixaStatus.btRelDescontoVendasClick(Sender: TObject);
var
  lPoint: tpoint;
begin
  lPoint := btRelDescontoVendas.ClientToScreen(Point(0,0));
  pmDescVendas.Popup(lPoint.X, lPoint.Y+btRelDescontoVendas.Height);
end;

procedure TfrmCaixaStatus.btRelMovFormaPgtoClick(Sender: TObject);
begin
  AbreRelatorio(qrRelMovimentoFormaPag,repMovimentoFormaPag);
end;

procedure TfrmCaixaStatus.btRelProdutosDevolvidosClick(Sender: TObject);
begin
  AbreRelatorio(qrRelProdutosDevolvidos,repProdutosDevolvidos);
end;

procedure TfrmCaixaStatus.btRelProdutosVendidosClick(Sender: TObject);
begin
   AbreRelatorio(qrRelProdutosVendidos,repProdutosVendidos);
end;

procedure TfrmCaixaStatus.btRelProdutosVendidosLucroClick(Sender: TObject);
begin
  AbreRelatorio(qrRelProdutosVendidosLucro,repProdutosVendidosLucro);
end;

procedure TfrmCaixaStatus.AbreRelatorio( var Query: TUniQuery ; var relatorio : TfrxReport);
begin
  if qrCaixa.Active then
  begin
    if qrCaixa.RecordCount>0 then
    begin
      Query.Close;;
      Query.ParamByName('id_caixa').AsInteger:= qrCaixa.FieldByName('id_caixa').AsInteger;
      Query.ParamByName('emp').AsInteger:= qrCaixa.FieldByName('id_empresa').AsInteger;
      Query.Open;
      if Query.RecordCount>0 then
      begin
        relatorio.PrintOptions.Printer := sCamImpCaixa;
        relatorio.PrepareReport;
        relatorio.ShowReport;
      end
      else
        Application.MessageBox('Não existem dados para exibir neste relatório!', 'Atenção', MB_ICONINFORMATION);
    end
    else
      Application.MessageBox('Não existe caixa selecionado para consultar!', 'Atenção', MB_ICONINFORMATION);
  end;
end;

procedure TfrmCaixaStatus.btRelRetiradasClick(Sender: TObject);
begin
  dsRetiradaSuprimento.DataSet:=qrRelRetiradas;
  abreRepRetiradaSuprimento(dsRetiradaSuprimento, 'RELATÓRIO DE RETIRADAS');
end;

procedure TfrmCaixaStatus.btRelSuprimentoClick(Sender: TObject);
begin
  dsRetiradaSuprimento.DataSet:=qrRelSuprimentos;
  abreRepRetiradaSuprimento(dsRetiradaSuprimento, 'RELATÓRIO DE SUPRIMENTOS');
end;

procedure TfrmCaixaStatus.btRelVendasCanceladasClick(Sender: TObject);
begin
  AbreRelatorio(qrRelProdutosCancelados,repProdutosCancelados);
end;

procedure TfrmCaixaStatus.btRelVendasFiadoClick(Sender: TObject);
begin
  AbreRelatorio(qrRelVendasFiado,repVendasFiado);
end;

procedure TfrmCaixaStatus.abreRepRetiradaSuprimento(var dsRel :TDataSource; titulo_rep : string );

begin
  if qrCaixa.Active then
  begin
    if qrCaixa.RecordCount>0 then
    begin
      dsRel.DataSet.Close;
      TUniQuery(dsRel.DataSet).ParamByName('id_caixa').AsInteger:= qrCaixa.FieldByName('id_caixa').AsInteger;
      TUniQuery(dsRel.DataSet).ParamByName('emp').AsInteger:= qrCaixa.FieldByName('id_empresa').AsInteger;
      dsRel.DataSet.Open;
      if dsRel.DataSet.RecordCount>0 then
      begin
        repRetiradasSuprimentos.PrintOptions.Printer := sCamImpCaixa;
        repRetiradasSuprimentos.Variables['sTituloRep'] := QuotedStr(titulo_rep);
        repRetiradasSuprimentos.PrepareReport;
        repRetiradasSuprimentos.ShowReport;
        //repRetiradasSuprimentos.Print;
      end
      else
        Application.MessageBox('Não existem dados para exibir neste relatório!', 'Atenção', MB_ICONINFORMATION);
    end
    else
      Application.MessageBox('Não existe caixa selecionado para consultar!', 'Atenção', MB_ICONINFORMATION);
  end;
end;

procedure TfrmCaixaStatus.btRelAcrescimosPorUsuarioClick(Sender: TObject);
begin
  AbreRelatorio(qrRelAcrescimosVendasPorUsuario,repAcrescimosVendasPorUsuario);
end;

procedure TfrmCaixaStatus.AdvGlowButton1Click(Sender: TObject);
begin
RepCAIXA.LoadFromFile('C:\EliteFood\Relatorios\CAIXARESUMO.fr3');
RepCAIXA.PrepareReport;
RepCAIXA.ShowReport;
end;

procedure TfrmCaixaStatus.AdvGlowButton2Click(Sender: TObject);
begin
  AbreRelatorio(qrRelVendasCFe,repVendasCFe);
end;

procedure TfrmCaixaStatus.AdvGlowButton5Click(Sender: TObject);
begin
  dsRetiradaSuprimento.DataSet:=qrRelRetiradas;
  abreRepRetiradaSuprimento(dsRetiradaSuprimento, 'RELATÓRIO DE RETIRADAS')
end;

procedure TfrmCaixaStatus.btDetalheVendasClick(Sender: TObject);
var lPoint : tpoint;
begin
  lPoint := btDetalheVendas.ClientToScreen(Point(0,0));
  pmOpcoesDetalhamentoVendas.Popup(lPoint.X, lPoint.Y+btDetalheVendas.Height);
end;

procedure TfrmCaixaStatus.btRelAcrescimosClick(Sender: TObject);
begin
  AbreRelatorio(qrRelAcrescimosVendas,repAcrescimosVendas);
end;

procedure TfrmCaixaStatus.btRelAcrescimosCouvertClick(Sender: TObject);
begin
  AbreRelatorio(qrRelAcrescimosVendasCouvert,repAcrescimosVendasCouvert);
end;

procedure TfrmCaixaStatus.btRelTotalFormapagClick(Sender: TObject);
begin
  AbreRelatorio(qrRelMovimentoFormaPag,repMovimentoFormaPag);
end;

constructor TfrmCaixaStatus.Create(sender: tcomponent);
var dia, mes, ano : word;
    acesso : boolean;
    config_imp : string;
begin
  inherited Create(sender);

  buscacampo(acesso , 'select b_acesso_caixa from usuarios where usu_001=' + inttostr(recproj.iUsuario), '', false);
  frmMenu.VerificaPermissaoAcesso(acesso);
  buscacampo(todos_caixas , 'select b_permite_visualizar_todos_caixas from usuarios where usu_001=' + inttostr(recproj.iUsuario), '', false);
  consulta_caixa:=qrcaixa.SQL.Text;// Captura a consulta query original da QRCAIXA

  //carrega a configuração de numero de colunas da impressora pos do caixa
  config_imp := ExtractFilePath(Application.ExeName) + 'CONF\IMP_CAIXA.xml';
  if FileExists(config_imp) then
    numero_colunas_impressora := LerIntegerConfig('COLUNAS', config_imp)
  else
    numero_colunas_impressora := 48;

  //preenche os filstros de dad com o primeiro dia do mes e com o dia atual
  DecodeDate(date, ano, mes, dia);
  dtpDataInicial.Date:= EncodeDate(ano, mes, 1);
  dtpDataFinal.Date:=EncodeDate(ano, mes, dia);
  FiltraCaixaData;
  CarregaParametrosConfig;
end;

procedure TfrmCaixaStatus.Delivery1Click(Sender: TObject);
begin
  AbreRelatorioDetalhamentoVendaDelivery(true);
end;

procedure TfrmCaixaStatus.DeliveryBalco1Click(Sender: TObject);
begin
  AbreRelatorioDetalhamentoVendaDelivery(false);
end;


procedure TfrmCaixaStatus.AbreRelatorioDesconto(com_Cliente: Boolean);
var
  mmCliente: TfrxMemoView;
  Detalhe: TfrxMasterData;
begin
 //Rafael AbreRelatorio(qrRelDescontoVendas,repDescontoVendas);
  if qrCaixa.Active then
  begin
    if qrCaixa.RecordCount>0 then
    begin
      qrRelDescontoVendas.Close;;
      qrRelDescontoVendas.ParamByName('id_caixa').AsInteger:= qrCaixa.FieldByName('id_caixa').AsInteger;
      qrRelDescontoVendas.ParamByName('emp').AsInteger:= qrCaixa.FieldByName('id_empresa').AsInteger;
      qrRelDescontoVendas.Open;
      if qrRelDescontoVendas.RecordCount>0 then
      begin
        mmCliente := TfrxMemoView (repDescontoVendas.findComponent('Nome_Cliente'));
        mmCliente.Visible := com_Cliente;
        if com_Cliente then
          mmCliente.Height := 0.40
        else
          mmCliente.Height := 0;

        Detalhe := TfrxMasterData(repDescontoVendas.FindComponent('MasterData1'));
        if com_cliente then
          Detalhe.Height := 1
        else
          Detalhe.Height := 0.5;

        repDescontoVendas.PrintOptions.Printer := sCamImpCaixa;
        repDescontoVendas.PrepareReport;
        repDescontoVendas.ShowReport;
      end
      else
        Application.MessageBox('Não existem dados para exibir neste relatório!', 'Atenção', MB_ICONINFORMATION);
    end
    else
      Application.MessageBox('Não existe caixa selecionado para consultar!', 'Atenção', MB_ICONINFORMATION);
  end;
end;

procedure TfrmCaixaStatus.AbreRelatorioDetalhamentoVendaDelivery(com_taxa_entrega : boolean);
begin
  if qrCaixa.Active then
  begin
    if qrCaixa.RecordCount>0 then
    begin
      qrRelDetalheVendas.Close;;
      qrRelDetalheVendas.ParamByName('id_caixa').AsInteger:= qrCaixa.FieldByName('id_caixa').AsInteger;
      qrRelDetalheVendas.ParamByName('emp').AsInteger:= qrCaixa.FieldByName('id_empresa').AsInteger;
      qrRelDetalheVendas.ParamByName('b_taxaentrega').asboolean:= com_taxa_entrega;
      qrRelDetalheVendas.Open;
      if qrRelDetalheVendas.RecordCount>0 then
      begin
        repDetalheVendas.PrintOptions.Printer := sCamImpCaixa;
        repDetalheVendas.PrepareReport;
        repDetalheVendas.ShowReport;
      end
      else
        Application.MessageBox('Não existem dados para exibir neste relatório!', 'Atenção', MB_ICONINFORMATION);
    end
    else
      Application.MessageBox('Não existe caixa selecionado para consultar!', 'Atenção', MB_ICONINFORMATION);
  end;
end;

procedure TfrmCaixaStatus.detalhado1Click(Sender: TObject);
begin
  ImprimeRelatorioDetalhadoCaixa;
end;

procedure TfrmCaixaStatus.dtpDataFinalChange(Sender: TObject);
begin
  FiltraCaixaData;
end;

procedure TfrmCaixaStatus.dtpDataInicialChange(Sender: TObject);
begin
  FiltraCaixaData
end;

procedure TfrmCaixaStatus.FiltraCaixaData;
var dia, mes, ano : word;
begin
  DecodeDate(dtpDataFinal.Date, ano, mes, dia);
  qrCaixa.Close;
  // Faz a verificação se o usuario pode visualizar todos os caixas, se ele não poder , segue o codigo abaixo     05/04/2018
  if todos_caixas=false then
  begin
    qrcaixa.SQL.Text:=consulta_caixa+ ' desc limit 1';
  end;

  qrCaixa.ParamByName('data1').AsDate:=dtpDataInicial.Date;
  qrCaixa.ParamByName('data2').AsDate:=EncodeDate(ano, mes, dia) + 1 ;
  qrCaixa.ParamByName('id_empresa').asinteger:=RecProj.iEmp;
  qrCaixa.open;

  //Faz a multiplicação por -1 para inverter os sinais da diferenca
  qrCaixa.First;
  while not qrCaixa.Eof do
  begin
    if  qrCaixadiferenca.AsFloat <> 0 then
    begin
      qrCaixa.Edit;
      qrCaixadiferenca.AsFloat:= qrCaixadiferenca.AsFloat * -1;
      qrCaixa.Post;
    end;

    qrCaixa.Next;
  end;

  qrCaixa.First;
end;

procedure TfrmCaixaStatus.FormShow(Sender: TObject);
begin
  self.Width := self.Constraints.MinWidth;
  self.Height := self.Constraints.MinHeight;
end;

procedure TfrmCaixaStatus.ImprimiNomeClick(Sender: TObject);
begin
  AbreRelatorioDesconto(True);
end;

procedure TfrmCaixaStatus.NaoImprimiNomeClick(Sender: TObject);
begin
  AbreRelatorioDesconto(False);
end;

procedure TfrmCaixaStatus.qrCaixaAfterOpen(DataSet: TDataSet);
begin
  if qrCaixa.RecordCount>0 then qrCaixa.Last;
end;

procedure TfrmCaixaStatus.resumido1Click(Sender: TObject);
begin
  ImprimeRelatorioResumidoCaixa;
end;

procedure TfrmCaixaStatus.ImprimeRelatorioResumidoCaixa;
var str_impressao , str_data_fechamento, str_hora_fechamento: string;
    correcao_colunas_impressao : integer;
begin
  if qrCaixa.RecordCount>0 then
  begin

    if qrCaixa.FieldByName('data_fechamento').isnull then
    begin
      str_data_fechamento:='';
      str_hora_fechamento:='';
    end
    else
    begin
      str_data_fechamento:=formatdatetime('dd/mm/yyyy', qrCaixa.FieldByName('data_fechamento').AsDateTime);
      str_hora_fechamento:=formatdatetime('hh:nn', qrCaixa.FieldByName('hora_fechamento').AsDateTime);
    end;

    correcao_colunas_impressao := numero_colunas_impressora - 48;
    str_impressao := '</zera>' +
                  AcertaTexto(' INFORMACÕES CAIXA ', 'C', numero_colunas_impressora, '*') + sLineBreak +
                  '</linha_simples>' +sLineBreak +

                  'STATUS'+AcertaTexto(qrCaixa.FieldByName('desc_status').asString  , 'D', 42 + correcao_colunas_impressao) + sLineBreak +
                  'DATA DE ABERTURA'+AcertaTexto(formatdatetime('dd/mm/yyyy', qrCaixa.FieldByName('data_abertura').AsDateTime) , 'D', 32 + correcao_colunas_impressao) + sLineBreak +
                  'DATA DE FECHAMENTO'+AcertaTexto(str_data_fechamento, 'D', 30 + correcao_colunas_impressao) + sLineBreak +
                  'HORA DE ABERTURA'+AcertaTexto(formatdatetime('hh:nn', qrCaixa.FieldByName('hora_abertura').AsDateTime), 'D', 32 + correcao_colunas_impressao) + sLineBreak +
                  'HORA DE FECHAMENTO'+AcertaTexto(str_hora_fechamento, 'D', 30 + correcao_colunas_impressao) + sLineBreak +
                  'CAIXA INICIAL'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('valor_inicial').asFloat])  , 'D', 35 + correcao_colunas_impressao) + sLineBreak +
                  '</linha_simples>' +sLineBreak +

                  'VENDAS MESA'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('total_mesa').asFloat])  , 'D', 37 + correcao_colunas_impressao) + sLineBreak +
                  'VENDAS DELIVERY'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('total_delivery').asFloat])  , 'D', 33 + correcao_colunas_impressao) + sLineBreak +
                  'VENDAS BALCÃO'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('total_balcao').asFloat])  , 'D', 35 + correcao_colunas_impressao) + sLineBreak +
                  'VENDAS COMANDA'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('total_comanda').asFloat])  , 'D', 34 + correcao_colunas_impressao) + sLineBreak +
                  'VENDAS PDV'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('total_pdv').asFloat])  , 'D', 38 + correcao_colunas_impressao) + sLineBreak +
                  '</linha_simples>' +sLineBreak +

                  'TX. SERVIÇO / ENTREGA'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('acrescimo_venda').asFloat])  , 'D', 27 + correcao_colunas_impressao) + sLineBreak +
                  'CAIXINHA ENTREGADOR'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('caixinha_entregador').asFloat])  , 'D', 29 + correcao_colunas_impressao) + sLineBreak +
                  'COUVERT ARTÍSTICO'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('valor_couvert').asFloat])  , 'D', 31 + correcao_colunas_impressao) + sLineBreak +
                  'DESCONTOS'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('total_descontos').asFloat])  , 'D', 39 + correcao_colunas_impressao) + sLineBreak +
                  '</linha_simples>' +sLineBreak +

                  'DINHEIRO'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('total_pagamento_dinheiro').asFloat])  , 'D', 40 + correcao_colunas_impressao) + sLineBreak +
                  'CARTAO DÉBITO'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('total_pagamento_debito').asFloat])  , 'D', 35 + correcao_colunas_impressao) + sLineBreak +
                  'CARTÃO CRÉDITO'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('total_pagamento_credito').asFloat])  , 'D', 34 + correcao_colunas_impressao) + sLineBreak +
                  'CHEQUE'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('total_pagamento_cheque').asFloat])  , 'D', 42 + correcao_colunas_impressao) + sLineBreak +
                  'CREDIÁRIO'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('total_pagamento_fiado').asFloat])  , 'D', 39 + correcao_colunas_impressao) + sLineBreak +
                  'OUTRA FORMA'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('total_pagamento_outra').asFloat])  , 'D', 37 + correcao_colunas_impressao) + sLineBreak +
                  '</linha_simples>' +sLineBreak +

                  'SUPRIMENTO'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('total_suprimento').asFloat])  , 'D', 38 + correcao_colunas_impressao) + sLineBreak +
                  'RETIRADA'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('total_retirada').asFloat])  , 'D', 40 + correcao_colunas_impressao) + sLineBreak +
                  '</linha_simples>' +sLineBreak +

                  'OUTROS DÉBITOS'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('total_outros_debitos').asFloat])  , 'D', 34 + correcao_colunas_impressao) + sLineBreak +
                  'OUTROS CRÉDITOS'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('total_outros_creditos').asFloat])  , 'D', 33 + correcao_colunas_impressao) + sLineBreak +
                  'ESTORNO DE VENDAS'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('total_estorno').asFloat])  , 'D', 31 + correcao_colunas_impressao) + sLineBreak +
                  '</linha_simples>' +sLineBreak +

                  'SALDO ATUAL'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('saldo').asFloat])  , 'D', 37 + correcao_colunas_impressao) + sLineBreak +
                  'SALDO INFORMADO'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('total_informado').asFloat])  , 'D', 33 + correcao_colunas_impressao) + sLineBreak +
                  'DIFERENÇA'+AcertaTexto(format('R$ %.2f',[qrCaixa.FieldByName('diferenca').asFloat])  , 'D', 39 + correcao_colunas_impressao) + sLineBreak +
                  '</linha_simples>' +sLineBreak +

                  'QTD. VENDAS MESA'+AcertaTexto(qrCaixa.FieldByName('qtde_vendas_mesa').asString  , 'D', 32 + correcao_colunas_impressao) + sLineBreak +
                  'QTD. VENDAS DELIVERY'+AcertaTexto(qrCaixa.FieldByName('qtde_vendas_delivery').asString  , 'D', 28 + correcao_colunas_impressao) + sLineBreak +
                  'QTD. VENDAS BALCÃO'+AcertaTexto(qrCaixa.FieldByName('qtde_vendas_balcao').asString  , 'D', 30 + correcao_colunas_impressao) + sLineBreak +
                  'QTD. VENDAS COMANDA'+AcertaTexto(qrCaixa.FieldByName('qtde_vendas_comanda').asString  , 'D', 29 + correcao_colunas_impressao) + sLineBreak +
                  'QTD. VENDAS PDV'+AcertaTexto(qrCaixa.FieldByName('qtde_vendas_pdv').asString  , 'D', 33 + correcao_colunas_impressao) + sLineBreak +
                  '</linha_simples>' +sLineBreak +

                  'USUÁRIO'+AcertaTexto(qrCaixa.FieldByName('nome_usuario').asString, 'D', 41 + correcao_colunas_impressao) + sLineBreak +
                  'USUÁRIO FECH.'+AcertaTexto(qrCaixa.FieldByName('nome_usuario_fechamento').asString  , 'D', 35 + correcao_colunas_impressao) + sLineBreak +
                  'TERMINAL'+AcertaTexto(qrCaixa.FieldByName('terminal').asString, 'D', 40 + correcao_colunas_impressao) + sLineBreak +
                  '</linha_simples>' +sLineBreak +

                  qrCaixa.FieldByName('observacao').asString+
                  '</linha_simples></corte_total>' +sLineBreak;

    //envia a string do relatorio para previsualizar
    frmVisualizaRelatorioTexto := TfrmVisualizaRelatorioTexto.Create(self,'CAIXA',str_impressao);
    frmVisualizaRelatorioTexto.ShowModal;
    frmVisualizaRelatorioTexto.Free;

  end
  else
  begin
    Application.MessageBox('Não existe caixa selecionado para imprimir!', 'Atenção', MB_ICONINFORMATION);
  end;
end;

end.
