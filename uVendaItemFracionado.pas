unit uVendaItemFracionado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, AdvGlowButton, Vcl.ExtCtrls,
  AdvPanel, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxButtonEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Vcl.StdCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, Vcl.DBCtrls,
  cxTextEdit, cxMaskEdit, JvDataSource, MemDS, DBAccess, Uni, Datasnap.DBClient,
  Vcl.ActnList, System.Math, System.Actions, dxSkinsCore, dxSkinBlack,
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
  TfrmVendaItemFracionado = class(TfrmModelo)
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    cdsItens: TClientDataSet;
    cdsItensnro_item: TIntegerField;
    cdsItensid_material: TIntegerField;
    cdsItensquantidade: TFloatField;
    cdsItensvalor: TFloatField;
    cdsItensdescricao: TStringField;
    dsBuscaItem: TDataSource;
    qrBuscaItem: TUniQuery;
    edCodProduto: TcxButtonEdit;
    DBText1: TDBText;
    edValor: TJvValidateEdit;
    Label6: TLabel;
    Label8: TLabel;
    cdsItenstamanho: TStringField;
    cxgrTamnhoMaterial: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    btInserir: TAdvGlowButton;
    cxGridDBTableView1nro_item: TcxGridDBColumn;
    cxGridDBTableView1id_material: TcxGridDBColumn;
    cxGridDBTableView1quantidade: TcxGridDBColumn;
    cxGridDBTableView1descricao: TcxGridDBColumn;
    cxGridDBTableView1valor_unit: TcxGridDBColumn;
    cxGridDBTableView1tamanho: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    JvdsBuscaItem: TJvDataSource;
    ActionList1: TActionList;
    acPesquisaItem: TAction;
    acExluirItem: TAction;
    dsItens: TDataSource;
    cdsItenstamanho2: TStringField;
    qrBuscaItemid_material: TIntegerField;
    qrBuscaItemdescricao: TWideStringField;
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
    qrBuscaItemunidade: TWideStringField;
    qrBuscaItemvalor_unit: TFloatField;
    qrBuscaItemcod_ref: TWideStringField;
    qrBuscaItemquantidade: TFloatField;
    qrBuscaItemcod_impressora: TIntegerField;
    cdsItensvalor_fracionado: TFloatField;
    Label1: TLabel;
    lbValorItem: TLabel;
    cdsItenscod_impressora: TIntegerField;
    Label2: TLabel;
    cdsItensobservacao: TStringField;
    DBMemo1: TDBMemo;
    cdsItenscod_referencia: TStringField;
    cdsItensid_categoria: TIntegerField;
    qrBuscaItemcat_001: TIntegerField;
    cdsItensvalor_unit_ref: TFloatField;
    cdsItensa: TBooleanField;
    procedure cxGridDBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    constructor Create(sender : Tcomponent ; habilita_valor_unitario : boolean = false ;
                       b_item_maior_valor : boolean = true; b_70pc_categoria_diferente : boolean = false );
    procedure acPesquisaItemExecute(Sender: TObject);
    procedure edCodProdutoExit(Sender: TObject);
    procedure qrBuscaItemAfterOpen(DataSet: TDataSet);
    procedure btCancelaClick(Sender: TObject);
    procedure dsBuscaItemStateChange(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rateiaValores;
    procedure valida70pc;
    procedure cdsItensAfterDelete(DataSet: TDataSet);
    procedure btConfirmaClick(Sender: TObject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
  private
    { Private declarations }
    tamanho, tamanho_desc : string;
    b_item_maior_valor : boolean;
    flag_rateio : boolean;
    b_70pc_categoria_diferente : boolean;
    flag_validar_70pc : boolean;
    bUtilizaSelecaoPrecos: boolean;
  public
    { Public declarations }
  end;

var
  frmVendaItemFracionado: TfrmVendaItemFracionado;

implementation

{$R *.dfm}

uses uMenu, uBuscaRegistro, uVendaSelecaoTamanho, uFuncoes, uControleMesa,
  uControleDeliveryDetalheVenda, uVendaBalcao, uVendaSelecaoPreco;

procedure TfrmVendaItemFracionado.valida70pc;
var categoria : integer;
    flag_categoria_dif : boolean;
    quantidade, valor_unit, valor_unit_70 : double;
begin
  if cdsItens.RecordCount<1 then exit;

  //analisa pra ver se tem  categorias diferentes
  categoria := cdsItens.FieldByName('id_categoria').AsInteger;
  flag_categoria_dif := false;
  cdsItens.First;
  while not cdsItens.eof do
  begin
    if not flag_categoria_dif then
      flag_categoria_dif := categoria <> cdsItens.FieldByName('id_categoria').AsInteger;
    cdsItens.Next;
  end;

  //atualiza os valores
  if flag_categoria_dif then
  begin
    cdsItens.First;
    while not cdsItens.eof do
    begin
      quantidade :=cdsItens.FieldByName('quantidade').AsFloat;

      valor_unit :=cdsItens.FieldByName('valor_unit_ref').asfloat;
      valor_unit_70  := (valor_unit *0.7)/quantidade;
      cdsItens.Edit;
      cdsItens.FieldByName('valor_unit').AsFloat := valor_unit_70;
      //Marca o Flag de item com exigência de valor mínimo de 70% do unitário
      cdsItens.FieldByName('b_70pc_valor_unit').asboolean := true;
      cdsItens.post;

      cdsItens.Next;
    end;
  end;
  rateiaValores;
end;

procedure TfrmVendaItemFracionado.cxGridDBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if cdsItens.RecordCount>0 then
    cdsItens.delete;
end;

procedure TfrmVendaItemFracionado.DBMemo1Enter(Sender: TObject);
begin
  inherited;
  if cdsItens.RecordCount>0 then
  begin
    if cdsItens.State<>dsedit then cdsItens.edit;
  end;
end;

procedure TfrmVendaItemFracionado.DBMemo1Exit(Sender: TObject);
begin
  inherited;
  if cdsItens.State=dsEdit then cdsItens.post;
end;

procedure TfrmVendaItemFracionado.dsBuscaItemStateChange(Sender: TObject);
begin
  inherited;
  edValor.readonly:= dsBuscaItem.State in [dsEdit, dsInsert];
end;

procedure TfrmVendaItemFracionado.edCodProdutoExit(Sender: TObject);
var valor_happy: double;
begin
  inherited;
  if edCodProduto.Text<>'' then
  begin
    qrBuscaItem.Close;
    qrBuscaItem.ParamByName('cod_ref').AsString:=edCodProduto.Text;
    qrBuscaItem.ParamByName('emp').asinteger:=RecProj.iEMP;
    qrBuscaItem.open;

    if qrBuscaItem.RecordCount<1 then
    begin
      Application.MessageBox('Produto não encontrado!', 'Atenção', MB_ICONINFORMATION + MB_OK);
      edCodProduto.Clear;
      qrBuscaItem.Close;
      edCodProduto.SetFocus;
      abort;
    end;

    //Verifica Happy Hour - Bruno (12-04-2018)
    if Assigned(frmControleMesa) then //Mesa-Comanda
    begin
      if BuscaHappyHour(frmControleMesa.qrVendaMesa.FieldByName('tipo_venda').asstring, qrBuscaItem.FieldByName('id_material').AsInteger, valor_happy) then
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
    end
    else if Assigned(frmControleDeliveryDetalheVenda) then //Delivery
    begin
      if BuscaHappyHour('D', qrBuscaItem.FieldByName('id_material').AsInteger, valor_happy) then
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
    end
    else if Assigned(frmVendaBalcao) then //Balcão
    begin
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
    end;
  end;
end;

procedure TfrmVendaItemFracionado.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then Perform(WM_NEXTDLGCTL, 0, 0)
  else if key=vk_f2 then acPesquisaItem.Execute;
end;

procedure TfrmVendaItemFracionado.qrBuscaItemAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if qrBuscaItem.RecordCount >0 then
  begin
    qrBuscaItem.Edit;
    if qrBuscaItem.FieldByName('b_venda_tamanho').AsBoolean then
    begin
      if tamanho = '' then
      begin
        frmVendaSelecaoTamanho := TfrmVendaSelecaoTamanho.Create(self,qrBuscaItem.FieldByName('id_material').asinteger);
        frmVendaSelecaoTamanho.ShowModal;
        if frmVendaSelecaoTamanho.Tag = 1 then tamanho := frmVendaSelecaoTamanho.tamanho;
        frmVendaSelecaoTamanho.Free;
      end;
      if tamanho = '' then
      begin
        qrBuscaItem.Close;
        if edcodproduto.CanFocus then edcodproduto.SetFocus;
        exit;
      end;

      qrBuscaItem.FieldByName('tamanho_padrao').AsString:= tamanho;
      if tamanho = 'P' then
      begin
        tamanho_desc:= qrBuscaItem.FieldByName('descricao_p').AsString;
        qrBuscaItem.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_tam_p').asfloat;
      end
      else if tamanho = 'M' then
      begin
        tamanho_desc:= qrBuscaItem.FieldByName('descricao_m').AsString;
        qrBuscaItem.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_tam_m').asfloat;
      end
      else if tamanho = 'G' then
      begin
        tamanho_desc:= qrBuscaItem.FieldByName('descricao_g').AsString;
        qrBuscaItem.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_tam_g').asfloat;
      end
      else if tamanho = 'GG' then
      begin
        tamanho_desc:= qrBuscaItem.FieldByName('descricao_gg').AsString;
        qrBuscaItem.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_tam_gg').asfloat;
      end
      else if tamanho = 'E' then
      begin
        tamanho_desc:= qrBuscaItem.FieldByName('descricao_extra').AsString;
        qrBuscaItem.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_tam_extra').asfloat;
      end
      else
        qrBuscaItem.FieldByName('descricao').AsString:= qrBuscaItem.FieldByName('descricao_old').AsString;
    end;
  end;
end;

procedure TfrmVendaItemFracionado.acPesquisaItemExecute(Sender: TObject);
var str_sql : string;
begin
  inherited;
  edCodProduto.SetFocus;
  str_sql:= ' SELECT MAT.MAT_001, '+
            ' MAT.MAT_004, '+
            ' MAT.MAT_003, '+
            ' CAT.CAT_002, '+
            ' UNI.UNI_002, '+
            ' MAT.MAT_008 '+
            ' FROM MATERIAIS MAT '+
            ' LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND (UNI.UNI_001 = MAT.UNI_001) '+
            ' LEFT OUTER JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.CAT_001 = MAT.CAT_001)';
  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
      vararrayof([1,2,3,4,5]) ,
      vararrayof(['Código', 'Produto', 'Categoria','Unidade', 'Preço' ]),
      1, 1, ' mat.sit_001=4 and MAT.emp_001='+IntToStr(RecProj.iEmp), 800, 500);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
    edCodProduto.Text:=frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.Free;
  edCodProdutoExit(nil);
  if edValor.CanFocus then edValor.SetFocus;

end;

procedure TfrmVendaItemFracionado.btCancelaClick(Sender: TObject);
begin
  inherited;
  self.Tag :=0;
  close;

end;

procedure TfrmVendaItemFracionado.btConfirmaClick(Sender: TObject);
begin
  inherited;
  if cdsItens.RecordCount<2 then
  begin
    Application.MessageBox('É necessário informar pelo menos dois itens!', 'Atenção', MB_ICONINFORMATION + MB_OK);
    edCodProduto.SetFocus;
  end
  else
  begin
    self.Tag:=1;
    close;
  end;
end;

procedure TfrmVendaItemFracionado.btInserirClick(Sender: TObject);
begin
  inherited;
  //valida os itens e insere
  if qrBuscaItem.Active then
  begin
    if qrBuscaItem.RecordCount<1 then
    begin
      Application.MessageBox('Não foi informado nenhum item a adicionar!', 'Atenção', MB_ICONINFORMATION + MB_OK);
      edCodProduto.SetFocus;
      abort;
    end
    else
    begin
    //valida valor unitário
      if (qrBuscaItem.FieldByName('valor_unit').IsNull)  or
       (qrBuscaItem.FieldByName('valor_unit').AsFloat<=0) or
       (qrBuscaItem.FieldByName('valor_unit').AsFloat>99999999) then
      begin
        Application.MessageBox('Valor unitário inválido!', 'Atenção', MB_ICONINFORMATION + MB_OK);
        if edValor.CanFocus then edValor.SetFocus;
          abort;
      end;
    end;
    // verifica se ja informou o item
    if cdsItens.Locate('id_material',qrBuscaItem.FieldByName('id_material').AsInteger, [])  then
    begin
      Application.MessageBox('Item já informado!', 'Atenção', MB_ICONINFORMATION + MB_OK);
      if edCodProduto.CanFocus then edCodProduto.SetFocus;
      abort;
    end;

    // verifica se ja atingiu o máximo de 4 registros
    if cdsItens.RecordCount>=4 then
    begin
      Application.MessageBox('Não é possível informar mais itens!', 'Atenção', MB_ICONINFORMATION + MB_OK);
      if edCodProduto.CanFocus then edCodProduto.SetFocus;
      abort;
    end;

    //Tudo ok, insere
    cdsItens.Append;
    cdsItens.FieldByName('nro_item').AsInteger:=cdsItens.RecordCount+1;
    cdsItens.FieldByName('id_material').AsInteger:=qrBuscaItem.FieldByName('id_material').AsInteger;
    cdsItens.FieldByName('quantidade').asfloat:=1;
    cdsItens.FieldByName('descricao').asstring:=qrBuscaItem.FieldByName('descricao').AsString;
    cdsItens.FieldByName('cod_ref').asstring:=qrBuscaItem.FieldByName('cod_ref').AsString;
    cdsItens.FieldByName('valor_unit').asfloat:= qrBuscaItem.FieldByName('valor_unit').AsFloat;
    cdsItens.FieldByName('valor_unit_ref').asfloat:= qrBuscaItem.FieldByName('valor_unit').AsFloat;
    cdsItens.FieldByName('tamanho_desc').asstring:=tamanho_desc;
    cdsItens.FieldByName('tamanho').asstring:=tamanho;
    cdsItens.FieldByName('cod_impressora').AsInteger:=qrBuscaItem.FieldByName('cod_impressora').AsInteger;
    cdsItens.FieldByName('id_categoria').AsInteger:=qrBuscaItem.FieldByName('cat_001').AsInteger;
    cdsItens.FieldByName('b_70pc_valor_unit').asboolean := false;
    cdsItens.post;
    edCodProduto.clear;
    qrBuscaItem.Close;
    rateiaValores;
    if b_70pc_categoria_diferente then valida70pc;
  end;
  if edCodProduto.CanFocus then edCodProduto.SetFocus;
  if cdsItens.RecordCount>=4  then btConfirma.SetFocus;

end;

procedure TfrmVendaItemFracionado.cdsItensAfterDelete(DataSet: TDataSet);
begin
  inherited;
  rateiaValores;
  if b_70pc_categoria_diferente then valida70pc;
end;

procedure TfrmVendaItemFracionado.rateiaValores;
var valor_total, valor_max, valor_rateado, soma: double;
 i: integer;
begin
  inherited;
  if flag_rateio then
  begin
    flag_rateio :=false;
    if cdsItens.RecordCount<=0 then
    begin
      tamanho:='';
      tamanho_desc:='';
      lbValorItem.Caption:= 'R$ 0,00';
    end
    else
    begin
      cdsItens.first;
      valor_total:=0;
      valor_max:=0;
      cdsItens.first;
      //verifica qual o valor maior
      while not  cdsItens.eof do
      begin
        if valor_max < cdsItens.FieldByName('valor_unit').asfloat  then
          valor_max := cdsItens.FieldByName('valor_unit').asfloat;
        cdsItens.Next;
      end;
      if b_item_maior_valor and (not b_70pc_categoria_diferente)  then
        valor_total := valor_max
      else
      begin
        if VarIsNull(cdsItens.Aggregates[0].Value) then
          soma := 0
        else
          soma:= cdsItens.Aggregates[0].Value;
        valor_total := roundto(soma/cdsItens.RecordCount, -2);
      end;

      //Aplica o rateio
      cdsItens.first;
      i:=1;
      while not  cdsItens.eof do
      begin
        cdsItens.Edit;
        cdsItens.FieldByName('nro_item').asinteger:= i;
        cdsItens.FieldByName('quantidade').AsFloat:= 1/cdsItens.RecordCount;
        cdsItens.FieldByName('tamanho').asstring:= tamanho;
        cdsItens.FieldByName('tamanho_desc').asstring:= tamanho_desc;
        if b_item_maior_valor then
        begin
          if not b_70pc_categoria_diferente then
            cdsItens.FieldByName('valor_unit').AsFloat := valor_total;
          cdsItens.FieldByName('valor_fracionado').AsFloat:=valor_total / cdsItens.RecordCount;
        end
        else
          cdsItens.FieldByName('valor_fracionado').AsFloat:=cdsItens.FieldByName('valor_unit').AsFloat / cdsItens.RecordCount;;
        cdsItens.Post;
        cdsItens.Next;
        i:=i+1;
      end;

      lbValorItem.Caption:= format('R$ %s',[ formatfloat('0.00',valor_total)]);
    end;
    flag_rateio:=true;
  end;
end;

constructor TfrmVendaItemFracionado.Create(sender : Tcomponent ; habilita_valor_unitario : boolean = false ;
     b_item_maior_valor : boolean = true;b_70pc_categoria_diferente : boolean = false );
begin
  inherited create(sender);
  cdsItens.CreateDataSet;
  tamanho_desc:='';
  tamanho:='';

  self.b_70pc_categoria_diferente := b_70pc_categoria_diferente;
  self.b_item_maior_valor := b_item_maior_valor;
  edValor.Enabled := habilita_valor_unitario;
  flag_rateio:=true;
  flag_validar_70pc := false;

  bUtilizaSelecaoPrecos:= LerBooleanConfig('ckUtilizar_selecao_precos', frmMenu.cdsCFG.FileName);
end;

end.
