unit uProdutoReajustePreco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, Vcl.StdCtrls, AdvGlowButton, AdvGroupBox,
  Vcl.ExtCtrls, AdvPanel, Datasnap.DBClient, Data.DB, MemDS, DBAccess, Uni,
  JvExStdCtrls, JvEdit, JvValidateEdit, System.Actions, Vcl.ActnList,
  Vcl.DBCtrls, Datasnap.Provider, cxCheckBox, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxCurrencyEdit, cxDBEdit, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TfrmProdutoReajustePreco = class(TfrmModelo)
    AdvGroupBox3: TAdvGroupBox;
    Label4: TLabel;
    lbProduto: TLabel;
    btPesquisar: TAdvGlowButton;
    cbTipoReajuste: TComboBox;
    edCodProduto: TcxButtonEdit;
    ActionList1: TActionList;
    acBuscaProduto: TAction;
    Label1: TLabel;
    edAjuste: TJvValidateEdit;
    Label2: TLabel;
    dsListaCategoria: TDataSource;
    qrListaCategoria: TUniQuery;
    qrListaCategoriacat_001: TIntegerField;
    qrListaCategoriadescr: TWideStringField;
    cdsCategoria: TClientDataSet;
    cdsCategoriaid_categoria: TIntegerField;
    DBLookupComboBox1: TDBLookupComboBox;
    dsCategoria: TDataSource;
    Label3: TLabel;
    qrListaCategoriaord: TIntegerField;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    qrMateriais: TUniQuery;
    dspMateriais: TDataSetProvider;
    cdsMateriais: TClientDataSet;
    ckAtivos: TcxCheckBox;
    Label5: TLabel;
    qrMateriaismat_001: TIntegerField;
    qrMateriaisemp_001: TIntegerField;
    qrMateriaisdescricao: TWideStringField;
    qrMateriaiscod_ref: TWideStringField;
    qrMateriaisvalor_custo: TFloatField;
    qrMateriaisvalor_venda: TFloatField;
    qrMateriaisvalor_venda2: TFloatField;
    qrMateriaismargem: TFloatField;
    cdsMateriaismat_001: TIntegerField;
    cdsMateriaisemp_001: TIntegerField;
    cdsMateriaisdescricao: TWideStringField;
    cdsMateriaiscod_ref: TWideStringField;
    cdsMateriaisvalor_custo: TFloatField;
    cdsMateriaisvalor_venda: TFloatField;
    cdsMateriaisvalor_venda2: TFloatField;
    cdsMateriaismargem: TFloatField;
    dsMateriais: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1mat_001: TcxGridDBColumn;
    cxGrid1DBTableView1emp_001: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1cod_ref: TcxGridDBColumn;
    cxGrid1DBTableView1valor_custo: TcxGridDBColumn;
    cxGrid1DBTableView1valor_venda: TcxGridDBColumn;
    cxGrid1DBTableView1valor_venda2: TcxGridDBColumn;
    cxGrid1DBTableView1margem: TcxGridDBColumn;
    cxGrid1ColunaValorReajustado: TcxGridDBColumn;
    cxGrid1ColunaValorReajustado2: TcxGridDBColumn;
    cxGrid1ColunaValorReajustado3: TcxGridDBColumn;
    qrMateriaisvalor_custo_reajustado: TFloatField;
    qrMateriaisvalor_venda_reajustado: TFloatField;
    qrMateriaisvalor_prazo_reajustado: TFloatField;
    cdsMateriaisvalor_custo_reajustado: TFloatField;
    cdsMateriaisvalor_venda_reajustado: TFloatField;
    cdsMateriaisvalor_prazo_reajustado: TFloatField;
    cxGrid1DBTableView1ColunaSelecao: TcxGridDBColumn;
    AdvGroupBox1: TAdvGroupBox;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    btEditarItem: TAdvGlowButton;
    btSalvarItem: TAdvGlowButton;
    btCancelarItem: TAdvGlowButton;
    procedure acBuscaProdutoExecute(Sender: TObject);
    constructor Create(sender : Tcomponent); reintroduce;
    procedure edCodProdutoExit(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btConfirmaClick(Sender: TObject);
    procedure dsMateriaisStateChange(Sender: TObject);
    procedure btEditarItemClick(Sender: TObject);
    procedure btSalvarItemClick(Sender: TObject);
    procedure btCancelarItemClick(Sender: TObject);
    procedure cdsMateriaisAfterOpen(DataSet: TDataSet);
    procedure cdsMateriaisvalor_custo_reajustadoChange(Sender: TField);
    procedure cdsMateriaisvalor_venda_reajustadoChange(Sender: TField);
    procedure cdsMateriaisvalor_prazo_reajustadoChange(Sender: TField);
    procedure cdsMateriaismargemChange(Sender: TField);
    procedure cdsMateriaisBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    opcao_atualizacao : integer;
  public
    { Public declarations }
  end;

var
  frmProdutoReajustePreco: TfrmProdutoReajustePreco;

implementation

{$R *.dfm}

uses uMenu, uBuscaRegistro, uFuncoes, Funcao_DB;

procedure TfrmProdutoReajustePreco.btCancelaClick(Sender: TObject);
begin
  inherited;
  close;
end;


procedure TfrmProdutoReajustePreco.btCancelarItemClick(Sender: TObject);
begin
  inherited;
  cdsMateriais.Cancel;
end;

procedure TfrmProdutoReajustePreco.btConfirmaClick(Sender: TObject);
var i, iRec : integer;
    selecionado : boolean;
    str_sql : string;
begin
  inherited;
  if not cdsMateriais.Active then
  begin
    Application.MessageBox('Não existem dados para atualizar!',
                           'Atenção', MB_ICONINFORMATION);
    abort;
  end
  else
  begin

    //Faz a verificação antes de atualizar
    cdsMateriais.First;
    i:=0;
    while not cdsMateriais.eof do
    begin
      iRec := cxGrid1DBTableView1.Controller.SelectedRecords[0].RecordIndex;
      //Registro selecionado, coluna 0 (coluna de seleção)
      if VarIsNull(cxGrid1DBTableView1.DataController.Values[iRec, 0]) then
        selecionado := false
      else
      begin
        selecionado := cxGrid1DBTableView1.DataController.Values[iRec, 0];
      end;

      if selecionado then
      begin
        //verifica valor de venda zerado
        if cdsMateriais.FieldByName('valor_venda_reajustado').AsFloat<0.01 then
        begin
          Application.MessageBox(
            pchar('Não é possível atualizar os valores. Valor de venda zerado para o item:'+#13#10+
                  cdsMateriais.FieldByName('descricao').asstring),'Atenção', MB_ICONINFORMATION);
          abort;
        end;

        //verifica valor a prazo zerado
        if opcao_atualizacao in [1,4,5]  then
        begin
          if cdsMateriais.FieldByName('valor_prazo_reajustado').AsFloat<0.01 then
          begin
            Application.MessageBox(
              pchar('Não é possível atualizar os valores. Valor de venda a prazo zerado para o item:'+#13#10+
                    cdsMateriais.FieldByName('descricao').asstring),'Atenção', MB_ICONINFORMATION);
            abort;
          end;
        end;

        //verifica valor de custo zerado
        if opcao_atualizacao in [2,5]  then
        begin
          if cdsMateriais.FieldByName('valor_prazo_reajustado').AsFloat<0.01 then
          begin
            Application.MessageBox(
              pchar('Não é possível atualizar os valores. Valor de venda a prazo zerado para o item:'+#13#10+
                    cdsMateriais.FieldByName('descricao').asstring),'Atenção', MB_ICONINFORMATION);
            abort;
          end;
        end;
        i:=i+1;
      end;
      cdsMateriais.next;
    end;

    if i<1 then
    begin
      Application.MessageBox('Não foi selecionado nenhum registro!',
                             'Atenção', MB_ICONINFORMATION);
      cdsMateriais.first;
    end
    else
    begin
      //passou pelas checagens, entao atualiza
      cdsMateriais.First;
      i:=0;
      while not cdsMateriais.eof do
      begin
        iRec := cxGrid1DBTableView1.Controller.SelectedRecords[0].RecordIndex;
        //Registro selecionado, coluna 0 (coluna de seleção)
        if VarIsNull(cxGrid1DBTableView1.DataController.Values[iRec, 0]) then
          selecionado := false
        else
        begin
          selecionado := cxGrid1DBTableView1.DataController.Values[iRec, 0];
        end;
        if selecionado then
        begin
          str_sql :=' UPDATE materiais set mat_008 = :valor_venda_reajustado, '+
                    ' mat_012 = :valor_custo_reajustado, '+
                    ' valor_tabela2 = :valor_prazo_reajustado, '+
                    ' mat_018 = :margem '+
                    ' where mat_001 = :id_material AND emp_001 = :id_empresa';
          ExecutaComandoSQL(str_sql, vararrayof([
                            cdsMateriais.fieldbyname('valor_venda_reajustado').asfloat,
                            cdsMateriais.fieldbyname('valor_custo_reajustado').asfloat,
                            cdsMateriais.fieldbyname('valor_prazo_reajustado').asfloat,
                            cdsMateriais.fieldbyname('margem').asfloat,
                            cdsMateriais.fieldbyname('mat_001').asinteger,
                            recproj.iemp]));
        end;
        cdsMateriais.next;
      end;
      Application.MessageBox('Valores atualizados com sucesso!','Atenção', MB_ICONINFORMATION);
      cdsMateriais.Close;
      edCodProduto.Clear;
      edCodProdutoExit(nil);
      cdsCategoria.Edit;
      cdsCategoria.FieldByName('cat_001').value := null;
    end;
  end;
end;

procedure TfrmProdutoReajustePreco.btEditarItemClick(Sender: TObject);
begin
  inherited;
  cdsMateriais.Edit;
end;

procedure TfrmProdutoReajustePreco.btPesquisarClick(Sender: TObject);
var i_where : integer;
    filtro, filtro_prod, filtro_cat, filtro_status, sql_campo_ajuste: string;
    valor_ajuste : double;
begin
  inherited;
  i_where := qrMateriais.SQL.Count -2;
  filtro := '';

  if edCodProduto.Text<>'' then
    filtro_prod := ' and mat_004 =:cod_ref '
  else
    filtro_prod := '';

  if not cdsCategoria.FieldByName('cat_001').IsNull then
    filtro_cat := ' and cat_001='+cdsCategoria.FieldByName('cat_001').asstring
  else
    filtro_cat :='';

  if ckAtivos.Checked then
    filtro_status := ' and sit_001=4'
  else
    filtro_status := '';

  qrMateriais.Close;
  cdsMateriais.Close;
  filtro := filtro_prod +  filtro_cat  + filtro_status;

  valor_ajuste := (edAjuste.Value * 0.01) + 1;

  opcao_atualizacao := cbTipoReajuste.ItemIndex;

  case opcao_atualizacao of
    0 : //Preço de venda
      begin                  //valor_custo_reajustado, 0.00 as valor_venda_reajustado, 0.00 as valor_prazo_reajustado,
        sql_campo_ajuste := ' coalesce(mat_012, 0.00) as valor_custo_reajustado,  coalesce((mat_008 * :ajuste), 0.00) as valor_venda_reajustado, coalesce(valor_tabela2, 0.00) as valor_prazo_reajustado, ';
        cxGrid1ColunaValorReajustado.Visible := false;
        cxGrid1ColunaValorReajustado2.Visible := true;
        cxGrid1ColunaValorReajustado3.Visible := false;
      end;
    1 : //Preço de venda a prazo
      begin
        sql_campo_ajuste := ' coalesce(mat_012, 0.00) as valor_custo_reajustado,  coalesce(mat_008, 0.00) as valor_venda_reajustado, coalesce((valor_tabela2 * :ajuste), 0.00) as valor_prazo_reajustado, ';
        cxGrid1ColunaValorReajustado.Visible := false;
        cxGrid1ColunaValorReajustado2.Visible := false;
        cxGrid1ColunaValorReajustado3.Visible := true;
      end;
    2 : //Preço de custo
      begin
        sql_campo_ajuste := ' coalesce((mat_012 * :ajuste), 0.00)  as valor_custo_reajustado,  coalesce(mat_008, 0.00) as valor_venda_reajustado, coalesce(valor_tabela2, 0.00) as valor_prazo_reajustado, ';
        cxGrid1ColunaValorReajustado.Visible := true;
        cxGrid1ColunaValorReajustado2.Visible := false;
        cxGrid1ColunaValorReajustado3.Visible := false;
      end;
    3 : //Preço de venda com base no preço de custo...  Se o preço de custo estiver zerado, nao reajusta
      begin
        sql_campo_ajuste := ' coalesce(mat_012, 0.00) as valor_custo_reajustado, '+
                            ' case when coalesce(mat_012 , 0.00)<=0.00 then coalesce(mat_008, 0.00) else  coalesce((mat_012 * :ajuste ), 0.00) end as valor_venda_reajustado, '+
                            ' coalesce(valor_tabela2, 0.00) as valor_prazo_reajustado, ';
        cxGrid1ColunaValorReajustado.Visible := false;
        cxGrid1ColunaValorReajustado2.Visible := true;
        cxGrid1ColunaValorReajustado3.Visible := false;
      end;
    4 : //Preço de venda a prazo com base no preço de custo...  Se o preço de custo estiver zerado, nao reajusta
      begin
        sql_campo_ajuste := ' coalesce(mat_012, 0.00) as valor_custo_reajustado, '+
                            ' coalesce(mat_008, 0.00) as valor_venda_reajustado, '+
                            ' case when coalesce(mat_012 , 0.00)<=0.00 then coalesce(valor_tabela2, 0.00) else coalesce((mat_012 * :ajuste ), 0.00) end as valor_prazo_reajustado, ';
        cxGrid1ColunaValorReajustado.Visible := false;
        cxGrid1ColunaValorReajustado2.Visible := false;
        cxGrid1ColunaValorReajustado3.Visible := true;
      end;
    5 : //Preço de compra mantendo a margem para venda e prazo...  Se o preço de custo estiver zerado, nao reajusta
      begin
        sql_campo_ajuste := ' coalesce((mat_012 * :ajuste ), 0.00) as valor_custo_reajustado, '+
                            ' case when coalesce(mat_012 , 0.00)<=0.00 then coalesce(mat_008, 0.00) else coalesce(((mat_012 * :ajuste ) * ((mat_018 * 0.01)+1)), 0.00) end as valor_venda_reajustado, '+
                            ' case when coalesce(mat_012 , 0.00)<=0.00 then coalesce(valor_tabela2, 0.00) else coalesce((valor_tabela2 * :ajuste), 0.00) end as valor_prazo_reajustado,  ';
        cxGrid1ColunaValorReajustado.Visible := true;
        cxGrid1ColunaValorReajustado2.Visible := true;
        cxGrid1ColunaValorReajustado3.Visible := true;
      end;
  end;

  //coloca o código do campo reajustado na linha 1
  qrMateriais.SQL[1] := sql_campo_ajuste;
  qrMateriais.ParamByName('ajuste').asfloat := valor_ajuste;

  qrMateriais.SQL[i_where] := filtro;
  if edCodProduto.Text<>'' then qrMateriais.ParamByName('cod_ref').AsString := edCodProduto.Text;
  cdsMateriais.Open;
end;

procedure TfrmProdutoReajustePreco.btSalvarItemClick(Sender: TObject);
begin
  inherited;
  cdsMateriais.Post;
end;

procedure TfrmProdutoReajustePreco.cdsMateriaisAfterOpen(DataSet: TDataSet);
var iRec : integer;
begin
  inherited;
  //marca todos o itens...
  cdsMateriais.First;
  while not cdsMateriais.eof do
  begin
    iRec := cxGrid1DBTableView1.Controller.SelectedRecords[0].RecordIndex;
    cxGrid1DBTableView1.DataController.Values[iRec, 0] := true;
    cdsMateriais.Next;
  end;
  cdsMateriais.First;
end;

procedure TfrmProdutoReajustePreco.cdsMateriaisBeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsMateriaismargemChange(nil);
  cdsMateriaisvalor_custo_reajustadoChange(nil);
  cdsMateriaisvalor_venda_reajustadoChange(nil);
  cdsMateriaisvalor_prazo_reajustadoChange(nil);
  if cdsMateriais.FieldByName('margem').isnull or
   cdsMateriais.FieldByName('valor_custo_reajustado').isnull or
   cdsMateriais.FieldByName('valor_venda_reajustado').isnull or
   cdsMateriais.FieldByName('valor_prazo_reajustado').isnull then
  begin
    Application.MessageBox('É necessário informar todos os valores!','Atenção', MB_ICONINFORMATION);
    abort;
  end;


end;

procedure TfrmProdutoReajustePreco.cdsMateriaismargemChange(Sender: TField);
begin
  inherited;
  if cdsMateriais.FieldByName('margem').AsFloat<0 then
  begin
    Application.MessageBox('Valor inválido!','Atenção', MB_ICONINFORMATION);
    abort;
  end;
end;

procedure TfrmProdutoReajustePreco.cdsMateriaisvalor_custo_reajustadoChange(
  Sender: TField);
begin
  inherited;
  if cdsMateriais.FieldByName('valor_custo_reajustado').AsFloat<0 then
  begin
    Application.MessageBox('Valor inválido!','Atenção', MB_ICONINFORMATION);
    abort;
  end;

end;

procedure TfrmProdutoReajustePreco.cdsMateriaisvalor_prazo_reajustadoChange(
  Sender: TField);
begin
  inherited;
  if cdsMateriais.FieldByName('valor_prazo_reajustado').AsFloat<0 then
  begin
    Application.MessageBox('Valor inválido!','Atenção', MB_ICONINFORMATION);
    abort;
  end;
end;

procedure TfrmProdutoReajustePreco.cdsMateriaisvalor_venda_reajustadoChange(
  Sender: TField);
begin
  inherited;
  if cdsMateriais.FieldByName('valor_venda_reajustado').AsFloat<0 then
  begin
    Application.MessageBox('Valor inválido!','Atenção', MB_ICONINFORMATION);
    abort;
  end;
end;

constructor  TfrmProdutoReajustePreco.Create(sender : Tcomponent);
begin
  inherited Create(sender);
  qrListaCategoria.ParamByName('emp').AsInteger := recproj.iEmp;
  qrListaCategoria.Open;
  cdsCategoria.CreateDataSet;
  cdsCategoria.append;

  cdsMateriais.Close;

  cbTipoReajuste.ItemIndex:=0;
  cxGrid1ColunaValorReajustado2.Visible := false;
  cxGrid1ColunaValorReajustado3.Visible := false;

  opcao_atualizacao := -1;
end;

procedure TfrmProdutoReajustePreco.dsMateriaisStateChange(Sender: TObject);
begin
  inherited;
  if cdsMateriais.Active then
  begin
    //aberto, nao editando...
    if cdsMateriais.State = dsBrowse then
    begin
      btEditarItem.Enabled:=true;
      btSalvarItem.Enabled:=false;
      btCancelarItem.Enabled:=false;
      if cdsMateriais.RecordCount<=0 then
      begin
        btEditarItem.Enabled:=false;
      end;
    end
    else if cdsMateriais.State in [dsInsert, dsEdit]  then
    begin
      btEditarItem.Enabled:=false;
      btSalvarItem.Enabled:=true;
      btCancelarItem.Enabled:=true;
    end;
  end
  else
  begin
    btEditarItem.Enabled:=false;
    btSalvarItem.Enabled:=false;
    btCancelarItem.Enabled:=false;
  end;
end;

procedure TfrmProdutoReajustePreco.edCodProdutoExit(Sender: TObject);
var str_sql, desc_produto : string;
begin
  inherited;
  desc_produto :='';
  if edCodProduto.Text<>'' then
  begin
    str_sql := ' select mat_003 from materiais where utiliza_combo=false and mat_004='+
                QuotedStr(trim(edCodProduto.Text))+
               ' and emp_001=' + IntToStr(RecProj.iEmp);
    BuscaCampo(desc_produto, str_sql, 'Produto', true);
  end;
  lbProduto.Caption:= desc_produto;
end;

procedure TfrmProdutoReajustePreco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmProdutoReajustePreco.acBuscaProdutoExecute(Sender: TObject);
var str_sql : string;
begin
  inherited;
  edCodProduto.SetFocus;
  str_sql:= ' SELECT MAT.MAT_001, '+
            ' MAT.MAT_004, '+
            ' MAT.MAT_003, '+
            ' CAT.CAT_002, '+
            ' coalesce(stm.quantidade, 0.0) as quantidade,  '+
            ' UNI.UNI_002, '+
            ' MAT.MAT_008 '+
            ' FROM MATERIAIS MAT '+
            ' LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND (UNI.UNI_001 = MAT.UNI_001) '+
            ' LEFT OUTER JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.CAT_001 = MAT.CAT_001)'+
            ' left join setor_estoque_material stm on stm.id_material=mat.mat_001 and stm.id_empresa=mat.emp_001 and stm.id_setor=mat.id_setor ';

   frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
      str_sql,
      CriaIntegerArray([1,2,3,4,5,6]),
      CriaStringArray(['Código', 'Produto', 'Categoria','Qtd. Estoque', 'Unidade', 'Preço' ]),
      1, 1, ' mat.sit_001=4 and utiliza_combo=false and MAT.emp_001='+IntToStr(RecProj.iEmp), 800, 500);
   frmBuscaRegistro.ShowModal;
   if frmBuscaRegistro.Tag=1 then
     edCodProduto.Text:=frmBuscaRegistro.valor_retorno;
   frmBuscaRegistro.Free;
   edCodProdutoExit(nil);
end;

end.
