unit uVendaBalcao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess,
  Uni, AdvEdit, DBAdvEd, JvExStdCtrls, JvEdit, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, Vcl.DBCtrls, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, Vcl.ActnList, cxGridLevel,
  cxGridCardView, cxGridDBCardView, cxGridCustomLayoutView, system.Math,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, AdvGlowButton, JvDataSource, JvValidateEdit,
  dxGDIPlusClasses, System.Actions, cxMaskEdit, cxButtonEdit, cxSpinEdit,
  cxDBEdit, AdvGroupBox, ACBRDevice, ACBrBase, ACBrBAL, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  TfrmVendaBalcao = class(TForm)
    qrVenda: TUniQuery;
    qrVendaid_cliente: TIntegerField;
    qrVendadata_cadastro: TDateTimeField;
    qrVendatipo_venda: TWideStringField;
    qrVendavenda_orcamento: TIntegerField;
    qrVendasit_001: TIntegerField;
    qrVendausu_001_1: TIntegerField;
    qrVendaven_001: TIntegerField;
    qrVendaemp_001: TIntegerField;
    qrVendastatus_desc: TWideStringField;
    qrVendatotal_venda: TFloatField;
    qrVendatotal_itens: TFloatField;
    qrVendaacrescimo: TFloatField;
    qrVendadesconto_percent: TFloatField;
    qrVendadesconto: TFloatField;
    qrVendaid_caixa_abertura: TIntegerField;
    qrVendaobservacao: TWideStringField;
    qrVendacpf_cliente: TWideStringField;
    qrVendab_taxa_entrega: TBooleanField;
    dsVenda: TDataSource;
    qrBuscaItem: TUniQuery;
    qrBuscaItemid_material: TIntegerField;
    qrBuscaItemdescricao: TWideStringField;
    qrBuscaItemunidade: TWideStringField;
    qrBuscaItemvalor_unit: TFloatField;
    qrBuscaItemcod_ref: TWideStringField;
    qrBuscaItemvalortotal: TCurrencyField;
    qrBuscaItemultimo_item: TIntegerField;
    qrBuscaItemquantidade: TFloatField;
    qrBuscaItemcod_impressora: TIntegerField;
    qrBuscaItemdescricao_old: TWideStringField;
    qrBuscaItemdescricao_p: TWideStringField;
    qrBuscaItemdescricao_m: TWideStringField;
    qrBuscaItemdescricao_g: TWideStringField;
    qrBuscaItemdescricao_gg: TWideStringField;
    qrBuscaItemdescricao_extra: TWideStringField;
    qrBuscaItemtamanho_padrao: TWideStringField;
    qrBuscaItemb_venda_tamanho: TBooleanField;
    qrBuscaItemvalor_tam_p: TFloatField;
    qrBuscaItemvalor_tam_m: TFloatField;
    qrBuscaItemvalor_tam_g: TFloatField;
    qrBuscaItemvalor_tam_gg: TFloatField;
    qrBuscaItemvalor_tam_extra: TFloatField;
    dsBuscaItem: TDataSource;
    DBText3: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    qrVendaterminal_abertura: TWideStringField;
    qrVendaItem: TUniQuery;
    qrVendaItemid_empresa: TIntegerField;
    qrVendaItemid_venda: TIntegerField;
    qrVendaItemnro_item: TIntegerField;
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
    qrVendaItemqtdevenda: TFloatField;
    qrVendaItemdesc_tamanho: TWideStringField;
    qrVendaItemitem_fracionado: TIntegerField;
    qrVendaItemacrescimo: TFloatField;
    dsVendaItem: TDataSource;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1nro_item: TcxGridDBColumn;
    cxGrid2DBTableView1descricao_item: TcxGridDBColumn;
    cxGrid2DBTableView1qtdevenda: TcxGridDBColumn;
    cxGrid2DBTableView1vlrvenda: TcxGridDBColumn;
    cxGrid2DBTableView1valor_total: TcxGridDBColumn;
    cxGrid2DBCardView1: TcxGridDBCardView;
    cxGrid2DBCardView1observacao: TcxGridDBCardViewRow;
    cxGrid2DBCardView2: TcxGridDBCardView;
    cxGrid2DBCardView3: TcxGridDBCardView;
    cxGrid2DBCardView3descricao: TcxGridDBCardViewRow;
    cxGrid2Level1: TcxGridLevel;
    ActionList1: TActionList;
    acAberturaVenda: TAction;
    acFecharVenda: TAction;
    acCancelarVenda: TAction;
    acPesquisarItem: TAction;
    acCancelaItem: TAction;
    acObservacaoItem: TAction;
    acInsereProdutoFracionado: TAction;
    acOpcionaisItem: TAction;
    qrInsereItem: TUniQuery;
    acConsultarProduto: TAction;
    jvdsBuscaItem: TJvDataSource;
    edValor: TJvValidateEdit;
    edQuantidade: TJvValidateEdit;
    acAbreBuscaCliente: TAction;
    qrVendanome_cliente: TWideStringField;
    edObservacaoItem: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    pnTopo: TPanel;
    DBText5: TDBText;
    imgFundo: TImage;
    pnlAcoes: TPanel;
    pnBotoesAcoesMesa: TFlowPanel;
    btImprimir: TAdvGlowButton;
    btFecharMesa: TAdvGlowButton;
    btInserirFracionado: TAdvGlowButton;
    btTransferencia: TAdvGlowButton;
    btConfiguracoes: TAdvGlowButton;
    btInserirItem: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    btnSair: TAdvGlowButton;
    edCodProduto: TcxButtonEdit;
    AdvGroupBox1: TAdvGroupBox;
    Label4: TLabel;
    DBText4: TDBText;
    DBText1: TDBText;
    Label9: TLabel;
    Label10: TLabel;
    DBText2: TDBText;
    qrVendanro_venda: TIntegerField;
    cxGrid2DBTableView1Desconto: TcxGridDBColumn;
    dsVendaItemOpcional: TDataSource;
    qrVendaItemOpcional: TUniQuery;
    qrVendaItemOpcionalid_venda: TIntegerField;
    qrVendaItemOpcionalid_empresa: TIntegerField;
    qrVendaItemOpcionalid_vendaitem: TIntegerField;
    qrVendaItemOpcionalid_opcional: TIntegerField;
    qrVendaItemOpcionalvalor: TFloatField;
    qrVendaItemOpcionaldescricao: TWideStringField;
    qrVendaItemOpcionalord: TIntegerField;
    cxGrid2Level2: TcxGridLevel;
    cxGrid2DBCardView4: TcxGridDBCardView;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label6: TLabel;
    cxGrid2DBCardView4descricao: TcxGridDBCardViewRow;
    acAbreGaveta: TAction;
    qrBuscaItemb_peso_balanca: TBooleanField;
    ACBrBAL1: TACBrBAL;
    qrBuscaItemid_categoria: TIntegerField;
    qrBuscaItemb_exige_alterar_preco_venda: TBooleanField;
    qrVendaItemdata_hora_lancamento: TDateTimeField;
    acDelivery: TAction;
    acPdv: TAction;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    acMenu: TAction;
    qrBuscaItemtara_balanca: TFloatField;
    acDescontoitem: TAction;
    constructor Create(sender: tcomponent); reintroduce;
    procedure NovoRegistro;
    procedure btnSairClick(Sender: TObject);
    procedure acAberturaVendaExecute(Sender: TObject);
    procedure ValidaAcoesVenda;
    procedure dsVendaDataChange(Sender: TObject; Field: TField);
    function ValidaInsercaoProduto(texto: string; out quantidade: double; out inserir_diretamente: boolean): boolean;
    procedure qrBuscaItemCalcFields(DataSet: TDataSet);
    procedure AtualizaTotalVenda;
    procedure edCodProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure acPesquisarItemExecute(Sender: TObject);
    procedure acCancelaItemExecute(Sender: TObject);
    procedure CarregaParametrosConfig;
    procedure acConsultarProdutoExecute(Sender: TObject);
    procedure acCancelarVendaExecute(Sender: TObject);
    procedure qrVendaAfterOpen(DataSet: TDataSet);
    procedure qrVendaAfterClose(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acFecharVendaExecute(Sender: TObject);
    procedure acDescontoItemExecute(Sender: TObject);
    procedure InsereVendaItem(id_material, nro_item: integer; qtde, valor_unit, valor_total: double; tamanho: string; venda_por_tamanho: boolean; observacao: string; cod_impressora: integer; id_categoria: integer; item_fracionado: integer = 0);
    procedure edValorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edQuantidadeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GuardaPosicaoComponentes;
    procedure RearranjaComponentes;
    procedure FormResize(Sender: TObject);
    procedure acAbreBuscaClienteExecute(Sender: TObject);
    procedure qrBuscaItemAfterOpen(DataSet: TDataSet);
    procedure edObservacaoItemKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure acObservacaoItemExecute(Sender: TObject);
    procedure acOpcionaisItemExecute(Sender: TObject);
    function NovoNumeroVenda: integer;
    procedure acInsereProdutoFracionadoExecute(Sender: TObject);
    procedure edCodProdutoExit(Sender: TObject);
    procedure cxGrid2DBTableView1StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure qrVendaItemAfterRefresh(DataSet: TDataSet);
    procedure qrVendaItemAfterOpen(DataSet: TDataSet);
    procedure qrVendaItemAfterClose(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure acAbreGavetaExecute(Sender: TObject);
    procedure ACBrBAL1LePeso(Peso: Double; Resposta: AnsiString);
    procedure acDeliveryExecute(Sender: TObject);
    procedure acPdvExecute(Sender: TObject);
    procedure acMenuExecute(Sender: TObject);
    type
      componente_posicao = record
        indice: Integer;
        left: integer;
        top: integer;
        width: integer;
        height: integer;
        nome: string;
      end;
  private
    bExigeSenhaCancelamentoItem, bPermiteDescontoItem, b_flag_busca_valida, b_flag_venda_cancelada, bAlteraValorUnitarioItem, bExigeSenhaCancelamentoVenda, bSolicitaCliente, bUtilizaSelecaoPrecos,
    bFracionadoMaiorValor, bPedirClienteItem1, bUtilizaGaveta, bUtilizaBalanca, bExigeVendedor, bAlteraValorUnitarioItemUsuario, b_imprimir_cozinha: boolean;
    designed_width, designed_height, iTimeOutBalanca: integer;
    largura_cod_barras, largura_cod_barras_produto, cod_barras_digito_1: integer;
    Posicoes: TArray<componente_posicao>;
  public
    { Public declarations }
  end;

var
  frmVendaBalcao: TfrmVendaBalcao;

implementation

{$R *.dfm}

uses
  uMenu, Funcao_DB, uFuncoes, uBuscaRegistro, uControleMesaItensAcoes,
  uPDVFechamento, uPDVCliente, uVendaSelecaoPreco, uVendaItemFracionado,
  uVendaSelecaoTamanho, uVendaSelecaoVendedor, uControleDelivery, uPDV,
  uControleMesaUtilitarios, uDetalheCliente, uPesquisavendabalcao,
  uControleMesaFechamento;

function TfrmVendaBalcao.NovoNumeroVenda: integer;
var
  qraux: Tuniquery;
  str_sql: string;
begin
  qraux := Tuniquery.Create(self);
  qraux.Connection := frmMenu.conexao;
  str_sql := format('select coalesce(numero_cupom, 0)+1 from venda where ven_024=''B'' and emp_001=%d order by ven_001 desc', [recproj.iEmp]);
  ExecutaConsultaSQL(qraux, str_sql);
  if qraux.RecordCount > 1 then
    result := qraux.Fields[0].asinteger
  else
    result := 1
end;

procedure TfrmVendaBalcao.GuardaPosicaoComponentes;
var
  I, j: Integer;
  comp: componente_posicao;
begin
  designed_width := self.Width;
  designed_height := self.Height;

  SetLength(Posicoes, self.ComponentCount);
  j := 0;
  for I := 0 to self.ComponentCount - 1 do
  begin
    if self.Components[I].Tag = 1 then
    begin
      comp.indice := I;
      comp.left := Tcontrol(self.Components[I]).Left;
      comp.top := Tcontrol(self.Components[I]).top;
      comp.width := Tcontrol(self.Components[I]).width;
      comp.height := Tcontrol(self.Components[I]).Height;
      comp.nome := self.Components[I].Name;
      Posicoes[j] := comp;
      j := j + 1;
    end;
  end;
  //remove o excesso
  SetLength(Posicoes, j);
end;

procedure TfrmVendaBalcao.FormClose(Sender: TObject; var Action: TCloseAction);
var
  qry_aux: TUniquery;
  str_sql: string;
begin
  //verifica se existe venda em aberto e se possui itens;
  if qrVenda.active then
  begin
    if qrVenda.State = dsEdit then
    begin
      qry_aux := TUniquery.Create(self);
      qry_aux.Connection := frmmenu.conexao;
      str_sql := format('select 1 from vendaitem where ven_001=%d and emp_001=%d', [qrVenda.fieldbyname('ven_001').AsInteger, recproj.iEmp]);
      executaconsultasql(qry_aux, str_sql);
      if qry_aux.RecordCount > 0 then
      begin
        if application.MessageBox('A venda atual está em aberto, gostaria de cancelar?', 'Atenção', MB_ICONQUESTION + mb_yesno) = mrYes then
        begin
          acCancelarVenda.Execute;
          if not b_flag_venda_cancelada then
          begin
            qrVenda.Open;
            qrVenda.edit;
            abort;
          end;
        end
        else
          abort;
      end
      else
      //venda sem item, deleta a venda
      begin
        qrVenda.cancel;
        str_sql := format('delete from venda where ven_001=%d and emp_001=%d', [qrVenda.fieldbyname('ven_001').AsInteger, recproj.iEmp]);
        ExecutaComandoSQL(str_sql);
      end;
    end;
  end;
end;

procedure TfrmVendaBalcao.FormResize(Sender: TObject);
begin
  //RearranjaComponentes;
end;

procedure TfrmVendaBalcao.FormShow(Sender: TObject);
var
  caminho: string;
  imagem: TdxPNGImage;
begin

  try
    imgFundo.Align := alClient;
    caminho := ExtractFilePath(Application.ExeName) + '\imagens\fundoVenda1.png';
    if FileExists(caminho) then
    begin
      imagem := TdxPNGImage.Create;
      imagem.LoadFromFile(caminho);
      imgFundo.Picture := Tpicture(imagem);
    end;
  except
  end;
  self.Caption := frmmenu.cabecalho;
end;

procedure TfrmVendaBalcao.RearranjaComponentes;
var
  I: Integer;
  xfactor, yfactor: double;
begin
  xfactor := self.Width / designed_width;
  yfactor := self.Height / designed_height;
  for I := 0 to Length(Posicoes) - 1 do
  begin
    tcontrol(self.Components[Posicoes[I].indice]).Left := round(Posicoes[I].left * xfactor);
    tcontrol(self.Components[Posicoes[I].indice]).width := round(Posicoes[I].width * xfactor);
    tcontrol(self.Components[Posicoes[I].indice]).top := round(Posicoes[I].top * yfactor);
    tcontrol(self.Components[Posicoes[I].indice]).height := round(Posicoes[I].height * yfactor);
  end;
end;

procedure TfrmVendaBalcao.CarregaParametrosConfig;
begin

  buscacampo(bAlteraValorUnitarioItemUsuario, 'select b_alteracao_precou_venda from usuarios where usu_001=' + inttostr(recproj.iUsuario), '', false);
  bExigeSenhaCancelamentoItem := LerBooleanConfig('CKEXIGIRSENHACANCELAMENTOITENSBALCAO', frmMenu.cdsCFG.FileName);
  bAlteraValorUnitarioItem := LerBooleanConfig('CKALTERARVALORUNITARIOBALCAO', frmMenu.cdsCFG.FileName);
  bPermiteDescontoItem := LerBooleanConfig('ckPermiteDescontoitemBalcao', frmMenu.cdsCFG.FileName);
  bSolicitaCliente := LerBooleanConfig('CKSOLICITARCLIENTEVENDABALCAO', frmMenu.cdsCFG.FileName);
  bUtilizaSelecaoPrecos:= LerBooleanConfig('ckUtilizar_selecao_precos', frmMenu.cdsCFG.FileName);
  bFracionadoMaiorValor := LerBooleanConfig('CKFACIONADOMAIORVALORBALCAO', frmMenu.cdsCFG.FileName);
  bExigeSenhaCancelamentoVenda := LerBooleanConfig('CKEXIGIRSENHACANCELAMENTOVENDABALCAO', frmMenu.cdsCFG.FileName);
  bUtilizaGaveta := LerBooleanConfig('CKUTILIZAGAVETA', frmMenu.cdsCFG.FileName);
  bUtilizaBalanca := LerBooleanConfig('CKUTILIZABALANCA', frmMenu.cdsCFG.FileName);
  iTimeOutBalanca := LerIntegerConfig('EDBALANCATIMEOUT', frmMenu.cdsCFG.FileName);
  bExigeVendedor := LerBooleanConfig('CKEXIGEVENDEDORBALCAO', frmMenu.cdsCFG.FileName);
  largura_cod_barras := LerIntegerConfig('EDBALANCALARGURACODIGOBARRAS', frmMenu.cdsCFG.FileName);
  largura_cod_barras_produto := LerIntegerConfig('EDBALANCALARGURACODIGOPRODUTO', frmMenu.cdsCFG.FileName);
  cod_barras_digito_1 := LerIntegerConfig('EDBALANCACODIGOBARRASDIGITOINICIAL', frmMenu.cdsCFG.FileName);
  b_imprimir_cozinha := not LerBooleanConfig('CKNAOIMPRIMIRCOZINHABALCAO', frmMenu.cdsCFG.FileName);
end;

procedure TfrmVendaBalcao.acAberturaVendaExecute(Sender: TObject);
begin
  if qrvenda.State = dsEdit then
  begin
    Application.MessageBox('Venda já encontra-se aberta!', 'Atenção', MB_ICONINFORMATION)
  end
  else
  begin
    NovoRegistro;
  end;
end;

procedure TfrmVendaBalcao.btnSairClick(Sender: TObject);
begin
  close;
end;

constructor TfrmVendaBalcao.Create(sender: tcomponent);
var
  str_sql: string;
  qry_aux: TUniquery;
  acesso: boolean;
begin
  inherited create(sender);

  CarregaParametrosConfig;
  buscacampo(acesso, 'select b_acesso_venda_balcao from usuarios where usu_001=' + inttostr(recproj.iUsuario), '', false);
  frmMenu.VerificaPermissaoAcesso(acesso);
  frmMenu.VerificaCaixaAberto;

  qrvenda.Close;
  qrVendaItem.Close;
  qrvenda.ParamByName('id_empresa').AsInteger := recproj.iEmp;

  qry_aux := TUniquery.Create(self);
  qry_aux.Connection := frmmenu.conexao;
  // verifica se existe venda aberta para o pdv aberto (caso a ultima venda no tenha sido concluída)
  str_sql := format('select ven_001 from venda where sit_001=0 and emp_001=%d and terminal_abertura=%s', [recproj.iEmp, QuotedStr(NomeDoTerminal)]);
  executaconsultasql(qry_aux, str_sql);
  if qry_aux.RecordCount > 0 then
  begin
    qrvenda.ParamByName('id_venda').AsInteger := qry_aux.Fields[0].AsInteger;
    qrvenda.open;
    qrvenda.Edit;
  end;

  //GuardaPosicaoComponentes;

  edValor.Enabled := bAlteraValorUnitarioItem and bAlteraValorUnitarioItemUsuario;
  b_flag_busca_valida := false;

  if bUtilizaBalanca then
  begin
    ACBrBAL1.Modelo := TACBrBALModelo(LerIntegerConfig('CBBALANCAMODELO', frmMenu.cdsCFG.FileName));
    ACBrBAL1.Device.HandShake := TACBrHandShake(LerIntegerConfig('CBBALANCAHANDSHAKING', frmMenu.cdsCFG.FileName));
    ACBrBAL1.Device.Parity := TACBrSerialParity(LerIntegerConfig('CBBALANCAPARITY', frmMenu.cdsCFG.FileName));
    ACBrBAL1.Device.Stop := TACBrSerialStop(LerIntegerConfig('CBBALANCASTOPBITS', frmMenu.cdsCFG.FileName));
    ACBrBAL1.Device.Data := StrToInt(LerStringConfig('CBBALANCADATABITS', frmMenu.cdsCFG.FileName));
    ACBrBAL1.Device.Baud := StrToInt(LerStringConfig('CBBALANCABAUD', frmMenu.cdsCFG.FileName));
    ACBrBAL1.Device.Porta := LerStringConfig('CBBALANCAPORTASERIAL', frmMenu.cdsCFG.FileName);
    ACBrBAL1.ArqLOG := format('%sLog\Balanca\Balanca_%s.log', [ExtractFilePath(Application.ExeName), FormatDateTime('ddmmyyyy', Date)]);
    //cria o diretório de log
    if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Log\Balanca') then
      ForceDirectories(ExtractFilePath(Application.ExeName) + 'Log\Balanca');
  end;
end;

procedure TfrmVendaBalcao.cxGrid2DBTableView1StylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if ARecord.Values[cxGrid2DBTableView1Desconto.Index] <> 0 then
    AStyle := frmMenu.cxDesconto;
end;

procedure TfrmVendaBalcao.dsVendaDataChange(Sender: TObject; Field: TField);
begin
  ValidaAcoesVenda;
end;

procedure TfrmVendaBalcao.InsereVendaItem(id_material, nro_item: integer; qtde, valor_unit, valor_total: double; tamanho: string; venda_por_tamanho: boolean; observacao: string; cod_impressora: integer; id_categoria: integer; item_fracionado: integer = 0);
var
  desconto, desconto_calc, total_calc: double;
  tipo_desconto: integer;
begin
  //valida quantidade e valor unitário
  if (qtde < 0.001) or (qtde > 999999) then
  begin
    Application.MessageBox('Quantidade inválida!', 'Atenção', MB_ICONINFORMATION + MB_OK);
    if edQuantidade.CanFocus then
      edQuantidade.SetFocus
    else
      edCodProduto.SetFocus;
    abort;
  end;
  if (valor_unit <= 0) or (valor_unit > 99999999) then
  begin
    Application.MessageBox('Valor unitário inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
    if edValor.CanFocus then
      edValor.SetFocus
    else
      edCodProduto.SetFocus;
    abort;
  end;
  qrInsereItem.ParamByName('emp').AsInteger := RecProj.iEmp;
  qrInsereItem.ParamByName('id_venda').AsInteger := qrVenda.FieldByName('ven_001').AsInteger;
  qrInsereItem.ParamByName('id_material').AsInteger := id_material;
  qrInsereItem.ParamByName('quantidade').asFloat := qtde;
  qrInsereItem.ParamByName('quantidade_impressao').asFloat := qtde;
  qrInsereItem.ParamByName('valor_unit').AsFloat := valor_unit;
  qrInsereItem.ParamByName('valor_total').AsFloat := valor_total;
  //qrInsereItem.ParamByName('hora').AsTime := Time;
  qrInsereItem.ParamByName('nro_item').AsInteger := nro_item;
  qrInsereItem.ParamByName('tamanho').asstring := tamanho;
  qrInsereItem.ParamByName('observacao').asstring := observacao;
  qrInsereItem.ParamByName('b_venda_tamanho').asBoolean := venda_por_tamanho;
  qrInsereItem.ParamByName('cod_impressora').asinteger := cod_impressora;
  qrInsereItem.ParamByName('desconto').asfloat := 0;
  if item_fracionado = 0 then
    qrInsereItem.ParamByName('item_fracionado').value := null
  else
    qrInsereItem.ParamByName('item_fracionado').value := item_fracionado;


  //antes de postar, verifica se existe promoção
  if BuscaPromocao(venda_por_tamanho, tamanho, 'B', id_material, desconto, tipo_desconto) then
  begin
    calculaDescontoItem(tipo_desconto, desconto, qtde, valor_unit, 0, desconto_calc, total_calc);
    qrInsereItem.ParamByName('desconto').asfloat := desconto_calc;
    qrInsereItem.ParamByName('valor_total').AsFloat := total_calc;
  end;

  qrInsereItem.Execute;

  frmmenu.AvisaEsoqueMinimo(id_material, 'B', qtde);

  qrVendaItem.Refresh;
  b_flag_busca_valida := false;
end;

procedure TfrmVendaBalcao.edCodProdutoExit(Sender: TObject);
var
  qtde, valor_happy: double;
  inserir: boolean;
  tecla_enter: word;
begin
  tecla_enter := vk_return;
  if trim(edCodProduto.Text) = '' then
    exit;
  if not qrVenda.active then
    acAberturaVenda.Execute;

  if ValidaInsercaoProduto(trim(edCodProduto.Text), qtde, inserir) then
  begin
    b_flag_busca_valida := true;
    qrBuscaItem.Edit;
    qrBuscaItem.FieldByName('quantidade').AsFloat := qtde;

    //Verifica Happy Hour - Bruno (12-04-2018)
    if BuscaHappyHour('B', qrBuscaItem.FieldByName('id_material').AsInteger, valor_happy) then
      qrBuscaItem.FieldByName('valor_unit').AsFloat:= valor_happy
    else
    begin
      if bUtilizaSelecaoPrecos then
      begin
        frmVendaSelecaoPreco := TfrmVendaSelecaoPreco.Create(self, qrBuscaItem.FieldByName('id_material').asinteger);

        if frmVendaSelecaoPreco.qrTamanhoMaterial.RecordCount > 1 then
          frmVendaSelecaoPreco.ShowModal;

        if frmVendaSelecaoPreco.Tag = 1 then
        begin
          qrBuscaItem.FieldByName('valor_unit').AsFloat := frmVendaSelecaoPreco.valor;
        end;
      end;
    end;

    if (edValor.Enabled or edQuantidade.Enabled) and (not inserir) then
    begin
      inserir := false;

      if edValor.CanFocus then
          edValor.SetFocus
      else
      if edQuantidade.canfocus then
        edQuantidade.setfocus
      else
            inserir := true;
    end
    else
      inserir := true;

    if inserir then
      edObservacaoItemKeyDown(self, tecla_enter, []);

  end
  else
  begin
    b_flag_busca_valida := false;

  end;
  edCodProduto.Clear;

end;

procedure TfrmVendaBalcao.edCodProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var qtde,valor_promocao,valor_happy : double;
    id_produto : integer;
    inserir :boolean;
    tecla_enter: word;
begin

  if key= vk_return then
  begin
      tecla_enter := vk_return;
    if trim(edCodProduto.Text)='' then exit;
    if not qrVenda.active then acAberturaVenda.Execute;

    if ValidaInsercaoProduto(trim(edCodProduto.Text), qtde, inserir) then
    begin
      b_flag_busca_valida:=true;
      qrBuscaItem.Edit;
      qrBuscaItem.FieldByName('quantidade').AsFloat :=qtde;



      //Verifica Happy Hour - Bruno (12-04-2018)
      if BuscaHappyHour('P', qrBuscaItem.FieldByName('id_material').AsInteger, valor_happy) then
        qrBuscaItem.FieldByName('valor_unit').AsFloat:= valor_happy
      else
      begin
        if bUtilizaSelecaoPrecos then
        begin
          frmVendaSelecaoPreco := TfrmVendaSelecaoPreco.Create(self,qrBuscaItem.FieldByName('id_material').asinteger);

          if frmVendaSelecaoPreco.qrTamanhoMaterial.RecordCount > 1 then
            frmVendaSelecaoPreco.ShowModal;

          if frmVendaSelecaoPreco.Tag = 1 then
          begin
            qrBuscaItem.FieldByName('valor_unit').AsFloat := frmVendaSelecaoPreco.valor;
          end;
        end;
      end;

      if (edValor.Enabled or edQuantidade.Enabled) and (not inserir)  then
      begin
        inserir := false;


        if edQuantidade.CanFocus then
          edQuantidade.SetFocus
        else
          if edValor.canfocus then
            edValor.setfocus
          else
            inserir := true;
      end
      else
        inserir := true;

      if inserir then
      edObservacaoItemKeyDown(self, tecla_enter, []);
    end
    else
    begin
      b_flag_busca_valida := false;
    end;
    edCodProduto.Clear;
  end;
end;

procedure TfrmVendaBalcao.edObservacaoItemKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  //verifica se está tudo ok
  if Key = vk_return then
  begin
    if qrVenda.Active then
    begin
      if qrVenda.state <> dsEdit then
      begin
        Application.MessageBox('A venda não encontra-se aberta!', 'Atenção', MB_ICONINFORMATION + MB_OK);
        abort;
      end;
    end
    else
      abort;
    //valida o item
    if qrBuscaItem.Active then
    begin
      if qrBuscaItem.RecordCount < 1 then
      begin
        Application.MessageBox('Não foi informado nenhum item a adicionar!', 'Atenção', MB_ICONINFORMATION + MB_OK);
        edCodProduto.SetFocus;
        abort;
      end
      else
      begin
      //valida quantidade e valor unitário
        if qrBuscaItem.FieldByName('quantidade').IsNull or (qrBuscaItem.FieldByName('quantidade').asfloat < 0.001) or (qrBuscaItem.FieldByName('quantidade').asfloat > 999999) then
        begin
          Application.MessageBox('Quantidade inválida!', 'Atenção', MB_ICONINFORMATION + MB_OK);
          edQuantidade.SetFocus;
          abort;
        end;
        if (qrBuscaItem.FieldByName('valor_unit').IsNull) or (qrBuscaItem.FieldByName('valor_unit').AsFloat <= 0) or (qrBuscaItem.FieldByName('valor_unit').AsFloat > 99999999) then
        begin
          Application.MessageBox('Valor unitário inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
          if edValor.CanFocus then
            edValor.SetFocus;
          abort;
        end;
      end;
    end
    else
    begin
      edCodProduto.SetFocus;
      abort;
    end;

    //insere o item
    InsereVendaItem(qrBuscaItem.FieldByName('id_material').AsInteger, qrBuscaItem.FieldByName('ultimo_item').AsInteger + 1, qrBuscaItem.FieldByName('quantidade').asfloat, qrBuscaItem.FieldByName('valor_unit').AsFloat, qrBuscaItem.FieldByName('valor_total').AsFloat, qrBuscaItem.FieldByName('tamanho_padrao').asstring, qrBuscaItem.FieldByName('b_venda_tamanho').asBoolean, edObservacaoItem.Text, qrBuscaItem.FieldByName('cod_impressora').asinteger, qrBuscaItem.FieldByName('id_categoria').AsInteger);

    //informa o cliente apenas ao inserir , caso esteja configurado
    if bPedirClienteItem1 then
    begin
      acAbreBuscaCliente.Execute;
      bPedirClienteItem1 := false;
    end;


    //atualiza o total da venda
    AtualizaTotalVenda;
    qrBuscaItem.close;
    edObservacaoItem.clear;
    edCodProduto.Clear;
    edCodProduto.SetFocus;
  end;
end;

procedure TfrmVendaBalcao.edQuantidadeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
    tecla_enter: word;
begin
  if Key = vk_return then
  begin
    tecla_enter := vk_return;
    edQuantidade.Refresh;
    if b_flag_busca_valida and qrBuscaItem.Active and (qrVenda.State in [dsInsert, dsEdit]) then
    begin
      Perform(WM_NEXTDLGCTL, 0, 0); //sai do controle para poder fazer as validações
      edObservacaoItemKeyDown(self, tecla_enter, []);
    end;
      edCodProduto.SetFocus;
      edValor.Text:= '0,00';
    edQuantidade.Text:= '0,00';
    qrBuscaItem.Close;
  end;
end;

procedure TfrmVendaBalcao.edValorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    edQuantidade.Refresh;
    if b_flag_busca_valida and qrBuscaItem.Active and (qrVenda.State in [dsInsert, dsEdit]) then
      Perform(WM_NEXTDLGCTL, 0, 0) //sai do controle para poder fazer as validações
    else
      edCodProduto.SetFocus;
  end;
end;

procedure TfrmVendaBalcao.acAbreBuscaClienteExecute(Sender: TObject);
begin
  if qrVenda.State in [dsInsert, dsEdit] then
  begin
    frmPDVCliente := TfrmPDVCliente.Create(self, qrVenda.FieldByName('id_cliente').AsInteger, qrVenda.FieldByName('cpf_cliente').asstring, qrVenda.FieldByName('nome_cliente').asstring);
    frmPDVCliente.ShowModal;
    if frmPDVCliente.Tag = 1 then
    begin
      if frmPDVCliente.id_cliente = 0 then
        qrVenda.FieldByName('id_cliente').Clear
      else
        qrVenda.FieldByName('id_cliente').AsInteger := frmPDVCliente.id_cliente;
        qrVenda.FieldByName('cpf_cliente').asstring := frmPDVCliente.cpf;
        qrVenda.FieldByName('nome_cliente').asstring := frmPDVCliente.nome_cliente;
    end;
    frmPDVCliente.Free;
    qrVenda.post;
    qrVenda.refresh;
    qrVenda.edit;
  end;
end;

procedure TfrmVendaBalcao.acAbreGavetaExecute(Sender: TObject);
begin
  if bUtilizaGaveta then
    frmMenu.AbrirGaveta;
end;

procedure TfrmVendaBalcao.ACBrBAL1LePeso(Peso: Double; Resposta: AnsiString);
var
  valid: integer;
  msg: string;
  tara: double;
begin
  if Peso <= 0 then
  begin
    valid := Trunc(ACBrBAL1.UltimoPesoLido);
    case valid of
      0:
        msg := 'Time out. A balança não respondeu a tempo ou não foi detectado peso (peso zero)';
      -1:
        msg := 'Peso instável. Faça outra leitura';
      -2:
        msg := 'Peso negativo';
      -9:
        msg := 'Erro de comunicação! Verifique se a balança está ligada e conectada ao computador e se as configurações estão corretas.';
      -10:
        msg := 'Sobrepeso';
    else
      msg := 'Erro não identificado! Verifique se a balança está ligada e conectada ao computador e se as configurações estão corretas.';
    end;
    qrBuscaItem.FieldByName('quantidade').AsFloat := 0;
    application.MessageBox(pchar('Não foi possível obter o peso da balança. Detalhes:' + sLineBreak + msg), 'Atenção', MB_ICONWARNING);
  end
  else
  begin
    tara := qrBuscaItem.FieldByName('tara_balanca').AsFloat;
    // se o peso for menor que a tara ou se a tara estiver zerada, a quantidade é o mesmo do peso
    if (CompareValue(Peso, tara) = -1) or (CompareValue(tara, 0.0) = 0) then
      qrBuscaItem.FieldByName('quantidade').AsFloat := Peso
    else
      qrBuscaItem.FieldByName('quantidade').AsFloat := Peso - tara;
  end;
end;

procedure TfrmVendaBalcao.acCancelaItemExecute(Sender: TObject);
var
  ok: boolean;
  id_usuario_cancelamento: integer;
begin
  if qrVendaItem.Active then
  begin
    if qrVendaItem.RecordCount > 0 then
    begin
      id_usuario_cancelamento := RecProj.iUsuario;
      if bExigeSenhaCancelamentoItem then
        ok := frmMenu.ConfirmacaoSenha('b_cancelamento_balcao', id_usuario_cancelamento)
      else
        ok := true;

      if ok then
      begin
        frmControleMesaItensAcoes := TfrmControleMesaItensAcoes.Create(self, qrVenda.FieldByName('ven_001').AsInteger, id_usuario_cancelamento, 3);
        frmControleMesaItensAcoes.ShowModal;
        frmControleMesaItensAcoes.Free;
        AtualizaTotalVenda;
        qrVendaItem.Refresh;
      end;
    end
    else
      Application.MessageBox('Esta venda não possui itens!', 'Atenção', MB_ICONINFORMATION + MB_OK);
  end;
end;

procedure TfrmVendaBalcao.acCancelarVendaExecute(Sender: TObject);
var
  str_sql, sJust: string;
  id_venda, cod_venda, nro_mesa, id_usuario_cancelamento: integer;
  ok, permite_cancelamento: boolean;
  qrAux1: TUniQuery;
begin
  buscacampo(permite_cancelamento, 'select b_cancelamento_balcao from usuarios where usu_001=' + inttostr(recproj.iUsuario), '', false);

  b_flag_venda_cancelada := false;
  if qrVenda.Active then
  begin
    if qrVenda.state = dsedit then
    begin
      id_venda := qrVenda.FieldByName('ven_001').AsInteger;

      qrAux1 := TUniQuery.Create(self);
      qrAux1.Connection := frmmenu.conexao;
      //verifica se a venda não possui items
      str_sql := 'select 1 from vendaitem where ven_001=:id_venda and emp_001=:emp';
      PreparaQuerySQL(qrAux1, str_sql);
      qrAux1.ParamByName('id_venda').AsInteger := id_venda;
      qrAux1.ParamByName('emp').AsInteger := RecProj.iEmp;
      qrAux1.Open;
      if qrAux1.RecordCount < 1 then
      begin
        str_sql := 'delete from venda where ven_001=:id_venda and emp_001=:emp';
        PreparaQuerySQL(qrAux1, str_sql);
        qrAux1.ParamByName('id_venda').AsInteger := id_venda;
        qrAux1.ParamByName('emp').AsInteger := RecProj.iEmp;
        qrAux1.Execute;
        Application.MessageBox('Venda cancelada com sucesso!', 'Atenção', MB_ICONINFORMATION + MB_OK);
        qrVenda.close;
        b_flag_venda_cancelada := true;
      end
      else
      begin
        id_usuario_cancelamento := RecProj.iUsuario;
        if bExigeSenhaCancelamentoVenda then
          ok := frmMenu.ConfirmacaoSenha('b_cancelamento_balcao', id_usuario_cancelamento)
        else
        begin
          if not permite_cancelamento then
            ok := frmMenu.ConfirmacaoSenha('b_cancelamento_balcao', id_usuario_cancelamento)
          else
            ok := true;
        end;
        if ok then
        begin
          b_flag_venda_cancelada := CancelaVenda(id_venda, id_usuario_cancelamento, '');
          if b_flag_venda_cancelada then
          begin
            qrVenda.close;
            qrVendaItem.Close;
            qrBuscaItem.Close;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmVendaBalcao.acPdvExecute(Sender: TObject);
var
  str_sql: string;
  qraux1: tuniquery;
begin
  if qrvendaitem.RecordCount < 1 then
  begin
    frmpesquisavendabalcao1 := Tfrmpesquisavendabalcao1.create(self);
    frmpesquisavendabalcao1.ShowModal;
    if frmPesquisavendabalcao1.Tag = 1 then
    begin
      str_sql := 'update venda set sit_001=0 where ven_001=:ven_001 and emp_001=:emp_001';
      qraux1 := TUniQuery.Create(self);
      qraux1.Connection := frmMenu.conexao;
      qraux1.SQL.Add(str_sql);
      qraux1.ParamByName('ven_001').asinteger := frmpesquisavendabalcao1.qrPesquisavendabalcao.fieldbyname('ven_001').asinteger;
      qraux1.ParamByName('emp_001').asinteger := frmpesquisavendabalcao1.qrPesquisavendabalcao.fieldbyname('emp_001').asinteger;
      qraux1.Execute;
      qrvenda.close;
      qrvenda.ParamByName('id_venda').AsInteger := frmpesquisavendabalcao1.qrPesquisavendabalcao.FieldByName('ven_001').AsInteger;
      qrvenda.ParamByName('id_empresa').AsInteger := frmpesquisavendabalcao1.qrPesquisavendabalcao.FieldByName('emp_001').AsInteger;
      qrvenda.Open;
      qrvenda.Edit;
      ValidaAcoesVenda;
    end;
    frmpesquisavendabalcao1.free;                   // 05/10/2017  Rafael
  end;
end;

procedure TfrmVendaBalcao.acPesquisarItemExecute(Sender: TObject);
var
  str_sql: string;
  inserir :boolean;
begin
  edCodProduto.SetFocus;

  str_sql := ' SELECT MAT.MAT_001, ' + ' MAT.MAT_004, ' + ' MAT.MAT_003, ' + ' CAT.CAT_002, ' + ' UNI.UNI_002, ' + ' MAT.MAT_008 ' + ' FROM MATERIAIS MAT ' + ' LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND (UNI.UNI_001 = MAT.UNI_001) ' + ' LEFT OUTER JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.CAT_001 = MAT.CAT_001)';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql, CriaIntegerArray([1, 2, 3, 4, 5]), CriaStringArray(['Código', 'Produto', 'Categoria', 'Unidade', 'Preço']), 1, 1, ' mat.sit_001=4 and MAT.emp_001=' + IntToStr(RecProj.iEmp), 800, 500);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag = 1 then
  begin
    edCodProduto.Text := frmBuscaRegistro.valor_retorno;
    ;
    //Perform(WM_NEXTDLGCTL, 0, 0);
    if (edValor.Enabled or edQuantidade.Enabled) and (not inserir)  then
      begin
        inserir := false;


        if edQuantidade.CanFocus then
          edQuantidade.SetFocus
        else
          if edValor.canfocus then
            edValor.setfocus
          else
            inserir := true;
      end
      else
        inserir := true;
  end;
  frmBuscaRegistro.Free;
end;

procedure TfrmVendaBalcao.acConsultarProdutoExecute(Sender: TObject);
var
  str_sql: string;
begin
  str_sql := ' SELECT MAT.MAT_001, ' + ' MAT.MAT_004, ' + ' MAT.MAT_003, ' + ' CAT.CAT_002, ' + ' UNI.UNI_002, ' + ' MAT.MAT_008 ' + ' FROM MATERIAIS MAT ' + ' LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND (UNI.UNI_001 = MAT.UNI_001) ' + ' LEFT OUTER JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.CAT_001 = MAT.CAT_001)';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql, CriaIntegerArray([1, 2, 3, 4, 5]), CriaStringArray(['Código', 'Produto', 'Categoria', 'Unidade', 'Preço']), 1, 1, ' mat.sit_001=4 and MAT.emp_001=' + IntToStr(RecProj.iEmp), 800, 500);
  frmBuscaRegistro.ShowModal;
  frmBuscaRegistro.Free;
end;

procedure TfrmVendaBalcao.acDeliveryExecute(Sender: TObject);
begin
  frmControleDelivery := tfrmcontroledelivery.Create(self);
  frmcontroleDelivery.ShowModal;
  frmcontroleDelivery.Free;
end;

procedure TfrmVendaBalcao.acDescontoItemExecute(Sender: TObject);

begin

  if qrVendaItem.Active then
  begin
    if qrVendaItem.RecordCount > 0 then
    begin
      if bPermiteDescontoItem then
      begin
        frmControleMesaItensAcoes := TfrmControleMesaItensAcoes.Create(self, qrVenda.FieldByName('ven_001').AsInteger, recproj.iUsuario, 2);
        frmControleMesaItensAcoes.ShowModal;
        frmControleMesaItensAcoes.Free;
        AtualizaTotalVenda;
        qrVendaItem.Refresh;
      end
      else
        Application.MessageBox('Ação não permitida!', 'Atenção', MB_ICONINFORMATION + MB_OK);
    end
    else
      Application.MessageBox('Esta venda não possui itens!', 'Atenção', MB_ICONINFORMATION + MB_OK);
  end;
end;

procedure TfrmVendaBalcao.acFecharVendaExecute(Sender: TObject);
var
  id_venda: integer;
  str_sql: string;
begin
  //id_venda := qrvenda.FieldByName('ven_001').AsInteger;
  //frmPDVFechamento := TfrmPDVFechamento.Create(self, id_venda);
  //frmPDVFechamento.ShowModal;

  frmControleMesaFechamento := TfrmControleMesaFechamento.Create(self,
      qrVenda.fieldbyname('ven_001').asinteger, true);
    frmControleMesaFechamento.ShowModal;

 { if frmPDVFechamento.Tag = 1 then
  begin
    if b_imprimir_cozinha then
    begin
      //envia os itens para impressão após o fechamento
      str_sql := format('UPDATE VENDAITEM SET ITE_011 = ''S'' where VEN_001=%d and emp_001=%d and ite_008= ''N'' ', [id_venda, recproj.iEmp]);
      ExecutaComandoSQL(str_sql);
    end;

    qrvenda.Close;
    qrVendaItem.Close;
    qrBuscaItem.Close;
    acAberturaVenda.Execute;
  end;
  FreeAndNil(frmPDVFechamento);  }
  if frmControleMesaFechamento.Tag = 1 then
    begin

      if b_imprimir_cozinha then
      begin
        // envia os itens para impressão após o fechamento
        str_sql :=
          format('UPDATE VENDAITEM SET ITE_011 = ''S'' where VEN_001=%d and emp_001=%d and ite_008= ''N'' ',
          [qrVenda.fieldbyname('ven_001').asinteger, recproj.iEmp]);
        ExecutaComandoSQL(str_sql);
      end;

      qrVenda.close;
      qrVendaItem.close;
      qrBuscaItem.close;
      acAberturaVenda.Execute;
    end;
    FreeAndNil(frmControleMesaFechamento);
end;

procedure TfrmVendaBalcao.acInsereProdutoFracionadoExecute(Sender: TObject);
var
  ult_reg, item_fracionado, id_venda: integer;
  str_sql: string;
begin
  if not qrVenda.active then
    acAberturaVenda.Execute;
  id_venda := qrVenda.FieldByName('ven_001').AsInteger;
  frmVendaItemFracionado := tfrmVendaItemFracionado.Create(self, (bAlteraValorUnitarioItem and bAlteraValorUnitarioItemUsuario), bFracionadoMaiorValor);
  frmVendaItemFracionado.ShowModal;
  if frmVendaItemFracionado.Tag = 1 then
  begin
    str_sql := format('select coalesce(max(ite_001), 0) from vendaitem where ven_001=%d and emp_001=%d ', [id_venda, recproj.iEmp]);
    BuscaCampo(ult_reg, str_sql, '', false);
    str_sql := format('select coalesce(max(item_fracionado), 0)+1 from vendaitem where ven_001=%d and emp_001=%d ', [id_venda, recproj.iEmp]);
    BuscaCampo(item_fracionado, str_sql, '', false);
    frmVendaItemFracionado.cdsItens.First;
    while not frmVendaItemFracionado.cdsItens.Eof do
    begin
      InsereVendaItem(frmVendaItemFracionado.cdsItens.FieldByName('id_material').AsInteger, ult_reg + frmVendaItemFracionado.cdsItens.FieldByName('nro_item').AsInteger, frmVendaItemFracionado.cdsItens.FieldByName('quantidade').asfloat, frmVendaItemFracionado.cdsItens.FieldByName('valor_unit').AsFloat, frmVendaItemFracionado.cdsItens.FieldByName('valor_fracionado').AsFloat, frmVendaItemFracionado.cdsItens.FieldByName('tamanho').asstring, frmVendaItemFracionado.cdsItens.FieldByName('tamanho').asstring <> '', frmVendaItemFracionado.cdsItens.FieldByName('observacao').asstring, frmVendaItemFracionado.cdsItens.FieldByName('cod_impressora').AsInteger, frmVendaItemFracionado.cdsItens.FieldByName('id_categoria').AsInteger, item_fracionado);

      frmVendaItemFracionado.cdsItens.next;
    end;
  end;
  //qrVenda.FieldByName('observacao').AsString := qrVenda.FieldByName('observacao').AsString + frmVendaItemFracionado.memobs.Text;
  frmVendaItemFracionado.Free;
  qrVendaItem.Refresh;
  AtualizaTotalVenda;

end;

procedure TfrmVendaBalcao.acMenuExecute(Sender: TObject);
var
  str_sql: string;
  qraux1: tuniquery;
begin
  if qrVenda.RecordCount <= 0 then      // 17/10/2017  Rafael
  begin
    application.MessageBox('Não existe venda para ser fechada!, Por favor inicie uma venda', 'Atenção', MB_ICONQUESTION + MB_OK);
  end;

  if qrVenda.RecordCount > 0 then
    if Application.MessageBox('Deseja realmente colocar esta venda em espera?', 'ATENÇÃO', MB_YESNO + MB_ICONQUESTION) = mryes then
    begin

      begin
        if qrVendaItem.RecordCount > 0 then
        begin
          str_sql := 'update venda set sit_001=21 where ven_001=:ven_001 and emp_001=:emp_001';
          qraux1 := TUniQuery.Create(self);
          qraux1.Connection := frmMenu.conexao;
          qraux1.close;
          qraux1.SQL.clear;
          qraux1.SQL.Add(str_sql);
          qraux1.ParamByName('ven_001').asinteger := qrVenda.fieldbyname('ven_001').asinteger;
          qraux1.ParamByName('emp_001').asinteger := qrVenda.fieldbyname('emp_001').asinteger;
          qraux1.Execute;
          qrVenda.close;
          qrVendaItem.close;
          qrBuscaItem.close;
          acAberturaVenda.Execute;
        end

        else
        begin
          application.MessageBox('Não existe venda para ser fechada!, Por favor inicie uma venda', 'Atenção', MB_ICONQUESTION + MB_OK);
        end;

      end;
    end;

end;

procedure TfrmVendaBalcao.acObservacaoItemExecute(Sender: TObject);
begin
  if qrVendaItem.Active then
  begin
    if qrVendaItem.RecordCount > 0 then
    begin
      frmControleMesaItensAcoes := TfrmControleMesaItensAcoes.Create(self, qrVenda.FieldByName('ven_001').AsInteger, recproj.iUsuario, 1);
      frmControleMesaItensAcoes.ShowModal;
      frmControleMesaItensAcoes.Free;
      qrVendaItem.Refresh;
    end
    else
      Application.MessageBox('Esta venda não possui itens!', 'Atenção', MB_ICONINFORMATION + MB_OK);
  end;
end;

procedure TfrmVendaBalcao.acOpcionaisItemExecute(Sender: TObject);
begin
  if qrVendaItem.Active then
  begin
    if qrVendaItem.RecordCount > 0 then
    begin
      frmControleMesaItensAcoes := TfrmControleMesaItensAcoes.Create(self, qrVenda.FieldByName('ven_001').AsInteger, recproj.iUsuario, 4);
      frmControleMesaItensAcoes.ShowModal;
      frmControleMesaItensAcoes.Free;
      AtualizaTotalVenda;
      qrVendaItem.Refresh;
    end
    else
      Application.MessageBox('Esta venda não possui itens!', 'Atenção', MB_ICONINFORMATION + MB_OK);
  end;
end;

procedure TfrmVendaBalcao.AtualizaTotalVenda;
var
  total: double;
begin
  if qrVenda.state in [dsinsert, dsedit] then
  begin
    qrVenda.FieldByName('total_itens').AsFloat := TotalItensVenda(qrVenda.FieldByName('ven_001').asinteger);
    total := TotalItensVenda(qrVenda.FieldByName('ven_001').asinteger) + qrVenda.FieldByName('acrescimo').AsFloat - qrVenda.FieldByName('desconto').AsFloat;
    qrVenda.FieldByName('total_venda').AsFloat := total;
    qrVenda.post;
    qrVenda.edit;
  end
  else if qrVenda.State in [dsCalcFields] then
  begin
    qrVenda.FieldByName('total_itens').AsFloat := TotalItensVenda(qrVenda.FieldByName('ven_001').asinteger);
  end;
end;

function TfrmVendaBalcao.ValidaInsercaoProduto(texto: string; out quantidade: double; out inserir_diretamente: boolean): boolean;
var
  indice_qtde: integer;
  str_qtd, cod_ref: string;
  flag_etiqueta_balanca: boolean;
begin
  result := true;
  texto := trim(texto);
  flag_etiqueta_balanca := (Length(texto) = largura_cod_barras) and (texto[1] = inttostr(cod_barras_digito_1));
  indice_qtde := AnsiPos('*', texto);
  if indice_qtde > 0 then
  begin
    str_qtd := copy(texto, 1, indice_qtde - 1);
    cod_ref := copy(texto, indice_qtde + 1, length(texto));
    //verifica se a quantidade digitada é um número
    try
      quantidade := StrToFloat(trim(str_qtd));
    except
      quantidade := 0;
      application.MessageBox('Informações inválidas!', 'Atenção', MB_ICONINFORMATION);
      result := false;
    end;
  end
  else
  begin
    //verifica se é codigo de barras da etiqueta de balança...
    if flag_etiqueta_balanca then
    begin
      //pega a parte referente ao codigo do produto
      cod_ref := copy(texto, 2, largura_cod_barras_produto);
      //converte pra inteiro e volta para string (para remover os '0' iniciais)
      cod_ref := inttostr(strtoint(cod_ref));
      //pega a parte referente a quantidade
      str_qtd := copy(texto, largura_cod_barras_produto + 2, largura_cod_barras);
      //descarta o ultimo digito, que é dv
      str_qtd := copy(str_qtd, 1, Length(str_qtd) - 1);

      try
        quantidade := StrToFloat(trim(str_qtd)) / 1000;
        inserir_diretamente := true;
      except
        quantidade := 0;
        application.MessageBox('Informações inválidas!', 'Atenção', MB_ICONINFORMATION);
        result := false;
      end;
    end
    else
    begin
      quantidade := 1;
      cod_ref := texto;
    end;

  end;
  // se nao houve erro na inserção do codigo e quantidade, faz a busca
  if result then
  begin
    qrBuscaItem.Close;
    qrBuscaItem.parambyname('emp').AsInteger := recproj.iEmp;
    qrBuscaItem.parambyname('cod_ref').asstring := cod_ref;
    qrBuscaItem.parambyname('id_venda').asinteger := qrvenda.FieldByName('ven_001').AsInteger;
    qrBuscaItem.Open;
    if qrBuscaItem.RecordCount > 0 then
    begin
      result := true;
      if qrBuscaItem.FieldByName('b_peso_balanca').AsBoolean then
        quantidade := qrBuscaItem.FieldByName('quantidade').asfloat;

      if flag_etiqueta_balanca and (compareVAlue(quantidade, 1) = -1) and ((qrBuscaItem.FieldByName('unidade').AsString = 'UN') or (qrBuscaItem.FieldByName('unidade').AsString = 'PC')) then
        quantidade := quantidade * 1000;

    end
    else
      result := false;

    if not result then
      application.MessageBox('Produto não encontrado!', 'Atenção', MB_ICONINFORMATION);
  end;
end;

procedure TfrmVendaBalcao.NovoRegistro;
var
  id_vendedor: integer;
  vendedor: string;
begin
  id_vendedor := 0;
  vendedor := '';
  if bExigeVendedor then
  begin
    frmVendaSelecaoVendedor := TfrmVendaSelecaoVendedor.Create(self);
    frmVendaSelecaoVendedor.ShowModal;
    if frmVendaSelecaoVendedor.Tag = 1 then
    begin
      id_vendedor := frmVendaSelecaoVendedor.id_usuario;
      vendedor := frmVendaSelecaoVendedor.nome_usuario;
      frmVendaSelecaoVendedor.free;
    end
    else
    begin
      Application.MessageBox('Para iniciar uma nova venda, é necessário informar o vendedor!', 'Atenção', MB_ICONINFORMATION);
      frmVendaSelecaoVendedor.free;
      abort;
    end;
  end;

  if not qrVenda.Active then
    qrVenda.Open;

  qrVenda.Append;
  qrVenda.FieldByName('ven_001').AsInteger := NovoId('venda', 'ven_001', RecProj.iEmp);
  qrVenda.FieldByName('venda_orcamento').AsInteger := 0;
  qrVenda.FieldByName('emp_001').AsInteger := RecProj.iEmp;
  qrVenda.FieldByName('data_cadastro').asdatetime := date + time;
  qrVenda.FieldByName('sit_001').AsInteger := 0;
  qrVenda.FieldByName('usu_001_1').AsInteger := RecProj.iUsuario;
  qrVenda.FieldByName('tipo_venda').AsString := 'B'; //Tipo Balcão
  qrVenda.FieldByName('acrescimo').AsFloat := 0;
  qrVenda.FieldByName('b_taxa_entrega').asboolean := false;
  qrVenda.FieldByName('id_caixa_abertura').AsInteger := RecProj.iIDCaixa;
  qrVenda.FieldByName('terminal_abertura').AsString := NomeDoTerminal;
  qrVenda.FieldByName('nro_venda').AsInteger := NovoNumeroVenda;
  qrVenda.parambyname('id_venda').AsInteger := qrVenda.FieldByName('ven_001').AsInteger;
  qrVenda.post;
  qrVenda.Edit;
  bPedirClienteItem1 := bSolicitaCliente;
  qrvendaitem.Close;
  qrvendaitem.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrvendaitem.ParamByName('id_venda').AsInteger := qrVenda.FieldByName('ven_001').AsInteger;
  qrvendaitem.Open;

end;

procedure TfrmVendaBalcao.qrBuscaItemAfterOpen(DataSet: TDataSet);
var
  tamanho: string;
begin
  edValor.Enabled := bAlteraValorUnitarioItem and bAlteraValorUnitarioItemUsuario;
  if qrBuscaItem.RecordCount > 0 then
  begin
    if not edValor.Enabled then
      edValor.Enabled := qrBuscaItem.FieldByName('b_exige_alterar_preco_venda').asboolean;
    qrBuscaItem.Edit;
    edQuantidade.Enabled := true;

    // verifica se o item é vendido por tamanho
    if qrBuscaItem.FieldByName('b_venda_tamanho').AsBoolean then
    begin
      frmVendaSelecaoTamanho := TfrmVendaSelecaoTamanho.Create(self, qrBuscaItem.FieldByName('id_material').asinteger);
      frmVendaSelecaoTamanho.ShowModal;
      if frmVendaSelecaoTamanho.Tag = 1 then
      begin
        tamanho := frmVendaSelecaoTamanho.tamanho;
        qrBuscaItem.FieldByName('tamanho_padrao').AsString := tamanho;
        if tamanho = 'P' then
        begin
          qrBuscaItem.FieldByName('descricao').AsString := qrBuscaItem.FieldByName('descricao_p').AsString;
          qrBuscaItem.FieldByName('valor_unit').asfloat := qrBuscaItem.FieldByName('valor_tam_p').asfloat;
        end
        else if tamanho = 'M' then
        begin
          qrBuscaItem.FieldByName('descricao').AsString := qrBuscaItem.FieldByName('descricao_m').AsString;
          qrBuscaItem.FieldByName('valor_unit').asfloat := qrBuscaItem.FieldByName('valor_tam_m').asfloat;
        end
        else if tamanho = 'G' then
        begin
          qrBuscaItem.FieldByName('descricao').AsString := qrBuscaItem.FieldByName('descricao_g').AsString;
          qrBuscaItem.FieldByName('valor_unit').asfloat := qrBuscaItem.FieldByName('valor_tam_g').asfloat;
        end
        else if tamanho = 'GG' then
        begin
          qrBuscaItem.FieldByName('descricao').AsString := qrBuscaItem.FieldByName('descricao_gg').AsString;
          qrBuscaItem.FieldByName('valor_unit').asfloat := qrBuscaItem.FieldByName('valor_tam_gg').asfloat;
        end
        else if tamanho = 'E' then
        begin
          qrBuscaItem.FieldByName('descricao').AsString := qrBuscaItem.FieldByName('descricao_extra').AsString;
          qrBuscaItem.FieldByName('valor_unit').asfloat := qrBuscaItem.FieldByName('valor_tam_extra').asfloat;
        end
        else
          qrBuscaItem.FieldByName('descricao').AsString := qrBuscaItem.FieldByName('descricao_old').AsString;
      end;
      frmVendaSelecaoTamanho.Free;
    end;

    // verifica se o item é vendido por peso e se a balança está habilitada
    if qrBuscaItem.FieldByName('b_peso_balanca').AsBoolean and bUtilizaBalanca then
    begin

      try
        edQuantidade.Enabled := false;
        // se houver conexão aberta, Fecha a conexão
        if ACBrBAL1.Ativo then
          ACBrBAL1.Desativar;
        // Conecta com a balança
        ACBrBAL1.Ativar;
        // lê o peso na balança
        ACBrBAL1.LePeso(iTimeOutBalanca);
        ACBrBAL1.Desativar;
      except
        on E: Exception do
        begin
          application.MessageBox(pchar('Erro ao obter o peso da balança! Verifique se a balança está ligada e conectada ao computador e se as configurações estão corretas.' + #13#10 + E.Message + E.ClassName), 'Atenção', MB_ICONERROR);
          qrBuscaItem.FieldByName('quantidade').AsFloat := 0;
        end;
      end;

      if qrBuscaItem.FieldByName('quantidade').AsFloat <= 0 then
      begin
        qrBuscaItem.close;
        edObservacaoItem.clear;
        edCodProduto.Clear;
        if edCodProduto.CanFocus then
          edCodProduto.SetFocus;
        abort;
      end;
    end;

    if edQuantidade.CanFocus then
      edQuantidade.SetFocus
    else if edValor.CanFocus then
      edValor.setfocus
    else
      edObservacaoItem.SetFocus;
  end;
end;

procedure TfrmVendaBalcao.qrBuscaItemCalcFields(DataSet: TDataSet);
begin
  qrBuscaItem.FieldByName('valor_total').AsFloat := qrBuscaItem.FieldByName('valor_unit').AsFloat * qrBuscaItem.FieldByName('quantidade').AsFloat;
end;

procedure TfrmVendaBalcao.qrVendaAfterClose(DataSet: TDataSet);
begin
  ValidaAcoesVenda;
end;

procedure TfrmVendaBalcao.qrVendaAfterOpen(DataSet: TDataSet);
begin
  qrvendaitem.Close;
  qrvendaitem.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrvendaitem.ParamByName('id_venda').AsInteger := qrVenda.FieldByName('ven_001').AsInteger;
  qrvendaitem.Open;
end;

procedure TfrmVendaBalcao.qrVendaItemAfterClose(DataSet: TDataSet);
begin
  qrVendaItemOpcional.Close;
end;

procedure TfrmVendaBalcao.qrVendaItemAfterOpen(DataSet: TDataSet);
begin
  qrVendaItemOpcional.Close;
  qrVendaItemOpcional.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrVendaItemOpcional.ParamByName('id_venda').AsInteger := qrVenda.FieldByName('ven_001').AsInteger;
  qrVendaItemOpcional.Open;
  cxGrid2DBTableView1.ViewData.Expand(True);
end;

procedure TfrmVendaBalcao.qrVendaItemAfterRefresh(DataSet: TDataSet);
begin
  qrVendaItemOpcional.Refresh;
  cxGrid2DBTableView1.ViewData.Expand(True);
end;

procedure TfrmVendaBalcao.ValidaAcoesVenda;
begin
  //Venda em edição
  if qrVenda.State in [dsEdit] then
  begin
    acAberturaVenda.enabled := false;
    acFecharVenda.Enabled := true;
    acCancelarVenda.Enabled := true;
    acPesquisarItem.Enabled := true;
    acCancelaItem.Enabled := true;
    acDescontoItem.Enabled := true;
    acObservacaoItem.Enabled := true;
    acAbreBuscaCliente.Enabled := true;
    acInsereProdutoFracionado.Enabled := true;
    acOpcionaisItem.Enabled := true;
  end
  else
  begin
    acAberturaVenda.enabled := true;
    acFecharVenda.Enabled := false;
    acCancelarVenda.Enabled := false;
    acPesquisarItem.Enabled := true;
    acCancelaItem.Enabled := false;
    acDescontoItem.Enabled := false;
    acObservacaoItem.Enabled := false;
    acAbreBuscaCliente.Enabled := false;
    acInsereProdutoFracionado.Enabled := true;
    acOpcionaisItem.Enabled := false;
  end;

end;

end.

