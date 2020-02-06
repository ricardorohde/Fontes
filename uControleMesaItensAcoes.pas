unit uControleMesaItensAcoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCheckBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Datasnap.Provider, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc, cxDBEdit, Vcl.DBCtrls, Vcl.Mask, MemDS, DBAccess, Uni,
  AdvGlowButton, AdvPanel, JvExStdCtrls, JvEdit, JvValidateEdit, JvDataSource,
  Vcl.Grids, Vcl.DBGrids, Math, frxClass, frxDBSet, cxCurrencyEdit, dxSkinsCore,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxSpinEdit;

type
  TfrmControleMesaItensAcoes = class(TForm)
    cdsVendaItem: TClientDataSet;
    dspVendaItem: TDataSetProvider;
    dsVendaItem: TDataSource;
    cdsVendaItemid_empresa: TIntegerField;
    cdsVendaItemid_venda: TIntegerField;
    cdsVendaItemnro_item: TIntegerField;
    cdsVendaItemqtdevenda: TFloatField;
    cdsVendaItemvlrvenda: TFloatField;
    cdsVendaItemdescricao_item: TWideStringField;
    cdsVendaItemobservacao: TWideStringField;
    cdsVendaItemcod_status: TIntegerField;
    cdsVendaItemstatus: TWideMemoField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1id_empresa: TcxGridDBColumn;
    cxGrid1DBTableView1id_venda: TcxGridDBColumn;
    cxGrid1DBTableView1nro_item: TcxGridDBColumn;
    cxGrid1DBTableView1qtdevenda: TcxGridDBColumn;
    cxGrid1DBTableView1vlrvenda: TcxGridDBColumn;
    cxGrid1DBTableView1descricao_item: TcxGridDBColumn;
    cxGrid1DBTableView1observacao: TcxGridDBColumn;
    cxGrid1DBTableView1hora: TcxGridDBColumn;
    cxGrid1DBTableView1cod_status: TcxGridDBColumn;
    cxGrid1DBTableView1status: TcxGridDBColumn;
    cxGrid1DBTableView1flag: TcxGridDBColumn;
    PageControl1: TPageControl;
    pgObservacao: TTabSheet;
    pgDesconto: TTabSheet;
    pgCancelamento: TTabSheet;
    cdsVendaItemdesconto: TFloatField;
    cdsVendaItemvalor_total: TFloatField;
    cdsVendaItemvalor_total_calc: TFloatField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label5: TLabel;
    DBText4: TDBText;
    Label6: TLabel;
    dbeObsCancelamento: TDBEdit;
    dbeObs: TDBEdit;
    cxGrid1DBTableView1desconto: TcxGridDBColumn;
    cxGrid1DBTableView1valor_total: TcxGridDBColumn;
    cxGrid1DBTableView1valor_total_calc: TcxGridDBColumn;
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
    qrVendaItemid_material: TIntegerField;
    AdvPanel1: TAdvPanel;
    pnBotoes: TFlowPanel;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    qrVendaItemitem_fracionado: TIntegerField;
    cdsVendaItemitem_fracionado: TIntegerField;
    cdsVendaItemOpcional: TClientDataSet;
    pgOpcionais: TTabSheet;
    dsVendaItemOpcional: TDataSource;
    cdsVendaItemOpcionalid_venda: TIntegerField;
    cdsVendaItemOpcionalid_empresa: TIntegerField;
    cdsVendaItemOpcionalid_vendaitem: TIntegerField;
    cdsVendaItemOpcionalvalor: TFloatField;
    qrOpcional: TUniQuery;
    qrOpcionalid_opcional: TIntegerField;
    qrOpcionaldescricao: TWideStringField;
    qrOpcionalvalor: TFloatField;
    cxGridOpcionaisDisponiveis: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dsqrOpcional: TDataSource;
    cxGridDBTableView1id_opcional: TcxGridDBColumn;
    cxGridDBTableView1descricao: TcxGridDBColumn;
    cxGridDBTableView1valor: TcxGridDBColumn;
    btAdicionarOp: TAdvGlowButton;
    btRemoverOp: TAdvGlowButton;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Label7: TLabel;
    Label8: TLabel;
    cdsVendaItemOpcionalid_opcional: TIntegerField;
    cdsVendaItemOpcionaldescricao: TWideStringField;
    lbTotalOp: TLabel;
    lbItensNro: TLabel;
    qrVendaItemacrescimo: TFloatField;
    cdsVendaItemacrescimo: TFloatField;
    qrVendaItemdesconto_perc: TFloatField;
    jvdsVendaItem: TJvDataSource;
    edDescontoPercent: TJvValidateEdit;
    cdsVendaItemdesconto_perc: TFloatField;
    edFiltroOpcionais: TEdit;
    qrVendaItemtipo_venda: TWideStringField;
    cdsVendaItemtipo_venda: TWideStringField;
    RepItemCancelado: TfrxReport;
    dbPedido: TfrxDBDataset;
    qrVendaItemdescricao_mesa: TWideStringField;
    cdsVendaItemdescricao_mesa: TWideStringField;
    qrVendaItemnro_venda: TIntegerField;
    cdsVendaItemnro_venda: TIntegerField;
    qrVendaItemfracionado: TWideStringField;
    cdsVendaItemfracionado: TWideStringField;
    qrVendaItemdata_hora_lancamento: TDateTimeField;
    cdsVendaItemdata_hora_lancamento: TDateTimeField;
    pgQuantidade: TTabSheet;
    qrVendaItemqtdevenda_old: TFloatField;
    cdsVendaItemqtdevenda_old: TFloatField;
    Label14: TLabel;
    DBText9: TDBText;
    Label15: TLabel;
    DBText10: TDBText;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    Label20: TLabel;
    DBText14: TDBText;
    Label21: TLabel;
    DBText15: TDBText;
    qrVendaItemjustificativa_cancelamento: TWideStringField;
    cdsVendaItemjustificativa_cancelamento: TWideStringField;
    edDescontoValor: TJvValidateEdit;
    Label9: TLabel;
    cdsVendaItemid_material: TIntegerField;
    qrOpcionaltipo: TIntegerField;
    btFiltraOpc6: TAdvGlowButton;
    btFiltraOpc5: TAdvGlowButton;
    btFiltraOpc4: TAdvGlowButton;
    btFiltraOpc3: TAdvGlowButton;
    btFiltraOpc2: TAdvGlowButton;
    btFiltraOpc1: TAdvGlowButton;
    cdsVendaItemOpcionaltipo: TIntegerField;
    edQuantidade: TJvValidateEdit;
    cdsVendaItemOpcionalqtde: TIntegerField;
    cxGridDBColumn4: TcxGridDBColumn;
    qrOpcionalqtde: TIntegerField;
    edqtde: TcxSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure cdsVendaItemAfterOpen(DataSet: TDataSet);
    constructor Create(Sender: TComponent; id_venda, id_usuario : integer ;
                       modoTela : integer ;ModoTouch : boolean = false ;
                       ModoTemporario : boolean= false);
    procedure btConfirmaClick(Sender: TObject);
    procedure cdsVendaItemCalcFields(DataSet: TDataSet);
    procedure cdsVendaItemdescontoValidate(Sender: TField);
    procedure cdsVendaItemBeforeScroll(DataSet: TDataSet);
    procedure btCancelaClick(Sender: TObject);
    procedure PageControl1DrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
    function IsGridFocused: Boolean;
    procedure btConfirmaExit(Sender: TObject);
    procedure cdsVendaItemBeforeOpen(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbeObsCancelamentoChange(Sender: TObject);
    procedure dbeObsChange(Sender: TObject);
    procedure btAdicionarOpClick(Sender: TObject);
    procedure btRemoverOpClick(Sender: TObject);
    procedure cdsVendaItemOpcionalAfterPost(DataSet: TDataSet);
    procedure cdsVendaItemAfterScroll(DataSet: TDataSet);
    procedure cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edFiltroOpcionaisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDescontoPercentEnter(Sender: TObject);
    procedure dbeObsCancelamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure PreencheOpcionais(DatasetOpcionais : TDataSet);
    procedure VinculaCDSVendaItem(DatasetItens : TDataSet);
    procedure cdsVendaItemdesconto_percValidate(Sender: TField);
    procedure cdsVendaItemqtdevendaChange(Sender: TField);
    procedure edDescontoPercentExit(Sender: TObject);
    procedure FiltraOpcionais(sTipo: string);
    procedure btFiltraOpc1Click(Sender: TObject);
    procedure btFiltraOpc2Click(Sender: TObject);
    procedure btFiltraOpc3Click(Sender: TObject);
    procedure btFiltraOpc4Click(Sender: TObject);
    procedure btFiltraOpc5Click(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure btFiltraOpc6Click(Sender: TObject);
    procedure edQuantidadeEnter(Sender: TObject);
    procedure edQuantidadeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    gModoTela, id_usuario_acao  : integer;
    flag_calcular, bImprimeCupomItemCancelado, gModoTouch, bExigeJustificativa,
    gModoTemporario : boolean;
    sCamImpCaixa, nNomeUsuario : string;
  public
    { Public declarations }
    item_exclusao : integer;
    flag_exclusao_fracionado : boolean;
  end;

var
  frmControleMesaItensAcoes: TfrmControleMesaItensAcoes;

implementation

{$R *.dfm}

uses uControleMesa, uMenu, Funcao_DB, uFuncoes;

procedure TfrmControleMesaItensAcoes.PreencheOpcionais(DatasetOpcionais : TDataSet);
begin
  cdsVendaItemOpcional.EmptyDataSet;
  DatasetOpcionais.first;
  while not DatasetOpcionais.Eof do
  begin
    cdsVendaItemOpcional.Append;
    cdsVendaItemOpcional.FieldByName('id_empresa').AsInteger:=DatasetOpcionais.FieldByName('id_empresa').AsInteger;
    cdsVendaItemOpcional.FieldByName('id_venda').AsInteger:=DatasetOpcionais.FieldByName('id_venda').AsInteger;
    cdsVendaItemOpcional.FieldByName('id_vendaitem').AsInteger:=DatasetOpcionais.FieldByName('id_vendaitem').AsInteger;
    cdsVendaItemOpcional.FieldByName('id_opcional').AsInteger:=DatasetOpcionais.FieldByName('id_opcional').AsInteger;
    cdsVendaItemOpcional.FieldByName('valor').asfloat:=DatasetOpcionais.FieldByName('valor').asfloat;
    cdsVendaItemOpcional.FieldByName('descricao').asstring:=DatasetOpcionais.FieldByName('descricao').asstring;
    cdsVendaItemOpcional.FieldByName('tipo').AsInteger:=DatasetOpcionais.FieldByName('tipo').AsInteger;
    cdsVendaItemOpcional.Post;
    DatasetOpcionais.Next;
  end;
end;

procedure TfrmControleMesaItensAcoes.VinculaCDSVendaItem(DatasetItens : TDataSet);
begin
  cdsVendaItem.close;
  dspVendaItem.DataSet := DatasetItens;
  cdsVendaItem.open;
end;

//Modo Temporário não faz nenhum lançamento, toda a rotina de carregamento e atualização é acionado pela tela que chamou esta...
constructor TfrmControleMesaItensAcoes.Create(Sender: TComponent; id_venda, id_usuario  : integer ;
                              modoTela : integer ; ModoTouch : boolean = false;
                              ModoTemporario : boolean= false);
var str_sql : string;
    qraux : TUniquery;
begin
  inherited Create(sender);
  //Modo 1 =  Observação
  //Modo 2 = Desconto
  //Modo 3 = Cancelameto
  //Modo 4 = Opcionais
  //Modo 5 = Quantidade
  BuscaCampo(nNomeUsuario, format('select usu_002 from usuarios  where usu_001=%d', [id_usuario]), '', false);
  id_usuario_acao := id_usuario;
  cdsVendaItemOpcional.CreateDataSet;
  cdsVendaItemOpcional.open;
  item_exclusao :=0;
  self.Tag := 0;

  qrVendaItem.Close;
  qrVendaItem.ParamByName('id_venda').AsInteger := id_venda;
  qrVendaItem.ParamByName('emp').AsInteger := RecProj.iEmp;
  qrVendaItem.open;

  VinculaCDSVendaItem(qrVendaItem);

  gModoTela := modoTela;
  gModoTouch := ModoTouch;
  gModoTemporario := ModoTemporario;

  pgObservacao.TabVisible:=false;
  pgDesconto.TabVisible:=false;
  pgCancelamento.TabVisible:=false;
  pgOpcionais.TabVisible:=false;
  pgQuantidade.TabVisible:=false;

  if gModoTela=1 then    //Observação
  begin
    PageControl1.ActivePageIndex:=pgObservacao.TabIndex;
    pgObservacao.Visible:=true;
  end
  else if gModoTela=2  then  //Desconto
  begin
    PageControl1.ActivePageIndex:=pgDesconto.TabIndex;
    pgDesconto.Visible:=true;
    //cxGrid1DBTableView1valor_total.DataBinding.FieldName:='valor_total_calc';
  end
  else if gModoTela=3 then  //Cancelameto
  begin
    PageControl1.ActivePageIndex:=pgCancelamento.TabIndex ;
    pgCancelamento.Visible:=true;
    if gModoTouch then
    begin
      PageControl1.Visible := false;
      cxGrid1.Height :=   cxGrid1.Height +  PageControl1.Height;
    end;
  end
  else  if gModoTela=4 then  //Opcionais
  begin
    PageControl1.ActivePageIndex:=pgOpcionais.TabIndex ;
    pgOpcionais.Visible:=true;
    if not ModoTemporario then
    begin
      str_sql := ' select vio.id_venda, vio.id_empresa, vio.id_vendaitem, vio.id_opcional, o.descricao, o.valor, o.tipo '+
                 ' from vendaitemopcional vio '+
                 ' join opcional o on o.id_opcional=vio.id_opcional and o.id_empresa=vio.id_empresa '+
                 ' where vio.id_venda=%d and vio.id_empresa=%d';
      str_sql := format(str_sql, [id_venda, recproj.iEmp]);
      qraux := Tuniquery.Create(self);
      qraux.Connection := frmmenu.conexao;
      ExecutaConsultaSQL(qraux, str_sql);
      PreencheOpcionais(qraux);
      qraux.Free;
    end;
  end
  else if gModoTela=5 then //Alterar quantidade
  begin
    PageControl1.ActivePageIndex:=pgQuantidade.TabIndex;
    pgQuantidade.Visible:=true;
  end;

  bImprimeCupomItemCancelado := false;
  bExigeJustificativa := false;

  sCamImpCaixa:= LerStringConfig('CAMIMPCAIXA',frmMenu.cdsCFG.FileName);
  if cdsVendaItem.FieldByName('tipo_venda').AsString = 'M' then
  begin
    bImprimeCupomItemCancelado := LerBooleanConfig('CKIMPRIMIRCUPOMCANCELAMENTOITEMMESA', frmMenu.cdsCFG.FileName);
    bExigeJustificativa := LerBooleanConfig('CKEXIGEJUSTIFICATIVACANCITEMMESA', frmMenu.cdsCFG.FileName);
  end
  else if cdsVendaItem.FieldByName('tipo_venda').AsString = 'C' then
  begin
    bImprimeCupomItemCancelado := LerBooleanConfig('CKIMPRIMIRCUPOMCANCELAMENTOITEMCOMANDA', frmMenu.cdsCFG.FileName);
    bExigeJustificativa := LerBooleanConfig('CKEXIGEJUSTIFICATIVACANCITEMCOMANDA', frmMenu.cdsCFG.FileName);
  end
  else if cdsVendaItem.FieldByName('tipo_venda').AsString = 'B' then
    bExigeJustificativa := LerBooleanConfig('CKEXIGEJUSTIFICATIVACANCITEMBALCAO', frmMenu.cdsCFG.FileName)
  else if cdsVendaItem.FieldByName('tipo_venda').AsString = 'P' then
    bExigeJustificativa := LerBooleanConfig('CKEXIGEJUSTIFICATIVACANCITEMPDV', frmMenu.cdsCFG.FileName);

  flag_calcular := true;
end;

procedure TfrmControleMesaItensAcoes.cxGridDBTableView1DblClick(
  Sender: TObject);
begin
  if qrOpcional.RecordCount>0 then btAdicionarOp.Click;
end;

procedure TfrmControleMesaItensAcoes.cxGridDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=vk_return then
  begin
    if qrOpcional.RecordCount>0 then btAdicionarOp.Click;
  end;
end;

procedure TfrmControleMesaItensAcoes.dbeObsCancelamentoChange(Sender: TObject);
begin
  if cdsVendaItem.State= dsedit then
  begin
    cdsVendaItem.post;
    cdsVendaItem.edit;
  end;
end;

procedure TfrmControleMesaItensAcoes.dbeObsCancelamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=vk_return then
  begin
    if btConfirma.canfocus then  btConfirma.setfocus;
  end;
end;

procedure TfrmControleMesaItensAcoes.dbeObsChange(Sender: TObject);
begin
  if cdsVendaItem.State= dsedit then
  begin
    cdsVendaItem.post;
    cdsVendaItem.edit;
  end;
end;

procedure TfrmControleMesaItensAcoes.edDescontoPercentEnter(Sender: TObject);
begin
  if cdsVendaItem.state<>dsEdit then cdsVendaItem.edit;
  cdsVendaItemCalcFields(nil);
end;

procedure TfrmControleMesaItensAcoes.edDescontoPercentExit(Sender: TObject);
begin
  if cdsVendaItem.state=dsEdit then cdsVendaItemCalcFields(nil);
end;

procedure TfrmControleMesaItensAcoes.edFiltroOpcionaisKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=vk_return then
  begin
    if edFiltroOpcionais.Text<>'' then
    begin
      qrOpcional.Filter:= 'descricao like ' + QuotedStr('*'+edFiltroOpcionais.Text+'*');
      qrOpcional.Filtered:=true;
      if qrOpcional.RecordCount>0 then cxGridOpcionaisDisponiveis.setfocus;

    end
    else
      qrOpcional.Filtered:=false;
  end;
end;

procedure TfrmControleMesaItensAcoes.btAdicionarOpClick(Sender: TObject);
var item, item_1 , id_opcional, id_venda, item_fracionado, tipo, qtde : integer;
    valor : double;
    descricao: string;
begin

  if qrOpcional.RecordCount>0 then
  begin
    id_opcional := qrOpcional.FieldByName('id_opcional').AsInteger;
    item        := cdsVendaItem.FieldByName('nro_item').AsInteger;
    item_1      := item;
    id_venda    := cdsVendaItem.FieldByName('id_venda').AsInteger;
    valor       := qrOpcional.FieldByName('valor').asfloat;
    descricao   := qrOpcional.FieldByName('descricao').asstring;
    tipo        := qrOpcional.FieldByName('tipo').AsInteger;
//    qrOpcional.Edit;
//    qrOpcional.FieldByName('tipo').AsInteger := edqtde.Value;
//    qrOpcional.Post;
    if edqtde.Value = 0 then
        qtde := 1
    else
        qtde := edqtde.Value;//qrOpcional.FieldByName('tipo').AsInteger;


    if not cdsVendaItemOpcional.Locate('id_opcional;id_vendaitem', vararrayof([id_opcional,item]), []) then
    begin
      //verifica se é item fracionado e insere em todos os itens
      if (not cdsVendaItem.FieldByName('item_fracionado').IsNull) or ( cdsVendaItem.FieldByName('item_fracionado').asinteger>0 ) then
      begin
        item_fracionado := cdsVendaItem.FieldByName('item_fracionado').asinteger;
        cdsVendaItem.First;
        while not cdsVendaItem.Eof do
        begin
          if cdsVendaItem.FieldByName('item_fracionado').asinteger=item_fracionado then
          begin
            item:=cdsVendaItem.FieldByName('nro_item').AsInteger;
            cdsVendaItemOpcional.Append;
            cdsVendaItemOpcional.FieldByName('id_opcional').AsInteger := id_opcional;
            cdsVendaItemOpcional.FieldByName('id_vendaitem').AsInteger := item;
            cdsVendaItemOpcional.FieldByName('id_venda').AsInteger := id_venda;
            cdsVendaItemOpcional.FieldByName('id_empresa').AsInteger := recproj.iEmp;
            cdsVendaItemOpcional.FieldByName('valor').asfloat := valor;
            cdsVendaItemOpcional.FieldByName('descricao').asstring := descricao;
            cdsVendaItemOpcional.FieldByName('tipo').AsInteger := tipo;
            cdsVendaItemOpcional.FieldByName('qtde').AsInteger := qtde;
            cdsVendaItemOpcional.post;
          end;
          cdsVendaItem.next;
        end;
        //volta o registro selecionado para o item anterior a percorrer o dataset
        cdsVendaItem.Locate('nro_item', item_1, []);
      end
      else //item nao fracionado
      begin
        cdsVendaItemOpcional.Append;
        cdsVendaItemOpcional.FieldByName('id_opcional').AsInteger := id_opcional;
        cdsVendaItemOpcional.FieldByName('id_vendaitem').AsInteger := item;
        cdsVendaItemOpcional.FieldByName('id_venda').AsInteger := id_venda;
        cdsVendaItemOpcional.FieldByName('id_empresa').AsInteger := recproj.iEmp;
        cdsVendaItemOpcional.FieldByName('valor').asfloat := valor;
        cdsVendaItemOpcional.FieldByName('descricao').asstring := descricao;
        cdsVendaItemOpcional.FieldByName('tipo').AsInteger := tipo;
        cdsVendaItemOpcional.FieldByName('qtde').AsInteger := qtde;
        cdsVendaItemOpcional.post;
      end;
      if edFiltroOpcionais.CanFocus then  edFiltroOpcionais.SetFocus;
    end;
  end;
end;

procedure TfrmControleMesaItensAcoes.btCancelaClick(Sender: TObject);
begin
  self.Tag := 0;
  self.Close
end;

procedure TfrmControleMesaItensAcoes.btConfirmaClick(Sender: TObject);
var parametros : variant;
    str_sql : string;
    continua : boolean;
begin
  //Observacao
  if gModoTela = 1 then
  begin
    if cdsVendaItem.State =dsedit then cdsVendaItem.Post;
    if not gModoTemporario then
    begin
      cdsVendaItem.First;
      while not cdsVendaItem.eof do
      begin
        parametros := VarArrayCreate([0, 3], varVariant);
        parametros[0]:=cdsVendaItem.FieldByName('observacao').asstring;  //
        parametros[1]:=cdsVendaItem.FieldByName('id_empresa').AsInteger;
        parametros[2]:=cdsVendaItem.FieldByName('id_venda').AsInteger;
        parametros[3]:=cdsVendaItem.FieldByName('nro_item').AsInteger;
        str_sql := 'update vendaitem set ite_006=:obs where emp_001=:emp and ven_001=:id_venda and ite_001=:nro_item';
        ExecutaComandoSQL(str_sql, parametros);
        cdsVendaItem.next;
      end;
    end;
  end
  //Desconto
  else if gModoTela = 2 then
  begin
    if cdsVendaItem.State = dsedit then cdsVendaItem.Post;
    if not gModoTemporario then
    begin
      cdsVendaItem.First;
      while not cdsVendaItem.eof do
      begin
        parametros := VarArrayCreate([0, 4], varVariant);
        parametros[0]:=cdsVendaItem.FieldByName('desconto').AsFloat;
        parametros[1]:=cdsVendaItem.FieldByName('valor_total_calc').AsFloat;
        parametros[2]:=cdsVendaItem.FieldByName('id_empresa').AsInteger;
        parametros[3]:=cdsVendaItem.FieldByName('id_venda').AsInteger;
        parametros[4]:=cdsVendaItem.FieldByName('nro_item').AsInteger;
        str_sql := 'update vendaitem set desconto=:desconto, ite_005=:valor_total where emp_001=:emp and ven_001=:id_venda and ite_001=:nro_item';
        if not gModoTemporario then ExecutaComandoSQL(str_sql, parametros);
        cdsVendaItem.next;
      end;
    end;
  end
  //Cancelamento
  else if gModoTela = 3 then
  begin
    continua:=true;
    //verifica se é item fracionado
    flag_exclusao_fracionado := not  ((cdsVendaItem.FieldByName('item_fracionado').isnull) or (cdsVendaItem.FieldByName('item_fracionado').asinteger=0));

    if flag_exclusao_fracionado then
    begin
      continua := Application.MessageBox('Este item faz parte de uma composição (item fracionado), todos os itens serão removidos. Deseja continuar?', 'Atenção', MB_ICONINFORMATION + MB_YESNO)=mryes;
    end;

    if continua then
    begin
      if (trim(cdsVendaItem.FieldByName('justificativa_cancelamento').asstring) = '') and (not gModoTouch) and bExigeJustificativa then
      begin
        Application.MessageBox('Informe o motivo do cancelamento para continuar!', 'Atenção', MB_ICONINFORMATION + mb_OK);
        exit;
      end
      else
      begin
        if flag_exclusao_fracionado then
          item_exclusao := cdsVendaItem.FieldByName('item_fracionado').AsInteger
        else
          item_exclusao := cdsVendaItem.FieldByName('nro_item').AsInteger;

        if not gModoTemporario then
        begin
          if flag_exclusao_fracionado then
          begin
            str_sql := ' update vendaitem set sit_001=2, id_usuario_cancelamento=:id_usuario, justificativa_cancelamento=:obs'+    // alterei ite_006=:obs
                       ' where emp_001=:emp and ven_001=:id_venda and item_fracionado=:nro_item ';
            ExecutaComandoSQL(str_sql, vararrayof([id_usuario_acao,
                                cdsVendaItem.FieldByName('justificativa_cancelamento').asstring,
                                cdsVendaItem.FieldByName('id_empresa').AsInteger,
                                cdsVendaItem.FieldByName('id_venda').AsInteger,
                                cdsVendaItem.FieldByName('item_fracionado').AsInteger]));
            if bImprimeCupomItemCancelado then
            begin
              cdsVendaItem.Filter   := format('item_fracionado=%d', [cdsVendaItem.FieldByName('item_fracionado').AsInteger]);
              cdsVendaItem.Filtered := true;
            end;
          end
          else
          begin     // Cancelamento de item
            str_sql := ' update vendaitem set sit_001=2, id_usuario_cancelamento=:id_usuario, justificativa_cancelamento=:obs '+   //ite_006=:obs
                       ' where emp_001=:emp and ven_001=:id_venda and ite_001=:nro_item ';
            ExecutaComandoSQL(str_sql, vararrayof([id_usuario_acao,
                                cdsVendaItem.FieldByName('justificativa_cancelamento').asstring,  //
                                cdsVendaItem.FieldByName('id_empresa').AsInteger,
                                cdsVendaItem.FieldByName('id_venda').AsInteger,
                                cdsVendaItem.FieldByName('nro_item').AsInteger]));
            if bImprimeCupomItemCancelado then
            begin
              cdsVendaItem.Filter   := format('nro_item=%d', [cdsVendaItem.FieldByName('nro_item').AsInteger]);
              cdsVendaItem.Filtered := true;
            end;
          end;

          if bImprimeCupomItemCancelado then
          begin
            RepItemCancelado.PrintOptions.Printer  := sCamImpCaixa;
            RepItemCancelado.Variables['sData']    := QuotedStr(FormatDateTime('dd/mm/yyyy hh:nn', Date + Time));
            RepItemCancelado.Variables['sUsuario'] := QuotedStr(nNomeUsuario);
            RepItemCancelado.PrepareReport;
            RepItemCancelado.Print;
          end;
        end;
      end;
    end
    else
    begin
      exit;
    end;
    cdsVendaItem.close;
    cdsVendaItem.open;
  end
  // Opcionais
  else  if gModoTela = 4 then
  begin
    if not gModoTemporario then
    begin
      // insere os adicionais do dataset, mas antes exlcui os que estavam no banco
      str_sql := format('delete from vendaitemopcional where id_venda=%d and id_empresa=%d ',
                         [cdsVendaItem.FieldByName('id_venda').AsInteger,
                         cdsVendaItem.FieldByName('id_empresa').AsInteger]);
      ExecutaComandoSQL(str_sql);

      //remove a tabela master para poder inserir todos os itens
      cdsVendaItemOpcional.MasterSource:= nil;
      cdsVendaItemOpcional.MasterFields :='';
      cdsVendaItemOpcional.First;
      while not cdsVendaItemOpcional.Eof  do
      begin
        str_sql := ' insert into vendaitemopcional (id_venda, id_empresa, id_vendaitem, id_opcional, qtde) '+
                   ' values (:id_venda, :id_empresa, :id_vendaietem, :id_opcional, :qtde)';
        ExecutaComandoSQL(str_sql, vararrayof([
                            cdsVendaItemOpcional.FieldByName('id_venda').AsInteger,
                            cdsVendaItemOpcional.FieldByName('id_empresa').AsInteger,
                            cdsVendaItemOpcional.FieldByName('id_vendaitem').AsInteger,
                            cdsVendaItemOpcional.FieldByName('id_opcional').AsInteger,
                            cdsVendaItemOpcional.FieldByName('qtde').AsInteger]));
        cdsVendaItemOpcional.Next;
      end;
    end;
  end
  //Quantidade
  else if gModoTela = 5 then
  begin
    if cdsVendaItem.State = dsedit then cdsVendaItem.Post;

    if not gModoTemporario then
    begin
      cdsVendaItem.First;
      while not cdsVendaItem.eof do
      begin
        str_sql := 'update vendaitem set ite_002=:quantidade, quantidade_impressao=:quantidade, desconto=:desconto, ite_005=:valor_total where emp_001=:emp and ven_001=:id_venda and ite_001=:nro_item';
        if not gModoTemporario then
          ExecutaComandoSQL(str_sql, vararrayof([
                    cdsVendaItem.FieldByName('qtdevenda').AsFloat,
                    cdsVendaItem.FieldByName('desconto').AsFloat,
                    cdsVendaItem.FieldByName('valor_total_calc').AsFloat,
                    cdsVendaItem.FieldByName('id_empresa').AsInteger,
                    cdsVendaItem.FieldByName('id_venda').AsInteger,
                    cdsVendaItem.FieldByName('nro_item').AsInteger]));
        cdsVendaItem.next;
      end;
    end;
  end;
  if cdsVendaItem.State in [dsEdit, dsInsert] then cdsVendaItem.cancel;
  self.Tag :=1;
  self.Close;
end;

procedure TfrmControleMesaItensAcoes.btConfirmaExit(Sender: TObject);
begin
  if gModoTela=3 then cxGrid1.SetFocus;
end;

procedure TfrmControleMesaItensAcoes.btFiltraOpc1Click(Sender: TObject);
begin
  FiltraOpcionais('1'); //Massas
end;

procedure TfrmControleMesaItensAcoes.btFiltraOpc2Click(Sender: TObject);
begin
  FiltraOpcionais('2'); //Recheios
end;

procedure TfrmControleMesaItensAcoes.btFiltraOpc3Click(Sender: TObject);
begin
  FiltraOpcionais('3'); //Complementos
end;

procedure TfrmControleMesaItensAcoes.btFiltraOpc4Click(Sender: TObject);
begin
  FiltraOpcionais('4'); //Molhos
end;

procedure TfrmControleMesaItensAcoes.btFiltraOpc5Click(Sender: TObject);
begin
  FiltraOpcionais('5'); //Coberturas
end;

procedure TfrmControleMesaItensAcoes.btFiltraOpc6Click(Sender: TObject);
begin
  FiltraOpcionais('0'); //Geral - Não são todos e sim tipo Geral
end;

procedure TfrmControleMesaItensAcoes.FiltraOpcionais(sTipo: string);
begin
  //Filtra os opcionais por produto/empresa/tipo - Bruno 16/04/2018
  qrOpcional.Close;
  qrOpcional.SQL.Text:= 'select o.id_opcional, o.descricao, o.valor, o.tipo, qtde '+
                        'from materiais_opcional mo '+
                        'join opcional o on mo.id_opcional=o.id_opcional and mo.id_empresa=o.id_empresa '+
                        'where mo.id_material = :id_material and mo.id_empresa = :id_empresa and o.id_situacao=4 ';

  if (LerBooleanConfig('ckTrabalharTipoOpcionais',frmMenu.cdsCFG.FileName)) and (gModoTela=4) then
    qrOpcional.SQL.Text:= qrOpcional.SQL.Text + 'and o.tipo = ' + sTipo;

  qrOpcional.SQL.Text:= qrOpcional.SQL.Text + ' order by o.descricao';

  qrOpcional.ParamByName('id_empresa').AsInteger  := RecProj.iEmp;
  qrOpcional.ParamByName('id_material').AsInteger := cdsVendaItemid_material.AsInteger;
  qrOpcional.open;
end;

procedure TfrmControleMesaItensAcoes.btRemoverOpClick(Sender: TObject);
var id_opcional, item_fracionado, item, item_1 : integer;
begin
  //verifica se é item fracionado e exclui de todos
  if (not cdsVendaItem.FieldByName('item_fracionado').IsNull) or ( cdsVendaItem.FieldByName('item_fracionado').asinteger>0 ) then
  begin
    id_opcional := cdsVendaItemOpcional.FieldByName('id_opcional').AsInteger;
    item_fracionado := cdsVendaItem.FieldByName('item_fracionado').asinteger;
    item_1:=cdsVendaItem.FieldByName('nro_item').AsInteger;
    cdsVendaItem.First;
    while not cdsVendaItem.Eof do
    begin
      if cdsVendaItem.FieldByName('item_fracionado').asinteger=item_fracionado then
      begin
        item:=cdsVendaItem.FieldByName('nro_item').AsInteger;

        if cdsVendaItemOpcional.Locate('id_opcional;id_vendaitem', vararrayof([id_opcional, item]), []) then
          cdsVendaItemOpcional.delete;
      end;
      cdsVendaItem.next;
    end;
    //volta o registro selecionado para o item anterior a percorrer o dataset
    cdsVendaItem.Locate('nro_item', item_1, []);
  end
  else //item não fracionado
  begin
    if cdsVendaItemOpcional.RecordCount>0 then cdsVendaItemOpcional.delete;
  end;
end;

procedure TfrmControleMesaItensAcoes.cdsVendaItemAfterOpen(DataSet: TDataSet);
begin
  cdsVendaItem.Edit;
  cdsVendaItemCalcFields(nil);
end;

procedure TfrmControleMesaItensAcoes.cdsVendaItemAfterScroll(DataSet: TDataSet);
begin
  //Chama o primeiro Filtro Tipo - Bruno 16/04/2018
  if (LerBooleanConfig('ckTrabalharTipoOpcionais',frmMenu.cdsCFG.FileName)) and (gModoTela=4) then
    FiltraOpcionais('1') //Massas
  else
    FiltraOpcionais('0'); //Tem que chamar a função para abrir a tabela mesmo sem filtro

  cdsVendaItemOpcionalAfterPost(nil);
end;

procedure TfrmControleMesaItensAcoes.cdsVendaItemBeforeOpen(DataSet: TDataSet);
begin
  dspVendaItem.DataSet.First;
end;

procedure TfrmControleMesaItensAcoes.cdsVendaItemBeforeScroll(
  DataSet: TDataSet);
begin
  {if DataSet.State in [dsInsert, dsEdit] then
  begin
    DataSet.Cancel;
  end;  }
end;

procedure TfrmControleMesaItensAcoes.cdsVendaItemCalcFields(DataSet: TDataSet);
var valor_unit_calc_arr, diferenca, desconto_calc , total_calc: double;
begin
  if flag_calcular then
  begin

    flag_calcular :=false;

    calculaDescontoItem(0,
                        cdsVendaItem.FieldByName('desconto_perc').AsFloat,
                        cdsVendaItem.FieldByName('qtdevenda').AsFloat,
                        cdsVendaItem.FieldByName('vlrvenda').AsFloat,
                        cdsVendaItem.FieldByName('acrescimo').AsFloat,
                        desconto_calc, total_calc);


    cdsVendaItem.FieldByName('desconto').AsFloat := desconto_calc;
    cdsVendaItem.FieldByName('valor_total_calc').AsFloat := total_calc;

    {
    desconto_calc := roundto((( ( cdsVendaItem.FieldByName('vlrvenda').AsFloat *         //Unitario
                                cdsVendaItem.FieldByName('qtdevenda').AsFloat ) +         //quantidade
                                cdsVendaItem.FieldByName('acrescimo').AsFloat) *
                                cdsVendaItem.FieldByName('desconto_perc').AsFloat * 0.01),-2);
    total_calc := roundto((
    (cdsVendaItem.FieldByName('vlrvenda').AsFloat *
    cdsVendaItem.FieldByName('qtdevenda').AsFloat) -
    desconto_calc+
    cdsVendaItem.FieldByName('acrescimo').AsFloat),-2);
    //verifica se o valor com desconto é divisivel pela quantide, evitando erros de arredondameto ao enviar ao SAT
    valor_unit_calc_arr := roundto(total_calc / cdsVendaItem.FieldByName('qtdevenda').AsFloat,-2) * cdsVendaItem.FieldByName('qtdevenda').AsFloat;
    diferenca := valor_unit_calc_arr - total_calc ;
    //verifica se existe diferença significativa e aplica a correção ao desconto e valortotal
    if ((diferenca > 0.00) and (diferenca >= 0.005) ) or((diferenca < 0.00) and (diferenca <= -0.005)) then
    begin
      cdsVendaItem.FieldByName('desconto').AsFloat :=  desconto_calc + diferenca;
      cdsVendaItem.FieldByName('valor_total_calc').AsFloat := total_calc + diferenca;
    end
    else
    begin
      cdsVendaItem.FieldByName('desconto').AsFloat := desconto_calc;
      cdsVendaItem.FieldByName('valor_total_calc').AsFloat := total_calc;
    end;}

    flag_calcular :=true;
  end;
end;

procedure TfrmControleMesaItensAcoes.cdsVendaItemdescontoValidate(
  Sender: TField);
var total_item : double;
begin
  if cdsVendaItem.FieldByName('desconto').IsNull then cdsVendaItem.FieldByName('desconto').Value:=0;
  if cdsVendaItem.FieldByName('desconto').Value<0 then cdsVendaItem.FieldByName('desconto').Value:=0;

  if cdsVendaItem.FieldByName('desconto').Value>0 then
  begin
    total_item := (cdsVendaItem.FieldByName('qtdevenda').Value *
                   cdsVendaItem.FieldByName('vlrvenda').Value) +
                   cdsVendaItem.FieldByName('acrescimo').asfloat;
    if cdsVendaItem.FieldByName('desconto').Value > total_item then
    cdsVendaItem.FieldByName('desconto').Value := total_item;

    if total_item > 0 then
      cdsVendaItem.FieldByName('desconto_perc').Value := (cdsVendaItem.FieldByName('desconto').Value/total_item)*100
    else
      cdsVendaItem.FieldByName('desconto_perc').Value := 0;
  end
  else
  begin
    cdsVendaItem.FieldByName('desconto_perc').Value := 0;
  end;

end;

procedure TfrmControleMesaItensAcoes.cdsVendaItemdesconto_percValidate(
  Sender: TField);
begin
  cdsVendaItemCalcFields(nil);
end;

procedure TfrmControleMesaItensAcoes.cdsVendaItemOpcionalAfterPost(
  DataSet: TDataSet);
var     total_opcionais : double;
    nro_itens_opcionais : integer;
begin
  cdsVendaItemOpcional.First;

  total_opcionais:=0;
  nro_itens_opcionais:=0;
  while not cdsVendaItemOpcional.Eof do
  begin
    total_opcionais := total_opcionais + cdsVendaItemOpcional.FieldByName('valor').AsFloat;
    nro_itens_opcionais := nro_itens_opcionais +1;
    cdsVendaItemOpcional.next;
  end;
  lbTotalOp.Caption := format('Total: R$ %.2f', [total_opcionais]);
  lbItensNro.caption:= format('Itens: %d ', [nro_itens_opcionais]);
end;

procedure TfrmControleMesaItensAcoes.cdsVendaItemqtdevendaChange(
  Sender: TField);
begin
  if cdsVendaItem.FieldByName('qtdevenda').IsNull then
    cdsVendaItem.FieldByName('qtdevenda').AsFloat := cdsVendaItem.FieldByName('qtdevenda_old').AsFloat;

  if cdsVendaItem.FieldByName('qtdevenda').AsFloat <> cdsVendaItem.FieldByName('qtdevenda_old').AsFloat then
  begin
    if cdsVendaItem.FieldByName('item_fracionado').Asinteger>0  then
    begin
      Application.MessageBox('Este item faz parte de uma composição (item fracionado), não é possível alterar sua quantidade!', 'Atenção', MB_ICONINFORMATION + mb_OK);
      edQuantidade.Value:= cdsVendaItem.FieldByName('qtdevenda_old').AsFloat;
      cdsVendaItem.FieldByName('qtdevenda').AsFloat := cdsVendaItem.FieldByName('qtdevenda_old').AsFloat;
      abort;
    end;
  end;

  if cdsVendaItem.FieldByName('qtdevenda').asfloat<=0 then
  begin
    Application.MessageBox('Quantidade inválida!', 'Atenção', MB_ICONINFORMATION + mb_OK);
    edQuantidade.Value:= cdsVendaItem.FieldByName('qtdevenda_old').AsFloat;
    cdsVendaItem.FieldByName('qtdevenda').AsFloat := cdsVendaItem.FieldByName('qtdevenda_old').AsFloat;
    abort;
  end;

  flag_calcular :=true;

  cdsVendaItemCalcFields(nil);
end;

procedure TfrmControleMesaItensAcoes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
  begin
    if IsGridFocused then
    begin
      if gModoTela=1 then
        dbeObs.SetFocus
      else if gModoTela=2 then
        edDescontoPercent.SetFocus
      else if gModoTela=3 then
        dbeObsCancelamento.SetFocus;
    end
    else
      Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmControleMesaItensAcoes.FormShow(Sender: TObject);
begin
  cdsVendaItem.Open;

  if gModoTela = 2 then
    edDescontoPercent.SetFocus
  else if gModoTela = 5 then
    edQuantidade.SetFocus;

  //Verifica configuração para exibir ou não os botões tipo opcional - Bruno 16/04/2018
  if (LerBooleanConfig('ckTrabalharTipoOpcionais',frmMenu.cdsCFG.FileName)) and (gModoTela=4) then
  begin
    btFiltraOpc1.Visible:= True;
    btFiltraOpc2.Visible:= True;
    btFiltraOpc3.Visible:= True;
    btFiltraOpc4.Visible:= True;
    btFiltraOpc5.Visible:= True;
    btFiltraOpc6.Visible:= True;

    //Chama o primeiro Filtro
    FiltraOpcionais('1'); //Massas
  end
  else
  begin
    btFiltraOpc1.Visible:= False;
    btFiltraOpc2.Visible:= False;
    btFiltraOpc3.Visible:= False;
    btFiltraOpc4.Visible:= False;
    btFiltraOpc5.Visible:= False;
    btFiltraOpc6.Visible:= False;

    //Tem que chamar a função para abrir a tabela mesmo sem filtro
    FiltraOpcionais('0');
  end;
end;

procedure TfrmControleMesaItensAcoes.PageControl1DrawTab(
  Control: TCustomTabControl; TabIndex: Integer; const Rect: TRect;
  Active: Boolean);
begin
  PageControl1.Pages[TabIndex].Brush.Color:=tform(PageControl1.Parent).Color;
end;


function TfrmControleMesaItensAcoes.IsGridFocused: Boolean;
var
 AContainer: TcxCustomEdit;
begin
 Result := Screen.ActiveControl is TcxGridSite;
 if not Result then
 begin
   AContainer := nil;
   if Screen.ActiveControl is TcxCustomEdit then
   begin
     AContainer := TcxCustomEdit(Screen.ActiveControl);
     Result := True;
   end
   else
     if (Screen.ActiveControl.Parent <> nil) and
       (Screen.ActiveControl.Parent is TcxCustomEdit) then
     begin
       AContainer := TcxCustomEdit(Screen.ActiveControl.Parent);
       Result := True;
     end;
   Result := Result and (AContainer.Parent is TcxGridSite);
 end;
end;


procedure TfrmControleMesaItensAcoes.edQuantidadeEnter(Sender: TObject);
begin
  if cdsVendaItem.state<>dsEdit then cdsVendaItem.edit;
    cdsVendaItemCalcFields(nil);
end;

procedure TfrmControleMesaItensAcoes.edQuantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['-', '+'] then
    Key := #0
end;

end.
