unit uMovimentoEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, AdvGlowButton,
  Vcl.ExtCtrls, Vcl.StdCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, AdvGroupBox,
  AdvPanel, AdvOfficeButtons, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ActnList, cxTextEdit,
  cxMaskEdit, cxButtonEdit, Data.DB, MemDS, DBAccess, Uni, cxCheckBox,
  System.Actions, System.Math, dxSkinsCore, dxSkinsDefaultPainters;

type
  TfrmMovimentoEstoque = class(TForm)
    AdvPanel1: TAdvPanel;
    pnTopo: TPanel;
    lbTipoMovimentoCaixa: TLabel;
    pnBotoes: TFlowPanel;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    ActionList1: TActionList;
    acPesquisarItem: TAction;
    qrAux1: TUniQuery;
    Label6: TLabel;
    AdvGroupBox3: TAdvGroupBox;
    Label3: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    lbProduto: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    edQuantidade: TJvValidateEdit;
    edObservacao: TEdit;
    UpDown1: TUpDown;
    rgTipoMovimento: TAdvGroupBox;
    rbSaida: TAdvOfficeRadioButton;
    rbEntrada: TAdvOfficeRadioButton;
    edCodProduto: TcxButtonEdit;
    ckAtualizaItensComposicao: TcxCheckBox;
    edValorCusto: TJvValidateEdit;
    edValorVenda: TJvValidateEdit;
    Label8: TLabel;
    edMargem: TJvValidateEdit;
    Label9: TLabel;
    btnentradanota: TAdvGlowButton;
    acPesquisarFornecedor: TAction;
    lbFornecedor: TLabel;
    edFornecedor: TcxButtonEdit;
    dtpData: TDateTimePicker;
    Label10: TLabel;
    lbSetor: TLabel;
    edSetor: TcxButtonEdit;
    acPesquisarSetor: TAction;
    procedure acPesquisarItemExecute(Sender: TObject);
    procedure edCodProdutoExit(Sender: TObject);
    constructor Create(sender : Tcomponent; id_prod :  integer = 0 ; tipo : string = 'M');
    procedure btConfirmaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btCancelaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure acPesquisarFornecedorExecute(Sender: TObject);
    procedure edFornecedorExit(Sender: TObject);
    procedure edValorCustoChange(Sender: TObject);
    procedure edValorVendaChange(Sender: TObject);
    procedure edMargemChange(Sender: TObject);
    procedure edValorCustoKeyPress(Sender: TObject; var Key: Char);
    procedure edValorVendaKeyPress(Sender: TObject; var Key: Char);
    procedure btnentradanotaClick(Sender: TObject);
    procedure edSetorExit(Sender: TObject);
    procedure acPesquisarSetorExecute(Sender: TObject);
  private
    { Private declarations }
    id_fornecedor : integer;
    id_produto : integer;
    id_setor : integer;
    tipo_item_mov:string;
    movimento_unico, calculando_valores, utiliza_combo : boolean;
  public
    { Public declarations }
  end;

var
  frmMovimentoEstoque: TfrmMovimentoEstoque;

implementation

{$R *.dfm}

uses uBuscaRegistro, uFuncoes, uMenu, Funcao_DB,
  uControleNotaFiscalEntradaImportacao, uBuscafornecedores, uDetalheProduto;

procedure TfrmMovimentoEstoque.btCancelaClick(Sender: TObject);
begin
  self.Tag:=0; //identifica que o usuario cancelou a ação
  close;
end;

procedure TfrmMovimentoEstoque.btConfirmaClick(Sender: TObject);
var tipo_mov  : string;
begin
  if id_produto = 0  then
  begin
    Application.MessageBox('Não foi informado o produto!', 'Atenção', MB_ICONINFORMATION);
    edCodProduto.SetFocus;
    exit;
  end;

  if edQuantidade.Value <= 0 then
  begin
    Application.MessageBox('Quantidade inválida!', 'Atenção', MB_ICONINFORMATION);
    edQuantidade.SetFocus;
    exit;
  end;

  if rbSaida.Checked then
    tipo_mov := 'S'
  else
    tipo_mov := 'E' ;

  //tudo ok, insere o movimento...
  if id_setor<=0 then
  begin
    Application.MessageBox('Não foi informado o setor que receberá o movimento!', 'Atenção', MB_ICONINFORMATION);
    if edSetor.CanFocus then edSetor.SetFocus;
    exit;
  end;

  InserirMovimentoProduto(id_produto, edQuantidade.AsFloat, tipo_mov,
              edObservacao.Text, RecProj.iUsuario, 0, 0, tipo_item_mov,
              ckAtualizaItensComposicao.Checked, id_fornecedor,
              edvalorcusto.value, edvalorvenda.value, dtpData.Date,true, utiliza_combo, id_setor);

  if movimento_unico then
    close
  else
  begin
    Application.MessageBox('Movimento de estoque inserido com sucesso!', 'Atenção', MB_ICONINFORMATION);
    edCodProduto.Clear;
    edFornecedor.Clear;
    edSetor.Clear;
    edValorCusto.Clear;
    edValorVenda.Clear;
    edMargem.Clear;
    edCodProdutoExit(nil);
    edFornecedorExit(nil);
    edSetorExit(nil);
    edCodProduto.SetFocus;
    edQuantidade.Value:=1.0;
  end;
  frmdetalheproduto.lblUltimaalteracao.Caption:='Última alteração desse produto foi em: '+FormatDateTime('dd/mm/yyyy',Date);
end;

procedure TfrmMovimentoEstoque.btnentradanotaClick(Sender: TObject);
begin
  frmControleNotaFiscalEntradaImportacao := TfrmControleNotaFiscalEntradaImportacao.Create(self, recproj.iUsuario);
  frmControleNotaFiscalEntradaImportacao.ShowModal;
  frmControleNotaFiscalEntradaImportacao.Free;
end;

procedure TfrmMovimentoEstoque.Button1Click(Sender: TObject);
begin
  showmessage('') ;
end;

constructor TfrmMovimentoEstoque.Create(sender: TComponent; id_prod: Integer = 0; tipo : string = 'M');
var str_sql, str_aux : string;
    acesso : boolean;
begin
  inherited Create(sender);
  calculando_valores :=false;
  lbFornecedor.Caption :='';
  lbProduto.Caption :='';
  lbSetor.Caption :='';

  buscacampo( acesso, 'select b_alteracao_estoque from usuarios where usu_001=' + inttostr(recproj.iUsuario), '', false);

  frmMenu.VerificaPermissaoAcesso(acesso);

  id_produto := id_prod;
  tipo_item_mov:=uppercase(tipo);

  if id_produto>0 then
  begin
    movimento_unico := true;
    if tipo_item_mov = 'C' then  //Item de composicao
    begin
      str_sql := ' select id_composicao, descricao from composicao where '+
                 ' id_composicao='+IntToStr(id_produto) +
                 ' and id_empresa=' + IntToStr(RecProj.iEmp);
    end
    else //Material
    begin
      str_sql := ' select mat_004, mat_003 from materiais where '+
                 ' mat_001='+IntToStr(id_produto) +
                 ' and emp_001=' + IntToStr(RecProj.iEmp);
    end;

    ExecutaConsultaSQL(qrAux1, str_sql);

    if qrAux1.RecordCount<1 then
    begin
      Application.MessageBox('Item não encontrado!', 'Atenção', MB_ICONINFORMATION);
      abort;
    end
    else
    begin
      edCodProduto.Text := qrAux1.Fields[0].AsString;
      edCodProdutoExit(nil);
      edCodProduto.Enabled:=false;
    end;
  end
  else
  begin
    movimento_unico := false;
  end;
  ckAtualizaItensComposicao.Visible := tipo_item_mov = 'M';
  dtpData.Date := Date;

  //bUsuario.Caption:= RecProj.sUsuario;     //Desabilitei essa opção pois mostrava no form
  //DateTimeToString(str_aux, 'dd/mm/yyyy hh:nn', Date + Time);
  //lbData.Caption := str_aux;    // Comentado esse codigo por Rafael 15/04/2017

end;

procedure TfrmMovimentoEstoque.acPesquisarSetorExecute(Sender: TObject);
var str_sql : string;
begin
  edsetor.SetFocus;

  str_sql:=' select id_setor, descricao, fn_situacoes(id_situacao) from setor_estoque ';

  frmBuscaRegistro := TfrmBuscaRegistro.CreateForm(self, str_sql,
    vararrayof([0,1,2]) , //Campos visiveis
    vararrayof(['Código', 'Setor', 'Status' ]),//Caption dos campos
    0, 1, ' id_situacao=4 and id_empresa='+IntToStr(RecProj.iEmp));
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then edSetor.Text:=frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.Free;

  edSetorExit(nil);
end;

procedure TfrmMovimentoEstoque.acPesquisarFornecedorExecute(Sender: TObject);
var str_sql : string;
    campos : Tarray<Integer>;

begin
  edFornecedor.SetFocus;
  //select de busca de fornecedor
  str_sql:= 'select id_fornecedor, '+
          'nome_fantasia, '+
          'razao_social, '+
          'id_situacao, '+
          'cast(fn_situacoes(id_situacao)as varchar(50)) as desc_status '+
          'from fornecedor ';

  frmBuscafornecedores := tfrmBuscafornecedores.CreateForm(self,
    str_sql, //select da busca
    vararrayof([0,1,2,4]), //índices dos campos visiveis na grid
    vararrayof(['Código', 'Nome Fantasia', 'Razão Social','Status' ]),//Caption dos campos
    0, //Índice da coluna da tabela (retorno)
    1, //Índice padrão de busca
    ' id_situacao=4 and id_empresa='+IntToStr(RecProj.iEmp), //Filtro where do select
    700, //Largura da janela
    550, //Altura da janela
    false); // Modo touch);
  frmBuscafornecedores.ShowModal;

  if frmBuscafornecedores.Tag=1 then
  edFornecedor.Text:=frmBuscafornecedores.valor_retorno;
  frmBuscafornecedores.Free;
  edFornecedorExit(nil);
end;

procedure TfrmMovimentoEstoque.acPesquisarItemExecute(Sender: TObject);
var str_sql : string;
begin
  edCodProduto.SetFocus;

  if tipo_item_mov = 'C' then  //Item de composicao
  begin
    str_sql:= ' select c.id_composicao,  '+
            ' c.descricao,    '+
            ' u.uni_003,  '+
            ' c.valor_custo, '+
            ' c.estoque_minimo '+
            ' from composicao c '+
            ' join unidades u on u.uni_001=c.id_unidade and u.emp_001=c.id_empresa ';

    frmBuscafornecedores := tfrmBuscafornecedores.CreateForm(self, str_sql,
      vararrayof([0,1,2,3,4]) , //Campos visiveis
      vararrayof(['Código', 'Item', 'Unidade','Valor Custo', 'Estoque Min.' ]),//Caption dos campos
      0, 1, ' c.id_situacao=4 and c.id_empresa='+IntToStr(RecProj.iEmp));
    frmBuscafornecedores.ShowModal;
    if frmBuscafornecedores.Tag=1 then edCodProduto.Text:=frmBuscafornecedores.valor_retorno;
  end
  else //.. Material
  begin
    str_sql:= ' select mat.mat_001, '+
              ' mat.mat_004, '+
              ' mat.mat_003, '+
              ' cat.cat_002, '+
              ' stm.quantidade, '+
              ' uni.uni_002, '+
              ' mat.mat_008 '+
              ' from materiais mat '+
              ' left outer join unidades uni on (uni.emp_001 = mat.emp_001) and (uni.uni_001 = mat.uni_001) '+
              ' left outer join categoria cat on (cat.emp_001 = mat.emp_001) and (cat.cat_001 = mat.cat_001)' +
              ' left join setor_estoque_material stm on stm.id_material=mat.mat_001 and stm.id_empresa=mat.emp_001 and stm.id_setor=mat.id_setor ';

     frmBuscafornecedores := tfrmBuscafornecedores.CreateForm(self,
        str_sql,
        CriaIntegerArray([1,2,3,4,5,6]),
        CriaStringArray(['Código', 'Produto', 'Categoria','Qtd. Estoque', 'Unidade', 'Preço' ]),
        1, 1, ' mat.sit_001=4 and utiliza_combo=false and MAT.emp_001='+IntToStr(RecProj.iEmp), 800, 500);
     frmBuscafornecedores.ShowModal;
     if frmBuscafornecedores.Tag=1 then
       edCodProduto.Text:=frmBuscafornecedores.valor_retorno;
  end;

   frmBuscafornecedores.Free;
   edQuantidade.SetFocus;
end;

procedure TfrmMovimentoEstoque.edCodProdutoExit(Sender: TObject);
var str_sql : string;
  procedure limpa;
  begin
    lbProduto.Caption:='';
    id_produto := 0;
  end;
begin
  if edCodProduto.Text<>'' then
  begin
    if tipo_item_mov = 'C' then  //Item de composicao
    begin
      str_sql := ' select id_composicao as id_material, descricao, valor_custo, valor_custo as valor_venda, '+
                 ' 0.0 as margem , id_setor, false as utiliza_combo from composicao where '+
                 ' id_composicao='+edCodProduto.Text+
                 ' and id_empresa=' + IntToStr(RecProj.iEmp);
    end
    else
    begin
      str_sql := ' select mat_001 as id_material, mat_003 as descricao , id_setor, '+
                 ' mat_008 as valor_venda, mat_012 as valor_custo, mat_018 as margem, utiliza_combo '+
                 ' from materiais where utiliza_combo=false and mat_004='+
                  QuotedStr(trim(edCodProduto.Text))+
                 ' and emp_001=' + IntToStr(RecProj.iEmp);
    end;

    ExecutaConsultaSQL(qrAux1, str_sql);
    if qrAux1.RecordCount>0 then
    begin
      calculando_valores:=true;
      id_produto := qrAux1.FieldByName('id_material').AsInteger;
      lbProduto.Caption:= qrAux1.FieldByName('descricao').AsString;
      edValorCusto.Value :=qrAux1.fieldbyname('valor_custo').AsFloat;
      edValorVenda.Value :=qrAux1.fieldbyname('valor_venda').AsFloat;
      edMargem.Value :=qrAux1.fieldbyname('margem').AsFloat;
      edSetor.Text := qrAux1.FieldByName('id_setor').AsString;
      utiliza_combo:= qrAux1.FieldByName('utiliza_combo').AsBoolean;
      edSetorExit(nil);
    end
    else
    begin
      edValorCusto.Value :=0;
      edValorVenda.Value :=0;
      edMargem.Value :=0;
      utiliza_combo:= false;
      Application.MessageBox('Produto não encontrado!', 'Atenção', MB_ICONINFORMATION);
      edCodProduto.setfocus;
      limpa;
    end;
  end
  else
    limpa;
  calculando_valores:=false;
end;

procedure TfrmMovimentoEstoque.edFornecedorExit(Sender: TObject);
var str_sql : string;
  procedure limpa;
  begin
    lbfornecedor.Caption:='';
    edFornecedor.Clear;
    id_fornecedor := 0;
    abort;
  end;

begin
  if edFornecedor.Text<>'' then
  begin
    try
      id_fornecedor := strtoint(edFornecedor.Text);
    except
      id_fornecedor :=0;
      application.MessageBox('Codigo de fornecedor inválido!', 'Atenção', MB_ICONINFORMATION);
      limpa;
    end;

    str_sql := ' select id_fornecedor, nome_fantasia from fornecedor where id_situacao=4 and id_empresa= '+IntToStr(RecProj.iEmp) +
               ' and id_fornecedor='+edFornecedor.Text;
    ExecutaConsultaSQL(qrAux1, str_sql);   // Procedure de consulta no banco
    if qrAux1.RecordCount>0 then
    begin
      id_fornecedor := qrAux1.Fields[0].AsInteger;
      lbFornecedor.Caption:= qrAux1.Fields[1].AsString;
    end
    else
    begin
      Application.MessageBox('Fornecedor não encontrado!', 'Atenção', MB_ICONINFORMATION );
      edfornecedor.SetFocus;
      limpa;
    end;
  end
  else
    limpa;

end;

procedure TfrmMovimentoEstoque.edMargemChange(Sender: TObject);
begin
  if id_produto<>0 then
  begin
    if not calculando_valores then  //flag para evitar que entre em deadlock com os campos calculados envolvidos
    begin
      calculando_valores:=true;
      edValorVenda.value := edValorCusto.Value + (edValorCusto.Value * edmargem.value * 0.01) ;
      calculando_valores:=false;
    end;
  end;
end;

procedure TfrmMovimentoEstoque.edSetorExit(Sender: TObject);
var str_sql : string;

procedure limpa;
begin
  lbSetor.Caption:='';
  id_setor := 0;
end;
begin

  if trim(edSetor.Text)<>'' then
  begin
    try
      id_setor := strtoint(edSetor.Text);
    except
      limpa;
      Application.MessageBox('Código inválido!', 'Atenção', MB_ICONINFORMATION);
      abort;
    end;
    str_sql := ' select descricao from setor_estoque  where id_setor='+
               trim(edSetor.Text)+ ' and id_empresa=' + IntToStr(RecProj.iEmp);

    ExecutaConsultaSQL(qrAux1, str_sql);
    if qrAux1.RecordCount>0 then
    begin
      lbSetor.Caption:= qrAux1.FieldByName('descricao').AsString
    end
    else
    begin
      Application.MessageBox('Setor não encontrado!', 'Atenção', MB_ICONINFORMATION);
      limpa;
    end;

  end
  else
    limpa;

end;

procedure TfrmMovimentoEstoque.edValorCustoChange(Sender: TObject);
begin
   if id_produto<>0 then
  begin
    if not calculando_valores then  //flag para evitar que entre em deadlock com os campos calculados envolvidos
    begin
      if CompareValue(edValorCusto.Value,0.0)=0 then exit;
      calculando_valores:=true;
      //se a margem for 0, calcula a margem
      if  CompareValue(edmargem.value,0.0)=0 then
      begin
        edmargem.value := ((edValorVenda.Value - edValorCusto.Value) / edValorCusto.Value )*100;
      end
      else //senão calcula o valor de venda
      begin
        try
          edValorVenda.value := edValorCusto.Value + (edValorCusto.Value * edmargem.value * 0.01);
        except
          edValorCusto.value:= 0;
          edValorVenda.value:= 0;
          edMargem.value:= 0;
        end;
      end;
      calculando_valores:=false;
    end;
  end;
end;

procedure TfrmMovimentoEstoque.edValorCustoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['-']  then key:=#0
end;

procedure TfrmMovimentoEstoque.edValorVendaChange(Sender: TObject);
begin
  if id_produto<>0 then
  begin
    if not calculando_valores then  //flag para evitar que entre em deadlock com os campos calculados envolvidos
    begin
      if CompareValue(edValorCusto.Value,0.0)=0 then exit;
      calculando_valores:=true;
      edmargem.value := ((edValorVenda.Value - edValorCusto.Value) / edValorCusto.Value )*100;
      calculando_valores:=false;
    end;
  end;
end;

procedure TfrmMovimentoEstoque.edValorVendaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key in ['-']  then key:=#0
end;

procedure TfrmMovimentoEstoque.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then Perform(WM_NEXTDLGCTL, 0, 0);
end;

end.
