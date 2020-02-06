unit uDetalheFormaPgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, JvDataSource,
  Data.DB, MemDS, DBAccess, Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxGroupBox, cxRadioGroup, cxDBEdit, Vcl.StdCtrls, AdvGroupBox,
  JvExStdCtrls, JvCombobox, JvDBCombobox, cxCheckBox, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxMaskEdit, cxSpinEdit, cxButtonEdit, Vcl.DBActns,
  System.Actions, Vcl.ActnList;

type
  TfrmDetalheFormaPgto = class(TfrmModeloCadastroSimples)
    qrCadastrofor_001: TIntegerField;
    qrCadastroemp_001: TIntegerField;
    qrCadastrofor_002: TWideStringField;
    qrCadastrodat_001_1: TDateTimeField;
    qrCadastrodat_001_2: TDateTimeField;
    qrCadastrousu_001_1: TIntegerField;
    qrCadastrousu_001_2: TIntegerField;
    qrCadastrobandeira_cartao: TWideStringField;
    qrCadastrosituacao: TWideStringField;
    qrCadastrosfi_codigo: TIntegerField;
    qrCadastrob_fiado: TBooleanField;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    JvDBComboBox1: TJvDBComboBox;
    Label5: TLabel;
    AdvGroupBox4: TAdvGroupBox;
    cxDBRadioGroup1: TcxDBRadioGroup;
    qrCadastrosit_001: TIntegerField;
    qrCadastroid_conta: TIntegerField;
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
    acBuscaConta: TAction;
    AdvGroupBox1: TAdvGroupBox;
    edCodConta: TcxDBButtonEdit;
    lbConta: TLabel;
    cxFiado: TcxDBCheckBox;
    Label4: TLabel;
    qrCadastrob_devolucao: TBooleanField;
    cxDBCheckBox1: TcxDBCheckBox;
    qrCadastrocodigo_ecf: TIntegerField;
    Label6: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure acBuscaContaExecute(Sender: TObject);
    procedure qrCadastroid_contaChange(Sender: TField);
    procedure qrCadastroAfterScroll(DataSet: TDataSet);
    procedure qrCadastroAfterOpen(DataSet: TDataSet);
    procedure dsCadastroStateChange(Sender: TObject);
    procedure qrCadastrob_fiadoChange(Sender: TField);
    procedure cxFiadoClick(Sender: TObject);
    procedure qrCadastroBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheFormaPgto: TfrmDetalheFormaPgto;

implementation

{$R *.dfm}

uses uFuncoes, Funcao_DB, uMenu, uBuscaRegistro;

procedure TfrmDetalheFormaPgto.acBuscaContaExecute(Sender: TObject);
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
    0, 1, ' id_situacao=4 and id_empresa='+IntToStr(RecProj.iEmp));
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
    qrCadastro.FieldByName('id_conta').value:= frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.Free;
end;

procedure TfrmDetalheFormaPgto.cxFiadoClick(Sender: TObject);
begin
  inherited;
  edCodConta.Enabled := cxFiado.Checked ;
end;

procedure TfrmDetalheFormaPgto.dsCadastroStateChange(Sender: TObject);
begin
  inherited;
  edCodConta.Enabled := dsCadastro.State in [dsInsert,dsEdit]; // Habilita o Campo de buscaConta quando a tabela estiver pronta para ser utilizada
  if dsCadastro.State in [dsInsert,dsEdit] then
     edCodConta.Enabled := cxFiado.Checked
  else
    edCodConta.Enabled := False;
end;

procedure TfrmDetalheFormaPgto.qrCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qrCadastroid_contaChange(nil);
end;

procedure TfrmDetalheFormaPgto.qrCadastroAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qrCadastroid_contaChange(nil);
end;

procedure TfrmDetalheFormaPgto.qrCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrCadastro.FieldByName('b_fiado').AsBoolean then
  begin
    if qrCadastro.FieldByName('id_conta').IsNull then
    begin
      Application.MessageBox(pchar('Informe o tipo de conta para Fiado!'), 'Atenção', MB_ICONINFORMATION);
      if edCodConta.CanFocus then edCodConta.SetFocus;
      abort;
    end
  end;
end;

procedure TfrmDetalheFormaPgto.qrCadastrob_fiadoChange(Sender: TField);
begin
  inherited;
  edCodConta.Enabled := qrCadastro.FieldByName('b_fiado').AsBoolean;
end;

procedure TfrmDetalheFormaPgto.qrCadastroid_contaChange(Sender: TField);
var str_sql, nome_conta : string;
begin
  inherited;
  if not qrCadastro.FieldByName('id_conta').isnull then
  begin
    str_sql := format('select descricao from conta where id_situacao=4 and id_conta=%d and id_empresa=%d',
                      [qrCadastro.FieldByName('id_conta').asinteger, recproj.iEmp]);
    if not BuscaCampo(nome_conta, str_sql, 'Conta') then
    begin
      lbConta.Caption := '';
      if qrCadastro.State in [dsEdit,dsInsert] then
        abort;
    end
    else
    begin
      lbConta.Caption := nome_conta;
    end;

  end
  else
  begin
      lbConta.Caption := '';
  end;

end;

procedure TfrmDetalheFormaPgto.qrCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrCadastro.FieldByName('for_001').AsInteger := NovoId('formapgto', 'for_001', RecProj.iEmp, 'emp_001');
  qrCadastro.FieldByName('dat_001_1').AsDateTime := date + time;
  qrCadastro.FieldByName('sit_001').AsInteger :=4;
  qrCadastro.FieldByName('usu_001_1').AsInteger := recproj.iUsuario;
  qrCadastro.FieldByName('emp_001').AsInteger := recproj.iEmp;
  qrCadastro.FieldByName('b_fiado').asboolean := false;
  qrCadastro.FieldByName('b_devolucao').asboolean := false;
  qrCadastro.FieldByName('bandeira_cartao').asstring := 'O';
  qrCadastro.FieldByName('codigo_ecf').AsInteger :=1;

end;

end.
