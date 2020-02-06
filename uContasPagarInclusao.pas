unit uContasPagarInclusao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Data.DB, Datasnap.DBClient, Vcl.StdCtrls, cxSpinEdit, JvExStdCtrls,
  JvEdit, JvValidateEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, Vcl.ComCtrls,
  AdvGroupBox, AdvGlowButton, Vcl.DBActns, System.Actions, Vcl.ActnList,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxDropDownEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxImageComboBox, Uni, System.Math, Vcl.DBCtrls, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, JvCombobox, JvDBCombobox;

type
  TfrmContasPagarInclusao = class(TfrmModelo)
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
    btConfirma: TAdvGlowButton;
    btCancela: TAdvGlowButton;
    AdvGroupBox3: TAdvGroupBox;
    dtDataDocumento: TDateTimePicker;
    edCodFornecedor: TcxButtonEdit;
    edCodConta: TcxButtonEdit;
    edNota: TEdit;
    edHistorico: TEdit;
    edValor: TJvValidateEdit;
    edQtdParcelas: TcxSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbFornecedor: TLabel;
    lbConta: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    btGerarParcelas: TAdvGlowButton;
    cdsParcelas: TClientDataSet;
    cdsParcelasdata_vencimento: TDateField;
    cdsParcelasdocumento: TStringField;
    cdsParcelasespecie: TIntegerField;
    cdsParcelasvalor: TCurrencyField;
    cdsParcelasdescricao: TStringField;
    dsParcelas: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1data_vencimento: TcxGridDBColumn;
    cxGrid1DBTableView1documento: TcxGridDBColumn;
    cxGrid1DBTableView1especie: TcxGridDBColumn;
    cxGrid1DBTableView1valor: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cbEspecie: TComboBox;
    Label5: TLabel;
    cdsParcelastotal: TAggregateField;
    DBText1: TDBText;
    Label6: TLabel;
    cdsParcelasnro_parcela: TIntegerField;
    cbTipoConta: TComboBox;
    procedure edCodFornecedorExit(Sender: TObject);
    constructor Create(sender : Tcomponent; id_usuario : integer); reintroduce;
    procedure edCodContaExit(Sender: TObject);
    procedure acBuscaFornecedorExecute(Sender: TObject);
    procedure acBuscaContaExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edCodFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCodContaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btGerarParcelasClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btConfirmaClick(Sender: TObject);
  private
    { Private declarations }
    cod_fornecedor, cod_conta, id_usuario_contas_pagar : integer;
  public
    { Public declarations }
  end;

var
  frmContasPagarInclusao: TfrmContasPagarInclusao;

implementation

{$R *.dfm}

uses uMenu, uBuscaRegistro, Funcao_DB, uFuncoes;

procedure TfrmContasPagarInclusao.acBuscaContaExecute(Sender: TObject);
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
    edCodConta.Text:= frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.Free;
  edCodContaExit(nil);
end;

procedure TfrmContasPagarInclusao.acBuscaFornecedorExecute(Sender: TObject);
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
     edCodFornecedor.Text:= frmBuscaRegistro.valor_retorno;
   frmBuscaRegistro.Free;
   edCodFornecedorExit(nil);

end;

procedure TfrmContasPagarInclusao.btCancelaClick(Sender: TObject);
begin
  self.Close;

end;

procedure TfrmContasPagarInclusao.btConfirmaClick(Sender: TObject);
var str_sql : string;
  nota: Integer;
  conta:boolean;
begin
  inherited;
  if cdsParcelas.RecordCount <=0  then
  begin
    Application.MessageBox('Não foi gerada nenhuma parcela!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  if cod_fornecedor <=0  then
  begin
    Application.MessageBox('Não foi informado o fornecedor!', 'Atenção', MB_ICONINFORMATION);
    if edCodFornecedor.CanFocus then edCodFornecedor.SetFocus;
    abort;
  end;

  if cod_conta <=0  then
  begin
    Application.MessageBox('Não foi informada a conta!', 'Atenção', MB_ICONINFORMATION);
    if edCodConta.CanFocus then edCodConta.SetFocus;
    abort;
  end;

  if trim(edNota.text)=''  then
  begin
    Application.MessageBox('Não foi informado o número da nota!', 'Atenção', MB_ICONINFORMATION);
    if edNota.CanFocus then edNota.SetFocus;
    abort;
  end;

  if roundto(cdsParcelas.FieldByName('total').value-edValor.AsFloat, -2) <> 0  then
  begin
    Application.MessageBox('O valor informado é diferente do total das parcelas!', 'Atenção', MB_ICONINFORMATION);
    if edValor.CanFocus then edValor.SetFocus;
    abort;
  end;

  if cbTipoConta.ItemIndex = 0 then
    conta:= False
  else
    conta:= True;

  //Tudo OK, insere as parcelas
  str_sql := ' insert into cpagar '+
             '(id_empresa, id_fornecedor, data,  id_conta, nota, valor_nota, descricao, valor, '+
             ' data_vencimento, documento,  especie, parcela_nota, id_usuario,valor_pago, id_situacao, conta_fixa) '+
             ' values(:emp, :id_forn, :data, :id_conta, :nota, :valor_nota, :descricao, :valor_parc, '+
             ' :data_venc, :doc , :especie, :nro_parcela, :idusuario, 0, 4, :conta_fixa);';
  nota := StrToInt(ednota.Text) ;

  cdsParcelas.first;
  while not cdsParcelas.eof do
  begin
    ExecutaComandoSQL(str_sql, vararrayof([recproj.iEmp, cod_fornecedor, dtDataDocumento.Date,
                                           cod_conta, nota, edValor.Value,
                                           cdsParcelas.FieldByName('descricao').Asstring,
                                           cdsParcelas.FieldByName('valor').AsFloat,
                                           cdsParcelas.FieldByName('data_vencimento').AsDateTime,
                                           cdsParcelas.FieldByName('documento').Asstring,
                                           cdsParcelas.FieldByName('especie').asinteger,
                                           cdsParcelas.FieldByName('nro_parcela').asinteger,
                                           id_usuario_contas_pagar,
                                           conta]));

    cdsParcelas.Next;
  end;
  cdsParcelas.EmptyDataSet;
  self.Close;
end;


procedure TfrmContasPagarInclusao.btGerarParcelasClick(Sender: TObject);
var i : integer;
    data_aux : Tdate;
    doc_aux : string;
    valor_parc, diferenca : double;
begin
  inherited;
  if edQtdParcelas.Value <=0 then
  begin
    Application.MessageBox('Quantidade de parcelas inválida!', 'Atenção', MB_ICONINFORMATION);
    edQtdParcelas.SetFocus;
    abort;
  end;

  if edValor.Value <=0 then
  begin
    Application.MessageBox('Valor inválido!', 'Atenção', MB_ICONINFORMATION);
    edvalor.SetFocus;
    abort;
  end;

  cdsParcelas.EmptyDataSet;

  valor_parc := roundto(edValor.AsFloat / edQtdParcelas.Value, -2);
  for I := 1 to edQtdParcelas.Value do
  begin
    data_aux := IncMonth(dtDataDocumento.Date, i);
    if edNota.Text<>'' then
      doc_aux := format('%s/%d',[edNota.Text,i])
    else
      doc_aux := inttostr(i);

    cdsParcelas.Append;
    cdsParcelas.FieldByName('data_vencimento').AsDateTime :=  data_aux;
    cdsParcelas.FieldByName('documento').Asstring :=  doc_aux;
    cdsParcelas.FieldByName('especie').asinteger :=  cbEspecie.itemindex;
    cdsParcelas.FieldByName('valor').AsFloat :=  valor_parc;
    cdsParcelas.FieldByName('descricao').Asstring :=  edHistorico.text;
    cdsParcelas.FieldByName('nro_parcela').asinteger :=  i;
    cdsParcelas.post;

    //verifica se é a ultima parcela e corrige eventuais diferenças por conta da divisão
    if I = edQtdParcelas.Value then
    begin
      diferenca := roundto(cdsParcelas.FieldByName('total').value-edValor.AsFloat, -2);
      if diferenca<>0 then
      begin
        cdsParcelas.Edit;
        cdsParcelas.FieldByName('valor').AsFloat := valor_parc - diferenca;
        cdsParcelas.post;
      end;
    end;

  end;
end;

constructor  TfrmContasPagarInclusao.Create(sender : Tcomponent; id_usuario : integer);
begin
  inherited Create(sender);
  // frmMenu.VerificaPermissaoAcesso(RecProj.bAcessoCPagarCReceber);
  id_usuario_contas_pagar := id_usuario;
  cod_fornecedor :=0;
  cod_conta := 0;
  lbFornecedor.Caption :='';
  lbConta.Caption :='';
  dtDataDocumento.Date := date;
  cbEspecie.ItemIndex := 0;
  cdsParcelas.CreateDataSet;
end;

procedure TfrmContasPagarInclusao.edCodContaExit(Sender: TObject);
var str_sql, nome_conta : string;
begin
  inherited;
  if edCodConta.Text<>'' then
  begin
    try
      cod_conta := strtoint(trim(edCodConta.Text));
    except
      cod_conta := 0;
    end;
    str_sql := format('select descricao from conta where b_pagar and id_situacao=4 and id_conta=%d and id_empresa=%d',
                      [cod_conta, recproj.iEmp]);
    if not BuscaCampo(nome_conta, str_sql, 'Conta') then
    begin
      edCodConta.Clear;
      edCodContaExit(nil);
    end
    else
    begin
      lbConta.caption := nome_conta;
    end;

  end
  else
  begin
    lbConta.Caption := '';
    cod_conta := 0;
  end;

end;

procedure TfrmContasPagarInclusao.edCodContaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_f2 then acBuscaConta.Execute;
end;

procedure TfrmContasPagarInclusao.edCodFornecedorExit(Sender: TObject);
var str_sql, nome_forn : string;
begin
  inherited;
  if trim(edCodFornecedor.Text)<>'' then
  begin
    try
      cod_fornecedor := strtoint(trim(edCodFornecedor.Text));
    except
      cod_fornecedor := 0;
    end;
    str_sql := format('select nome_fantasia from fornecedor where id_fornecedor=%d and id_empresa=%d',
                      [cod_fornecedor, recproj.iEmp]);
    if not BuscaCampo(nome_forn, str_sql, 'Fornecedor') then
    begin
      edCodFornecedor.Clear;
      edCodFornecedorExit(nil);
    end
    else
    begin
      lbFornecedor.caption := nome_forn;
    end;

  end
  else
  begin
    lbFornecedor.Caption := '';
    cod_fornecedor := 0;
  end;
end;

procedure TfrmContasPagarInclusao.edCodFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_f2 then acBuscaFornecedor.Execute;
end;

procedure TfrmContasPagarInclusao.FormClose(Sender: TObject;
  var Action: TCloseAction);
var confirma : boolean;
begin
  inherited;
  confirma :=true;
  if cdsParcelas.RecordCount>0 then
    confirma := Application.MessageBox('As informações geradas ainda não foram lançadas. Gostaria de sair sem salvar?',
                                       'Atenção', MB_ICONQUESTION + MB_YESNO) = mrYes;

  if not confirma then abort;
end;

procedure TfrmContasPagarInclusao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then Perform(WM_NEXTDLGCTL, 0, 0);
end;

end.
