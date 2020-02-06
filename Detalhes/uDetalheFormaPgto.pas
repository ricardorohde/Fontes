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
  System.Actions, Vcl.ActnList, cxCalc, JvComponentBase, JvEnterTab,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

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
    edDescricao: TcxDBTextEdit;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cbForma: TJvDBComboBox;
    Label5: TLabel;
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
    qrCadastrob_tef: TBooleanField;
    cxDBUtilizaTEF: TcxDBCheckBox;
    AdvGroupBox2: TAdvGroupBox;
    cxControlecartao: TcxDBCheckBox;
    edContabancaria: TcxDBButtonEdit;
    Label7: TLabel;
    qrCadastrotaxa_cartao: TFloatField;
    qrCadastroprazo_cartao: TIntegerField;
    qrCadastroutiliza_controle_cartao: TBooleanField;
    Label10: TLabel;
    cxTaxa_cartao: TcxDBCalcEdit;
    Label8: TLabel;
    cxPrazo_cartao: TcxDBSpinEdit;
    acBuscaContabancaria: TAction;
    qrCadastroid_contacorrente: TIntegerField;
    lblContacorrente: TLabel;
    qraux1: TUniQuery;
    JvEnterAsTab1: TJvEnterAsTab;
    qrCadastroemite_fiscal: TBooleanField;
    cxFiscal: TcxDBCheckBox;
    qrCadastrotipo_fiscal: TIntegerField;
    cbtipo_fiscal: TJvDBComboBox;
    qrCadastrocnpjcred: TWideStringField;
    lblCNPJ: TLabel;
    edCNPJ: TcxDBTextEdit;
    AdvGroupBox4: TAdvGroupBox;
    cxDBRadioGroup1: TcxDBRadioGroup;
    Label9: TLabel;
    cbIntegracao: TJvDBComboBox;
    qrCadastrotipo_integracao: TIntegerField;
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure acBuscaContaExecute(Sender: TObject);
    procedure qrCadastroid_contaChange(Sender: TField);
    procedure qrCadastroAfterScroll(DataSet: TDataSet);
    procedure qrCadastroAfterOpen(DataSet: TDataSet);
    procedure dsCadastroStateChange(Sender: TObject);
    procedure qrCadastrob_fiadoChange(Sender: TField);
    procedure cxFiadoClick(Sender: TObject);
    procedure qrCadastroBeforePost(DataSet: TDataSet);
    procedure acBuscaContabancariaExecute(Sender: TObject);
    procedure cxControlecartaoClick(Sender: TObject);
    procedure edContabancariaExit(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxFiscalPropertiesChange(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure cbFormaChange(Sender: TObject);
    procedure edCNPJKeyPress(Sender: TObject; var Key: Char);
    procedure btNovoClick(Sender: TObject);
  private
   id_contabancaria:integer;
   ckOcultar_menu_fiscal:boolean;
  public
    { Public declarations }
  end;

var
  frmDetalheFormaPgto: TfrmDetalheFormaPgto;

implementation

{$R *.dfm}

uses uFuncoes, Funcao_DB, uMenu, uBuscaRegistro;

procedure TfrmDetalheFormaPgto.acBuscaContabancariaExecute(Sender: TObject);
var str_sql:string;
begin
  inherited;
  edContabancaria.SetFocus;
  str_sql:= 'select id_contacorrente, banco, conta,titular from contacorrente ';
  frmBuscaRegistro := TfrmBuscaRegistro.CreateForm(self,str_sql,
   CriaIntegerArray([0,1,2,3]) ,
    CriaStringArray(['Código', 'Banco', 'Conta','Titular' ]),
    0, 1, ' id_situacao=4 and id_empresa='+IntToStr(RecProj.iEmp));
     frmBuscaRegistro.ShowModal;
   if frmBuscaRegistro.Tag=1 then
    qrcadastro.FieldByName('id_contacorrente').value:=frmBuscaRegistro.valor_retorno;
    frmBuscaregistro.Free;

end;

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

procedure TfrmDetalheFormaPgto.btEditarClick(Sender: TObject);
begin
  inherited;

  if cxfiscal.Checked=false then
  begin
    qrcadastro.FieldByName('tipo_fiscal').AsInteger:=0;
    cbtipo_fiscal.Visible:=false;
  end;

  edDescricao.SetFocus;
end;

procedure TfrmDetalheFormaPgto.btNovoClick(Sender: TObject);
begin
  inherited;
  edDescricao.SetFocus;
end;

procedure TfrmDetalheFormaPgto.btSalvarClick(Sender: TObject);
begin
  Perform(WM_NEXTDLGCTL,0,0);

  if cxcontrolecartao.Checked then
  begin
    if qrcadastro.FieldByName('taxa_cartao').IsNull then
    begin
      Application.MessageBox('O valor da taxa de cartão não pode ser vazio','alerta',+MB_ICONEXCLAMATION+mb_ok);
      cxtaxa_cartao.SetFocus;
      abort;
    end;

    if qrcadastro.FieldByName('taxa_cartao').asfloat<=0 then
    begin
       Application.MessageBox('O valor da taxa de cartão não pode ser menor ou iqual a 0','alerta',+MB_ICONEXCLAMATION+mb_ok);
       cxtaxa_cartao.SetFocus;
       abort;
    end;

    if qrcadastro.FieldByName('prazo_cartao').asfloat<=0 then
    begin
       Application.MessageBox('O prazo de cartão não pode ser menor ou iqual a 0','alerta',+MB_ICONEXCLAMATION+mb_ok);
       cxprazo_cartao.SetFocus;
       abort;
    end;

    if qrcadastro.FieldByName('prazo_cartao').IsNull then
    begin
       Application.MessageBox('O prazo de cartão não pode vazio','alerta',+MB_ICONEXCLAMATION+mb_ok);
       cxprazo_cartao.SetFocus;
       abort;
    end;

    if qrcadastro.FieldByName('id_contacorrente').IsNull then
    begin
       Application.MessageBox('Conta corrente não pode ser vazio','alerta',+MB_ICONEXCLAMATION+mb_ok);
       edcontabancaria.SetFocus;
       abort;
    end;
  end;

  if (cxfiscal.Checked) and (qrcadastro.FieldByName('tipo_fiscal').AsInteger=0) then
  begin
    Application.MessageBox('Por favor selecione uma opção válida: SAT, ECF ou NFC-e','alerta',+MB_ICONEXCLAMATION+mb_ok);
    cbForma.SetFocus;
    abort;
  end;

  if (qrcadastro.FieldByName('tipo_integracao').AsInteger=0) then
  begin
    Application.MessageBox('Por favor selecione o Tipo de Integração','alerta',+MB_ICONEXCLAMATION+mb_ok);
    cbIntegracao.SetFocus;
    abort;
  end;

  if (cbForma.ItemIndex <> 2) and (cbForma.ItemIndex <> 3) then
    qrcadastro.FieldByName('cnpjCred').AsString:= '';

  if (qrcadastro.FieldByName('tipo_integracao').AsInteger=1) and ((qrcadastro.FieldByName('sfi_codigo').AsInteger = 3) or (qrcadastro.FieldByName('sfi_codigo').AsInteger = 4)) then
  begin
    if qrcadastro.FieldByName('cnpjCred').AsString = '' then
    begin
      Application.MessageBox('Por favor informe o CNPJ Credenciadora','alerta',+MB_ICONEXCLAMATION+mb_ok);
      edCNPJ.SetFocus;
      abort;
    end;
  end;

  inherited;

end;

procedure TfrmDetalheFormaPgto.cbFormaChange(Sender: TObject);
begin
  inherited;
  if cbForma.ItemIndex in [2,3] then //Cartões (verifica o itemindex e não o value)
  begin
    lblCNPJ.Visible:= True;
    edCNPJ.Visible:= True;
  end
  else
  begin
    lblCNPJ.Visible:= False;
    edCNPJ.Visible:= False;
  end;
end;

procedure TfrmDetalheFormaPgto.cxControlecartaoClick(Sender: TObject);
begin
  inherited;
  if cxcontrolecartao.Checked then
  begin
    edContabancaria.Enabled:=true ;
    cxTaxa_cartao.enabled:=true;
    cxprazo_cartao.Enabled:=true;
  end
  else
  begin
    edContabancaria.Enabled:=false ;
    cxTaxa_cartao.enabled:=false;
    cxprazo_cartao.Enabled:=false;
    qrcadastro.FieldByName('id_contacorrente').AsVariant:=null;
    label7.Caption:='Conta';
    edContabancaria.Text:='';
    qrcadastro.FieldByName('prazo_cartao').AsVariant:=null;
    qrcadastro.FieldByName('taxa_cartao').AsVariant:=null;

  end;
end;

procedure TfrmDetalheFormaPgto.cxFiadoClick(Sender: TObject);
begin
  inherited;
  edCodConta.Enabled := cxFiado.Checked ;
end;

procedure TfrmDetalheFormaPgto.cxFiscalPropertiesChange(Sender: TObject);
begin
  inherited;
   if qrcadastro.state in[dsInsert,dsEdit] then
   begin
      if cxfiscal.Checked=false then
      begin
        qrcadastro.FieldByName('tipo_fiscal').AsInteger:=0;
        cbtipo_fiscal.Visible:=false;
      end
      else
      cbtipo_fiscal.Visible:=true;
   end;
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

procedure TfrmDetalheFormaPgto.edCNPJKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not( key in['0'..'9', #08] ) then
    key:=#0;
end;

procedure TfrmDetalheFormaPgto.edContabancariaExit(Sender: TObject);
var
str_sql:string;
begin
  inherited;
   if edcontabancaria.Text<>'' then
  begin
    try
      id_contabancaria := strtoint(edcontabancaria.Text);
    except
      id_contabancaria :=0;
      application.MessageBox('Codigo da conta bancaria inválido!', 'Atenção', MB_ICONINFORMATION);
      lblContacorrente.Caption:='';
      id_contabancaria := 0;

    end;

    str_sql := ' select conta,agencia,banco  from contacorrente where id_situacao=4 and id_empresa= '+IntToStr(RecProj.iEmp) +
               'and id_contacorrente='+ edcontabancaria.Text;
    ExecutaConsultaSQL(qrAux1, str_sql);   // Procedure de consulta no banco
    if qrAux1.RecordCount>0 then
    begin
      lblContacorrente.Caption:= qrAux1.FieldByName('banco').AsString+ '  - '+qrAux1.FieldByName('agencia').AsString+ '  - ' +qrAux1.FieldByName('conta').AsString;
    end
    else
    begin
      Application.MessageBox('Conta corrente não encontrado!', 'Atenção', MB_ICONINFORMATION );
      lblContacorrente.Caption:='';
      edcontabancaria.Text:='';
      edcontabancaria.SetFocus;
    end;
  end
end;


procedure TfrmDetalheFormaPgto.FormShow(Sender: TObject);
begin
  ckOcultar_menu_fiscal :=  LerBooleanConfig('ckOcultar_menu_fiscal',frmMenu.cdsCFG.FileName);
  if ckOcultar_menu_fiscal then
  begin
    cxfiscal.Visible:=true;

  end
  else
  begin
    cxfiscal.Visible:=false;
    cbtipo_fiscal.Visible:=false;
    if qrcadastro.state in[dsInsert,dsEdit] then
    begin
      qrcadastro.FieldByName('emite_fiscal').AsBoolean:=false;
      qrcadastro.FieldByName('tipo_fiscal').AsInteger:=0;
    end;

  end;



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

  cbFormaChange(nil);
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
  qrCadastro.FieldByName('b_tef').asboolean := false;
  qrCadastro.FieldByName('utiliza_controle_cartao').asboolean := false;
  qrcadastro.FieldByName('emite_fiscal').AsBoolean:=false;
  qrcadastro.FieldByName('tipo_fiscal').AsInteger:=0;
  qrcadastro.FieldByName('tipo_integracao').AsInteger:=2; //Pagamento Não integrado

end;

end.
