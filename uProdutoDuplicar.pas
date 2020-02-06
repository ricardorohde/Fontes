unit uProdutoDuplicar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.StdCtrls, JvExStdCtrls,
  JvEdit, JvValidateEdit, AdvGlowButton, Vcl.ExtCtrls, AdvPanel, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Grids, Vcl.DBGrids, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit,
  cxDBEdit;

type
  TfrmProdutoDuplicar = class(TfrmModelo)
    btConfirma: TAdvGlowButton;
    btCancela: TAdvGlowButton;
    edCodigo: TEdit;
    edDescricao: TEdit;
    edQtdeEstoque: TJvValidateEdit;
    edValorCusto: TJvValidateEdit;
    edValorVenda: TJvValidateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    qrMaterialInsercao: TUniQuery;
    Label29: TLabel;
    edValorporcentagem: TJvValidateEdit;
    Label7: TLabel;
    procedure btCancelaClick(Sender: TObject);
    constructor Create (sender : Tcomponent ; id_material : integer);
    procedure FormDestroy(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure edValorCustoClick(Sender: TObject);
    procedure edValorVendaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edValorporcentagemKeyPress(Sender: TObject; var Key: Char);
    procedure edQtdeEstoqueKeyPress(Sender: TObject; var Key: Char);
    procedure calculomargem(Tipo: string);
    procedure edValorCustoChange(Sender: TObject);
    procedure edValorVendaChange(Sender: TObject);
  private
     calculando_valores:boolean;

  public
    { Public declarations }
  end;

var
  frmProdutoDuplicar: TfrmProdutoDuplicar;

implementation

{$R *.dfm}

uses uDetalheProduto, uMenu, Funcao_DB;

procedure TfrmProdutoDuplicar.btConfirmaClick(Sender: TObject);
var desc_prod,  str_sql : string;
    i, id, id_original : integer;
begin
  inherited;

  if trim(edCodigo.Text)=''  then
  begin
    application.MessageBox('Código não informado!', 'Atenção', MB_ICONINFORMATION + MB_OK);
    edCodigo.SetFocus;
    abort;
  end;

  if trim(edDescricao.Text)=''  then
  begin
    application.MessageBox('Descrição não informada!', 'Atenção', MB_ICONINFORMATION + MB_OK);
    edDescricao.SetFocus;
    abort;
  end;

  if (edValorVenda.Value<0.01) then
  begin
    application.MessageBox('Valor de venda não informado!', 'Atenção', MB_ICONINFORMATION + MB_OK);
     edvalorvenda.SetFocus;
     abort;
  end;

 // 20/10/2017  Rafael
  str_sql := ' select mat_003 from materiais where emp_001='+IntToStr(RecProj.iEmp) +
             ' and mat_004='+ QuotedStr(trim(edCodigo.Text));
  if BuscaCampo(desc_prod, str_sql,'', false )  then
  begin
    application.MessageBox(pchar('Este código já foi cadastrado para o produto: '+#13#10 + desc_prod ), 'Atenção', MB_ICONINFORMATION + MB_OK);
    edCodigo.SetFocus;
    abort;
  end;

  qrMaterialInsercao.append;
  //duplica os campos do cadastro de produto
  for I := 0 to qrMaterialInsercao.FieldCount-1 do
  begin
    if qrMaterialInsercao.Fields[i].FieldName<>'' then
    begin
         qrMaterialInsercao.Fields[i].ReadOnly := false;
      try
        qrMaterialInsercao.Fields[i]:= frmDetalheProduto.qrDetalhe.FieldByName(qrMaterialInsercao.Fields[i].FieldName);
      except end;
       qrMaterialInsercao.Fields[i].Required := false;
    end;
  end;

  id_original := qrMaterialInsercao.Fieldbyname('mat_001').AsInteger;
  //busca o ultimo id de material e replica no codigo
  str_sql := 'select coalesce(max(mat_001),0)+1 from materiais where emp_001='+IntToStr(RecProj.iEmp);
  BuscaCampo(id, str_sql, '', false);
  qrMaterialInsercao.Fieldbyname('mat_001').AsInteger := id;
  //adiciona os campos que não duplicam
  qrMaterialInsercao.Fieldbyname('dat_001_1').AsDateTime := DataServer(frmMenu.conexao);
  qrMaterialInsercao.Fieldbyname('usu_001_1').AsInteger := recProj.iUsuario;
  qrMaterialInsercao.Fieldbyname('mat_012').AsFloat := edValorCusto.value; //CUSTO
  qrMaterialInsercao.Fieldbyname('mat_008').AsFloat := edValorVenda.value; // Valor Venda
  qrmaterialInsercao.FieldByName('mat_018').AsFloat := edValorporcentagem.Value; // Margem de lucro
  qrMaterialInsercao.Fieldbyname('mat_003').Asstring := edDescricao.Text; // Descrição do produto
  qrMaterialInsercao.Fieldbyname('mat_004').Asstring := edCodigo.Text; // Código interno

 if  qrMaterialInsercao.Fieldbyname('mtp_001').isnull then qrMaterialInsercao.Fieldbyname('mtp_001').AsInteger:= 1;
  qrMaterialInsercao.post;

  //copia a composição do material
  str_sql:=format(' insert into materiais_composicao (id_material, id_empresa, quantidade, id_composicao) ' +
                  ' (select %d as id_material, id_empresa, quantidade, id_composicao  '+
                  ' from materiais_composicao where id_material=%d and id_empresa=1) ',[id, id_original, recproj.iemp]);
  ExecutaComandoSQL(str_sql);

  //copia os opcionais do material
  str_sql:=format(' insert into materiais_opcional (id_material, id_empresa, id_opcional) ' +
                  ' (select %d as id_material, id_empresa, id_opcional  '+
                  ' from materiais_opcional where id_material=%d and id_empresa=1) ',[id, id_original, recproj.iemp]);
  ExecutaComandoSQL(str_sql);

  //insere a quantidade no setor de estoque
  str_sql:=' insert into setor_estoque_material (id_material, id_setor, id_empresa, quantidade) ' +
           ' values (:id_material,:id_setor,:id_empresa,:quantidade);';
  ExecutaComandoSQL(str_sql, vararrayof([id,
                                         qrMaterialInsercao.Fieldbyname('id_setor').AsInteger,
                                         qrMaterialInsercao.Fieldbyname('emp_001').AsInteger,
                                         edQtdeEstoque.value ]));
                                         self.close;
end;

constructor TfrmProdutoDuplicar.Create (sender : Tcomponent ; id_material : integer);
var cod_ref : integer;
begin
  inherited Create(sender);
  frmDetalheProduto:= tfrmDetalheProduto.Create(self, id_material);
  //copia as informações do material para a query de cópia
  qrMaterialInsercao.SQL := frmDetalheProduto.qrDetalhe.SQL;
  qrMaterialInsercao.SQLInsert := frmDetalheProduto.qrDetalhe.SQLInsert;
  qrMaterialInsercao.Open;

  //busca o ultimo id de material e replica no codigo ref
  BuscaCampo(cod_ref, 'select coalesce(max(mat_001),0)+1 from materiais where emp_001='+IntToStr(RecProj.iEmp), '', false);
  edCodigo.Text := inttostr(cod_ref);
  edDescricao.Text := frmDetalheProduto.qrDetalhe.FieldByName('mat_003').AsString;
  edValorCusto.Value:= frmDetalheProduto.qrDetalhe.FieldByName('mat_012').asfloat;
  edValorVenda.value := frmDetalheProduto.qrDetalhe.FieldByName('mat_008').asfloat;
  edValorporcentagem.Value:=frmDetalheProduto.qrDetalhe.FieldByName('mat_018').AsFloat;
end;


procedure TfrmProdutoDuplicar.edQtdeEstoqueKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key in ['-']  then key:=#0
end;

procedure TfrmProdutoDuplicar.calculomargem(Tipo: string);
begin
  if (edValorCusto.Value=0) and (edValorporcentagem.Value>0) and (edValorVenda.Value>0) then
  begin
    edValorVenda.Value:= edValorVenda.Value;
    edValorCusto.Value:= 0;
    edValorporcentagem.Value:= 0
  end;

  if Tipo = 'V' then
  begin
    if (edValorCusto.Value > 0) and (edValorporcentagem.Value > 0) then
    begin
      edValorVenda.Value := edValorCusto.Value + (edValorCusto.Value * edValorporcentagem.Value / 100);
    end;
  end
  else if Tipo = 'P' then
  begin
    if (edValorCusto.Value > 0) and (edValorVenda.Value > 0) then
    begin
      edValorporcentagem.Value := ((edValorVenda.Value / edValorCusto.Value) -1) * 100;
    end;
  end;
end;

procedure TfrmProdutoDuplicar.edValorCustoChange(Sender: TObject);
begin
  inherited;
//  calculomargem('V');

  if not calculando_valores then
  begin
    calculando_valores:= True;

    if (edValorCusto.Value = 0) and (edValorporcentagem.Value > 0) then
      edValorporcentagem.Value:= 0;

    if (edValorCusto.Value > 0) and (edValorporcentagem.Value > 0) then
      edValorVenda.Value := edValorCusto.Value + (edValorCusto.Value * edValorporcentagem.Value / 100);

    calculando_valores:= False;
  end;
end;

procedure TfrmProdutoDuplicar.edValorCustoClick(Sender: TObject);
begin
  inherited;
  edValorCusto.SelectAll;
end;

procedure TfrmProdutoDuplicar.edValorporcentagemKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key in ['-']  then key:=#0
end;

procedure TfrmProdutoDuplicar.edValorVendaChange(Sender: TObject);
begin
  inherited;

  if not calculando_valores then
  begin
    calculando_valores:= True;

    if (edValorCusto.Value > 0) and (edValorVenda.Value >= 0) then
      edValorporcentagem.Value := ((edValorVenda.Value / edValorCusto.Value) -1) * 100 ;
     calculando_valores:= False;
  end;
end;

procedure TfrmProdutoDuplicar.edValorVendaClick(Sender: TObject);
begin
  inherited;
  edValorVenda.SelectAll;
end;

procedure TfrmProdutoDuplicar.FormDestroy(Sender: TObject);
begin
  inherited;
  frmDetalheProduto.Free;
end;

procedure TfrmProdutoDuplicar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmProdutoDuplicar.btCancelaClick(Sender: TObject);
begin
  inherited;
  close;
end;

end.
