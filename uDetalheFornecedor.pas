unit uDetalheFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, Data.DB,
  JvDataSource, MemDS, DBAccess, Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxButtonEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  Vcl.StdCtrls, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.Mask, Vcl.DBCtrls,
  JvExControls, JvLabel, cxDropDownEdit, cxCalendar, cxGroupBox, cxRadioGroup,
  AdvGroupBox;

type
  TfrmDetalheFornecedor = class(TfrmModeloCadastroSimples)
    qrCadastroid_fornecedor: TIntegerField;
    qrCadastronome_fantasia: TWideStringField;
    qrCadastrorazao_social: TWideStringField;
    qrCadastroid_usuario_cadastro: TIntegerField;
    qrCadastroid_empresa: TIntegerField;
    qrCadastroendereco_logradouro: TWideStringField;
    qrCadastroendereco_numero: TWideStringField;
    qrCadastroendereco_bairro: TWideStringField;
    qrCadastroendereco_cidade: TWideStringField;
    qrCadastroendereco_uf: TWideStringField;
    qrCadastroendereco_cep: TWideStringField;
    qrCadastroendereco_complemento: TWideStringField;
    qrCadastrotelefone1: TWideStringField;
    qrCadastrotelefone2: TWideStringField;
    qrCadastrocelular1: TWideStringField;
    qrCadastrocelular2: TWideStringField;
    qrCadastroemail: TWideStringField;
    qrCadastrosite: TWideStringField;
    qrCadastrocnpj: TWideStringField;
    qrCadastronome_contato1: TWideStringField;
    qrCadastronome_contato2: TWideStringField;
    qrCadastrobanco: TWideStringField;
    qrCadastroagencia: TWideStringField;
    qrCadastroconta: TWideStringField;
    qrCadastrodata_cadastro: TDateTimeField;
    qrCadastrocpf: TWideStringField;
    qrCadastrotipo_pessoa: TWideStringField;
    qrCadastrocodigo_municipio: TWideStringField;
    qrCadastrocodigo_ibge: TWideStringField;
    qrCadastrocnae: TWideStringField;
    qrCadastroinscricao_estadual: TWideStringField;
    qrCadastroinscricao_municipal: TWideStringField;
    qrCadastroobservacoes: TWideMemoField;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label9: TLabel;
    Label10: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    edIdCep: TcxDBButtonEdit;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    Label12: TLabel;
    DBEdit2: TDBEdit;
    Label13: TLabel;
    DBEdit3: TDBEdit;
    Label14: TLabel;
    DBEdit4: TDBEdit;
    qrCadastroid_cidade: TIntegerField;
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
    acBuscaCEP: TAction;
    acBuscaCidade: TAction;
    edIDCidade: TcxDBButtonEdit;
    Label15: TLabel;
    DBEdit5: TDBEdit;
    Label16: TLabel;
    DBEdit6: TDBEdit;
    Label17: TLabel;
    DBEdit7: TDBEdit;
    Label18: TLabel;
    DBEdit8: TDBEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    JvLabel5: TJvLabel;
    AdvGroupBox1: TAdvGroupBox;
    cxDBRadioGroup1: TcxDBRadioGroup;
    Label19: TLabel;
    edCNPJ: TDBEdit;
    Label20: TLabel;
    edCPF: TDBEdit;
    Label21: TLabel;
    DBEdit11: TDBEdit;
    Label22: TLabel;
    DBEdit12: TDBEdit;
    Label23: TLabel;
    DBEdit13: TDBEdit;
    Label24: TLabel;
    DBEdit14: TDBEdit;
    Label25: TLabel;
    DBEdit15: TDBEdit;
    Label26: TLabel;
    DBEdit16: TDBEdit;
    Label27: TLabel;
    DBMemo1: TDBMemo;
    Label28: TLabel;
    DBEdit17: TDBEdit;
    Label29: TLabel;
    DBEdit18: TDBEdit;
    qrCadastroid_situacao: TIntegerField;
    Label30: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure acBuscaCEPExecute(Sender: TObject);
    procedure acBuscaCidadeExecute(Sender: TObject);
    procedure qrCadastrocpfChange(Sender: TField);
    procedure qrCadastrocnpjChange(Sender: TField);
    procedure qrCadastroid_cidadeChange(Sender: TField);
    procedure qrCadastroendereco_cepChange(Sender: TField);
    procedure cxDBRadioGroup1Click(Sender: TObject);
    procedure qrCadastrotipo_pessoaChange(Sender: TField);
    procedure qrCadastroBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheFornecedor: TfrmDetalheFornecedor;

implementation

{$R *.dfm}

uses uMenu, uBuscaRegistro, Funcao_DB, uFuncoes;

procedure TfrmDetalheFornecedor.acBuscaCEPExecute(Sender: TObject);
begin
  inherited;
  if qrCadastro.Active then
  begin
    if qrCadastro.State in [dsEdit,dsInsert] then
    begin
      edIdCep.SetFocus;
      frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
           ' SELECT CEP.CEP_001, CEP.CEP_002, CEP.CEP_004, CEP.CEP_003,   CID.CID_002, EST.EST_003, PAI.PAI_002 ' +
           ' FROM CEPS CEP '+
           ' LEFT OUTER JOIN CIDADES CID ON (CID.CID_001 = CEP.CID_001) '+
           ' LEFT OUTER JOIN ESTADOS EST ON (EST.EST_001 = CID.EST_001) '+
           ' LEFT OUTER JOIN PAISES PAI ON (PAI.PAI_001 = EST.PAI_001) ',
          vararrayof([1,2,3,4,5,6]) ,
          vararrayof(['CEP', 'Endereço', 'Bairro', 'Cidade', 'Estado', 'Pais']),
          1, 0);
      frmBuscaRegistro.ShowModal;
      if frmBuscaRegistro.Tag=1 then
        qrCadastro.FieldByName('endereco_cep').Value:=frmBuscaRegistro.valor_retorno;
      frmBuscaRegistro.Free;
    end;
  end;
end;

procedure TfrmDetalheFornecedor.acBuscaCidadeExecute(Sender: TObject);
begin
  inherited;
  if qrCadastro.Active then
  begin
    if qrCadastro.State in [dsEdit, dsInsert] then
    begin
      edIDCidade.SetFocus;
      frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
            ' SELECT CID.CID_001, CID.CID_002, EST.EST_003, PAI.PAI_002 '+
            ' FROM CIDADES CID '+
            ' LEFT OUTER JOIN ESTADOS EST ON (EST.EST_001 = CID.EST_001) '+
            ' LEFT OUTER JOIN PAISES PAI ON (PAI.PAI_001 = EST.PAI_001)',
          vararrayof([1,2,3]) ,
          vararrayof(['Cidade', 'Estado', 'Pais']),
          0, 0);
      frmBuscaRegistro.ShowModal;
      if frmBuscaRegistro.Tag=1 then
        qrCadastro.FieldByName('id_cidade').Value:=frmBuscaRegistro.valor_retorno;
      frmBuscaRegistro.Free;
    end;
  end;
end;

procedure TfrmDetalheFornecedor.cxDBRadioGroup1Click(Sender: TObject);
begin
  inherited;
  qrCadastrotipo_pessoaChange(nil);
end;

procedure TfrmDetalheFornecedor.qrCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrCadastro.FieldByName('tipo_pessoa').AsString='F' then
  begin
    if qrCadastro.FieldByName('cpf').isnull then
    begin
      Application.MessageBox(Pchar('O CPF não foi informado!' ), 'Atenção', MB_ICONQUESTION);
      if edCPF.CanFocus then edCPF.SetFocus;
      abort;
    end;
  end
  else
  begin
    if qrCadastro.FieldByName('cnpj').isnull then
    begin
      Application.MessageBox(Pchar('O CNPJ não foi informado!' ), 'Atenção', MB_ICONQUESTION);
      if edCNPJ.CanFocus then edCNPJ.SetFocus;
      abort;
    end;
  end;

end;

procedure TfrmDetalheFornecedor.qrCadastrocnpjChange(Sender: TField);
var aux : string;
begin
  inherited;
  if Sender.IsNull then exit;

  if not Valida_CNPJ(Sender.AsString) then
  begin
    if not (Application.MessageBox(Pchar('O CNPJ informado é inválido! Deseja continuar com o registro mesmo assim?' ),
                                   'Atenção', MB_ICONQUESTION + MB_YESNO) = mrYes)  then
    begin
      Sender.value:=null;
      abort;
    end;
  end;


  if  BuscaCampo(aux, 'select concat(id_fornecedor, '' - '', nome_fantasia) as nome_forn  from fornecedor where  '+
  ' replace(replace(replace(cnpj, ''.'', ''''),'' '', ''''), ''-'', '''') '+
  ' like  replace(replace(replace(' + QuotedStr(Sender.AsString) +', ''.'', ''''),'' '', ''''), ''-'', '''') ' +
  ' and id_empresa='+ IntToStr(RecProj.iEmp), 'Fornecedor', false) then
  begin
    if not (Application.MessageBox(Pchar('O CNPJ informado já está cadastrado para o fornecedor: '#13#10 + aux +#13#10+
                                  'Deseja continuar com o registro mesmo assim?' ), 'Atenção', MB_ICONQUESTION + MB_YESNO) = mrYes)  then
    begin
      Sender.value:=null;
      abort;
    end;
  end
end;

procedure TfrmDetalheFornecedor.qrCadastrocpfChange(Sender: TField);
var aux : string;
begin
  inherited;
  if Sender.IsNull then exit;

  if not Valida_CPF(Sender.AsString) then
  begin
    if not (Application.MessageBox(Pchar('O CPF informado é inválido! Deseja continuar com o registro mesmo assim?' ),
                                   'Atenção', MB_ICONQUESTION + MB_YESNO) = mrYes)  then
    begin
      Sender.value:=null;
      abort;
    end;
  end;

  if  BuscaCampo(aux, 'select concat(id_fornecedor, '' - '', nome_fantasia) as nome_forn  from fornecedor where  '+
  ' replace(replace(replace(cpf, ''.'', ''''),'' '', ''''), ''-'', '''') '+
  ' like  replace(replace(replace(' + QuotedStr(Sender.AsString) +', ''.'', ''''),'' '', ''''), ''-'', '''') ' +
  ' and id_empresa='+ IntToStr(RecProj.iEmp), 'Fornecedor', false) then
  begin
    if not (Application.MessageBox(Pchar('O CPF informado já está cadastrado para o fornecedor: '#13#10 + aux +#13#10+
                                  'Deseja continuar com o registro mesmo assim?' ), 'Atenção', MB_ICONQUESTION + MB_YESNO) = mrYes)  then
    begin
      Sender.value:=null;
      abort;
    end;
  end
end;

procedure TfrmDetalheFornecedor.qrCadastroendereco_cepChange(Sender: TField);
var str_sql : string;
    qry : TUniQuery;
begin
  inherited;
  qry := TUniQuery.Create(self);
  qry.Connection := frmMenu.conexao;
  str_sql:=' SELECT CEP.CEP_001, CEP.CID_001, CEP.CEP_002, CEP.CEP_004, CEP.CEP_003,   CID.CID_002, EST.EST_003, PAI.PAI_002 ' +
           ' FROM CEPS CEP '+
           ' LEFT OUTER JOIN CIDADES CID ON (CID.CID_001 = CEP.CID_001) '+
           ' LEFT OUTER JOIN ESTADOS EST ON (EST.EST_001 = CID.EST_001) '+
           ' LEFT OUTER JOIN PAISES PAI ON (PAI.PAI_001 = EST.PAI_001) '+
           ' where CEP.CEP_002 = '+ QuotedStr(qrCadastro.FieldByName('endereco_cep').AsString);
  ExecutaConsultaSQL(qry, str_sql);
  if qry.RecordCount>0 then
  begin
    //preenche os campos se estiverem em branco
    if qrCadastro.FieldByName('id_cidade').isnull then
      qrCadastro.FieldByName('id_cidade').AsInteger := qry.FieldByName('cid_001').AsInteger;
    if qrCadastro.FieldByName('endereco_logradouro').isnull then
      qrCadastro.FieldByName('endereco_logradouro').AsString := qry.FieldByName('cep_004').AsString;
    if qrCadastro.FieldByName('endereco_cidade').isnull then
      qrCadastro.FieldByName('endereco_cidade').AsString := qry.FieldByName('cid_002').AsString;
    if qrCadastro.FieldByName('endereco_bairro').isnull then
      qrCadastro.FieldByName('endereco_bairro').AsString := qry.FieldByName('cep_003').AsString;
    if qrCadastro.FieldByName('endereco_uf').isnull then
      qrCadastro.FieldByName('endereco_uf').AsString := qry.FieldByName('est_003').AsString;
  end;

end;

procedure TfrmDetalheFornecedor.qrCadastroid_cidadeChange(Sender: TField);
var cidade : string;
begin
  inherited;
  if sender.IsNull then exit;
  if not BuscaCampo(cidade, 'select cid_002 from cidades where cid_001=' +
                              Sender.AsString , 'Cidade') then
  begin
    Sender.value:=null;
    abort;
  end
  else
  begin
    qrCadastro.FieldByName('endereco_cidade').AsString := cidade ;
    BuscaCampo(cidade, 'select e.est_003 from cidades c join estados e  on c.est_001=e.est_001 where c.cid_001=' +
                              Sender.AsString , 'Cidade');
    qrCadastro.FieldByName('endereco_uf').AsString := cidade ;
  end;
end;

procedure TfrmDetalheFornecedor.qrCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrCadastro.FieldByName('id_fornecedor').AsInteger := novoId('fornecedor','id_fornecedor',recProj.Iemp,'id_empresa');
  qrCadastro.fieldbyname('id_empresa').asinteger := recproj.iemp;
  qrCadastro.fieldbyname('id_usuario_cadastro').asinteger := recproj.iusuario;
  qrcadastro.FieldByName('tipo_pessoa').AsString := 'J';
  qrcadastro.FieldByName('id_situacao').asinteger := 4;
  qrcadastro.FieldByName('data_cadastro').AsDateTime := Date + Time;

end;

procedure TfrmDetalheFornecedor.qrCadastrotipo_pessoaChange(Sender: TField);
begin
  inherited;
  if qrCadastro.Active then
  begin
    edCNPJ.Enabled := qrCadastro.FieldByName('tipo_pessoa').AsString='J';
    edCPF.Enabled  := qrCadastro.FieldByName('tipo_pessoa').AsString='F';
  end;
end;

end.
