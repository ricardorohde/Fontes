unit uControleContasPagarEditar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, JvDataSource,
  Data.DB, MemDS, DBAccess, Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxCurrencyEdit, cxDBEdit, Vcl.DBCtrls, Vcl.StdCtrls, JvExStdCtrls,
  JvCombobox, JvDBCombobox, cxButtonEdit, Vcl.DBActns, System.Actions,
  Vcl.ActnList, cxSpinEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmControleContasPagarEditar = class(TfrmModeloCadastroSimples)
    qrCadastroid_cpagar: TIntegerField;
    qrCadastroid_empresa: TIntegerField;
    qrCadastrodata: TDateTimeField;
    qrCadastroid_fornecedor: TIntegerField;
    qrCadastroid_conta: TIntegerField;
    qrCadastronota: TIntegerField;
    qrCadastrodescricao: TWideStringField;
    qrCadastrodata_vencimento: TDateField;
    qrCadastrodocumento: TWideStringField;
    qrCadastroespecie: TIntegerField;
    qrCadastrovalor: TFloatField;
    qrCadastroid_situacao: TIntegerField;
    Label1: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label2: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label4: TLabel;
    edDataVencimento: TcxDBDateEdit;
    Label5: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label6: TLabel;
    ActionList1: TActionList;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetRefresh1: TDataSetRefresh;
    act_confirmar: TAction;
    act_cancelar: TAction;
    acBuscaFornecedor: TAction;
    acBuscaConta: TAction;
    edCodFornecedor: TcxDBButtonEdit;
    Label7: TLabel;
    edCodConta: TcxDBButtonEdit;
    Label8: TLabel;
    cbFormaPagamento: TJvDBComboBox;
    Label9: TLabel;
    qrCadastronomeforn: TWideStringField;
    qrCadastronomeconta: TWideStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    edValor: TcxDBCurrencyEdit;
    procedure acBuscaContaExecute(Sender: TObject);
    procedure qrCadastroid_contaChange(Sender: TField);
    procedure acBuscaFornecedorExecute(Sender: TObject);
    procedure qrCadastroid_fornecedorChange(Sender: TField);
    procedure btCancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure qrCadastroBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControleContasPagarEditar: TfrmControleContasPagarEditar;

implementation

{$R *.dfm}

uses uBuscaRegistro, uFuncoes, uMenu, Funcao_DB;

procedure TfrmControleContasPagarEditar.acBuscaContaExecute(Sender: TObject);
var str_sql : string;
begin
  inherited;
  edCodConta.SetFocus;
  str_sql:= ' select id_conta, descricao, '+
            ' cast(fn_situacoes(id_situacao) as varchar(100)) as situacao from conta ';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
    str_sql,
    CriaIntegerArray([0,1,2]) ,
    CriaStringArray(['Código', 'Conta', 'Status' ]),
    0, 1, ' id_situacao=4 and b_pagar and id_empresa='+IntToStr(RecProj.iEmp));
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
    qrcadastro.FieldByName('id_conta').value:= frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.Free;
end;

procedure TfrmControleContasPagarEditar.acBuscaFornecedorExecute(
  Sender: TObject);
var str_sql : string;
begin
  inherited;
  edCodFornecedor.SetFocus;

  str_sql:= 'select id_fornecedor, nome_fantasia, razao_social, ' +
           ' cast(case when tipo_pessoa=''J'' then ''Jurídica'' else ''Física'' end as varchar(10)) as tipo_p, '+
           ' cast(fn_situacoes(id_situacao) as varchar(100)) as situacao from fornecedor ';

   frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
      str_sql,
      CriaIntegerArray([0,1,2,3,4]) ,
      CriaStringArray(['Código', 'Fornecedor', 'Razão Social','Tipo', 'Status' ]),
      0, 1, ' id_situacao=4 and id_empresa='+IntToStr(RecProj.iEmp), 800, 500);
   frmBuscaRegistro.ShowModal;
   if frmBuscaRegistro.Tag=1 then
     qrcadastro.FieldByName('id_fornecedor').value:= frmBuscaRegistro.valor_retorno;
   frmBuscaRegistro.Free;
end;

procedure TfrmControleContasPagarEditar.btCancelarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmControleContasPagarEditar.btSalvarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmControleContasPagarEditar.qrCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrCadastro.FieldByName('valor').AsFloat<=0 then
  begin
    Application.MessageBox('Valor inválido!', 'Atenção', MB_ICONINFORMATION);
    if edValor.CanFocus then  edValor.setfocus;
    abort;
  end;

  if qrCadastro.FieldByName('data_vencimento').asdatetime<qrCadastro.FieldByName('data').asdatetime then
  begin
    Application.MessageBox('A data de vencimento não pode ser inferior à data do lançamento da conta!', 'Atenção', MB_ICONINFORMATION);
    if edDataVencimento.CanFocus then  edDataVencimento.setfocus;
    abort;
  end;
end;

procedure TfrmControleContasPagarEditar.qrCadastroid_contaChange(
  Sender: TField);
var str_sql, nome_conta : string;
begin
  inherited;
  if not qrcadastro.FieldByName('id_conta').isnull then
  begin
    str_sql := format('select descricao from conta where b_pagar and id_situacao=4 and id_conta=%d and id_empresa=%d',
                      [qrcadastro.FieldByName('id_conta').asinteger, recproj.iEmp]);
    if not BuscaCampo(nome_conta, str_sql, 'Conta') then
    begin
      abort;
    end
    else
    begin
      qrcadastro.FieldByName('nomeconta').asstring := nome_conta;
    end;

  end
  else
  begin
    Application.MessageBox('É necessário informar uma conta!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;
end;

procedure TfrmControleContasPagarEditar.qrCadastroid_fornecedorChange(
  Sender: TField);
var str_sql, nome_forn : string;
begin
  inherited;
  if not qrcadastro.FieldByName('id_fornecedor').isnull then
  begin
    str_sql := format('select nome_fantasia from fornecedor where id_fornecedor=%d and id_empresa=%d',
                      [qrcadastro.FieldByName('id_fornecedor').asinteger, recproj.iEmp]);

    if not BuscaCampo(nome_forn, str_sql, 'Conta') then
    begin
      abort;
    end
    else
    begin
      qrcadastro.FieldByName('nomeforn').asstring := nome_forn;
    end;

  end
  else
  begin
    Application.MessageBox('É necessário informar um fornecedor!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;
end;

end.
