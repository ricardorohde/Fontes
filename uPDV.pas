unit uPDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni, AdvEdit,
  DBAdvEd, JvExStdCtrls, JvEdit, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, Vcl.DBCtrls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, Vcl.ActnList, cxGridLevel,
  cxGridCardView, cxGridDBCardView, cxGridCustomLayoutView,  System.Math,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, AdvGlowButton, JvDataSource, JvValidateEdit,
  dxGDIPlusClasses, System.Actions, ACBrBase, ACBrBAL, ACBRDevice, dxSkinsCore,
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
  TfrmPDV = class(TForm)
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
    imgPDV: TImage;
    edCodProduto: TcxTextEdit;
    DBTxDescricao: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbStatusVenda: TLabel;
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
    uniq: TActionList;
    acAberturaVenda: TAction;
    acFecharVenda: TAction;
    acCancelarVenda: TAction;
    acPesquisarItem: TAction;
    acCancelaItem: TAction;
    acDescontoItem: TAction;
    acObservacaoItem: TAction;
    acInsereProdutoFracionado: TAction;
    acOpcionaisItem: TAction;
    btnSair: TAdvGlowButton;
    Label5: TLabel;
    qrInsereItem: TUniQuery;
    acConsultarProduto: TAction;
    jvdsBuscaItem: TJvDataSource;
    edValor: TJvValidateEdit;
    edQuantidade: TJvValidateEdit;
    imgLogoCliente: TImage;
    acAbreBuscaCliente: TAction;
    Label8: TLabel;
    Label9: TLabel;
    DBText1: TDBText;
    qrVendanome_cliente: TWideStringField;
    Label10: TLabel;
    DBText2: TDBText;
    Label11: TLabel;
    acAbreGaveta: TAction;
    ACBrBAL1: TACBrBAL;
    qrBuscaItemb_peso_balanca: TBooleanField;
    qrVendaid_vendedor: TIntegerField;
    qrVendanome_vendedor: TWideStringField;
    acAbreCancelamentoCupom: TAction;
    acAbreCancelamentoSAT: TAction;
    qrBuscaItemid_categoria: TIntegerField;
    qrBuscaItemb_exige_alterar_preco_venda: TBooleanField;
    qrVendaItemdata_hora_lancamento: TDateTimeField;
    qrBuscaItemid_situacao: TIntegerField;
    acAbreMenuFiscalECF: TAction;
    qrBuscaItemtara_balanca: TFloatField;
    Label7: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    acRecebimentoCliente: TAction;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label6: TLabel;
    qrVendaid_orcamento: TIntegerField;
    acImportaComanda: TAction;
    Button1: TButton;
    qrAtualizacomanda: TUniQuery;
    qrVerificaBalanca: TUniQuery;
    Label4: TLabel;
    acSalvaVenda: TAction;
    acBuscarVenda: TAction;
    Label12: TLabel;
    Label13: TLabel;
    acImportarmesa: TAction;
    qrAtualizamesa: TUniQuery;
    qrAuxComanda: TUniQuery;
    qrAuxComandaid_empresa: TIntegerField;
    qrAuxComandaid_venda: TIntegerField;
    qrAuxComandanro_item: TIntegerField;
    qrAuxComandaqtdevenda: TFloatField;
    qrAuxComandavlrvenda: TFloatField;
    qrAuxComandaacrescimo: TFloatField;
    qrAuxComandadescricao_item: TWideStringField;
    qrAuxComandaobservacao: TWideStringField;
    qrAuxComandadata_hora_lancamento: TDateTimeField;
    qrAuxComandacod_status: TIntegerField;
    qrAuxComandastatus: TWideMemoField;
    qrAuxComandadesconto: TFloatField;
    qrAuxComandavalor_desconto: TFloatField;
    qrAuxComandavalor_total: TFloatField;
    qrAuxComandavalor_taxa10: TFloatField;
    qrAuxComandavalor_total_taxa10: TFloatField;
    qrAuxComandaordem_item: TLargeintField;
    qrAuxComandaid_material: TIntegerField;
    qrAuxComandadesc_tamanho: TWideStringField;
    qrAuxComandaitem_fracionado: TIntegerField;
    qrAuxComandab_venda_tamanho: TBooleanField;
    qrprodbal: TUniQuery;
    reimprimir: TAction;
    Sat: TAction;
    qrSat: TUniQuery;
    qrApoio: TUniQuery;
    Sair: TAction;
    procedure FormShow(Sender: TObject);
    constructor Create(sender : tcomponent); reintroduce;
    procedure NovoRegistro(id_cliente : integer = 0;  id_orcamento : integer = 0 ; id_vendedor : integer =0);  // Rafael
    procedure btnSairClick(Sender: TObject);
    procedure acAberturaVendaExecute(Sender: TObject);
    procedure ValidaAcoesVenda;
    procedure dsVendaDataChange(Sender: TObject; Field: TField);
    function ValidaInsercaoProduto(texto : string ; out quantidade: double ; out inserir_diretamente : boolean) : boolean;
    procedure qrBuscaItemCalcFields(DataSet: TDataSet);
    procedure AtualizaTotalVenda;
    procedure edCodProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    procedure InsereVendaItem(id_material, nro_item : integer;
                              qtde, valor_unit, valor_total : double ;
                              tamanho : string; venda_por_tamanho : boolean;
                              id_categoria : integer;
                              valor_desconto : double = 0  );
    procedure edValorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edQuantidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GuardaPosicaoComponentes;
    procedure RearranjaComponentes;
    procedure FormResize(Sender: TObject);
    procedure acAbreBuscaClienteExecute(Sender: TObject);
    procedure qrBuscaItemAfterOpen(DataSet: TDataSet);
    procedure acAbreGavetaExecute(Sender: TObject);
    procedure ACBrBAL1LePeso(Peso: Double; Resposta: AnsiString);

    procedure acAbreCancelamentoCupomExecute(Sender: TObject);
    procedure acAbreCancelamentoSATExecute(Sender: TObject);
    procedure CancelarVenda;
    procedure acAbreMenuFiscalECFExecute(Sender: TObject);
    procedure qrVendaItemAfterRefresh(DataSet: TDataSet);
    procedure acRecebimentoClienteExecute(Sender: TObject);

    function ConfirmaCancelaVenda : boolean;
    procedure acImportaComandaExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edCodProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure acSalvaVendaExecute(Sender: TObject);
    procedure acBuscarVendaExecute(Sender: TObject);
    procedure acImportarmesaExecute(Sender: TObject);
    procedure reimprimirExecute(Sender: TObject);
    procedure SatExecute(Sender: TObject);
    procedure SairExecute(Sender: TObject);


   type
     componente_posicao = record
       indice : Integer;
       left : integer;
       top : integer;
       width : integer;
       height : integer;
       nome : string;
     end;

  private
    bExigeSenhaCancelamentoItem , bPermiteDescontoItem, b_flag_busca_valida,
    b_flag_venda_cancelada , bAlteraValorUnitarioItem , bAlteraQuantidade,
    bSolicitaCliente, bExigeSenhaCancelamentoVenda, bUtilizaSelecaoPrecos,
    bUtilizaGaveta, bUtilizaBalanca, bExigeVendedor,
    bPermiteAlterarQuantidadeBalanca, bAlteraValorUnitarioItemUsuario : boolean;
    designed_width,  designed_height, iTimeOutBalanca,
    largura_cod_barras, largura_cod_barras_produto, cod_barras_digito_1 : integer;
    valor_ultima_devolucao : double;
    possui_devolucao_pdv : boolean;
    id_cliente_devolucao,id_comanda,id_venda_retorno : integer;
    Posicoes : TArray<componente_posicao>;
    sLetraPesquisa: string;
  public
    { Public declarations }
    bImportando: Boolean;
  end;

var
  frmPDV: TfrmPDV;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uFuncoes, uBuscaRegistro, uControleMesaItensAcoes,
  uPDVFechamento, uPDVCliente, uVendaSelecaoPreco,
  uControleDevolucaoConsultaVenda, uVendaSelecaoVendedor, uConsVendaSAT,
  uReimprimirCancelarCupom, uPDVMenuFiscal, uControleContasReceberFiado,
   uImportarcomanda,uControlePDVCancItem, uVendaSelecaoTamanho,
  uPesquisavendabalcao2,  uImportamesa, uGeradorSAT;

procedure TfrmPDV.GuardaPosicaoComponentes;
var
  I, j: Integer;
  comp : componente_posicao;
begin
  designed_width := self.Width;
  designed_height := self.Height;

  SetLength(Posicoes,self.ComponentCount);
  j:=0;
  for I := 0 to self.ComponentCount-1 do
  begin
    if self.Components[i].Tag=1 then
    begin
      comp.indice := i;
      comp.left   := Tcontrol(self.Components[i]).Left;
      comp.top    := Tcontrol(self.Components[i]).top;
      comp.width  := Tcontrol(self.Components[i]).width;
      comp.height := Tcontrol(self.Components[i]).Height;
      comp.nome   := self.Components[i].Name;
      Posicoes[j]:=comp;
      j:=j+1;
    end;
  end;
  //remove o excesso
  SetLength(Posicoes,j);
end;

procedure TfrmPDV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not ConfirmaCancelaVenda then
    abort;

  bImportando:= False;
end;


procedure TfrmPDV.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

end;

//função utilizada para exluir vendas abertas sem item ou para confirmar a exclusão de vendas com item
//utilizada no fechamento do form ou antes do carregamento de outra venda
function  TfrmPDV.ConfirmaCancelaVenda : boolean;
var qry_aux : TUniquery;
    str_sql : string;
begin
  //verifica se existe venda em aberto e se possui itens;
  result := true;
  if not bImportando then
  begin
    if qrVenda.active then
    begin
      if qrVenda.State=dsEdit then
      begin
        qry_aux:= TUniquery.Create(self);
        qry_aux.Connection := frmmenu.conexao;
        str_sql :=  format('select 1 from vendaitem where ven_001=%d and emp_001=%d',
                          [qrVenda.fieldbyname('ven_001').AsInteger, recproj.iEmp]);
        executaconsultasql(qry_aux,str_sql);
        if qry_aux.RecordCount>0 then
        begin
          if application.MessageBox('A venda atual está em aberto, gostaria de cancelar?', 'Atenção', MB_ICONQUESTION + mb_yesno) = mrYes then
            begin
              CancelarVenda;
              if not b_flag_venda_cancelada then
              begin
                qrVenda.Open;
                qrVenda.edit;
                result := false;
                exit;
              end;
            end
          else
          begin
            result := false;
            exit;
          end;
        end
        else
        //venda sem item, deleta a venda
        begin
          qrVenda.cancel;
          str_sql:= format('delete from venda where ven_001=%d and emp_001=%d',
                           [qrVenda.fieldbyname('ven_001').AsInteger, recproj.iEmp]);
          ExecutaComandoSQL(str_sql);
        end;
      end;
    end;
  end;
end;



procedure TfrmPDV.FormResize(Sender: TObject);
begin
  RearranjaComponentes;
end;

procedure TfrmPDV.RearranjaComponentes;
var
  I: Integer;
  xfactor, yfactor  : double;
begin
  xfactor := self.Width / designed_width;
  yfactor := self.Height / designed_height;
  for I := 0 to Length(Posicoes) -1 do
  begin
    tcontrol(self.Components[Posicoes[i].indice]).Left := round(Posicoes[i].left*xfactor);
    tcontrol(self.Components[Posicoes[i].indice]).width := round(Posicoes[i].width*xfactor);
    tcontrol(self.Components[Posicoes[i].indice]).top := round(Posicoes[i].top*yfactor);
    tcontrol(self.Components[Posicoes[i].indice]).height := round(Posicoes[i].height*yfactor);
  end;
end;

procedure TfrmPDV.FormShow(Sender: TObject);
var caminho : string;
begin
  bImportando:= False;

  edCodProduto.Clear;
     //carrega a imagem de login
   try
     caminho := ExtractFilePath(Application.ExeName)+'\imagens\logoPDV.png';
     if FileExists(caminho) then imgLogoCliente.Picture.LoadFromFile(caminho);
   except end;

   self.Caption:=frmmenu.cabecalho;
   sLetraPesquisa:= '';
end;

procedure TfrmPDV.CarregaParametrosConfig;
begin
  buscacampo( bAlteraValorUnitarioItemUsuario, 'select b_alteracao_precou_venda from usuarios where usu_001=' + inttostr(recproj.iUsuario), '', false);
  bExigeSenhaCancelamentoItem :=  LerBooleanConfig('CKEXIGIRSENHACANCELAMENTOITENSPDV',frmMenu.cdsCFG.FileName);
  bExigeSenhaCancelamentoVenda := LerBooleanConfig('CKEXIGIRSENHACANCELAMENTOVENDAPDV',frmMenu.cdsCFG.FileName);
  bAlteraValorUnitarioItem := LerBooleanConfig('CKALTERARVALORUNITARIOPDV',frmMenu.cdsCFG.FileName);
  bAlteraQuantidade := LerBooleanConfig('CKALTERARQTDPDV',frmMenu.cdsCFG.FileName);
  bPermiteDescontoItem := LerBooleanConfig('CKPERMITEDESCONTOITEMPDV',frmMenu.cdsCFG.FileName);
  bSolicitaCliente := LerBooleanConfig('CKSOLICITARCLIENTEVENDAPDV',frmMenu.cdsCFG.FileName);
  bUtilizaGaveta := LerBooleanConfig('CKUTILIZAGAVETA',frmMenu.cdsCFG.FileName);
  bUtilizaBalanca := LerBooleanConfig('CKUTILIZABALANCA',frmMenu.cdsCFG.FileName);
  iTimeOutBalanca := LerIntegerConfig ('EDBALANCATIMEOUT', frmMenu.cdsCFG.FileName);
  bExigeVendedor  := LerBooleanConfig('CKEXIGEVENDEDORPDV',frmMenu.cdsCFG.FileName);
  bPermiteAlterarQuantidadeBalanca := LerBooleanConfig('CKPERMITEALTERARQUANTIDADEBALANCAPDV',frmMenu.cdsCFG.FileName);
  largura_cod_barras :=  LerIntegerConfig ('EDBALANCALARGURACODIGOBARRAS', frmMenu.cdsCFG.FileName);
  largura_cod_barras_produto:= LerIntegerConfig ('EDBALANCALARGURACODIGOPRODUTO', frmMenu.cdsCFG.FileName);
  cod_barras_digito_1 :=   LerIntegerConfig ('EDBALANCACODIGOBARRASDIGITOINICIAL', frmMenu.cdsCFG.FileName);
  bUtilizaSelecaoPrecos:= LerBooleanConfig('ckUtilizar_selecao_precos', frmMenu.cdsCFG.FileName);
end;


procedure TfrmPDV.acAberturaVendaExecute(Sender: TObject);
begin
  if qrvenda.State = dsEdit then
  begin
    Application.MessageBox('Venda já encontra-se aberta!','Atenção', MB_ICONINFORMATION)
  end
  else
  begin
    NovoRegistro;
  end;
end;

procedure TfrmPDV.btnSairClick(Sender: TObject);
begin
  close;
end;

constructor TfrmPDV.Create(sender : tcomponent);
var str_sql : string;
    qry_aux : TUniquery;
    acesso : boolean;
begin
  inherited create(sender);

  CarregaParametrosConfig;
  buscacampo( acesso, 'select b_acesso_venda_pdv from usuarios where usu_001=' + inttostr(recproj.iUsuario), '', false);

  frmMenu.VerificaPermissaoAcesso(acesso);
  frmMenu.VerificaCaixaAberto;

  qrvenda.Close;
  qrvenda.ParamByName('id_empresa').AsInteger := recproj.iEmp;

  qry_aux:= TUniquery.Create(self);
  qry_aux.Connection := frmmenu.conexao;
  // verifica se existe venda aberta para o pdv aberto (caso a ultima venda no tenha sido concluída)
  str_sql := format('select ven_001 from venda where sit_001=0 and emp_001=%d and terminal_abertura=%s',
                    [recproj.iEmp, QuotedStr(NomeDoTerminal)]);
  executaconsultasql(qry_aux,str_sql);
  if qry_aux.RecordCount>0 then
  begin
    qrvenda.ParamByName('id_venda').AsInteger :=  qry_aux.Fields[0].AsInteger;
    qrvenda.open;
    qrvenda.Edit;
  end;

  GuardaPosicaoComponentes;

  edValor.Enabled := bAlteraValorUnitarioItem and bAlteraValorUnitarioItemUsuario;
  edquantidade.Enabled := bAlteraQuantidade;
  b_flag_busca_valida := false;

  if bUtilizaBalanca then
  begin
    ACBrBAL1.Modelo           := TACBrBALModelo(  LerIntegerConfig('CBBALANCAMODELO', frmMenu.cdsCFG.FileName));
    ACBrBAL1.Device.HandShake := TACBrHandShake(LerIntegerConfig('CBBALANCAHANDSHAKING', frmMenu.cdsCFG.FileName));
    ACBrBAL1.Device.Parity    := TACBrSerialParity(LerIntegerConfig('CBBALANCAPARITY', frmMenu.cdsCFG.FileName));
    ACBrBAL1.Device.Stop      := TACBrSerialStop(LerIntegerConfig('CBBALANCASTOPBITS', frmMenu.cdsCFG.FileName));
    ACBrBAL1.Device.Data      := StrToInt( LerStringConfig('CBBALANCADATABITS', frmMenu.cdsCFG.FileName, '8') );
    ACBrBAL1.Device.Baud      := StrToInt( LerStringConfig('CBBALANCABAUD', frmMenu.cdsCFG.FileName, '9600') );
    ACBrBAL1.Device.Porta     := LerStringConfig('CBBALANCAPORTASERIAL', frmMenu.cdsCFG.FileName);
    ACBrBAL1.ArqLOG           := format('%sLog\Balanca\Balanca_%s.log' ,[ExtractFilePath(Application.ExeName) , FormatDateTime('ddmmyyyy', Date)]);
    //cria o diretório de log
    if Not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Log\Balanca') then
      ForceDirectories(ExtractFilePath(Application.ExeName) + 'Log\Balanca');
  end;

  valor_ultima_devolucao := 0;
  id_cliente_devolucao := 0;
  possui_devolucao_pdv := false;
end;


procedure TfrmPDV.dsVendaDataChange(Sender: TObject; Field: TField);
begin
  ValidaAcoesVenda;
end;

procedure TfrmPDV.InsereVendaItem(id_material, nro_item : integer;
                                  qtde, valor_unit, valor_total : double ;
                                  tamanho : string; venda_por_tamanho : boolean;
                                  id_categoria : integer ; valor_desconto : double = 0);
var desconto, desconto_calc, total_calc : double;
    tipo_desconto: integer;
begin
  //valida quantidade e valor unitário
  if (qtde<0.001) or
     (qtde>999999)  then
  begin
    Application.MessageBox('Quantidade inválida!', 'Atenção', MB_ICONINFORMATION + MB_OK);
    if edQuantidade.CanFocus then edQuantidade.SetFocus else edCodProduto.SetFocus;
    abort;
  end;
  if (valor_unit<=0) or
     (valor_unit>99999999) then
  begin
    Application.MessageBox('Valor unitário inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
    if edValor.CanFocus then edValor.SetFocus else edCodProduto.SetFocus;
    abort;
  end;
  qrInsereItem.ParamByName('emp').AsInteger := RecProj.iEmp;
  qrInsereItem.ParamByName('id_venda').AsInteger := qrVenda.FieldByName('ven_001').AsInteger;
  qrInsereItem.ParamByName('id_material').AsInteger:= id_material;
  qrInsereItem.ParamByName('quantidade').asFloat:= qtde;
  qrInsereItem.ParamByName('valor_unit').AsFloat:= valor_unit;
  qrInsereItem.ParamByName('valor_total').AsFloat:= valor_total;
  qrInsereItem.ParamByName('nro_item').AsInteger:= nro_item;
  qrInsereItem.ParamByName('tamanho').asstring:=tamanho;
  qrInsereItem.ParamByName('b_venda_tamanho').asBoolean:= venda_por_tamanho;
  qrInsereItem.ParamByName('desconto').asfloat := valor_desconto;

  //antes de postar, verifica se existe promoção
  if BuscaPromocao(venda_por_tamanho, tamanho, 'P', id_material, desconto, tipo_desconto) then
  begin
    calculaDescontoItem(tipo_desconto, desconto, qtde, valor_unit, 0, desconto_calc, total_calc);
    qrInsereItem.ParamByName('desconto').asfloat := desconto_calc;
    qrInsereItem.ParamByName('valor_total').AsFloat := total_calc;
  end;

  qrInsereItem.Execute;
  frmmenu.AvisaEsoqueMinimo(id_material,'P',qtde);
  b_flag_busca_valida := false;
end;

procedure TfrmPDV.edCodProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var qtde,valor_promocao,valor_happy : double;
    id_produto : integer;
    inserir :boolean;
begin

  if key= vk_return then
  begin
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
      begin
        InsereVendaItem(qrBuscaItem.FieldByName('id_material').AsInteger,
                        qrBuscaItem.FieldByName('ultimo_item').AsInteger+1,
                        qtde,
                        qrBuscaItem.FieldByName('valor_unit').AsFloat,
                        qrBuscaItem.FieldByName('valor_total').AsFloat,
                        qrBuscaItem.FieldByName('tamanho_padrao').asstring,
                        qrBuscaItem.FieldByName('b_venda_tamanho').asBoolean,
                        qrBuscaItem.FieldByName('id_categoria').AsInteger);
        qrVendaItem.Refresh;
        AtualizaTotalVenda;
        edCodProduto.SetFocus;
        edValor.Text:= '0,00';
        edQuantidade.Text:= '0,00';
        qrBuscaItem.Close;
      end;
    end
    else
    begin
      b_flag_busca_valida := false;
    end;
    edCodProduto.Clear;
  end;
end;

procedure TfrmPDV.edCodProdutoKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z', 'A'..'Z'] then
  begin
    sLetraPesquisa:= Key;
    acPesquisarItemExecute(nil);
    Key := #0;
  end;
end;

procedure TfrmPDV.edQuantidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
  begin
    edQuantidade.Refresh;
    if b_flag_busca_valida and qrBuscaItem.Active and (qrVenda.State in [dsInsert, dsEdit]) then
    begin
      Perform(WM_NEXTDLGCTL,0,0); //sai do controle para poder fazer as validações
      InsereVendaItem(qrBuscaItem.FieldByName('id_material').AsInteger,
              qrBuscaItem.FieldByName('ultimo_item').AsInteger+1,
              edQuantidade.value,
              qrBuscaItem.FieldByName('valor_unit').AsFloat,
              qrBuscaItem.FieldByName('valor_total').AsFloat,
              qrBuscaItem.FieldByName('tamanho_padrao').asstring,
              qrBuscaItem.FieldByName('b_venda_tamanho').asBoolean,
              qrBuscaItem.FieldByName('id_categoria').AsInteger);
      qrVendaItem.Refresh;
      AtualizaTotalVenda;
    end;
    edCodProduto.SetFocus;
    edValor.Text:= '0,00';
    edQuantidade.Text:= '0,00';
    qrBuscaItem.Close;
  end;
end;

procedure TfrmPDV.edValorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
  begin
    if edQuantidade.CanFocus then
    begin
      edQuantidade.setfocus;
    end
    else
    begin
      if b_flag_busca_valida and qrBuscaItem.Active then
      begin
        Perform(WM_NEXTDLGCTL,0,0); //sai do controle para poder fazer as validações
        InsereVendaItem(qrBuscaItem.FieldByName('id_material').AsInteger,
                qrBuscaItem.FieldByName('ultimo_item').AsInteger+1,
                qrBuscaItem.FieldByName('quantidade').AsFloat,
                qrBuscaItem.FieldByName('valor_unit').AsFloat,
                qrBuscaItem.FieldByName('valor_total').AsFloat,
                qrBuscaItem.FieldByName('tamanho_padrao').asstring,
                qrBuscaItem.FieldByName('b_venda_tamanho').asBoolean,
                qrBuscaItem.FieldByName('id_categoria').AsInteger);
        qrVendaItem.Refresh;
        AtualizaTotalVenda;
      end;
      edCodProduto.SetFocus;
      edValor.Text:= '0,00';
      edQuantidade.Text:= '0,00';
      qrBuscaItem.Close;
    end;
  end;
end;

procedure TfrmPDV.acAbreBuscaClienteExecute(Sender: TObject);
begin
  if qrVenda.State in [dsInsert, dsEdit] then  // Busca Cliente
  begin
    frmPDVCliente :=  TfrmPDVCliente.Create(self,qrVenda.FieldByName('id_cliente').AsInteger,
                                            qrVenda.FieldByName('cpf_cliente').asstring,
                                            qrVenda.FieldByName('nome_cliente').asstring);
    frmPDVCliente.ShowModal;
    if frmPDVCliente.Tag=1 then
    begin
      if frmPDVCliente.id_cliente = 0 then
        qrVenda.FieldByName('id_cliente').Clear
      else
        qrVenda.FieldByName('id_cliente').AsInteger := frmPDVCliente.id_cliente;
      qrVenda.FieldByName('cpf_cliente').asstring := frmPDVCliente.cpf;
      qrVenda.FieldByName('nome_cliente').asstring := frmPDVCliente.nome_cliente;
    end;
    FreeAndNil(frmPDVCliente);
    qrVenda.post;
    qrVenda.refresh;
    qrVenda.edit;
  end;
end;

procedure TfrmPDV.acAbreCancelamentoCupomExecute(Sender: TObject);
begin
  frmReimpressaoCupom := TfrmReimpressaoCupom.create(self);
  frmReimpressaoCupom.ShowModal;
  FreeAndNil(frmReimpressaoCupom);

end;

procedure TfrmPDV.acAbreCancelamentoSATExecute(Sender: TObject);
begin
  frmConsVendaSAT := TfrmConsVendaSAT.Create(self);
  frmConsVendaSAT.Showmodal;
  FreeAndNil(frmConsVendaSAT);
end;

procedure TfrmPDV.acAbreGavetaExecute(Sender: TObject);
begin
  if bUtilizaGaveta then frmMenu.AbrirGaveta;
end;

procedure TfrmPDV.acAbreMenuFiscalECFExecute(Sender: TObject);
begin
  frmPDVMenuFiscalECF := TfrmPDVMenuFiscalECF.Create(self);
  frmPDVMenuFiscalECF.Showmodal;
  FreeAndNil(frmPDVMenuFiscalECF);
end;

procedure TfrmPDV.ACBrBAL1LePeso(Peso: Double; Resposta: AnsiString);
var valid : integer;
    msg : string;
    tara : double;
begin
  if Peso <= 0 then
  begin
    valid := Trunc(ACBrBAL1.UltimoPesoLido);
    case valid of
      0 : msg :=  'Time out. A balança não respondeu a tempo ou não foi detectado peso (peso zero)' ;
      -1 : msg := 'Peso instável. Faça outra leitura' ;
      -2 : msg := 'Peso negativo' ;
      -9: msg := 'Erro de comunicação! Verifique se a balança está ligada e conectada ao computador e se as configurações estão corretas.' ;
      -10 : msg := 'Sobrepeso' ;
      else
         msg := 'Erro não identificado! Verifique se a balança está ligada e conectada ao computador e se as configurações estão corretas.' ;
    end;
    qrBuscaItem.FieldByName('quantidade').AsFloat := 0;
    application.MessageBox(pchar('Não foi possível obter o peso da balança. Detalhes:' +sLineBreak + msg), 'Atenção', MB_ICONWARNING);
  end
  else
  begin
    tara := qrBuscaItem.FieldByName('tara_balanca').AsFloat;
    // se o peso for menor que a tara ou se a tara estiver zerada, a quantidade é o mesmo do peso
    if (CompareValue(Peso,tara )=-1) or (CompareValue(tara, 0.0)=0) then
      qrBuscaItem.FieldByName('quantidade').AsFloat := Peso
    else
      qrBuscaItem.FieldByName('quantidade').AsFloat :=  Peso - tara;
  end;
end;

procedure TfrmPDV.acBuscarVendaExecute(Sender: TObject);
var str_sql:string;
    qraux1:tuniquery;
begin
  //Rotina para pesquisar/abrir a venda - Bruno 19/04/2018
  if qrvendaitem.RecordCount<1 then
  begin
    frmpesquisavendabalcao2:=Tfrmpesquisavendabalcao2.create(self) ;
    frmpesquisavendabalcao2.ShowModal;
    if frmPesquisavendabalcao2.Tag=1 then
    begin
      //se tiver venda sem item, deleta de abrir a salva
      qrVenda.cancel;
      str_sql:= format('delete from venda where ven_001=%d and emp_001=%d',
                       [qrVenda.fieldbyname('ven_001').AsInteger, recproj.iEmp]);
      ExecutaComandoSQL(str_sql);

      str_sql :='update venda set sit_001=0 where ven_001=:ven_001 and emp_001=:emp_001';
      qrAux1 := TUniQuery.Create(self);
      qrAux1.Connection := frmMenu.conexao;
      qrAux1.SQL.Add(str_sql);
      qrAux1.ParamByName('ven_001').AsInteger     := frmpesquisavendabalcao2.qrPesquisavendapdv.FieldByName('ven_001').asinteger;
      qrAux1.ParamByName('emp_001').AsInteger     := frmpesquisavendabalcao2.qrPesquisavendapdv.FieldByName('emp_001').asinteger;
      qrAux1.Execute;

      qrvenda.Close;
      qrvenda.ParamByName('id_venda').AsInteger   := frmpesquisavendabalcao2.qrPesquisavendapdv.FieldByName('ven_001').AsInteger;
      qrvenda.ParamByName('id_empresa').AsInteger := frmpesquisavendabalcao2.qrPesquisavendapdv.FieldByName('emp_001').AsInteger;
      qrvenda.Open;
      qrvenda.Edit;

      ValidaAcoesVenda;
    end;
    FreeAndNil(frmpesquisavendabalcao2);
  end;
end;

procedure TfrmPDV.acCancelaItemExecute(Sender: TObject);
var ok : boolean;
    id_usuario_cancelamento : integer;
begin

  if qrVendaItem.Active then
  begin
    if qrVendaItem.RecordCount>0 then
    begin
      id_usuario_cancelamento := RecProj.iUsuario;
      if bExigeSenhaCancelamentoItem then
        ok:=frmMenu.ConfirmacaoSenha('b_cancelamento_pdv', id_usuario_cancelamento)
      else
        ok:=true;

      if ok then
      begin
        frmControlePDVCancItem := TfrmControlePDVCancItem.Create(self,qrVenda.FieldByName('ven_001').AsInteger,id_usuario_cancelamento);
        frmControlePDVCancItem.ShowModal;
        FreeAndNil(frmControlePDVCancItem);
        AtualizaTotalVenda;
        qrVendaItem.Refresh;
      end;
    end
    else
      Application.MessageBox('Esta venda não possui itens!', 'Atenção', MB_ICONINFORMATION + MB_OK);
  end;
end;


procedure TfrmPDV.CancelarVenda;
var str_sql , sJust: string;
    id_venda, cod_venda, nro_mesa, id_usuario_cancelamento: integer;
    ok, permite_cancelamento : boolean;
    qrAux1 : TUniQuery;
begin
  buscacampo( permite_cancelamento , 'select b_cancelamento_pdv from usuarios where usu_001=' + inttostr(recproj.iUsuario), '', false);
  b_flag_venda_cancelada :=false;
  if qrVenda.Active then
  begin
    if qrVenda.state = dsedit then
    begin
      id_venda:=qrVenda.FieldByName('ven_001').AsInteger;

      qrAux1 := TUniQuery.Create(self);
      qrAux1.Connection := frmmenu.conexao;
      //verifica se a venda não possui items
      str_sql:= 'select 1 from vendaitem where ven_001=:id_venda and emp_001=:emp';
      PreparaQuerySQL(qrAux1, str_sql);
      qrAux1.ParamByName('id_venda').AsInteger := id_venda;
      qrAux1.ParamByName('emp').AsInteger := RecProj.iEmp;
      qrAux1.Open;
      if qrAux1.RecordCount<1 then
      begin
        str_sql:= 'delete from venda where ven_001=:id_venda and emp_001=:emp';
        PreparaQuerySQL(qrAux1, str_sql);
        qrAux1.ParamByName('id_venda').AsInteger := id_venda;
        qrAux1.ParamByName('emp').AsInteger := RecProj.iEmp;
        qrAux1.Execute;
        Application.MessageBox('Venda cancelada com sucesso!', 'Atenção', MB_ICONINFORMATION + MB_OK);
				qrVenda.close;
        b_flag_venda_cancelada :=true;
      end
      else
      begin
        id_usuario_cancelamento := RecProj.iUsuario;
        if bExigeSenhaCancelamentoVenda then
          ok:=frmMenu.ConfirmacaoSenha('b_cancelamento_pdv', id_usuario_cancelamento)
        else
        begin
          if not permite_cancelamento then
            ok:=frmMenu.ConfirmacaoSenha('b_cancelamento_pdv', id_usuario_cancelamento)
          else
            ok:=true;
        end;
        if ok then
        begin
          b_flag_venda_cancelada := CancelaVenda(id_venda, id_usuario_cancelamento, 'CANCELAMENTO PDV');
          qrVenda.close;
          qrVendaItem.Close;
          qrBuscaItem.Close;
        end;
      end;
    end;
  end;
end;

procedure TfrmPDV.acCancelarVendaExecute(Sender: TObject);
begin
  if application.MessageBox('Confirma o cancelamento da venda atual?', 'Atenção', MB_ICONQUESTION + mb_yesno) = mrYes then
    begin
      CancelarVenda;
      if not b_flag_venda_cancelada then
      begin
        qrVenda.Open;
        qrVenda.edit;
        abort;
      end;
    end
  else
    abort;
end;

procedure TfrmPDV.acPesquisarItemExecute(Sender: TObject);
var str_sql : string;
    key : word;
begin
  edCodProduto.SetFocus;

  str_sql:= ' SELECT MAT.MAT_001, '+
            ' MAT.MAT_004, '+
            ' MAT.MAT_003, '+
            ' CAT.CAT_002, '+
            ' UNI.UNI_002, '+
            ' MAT.MAT_008, '+
            ' coalesce(stm.quantidade, 0.0) as quantidade, '+
            ' FN_SITUACOES(MAT.sit_001)  '+   // FN situacoes uma função para retorno descrição
            ' FROM MATERIAIS MAT '+
            ' LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND (UNI.UNI_001 = MAT.UNI_001) '+
            ' LEFT OUTER JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.CAT_001 = MAT.CAT_001) '+
            ' left join setor_estoque_material stm on stm.id_material=mat.mat_001 and stm.id_empresa=mat.emp_001 and stm.id_setor=mat.id_setor ';

   frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
      str_sql,
      CriaIntegerArray([1,2,3,4,5,6,7]) ,
      CriaStringArray(['Código', 'Produto', 'Categoria','Unidade', 'Preço','Estoque','Situação' ]),
      1, 1, ' mat.sit_001=4 and MAT.emp_001='+IntToStr(RecProj.iEmp), 800, 500, false, 'MAT_003' );
      frmBuscaRegistro.edBusca.Text:= sLetraPesquisa;//Faz a busca do produto
   frmBuscaRegistro.ShowModal;
   if frmBuscaRegistro.Tag=1 then
   begin
     edCodProduto.Text:=frmBuscaRegistro.valor_retorno;
     key :=  vk_return;
     edCodProdutoKeyDown(self, key, []);
   end;
   FreeAndNil(frmBuscaRegistro);
end;

procedure TfrmPDV.acRecebimentoClienteExecute(Sender: TObject);
begin
  frmControleContasReceberFiado:=TfrmControleContasReceberFiado.Create(self);
  frmcontrolecontasreceberfiado.ShowModal;
  FreeAndNil(frmcontrolecontasreceberfiado);
end;

procedure TfrmPDV.acSalvaVendaExecute(Sender: TObject);
var str_sql: string;
    qraux1: tuniquery;
begin
  //Rotina para salvar a venda - Bruno 19/04/2018
  if qrVenda.RecordCount <= 0 then
  begin
    Application.MessageBox('Não existe venda para ser fechada!', 'Atenção', MB_ICONEXCLAMATION + MB_OK);
    Abort;
  end;

  if qrVendaItem.RecordCount <= 0 then
  begin
    Application.MessageBox('Não existem produtos na venda!', 'Atenção', MB_ICONEXCLAMATION + MB_OK);
    Abort;
  end;

  if Application.MessageBox('Deseja realmente colocar esta venda em espera?', 'ATENÇÃO', MB_YESNO + MB_ICONQUESTION) = mryes then
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
  end;
end;

procedure TfrmPDV.acConsultarProdutoExecute(Sender: TObject);
var str_sql : string;
begin
  str_sql:= ' SELECT MAT.MAT_001, '+
            ' MAT.MAT_004, '+
            ' MAT.MAT_003, '+
            ' CAT.CAT_002, '+
            ' UNI.UNI_002, '+
            ' MAT.MAT_008,  '+
            ' coalesce(stm.quantidade, 0.0) as quantidade  '+
            ' FROM MATERIAIS MAT '+
            ' LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND (UNI.UNI_001 = MAT.UNI_001) '+
            ' LEFT OUTER JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.CAT_001 = MAT.CAT_001) '+
            ' left join setor_estoque_material stm on stm.id_material=mat.mat_001 and stm.id_empresa=mat.emp_001 and stm.id_setor=mat.id_setor ';

   frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
      str_sql,
      CriaIntegerArray([1,2,3,4,5,6]) ,
      CriaStringArray(['Código', 'Produto', 'Categoria','Unidade', 'Preço','Estoque atual']),
      1, 1, ' mat.sit_001=4 and MAT.emp_001='+IntToStr(RecProj.iEmp), 800, 500);
   frmBuscaRegistro.ShowModal;
   FreeAndNil(frmBuscaRegistro);
end;

procedure TfrmPDV.acDescontoItemExecute(Sender: TObject);
begin
  if qrVendaItem.Active then
  begin
    if qrVendaItem.RecordCount>0 then
    begin
      if bPermiteDescontoItem then
      begin
        frmControleMesaItensAcoes := TfrmControleMesaItensAcoes.Create(self,qrVenda.FieldByName('ven_001').AsInteger,recproj.iUsuario,2);
        frmControleMesaItensAcoes.ShowModal;
        FreeAndNil(frmControleMesaItensAcoes);
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

procedure TfrmPDV.acFecharVendaExecute(Sender: TObject);
begin
  //Não finaliza a venda sem itens - Bruno 07-03-2018
  if qrVendaItem.RecordCount <=0 then
  begin
    Application.MessageBox('Esta venda não possui itens!', 'Atenção', MB_ICONINFORMATION + MB_OK);
    abort;
  end;

  if qrvenda.State = dsedit then qrvenda.Post;
  frmPDVFechamento := TfrmPDVFechamento.Create(self, qrvenda.FieldByName('ven_001').AsInteger, possui_devolucao_pdv, valor_ultima_devolucao  );
  frmPDVFechamento.ShowModal;
  if frmPDVFechamento.Tag=1 then
  begin
    qrvenda.Close;
    qrVendaItem.Close;
    qrBuscaItem.Close;
  end
  else
  qrvenda.edit;
  FreeAndNil(frmPDVFechamento);
end;

procedure TfrmPDV.acImportaComandaExecute(Sender: TObject);
var
num_comanda:integer;
qr_aux:tuniquery;
str_sql:string;
begin
  //Nova rotina importação comanda (uma ou várias) - Bruno 25/06/2018
  if (ConfirmaCancelaVenda) then
  begin
    frmImportarcomanda:=tfrmImportarcomanda.create(self);
    frmImportarcomanda.ShowModal;
    if frmImportarcomanda.tag=1 then
    begin
      id_comanda := frmImportarcomanda.id_comanda_retorno;
      num_comanda:= frmImportarcomanda.numero_comanda;
      qr_aux := CriaUniQuery(self, frmmenu.conexao);
      str_sql:=format ( 'select '+
                        'v.emp_001 as id_empresa, '+
                        'v.ven_001 as id_venda, ' +
        ' v.ven_009 as valor_venda, ' + ' v.ven_024 as tipo_venda ,  ' +
        ' v.ven_026 as numero_comanda, ' + ' ven_029 as numero_venda, ' +
        ' vi.mat_001 as id_material, ' + ' vi.ite_001 as id_vendaitem, ' +
        ' vi.ite_002 as quantidade, ' + ' vi.ite_003 as valor_unitario, ' +
        ' vi.ite_005 as valor_total, ' + ' vi.b_venda_tamanho, ' +
        ' vi.tamanho,  ' + ' vi.item_fracionado, ' +
        ' vi.data_hora_lancamento, ' + ' vi.gar_001 as id_garcom, ' +
        ' u.usu_002 as nome_garcom, ' + ' m.mat_003 as descricao_produto, ' +
        ' vi.acrescimo, ' + ' vi.desconto, ' + ' m.mat_004 as codigo_material, '
        + ' vi.b_70pc_valor_unit,  ' + ' v.cli_001, ' + ' v.usu_001_1, ' +
        ' m.cat_001, ' + ' v.sit_001 ' + ' from venda v ' +
        ' join vendaitem vi on v.ven_001=vi.ven_001 and v.emp_001=vi.emp_001 ' +
        ' left join usuarios u on u.usu_001=vi.gar_001 ' +
        ' join materiais m on m.mat_001=vi.mat_001 and m.emp_001=vi.emp_001  ' +
        ' where v.emp_001= ' + inttostr(recproj.iEmp) +
        ' and v.sit_001 in (8,21) and v.ven_024=''C'' and v.ven_026= ' +
        inttostr(num_comanda) + ' order by v.ven_001, vi.ite_001 ',
        [id_comanda, recproj.iEmp]);

      if executaconsultasql(qr_aux, str_sql) then
      begin
        if not bImportando then
          acAberturaVenda.Execute;

        qrAuxComanda.Close;
        qrAuxComanda.ParamByName('id_empresa').AsInteger := recproj.iEmp;
        qrAuxComanda.ParamByName('id_venda').AsInteger   := id_comanda;
        qrAuxComanda.Open;

        qrAuxComanda.First;
        while not qrAuxComanda.Eof do
        begin
          InsereVendaItem(qrAuxComanda.FieldByName('id_material').AsInteger,
                          qrVendaItem.RecordCount + 1,
                          qrAuxComanda.FieldByName('qtdevenda').asFloat,
                          qrAuxComanda.FieldByName('vlrvenda').AsFloat,
                          qrAuxComanda.FieldByName('valor_total').AsFloat,
                          qrAuxComanda.FieldByName('desc_tamanho').asstring,
                          qrAuxComanda.FieldByName('b_venda_tamanho').asBoolean,
                          0);

          qrvendaitem.Close;
          qrvendaitem.ParamByName('id_empresa').AsInteger := recproj.iEmp;
          qrvendaitem.ParamByName('id_venda').AsInteger   := qrVenda.FieldByName('ven_001').AsInteger;
          qrvendaitem.Open;

          qrAuxComanda.Next;
        end;

        qratualizacomanda.Close;
        qratualizacomanda.SQL.Clear;
        qratualizacomanda.SQL.Text:= 'delete from vendaitem where ven_001 = :id_comanda and emp_001 = :emp';
        qratualizacomanda.ParamByName('id_comanda').AsInteger:= id_comanda;
        qratualizacomanda.ParamByName('emp').AsInteger:= recproj.iEmp;
        qratualizacomanda.execute;

        qratualizacomanda.Close;
        qratualizacomanda.SQL.Clear;
        qratualizacomanda.SQL.Text:= 'delete from venda where ven_001 = :id_comanda and emp_001 = :emp';
        qratualizacomanda.ParamByName('id_comanda').AsInteger:= id_comanda;
        qratualizacomanda.ParamByName('emp').AsInteger:= recproj.iEmp;
        qratualizacomanda.execute;

        qrvendaitem.Close;
        qrvendaitem.ParamByName('id_empresa').AsInteger := recproj.iEmp;
        qrvendaitem.ParamByName('id_venda').AsInteger   := qrVenda.FieldByName('ven_001').AsInteger;
        qrvendaitem.Open;

        bImportando:= True;
        AtualizaTotalVenda;
        edCodProduto.SetFocus;
      end;
    end;
  end;
end;

procedure TfrmPDV.acImportarmesaExecute(Sender: TObject);
var
num_mesa:integer;
qr_aux:tuniquery;
str_sql:string;
begin
  //Nova rotina importação mesa (uma ou várias) - Bruno 25/06/2018
  if ConfirmaCancelaVenda then
  begin
    frmImportamesa:=tfrmImportamesa.create(self);
    frmImportamesa.ShowModal;
    if frmImportamesa.tag=1 then
    begin
      id_venda_retorno := frmImportamesa.id_venda_mesa_retorno; // Numero da venda
      num_mesa:=frmImportamesa.numero_mesa;            // Numero da mesa
      qr_aux := CriaUniQuery(self, frmmenu.conexao);
      str_sql:=format ( 'select '+
                        ' v.emp_001 as id_empresa, '+
                        ' v.ven_001 as id_venda, '+
                        ' v.ven_009 as valor_venda, '+
                        ' v.ven_024 as tipo_venda ,  '+
                        ' v.ven_025 as numero_mesa, '+
                        ' ven_029 as numero_venda, '+
                        ' vi.mat_001 as id_material, '+
                        ' vi.ite_001 as id_vendaitem, '+
                        ' vi.ite_002 as quantidade, '+
                        ' vi.ite_003 as valor_unitario, '+
                        ' vi.ite_005 as valor_total, '+
                        ' vi.b_venda_tamanho, '+
                        ' vi.tamanho,  '+
                        ' vi.item_fracionado, '+
                        ' vi.data_hora_lancamento, '+
                        ' vi.gar_001 as id_garcom, '+
                        ' u.usu_002 as nome_garcom, '+
                        ' m.mat_003 as descricao_produto, '+
                        ' vi.acrescimo, '+
                        ' vi.desconto, '+
                        ' m.mat_004 as codigo_material, '+
                        ' vi.b_70pc_valor_unit,  '+
                        ' v.cli_001, '+
                        ' v.usu_001_1, '+
                        ' m.cat_001, '+
                        ' v.sit_001 '+
                        ' from venda v '+
                        ' join vendaitem vi on v.ven_001=vi.ven_001 and v.emp_001=vi.emp_001 '+
                        ' left join usuarios u on u.usu_001=vi.gar_001 '+
                        ' join materiais m on m.mat_001=vi.mat_001 and m.emp_001=vi.emp_001  '+
                        ' where v.emp_001= ' + IntToStr(recproj.iEmp) +
                        ' and v.sit_001 in (8,21) and v.ven_024=''M'' and v.ven_025= ' + IntToStr(num_mesa) +
                        ' order by v.ven_001, vi.ite_001 ', [id_venda_retorno, recproj.iEmp]);


      if ExecutaConsultaSQL(qr_aux, str_sql) then
      begin
        //atualiza a venda - Rafael 11/06/2018
//        qratualizamesa.Close;
//        qratualizamesa.SQL.Clear;
//        qratualizamesa.SQL.Text:='update venda set sit_001=0 where ven_001=:id_mesa';
//        qratualizamesa.ParamByName('id_mesa').AsInteger:=id_venda_retorno;
//        qratualizamesa.execute;

        if not bImportando then
          acAberturaVenda.Execute;

        qrAuxComanda.Close;
        qrAuxComanda.ParamByName('id_empresa').AsInteger := recproj.iEmp;
        qrAuxComanda.ParamByName('id_venda').AsInteger   := id_venda_retorno;
        qrAuxComanda.Open;

        qrAuxComanda.First;
        while not qrAuxComanda.Eof do
        begin
          InsereVendaItem(qrAuxComanda.FieldByName('id_material').AsInteger,
                          qrVendaItem.RecordCount + 1,
                          qrAuxComanda.FieldByName('qtdevenda').asFloat,
                          qrAuxComanda.FieldByName('vlrvenda').AsFloat,
                          qrAuxComanda.FieldByName('valor_total').AsFloat,
                          qrAuxComanda.FieldByName('desc_tamanho').asstring,
                          qrAuxComanda.FieldByName('b_venda_tamanho').asBoolean,
                          0);

          qrvendaitem.Close;
          qrvendaitem.ParamByName('id_empresa').AsInteger := recproj.iEmp;
          qrvendaitem.ParamByName('id_venda').AsInteger   := qrVenda.FieldByName('ven_001').AsInteger;
          qrvendaitem.Open;

          qrAuxComanda.Next;
        end;

        qratualizacomanda.Close;
        qratualizacomanda.SQL.Clear;
        qratualizacomanda.SQL.Text:= 'delete from vendaitem where ven_001 = :id_comanda and emp_001 = :emp';
        qratualizacomanda.ParamByName('id_comanda').AsInteger:= id_venda_retorno;
        qratualizacomanda.ParamByName('emp').AsInteger:= recproj.iEmp;
        qratualizacomanda.execute;

        qratualizacomanda.Close;
        qratualizacomanda.SQL.Clear;
        qratualizacomanda.SQL.Text:= 'delete from venda where ven_001 = :id_comanda and emp_001 = :emp';
        qratualizacomanda.ParamByName('id_comanda').AsInteger:= id_venda_retorno;
        qratualizacomanda.ParamByName('emp').AsInteger:= recproj.iEmp;
        qratualizacomanda.execute;

//        qrVenda.Close;
//        qrvenda.ParamByName('id_venda').AsInteger :=id_venda_retorno;
//        qrvenda.open;
//
//        qrvenda.Edit;

        qrvendaitem.Close;
        qrvendaitem.ParamByName('id_empresa').AsInteger := recproj.iEmp;
        qrvendaitem.ParamByName('id_venda').AsInteger   := qrVenda.FieldByName('ven_001').AsInteger;
        qrvendaitem.Open;

        bImportando:= True;

        AtualizaTotalVenda;

        edCodProduto.SetFocus;
      end;
    end;
  end;
end;

procedure TfrmPDV.reimprimirExecute(Sender: TObject);
begin
  frmReimpressaoCupom := TfrmReimpressaoCupom.Create(self, 'I');
  frmReimpressaoCupom.ShowModal;
  FreeAndNil(frmReimpressaoCupom);
end;

procedure TfrmPDV.SairExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmPDV.SatExecute(Sender: TObject);
var
 FGerarCFe : GerarCFe;
 finaliza_venda: Boolean;
begin
   qrSat.Close;
   qrSat.SQL.Clear;
   qrSat.SQL.Add('select max(ven_001)as venda from venda');
   qrSat.Open;
//       ShowMessage(qrSat.FieldByName('venda').AsString);
   qrApoio.Close;
   qrApoio.SQL.Clear;
   qrApoio.SQL.Add('select* from venda where ven_001 =:idvenda');
   qrApoio.ParamByName('idvenda').AsInteger := qrSat.FieldByName('venda').AsInteger;
   qrApoio.Open;

  if qrApoio.FieldByName('tipofiscal').AsString <> '' then
   begin
     ShowMessage('Arquivo fiscal já emitido para esta venda');
     Exit
   end;

   try
     FGerarCFe := GerarCFe.Create;
     finaliza_venda := FGerarCFe.Autorizar(qrSat.FieldByName('venda').AsInteger, RecProj.iEmp);
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

end;

procedure TfrmPDV.AtualizaTotalVenda;
var total : double;
begin
  if qrVenda.state in [dsinsert, dsedit] then
  begin
    qrVenda.FieldByName('total_itens').AsFloat:=TotalItensVenda(qrVenda.FieldByName('ven_001').asinteger);
    total := TotalItensVenda(qrVenda.FieldByName('ven_001').asinteger) + qrVenda.FieldByName('acrescimo').AsFloat - qrVenda.FieldByName('desconto').AsFloat ;
    qrVenda.FieldByName('total_venda').AsFloat := total;
    qrVenda.post;
    qrVenda.edit;
  end
  else if qrVenda.State in [dsCalcFields] then
  begin
    qrVenda.FieldByName('total_itens').AsFloat:=TotalItensVenda(qrVenda.FieldByName('ven_001').asinteger);
  end;
end;

function TfrmPDV.ValidaInsercaoProduto(texto : string ; out quantidade: double ; out inserir_diretamente : boolean) : boolean;
var indice_qtde : integer;
    str_qtd, cod_ref : string;
    flag_etiqueta_balanca : boolean;
begin
  result := true;
  inserir_diretamente := false;
  texto := trim(texto);

  //Verifica se o codigo digitado (texto) tem as configurações para ser etiqueta
  if (Length(texto)=largura_cod_barras) and (texto[1]=inttostr(cod_barras_digito_1)) then
  begin
    //Pesquisa o produto passando apenas o codigo ref retirado do parametro texto
    qrVerificaBalanca.Close;
    qrVerificaBalanca.ParamByName('mat_004').AsString:= inttostr(strtoint(copy(texto, 2, largura_cod_barras_produto)));
    qrVerificaBalanca.Open;

    //Verifica se exporta para balança
    if qrVerificaBalanca.FieldByName('b_exporta_peso_balanca').AsBoolean then
      flag_etiqueta_balanca := true
    else
      flag_etiqueta_balanca := false;
  end
  else
    flag_etiqueta_balanca := false;


  if Length(texto)>0 then
  begin
    //verifica se o operador informou no formato: qtde * cod
      indice_qtde := AnsiPos('*', texto);
    if indice_qtde>0 then
    begin
      str_qtd := copy(texto, 1, indice_qtde-1);
      cod_ref := copy(texto, indice_qtde+1, length(texto));
      //verifica se a quantidade digitada é um número
      try
        quantidade := StrToFloat(trim(str_qtd));
        inserir_diretamente:=true;
      except
        quantidade:=0;
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
        cod_ref:= copy(texto, 2, largura_cod_barras_produto);
        //converte pra inteiro e volta para string (para remover os '0' iniciais)
        cod_ref := inttostr(strtoint(cod_ref));
        //pega a parte referente a quantidade
        str_qtd := copy(texto, largura_cod_barras_produto+2, largura_cod_barras);
        //descarta o ultimo digito, que é dv
        str_qtd :=  copy(str_qtd, 1, Length(str_qtd)-1);

        qrprodbal.Close;
        qrprodbal.SQL.Clear;
        qrprodbal.SQL.Add('select * from materiais where mat_004 = :cobarra');
        qrprodbal.ParamByName('cobarra').AsString := cod_ref;
        qrprodbal.Open;

        try
          quantidade := StrToFloat(trim(str_qtd)) / qrprodbal.FieldByName('mat_008').AsFloat / 100;
          inserir_diretamente:=true;
        except
          quantidade:=0;
          application.MessageBox('Informações inválidas!', 'Atenção', MB_ICONINFORMATION);
          result := false;
        end;
      end
      else
      begin
        quantidade:=1;
        cod_ref := texto;
      end;
      // largura_cod_barras, largura_cod_barras_produto, cod_barras_digito_1 : integer;
    end;
    // se nao houve erro na inserção do codigo e quantidade, faz a busca
    if result then
    begin
      qrBuscaItem.Close;
      qrBuscaItem.parambyname('emp').AsInteger := recproj.iEmp;
      qrBuscaItem.parambyname('cod_ref').asstring := cod_ref;
      qrBuscaItem.parambyname('id_venda').asinteger := qrvenda.FieldByName('ven_001').AsInteger;
      qrBuscaItem.Open;
      if qrBuscaItem.RecordCount >0 then
      begin
        result :=  true;
        if qrBuscaItem.FieldByName('b_peso_balanca').AsBoolean and not inserir_diretamente then
          quantidade := qrBuscaItem.FieldByName('quantidade').asfloat;

        if flag_etiqueta_balanca and (compareVAlue(quantidade,1)=-1) and
           ((qrBuscaItem.FieldByName('unidade').AsString = 'UN') or  (qrBuscaItem.FieldByName('unidade').AsString = 'PC')) then
          quantidade :=quantidade * 1000;
      end
      else
        result :=  false;
      if not result then application.MessageBox('Produto não encontrado!', 'Atenção', MB_ICONINFORMATION);
    end;
  end
  else
  begin
    result:=false;
    quantidade :=1;
  end;
end;

procedure TfrmPDV.NovoRegistro(id_cliente : integer = 0; id_orcamento : integer = 0 ; id_vendedor : integer = 0);
var  vendedor : string;
begin
  if bExigeVendedor and (id_vendedor<=0) then
  begin
    frmVendaSelecaoVendedor:= TfrmVendaSelecaoVendedor.Create(self);
    frmVendaSelecaoVendedor.ShowModal;
    if frmVendaSelecaoVendedor.Tag=1 then
    begin
      id_vendedor := frmVendaSelecaoVendedor.id_usuario;
      FreeAndNil( frmVendaSelecaoVendedor);
    end
    else
    begin
     Application.MessageBox('Para iniciar uma nova venda, é necessário informar o vendedor!', 'Atenção', MB_ICONINFORMATION);
     FreeAndNil( frmVendaSelecaoVendedor);
     abort;
    end;
  end;

  if not qrVenda.Active then qrVenda.Open;
  qrVenda.Append;
  qrVenda.FieldByName('ven_001').AsInteger:=NovoId('venda', 'ven_001', RecProj.iEmp);
  qrVenda.FieldByName('venda_orcamento').AsInteger:=0;
  qrVenda.FieldByName('emp_001').AsInteger:= RecProj.iEmp;
  qrVenda.FieldByName('data_cadastro').asdatetime:= date + time;
  qrVenda.FieldByName('sit_001').AsInteger:=0;
  qrVenda.FieldByName('usu_001_1').AsInteger:=RecProj.iUsuario;
  qrVenda.FieldByName('tipo_venda').AsString:= 'P'; //Tipo PDV
  qrVenda.FieldByName('acrescimo').AsFloat:=0;
  qrVenda.FieldByName('b_taxa_entrega').asboolean:=false;
  qrVenda.FieldByName('id_caixa_abertura').AsInteger:=RecProj.iIDCaixa;
  qrVenda.FieldByName('terminal_abertura').AsString:= NomeDoTerminal;

  if possui_devolucao_pdv and (id_cliente_devolucao>0) then
    qrVenda.FieldByName('id_cliente').AsInteger:= id_cliente_devolucao
  else if id_cliente>0 then
    qrVenda.FieldByName('id_cliente').AsInteger:= id_cliente;

  if id_vendedor>0 then
  begin
    buscacampo(vendedor, 'select usu_002 from usuarios where usu_001='+ inttostr(id_vendedor), '', false);
    qrVenda.FieldByName('id_vendedor').AsInteger:= id_vendedor;
    qrVenda.FieldByName('nome_vendedor').AsString:= vendedor;
  end
  else
    qrVenda.FieldByName('id_vendedor').value:=null;

  if id_orcamento > 0 then
    qrVenda.FieldByName('id_orcamento').value:=id_orcamento
  else
    qrVenda.FieldByName('id_orcamento').value:=null;

  qrVenda.parambyname('id_venda').AsInteger:=qrVenda.FieldByName('ven_001').AsInteger;
  qrVenda.post;
  qrVenda.Edit;

  if bSolicitaCliente then
  acAbreBuscaCliente.Execute;
  qrvendaitem.Close;
  qrvendaitem.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrvendaitem.ParamByName('id_venda').AsInteger :=  qrVenda.FieldByName('ven_001').AsInteger;
  qrvendaitem.Open;

  bImportando:= False;
end;


procedure TfrmPDV.qrBuscaItemAfterOpen(DataSet: TDataSet);
var tamanho: string;
begin
  edValor.Enabled := bAlteraValorUnitarioItem and bAlteraValorUnitarioItemUsuario;
  if qrBuscaItem.RecordCount>0 then
  begin
    if qrbuscaitem.FieldByName('id_situacao').AsInteger=3 then
    begin
      Application.MessageBox('Não foi possível fazer a venda desse produto, pois se encontra inativo!','Atenção', MB_ICONWARNING +MB_OK);
      qrBuscaItem.Close;
      edCodProduto.clear;
      edCodProduto.SetFocus;
      abort;
    end;
    if not edValor.Enabled then
      edValor.Enabled := qrBuscaItem.FieldByName('b_exige_alterar_preco_venda').asboolean;
    qrBuscaItem.Edit;
    edquantidade.Enabled := bAlteraQuantidade;

    // verifica se o item é vendido por tamanho - Bruno (10-04-2018)
    if qrBuscaItem.FieldByName('b_venda_tamanho').asBoolean then
    begin
      frmVendaSelecaoTamanho := TfrmVendaSelecaoTamanho.Create(self,
        qrBuscaItem.FieldByName('id_material').AsInteger);
      frmVendaSelecaoTamanho.ShowModal;
      if frmVendaSelecaoTamanho.tag = 1 then
      begin
        tamanho := frmVendaSelecaoTamanho.tamanho;
        qrBuscaItem.FieldByName('tamanho_padrao').asstring := tamanho;
        if tamanho = 'P' then
        begin
          qrBuscaItem.FieldByName('descricao').asstring :=
            qrBuscaItem.FieldByName('descricao_p').asstring;
          qrBuscaItem.FieldByName('valor_unit').AsFloat :=
            qrBuscaItem.FieldByName('valor_tam_p').AsFloat;
        end
        else if tamanho = 'M' then
        begin
          qrBuscaItem.FieldByName('descricao').asstring :=
            qrBuscaItem.FieldByName('descricao_m').asstring;
          qrBuscaItem.FieldByName('valor_unit').AsFloat :=
            qrBuscaItem.FieldByName('valor_tam_m').AsFloat;
        end
        else if tamanho = 'G' then
        begin
          qrBuscaItem.FieldByName('descricao').asstring :=
            qrBuscaItem.FieldByName('descricao_g').asstring;
          qrBuscaItem.FieldByName('valor_unit').AsFloat :=
            qrBuscaItem.FieldByName('valor_tam_g').AsFloat;
        end
        else if tamanho = 'GG' then
        begin
          qrBuscaItem.FieldByName('descricao').asstring :=
            qrBuscaItem.FieldByName('descricao_gg').asstring;
          qrBuscaItem.FieldByName('valor_unit').AsFloat :=
            qrBuscaItem.FieldByName('valor_tam_gg').AsFloat;
        end
        else if tamanho = 'E' then
        begin
          qrBuscaItem.FieldByName('descricao').asstring :=
            qrBuscaItem.FieldByName('descricao_extra').asstring;
          qrBuscaItem.FieldByName('valor_unit').AsFloat :=
            qrBuscaItem.FieldByName('valor_tam_extra').AsFloat;
        end
        else
          qrBuscaItem.FieldByName('descricao').asstring :=
            qrBuscaItem.FieldByName('descricao_old').asstring;
      end;
      FreeAndNil(frmVendaSelecaoTamanho);
    end;


    // verifica se o item é vendido por peso e se a balança está habilitada
    if qrBuscaItem.FieldByName('b_peso_balanca').AsBoolean and bUtilizaBalanca then
    begin

      try
        edquantidade.Enabled := bPermiteAlterarQuantidadeBalanca;
        // se houver conexão aberta, Fecha a conexão
        if ACBrBAL1.Ativo then ACBrBAL1.Desativar;
        // Conecta com a balança
        ACBrBAL1.Ativar;
        // lê o peso na balança
        ACBrBAL1.LePeso( iTimeOutBalanca );
        ACBrBAL1.Desativar;
      except
        on E : Exception do
        begin
          application.MessageBox(pchar('Erro ao obter o peso da balança! Verifique se a balança está ligada e conectada ao computador e se as configurações estão corretas.'+#13#10+
                                      E.Message + E.ClassName),'Atenção', MB_ICONERROR );
          qrBuscaItem.FieldByName('quantidade').AsFloat := 0;
        end;
      end;

      if qrBuscaItem.FieldByName('quantidade').AsFloat <= 0 then
      begin
        qrBuscaItem.close;
        edCodProduto.Clear;
        if edCodProduto.CanFocus then edCodProduto.SetFocus;
        abort;
      end;
    end;
  end;
end;

procedure TfrmPDV.qrBuscaItemCalcFields(DataSet: TDataSet);
begin
  qrBuscaItem.FieldByName('valor_total').AsFloat :=qrBuscaItem.FieldByName('valor_unit').AsFloat *
  qrBuscaItem.FieldByName('quantidade').AsFloat;
end;

procedure TfrmPDV.qrVendaAfterClose(DataSet: TDataSet);
begin
  ValidaAcoesVenda;
  valor_ultima_devolucao :=0;
  possui_devolucao_pdv := false;
end;

procedure TfrmPDV.qrVendaAfterOpen(DataSet: TDataSet);
begin
  qrvendaitem.Close;
  qrvendaitem.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrvendaitem.ParamByName('id_venda').AsInteger :=  qrVenda.FieldByName('ven_001').AsInteger;
  qrvendaitem.Open;
end;

procedure TfrmPDV.qrVendaItemAfterRefresh(DataSet: TDataSet);
begin
  //corre a lista pro ultimo resgistro...
  qrVendaItem.last;
end;

procedure TfrmPDV.ValidaAcoesVenda;
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
    acOpcionaisItem.Enabled:= true;
    lbStatusVenda.Caption := 'CAIXA OCUPADO';

  end
  else
  begin
    acAberturaVenda.enabled := true;
    acFecharVenda.Enabled := false;
    acCancelarVenda.Enabled := false;
    acCancelaItem.Enabled := false;
    acDescontoItem.Enabled := false;
    acObservacaoItem.Enabled := false;
    acAbreBuscaCliente.Enabled := false;
    acInsereProdutoFracionado.Enabled := false;
    acOpcionaisItem.Enabled:= false;
    lbStatusVenda.Caption := 'CAIXA LIVRE';

  end;

end;


end.

