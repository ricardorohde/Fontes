unit uTransferenciaestoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  AdvPageControl, Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, AdvGlowButton, cxSpinEdit,
  cxTimeEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Vcl.StdCtrls, JvExStdCtrls, JvCombobox, AdvGroupBox, JvEdit, JvValidateEdit,
  cxButtonEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, MemDS,
  DBAccess, Uni, Vcl.DBCtrls, cxGroupBox, cxRadioGroup, uBuscaRegistro,
  System.Actions, Vcl.ActnList, Datasnap.DBClient, uFuncoes, Funcoes_XE,
  uVisualizaRelatorioTexto, Vcl.Grids, Vcl.DBGrids, dxSkinsCore, dxSkinBlack,
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
  TfrmTransferenciaestoque = class(TfrmModelo)
    AdvPageControl1: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    AdvTabSheet2: TAdvTabSheet;
    AdvGroupBox1: TAdvGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btSalvar: TAdvGlowButton;
    btCancela: TAdvGlowButton;
    AdvGroupBox2: TAdvGroupBox;
    AdvGroupBox3: TAdvGroupBox;
    edCodProduto: TcxButtonEdit;
    edQuantidade: TJvValidateEdit;
    Label5: TLabel;
    lblDescricao: TLabel;
    Label7: TLabel;
    cxGrademateriais: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    qrListasetororigem: TUniQuery;
    cbsetordestino: TDBLookupComboBox;
    cbsetororigem: TDBLookupComboBox;
    qrListasetororigemid_setor: TIntegerField;
    qrListasetororigemdescricao: TWideStringField;
    dsListasetororigem: TDataSource;
    qrListasetordestino: TUniQuery;
    dsListasetordestino: TDataSource;
    qrListasetordestinoid_setor: TIntegerField;
    qrListasetordestinodescricao: TWideStringField;
    qrListaprodutos: TUniQuery;
    dsListaprodutos: TDataSource;
    rgTipoestoque: TcxRadioGroup;
    ActionList1: TActionList;
    acPesquisaProduto: TAction;
    btInserir: TAdvGlowButton;
    cdsProdutostransferidos: TClientDataSet;
    dsProdutostransferidos: TDataSource;
    cdsProdutostransferidoscodigo: TStringField;
    cdsProdutostransferidosdescricao: TStringField;
    cdsProdutostransferidosid_estoque_origem: TIntegerField;
    cdsProdutostransferidosid_estoque_destino: TIntegerField;
    cdsProdutostransferidosestoque_destino: TStringField;
    cdsProdutostransferidosestoque_origem: TStringField;
    cdsProdutostransferidosqtd_estoque_transferido: TFloatField;
    cdsProdutostransferidosvalor_total_produto: TCurrencyField;
    cdsProdutostransferidosid_produto: TIntegerField;
    cxGridDBTableView1codigo: TcxGridDBColumn;
    cxGridDBTableView1descricao: TcxGridDBColumn;
    cxGridDBTableView1estoque_destino: TcxGridDBColumn;
    cxGridDBTableView1estoque_origem: TcxGridDBColumn;
    cxGridDBTableView1qtd_estoque_transferido: TcxGridDBColumn;
    cxGridDBTableView1valor_total_produto: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    acDeleteproduto: TAction;
    dtpData: TDateTimePicker;
    qrListacomposicao: TUniQuery;
    dsComposicao: TDataSource;
    qrListaprodutosid_material: TIntegerField;
    qrListaprodutosdescricao_material: TWideStringField;
    qrListaprodutoscodigo_material: TWideStringField;
    qrListaprodutosquantidade: TFloatField;
    qrListaprodutospreco: TFloatField;
    qrListaprodutosid_setor: TIntegerField;
    qrListaprodutosdescricao_setor: TWideStringField;
    qrListaprodutostipo_material: TWideMemoField;
    cxGrademateriaisdescricao_material: TcxGridDBColumn;
    cxGrademateriaiscodigo_material: TcxGridDBColumn;
    cxGrademateriaisquantidade: TcxGridDBColumn;
    qrListacomposicaoid_material: TIntegerField;
    qrListacomposicaodescricao_material: TWideStringField;
    qrListacomposicaocodigo_material: TWideStringField;
    qrListacomposicaoquantidade: TFloatField;
    qrListacomposicaopreco: TFloatField;
    qrListacomposicaoid_setor: TIntegerField;
    qrListacomposicaodescricao_setor: TWideStringField;
    qrListacomposicaotipo_material: TWideMemoField;
    cdsProdutostransferidostipo_material: TStringField;
    dtTime: TDateTimePicker;
    btNovo: TAdvGlowButton;
    cxGridDBTableViewHistorico: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid4: TcxGrid;
    cxGridDBTableViewHistoricoItens: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableViewHistoricoItensdescricao: TcxGridDBColumn;
    cxGridDBTableViewHistoricoItenscodigo_produto: TcxGridDBColumn;
    cxGridDBTableViewHistoricoItensquantidade: TcxGridDBColumn;
    cxGridDBTableViewHistoricoItensvalor_total: TcxGridDBColumn;
    qrTransferidosHistoricoMateriaisItens: TUniQuery;
    dsTransferidosHistoricoMateriaisItens: TDataSource;
    cxGridDBTableViewHistoricodata: TcxGridDBColumn;
    cxGridDBTableViewHistoricousu_002: TcxGridDBColumn;
    cxGridDBTableViewHistoricoestoque_origem: TcxGridDBColumn;
    cxGridDBTableViewHistoricoestoque_destino: TcxGridDBColumn;
    cxGridDBTableViewHistoricohora: TcxGridDBColumn;
    qrTransferidosHistoricoMateriais: TUniQuery;
    dsTransferidosHistoricoMateriais: TDataSource;
    qrTransferidosHistoricoMateriaishora: TTimeField;
    qrTransferidosHistoricoMateriaisdescricao: TWideStringField;
    qrTransferidosHistoricoMateriaissetor_destino: TWideStringField;
    qrTransferidosHistoricoMateriaisusu_002: TWideStringField;
    qrTransferidosHistoricoMateriaisItenshora: TTimeField;
    qrTransferidosHistoricoMateriaisItensquantidade: TFloatField;
    qrTransferidosHistoricoMateriaisItensvalor_total: TFloatField;
    qrTransferidosHistoricoMateriaisdata: TDateTimeField;
    qrTransferidosHistoricoMateriaisItensdata: TDateTimeField;
    btPesquisar: TAdvGlowButton;
    Label8: TLabel;
    rgFiltroTipoEstoque: TcxRadioGroup;
    AdvGroupBox4: TAdvGroupBox;
    Label9: TLabel;
    Label11: TLabel;
    dtpFiltrodata: TDateTimePicker;
    cbFiltroSetorOrigem: TDBLookupComboBox;
    qrTransferidosHistoricoComposicao: TUniQuery;
    TimeField1: TTimeField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    DateTimeField1: TDateTimeField;
    dsTransferidosHistoricoComposicao: TDataSource;
    qrTransferidosHistoricoComposicaoItens: TUniQuery;
    TimeField2: TTimeField;
    FloatField1: TFloatField;
    FloatField3: TFloatField;
    DateTimeField2: TDateTimeField;
    dsTransferidosHistoricoComposicaoItens: TDataSource;
    qrTransferidosHistoricoComposicaoItensdescricao_item: TWideStringField;
    qrTransferidosHistoricoComposicaoItenscodigo_ref: TWideStringField;
    qrTransferidosHistoricoComposicaoItensvalor_custo: TFloatField;
    qrTransferidosHistoricoMateriaisItensdescricao_item: TWideStringField;
    qrTransferidosHistoricoMateriaisItenscodigo_ref: TWideStringField;
    qrTransferidosHistoricoMateriaisItensvalor_custo: TFloatField;
    cdsProdutostransferidosutiliza_combo: TBooleanField;
    qrListaprodutosutiliza_combo: TBooleanField;
    qrListacomposicaoutiliza_combo: TBooleanField;
    procedure cbsetororigemClick(Sender: TObject);
    procedure edCodProdutoPropertiesChange(Sender: TObject);
    procedure acPesquisaProdutoExecute(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure acDeleteprodutoExecute(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    constructor create(sender:tcomponent);reintroduce;
    procedure btCancelaClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure edQuantidadeEnter(Sender: TObject);
  private
   id_usuario, numero_colunas_impressora:integer;
   nome_usuario : string;
  public
    { Public declarations }
  end;

var
  frmTransferenciaestoque: TfrmTransferenciaestoque;

implementation

{$R *.dfm}
uses umenu, Funcao_DB;
constructor tfrmtransferenciaestoque.create(sender: TComponent);
var config_imp : string;
begin
  inherited create(sender);
  if not frmMenu.ConfirmacaoSenha(' b_permite_transferencia_estoque', id_usuario) then
    abort;

  BuscaCampo(nome_usuario, 'select usu_002 from usuarios where usu_001='+inttostr(id_usuario), '', false);

  AdvPageControl1.ActivePageIndex:=0;
  cdsprodutostransferidos.CreateDataSet;
  cbsetororigem.Enabled:=false;
  cbsetordestino.Enabled:=false;
  btsalvar.Enabled:=false;
  btnovo.Enabled:=true;
  dttime.Time:=time;
  dtpData.Date:=date;
  dtpFiltrodata.Date:=date;
  rgTipoestoque.Enabled:=false;
  rgTipoestoque.ItemIndex := 0;
  rgFiltroTipoEstoque.ItemIndex := 0;
  btinserir.Enabled:=false;
  btcancela.Enabled:=false;
  dtpdata.Enabled:=false;
  dttime.Enabled:=false;
  edCodProduto.Enabled:=false;
  qrlistasetororigem.ParamByName('id_empresa').AsInteger:=RecProj.iEmp;
  qrListasetordestino.ParamByName('id_empresa').AsInteger:=RecProj.iEmp;
  qrlistaprodutos.ParamByName('emp').AsInteger:=RecProj.iEmp;
  qrListasetororigem.Open;
  qrlistasetordestino.Open;

  config_imp := ExtractFilePath(Application.ExeName) + 'CONF\IMP_CAIXA.xml';
  if FileExists(config_imp) then
    numero_colunas_impressora := LerIntegerConfig('COLUNAS', config_imp)
  else
    numero_colunas_impressora := 48;

end;

procedure TfrmTransferenciaestoque.acDeleteprodutoExecute(Sender: TObject);
begin
   if Application.MessageBox('DESEJA REALMENTE EXCLUIR ESSE PRODUTO?','ALERTA',+MB_ICONQUESTION+MB_OKCANCEL)=mrOk then
   begin
    cdsprodutostransferidos.Delete;
   end;
   edCodProduto.SetFocus;

end;

procedure TfrmTransferenciaestoque.acPesquisaProdutoExecute(Sender: TObject);
var
str_sql:string;
begin

  if rgTipoestoque.ItemIndex=0 then  // SE FOR PRODUTOS , EXECUTA ESSE CÓDIGO ABAIXO
  begin
    edCodProduto.SetFocus;
    str_sql:= ' SELECT MAT.MAT_001, '+
              ' MAT.MAT_004 , '+
              ' MAT.MAT_003, '+
              ' CAT.CAT_002, '+
              ' UNI.UNI_002, '+
              ' MAT.MAT_012 '+
              ' FROM MATERIAIS MAT '+
              ' join setor_estoque_material s on mat.mat_001=s.id_material and s.id_empresa=mat.emp_001 '+
              ' LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND (UNI.UNI_001 = MAT.UNI_001) '+
              ' LEFT OUTER JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.CAT_001 = MAT.CAT_001)';
    frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
        vararrayof([1,2,3,4,5]) ,
        vararrayof(['Código', 'Produto', 'Categoria','Unidade', 'Preço' ]),
        1, 1,
        ' mat.sit_001=4 and utiliza_combo=false and MAT.emp_001='+IntToStr(RecProj.iEmp)+ ' and s.id_setor='+qrListasetororigem.FieldByName('id_setor').AsString
        , 800, 500);
    frmBuscaRegistro.ShowModal;
    if frmBuscaRegistro.Tag=1 then
      edCodProduto.Text:=frmBuscaRegistro.valor_retorno;
    frmBuscaRegistro.Free;
    if edQuantidade.CanFocus then
      edQuantidade.SetFocus;
  end
  else          // SE FOR INGREDIENTES EXECUTA ESSE CODIGO ABAIXO
  begin
    edcodproduto.SetFocus;
    str_sql:='select c.id_composicao,c.descricao, c.valor_custo, '+
      ' sc.quantidade, '+
      ' se.descricao, '+
      ' un.uni_003     '+
      ' from composicao c'+
      ' join setor_estoque_composicao sc on (c.id_composicao=sc.id_composicao) and (sc.id_empresa=c.id_empresa)  '+
      ' join setor_estoque se on (se.id_empresa = sc.id_empresa) and (sc.id_setor=se.id_setor)  '+
      ' join unidades un  on (c.id_unidade=un.uni_001)';
    frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
    vararrayof([0,1,2,3,4]) ,
    vararrayof(['Código', 'Descrição', 'Valor Custo','Quantidade', 'Setor' ]),
    0, 1, // Indice de retorno
    ' c.id_situacao=4 and c.id_empresa='+IntToStr(RecProj.iEmp)+ ' and se.id_setor='+qrListasetororigem.FieldByName('id_setor').AsString
    , 800, 500);
    frmBuscaRegistro.ShowModal;
    if frmBuscaRegistro.Tag=1 then
      edCodProduto.Text:=frmBuscaRegistro.valor_retorno;
    frmBuscaRegistro.Free;
    if edQuantidade.CanFocus then
      edQuantidade.SetFocus;
  end;
end;

procedure TfrmTransferenciaestoque.btCancelaClick(Sender: TObject);
begin
  if cdsProdutostransferidos.RecordCount > 0 then
  begin
    if application.MessageBox('DESEJA DESCARTAR A TRANSFERÊNCIA DOS ITENS SELECIONADOS?', 'ATENÇÃO', MB_ICONQUESTION + MB_YESNO)=mryes then
    begin
      cdsProdutostransferidos.EmptyDataSet;// Limpa o dataset
    end;
  end;
  cbsetororigem.Enabled:=false;
  cbsetordestino.Enabled:=false;
  btsalvar.Enabled:=false;
  btnovo.Enabled:=true;
  dtpData.Date:=date;
  rgTipoestoque.Enabled:=false;
  rgTipoestoque.ItemIndex := 0;
  btinserir.Enabled:=false;
  btcancela.Enabled:=false;
  dtpdata.Enabled:=false;
  dttime.Enabled:=false;
  edCodProduto.Enabled:=false;
end;

procedure TfrmTransferenciaestoque.btPesquisarClick(Sender: TObject);
begin
  if varisnull(cbFiltroSetorOrigem.KeyValue) then
  begin
    Application.MessageBox('SETOR NÃO INFORMADO!','ALERTA',+MB_ICONINFORMATION);
    cbFiltroSetorOrigem.SetFocus;
    exit;
  end;

  //produtos
  if rgFiltroTipoEstoque.ItemIndex=0 then
  begin
    cxGridDBTableViewHistorico.DataController.DataSource := dsTransferidosHistoricoMateriais;
    cxGridDBTableViewHistoricoItens.DataController.DataSource := dsTransferidosHistoricoMateriaisItens;

    qrTransferidosHistoricoMateriaisItens.Close;
    qrTransferidosHistoricoMateriais.Close;
    qrTransferidosHistoricoMateriais.ParamByName('data1').AsDateTime:=dtpFiltrodata.Date;
    qrTransferidosHistoricoMateriais.ParamByName('data2').AsDateTime:=dtpfiltrodata.Date+1;
    qrTransferidosHistoricoMateriais.ParamByName('empresa').AsInteger:=recproj.iEmp;
    qrTransferidosHistoricoMateriais.ParamByName('id_setor').AsInteger:=cbFiltroSetorOrigem.KeyValue;
    qrTransferidosHistoricoMateriais.Open;

    qrTransferidosHistoricoMateriaisItens.ParamByName('empresa').AsInteger:=recproj.iEmp;
    qrTransferidosHistoricoMateriaisItens.Open;

  end
  else //ingredientes
  begin
    cxGridDBTableViewHistorico.DataController.DataSource := dsTransferidosHistoricoComposicao;
    cxGridDBTableViewHistoricoItens.DataController.DataSource := dsTransferidosHistoricoComposicaoItens;

    qrTransferidosHistoricoComposicaoItens.Close;
    qrTransferidosHistoricoComposicao.Close;
    qrTransferidosHistoricoComposicao.ParamByName('data1').AsDateTime:=dtpFiltrodata.Date;
    qrTransferidosHistoricoComposicao.ParamByName('data2').AsDateTime:=dtpfiltrodata.Date+1;
    qrTransferidosHistoricoComposicao.ParamByName('empresa').AsInteger:=recproj.iEmp;
    qrTransferidosHistoricoComposicao.ParamByName('id_setor').AsInteger:=cbFiltroSetorOrigem.KeyValue;
    qrTransferidosHistoricoComposicao.Open;
    qrTransferidosHistoricoComposicaoItens.ParamByName('empresa').AsInteger:=recproj.iEmp;
    qrTransferidosHistoricoComposicaoItens.Open;
  end;


end;

procedure TfrmTransferenciaestoque.btInserirClick(Sender: TObject);
var
lista:tuniquery;
begin

  lista:=tuniquery.Create(self);
  // Variavel lista recebe query de acordo com o tipo de transferencia de estoque-- Se for material ou composicao
  if rgtipoestoque.ItemIndex=0 then   // Produtos
  begin
    lista:=qrlistaprodutos;
  end
  else
  begin
    lista:=qrListacomposicao;   // Composicao
  end;

  if rgtipoestoque.ItemIndex=-1 then
  begin
    Application.MessageBox('CAMPO PRODUTO OU INGREDIENTE NÃO PODE SER VAZIO','ALERTA',+MB_ICONQUESTION+mb_ok);
    rgTipoestoque.SetFocus;
    abort;
  end;

  if VarIsNull(cbsetororigem.KeyValue) then
  begin
    Application.MessageBox('POR FAVOR PREENCHER O CAMPO SETOR ORIGEM!','ALERTA',+MB_ICONQUESTION+MB_OK);
    cbsetororigem.SetFocus;
    abort;
  end;

  if VarIsNull(cbsetordestino.KeyValue) then
   begin
    Application.MessageBox('POR FAVOR PREENCHER O CAMPO SETOR DESTINO!','ALERTA',+MB_ICONQUESTION+MB_OK);
    cbsetordestino.SetFocus;
    abort;
  end;

  if edquantidade.Value<=0 then
  begin
    Application.MessageBox('QUANTIDADE INVÁLIDA!','ALERTA',+MB_ICONQUESTION+MB_OK);
    edquantidade.SetFocus;
    abort;
  end;

  if edcodproduto.Text='' then
  begin
    Application.MessageBox('PRODUTO NÃO ENCONTRADO, POR FAVOR INFORME UM PRODUTO!','ALERTA',+MB_ICONQUESTION+MB_OK);
    edcodproduto.SetFocus;
    abort;
  end;

  if qrListasetororigem.FieldByName('id_setor').AsInteger=qrlistasetordestino.FieldByName('id_setor').AsInteger then
  begin
     Application.MessageBox('O SETOR ORIGEM NÃO PODE SER O MESMO DO SETOR DESTINO, POR FAVOR VERIFIQUE OS SETORES','ALERTA',+MB_ICONQUESTION+MB_OK);
     cbsetororigem.SetFocus;
     abort;
  end;

  if qrlistasetordestino.FieldByName('id_setor').AsInteger=qrlistasetororigem.FieldByName('id_setor').AsInteger then
  begin
     Application.MessageBox('O SETOR ORIGEM NÃO PODE SER O MESMO DO SETOR DESTINO, POR FAVOR VERIFIQUE OS SETORES','ALERTA',+MB_ICONQUESTION+MB_OK);
     cbsetordestino.SetFocus;
     abort;
  end;

  if lista.RecordCount<=0 then
  begin
    Application.MessageBox('PRODUTO NÃO ENCONTRADO!','ALERTA',+MB_ICONQUESTION+MB_OK);
    edCodProduto.SetFocus;
    abort;
  end;


  if edquantidade.Value>lista.FieldByName('quantidade').AsFloat then
  begin
    Application.MessageBox('A QUANTIDADE A SER TRANSFERIDA É MAIOR QUE O ESTOQUE ATUAL DO PRODUTO!','ALERTA',+MB_ICONQUESTION+MB_OK);
    edquantidade.SetFocus;
    abort;
  end;

  if lista.FieldByName('quantidade').AsFloat<=0 then
  begin
    Application.MessageBox('O PRODUTO NÃO POSSUI ESTOQUE,POR FAVOR VERIFIQUE O ESTOQUE DO PRODUTO','ALERTA',+MB_ICONQUESTION+MB_OK);
    edcodproduto.SetFocus;
  end;

  if cdsprodutostransferidos.RecordCount>0 then
  begin
   if cdsprodutostransferidos.FieldByName('tipo_material').AsString<>lista.FieldByName('tipo_material').AsString then
   begin
     Application.MessageBox(PCHAR('O TIPO DE PRODUTO QUE VOCÊ ESTA TENTANDO INSERIR, É DIFERENTE DOS PRODUTOS JÁ SELECIONADAS PARA TRANSFERÊNCIA'+SLINEBREAK+'SÓ É POSSÍVEL INSERIR UM TIPO DE MATERIAL POR TRANSFERÊNCIA!'),'ALERTA',MB_ICONQUESTION+MB_OK);
     edcodproduto.SetFocus;
     abort;
   end;
  end;



  //  VERIFICA SE JÁ TEM ESSE REGISTRO NA GRID
  if cdsprodutostransferidos.Locate('id_produto',lista.FieldByName('id_material').AsInteger,[]) then
  begin
       Application.MessageBox('ESSE PRODUTO JÁ FOI TRANSFERIDO, POR FAVOR INSIRA OUTRO PRODUTO!','ALERTA',+MB_ICONQUESTION+MB_OK);
       edCodProduto.SetFocus;
       edCodProduto.Clear;
       edQuantidade.Clear;
       lblDescricao.Caption:='';
       abort;
  end;


  // FAZ A INSERÇÃO NA GRID
  cdsprodutostransferidos.Append;
  cdsProdutostransferidos.FieldByName('codigo').AsString:=lista.FieldByName('codigo_material').AsString;                   //   Código do Material
  cdsProdutostransferidos.FieldByName('descricao').AsString:=lista.FieldByName('descricao_material').AsString;               //  Descrição do Material
  cdsprodutostransferidos.FieldByName('id_estoque_origem').AsInteger:=qrListasetororigem.FieldByName('id_setor').AsInteger;    //ID Setor Origem
  cdsprodutostransferidos.FieldByName('id_estoque_destino').AsInteger:=qrListasetordestino.FieldByName('id_setor').AsInteger; //ID Setor Destino
  cdsprodutostransferidos.FieldByName('estoque_destino').AsString:=qrlistasetordestino.FieldByName('descricao').AsString;     // Descrição do setor Destino
  cdsprodutostransferidos.FieldByName('estoque_origem').AsString:=qrlistasetororigem.FieldByName('descricao').AsString;           // Descricao do Setor Origem
  cdsprodutostransferidos.FieldByName('qtd_estoque_transferido').AsFloat:=edquantidade.Value;    // Quantidade de estoque a ser transferido
  cdsprodutostransferidos.FieldByName('valor_total_produto').AsFloat:=edquantidade.Value*lista.FieldByName('preco').AsFloat;   // Valor total do produto
  cdsProdutostransferidos.FieldByName('id_produto').AsInteger:=lista.FieldByName('id_material').AsInteger;    // ID Material
  cdsprodutostransferidos.FieldByName('tipo_material').AsString:=lista.FieldByName('tipo_material').AsString;   // Verifica tipo material  se for M ( material) senão Composicao
  cdsProdutostransferidos.FieldByName('utiliza_combo').AsBoolean:=lista.FieldByName('utiliza_combo').AsBoolean;
  cdsprodutostransferidos.Post;
  edCodProduto.Clear;
  edQuantidade.Clear;
  lblDescricao.Caption:='';
  edcodproduto.setfocus;
  btsalvar.Enabled:=true;

end;

procedure TfrmTransferenciaestoque.btNovoClick(Sender: TObject);
begin
  btsalvar.Enabled:=false;
  btinserir.Enabled:=true;
  btcancela.Enabled:=true;
  btnovo.Enabled:=false;

  dttime.Enabled:=true;
  dttime.Time:=time;
  dtpdata.Enabled:=true;
  dtpdata.Date:=Date;

  cbsetororigem.Enabled:=true;
  cbsetordestino.Enabled:=true;

  cbsetororigem.keyvalue:=qrListasetororigem.FieldByName('id_setor').AsInteger;
  cbsetordestino.keyvalue:=qrListasetorDestino.FieldByName('id_setor').AsInteger;

  rgTipoestoque.Enabled:=true;

  cbsetororigemClick(nil);

  edCodProduto.Enabled:=true;
  edcodproduto.setfocus;

end;

procedure TfrmTransferenciaestoque.btSalvarClick(Sender: TObject);
var data_hora:tdatetime;
    dia,hora,mes,ano,minuto,segundo,milisegundo:word;
    str_impressao : string;
    correcao_colunas_impressao : integer;
begin
  decodedate(dtpdata.Date,ano,mes,dia);
  decodetime(dttime.Time,hora,minuto,segundo,milisegundo);
  data_hora:=EncodeDate(ano,mes,dia)+EncodeTime(hora,minuto,segundo,milisegundo);

  if cdsprodutostransferidos.RecordCount<0 then
  begin
    Application.MessageBox('NÃO EXISTE PRODUTOS A SEREM TRANSFERIDOS','', MB_ICONINFORMATION);
    abort;
  end;

  if dtTime.Time=0 then
  begin
    Application.MessageBox('O CAMPO HORARIO NÃO PODE SER VAZIO,POR FAVOR PREENCHA O HORÁRIO DA TRANSFERÊNCIA','ALERTA',+MB_ICONWARNING+mb_ok);
    dtTime.SetFocus;
    abort;
  end;

  correcao_colunas_impressao := numero_colunas_impressora - 48;
  str_impressao := '</zera></linha_simples>'+ slinebreak+
                   '</ce>TRANSFERÊNCIA DE ESTOQUE' + sLineBreak +
                   '</linha_simples>'+ slinebreak+
                   '</ae>ORIGEM: '+ cdsprodutostransferidos.FieldByName('estoque_origem').asstring + sLineBreak +
                   'DESTINO: '+ cdsprodutostransferidos.FieldByName('estoque_destino').asstring + sLineBreak +
                   'RESPONSÁVEL: '+nome_usuario + sLineBreak +
                   'DATA: '+ FormatDateTime('dd/mm/yyyy hh:nn', data_hora) + sLineBreak +
                   '</linha_simples>'+ slinebreak+
                   'ITEM'+ReplicarCaracter(' ',34 + correcao_colunas_impressao)+'QUANTIDADE'+ sLineBreak +
                   '</linha_simples>'+ slinebreak;


  cdsprodutostransferidos.First;// Primeiro registro antes de ir para o loop
  while not cdsProdutostransferidos.Eof do
  begin
   // Esta dando saida no estoque , fazenda transferencia estoque para depois dar entrada
  //  Esse procedure INSERIRMOVIMENTOPRODUTO Já faz esse procedimento
  //  Esse procedimento irá dar entrada no produto

    InserirMovimentoProduto(cdsProdutostransferidos.FieldByName('id_produto').AsInteger,
     cdsprodutostransferidos.FieldByName('qtd_estoque_transferido').AsFloat,
     'S',
     '',
      id_usuario,
      0,
      0,
      cdsprodutostransferidos.FieldByName('tipo_material').AsString,
      FALSE,
      0,
      0,
      0,
      data_hora,
      false,
      cdsprodutostransferidos.FieldByName('utiliza_combo').AsBoolean,
      cdsprodutostransferidos.FieldByName('id_estoque_origem').AsInteger,
      cdsprodutostransferidos.FieldByName('id_estoque_destino').AsInteger);


    //---O Procedimento acima fez a baixa do estoque, agora estamos transferindo o setor do estoque

    InserirMovimentoProduto(cdsProdutostransferidos.FieldByName('id_produto').AsInteger,
   cdsprodutostransferidos.FieldByName('qtd_estoque_transferido').AsFloat,
   'E',
   '',
    id_usuario,
    0,
    0,
    cdsprodutostransferidos.FieldByName('tipo_material').AsString,
    FALSE,
    0,
    0,
    0,
    data_hora,
    false,
    cdsprodutostransferidos.FieldByName('utiliza_combo').AsBoolean,
    cdsprodutostransferidos.FieldByName('id_estoque_destino').AsInteger);
    //  FIM DA ENTRADA DO PRODUTO

    str_impressao := str_impressao +
                    AcertaTexto(cdsprodutostransferidos.FieldByName('descricao').AsString, 'E', 37 + correcao_colunas_impressao, ' ') +
                    AcertaTexto(format('%.3f', [cdsprodutostransferidos.FieldByName('qtd_estoque_transferido').asfloat]), 'D', 11, ' ') + sLineBreak ;

    cdsprodutostransferidos.Next;
  end;
  str_impressao := str_impressao + SlineBreak+SlineBreak+Slinebreak+Slinebreak+Slinebreak+Slinebreak+'</linha_simples>'+ '                 ASSINATURA '+ '</corte_total>';
  //envia a string do relatorio para previsualizar
  frmVisualizaRelatorioTexto := TfrmVisualizaRelatorioTexto.Create(self,'CAIXA',str_impressao);
  frmVisualizaRelatorioTexto.ShowModal;
  frmVisualizaRelatorioTexto.Free;

  Application.MessageBox('PRODUTOS TRANSFERIDOS COM SUCESSO!','ALERTA',+MB_ICONQUESTION+MB_OK);

  if qrlistaprodutos.Active then
  begin
    qrlistaprodutos.Refresh;
  end;

  if qrlistacomposicao.Active then
  begin
    qrlistacomposicao.Refresh;
  end;


  btsalvar.Enabled:=false;
  btinserir.Enabled:=false;
  btcancela.Enabled:=false;
  btnovo.Enabled:=true;

  dttime.Enabled:=false;
  dtpdata.Enabled:=false;

  cbsetororigem.Enabled:=false;
  cbsetordestino.Enabled:=false;

  rgTipoestoque.Enabled:=false;

  cdsprodutostransferidos.EmptyDataSet;// Limpar dataset
  edCodProduto.Enabled:=false;

  if qrTransferidosHistoricoMateriais.Active then  qrTransferidosHistoricoMateriais.Refresh;
  if qrTransferidosHistoricoMateriaisItens.Active then qrTransferidosHistoricoMateriaisItens.Refresh;

  if qrTransferidosHistoricoComposicao.Active then qrTransferidosHistoricoComposicao.Refresh;
  if qrTransferidosHistoricoComposicaoItens.Active then  qrTransferidosHistoricoComposicaoItens.Refresh;

end;


procedure TfrmTransferenciaestoque.cbsetororigemClick(Sender: TObject);

begin
  if rgTipoestoque.ItemIndex=0 then  // Material
  begin
   qrlistaprodutos.Close;
   qrlistaprodutos.ParamByName('setor').AsInteger:=qrlistasetororigem.FieldByName('id_setor').AsInteger;
   qrlistaprodutos.ParamByName('emp').AsInteger:=RecProj.iEmp;
   qrlistaprodutos.Open;
   cxGrademateriais.DataController.DataSource:=dsListaprodutos; // Pega o datasource Produtos
  end
  else        // Ingredientes
  begin
    qrListacomposicao.Close;
    qrListacomposicao.ParamByName('id_setor').AsInteger:=qrListasetororigem.FieldByName('id_setor').AsInteger;
    qrListacomposicao.ParamByName('id_empresa').AsInteger:=RecProj.iEmp;
    qrListacomposicao.Open;
    cxGrademateriais.DataController.DataSource:=dsComposicao; // Pega Datasource Composicao
  end;
end;

procedure TfrmTransferenciaestoque.edCodProdutoPropertiesChange( Sender: TObject);
begin
  if rgtipoestoque.ItemIndex=0 then
  begin
    if trim (edcodproduto.text)='' then
      qrlistaprodutos.Filtered:=false
    else
    begin
      qrlistaprodutos.Filtered:=true;
      qrlistaprodutos.Filter:='codigo_material='+QuotedStr(edcodproduto.Text);
      lbldescricao.Caption:=qrlistaprodutos.FieldByName('descricao_material').AsString;
    end
  end
  else
  begin
    if trim(edcodproduto.Text)='' then
      qrlistacomposicao.Filtered:=false
    else
    begin
      qrlistacomposicao.Filtered:=true;
      qrlistacomposicao.Filter:='codigo_material='+QuotedStr(edcodproduto.Text);
      lbldescricao.Caption:=qrlistacomposicao.FieldByName('descricao_material').AsString;
    end;
  end;
end;

procedure TfrmTransferenciaestoque.edQuantidadeEnter(Sender: TObject);
begin
  edquantidade.Value:=1;
end;

procedure TfrmTransferenciaestoque.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key= vk_return then
  Perform(WM_NEXTDLGCTL,0,0)
end;

end.
