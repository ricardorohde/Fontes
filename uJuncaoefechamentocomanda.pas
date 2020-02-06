unit uJuncaoefechamentocomanda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, dxGDIPlusClasses, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  AdvSmoothTouchKeyBoard, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, AdvGlowButton,
  System.Actions, Vcl.ActnList, Datasnap.DBClient, MemDS, DBAccess, Uni,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, JvExStdCtrls, JvEdit, JvValidateEdit;

type
  TfrmJuncaoefechamentocomanda = class(TfrmModelo)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Image1: TImage;
    Image2: TImage;
    AdvSmoothTouchKeyBoard1: TAdvSmoothTouchKeyBoard;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    edComanda1: TEdit;
    ActionList1: TActionList;
    AcPesquisaproduto: TAction;
    AcTransferenciaproduto: TAction;
    acExcluiritem: TAction;
    acSolicitacaoconta: TAction;
    acFecharconta: TAction;
    acSair: TAction;
    cdsVendaitem: TClientDataSet;
    cdsVendaitemid_venda: TIntegerField;
    cdsVendaitemvalor_venda: TCurrencyField;
    cdsVendaitemtipo_venda: TStringField;
    cdsVendaitemnumero_venda: TIntegerField;
    qrConsultacomanda: TUniQuery;
    dsVendaitem: TDataSource;
    qrInsereItem: TUniQuery;
    cdsVendaitemid_vendaitem: TIntegerField;
    cdsVendaitemid_material: TIntegerField;
    cdsVendaitemdescricao: TStringField;
    cdsVendaitemid_empresa: TIntegerField;
    cdsVendaitemquantidade: TFloatField;
    cdsVendaitemvalor_unitario: TFloatField;
    cdsVendaitemvalor_total: TFloatField;
    cdsVendaitemdesconto: TFloatField;
    cdsVendaitemacrescimo: TFloatField;
    cdsVendaitemid_garcom: TIntegerField;
    cdsVendaitemcod_impressora: TIntegerField;
    cdsVendaitemid_situacao: TIntegerField;
    cdsVendaitemtamanho: TStringField;
    cdsVendaitemb_venda_tamanho: TBooleanField;
    cdsVendaitemitem_fracionado: TIntegerField;
    cdsVendaitemquantidade_impressao: TFloatField;
    cdsVendaitemcodigo_material: TStringField;
    cdsVendaitemnumero_comanda: TIntegerField;
    cdsVendaitemobservacoes: TStringField;
    cdsVendaitemnome_garcom: TStringField;
    cxGrid1DBTableView1valor_venda: TcxGridDBColumn;
    cxGrid1DBTableView1id_vendaitem: TcxGridDBColumn;
    cxGrid1DBTableView1id_material: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1id_empresa: TcxGridDBColumn;
    cxGrid1DBTableView1quantidade: TcxGridDBColumn;
    cxGrid1DBTableView1valor_unitario: TcxGridDBColumn;
    cxGrid1DBTableView1valor_total: TcxGridDBColumn;
    cxGrid1DBTableView1desconto: TcxGridDBColumn;
    cxGrid1DBTableView1acrescimo: TcxGridDBColumn;
    cxGrid1DBTableView1codigo_material: TcxGridDBColumn;
    cxGrid1DBTableView1observacoes: TcxGridDBColumn;
    cxGrid1DBTableView1nome_garcom: TcxGridDBColumn;
    qrConsultacomandaid_venda: TIntegerField;
    qrConsultacomandavalor_venda: TFloatField;
    qrConsultacomandatipo_venda: TWideStringField;
    qrConsultacomandanumero_comanda: TIntegerField;
    qrConsultacomandanumero_venda: TIntegerField;
    qrConsultacomandaid_material: TIntegerField;
    qrConsultacomandaid_vendaitem: TIntegerField;
    qrConsultacomandaquantidade: TFloatField;
    qrConsultacomandavalor_unitario: TFloatField;
    qrConsultacomandavalor_total: TFloatField;
    qrConsultacomandab_venda_tamanho: TBooleanField;
    qrConsultacomandaitem_fracionado: TIntegerField;
    qrConsultacomandadata_hora_lancamento: TDateTimeField;
    qrConsultacomandaid_garcom: TIntegerField;
    qrConsultacomandadescricao_produto: TWideStringField;
    qrConsultacomandaitem_impresso: TWideStringField;
    qrConsultacomandapendente_impressao: TWideStringField;
    qrConsultacomandaacrescimo: TFloatField;
    qrConsultacomandadesconto: TFloatField;
    qrConsultacomandacod_impressora: TIntegerField;
    qrConsultacomandaquantidade_impressao: TFloatField;
    qrConsultacomandacodigo_material: TWideStringField;
    qrConsultacomandaobservacoes: TWideStringField;
    qrConsultacomandanome_garcom: TWideStringField;
    qrConsultacomandaid_empresa: TIntegerField;
    qrConsultacomandaid_situacao: TIntegerField;
    qrConsultacomandatamanho: TWideStringField;
    acGravarVenda: TAction;
    qrConsultacomandab_70pc_valor_unit: TBooleanField;
    cdsVendaitemb_70pc_valor_unit: TBooleanField;
    cdsVendaitemitem_impresso: TStringField;
    cdsVendaitempendente_impressao: TStringField;
    qrConsultacomandanumero_pedido: TIntegerField;
    qrConsultacomandab_entregue: TBooleanField;
    qrConsultacomandab_producao: TBooleanField;
    cdsVendaitemb_producao: TBooleanField;
    cdsVendaitemb_entregue: TBooleanField;
    cdsVendaitemnumero_pedido: TIntegerField;
    lbTotalProdutos: TLabel;
    lbTotalServicos: TLabel;
    lbTotalDescontos: TLabel;
    lbTotalVenda: TLabel;
    qrConsultacomandajustificativa_cancelamento: TWideStringField;
    cdsVendaitemjustificativa_cancelamento: TStringField;
    btSair: TAdvGlowButton;
    cxGrid1DBTableView1id_venda: TcxGridDBColumn;
    cxGrid1DBTableView1numero_comanda: TcxGridDBColumn;
    AdvGlowButton2: TAdvGlowButton;
    acPDV: TAction;
    AdvGlowButton1: TAdvGlowButton;
    btFecharConta: TAdvGlowButton;
    btSolicitarConta: TAdvGlowButton;
    btTranferirProduto: TAdvGlowButton;
    btExcluirProduto: TAdvGlowButton;
    btPesquisarProduto: TAdvGlowButton;
    edComanda2: TJvValidateEdit;
    procedure edComanda1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edComanda3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    constructor Create(sender : TComponent); reintroduce;
    procedure CarregaRegistro;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acGravarVendaExecute(Sender: TObject);
    procedure CalculaTotais; overload;
    procedure ValidaStatusVenda;
    procedure acSairExecute(Sender: TObject);
    procedure AcPesquisaprodutoExecute(Sender: TObject);
    procedure AcTransferenciaprodutoExecute(Sender: TObject);
    procedure acExcluiritemExecute(Sender: TObject);
    procedure acFecharcontaExecute(Sender: TObject);
    procedure RecarregaVendaPrincipal;
    procedure AtualizaTotalVendaDB(id_venda : integer);
    procedure LimpaVenda;
    procedure acSolicitacaocontaExecute(Sender: TObject);
    procedure acPDVExecute(Sender: TObject);
    procedure edComanda2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    venda_principal: integer;
    b_taxa_adicional_comanda, b_agrupar_itens_iguais,
    b_exige_senha_cancelamento_item_comanda: boolean;
    numero_colunas_impressora : integer;
    mensagem_taxa_cupom : string;
  public
    { Public declarations }
    procedure CalculaTotais(out total_produtos, total_servicos, total_descontos, total_venda : double); overload;
  end;

var
  frmJuncaoefechamentocomanda: TfrmJuncaoefechamentocomanda;

implementation

{$R *.dfm}

uses umenu, Funcao_DB, uFuncoes, uVendaTouchInsercao, uControleMesaItensAcoes,
  uTransferenciaiten, uControleMesaFechamento, uControleMesaRelatorios,
  uVisualizaRelatorioTexto, uPDV;

procedure TfrmJuncaoefechamentocomanda.LimpaVenda;
begin
  venda_principal :=0;
  cdsVendaitem.EmptyDataSet;
  edcomanda1.Clear;
  edcomanda2.Clear;
  lbtotalprodutos.Caption:='R$ 0,00';
  lbTotalServicos.Caption:='R$ 0,00';
  lbTotalDescontos.Caption:='R$ 0,00';
  lbTotalVenda.Caption:='R$ 0,00';
end;


procedure TfrmJuncaoefechamentocomanda.AtualizaTotalVendaDB(id_venda : integer);
begin
  ExecutaComandoSQL('select fn_calcula_total_venda(:idvenda,:idempresa);',
    vararrayof([id_venda, recproj.iemp]));
end;

procedure TfrmJuncaoefechamentocomanda.RecarregaVendaPrincipal;
var nro_comanda : integer;
    str_sql : string;
    tecla : word;
begin
  str_sql := ' select ven_026 from venda where ven_001='+inttostr(venda_principal) +
             ' and emp_001='+ inttostr(recproj.iEmp);
  if BuscaCampo(nro_comanda, str_sql, '', false) then
  begin
    //limpa a venda principal e o clientdataset para poder carregar novamente
    LimpaVenda;

    tecla := 13;
    edcomanda1.Text:= inttostr(nro_comanda);
    edComanda1KeyDown(nil, tecla, []);
  end
  else
  begin
    application.MessageBox('Não foi possível carregar essa venda!', 'Atenção', MB_ICONINFORMATION);
  end;
end;

procedure TfrmJuncaoefechamentocomanda.ValidaStatusVenda;
var flag_multiplas_vendas : boolean;
begin
  //se houver venda selecionada..
  if venda_principal>0 then
  begin
    cdsVendaitem.First;
    cdsVendaitem.Filtered := false;

    flag_multiplas_vendas := false;

    while not cdsVendaitem.eof do
    begin
      //verifica se existe mais de uma venda
      if not flag_multiplas_vendas then
      begin
        flag_multiplas_vendas := not (cdsVendaitem.FieldByName('id_venda').AsInteger=venda_principal);
      end;

      cdsVendaitem.Next;
    end;

    //se tiver mais de uma venda, habilita a ação de gravar e desabilita as outras pois precisam ser uma venda consolidada
    if flag_multiplas_vendas then
    begin
      AcPesquisaproduto.Enabled := false;
      AcTransferenciaproduto.Enabled := false;
      acExcluiritem.Enabled := false;
      acSolicitacaoconta.Enabled := true;
      acFecharconta.Enabled := false;
      acGravarVenda.Enabled := true;
    end
    else
    begin
      AcPesquisaproduto.Enabled := true;
      AcTransferenciaproduto.Enabled := true;
      acExcluiritem.Enabled := true;
      acSolicitacaoconta.Enabled := false;
      acFecharconta.Enabled := true;
      acGravarVenda.Enabled := false;
    end;

    cdsVendaitem.First;
    cdsVendaitem.Filter := 'id_situacao=4';
    cdsVendaitem.Filtered := true;
  end
  else
  begin
    AcPesquisaproduto.Enabled := false;
    AcTransferenciaproduto.Enabled := false;
    acExcluiritem.Enabled := false;
    acSolicitacaoconta.Enabled := false;
    acFecharconta.Enabled := false;
    acGravarVenda.Enabled := false;
  end;
end;

procedure TfrmJuncaoefechamentocomanda.AcPesquisaprodutoExecute(
  Sender: TObject);
var nro_item, item_atual, pedido, item_fracionado, item_fracionado_atual : integer;
    str_sql : string;
    qr_aux : TUniQuery;
    atualiza : boolean;
begin
  inherited;

  if venda_principal>0 then
  begin
qr_aux := CriaUniQuery(self, frmmenu.conexao);
    frmVendaTouchInsercao := TfrmVendaTouchInsercao.Create(self, venda_principal, recproj.iUsuario);
    frmVendaTouchInsercao.ShowModal;
    if frmVendaTouchInsercao.Tag = 1 then
    begin
      nro_item := 0;
      str_sql :=
        format(' select coalesce(max(ite_001),0)+1 as item, '+
               ' coalesce(max(numero_pedido),0)+1 as numero_pedido, '+
               ' coalesce(max(item_fracionado),0) as item_fracionado ' +
               ' from vendaitem where ven_001=%d and emp_001=%d ',
        [venda_principal, recproj.iemp]);
      ExecutaConsultaSQL(qr_aux, str_sql);
      nro_item := qr_aux.FieldByName('item').AsInteger;
      pedido := qr_aux.FieldByName('numero_pedido').AsInteger;
      item_fracionado := qr_aux.FieldByName('item_fracionado').AsInteger;
      item_fracionado_atual := 0;

      frmVendaTouchInsercao.cdsItensInseridos.First;
      while not frmVendaTouchInsercao.cdsItensInseridos.eof do
      begin
        // Se estiver configurado para agrupar itens de mesmo codigo, tenta localizar
        if b_agrupar_itens_iguais then
        begin
          atualiza := cdsVendaItem.Locate('id_material;valor_unitario;desconto;tamanho',
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
          item_atual := cdsVendaItem.fieldByName('nro_item').AsInteger;
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
            venda_principal]));
        end
        else
        // senao insere o item novo
        begin

          qrInsereItem.ParamByName('id_empresa').AsInteger := cdsVendaitem.FieldByName('id_empresa').AsInteger;
          qrInsereItem.ParamByName('id_venda').AsInteger := venda_principal;
          qrInsereItem.ParamByName('id_vendaitem').AsInteger := nro_item;
          qrInsereItem.ParamByName('id_garcom').value := recproj.iUsuario;

          qrInsereItem.ParamByName('id_material').AsInteger := frmVendaTouchInsercao.cdsItensInseridos.fieldByName('id_material').AsInteger;
          qrInsereItem.ParamByName('quantidade').asfloat := frmVendaTouchInsercao.cdsItensInseridos.fieldByName('quantidade').AsFloat;
          qrInsereItem.ParamByName('valor_unit').asfloat := frmVendaTouchInsercao.cdsItensInseridos.fieldByName('valor_unitario').AsFloat;
          qrInsereItem.ParamByName('valor_total').asfloat := frmVendaTouchInsercao.cdsItensInseridos.fieldByName('valor_total').AsFloat;
          qrInsereItem.ParamByName('observacoes').asstring := frmVendaTouchInsercao.cdsItensInseridos.fieldByName('observacao').asstring;
          qrInsereItem.ParamByName('cod_impressora').value := frmVendaTouchInsercao.cdsItensInseridos.fieldByName('cod_impressora') .AsInteger;
          qrInsereItem.ParamByName('pendente_impressao').asstring := 'S';
          qrInsereItem.ParamByName('item_impresso').asstring := 'N';
          qrInsereItem.ParamByName('b_venda_tamanho').asboolean := frmVendaTouchInsercao.cdsItensInseridos.fieldByName('b_venda_tamanho').asBoolean;
          qrInsereItem.ParamByName('tamanho').value := frmVendaTouchInsercao.cdsItensInseridos.fieldByName('tamanho').asstring;

          qrInsereItem.ParamByName('quantidade_impressao').asfloat := frmVendaTouchInsercao.cdsItensInseridos.fieldByName('quantidade').AsFloat;
          qrInsereItem.ParamByName('desconto').asfloat := frmVendaTouchInsercao.cdsItensInseridos.fieldByName('desconto').AsFloat;
          qrInsereItem.ParamByName('acrescimo').asfloat := 0;
          qrInsereItem.ParamByName('id_situacao').AsInteger := 4;

          qrInsereItem.ParamByName('b_70pc_valor_unit').asboolean := frmVendaTouchInsercao.cdsItensInseridos.FieldByName('b_exige_70pc_valor_unit').asboolean;

          qrInsereItem.ParamByName('b_entregue').asboolean := false;
          qrInsereItem.ParamByName('b_producao').asboolean := true;
          qrInsereItem.ParamByName('numero_pedido').value := pedido;
          qrInsereItem.ParamByName('justificativa_cancelamento').value := null;

          //insere o item fracionado respeitando a numeração da venda anterior...
          if frmVendaTouchInsercao.cdsItensInseridos.fieldByName('item_fracionado').isnull then
            qrInsereItem.ParamByName('item_fracionado').value:=null
          else
          begin
            if item_fracionado_atual <> frmVendaTouchInsercao.cdsItensInseridos.fieldByName('item_fracionado').value then
            begin
              item_fracionado_atual :=  frmVendaTouchInsercao.cdsItensInseridos.fieldByName('item_fracionado').value;
              item_fracionado := item_fracionado + 1;
            end;

            qrInsereItem.ParamByName('item_fracionado').value := item_fracionado;
          end;

          qrInsereItem.Execute;

          //insere os opcionais
          frmVendaTouchInsercao.cdsOpcionaisInseridos.First;
          frmVendaTouchInsercao.cdsOpcionaisInseridos.filter :=  format('item=%d', [frmVendaTouchInsercao.cdsItensInseridos.fieldByName('item').Asinteger]);
          frmVendaTouchInsercao.cdsOpcionaisInseridos.filtered := true;
          while not frmVendaTouchInsercao.cdsOpcionaisInseridos.eof do
          begin
            str_sql := ' insert into vendaitemopcional (id_venda, id_empresa, id_vendaitem, id_opcional) '+
                       ' values (:id_venda, :id_empresa, :id_vendaietem, :id_opcional)';
            ExecutaComandoSQL(str_sql, vararrayof([venda_principal , recproj.iemp, nro_item,
                                frmVendaTouchInsercao.cdsOpcionaisInseridos.FieldByName('id_opcional').AsInteger]));
            frmVendaTouchInsercao.cdsOpcionaisInseridos.next;
          end;
          nro_item := nro_item + 1;
        end;

        frmVendaTouchInsercao.cdsItensInseridos.Next;
      end;
      AtualizaTotalVendaDB(venda_principal);
      RecarregaVendaPrincipal;
      CalculaTotais;
    end;
    frmVendaTouchInsercao.free;
  end
  else
  begin
    Application.MessageBox('Venda não carregada!', 'Atenção', MB_ICONINFORMATION);
  end;

    end;

procedure TfrmJuncaoefechamentocomanda.acSairExecute(Sender: TObject);
begin
  inherited;
  self.close;
end;

procedure TfrmJuncaoefechamentocomanda.acSolicitacaocontaExecute(
  Sender: TObject);
var formRelatoriosMesa : TfrmControleMesaRelatorios;
    str_impressao: string;
    comanda_atual, correcao_colunas_impressao, quantidade_itens  : integer;
    total_produtos, total_servicos, total_descontos, total_venda, total_comanda: double;
begin
  inherited;

  CalculaTotais(total_produtos, total_servicos, total_descontos, total_venda);
  quantidade_itens := cdsVendaitem.RecordCount;

  if quantidade_itens < 1 then
  begin
    Application.MessageBox('Esta venda não possui itens!', 'Atenção', MB_ICONINFORMATION);
  end
  else
  begin
    correcao_colunas_impressao := numero_colunas_impressora - 48;

    //monta o cabeçalho da empresa
    comanda_atual :=0;
    str_impressao :=  '</zera>' +  sLineBreak+
                      '</ce><n>*** CUPOM PARA SIMPLES CONFERENCIA ***'+ sLineBreak +
                      '</ce>*** NAO É DOCUMENTO FISCAL *** </n>'+ sLineBreak+
                      '</ae>'+
                      frmmenu.qrEmpresa.FieldByName('emp_003').AsString + sLineBreak+
                      AcertaTexto(frmmenu.qrEmpresa.FieldByName('cep_004').AsString, 'E' , 40 + correcao_colunas_impressao)+
                      AcertaTexto(frmmenu.qrEmpresa.FieldByName('emp_007').AsString, 'E' , 8)+ sLineBreak +
                      AcertaTexto(frmmenu.qrEmpresa.FieldByName('cep_003').AsString, 'E' , numero_colunas_impressora)+ sLineBreak +
                      'FONE: '+AcertaTexto(frmmenu.qrEmpresa.FieldByName('emp_013').AsString, 'E' , 40 + correcao_colunas_impressao)+ sLineBreak +
                      '</linha_simples>' +sLineBreak +
                      'Descrição do item          Valor  Qtde.    Total' + sLineBreak +
                      '</linha_simples>' +sLineBreak;

    total_comanda := 0;
    //Monta os itens
    cdsVendaitem.first;
    while not cdsVendaitem.Eof do
    begin
      if comanda_atual <> cdsVendaitem.FieldByName('numero_comanda').AsInteger then
      begin
        comanda_atual := cdsVendaitem.FieldByName('numero_comanda').AsInteger;
        str_impressao := str_impressao + format('</ce><n>*** COMANDA %d ***</n>', [comanda_atual] ) +sLineBreak + '</ae>';
        total_comanda := 0;
      end;

      str_impressao := str_impressao + QuebraLinhaItemCupom(cdsVendaitem.FieldByName('descricao_produto').AsString, 23 + correcao_colunas_impressao, '',
                 AcertaTexto(format('%.2f',[cdsVendaitem.FieldByName('valor_unitario').asfloat]), 'D', 9)+
                 AcertaTexto(format('%.3f',[cdsVendaitem.FieldByName('quantidade').asfloat]), 'D', 7)+
                 AcertaTexto(format('%.2f',[cdsVendaitem.FieldByName('valor_total').asfloat]), 'D', 9)) +
                 sLineBreak ;
      total_comanda := total_comanda + cdsVendaitem.FieldByName('valor_total').asfloat;

      //verifica se o proximo registro é outra comanda (ou fim) para colocar o valor total
      cdsVendaitem.next;
      if cdsVendaitem.Eof then
      begin
        str_impressao:=str_impressao +
                       'Total comanda'+ReplicarCaracter('.', 26 + correcao_colunas_impressao) + AcertaTexto(format('%.2f',  [total_comanda]), 'D',9) + sLineBreak+
                       '</linha_simples>' +sLineBreak;
      end
      else
      begin
        if comanda_atual <> cdsVendaitem.FieldByName('numero_comanda').AsInteger then
        begin
          str_impressao:=str_impressao +
                         'Total comanda'+ReplicarCaracter('.', 26 + correcao_colunas_impressao) + AcertaTexto(format('%.2f',  [total_comanda]), 'D',9) + sLineBreak;
                         //'</linha_simples>' +sLineBreak;
        end;
      end;
    end;
    //Monta o rodapé
    str_impressao:=str_impressao +
                   //'</linha_simples>' +sLineBreak +
                   'Sub total'+ ReplicarCaracter('.', 30 + correcao_colunas_impressao) + AcertaTexto(format('%.2f',  [total_produtos]), 'D',9) + sLineBreak+
                   '    Desconto nos itens: ' + format('%.2f',  [total_descontos]) + sLineBreak +
                   AcertaTexto('Taxa de serviço (+)', 'E', 39 + correcao_colunas_impressao, '.' ) + AcertaTexto(format('%.2f',  [total_servicos]), 'D',9) + sLineBreak+
                   AcertaTexto('_______________', 'D',48 + correcao_colunas_impressao) +sLineBreak +
                   '<n><e>TOTAL PEDIDO' + AcertaTexto(format('R$ %.2f',  [total_venda]), 'D',12) +
                   '</e></n>'+sLineBreak + '</linha_simples>' +sLineBreak +
                   'Qtde. de itens: '+ inttostr(quantidade_itens) +sLineBreak;

    //mensagem final...
    if trim(mensagem_taxa_cupom)<>'' then
      str_impressao := str_impressao + '</linha_simples>' +sLineBreak +'</ce><n>' +
                       mensagem_taxa_cupom + '</n>'+ sLineBreak;

    //monta o rodapé dev sistema
    str_impressao := str_impressao + '</linha_simples>' +sLineBreak +
                     '</ce>' + recproj.sInfoDevSistema2 + sLineBreak +
                     'Versão '+ GetFileVersion(ParamStr(0)) + sLineBreak +
                     '</linha_simples>'+ sLineBreak;
    str_impressao := str_impressao + sLineBreak+'</corte_total>';

    //envia a string do relatorio para previsualizar
    frmVisualizaRelatorioTexto := TfrmVisualizaRelatorioTexto.Create(self,'CAIXA',str_impressao);
    frmVisualizaRelatorioTexto.ShowModal;
    frmVisualizaRelatorioTexto.Free;

  end;
end;

procedure TfrmJuncaoefechamentocomanda.AcTransferenciaprodutoExecute(
  Sender: TObject);
var id_usuario : integer;
begin
  inherited;

  if (cdsVendaitem.RecordCount > 0) then
  begin

    // Valida a permissão de usuario para transferência de item
    if not frmmenu.ConfirmacaoSenha('b_permite_transferencia_item', id_usuario)
    then
      abort;

    frmTransferenciaitem := TfrmTransferenciaitem.Create(self,
      venda_principal);
    frmTransferenciaitem.ShowModal;
    if frmTransferenciaitem.tag = 1 then
    begin
      AtualizaTotalVendaDB(venda_principal);
      AtualizaTotalVendaDB(frmTransferenciaitem.id_venda_destino);
      RecarregaVendaPrincipal;
      CalculaTotais;
    end;

    frmTransferenciaitem.Free;
  end
  else
    Application.MessageBox('Esta venda não possui itens!', 'Atenção',
      MB_ICONINFORMATION + MB_OK);

end;

procedure TfrmJuncaoefechamentocomanda.CalculaTotais(out total_produtos, total_servicos, total_descontos, total_venda : double);
begin
  cdsVendaitem.First;

  total_produtos := 0;
  total_descontos:= 0;

  while not cdsVendaitem.eof do
  begin
    total_produtos := total_produtos + cdsVendaitem.fieldbyname('valor_total').AsFloat;
    total_descontos := total_descontos + cdsVendaitem.fieldbyname('desconto').AsFloat;
    cdsVendaitem.Next;
  end;

  if b_taxa_adicional_comanda then
    total_servicos := total_produtos * 0.1
  else
    total_servicos := 0;

  total_venda := total_produtos + total_servicos;
  cdsVendaitem.First;
end;

procedure TfrmJuncaoefechamentocomanda.CalculaTotais;
var  total_produtos, total_servicos, total_descontos, total_venda : double;
begin
  CalculaTotais(total_produtos, total_servicos, total_descontos, total_venda);

  lbTotalProdutos.Caption := format('R$ %.2f', [total_produtos]);
  lbTotalServicos.Caption := format('R$ %.2f', [total_servicos]);
  lbTotalDescontos.Caption := format('R$ %.2f', [total_descontos]);
  lbTotalVenda.Caption := format('R$ %.2f', [total_venda]);

  cxGrid1DBTableView1.ViewData.Expand(true);
end;



constructor TfrmJuncaoefechamentocomanda.Create(sender : TComponent);
var config_imp : string;
    acesso_comanda_usuario : boolean;
begin
  inherited Create(sender);

  //verifica se o usuário atual tem acesso a venda comanda
  buscacampo( acesso_comanda_usuario, 'select b_acesso_venda_comanda from usuarios where usu_001=' + inttostr(recproj.iUsuario), '', false);
  frmmenu.VerificaPermissaoAcesso (acesso_comanda_usuario);

  // verifica se existe caixa aberto para o usuário atual
  frmmenu.VerificaCaixaAberto;

  //cria o dataset que recebe os itens de venda
  cdsVendaitem.CreateDataSet;
  venda_principal := 0;
  //carrega as configurações
  b_taxa_adicional_comanda := LerBooleanConfig('TAXAADICIONALCOMANDA', frmmenu.cdsCFG.FileName);
  b_agrupar_itens_iguais := LerBooleanConfig('CKAGRUPARITENSIGUAISCOMANDA', frmMenu.cdsCFG.FileName);
  b_exige_senha_cancelamento_item_comanda := LerBooleanConfig('CKEXIGIRSENHACANCELAMENTOITENSCOMANDA',frmmenu.cdsCFG.FileName);
  mensagem_taxa_cupom := LerStringConfig('EDMENSAGEMTXSERVICOCOMANDA',frmMenu.cdsCFG.FileName);

  //carrega a configuração de numero de colunas da impressora pos do caixa
  config_imp := ExtractFilePath(Application.ExeName) + 'CONF\IMP_CAIXA.xml';
  if FileExists(config_imp) then
    numero_colunas_impressora := LerIntegerConfig('COLUNAS', config_imp)
  else
    numero_colunas_impressora := 48;

  validaStatusVenda;
end;

procedure TfrmJuncaoefechamentocomanda.CarregaRegistro;
begin
  cdsVendaitem.Append;
  cdsVendaitem.FieldByName('id_venda').AsInteger :=qrConsultacomanda.FieldByName('id_venda').AsInteger;
  cdsVendaitem.FieldByName('valor_venda').value :=qrConsultacomanda.FieldByName('valor_venda').value;
  cdsVendaitem.FieldByName('tipo_venda').AsString :=qrConsultacomanda.FieldByName('tipo_venda').AsString;
  cdsVendaitem.FieldByName('numero_venda').AsInteger :=qrConsultacomanda.FieldByName('numero_venda').AsInteger;
  cdsVendaitem.FieldByName('numero_comanda').AsInteger :=qrConsultacomanda.FieldByName('numero_comanda').AsInteger;
  cdsVendaitem.FieldByName('id_vendaitem').AsInteger :=qrConsultacomanda.FieldByName('id_vendaitem').AsInteger;
  cdsVendaitem.FieldByName('id_material').AsInteger :=qrConsultacomanda.FieldByName('id_material').AsInteger;
  cdsVendaitem.FieldByName('id_empresa').AsInteger :=qrConsultacomanda.FieldByName('id_empresa').AsInteger;
  cdsVendaitem.FieldByName('descricao_produto').Asstring :=qrConsultacomanda.FieldByName('descricao_produto').Asstring;
  cdsVendaitem.FieldByName('quantidade').Asfloat :=qrConsultacomanda.FieldByName('quantidade').Asfloat;
  cdsVendaitem.FieldByName('valor_unitario').Asfloat :=qrConsultacomanda.FieldByName('valor_unitario').Asfloat;
  cdsVendaitem.FieldByName('valor_total').Asfloat :=qrConsultacomanda.FieldByName('valor_total').Asfloat;
  cdsVendaitem.FieldByName('acrescimo').Asfloat :=qrConsultacomanda.FieldByName('acrescimo').Asfloat;
  cdsVendaitem.FieldByName('desconto').Asfloat :=qrConsultacomanda.FieldByName('desconto').Asfloat;
  cdsVendaitem.FieldByName('id_garcom').value :=qrConsultacomanda.FieldByName('id_garcom').value;
  cdsVendaitem.FieldByName('cod_impressora').AsInteger :=qrConsultacomanda.FieldByName('cod_impressora').AsInteger;
  cdsVendaitem.FieldByName('id_situacao').AsInteger :=qrConsultacomanda.FieldByName('id_situacao').AsInteger;
  cdsVendaitem.FieldByName('pendente_impressao').asstring :=qrConsultacomanda.FieldByName('pendente_impressao').asstring;
  cdsVendaitem.FieldByName('item_impresso').asstring :=qrConsultacomanda.FieldByName('item_impresso').asstring;
  cdsVendaitem.FieldByName('b_venda_tamanho').Asboolean :=qrConsultacomanda.FieldByName('b_venda_tamanho').Asboolean;
  cdsVendaitem.FieldByName('tamanho').value :=qrConsultacomanda.FieldByName('tamanho').value;
  cdsVendaitem.FieldByName('item_fracionado').value :=qrConsultacomanda.FieldByName('item_fracionado').value;
  cdsVendaitem.FieldByName('quantidade_impressao').Asfloat :=qrConsultacomanda.FieldByName('quantidade_impressao').Asfloat;
  cdsVendaitem.FieldByName('codigo_material').Asstring :=qrConsultacomanda.FieldByName('codigo_material').Asstring;
  cdsVendaitem.FieldByName('observacoes').Asstring :=qrConsultacomanda.FieldByName('observacoes').Asstring;
  cdsVendaitem.FieldByName('nome_garcom').Asstring :=qrConsultacomanda.FieldByName('nome_garcom').Asstring;
  cdsVendaitem.FieldByName('b_70pc_valor_unit').Asboolean :=qrConsultacomanda.FieldByName('b_70pc_valor_unit').Asboolean;
  cdsVendaitem.FieldByName('b_producao').Asboolean :=qrConsultacomanda.FieldByName('b_producao').Asboolean;
  cdsVendaitem.FieldByName('b_entregue').Asboolean :=qrConsultacomanda.FieldByName('b_entregue').Asboolean;
  cdsVendaitem.FieldByName('numero_pedido').value :=qrConsultacomanda.FieldByName('numero_pedido').value;
  cdsVendaitem.FieldByName('justificativa_cancelamento').value :=qrConsultacomanda.FieldByName('justificativa_cancelamento').value;
  cdsVendaitem.Post;
end;

procedure TfrmJuncaoefechamentocomanda.acExcluiritemExecute(Sender: TObject);
var ok : boolean;
    id_usuario_cancelamento : integer;
begin
  inherited;

  if (cdsVendaitem.RecordCount > 0)  then
  begin
    id_usuario_cancelamento := recproj.iUsuario;

    if b_exige_senha_cancelamento_item_comanda then
      ok := frmmenu.ConfirmacaoSenha('b_cancelamento_mesa', id_usuario_cancelamento)
    else
      ok := true;

    if ok then
    begin

      frmControleMesaItensAcoes := TfrmControleMesaItensAcoes.Create(self,
        venda_principal,id_usuario_cancelamento, 3);
      frmControleMesaItensAcoes.ShowModal;
      frmControleMesaItensAcoes.Free;
      AtualizaTotalVendaDB(venda_principal);
      RecarregaVendaPrincipal;
      CalculaTotais;

    end;
  end
  else
    Application.MessageBox('Esta venda não possui itens!', 'Atenção',
      MB_ICONINFORMATION + MB_OK);

end;

procedure TfrmJuncaoefechamentocomanda.acFecharcontaExecute(Sender: TObject);
begin
  inherited;
  if cdsVendaitem.RecordCount < 1 then
  begin
    Application.MessageBox('Esta venda não possui itens!', 'Atenção', MB_ICONINFORMATION);
  end
  else
  begin
    AtualizaTotalVendaDB(venda_principal);
    frmControleMesaFechamento := TfrmControleMesaFechamento.Create(self, venda_principal, true);
    frmControleMesaFechamento.ShowModal;
    if frmControleMesaFechamento.Tag=1 then
    begin
      LimpaVenda;
    end;
    frmControleMesaFechamento.Free;
  end;
end;

procedure TfrmJuncaoefechamentocomanda.acGravarVendaExecute(Sender: TObject);
var str_sql : string;
    proximo_item, item_fracionado, item_fracionado_atual : integer;
    qr_aux : Tuniquery;
begin
  inherited;
  if venda_principal>0 then
  begin
    //if application.MessageBox('Deseja gravar esta venda?', 'Atenção', MB_ICONQUESTION + MB_YESNO)=mryes then
   // begin
      cdsVendaitem.first;

      qr_aux :=  CriaUniQuery(self, frmmenu.conexao);

      //busca os proximos ids dos itens e itens fracionados
      str_sql:=' select COALESCE( max(ite_001),0)+1 as proximo_item, COALESCE( max(item_fracionado),0) as item_fracionado '+
               ' from vendaitem where ven_001='+ IntToStr(venda_principal)+' and emp_001='+ IntToStr(recproj.iEmp);
      ExecutaConsultaSQL(qr_aux,str_sql);
      proximo_item := qr_aux.FieldByName('proximo_item').AsInteger;
      item_fracionado := qr_aux.FieldByName('item_fracionado').AsInteger;
      item_fracionado_atual := 0;

      cdsVendaitem.Filtered:=false;

      while not cdsVendaitem.eof do
      begin
        if cdsVendaitem.FieldByName('id_venda').AsInteger<>venda_principal then
        begin
          qrInsereItem.ParamByName('id_empresa').AsInteger := cdsVendaitem.FieldByName('id_empresa').AsInteger;
          qrInsereItem.ParamByName('id_venda').AsInteger := venda_principal;
          qrInsereItem.ParamByName('id_vendaitem').AsInteger := proximo_item;
          qrInsereItem.ParamByName('id_material').AsInteger := cdsVendaitem.FieldByName('id_material').AsInteger;
          qrInsereItem.ParamByName('quantidade').asfloat := cdsVendaitem.FieldByName('quantidade').asfloat;
          qrInsereItem.ParamByName('valor_unit').asfloat := cdsVendaitem.FieldByName('valor_unitario').asfloat;
          qrInsereItem.ParamByName('valor_total').asfloat := cdsVendaitem.FieldByName('valor_total').asfloat;
          qrInsereItem.ParamByName('observacoes').asstring := cdsVendaitem.FieldByName('observacoes').asstring;

          qrInsereItem.ParamByName('id_garcom').value := cdsVendaitem.FieldByName('id_garcom').value;
          qrInsereItem.ParamByName('cod_impressora').value := cdsVendaitem.FieldByName('cod_impressora').value;
          qrInsereItem.ParamByName('pendente_impressao').asstring := cdsVendaitem.FieldByName('pendente_impressao').asstring;
          qrInsereItem.ParamByName('item_impresso').asstring := cdsVendaitem.FieldByName('item_impresso').asstring;
          qrInsereItem.ParamByName('b_venda_tamanho').asboolean := cdsVendaitem.FieldByName('b_venda_tamanho').asboolean;
          qrInsereItem.ParamByName('tamanho').value := cdsVendaitem.FieldByName('tamanho').value;
          qrInsereItem.ParamByName('quantidade_impressao').asfloat := cdsVendaitem.FieldByName('quantidade_impressao').asfloat;
          qrInsereItem.ParamByName('desconto').asfloat := cdsVendaitem.FieldByName('desconto').asfloat;
          qrInsereItem.ParamByName('acrescimo').asfloat := cdsVendaitem.FieldByName('acrescimo').asfloat;
          qrInsereItem.ParamByName('id_situacao').AsInteger := cdsVendaitem.FieldByName('id_situacao').AsInteger;

          qrInsereItem.ParamByName('b_70pc_valor_unit').asboolean := cdsVendaitem.FieldByName('b_70pc_valor_unit').asboolean;

          qrInsereItem.ParamByName('b_entregue').asboolean := cdsVendaitem.FieldByName('b_entregue').asboolean;
          qrInsereItem.ParamByName('b_producao').asboolean := cdsVendaitem.FieldByName('b_producao').asboolean;
          qrInsereItem.ParamByName('numero_pedido').value := cdsVendaitem.FieldByName('numero_pedido').value;
          qrInsereItem.ParamByName('justificativa_cancelamento').value := cdsVendaitem.FieldByName('justificativa_cancelamento').value;

          //insere o item fracionado respeitando a numeração da venda anterior...
          if cdsVendaitem.FieldByName('item_fracionado').isnull then
            qrInsereItem.ParamByName('item_fracionado').value:=null
          else
          begin
            if item_fracionado_atual <> cdsVendaitem.FieldByName('item_fracionado').asinteger then
            begin
              item_fracionado_atual :=  cdsVendaitem.FieldByName('item_fracionado').asinteger;
              item_fracionado := item_fracionado + 1;
            end;

            qrInsereItem.ParamByName('item_fracionado').value := item_fracionado;
          end;

          qrInsereItem.Execute;

          //busca e insere os opcionais
          str_sql:=format('select id_venda, id_vendaitem, id_opcional from vendaitemopcional where id_venda=%d and id_vendaitem=%d and id_empresa=%d',
                          [cdsVendaitem.FieldByName('id_venda').AsInteger, cdsVendaitem.FieldByName('id_vendaitem').AsInteger, cdsVendaitem.FieldByName('id_empresa').AsInteger ]);
          ExecutaConsultaSQL(qr_aux,str_sql);

          while not qr_aux.Eof do
          begin
            str_sql:=format('insert into vendaitemopcional (id_venda, id_vendaitem, id_opcional, id_empresa ) values(%d, %d ,%d ,%d )',
            [venda_principal, proximo_item, qr_aux.FieldByName('id_opcional').Asinteger, cdsVendaitem.FieldByName('id_empresa').AsInteger ]);
            ExecutaComandoSQL(str_sql);
            qr_aux.Next;
          end;

          //atualiza os pagamentos antecipados da venda atual para a venda principal
          str_sql := format('update venda_pag_antecipado set id_venda=%d where id_venda=%d and id_empresa=%d',
                            [venda_principal, cdsVendaitem.FieldByName('id_venda').AsInteger, recproj.iEmp ]);
          ExecutaComandoSQL(str_sql);
          str_sql := format('update caixaitem set id_venda=%d where id_venda=%d and id_empresa=%d and antecipado',
                            [venda_principal, cdsVendaitem.FieldByName('id_venda').AsInteger, recproj.iEmp]);
          ExecutaComandoSQL(str_sql);

          //apaga os itens da venda atual
          str_sql := format('delete from vendaitem where ven_001=%d and emp_001=%d' ,
                            [cdsVendaitem.FieldByName('id_venda').AsInteger, recproj.iEmp ]);
          ExecutaComandoSQL(str_sql);
          //apaga a vendas
          str_sql := format('delete from venda where ven_001=%d and emp_001=%d' ,
                            [cdsVendaitem.FieldByName('id_venda').AsInteger, recproj.iEmp ]);
          ExecutaComandoSQL(str_sql);

          //edita o id_venda, id_vendaitem, item_fracionado
          cdsVendaitem.Edit;
          cdsVendaitem.FieldByName('id_venda').AsInteger := venda_principal;
          cdsVendaitem.FieldByName('id_vendaitem').AsInteger := proximo_item;
          if not cdsVendaitem.FieldByName('item_fracionado').isnull then
            cdsVendaitem.FieldByName('item_fracionado').asinteger := item_fracionado;
          cdsVendaitem.post;

          proximo_item := proximo_item + 1;
        end;

        cdsVendaitem.next;
      end;
      cdsVendaitem.Filter := 'id_situacao=4';
      cdsVendaitem.Filtered := true;
      AtualizaTotalVendaDB(venda_principal);
      RecarregaVendaPrincipal;
      ValidaStatusVenda;
      CalculaTotais;
    //end;
  end;
end;

procedure TfrmJuncaoefechamentocomanda.acPDVExecute(Sender: TObject);
begin
  inherited;
  frmpdv := tfrmpdv.Create(self);
  frmpdv.ShowModal;
  freeandnil(frmpdv);

  qrConsultacomanda.Close;
  LimpaVenda;
  edComanda1.SetFocus;
end;

procedure TfrmJuncaoefechamentocomanda.edComanda3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edComanda2.Text)='' then
    exit;

    //verifica se a venda principal esta carregada...
    if venda_principal>0 then
    begin
      qrConsultacomanda.Close;
      qrConsultacomanda.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
      qrConsultacomanda.ParamByName('numero_comanda').AsInteger :=StrToInt(edComanda2.Text);
      qrConsultacomanda.open;

      if qrConsultacomanda.RecordCount>0 then
      begin

        cdsVendaitem.Filtered := false;
        //verifica se existe a venda escolhida
        if cdsVendaitem.Locate('id_venda', qrConsultacomanda.FieldByName('id_venda').AsInteger, []) then
        begin
          cdsVendaitem.Filtered := true;
          Application.MessageBox('Comanda já selecionada!','ALERTA',+MB_ICONEXCLAMATION+MB_OK);
          edcomanda2.Text:='';
          edcomanda2.setfocus;
        end
        else
        begin
          qrConsultacomanda.First; // Primeiro registro

          while not qrConsultacomanda.Eof do
          begin
            CarregaRegistro; //Carrega o registro para o clientdataset
            qrConsultacomanda.next;
          end;
        end;
        cdsVendaitem.Filter := 'id_situacao=4';
        validaStatusVenda;
        CalculaTotais;

        edcomanda2.Text:='';
        edComanda2.SetFocus;
      end
      else
      begin
        Application.MessageBox('Essa comanda não possui consumo!', 'ALERTA',+MB_ICONEXCLAMATION + MB_OK);
        edcomanda2.Text:='';
        edComanda2.SetFocus;
      end;
    end
    else
    begin
      Application.MessageBox('Informe a comanda antes de juntar!','ALERTA', +MB_ICONEXCLAMATION + MB_OK);
      edcomanda1.Text:='';
      edComanda1.SetFocus;
    end;
  end;
end;


procedure TfrmJuncaoefechamentocomanda.edComanda1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if trim(edComanda1.Text)='' then exit;

    qrConsultacomanda.Close;
    qrConsultacomanda.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
    qrConsultacomanda.ParamByName('numero_comanda').AsInteger :=StrToInt(edComanda1.Text);
    qrConsultacomanda.open;

    if qrConsultacomanda.RecordCount > 0 then
    begin
      if venda_principal>0 then
      begin
        //venda ja carregada, verifica se é a mesma da principal...
        if venda_principal = qrConsultacomanda.FieldByName('id_venda').AsInteger then
        begin
          Application.MessageBox('Comanda já informada!','Alerta',MB_ICONINFORMATION);
          abort;
        end;

        //verifica se gostaria de continuar de qualquer forma...
        if not (Application.MessageBox('Já existe uma venda ativa! Gostaria de de carregar a comanda informada?',
                  'Atenção', MB_ICONQUESTION+MB_yesno)=mryes) then abort;
      end;

      cdsVendaitem.EmptyDataSet;
      cdsVendaitem.Filtered := false;

      qrConsultacomanda.First; // Primeiro registro
      venda_principal := qrConsultacomanda.FieldByName('id_venda').AsInteger;

      while not qrConsultacomanda.Eof do
      begin
        CarregaRegistro; //Carrega o registro para o clientdataset
        qrConsultacomanda.next;
      end;

      cdsVendaitem.Filter := 'id_situacao=4';
      cdsVendaitem.Filtered := true;

      validaStatusVenda;
      CalculaTotais;
    end
    else
    begin
      Application.MessageBox('Essa comanda não possui consumo!', 'Atenção',MB_ICONINFORMATION + MB_OK);
      edcomanda1.Text:='';
      edComanda1.SetFocus;
    end;
  end;

end;

procedure TfrmJuncaoefechamentocomanda.edComanda2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

 if Key = VK_RETURN then
  begin
    //verifica se a venda principal esta carregada...
    if venda_principal>0 then
    begin
      qrConsultacomanda.Close;
      qrConsultacomanda.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
      qrConsultacomanda.ParamByName('numero_comanda').AsInteger :=StrToInt(edComanda2.value);
      qrConsultacomanda.open;

      if qrConsultacomanda.RecordCount>0 then
      begin

        cdsVendaitem.Filtered := false;
        //verifica se existe a venda escolhida
        if cdsVendaitem.Locate('id_venda', qrConsultacomanda.FieldByName('id_venda').AsInteger, []) then
        begin
          cdsVendaitem.Filtered := true;
          Application.MessageBox('Comanda já selecionada!','ALERTA',+MB_ICONEXCLAMATION+MB_OK);
          edcomanda2.Text:='';
          edcomanda2.setfocus;
        end
        else
        begin
          qrConsultacomanda.First; // Primeiro registro

          while not qrConsultacomanda.Eof do
          begin
            CarregaRegistro; //Carrega o registro para o clientdataset
            qrConsultacomanda.next;
          end;
        end;
        cdsVendaitem.Filter := 'id_situacao=4';
        validaStatusVenda;
        CalculaTotais;

        edcomanda2.Text:='';
        edComanda2.SetFocus;
      end
      else
      begin

        Application.MessageBox('Essa comanda não possui consumo!', 'ALERTA',+MB_ICONEXCLAMATION + MB_OK);
        edcomanda2.Text:='';
        edComanda2.SetFocus;
      end;
    end
    else
    begin
      Application.MessageBox('Informe a comanda antes de juntar!','ALERTA', +MB_ICONEXCLAMATION + MB_OK);
      edcomanda1.Text:='';
      edComanda1.SetFocus;
    end;
  end;
end;

procedure TfrmJuncaoefechamentocomanda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if venda_principal>0 then
  begin
    if not (application.MessageBox('Deseja mesmo sair? Todas as alterações não salvas serão perdidas!','Atenção', MB_ICONQUESTION + MB_YESNO)=mryes) then
      abort;
  end;

end;

procedure TfrmJuncaoefechamentocomanda.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key= vk_return then Perform(WM_NEXTDLGCTL,0,0)

end;

procedure TfrmJuncaoefechamentocomanda.FormShow(Sender: TObject);
begin
  edcomanda1.SetFocus;
end;

end.
