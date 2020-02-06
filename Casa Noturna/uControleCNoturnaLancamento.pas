unit uControleCNoturnaLancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, AdvPanel, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxLabel, cxDBLabel, Vcl.DBCGrids, Data.DB, MemDS, DBAccess, Uni, cxTextEdit,
  cxMaskEdit, cxSpinEdit, cxDBEdit, Vcl.StdCtrls, system.Math, AdvGlowButton,
  cxCurrencyEdit, AdvGroupBox, System.StrUtils, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxButtonEdit,
  cxGridLevel, cxGridCardView, cxGridDBCardView, cxGridCustomLayoutView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Datasnap.DBClient, Datasnap.Provider,
  System.Actions, Vcl.ActnList, Vcl.DBCtrls, dxSkinsCore, dxSkinBlack,
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
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmControleCNoturnaLancamento = class(TForm)
    pnPrincipal: TAdvPanel;
    qrCategoria: TUniQuery;
    qrCategoriaid_categoria: TIntegerField;
    qrCategoriadescricao: TWideStringField;
    qrCategoriab_exibir_icone: TBooleanField;
    qrCategoriaarquivo_img: TWideStringField;
    qrCategorianro_produtos: TLargeintField;
    dsCategoria: TDataSource;
    qrBuscaItem: TUniQuery;
    qrBuscaItemid_material: TIntegerField;
    qrBuscaItemdescricao: TWideStringField;
    qrBuscaItemunidade: TWideStringField;
    qrBuscaItemvalor_unit: TFloatField;
    qrBuscaItemcod_ref: TWideStringField;
    qrBuscaItemvalortotal: TCurrencyField;
    qrBuscaItemultimo_item: TIntegerField;
    qrBuscaItemid_garcom: TIntegerField;
    qrBuscaItemnome_garcom: TWideStringField;
    qrBuscaItemcod_impressora: TIntegerField;
    qrBuscaItemvalor_unit_old: TFloatField;
    qrBuscaItemquantidade: TFloatField;
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
    qrBuscaItemvalor_acrescimo: TFloatField;
    qrBuscaItemb_peso_balanca: TBooleanField;
    qrBuscaItemid_categoria: TIntegerField;
    qrBuscaItemb_exige_alterar_preco_venda: TBooleanField;
    qrBuscaItemb_exige_70pc_valor_unit: TBooleanField;
    qrBuscaItemarquivo_img: TWideStringField;
    dsBuscaItem: TDataSource;
    pnCategoria: TPanel;
    DBCtrlGridCategoria: TDBCtrlGrid;
    pnItemCat: TPanel;
    imgCategoria: TImage;
    lbCategoria: TcxDBLabel;
    pnLabelProdutos: TPanel;
    DBCtrlGridProduto: TDBCtrlGrid;
    Panel1: TPanel;
    imgProduto: TImage;
    lbDescProduto: TcxDBLabel;
    qrVenda: TUniQuery;
    pnDireito: TPanel;
    qrVendaid_venda: TIntegerField;
    qrVendanome_cliente: TWideStringField;
    qrVendacpf_cliente: TWideStringField;
    qrVendarg_cliente: TWideStringField;
    qrVendavalor_consumacao: TFloatField;
    qrVendavalor_entrada: TFloatField;
    qrVendavalor_limite: TFloatField;
    qrVendavalor_venda: TFloatField;
    qrVendacpf_nome: TWideStringField;
    qrVendarg_nome: TWideStringField;
    pnDadosVenda: TPanel;
    edNumeroComanda: TEdit;
    Label1: TLabel;
    dsVenda: TDataSource;
    Label2: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    qrVendanumero_comanda: TIntegerField;
    qrVendanumero_venda: TIntegerField;
    lbUsuario: TLabel;
    edNomeCliente: TcxDBTextEdit;
    Panel2: TPanel;
    edCodProduto: TEdit;
    Label3: TLabel;
    edQuantidade: TcxDBCurrencyEdit;
    btQtdeMais: TAdvGlowButton;
    btQtdeMenos: TAdvGlowButton;
    Label4: TLabel;
    btInserir: TAdvGlowButton;
    AdvGroupBox2: TAdvGroupBox;
    btKb2_0: TAdvGlowButton;
    btKb2_2: TAdvGlowButton;
    btKb2_1: TAdvGlowButton;
    btKb2_3: TAdvGlowButton;
    btKb2_4: TAdvGlowButton;
    btKb2_5: TAdvGlowButton;
    btKb2_6: TAdvGlowButton;
    btKb2_7: TAdvGlowButton;
    btKb2_8: TAdvGlowButton;
    btKb2_9: TAdvGlowButton;
    btKb2_virg: TAdvGlowButton;
    cdsVendaItem: TClientDataSet;
    cdsVendaItemvalor_total2: TAggregateField;
    dsVendaItem: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1valor_unitario: TcxGridDBColumn;
    cxGrid1DBTableView1quantidade: TcxGridDBColumn;
    cxGrid1DBTableView1valor_acrescimo: TcxGridDBColumn;
    cxGrid1DBTableView1valor_total: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBCardView1: TcxGridDBCardView;
    cxGrid1DBCardView1descricao: TcxGridDBCardViewRow;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    dspVendaItem: TDataSetProvider;
    qrVendaItem: TUniQuery;
    qrVendaItemid_material: TIntegerField;
    qrVendaItemquantidade: TFloatField;
    qrVendaItemvalor_unitario: TFloatField;
    qrVendaItemvalor_total: TFloatField;
    qrVendaItemcod_referencia: TWideStringField;
    qrVendaItemobservacao: TWideStringField;
    qrVendaItemcod_impressora: TIntegerField;
    qrVendaItemb_venda_tamanho: TBooleanField;
    qrVendaItemtamanho: TWideStringField;
    qrVendaItemitem_fracionado: TIntegerField;
    qrVendaItemtamanho_descricao: TWideStringField;
    qrVendaItemvalor_acrescimo: TFloatField;
    qrVendaItemitem: TIntegerField;
    qrVendaItemdesconto: TFloatField;
    qrVendaItemdescricao: TWideStringField;
    cdsVendaItemdescricao: TWideStringField;
    cdsVendaItemcod_impressora: TIntegerField;
    cdsVendaItemcod_referencia: TWideStringField;
    cdsVendaItemobservacao: TWideStringField;
    cdsVendaItemid_material: TIntegerField;
    cdsVendaItemquantidade: TFloatField;
    cdsVendaItemvalor_unitario: TFloatField;
    cdsVendaItemvalor_total: TFloatField;
    cdsVendaItemb_venda_tamanho: TBooleanField;
    cdsVendaItemtamanho: TWideStringField;
    cdsVendaItemitem_fracionado: TIntegerField;
    cdsVendaItemtamanho_descricao: TWideStringField;
    cdsVendaItemvalor_acrescimo: TFloatField;
    cdsVendaItemitem: TIntegerField;
    cdsVendaItemdesconto: TFloatField;
    qrVendaItemnumero_pedido: TIntegerField;
    cdsVendaItemnumero_pedido: TIntegerField;
    btConfirma: TAdvGlowButton;
    ActionList1: TActionList;
    acLancarPedido: TAction;
    qrInsereItem: TUniQuery;
    btKb3_BackSpace: TAdvGlowButton;
    qrVendaItemid_empresa: TIntegerField;
    qrVendaItemid_venda: TIntegerField;
    qrVendaItemid_garcom: TIntegerField;
    qrVendaItemitem_impresso: TWideStringField;
    qrVendaItempendente_impressao: TWideStringField;
    qrVendaItemid_situacao: TIntegerField;
    qrVendaItemquantidade_impressao: TFloatField;
    qrVendaItemdata_hora_lancamento: TDateTimeField;
    cdsVendaItemid_empresa: TIntegerField;
    cdsVendaItemid_venda: TIntegerField;
    cdsVendaItemid_garcom: TIntegerField;
    cdsVendaItemitem_impresso: TWideStringField;
    cdsVendaItempendente_impressao: TWideStringField;
    cdsVendaItemid_situacao: TIntegerField;
    cdsVendaItemquantidade_impressao: TFloatField;
    cdsVendaItemdata_hora_lancamento: TDateTimeField;
    qrVendaItemnovo_item: TBooleanField;
    cdsVendaItemnovo_item: TBooleanField;
    pnDescProduto: TPanel;
    DBText3: TDBText;
    DBText2: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText8: TDBText;
    Label9: TLabel;
    DBText6: TDBText;
    Label7: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    acCancelarItem: TAction;
    acObservacoesItem: TAction;
    constructor Create (sender : tComponent ; id_usuario : integer) ; reintroduce;
    procedure DBCtrlGridCategoriaPaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure DBCtrlGridProdutoPaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure DBCtrlGridCategoriaClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edNumeroComandaExit(Sender: TObject);
    procedure edCodProdutoExit(Sender: TObject);
    procedure PressionaTecla(tecla : string);
    procedure btKb2_2Click(Sender: TObject);
    procedure btKb2_3Click(Sender: TObject);
    procedure btKb2_4Click(Sender: TObject);
    procedure btKb2_5Click(Sender: TObject);
    procedure btKb2_6Click(Sender: TObject);
    procedure btKb2_7Click(Sender: TObject);
    procedure btKb2_8Click(Sender: TObject);
    procedure btKb2_9Click(Sender: TObject);
    procedure btKb2_virgClick(Sender: TObject);
    procedure PressionaTeclaQuantidade(tecla : string);
    procedure btQtdeMaisClick(Sender: TObject);
    procedure btQtdeMenosClick(Sender: TObject);
    procedure btKb2_1Click(Sender: TObject);
    procedure btKb2_0Click(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure AdicionaItem(item, id_material , cod_impressora: integer;
                                            descricao, cod_referencia, observacao, tamanho, tamanho_descricao : string;
                                            quantidade, valor_unitario, valor_total, valor_acrescimo : double;
                                            b_venda_tamanho : boolean; item_fracionado : variant;
                                            id_categoria : integer);
    procedure cdsVendaItemAfterPost(DataSet: TDataSet);
    procedure qrVendaAfterOpen(DataSet: TDataSet);
    procedure acLancarPedidoExecute(Sender: TObject);
    procedure btKb3_BackSpaceClick(Sender: TObject);
    procedure qrBuscaItemBeforeScroll(DataSet: TDataSet);
    procedure qrBuscaItemCalcFields(DataSet: TDataSet);
    procedure DBCtrlGridProdutoClick(Sender: TObject);
    procedure AtualizaTotalVenda(id_venda: Integer);
    procedure acCancelarItemExecute(Sender: TObject);
  private
    { Private declarations }
    i_where, item_atual, id_usuario, pedido_atual : integer;
    lancando_itens : boolean;
  public
    { Public declarations }
  end;

var
  frmControleCNoturnaLancamento: TfrmControleCNoturnaLancamento;

implementation

{$R *.dfm}

uses uMenu, uFuncoes, Funcao_DB, uVendaSelecaoTamanho;

constructor TfrmControleCNoturnaLancamento.Create(sender: TComponent ; id_usuario : integer);
begin
  inherited Create(sender);

  i_where := qrBuscaItem.SQL.count-2;
  self.id_usuario := id_usuario;
  lancando_itens := false;

  qrbuscaitem.Close;
  qrCategoria.close;
  qrCategoria.ParamByName('id_empresa').asinteger := recproj.iEmp;
  qrbuscaitem.ParamByName('id_empresa').asinteger := recproj.iEmp;
  qrCategoria.Open;

end;

procedure TfrmControleCNoturnaLancamento.DBCtrlGridCategoriaClick(
  Sender: TObject);
var filtro : string;
begin
  qrBuscaItem.Close;
  filtro := ' and m.cat_001 = :id_categoria ';
  qrBuscaItem.SQL[i_where] :=   filtro;

  qrBuscaItem.ParamByName('id_categoria').asinteger := qrCategoria.FieldByName('id_categoria').asinteger;
  qrBuscaItem.open;

end;

procedure TfrmControleCNoturnaLancamento.DBCtrlGridCategoriaPaintPanel(
  DBCtrlGrid: TDBCtrlGrid; Index: Integer);
var arquivo : string;
begin
  arquivo := qrCategoria.FieldByName('arquivo_img').AsString;
  if fileexists(arquivo) and qrCategoria.FieldByName('b_exibir_icone').AsBoolean then
  begin
    imgCategoria.Picture.LoadFromFile(arquivo);

    if imgCategoria.Height < 64 then
      imgCategoria.Width := imgCategoria.Height
    else
     imgCategoria.Width := 64;
  end
  else
  begin
    imgCategoria.Picture := nil;
    imgCategoria.Width := 1;
  end;

  if Index = DBCtrlGridCategoria.PanelIndex  then
    lbCategoria.Style.Font.Style := [fsBold]
  else
    lbCategoria.Style.Font.Style := [];

end;

procedure TfrmControleCNoturnaLancamento.DBCtrlGridProdutoClick(
  Sender: TObject);
var tamanho : string;
begin
  if qrBuscaItem.Active then
  begin
    if qrBuscaItem.RecordCount > 0 then
    begin
      //edQuantidade.Enabled := b_habilitar_quantidade;
      if qrBuscaItem.FieldByName('b_venda_tamanho').AsBoolean then
      begin
        qrBuscaItem.Edit;
        frmVendaSelecaoTamanho := TfrmVendaSelecaoTamanho.Create(self,qrBuscaItem.FieldByName('id_material').asinteger);
        frmVendaSelecaoTamanho.ShowModal;
        if frmVendaSelecaoTamanho.Tag = 1 then
        begin
          tamanho := frmVendaSelecaoTamanho.tamanho;
          qrBuscaItem.FieldByName('tamanho_padrao').AsString:= tamanho;
          if tamanho = 'P' then
          begin
            qrBuscaItem.FieldByName('descricao').AsString:= qrBuscaItem.FieldByName('descricao_p').AsString;
            qrBuscaItem.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_tam_p').asfloat;
          end
          else if tamanho = 'M' then
          begin
            qrBuscaItem.FieldByName('descricao').AsString:= qrBuscaItem.FieldByName('descricao_m').AsString;
            qrBuscaItem.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_tam_m').asfloat;
          end
          else if tamanho = 'G' then
          begin
            qrBuscaItem.FieldByName('descricao').AsString:= qrBuscaItem.FieldByName('descricao_g').AsString;
            qrBuscaItem.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_tam_g').asfloat;
          end
          else if tamanho = 'GG' then
          begin
            qrBuscaItem.FieldByName('descricao').AsString:= qrBuscaItem.FieldByName('descricao_gg').AsString;
            qrBuscaItem.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_tam_gg').asfloat;
          end
          else if tamanho = 'E' then
          begin
            qrBuscaItem.FieldByName('descricao').AsString:= qrBuscaItem.FieldByName('descricao_extra').AsString;
            qrBuscaItem.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_tam_extra').asfloat;
          end
          else
            qrBuscaItem.FieldByName('descricao').AsString:= qrBuscaItem.FieldByName('descricao_old').AsString;
        end;
        frmVendaSelecaoTamanho.Free;
      end;

      // verifica se o item é vendido por peso e se a balança está habilitada
      {if qrBuscaItem.FieldByName('b_peso_balanca').AsBoolean and bUtilizaBalanca then
      begin
        qrBuscaItem.Edit;
        try
          edQuantidade.Enabled :=false;
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
          //qrBuscaItem.close;
          edObservacaoItem.clear;
          edCodProduto.Clear;
          if edCodProduto.CanFocus then edCodProduto.SetFocus;
          abort;
        end;
      end; }

      if edQuantidade.Enabled then
      begin
        edQuantidade.setfocus;
        edQuantidade.SelectAll;
      end;

    end;
  end;

end;

procedure TfrmControleCNoturnaLancamento.DBCtrlGridProdutoPaintPanel(
  DBCtrlGrid: TDBCtrlGrid; Index: Integer);
var arquivo : string;
begin
  arquivo := qrBuscaItem.FieldByName('arquivo_img').AsString;
  if fileexists(arquivo) then
  begin
    imgProduto.Picture.LoadFromFile(arquivo);

    if imgProduto.Height < 64 then
      imgProduto.Width := imgProduto.Height
    else
     imgProduto.Width := 64;
  end
  else
  begin
    imgProduto.Picture := nil;
    imgProduto.Width := 1;
  end;

  if Index = DBCtrlGridProduto.PanelIndex  then
    lbDescProduto.Style.Font.Style := [fsBold]
  else
    lbDescProduto.Style.Font.Style := [];

end;

procedure TfrmControleCNoturnaLancamento.edCodProdutoExit(Sender: TObject);
var filtro, texto, cod_ref, str_qtd  : string;
    flag_etiqueta_balanca, inserir : boolean;
    quantidade : double;
    indice_qtde : integer;
begin
  texto:= trim(edCodProduto.Text);

  if texto='' then exit;


  //flag_etiqueta_balanca := (Length(texto)=largura_cod_barras) and (texto[1]=inttostr(cod_barras_digito_1));
  flag_etiqueta_balanca := false;
  inserir:=false;
  qrBuscaItem.Close;

  indice_qtde := AnsiPos('*', texto);
  if indice_qtde>0 then
  begin
    str_qtd := copy(texto, 1, indice_qtde-1);
    cod_ref := copy(texto, indice_qtde+1, length(texto));
    //verifica se a quantidade digitada é um número
    try
      quantidade := StrToFloat(trim(str_qtd));
    except
      quantidade:=0;
      application.MessageBox('Informações inválidas!', 'Atenção', MB_ICONINFORMATION);
      abort;
    end;
  end
  else
  begin
    //muito provavelmente não vai usar balança...
    {if flag_etiqueta_balanca then
    begin
      //pega a parte referente ao codigo do produto
      cod_ref:= copy(texto, 2, largura_cod_barras_produto);
      //converte pra inteiro e volta para string (para remover os '0' iniciais)
      cod_ref := inttostr(strtoint(cod_ref));
      //pega a parte referente a quantidade
      str_qtd := copy(texto, largura_cod_barras_produto+2, largura_cod_barras);
      //descarta o ultimo digito, que é dv
      str_qtd :=  copy(str_qtd, 1, Length(str_qtd)-1);

      try
        quantidade := StrToFloat(trim(str_qtd)) / 1000;
        inserir:=true;
      except
        quantidade:=0;
        application.MessageBox('Informações inválidas!', 'Atenção', MB_ICONINFORMATION);
        abort;
      end;
    end
    else
    begin
      quantidade:=1;
      cod_ref := texto;
    end;}

    quantidade:=1;
    cod_ref := texto;
  end;

  filtro := ' and m.mat_004 like :cod_ref ';
  qrBuscaItem.SQL[i_where] :=   filtro;

  qrBuscaItem.ParamByName('cod_ref').AsString := cod_ref;
  qrBuscaItem.open;
  if qrBuscaItem.RecordCount >0 then
  begin
    if not (qrBuscaItem.State = dsedit)  then  qrBuscaItem.Edit;
    qrBuscaItem.FieldByName('quantidade').asfloat := quantidade;

  end
  else
  begin
    Application.MessageBox('Produto não encontrado!', 'Atenção', MB_ICONINFORMATION + MB_OK);
    edCodProduto.clear;
    edCodProduto.SetFocus;
    abort;
  end;

  if not edQuantidade.Enabled then    //Se a configuração mesa habilitar quantidade não tiver selecionada insere automaticamente
    inserir := true
  else
    edQuantidade.SetFocus;   //Senao vai para campo de quantidade

  if inserir then
  begin
    if qrBuscaItem.RecordCount >0 then
    begin
      if flag_etiqueta_balanca and (compareVAlue(quantidade,1)=-1) and
         ((qrBuscaItem.FieldByName('unidade').AsString = 'UN') or  (qrBuscaItem.FieldByName('unidade').AsString = 'PC')) then
        quantidade :=quantidade * 1000;

      //btInserir.Click;
    end ;
  end;

end;

procedure TfrmControleCNoturnaLancamento.edNumeroComandaExit(Sender: TObject);
begin
  //busca a venda para comanda informada
  if edNumeroComanda.Text<>'' then
  begin
    qrVenda.Close;
    qrVenda.ParamByName('numero_comanda').AsInteger:= StrToInt(edNumeroComanda.Text);
    qrVenda.ParamByName('id_empresa').AsInteger:= recproj.iEmp;
    qrVenda.open;
  end
  else
    qrVenda.Close;

end;

procedure TfrmControleCNoturnaLancamento.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmControleCNoturnaLancamento.FormResize(Sender: TObject);
begin
  //Ajusta Panels  Redimensiona tamanho conforme a resolução ;
  DBCtrlGridCategoria.ColCount :=  Trunc(DBCtrlGridCategoria.Width / 175);
  DBCtrlGridCategoria.RowCount :=  Trunc(DBCtrlGridCategoria.height / 88);

  DBCtrlGridProduto.ColCount :=  Trunc(DBCtrlGridProduto.Width / 175);
  DBCtrlGridProduto.RowCount :=  Trunc(DBCtrlGridProduto.height / 88);
end;

procedure TfrmControleCNoturnaLancamento.AdicionaItem(item, id_material , cod_impressora: integer;
                                            descricao, cod_referencia, observacao, tamanho, tamanho_descricao : string;
                                            quantidade, valor_unitario, valor_total, valor_acrescimo : double;
                                            b_venda_tamanho : boolean; item_fracionado : variant;
                                            id_categoria : integer);
var desconto_calc, total_calc, desconto: double;
    tipo_desconto: integer;
begin
  cdsVendaItem.Append;
  cdsVendaItem.FieldByName('id_empresa').AsInteger:= recproj.iEmp;
  cdsVendaItem.FieldByName('id_venda').AsInteger:=qrvenda.FieldByName('id_venda').AsInteger;
  cdsVendaItem.FieldByName('id_material').AsInteger:= id_material;
  cdsVendaItem.FieldByName('descricao').asstring:=descricao;
  cdsVendaItem.FieldByName('quantidade').asfloat:= quantidade;
  cdsVendaItem.FieldByName('valor_unitario').AsFloat:= valor_unitario;
  cdsVendaItem.FieldByName('valor_total').AsFloat:= valor_total;
  cdsVendaItem.FieldByName('valor_acrescimo').AsFloat:= valor_acrescimo;
  cdsVendaItem.FieldByName('cod_referencia').asstring:= cod_referencia;
  cdsVendaItem.FieldByName('observacao').AsString:=observacao;
  cdsVendaItem.FieldByName('b_venda_tamanho').asBoolean:= b_venda_tamanho;
  cdsVendaItem.FieldByName('tamanho').asstring:=tamanho;
  cdsVendaItem.FieldByName('tamanho_descricao').asstring:= tamanho_descricao;
  cdsVendaItem.FieldByName('cod_impressora').AsInteger:= cod_impressora;
  cdsVendaItem.FieldByName('item_fracionado').value := item_fracionado;
  cdsVendaItem.FieldByName('item').AsInteger:= item;
  cdsVendaItem.FieldByName('desconto').asfloat:= 0;
  cdsVendaItem.FieldByName('novo_item').asboolean:= true;
  cdsVendaItem.FieldByName('id_situacao').asinteger:= 4;

  //antes de postar, verifica se existe promoção
  if BuscaPromocao(b_venda_tamanho, tamanho, 'M', id_material, desconto, tipo_desconto) then
  begin
    calculaDescontoItem(tipo_desconto, desconto, quantidade, valor_unitario, 0, desconto_calc, total_calc);
    cdsVendaItem.FieldByName('desconto').asfloat := desconto_calc;
    cdsVendaItem.FieldByName('valor_total').AsFloat := total_calc;
  end;

  cdsVendaItem.post;

  frmmenu.AvisaEsoqueMinimo(id_material, 'M', quantidade);

end;

procedure TfrmControleCNoturnaLancamento.acCancelarItemExecute(Sender: TObject);
begin
  if True then


end;

procedure TfrmControleCNoturnaLancamento.acLancarPedidoExecute(Sender: TObject);
var id_venda : integer;
    str_sql : string;
begin
  if cdsVendaItem.Active then
  begin
    if cdsvendaitem.RecordCount>0 then
    begin
      //cdsvendaitem.ApplyUpdates(1);
      id_venda := qrVenda.FieldByName('id_venda').AsInteger;
      cdsvendaitem.First;
      while not cdsvendaitem.eof do
      begin
        if cdsvendaitem.fieldbyname('novo_item').asboolean then
        begin
          qrInsereItem.ParamByName('id_empresa').AsInteger := recproj.iemp;
          qrInsereItem.ParamByName('id_venda').AsInteger := id_venda;
          qrInsereItem.ParamByName('id_material').AsInteger := cdsvendaitem.fieldByName('id_material').AsInteger;
          qrInsereItem.ParamByName('quantidade').AsFloat := cdsvendaitem.fieldByName('quantidade').AsFloat;
          qrInsereItem.ParamByName('valor_unit').AsFloat := cdsvendaitem.fieldByName('valor_unitario').AsFloat;
          qrInsereItem.ParamByName('valor_total').AsFloat := cdsvendaitem.fieldByName('valor_total').AsFloat;
          qrInsereItem.ParamByName('observacao').asstring := cdsvendaitem.fieldByName('observacao').asstring;
          qrInsereItem.ParamByName('nro_item').AsInteger := cdsvendaitem.fieldByName('item').asinteger;
          qrInsereItem.ParamByName('id_garcom').AsInteger := id_usuario;
          qrInsereItem.ParamByName('cod_impressora').AsInteger := cdsvendaitem.fieldByName('cod_impressora').AsInteger;
          qrInsereItem.ParamByName('b_venda_tamanho').asBoolean := cdsvendaitem.fieldByName('b_venda_tamanho').asBoolean;
          qrInsereItem.ParamByName('tamanho').asstring := cdsvendaitem.fieldByName('tamanho').asstring;
          qrInsereItem.ParamByName('item_fracionado').value := cdsvendaitem.fieldByName('item_fracionado').value;
          qrInsereItem.ParamByName('quantidade_impressao').AsFloat := cdsvendaitem.fieldByName('quantidade').AsFloat;
          qrInsereItem.ParamByName('desconto').AsFloat := cdsvendaitem.fieldByName('desconto').AsFloat;
          qrInsereItem.ParamByName('numero_pedido').value := pedido_atual;
          qrInsereItem.Execute;
        end
        else if (not cdsvendaitem.fieldbyname('novo_item').asboolean) and (cdsvendaitem.fieldbyname('id_situacao').asinteger=2) then
        begin
          str_sql := ' update vendaitem set sit_001=2, id_usuario_cancelamento=:id_usuario, ite_006=:obs '+
                     ' where emp_001=:emp and ven_001=:id_venda and ite_001=:nro_item ';
          ExecutaComandoSQL(str_sql, vararrayof([id_usuario,
                              cdsVendaItem.FieldByName('observacao').asstring,
                              recproj.iEmp, id_venda,
                              cdsVendaItem.FieldByName('item').AsInteger]));

        end;


        cdsvendaitem.Next;
      end;

      AtualizaTotalVenda(id_venda);
      qrVendaItem.Close;
      cdsVendaItem.EmptyDataSet;
      lancando_itens := false;
    end;
  end;
end;

procedure TfrmControleCNoturnaLancamento.AtualizaTotalVenda(id_venda: Integer);
begin
  ExecutaComandoSQL('select fn_calcula_total_venda(:idvenda,:idempresa);',
    vararrayof([id_venda, recproj.iEmp]));
end;

procedure TfrmControleCNoturnaLancamento.btInserirClick(Sender: TObject);
var sql, tamanho_descricao: string;
    atualiza, inserir: boolean;
    item : integer;
begin
  //valida o item
  if qrBuscaItem.Active then
  begin
    if qrBuscaItem.RecordCount<1 then
    begin
      Application.MessageBox('Não foi selecionado nenhum item a adicionar!', 'Atenção', MB_ICONINFORMATION + MB_OK);
      edCodProduto.SetFocus;
      abort;
    end
    else
    begin
      //valida quantidade e valor unitário
      if qrBuscaItem.FieldByName('quantidade').IsNull or
         (qrBuscaItem.FieldByName('quantidade').asfloat<0.001) or
         (qrBuscaItem.FieldByName('quantidade').asfloat>999999)  then
      begin
        Application.MessageBox('Quantidade inválida!', 'Atenção', MB_ICONINFORMATION + MB_OK);
        if edQuantidade.CanFocus then edQuantidade.SetFocus;
        abort;
      end;
      if (qrBuscaItem.FieldByName('valor_unit').IsNull)  or
         (qrBuscaItem.FieldByName('valor_unit').AsFloat<=0) or
         (qrBuscaItem.FieldByName('valor_unit').AsFloat>99999999) then
      begin
        Application.MessageBox('Valor unitário inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
        abort;
      end;
    end;
  end
  else abort;

  //valida a venda
  if qrVenda.active then
  begin
    if not qrVenda.RecordCount>0 then
    begin
      Application.MessageBox('Não foi selecionada nenhuma venda!', 'Atenção', MB_ICONINFORMATION + MB_OK);
      abort;
    end;
  end
  else
  begin
    Application.MessageBox('Não foi selecionada nenhuma venda!', 'Atenção', MB_ICONINFORMATION + MB_OK);
    abort;
  end;


  //adiciona o item
  AdicionaItem(item_atual,
             qrBuscaItem.FieldByName('id_material').AsInteger ,
             qrBuscaItem.FieldByName('cod_impressora').AsInteger,
             qrBuscaItem.FieldByName('descricao').asstring,
             qrBuscaItem.FieldByName('cod_ref').asstring,
             '', //edObservacaoItem.Text,
             qrBuscaItem.FieldByName('tamanho_padrao').asstring,
             tamanho_descricao,
             qrBuscaItem.FieldByName('quantidade').asfloat,
             qrBuscaItem.FieldByName('valor_unit').AsFloat,
             qrBuscaItem.FieldByName('valor_total').AsFloat,
             qrBuscaItem.FieldByName('valor_acrescimo').AsFloat,
             qrBuscaItem.FieldByName('b_venda_tamanho').asBoolean,
             null,
             qrBuscaItem.FieldByName('id_categoria').AsInteger);

  //qrBuscaItem.close;
  qrBuscaItem.refresh;
  edCodProduto.Clear;
  edCodProduto.SetFocus;
  cxGrid1DBTableView1.ViewData.Expand(True);
  acLancarPedido.Enabled := true;
  lancando_itens := true;
end;

procedure TfrmControleCNoturnaLancamento.btKb2_0Click(Sender: TObject);
begin
PressionaTecla('0');
end;


procedure TfrmControleCNoturnaLancamento.btKb2_1Click(Sender: TObject);
begin
PressionaTecla('1');
end;

procedure TfrmControleCNoturnaLancamento.btKb2_2Click(Sender: TObject);
begin
PressionaTecla('2');
end;

procedure TfrmControleCNoturnaLancamento.btKb2_3Click(Sender: TObject);
begin
PressionaTecla('3');
end;

procedure TfrmControleCNoturnaLancamento.btKb2_4Click(Sender: TObject);
begin
PressionaTecla('4');
end;

procedure TfrmControleCNoturnaLancamento.btKb2_5Click(Sender: TObject);
begin
PressionaTecla('5');
end;

procedure TfrmControleCNoturnaLancamento.btKb2_6Click(Sender: TObject);
begin
PressionaTecla('6');
end;

procedure TfrmControleCNoturnaLancamento.btKb2_7Click(Sender: TObject);
begin
  PressionaTecla('7');
end;

procedure TfrmControleCNoturnaLancamento.btKb2_8Click(Sender: TObject);
begin
PressionaTecla('8');
end;

procedure TfrmControleCNoturnaLancamento.btKb2_9Click(Sender: TObject);
begin
PressionaTecla('9');
end;

procedure TfrmControleCNoturnaLancamento.btKb2_virgClick(Sender: TObject);
begin
PressionaTecla(',');
end;

procedure TfrmControleCNoturnaLancamento.btKb3_BackSpaceClick(Sender: TObject);
begin
  PressionaTecla('back');
end;

procedure TfrmControleCNoturnaLancamento.btQtdeMaisClick(Sender: TObject);
begin
  if qrBuscaItem.Active then
  begin
    if (qrBuscaItem.RecordCount>0) and edQuantidade.Enabled then
    begin
      qrBuscaItem.Edit;
      qrBuscaItem.FieldByName('quantidade').AsFloat := qrBuscaItem.FieldByName('quantidade').AsFloat +1 ;
    end;
  end;
end;

procedure TfrmControleCNoturnaLancamento.btQtdeMenosClick(Sender: TObject);
begin
  if qrBuscaItem.Active then
  begin
    if (qrBuscaItem.RecordCount>0) and edQuantidade.Enabled then
    begin
      qrBuscaItem.Edit;
      if not ((qrBuscaItem.FieldByName('quantidade').AsFloat -1 )<=0) then
        qrBuscaItem.FieldByName('quantidade').AsFloat := qrBuscaItem.FieldByName('quantidade').AsFloat -1 ;
    end;
  end;
end;

procedure TfrmControleCNoturnaLancamento.cdsVendaItemAfterPost(
  DataSet: TDataSet);
begin
  cdsVendaItem.last;
  if cdsVendaItem.RecordCount<1 then
    item_atual :=1
  else
  begin
    item_atual :=  cdsVendaItem.FieldByName('item').AsInteger + 1;
  end;
end;

procedure TfrmControleCNoturnaLancamento.PressionaTecla(tecla : string);
var posicao : Integer;
    texto_anterior, texto_posterior : string;
begin
  if (ActiveControl is Tedit) or (ActiveControl is TMemo) then
  begin
    posicao := TEdit(ActiveControl).SelStart;
    texto_anterior := copy(TEdit(ActiveControl).Text,1, posicao );
    texto_posterior := copy(TEdit(ActiveControl).Text,posicao + 1 , length(TEdit(ActiveControl).Text));

    if LowerCase(tecla)='back' then
    begin
      TEdit(ActiveControl).Text := copy(texto_anterior, 1, length(texto_anterior)-1) +  texto_posterior;
      TEdit(ActiveControl).SelStart := posicao-1;
    end
    else
    begin
      TEdit(ActiveControl).Text := texto_anterior + tecla + texto_posterior;
      TEdit(ActiveControl).SelStart := posicao+1;
    end;
  end
  else if Screen.ActiveControl is TcxCustomInnerTextEdit  then //verifica se foco está no edit de quantidade
  begin
    if uppercase(TcxCustomInnerTextEdit(ActiveControl).Parent.Name) = 'EDQUANTIDADE' then
    begin
      if AnsiIndexStr(tecla, ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ',']) >=0 then
        PressionaTeclaQuantidade(tecla);
    end;
  end;
end;

procedure TfrmControleCNoturnaLancamento.PressionaTeclaQuantidade(tecla : string);
var texto_edit, texto_anterior, texto_posterior : string;
    posicao, tamanho_selecionado, posicao_virgula : integer;
begin
  if qrBuscaItem.Active then
  begin
    if (qrBuscaItem.RecordCount>0) and edQuantidade.Enabled then
    begin
      qrBuscaItem.Edit;

      posicao := 0;
      if not (ActiveControl is TcxCustomInnerTextEdit) then
      begin
        edQuantidade.SetFocus;
        edQuantidade.SelectAll;
        if tecla=',' then
          edQuantidade.Text := '0,'
        else
          edQuantidade.Text := tecla;
      end
      else
      begin
        posicao := edQuantidade.selstart;
        posicao_virgula := pos(',', edQuantidade.Text);
        tamanho_selecionado := edQuantidade.SelLength;

        if tecla=',' then
        begin
          if posicao>=posicao_virgula then exit;
          texto_anterior := copy(edQuantidade.Text,1, posicao_virgula-1 );
          texto_posterior := copy(edQuantidade.Text,posicao_virgula + 1 , length(edQuantidade.Text));
        end
        else
        begin
          texto_anterior := copy(edQuantidade.Text,1, posicao );
          //texto_posterior := copy(edQuantidade.Text,posicao + 1 , length(edQuantidade.Text));
          texto_posterior := copy(edQuantidade.Text,posicao + 1 + tamanho_selecionado , length(edQuantidade.Text));


          {if tamanho_selecionado <= 0 then
          begin
            texto_anterior := copy(edQuantidade.Text,1, posicao );
            texto_posterior := copy(edQuantidade.Text,posicao + 1 , length(edQuantidade.Text));
          end
          else
          begin
            texto_anterior := copy(edQuantidade.Text,1, posicao );
          end; }
        end;
        edQuantidade.Text := texto_anterior + tecla + texto_posterior ;
      end;

      qrBuscaItem.FieldByName('quantidade').AsFloat := StrToFloat(edQuantidade.Text);

      edQuantidade.selstart :=  posicao +1;
    end;
  end;
end;

procedure TfrmControleCNoturnaLancamento.qrBuscaItemBeforeScroll(
  DataSet: TDataSet);
begin
  if qrBuscaItem.State=dsEdit then  qrBuscaItem.Cancel;
end;

procedure TfrmControleCNoturnaLancamento.qrBuscaItemCalcFields(
  DataSet: TDataSet);
begin
  qrBuscaItem.AutoCalcFields := false;
  if qrBuscaItem.recordcount>0 then
  begin
    if qrBuscaItem.State = dsbrowse then  qrBuscaItem.edit;

    //qrBuscaItem.FieldByName('valor_acrescimo').AsFloat := total_opcionais * qrBuscaItem.FieldByName('quantidade').AsFloat;
    qrBuscaItem.FieldByName('valor_acrescimo').AsFloat := 0;

    qrBuscaItem.FieldByName('valor_total').AsFloat :=
      (qrBuscaItem.FieldByName('valor_unit').AsFloat *
      qrBuscaItem.FieldByName('quantidade').AsFloat) +
      qrBuscaItem.FieldByName('valor_acrescimo').AsFloat;

  end;
  qrBuscaItem.AutoCalcFields := true;
end;

procedure TfrmControleCNoturnaLancamento.qrVendaAfterOpen(DataSet: TDataSet);
begin
  if qrVenda.RecordCount >0  then
  begin
    qrVendaItem.Close;
    cdsVendaItem.close;
    qrVendaItem.ParamByName('id_venda').AsInteger := qrVenda.fieldbyname('id_venda').AsInteger;
    qrVendaItem.ParamByName('id_empresa').AsInteger :=recproj.iEmp;
    cdsVendaItem.Open;
    if cdsVendaItem.RecordCount<1 then
      pedido_atual := 1
    else
    begin
      cdsVendaItem.Last;
      pedido_atual := cdsVendaItem.FieldByName('numero_pedido').AsInteger+1;
    end;
  end
  else
  begin
    qrVendaItem.Close;
    cdsVendaItem.close;
    qrBuscaItem.Close;
    ednumerocomanda.Clear;
    acLancarPedido.Enabled := false;
  end;
  lancando_itens := false;

end;

end.
