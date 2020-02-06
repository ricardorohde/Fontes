unit uAjusteestoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, Vcl.StdCtrls, AdvGroupBox, cxGroupBox, cxRadioGroup,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, AdvGlowButton, cxTextEdit,
  cxMaskEdit, cxButtonEdit, System.Actions, Vcl.ActnList, Vcl.DBCtrls,
  uBuscaRegistro, MemDS, DBAccess, Uni, Vcl.ComCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Datasnap.DBClient, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TfrmAjusteestoque = class(TfrmModelo)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    rgTipoestoque: TcxRadioGroup;
    rgTipomovimento: TcxRadioGroup;
    edCodProduto: TcxButtonEdit;
    btInserir: TAdvGlowButton;
    btSair: TAdvGlowButton;
    btSalvar: TAdvGlowButton;
    btCancelar: TAdvGlowButton;
    btNovo: TAdvGlowButton;
    aclist: TActionList;
    acIncluir: TAction;
    acCancelar: TAction;
    acSalvar: TAction;
    acSair: TAction;
    AdvGroupBox1: TAdvGroupBox;
    cbsetororigem: TDBLookupComboBox;
    dtpData: TDateTimePicker;
    Label3: TLabel;
    qrListasetororigem: TUniQuery;
    qrListasetororigemid_setor: TIntegerField;
    qrListasetororigemdescricao: TWideStringField;
    dsListasetororigem: TDataSource;
    acPesquisaproduto: TAction;
    Label1: TLabel;
    Label2: TLabel;
    lblDescricao: TLabel;
    dsProdutos: TDataSource;
    qrProdutos: TUniQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    IntegerField2: TIntegerField;
    WideStringField3: TWideStringField;
    WideMemoField1: TWideMemoField;
    cxGrid1DBTableView1descricao_material: TcxGridDBColumn;
    cxGrid1DBTableView1codigo_material: TcxGridDBColumn;
    cxGrid1DBTableView1quantidade: TcxGridDBColumn;
    cxGrid1DBTableView1descricao_setor: TcxGridDBColumn;
    edQuantidade: TJvValidateEdit;
    cdsListaprodutos: TClientDataSet;
    dsListaprodutos: TDataSource;
    cdsListaprodutoscodigo: TStringField;
    cdsListaprodutosdescricao: TStringField;
    cdsListaprodutosquantidade: TFloatField;
    cdsListaprodutossetor: TStringField;
    cdsListaprodutosid_codigo: TIntegerField;
    cdsListaprodutosid_setor: TIntegerField;
    cdsListaprodutostipo_material: TStringField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cdsListaprodutostipo_movimento: TStringField;
    procedure acPesquisaprodutoExecute(Sender: TObject);
    procedure acIncluirExecute(Sender: TObject);
    procedure acSairExecute(Sender: TObject);
    procedure edCodProdutoExit(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btInserirClick(Sender: TObject);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure rgTipoestoqueClick(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    constructor create(sender:tcomponent);reintroduce;
  private
    id_produto,id_usuario:integer;
  public
    { Public declarations }
  end;

var
  frmAjusteestoque: TfrmAjusteestoque;

implementation

{$R *.dfm}
uses uMenu, uFuncoes;
constructor tfrmajusteestoque.create(sender: TComponent);
begin
  inherited create(sender);
  if not frmMenu.ConfirmacaoSenha('b_permite_transferencia_estoque', id_usuario) then
    abort;
  acincluir.Enabled:=true;
  acCancelar.Enabled:=false;
  acSalvar.Enabled:=false;
  acSair.Enabled:=true;
  rgTipoestoque.Enabled:=false;
  rgTipomovimento.Enabled:=false;
  cbsetororigem.Enabled:=false;
  dtpData.Enabled:=false;
  edCodProduto.Enabled:=false;
  edQuantidade.Enabled:=false;
  btInserir.Enabled:=false;
end;

procedure TfrmAjusteestoque.acCancelarExecute(Sender: TObject);
begin
  cbsetororigem.KeyValue:=0;
  acIncluir.Enabled:=true;
  acsalvar.Enabled:=false;
  acsair.Enabled:=true;
  edCodProduto.Clear;
  edquantidade.Clear;
  cbsetororigem.Enabled:=false;
  dtpData.Enabled:=false;
  btinserir.Enabled:=false;
  cdslistaprodutos.Close;
end;

procedure TfrmAjusteestoque.acIncluirExecute(Sender: TObject);
begin
  qrlistasetororigem.Close;
  qrlistasetororigem.ParamByName('id_empresa').AsInteger:=RecProj.iEmp;
  qrlistasetororigem.Open;
  acIncluir.Enabled:=false;
  acCancelar.Enabled:=true;
  acSalvar.Enabled:=true;
  acSair.Enabled:=false;
  rgTipoestoque.Enabled:=true;
  rgTipomovimento.Enabled:=true;
  cbsetororigem.Enabled:=true;
  dtpData.Enabled:=true;
  edCodProduto.Enabled:=true;
  edQuantidade.Enabled:=true;
  btInserir.Enabled:=true;
  rgTipoestoque.ItemIndex:=0;  // PRODUTOS
  rgtipomovimento.ItemIndex:=0; // ENTRADA
  dtpdata.Date:=date;
  cbsetororigem.KeyValue:=qrlistasetororigem.FieldByName('id_setor').AsInteger;
  edcodproduto.setfocus;
  cdsListaprodutos.CreateDataSet;
end;

procedure TfrmAjusteestoque.acPesquisaprodutoExecute(Sender: TObject);
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
              ' MAT.MAT_008 '+
              ' FROM MATERIAIS MAT '+
              ' join setor_estoque_material s on mat.mat_001=s.id_material and s.id_empresa=mat.emp_001 '+
              ' LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND (UNI.UNI_001 = MAT.UNI_001) '+
              ' LEFT OUTER JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.CAT_001 = MAT.CAT_001)';
    frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
        vararrayof([1,2,3,4,5]) ,
        vararrayof(['Código', 'Produto', 'Categoria','Unidade', 'Preço' ]),
        1, 1,
        ' mat.sit_001=4 and utiliza_combo=false and mat.emp_001='+IntToStr(RecProj.iEmp)+ ' and s.id_setor='+qrListasetororigem.FieldByName('id_setor').AsString
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
    str_sql:='select c.codigo_ref,c.descricao, c.valor_custo, '+
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

procedure TfrmAjusteestoque.acSairExecute(Sender: TObject);

begin
  close;
end;

procedure TfrmAjusteestoque.acSalvarExecute(Sender: TObject);
begin
  if rgTipoestoque.ItemIndex=0 then   // Material
    begin
    if cdsListaprodutos.RecordCount>0 then
    begin
      cdslistaprodutos.First;
      while not cdsListaprodutos.Eof do
      begin
        InserirMovimentoProduto(cdsListaprodutos.FieldByName('id_codigo').AsInteger,cdslistaprodutos.FieldByName('quantidade').asfloat,cdslistaprodutos.FieldByName('tipo_movimento').AsString,'',id_usuario,0,0,'M',false,0,0,0,dtpdata.Date,false,false,cdsListaprodutos.FieldByName('id_setor').AsInteger,0);
        cdslistaprodutos.Next;
      end;
      Application.MessageBox('PRODUTO ATUALIZADO COM SUCESSO!','ALERTA',+MB_ICONQUESTION+MB_OK);
      acIncluir.Enabled:=true;
      acCancelar.Enabled:=false;
      acSalvar.Enabled:=false;
      acsair.Enabled:=true;
      cdslistaprodutos.Close;
      edCodProduto.Enabled:=false;
      edquantidade.Enabled:=false;
      btinserir.Enabled:=false;
    end;

  end;

  if rgTipoestoque.ItemIndex=1 then  // Ingredientes
  begin
  if cdslistaprodutos.RecordCount>0 then
  begin
    cdslistaprodutos.First;
    while not cdslistaprodutos.Eof do
    begin
      InserirMovimentoProduto(cdsListaprodutos.FieldByName('id_codigo').AsInteger,cdslistaprodutos.FieldByName('quantidade').asfloat,cdslistaprodutos.FieldByName('tipo_movimento').AsString,'',id_usuario,0,0,'C',true,0,0,0,dtpdata.Date,false,false,cdsListaprodutos.FieldByName('id_setor').AsInteger,0);
      cdslistaprodutos.Next;
    end;
      Application.MessageBox('PRODUTO ATUALIZADO COM SUCESSO!','ALERTA',+MB_ICONQUESTION+MB_OK);
      acIncluir.Enabled:=true;
      acCancelar.Enabled:=false;
      acSalvar.Enabled:=false;
      acsair.Enabled:=true;
      cdslistaprodutos.Close;
      edCodProduto.Enabled:=false;
      edquantidade.Enabled:=false;
      btinserir.Enabled:=false;
  end;
  end;


end;

procedure TfrmAjusteestoque.btInserirClick(Sender: TObject);
var
tipo_material,tipo_movimento:string;
begin
  if rgtipoestoque.ItemIndex=0 then
  begin
    tipo_material:='M'
  end
  else
  begin
    tipo_material:='C'
  end;

  if rgTipomovimento.ItemIndex=0 then
  begin
    tipo_movimento:='E'
  end;

  if rgTipomovimento.ItemIndex=1 then
  begin
    tipo_movimento:='S'
  end;

  if edCodProduto.Text='' then
  begin
    Application.MessageBox('PRODUTO NÃO PODE SER VAZIO,POR FAVOR INSIRA UM PRODUTO!','ALERTA',+MB_ICONQUESTION+MB_OK);
    edCodProduto.SetFocus;
    abort;
  end;

  if edquantidade.Value<=0 then
  begin
    Application.MessageBox('QUANTIDADE INVÁLIDA!','ALERTA',+MB_ICONQUESTION+MB_OK);
    edquantidade.SetFocus;
    abort;
  end;

  if rgtipoestoque.ItemIndex=-1 then
  begin
    Application.MessageBox('CAMPO PRODUTO OU INGREDIENTE NÃO PODE SER VAZIO','ALERTA',+MB_ICONQUESTION+mb_ok);
    rgTipoestoque.SetFocus;
    abort;
  end;

  if VarIsNull(rgTipoestoque.ItemIndex) then
  begin
    Application.MessageBox('CAMPO PRODUTO OU INGREDIENTE NÃO PODE SER VAZIO','ALERTA',+MB_ICONQUESTION+mb_ok);
    rgTipoestoque.SetFocus;
    abort;
  end;

  if rgTipomovimento.ItemIndex=-1 then
  begin
    Application.MessageBox('CAMPO TIPO DE MOVIMENTO NÃO PODE SER VAZIO, POR FAVIR INFORME SE O MOVIMENTO É ENTRADA OU SAIDA!','ALERTA',+MB_ICONQUESTION+mb_ok);
    rgTipomovimento.SetFocus;
    abort;
  end;

  if VarIsNull(rgTipomovimento.ItemIndex) then
  begin
    Application.MessageBox('CAMPO TIPO DE MOVIMENTO NÃO PODE SER VAZIO, POR FAVIR INFORME SE O MOVIMENTO É ENTRADA OU SAIDA!','ALERTA',+MB_ICONQUESTION+mb_ok);
    rgTipomovimento.SetFocus;
    abort;
  end;

  if cdslistaprodutos.RecordCount>0 then
  begin
   if cdslistaprodutos.FieldByName('tipo_material').AsString<>tipo_material then
   begin
     Application.MessageBox(PCHAR('O TIPO DE PRODUTO QUE VOCÊ ESTA TENTANDO INSERIR, É DIFERENTE DOS PRODUTOS JÁ SELECIONADAS PARA TRANSFERÊNCIA'+SLINEBREAK+'SÓ É POSSÍVEL INSERIR UM TIPO DE MATERIAL POR TRANSFERÊNCIA!'),'ALERTA',MB_ICONQUESTION+MB_OK);
     edcodproduto.SetFocus;
     abort;
   end;
  end;

  if cdslistaprodutos.Locate('id_codigo',id_produto,[]) then
  begin
     Application.MessageBox('ESSE PRODUTO JÁ FOI TRANSFERIDO, POR FAVOR INSIRA OUTRO PRODUTO!','ALERTA',+MB_ICONQUESTION+MB_OK);
     edCodProduto.SetFocus;
     edCodProduto.Clear;
     edQuantidade.Clear;
     lblDescricao.Caption:='';
     abort;
  end;
  // FAZ A INSERÇÃO NA GRID
  cdslistaprodutos.Append;
  cdslistaprodutos.FieldByName('codigo').AsString:=edCodProduto.Text;  //   Código do Material
  cdsListaprodutos.FieldByName('descricao').AsString:=lbldescricao.Caption;
  cdsListaprodutos.FieldByName('quantidade').AsFloat:=edQuantidade.Value;
  cdsListaprodutos.FieldByName('setor').AsString:=qrListasetororigem.FieldByName('descricao').AsString;
  cdslistaprodutos.FieldByName('id_codigo').AsInteger:=id_produto;
  cdslistaprodutos.FieldByName('id_setor').AsInteger:=qrListasetororigem.FieldByName('id_setor').AsInteger;
  if rgTipoestoque.ItemIndex=0 then
    cdslistaprodutos.FieldByName('tipo_material').AsString:='M'
  else
  cdslistaprodutos.FieldByName('tipo_material').AsString:='C';
  cdslistaprodutos.FieldByName('tipo_movimento').AsString:=tipo_movimento;
  cdslistaprodutos.Post;
  edCodProduto.Clear;
  edQuantidade.Clear;
  lbldescricao.Caption:='';
  edCodProduto.SetFocus;
end;


procedure TfrmAjusteestoque.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
    if Application.MessageBox('DESEJA REALMENTE EXCLUIR ESSE PRODUTO?','ALERTA',+MB_ICONQUESTION+MB_OKCANCEL)=mrOk then
   begin
    cdslistaprodutos.Delete;
   end;
   edCodProduto.SetFocus;

end;

procedure TfrmAjusteestoque.edCodProdutoExit(Sender: TObject);
var
str_sql:string;
qraux1:tuniquery;
begin
if rgtipoestoque.ItemIndex=0 then
begin
  if trim (edcodproduto.text)='' then
  begin
    
  end
  else
  begin
    str_sql:='select mat_001 as id_material,emp_001 as empresa ,mat_003 as descricao,mat_004 as codigo from materiais'
     +'  where emp_001=:emp and mat_004=:mat_004 and sit_001=4 and utiliza_combo=false';
    qraux1 := TUniQuery.Create(self);
    qraux1.Connection := frmmenu.conexao;
    qraux1.SQL.Add(str_sql);
    qraux1.ParamByName('emp').AsInteger := RecProj.iEmp;
    qraux1.ParamByName('mat_004').AsString :=edCodProduto.Text;
    qraux1.Open;
    if qraux1.RecordCount>0 then
    begin
      edcodproduto.Text:=qraux1.FieldByName('codigo').AsString;
      lblDescricao.Caption:=qraux1.FieldByName('descricao').AsString;
      id_produto:=qraux1.FieldByName('id_material').AsInteger;
    end
    else
    begin
      Application.MessageBox('PRODUTO NÃO ENCONTRADO, POR FAVOR INFORME UM PRODUTO QUE ESTEJA CADASTRADO!','ALERTA',+MB_ICONQUESTION+MB_OK);
      edcodproduto.clear;
      edCodProduto.SetFocus;
      abort;
    end;
  end
end
  else
  if rgtipoestoque.ItemIndex=1 then
  begin
  if trim (edcodproduto.text)='' then
  begin

  end
  else
  begin
    str_sql:='select id_composicao as id_material,id_empresa as empresa, descricao,codigo_ref as codigo'
    +' from composicao '
    +' where id_empresa=:emp and codigo_ref=:codigo and id_situacao=4';
    qraux1 := TUniQuery.Create(self);
    qraux1.Connection := frmmenu.conexao;
    qraux1.SQL.Add(str_sql);
    qraux1.ParamByName('emp').AsInteger := RecProj.iEmp;
    qraux1.ParamByName('codigo').Asstring :=trim(edCodProduto.Text);
    qraux1.Open;
    if qraux1.RecordCount>0 then
    begin
      edcodproduto.Text:=qraux1.FieldByName('codigo').AsString;
      lblDescricao.Caption:=qraux1.FieldByName('descricao').AsString;
      id_produto:=qraux1.FieldByName('id_material').AsInteger;
    end
    else
    begin
      Application.MessageBox('INGREDIENTE NÃO ENCONTRADO, POR FAVOR INFORME UM PRODUTO QUE ESTEJA CADASTRADO!','ALERTA',+MB_ICONQUESTION+MB_OK);
      edcodproduto.clear;
      edCodProduto.SetFocus;
      abort;
    end;
  end;


  end;


end;

procedure TfrmAjusteestoque.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key= vk_return then
Perform(WM_NEXTDLGCTL,0,0)

end;

procedure TfrmAjusteestoque.rgTipoestoqueClick(Sender: TObject);
begin
  edcodproduto.Clear;
  edquantidade.Clear;
  edcodproduto.SetFocus;
end;

end.
