unit uControleContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  AdvGlowButton, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.StdCtrls, cxGroupBox, cxRadioGroup, Vcl.ComCtrls,
  AdvGroupBox, Data.DB, MemDS, DBAccess, Uni, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxTextEdit, cxMaskEdit, cxButtonEdit, Vcl.DBActns, System.Actions,
  Vcl.ActnList, cxCheckBox, cxImage, cxImageComboBox, Vcl.DBCtrls, frxClass,
  frxDBSet, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TfrmControleContasPagar = class(TfrmModelo)
    btSair: TAdvGlowButton;
    AdvGroupBox3: TAdvGroupBox;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    btPesquisar: TAdvGlowButton;
    cbFiltroData: TComboBox;
    cbFiltroCampo: TComboBox;
    Label2: TLabel;
    edFiltroCampo: TEdit;
    Label3: TLabel;
    cbFiltroSituacao: TComboBox;
    btIncluir: TAdvGlowButton;
    btEditar: TAdvGlowButton;
    btExcluir: TAdvGlowButton;
    btPagamento: TAdvGlowButton;
    qrCPagar: TUniQuery;
    qrCPagarid_cpagar: TIntegerField;
    qrCPagardescricao: TWideStringField;
    qrCPagarnota: TIntegerField;
    qrCPagardocumento: TWideStringField;
    qrCPagarvalor: TFloatField;
    qrCPagarespecie_desc: TWideStringField;
    qrCPagarconta_desc: TWideStringField;
    dsCPagar: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1id_cpagar: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1nota: TcxGridDBColumn;
    cxGrid1DBTableView1data_vencimento: TcxGridDBColumn;
    cxGrid1DBTableView1documento: TcxGridDBColumn;
    cxGrid1DBTableView1valor: TcxGridDBColumn;
    cxGrid1DBTableView1especie_desc: TcxGridDBColumn;
    cxGrid1DBTableView1nome_fornecedor: TcxGridDBColumn;
    cxGrid1DBTableView1conta_desc: TcxGridDBColumn;
    qrCPagarnome_fornecedor: TWideStringField;
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
    Label4: TLabel;
    Label5: TLabel;
    lbFornecedor: TLabel;
    lbConta: TLabel;
    edCodFornecedor: TcxButtonEdit;
    edCodConta: TcxButtonEdit;
    cxGrid1DBTableView1Selecao: TcxGridDBColumn;
    qrCPagarid_situacao: TIntegerField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    qrCPagarcod_status_pag: TIntegerField;
    qrCPagardata_vencimento: TDateField;
    rbTodasDatas: TcxRadioButton;
    rbIntervaloDatas: TcxRadioButton;
    AdvGroupBox1: TAdvGroupBox;
    qrCPagarusuario_insercao: TWideStringField;
    qrCPagarusuario_cancelamento: TWideStringField;
    qrCPagarusuario_pagamento: TWideStringField;
    qrCPagardata_cancelamento: TDateTimeField;
    qrCPagardata_pagamento: TDateTimeField;
    qrCPagarvalor_pago: TFloatField;
    Label1: TLabel;
    DBText1: TDBText;
    Label6: TLabel;
    DBText2: TDBText;
    Label7: TLabel;
    DBText3: TDBText;
    Label8: TLabel;
    DBText4: TDBText;
    Label10: TLabel;
    DBText6: TDBText;
    btEstorno: TAdvGlowButton;
    qrCPagarid_caixa: TIntegerField;
    qrCPagaritemcaixaitem: TIntegerField;
    qrCPagarid_movimentocc: TIntegerField;
    qrCPagardata: TDateTimeField;
    repCPagar: TfrxReport;
    dbCPagar: TfrxDBDataset;
    btRelatorio: TAdvGlowButton;
    qrCPagarconta_fixa: TBooleanField;
    procedure btIncluirClick(Sender: TObject);
    constructor Create(Sender: Tcomponent); reintroduce;
    procedure btPesquisarClick(Sender: TObject);
    procedure edCodFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCodFornecedorExit(Sender: TObject);
    procedure edCodContaExit(Sender: TObject);
    procedure edCodContaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acBuscaFornecedorExecute(Sender: TObject);
    procedure acBuscaContaExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btSairClick(Sender: TObject);
    function RegistrosSelecionados: TArray<integer>;
    procedure btPagamentoClick(Sender: TObject);
    function ContemPago(Registros: TArray<integer>): boolean;
    function ContemNaoPago(Registros: TArray<integer>): boolean;
    function ContemCancelado(Registros: TArray<integer>): boolean;
    function ContemStatus(Registros: TArray<integer>;
      id_status: integer): boolean;
    procedure FormShow(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure rbIntervaloDatasClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btEstornoClick(Sender: TObject);
    procedure btRelatorioClick(Sender: TObject);
  private
    { Private declarations }
    i_where, cod_fornecedor, cod_conta, id_usuario_contas_pagar: integer;

  public
    { Public declarations }
  end;

var
  frmControleContasPagar: TfrmControleContasPagar;

implementation

{$R *.dfm}

uses uContasPagarInclusao, uMenu, Funcao_DB, uBuscaRegistro, uFuncoes,
  uContasPagarPagamento, uControleContasPagarEditar;

function TfrmControleContasPagar.ContemNaoPago
  (Registros: TArray<integer>): boolean;
var
  i: integer;
begin
  result := ContemStatus(Registros, 4);
end;

function TfrmControleContasPagar.ContemStatus(Registros: TArray<integer>;
  id_status: integer): boolean;
var
  i: integer;
begin
  result := false;
  if Length(Registros) <= 0 then
    exit;

  for i := 0 to Length(Registros) do
  begin
    qrCPagar.Locate('id_cpagar', Registros[i], []);
    result := qrCPagar.FieldByName('id_situacao').AsInteger = id_status;
    if result then
      break;
  end;
end;

function TfrmControleContasPagar.ContemPago(Registros: TArray<integer>)
  : boolean;
var
  i: integer;
begin
  result := ContemStatus(Registros, 7);
end;

function TfrmControleContasPagar.ContemCancelado
  (Registros: TArray<integer>): boolean;
var
  i: integer;
begin
  result := ContemStatus(Registros, 2);
end;

function TfrmControleContasPagar.RegistrosSelecionados: TArray<integer>;
var
  iRec, i: integer;
  selecionado: boolean;
begin
  inherited;
  SetLength(result, qrCPagar.RecordCount);
  qrCPagar.First;
  i := 0;
  while not qrCPagar.eof do
  begin
    iRec := cxGrid1DBTableView1.Controller.SelectedRecords[0].RecordIndex;
    // Registro selecionado, coluna 0 (coluna de seleção)
    if VarIsNull(cxGrid1DBTableView1.DataController.Values[iRec, 0]) then
      selecionado := false
    else
    begin
      selecionado := cxGrid1DBTableView1.DataController.Values[iRec, 0];
    end;

    if selecionado then
    begin
      result[i] := qrCPagar.FieldByName('id_cpagar').AsInteger;
      i := i + 1;
    end;
    qrCPagar.next;
  end;
  SetLength(result, i);
end;

procedure TfrmControleContasPagar.btPagamentoClick(Sender: TObject);
var
  itens: TArray<integer>;
begin
  inherited;
  itens := RegistrosSelecionados;
  if ContemPago(itens) then
  begin
    Application.MessageBox
      ('Não é possivel efetuar o pagamento pois uma conta já paga foi selecionada!',
      'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  if ContemCancelado(itens) then
  begin
    Application.MessageBox
      ('Não é possivel efetuar o pagamento pois uma conta cancelada foi selecionada!',
      'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  if Length(itens) <= 0 then
  begin
    Application.MessageBox('Nenhum item selecionado!', 'Atenção',
      MB_ICONINFORMATION);
    abort;
  end;

  frmContasPagarPagamento := TfrmContasPagarPagamento.Create(self, itens,
    id_usuario_contas_pagar);
  frmContasPagarPagamento.showmodal;
  frmContasPagarPagamento.free;
  qrCPagar.close;
  qrCPagar.Open;

end;

procedure TfrmControleContasPagar.btPesquisarClick(Sender: TObject);
var
  filtro_data, filtro_campo, filtro_status, filtro_fornecedor, filtro_conta,
    filtro: string;
  nota: integer;
begin
  inherited;

  Perform(WM_NEXTDLGCTL, 0, 0);
   if cbFiltroCampo.ItemIndex in[ 3,4] then
    edfiltrocampo.Text:='';

  // monta o filtro de data
  if rbIntervaloDatas.Checked then
  begin
    case cbFiltroData.ItemIndex of
      0:
        filtro_data := ' and cp.data >= :data1 and cp.data<=:data2 ';
      1:
        filtro_data :=
          ' and cp.data_vencimento>= :data1 and cp.data_vencimento<=:data2 ';
      2:
        filtro_data :=
          ' and cp.data_pagamento>= :data1 and cp.data_pagamento<=:data2 ';
      3:
        filtro_data :=
          ' and cp.data_cancelamento>= :data1 and cp.data_cancelamento<=:data2 ';
    else
      filtro_data := '';
    end;
  end
  else
    filtro_data := '';

  if trim(edFiltroCampo.Text) = '' then
    filtro_campo := ''
  else
  begin
    if cbFiltroCampo.ItemIndex = 0 then
    begin
      try
        nota := StrToInt(trim(edFiltroCampo.Text));
      except
        nota := 0;
      end;
      filtro_campo := format(' and cp.nota=%d ', [nota]);
    end
    else if cbFiltroCampo.ItemIndex = 1 then
      filtro_campo := ' and cp.documento like ' +
        QuotedStr('%' + trim(edFiltroCampo.Text + '%'))
    else
      filtro_campo := ' and cp.descricao like ' +
        QuotedStr('%' + trim(edFiltroCampo.Text + '%'));
  end;

    if cbFiltroCampo.ItemIndex = 3 then
      filtro_campo := ' and cp.conta_fixa=false '
    else if cbFiltroCampo.ItemIndex = 4 then
      filtro_campo := ' and cp.conta_fixa=true ';




  case cbFiltroSituacao.ItemIndex of
    0:
      filtro_status := ' and cp.id_situacao = 4 '; // Não pagas
    1:
      filtro_status :=
        ' and cp.id_situacao = 4 and cp.data_vencimento <= localtimestamp ';
      // vencidas
    2:
      filtro_status := ' and cp.id_situacao = 7 '; // Paga
    3:
      filtro_status := ' and cp.id_situacao = 2 '; // Cancelada
  else
    filtro_status := '';
  end;

  if cod_fornecedor <> 0 then
    filtro_fornecedor := format(' and cp.id_fornecedor=%d ', [cod_fornecedor])
  else
    filtro_fornecedor := '';

  if cod_conta <> 0 then
    filtro_conta := format(' and cp.id_conta=%d ', [cod_conta])
  else
    filtro_conta := '';

  filtro := filtro_data + filtro_campo + filtro_status + filtro_fornecedor +
    filtro_conta;
  qrCPagar.close;
  if qrCPagar.SQL.Count = i_where then
    qrCPagar.SQL.Add(filtro)
  else
    qrCPagar.SQL[i_where] := filtro;

  if rbIntervaloDatas.Checked then
  begin
    qrCPagar.ParamByName('data1').AsDate := dtpDataInicial.Date;
    qrCPagar.ParamByName('data2').AsDate := dtpDataFinal.Date + 1;
  end;

  qrCPagar.Open;

end;

procedure TfrmControleContasPagar.btRelatorioClick(Sender: TObject);
var
  info_filtro: string;
begin
  inherited;
  if qrCPagar.RecordCount > 0 then
  begin
    if rbIntervaloDatas.Checked then
    begin
      info_filtro := format('Situação: %s | Período de %s: %s a %s',
        [cbFiltroSituacao.Text, cbFiltroData.Text, FormatDateTime('dd/mm/yyyy',
        dtpDataInicial.Date), FormatDateTime('dd/mm/yyyy', dtpDataFinal.Date)]);
    end
    else
    begin
      info_filtro := format('Situação: %s | Período de %s: TODOS',
        [cbFiltroSituacao.Text, cbFiltroData.Text]);
    end;

    repCPagar.Variables['sInfoFiltro'] := QuotedStr(info_filtro);
    repCPagar.PrepareReport;
    repCPagar.ShowReport;
  end
  else
  begin
    Application.MessageBox('Sem dados para exibir no relatório!', 'Atenção',
      MB_ICONINFORMATION);
  end;

end;

procedure TfrmControleContasPagar.btSairClick(Sender: TObject);
begin
  inherited;
  self.close;
end;

constructor TfrmControleContasPagar.Create(Sender: Tcomponent);
var
  dia, mes, ano: Word;
begin
  inherited Create(Sender);
  // Valida o acesso...
  { frmMenu.VerificaPermissaoAcesso(RecProj.bAcessoCPagarCReceber);
    //pede a senha do usuário...
    if not frmMenu.ConfirmacaoSenhaSimples then abort; }

  if not frmMenu.ConfirmacaoSenha('b_acesso_cpagar_creceber',
    id_usuario_contas_pagar) then
    abort;

  // preenche os filtros de data com o primeiro dia do mes e com o dia atual
  DecodeDate(Date, ano, mes, dia);
  dtpDataInicial.Date := EncodeDate(ano, mes, 1);
  dtpDataFinal.Date := EncodeDate(ano, mes, dia);

  cbFiltroData.ItemIndex := 0;
  cbFiltroCampo.ItemIndex := 0;
  cbFiltroSituacao.ItemIndex := 0;

  cod_fornecedor := 0;
  cod_conta := 0;
  lbFornecedor.Caption := '';
  lbConta.Caption := '';

  qrCPagar.close;
  qrCPagar.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  // guarda o indice onde deve ser aplicados os filtros
  i_where := qrCPagar.SQL.Count;
  qrCPagar.Open;
  rbIntervaloDatasClick(nil);
end;

procedure TfrmControleContasPagar.edCodContaExit(Sender: TObject);
var
  str_sql, nome_conta: string;
begin
  inherited;
  if edCodConta.Text <> '' then
  begin
    try
      cod_conta := StrToInt(trim(edCodConta.Text));
    except
      cod_conta := 0;
    end;
    str_sql :=
      format('select descricao from conta where b_pagar and id_situacao=4 and id_conta=%d and id_empresa=%d',
      [cod_conta, recproj.iEmp]);
    if not BuscaCampo(nome_conta, str_sql, 'Conta') then
    begin
      edCodConta.Clear;
      edCodContaExit(nil);
    end
    else
    begin
      lbConta.Caption := nome_conta;
    end;

  end
  else
  begin
    lbConta.Caption := '';
    cod_conta := 0;
  end;

end;

procedure TfrmControleContasPagar.edCodContaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = vk_f2 then
    acBuscaConta.Execute;
end;

procedure TfrmControleContasPagar.edCodFornecedorExit(Sender: TObject);
var
  str_sql, nome_forn: string;
begin
  inherited;
  if trim(edCodFornecedor.Text) <> '' then
  begin
    try
      cod_fornecedor := StrToInt(trim(edCodFornecedor.Text));
    except
      cod_fornecedor := 0;
    end;
    str_sql :=
      format('select nome_fantasia from fornecedor where id_fornecedor=%d and id_empresa=%d',
      [cod_fornecedor, recproj.iEmp]);
    if not BuscaCampo(nome_forn, str_sql, 'Fornecedor') then
    begin
      edCodFornecedor.Clear;
      edCodFornecedorExit(nil);
    end
    else
    begin
      lbFornecedor.Caption := nome_forn;
    end;

  end
  else
  begin
    lbFornecedor.Caption := '';
    cod_fornecedor := 0;
  end;
end;

procedure TfrmControleContasPagar.edCodFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = vk_f2 then
    acBuscaFornecedor.Execute;
end;

procedure TfrmControleContasPagar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_return then
    Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmControleContasPagar.FormShow(Sender: TObject);
begin
  inherited;
  btPesquisar.click;
end;

procedure TfrmControleContasPagar.rbIntervaloDatasClick(Sender: TObject);
begin
  inherited;
  if rbIntervaloDatas.Checked then
  begin
    cbFiltroData.Enabled := true;
    dtpDataInicial.Enabled := true;
    dtpDataFinal.Enabled := true;
  end
  else
  begin
    cbFiltroData.Enabled := false;
    dtpDataInicial.Enabled := false;
    dtpDataFinal.Enabled := false;
  end;
end;

procedure TfrmControleContasPagar.acBuscaContaExecute(Sender: TObject);
var
  str_sql: string;
begin
  inherited;
  edCodConta.SetFocus;

  str_sql := ' select id_conta, descricao, ' +
    ' cast(fn_situacoes(id_situacao) as varchar(100)) as situacao from conta ';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
    CriaIntegerArray([0, 1, 2]), CriaStringArray(['Código', 'Conta', 'Status']),
    0, 1, ' id_situacao=4 and b_pagar and id_empresa=' +
    IntToStr(recproj.iEmp));
  frmBuscaRegistro.showmodal;
  if frmBuscaRegistro.Tag = 1 then
    edCodConta.Text := frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.free;
  edCodContaExit(nil);
end;

procedure TfrmControleContasPagar.acBuscaFornecedorExecute(Sender: TObject);
var
  str_sql: string;
begin
  inherited;
  edCodFornecedor.SetFocus;

  str_sql := 'select id_fornecedor, nome_fantasia, razao_social, ' +
    ' cast(case when tipo_pessoa=''J'' then ''Jurídica'' else ''Física'' end as varchar(10)) as tipo_p, '
    + ' cast(fn_situacoes(id_situacao) as varchar(100)) as situacao from fornecedor ';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
    CriaIntegerArray([0, 1, 2, 3, 4]), CriaStringArray(['Código', 'Fornecedor',
    'Razão Social', 'Tipo', 'Status']), 0, 1,
    ' id_empresa=' + IntToStr(recproj.iEmp), 800, 500);
  frmBuscaRegistro.showmodal;
  if frmBuscaRegistro.Tag = 1 then
    edCodFornecedor.Text := frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.free;
  edCodFornecedorExit(nil);
end;

procedure TfrmControleContasPagar.btEditarClick(Sender: TObject);
var
  itens: TArray<integer>;
begin
  inherited;
  itens := RegistrosSelecionados;
  if Length(itens) <> 1 then
  begin
    Application.MessageBox
      ('É necessário selecionar apenas um registro para editar!', 'Atenção',
      MB_ICONINFORMATION);
  end
  else
  begin
    if ContemPago(itens) then
    begin
      Application.MessageBox('Não é possivel editar conta paga!', 'Atenção',
        MB_ICONINFORMATION);
      abort;
    end;

    if ContemCancelado(itens) then
    begin
      Application.MessageBox('Não é possivel editar uma conta cancelada!',
        'Atenção', MB_ICONINFORMATION);
      abort;
    end;
    frmControleContasPagarEditar := TfrmControleContasPagarEditar.Create(self,
      'id_cpagar', 'id_situacao', itens[0], false, false, false);
    frmControleContasPagarEditar.qrCadastro.Edit;
    frmControleContasPagarEditar.showmodal;
    frmControleContasPagarEditar.free;
    qrCPagar.close;
    qrCPagar.Open;
  end;
end;

procedure TfrmControleContasPagar.btEstornoClick(Sender: TObject);
var
  str_sql: string;
  i: integer;
  itens: TArray<integer>;
  qrAux1: TUniQuery;
begin
  inherited;
  itens := RegistrosSelecionados;
  if ContemNaoPago(itens) then
  begin
    Application.MessageBox
      ('Não é possivel estornar a(s) conta(s) pois uma conta não paga foi selecionada!',
      'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  if ContemCancelado(itens) then
  begin
    Application.MessageBox
      ('Não é possivel estornar a(s) conta(s) pois uma conta cancelada foi selecionada!',
      'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  if Length(itens) <= 0 then
  begin
    Application.MessageBox('Nenhum item selecionado!', 'Atenção',
      MB_ICONINFORMATION);
    abort;
  end;

  // verifica se o existe caixa aberto e se possui itens pagos ao caixa
  if recproj.iIDCaixa = 0 then
  begin
    for i := 0 to Length(itens) - 1 do
    begin
      qrCPagar.Locate('id_cpagar', itens[i], []);
      if not qrCPagar.FieldByName('id_caixa').IsNull then
      begin
        Application.MessageBox
          ('Não é possivel estornar a(s) conta(s) pois o método de pagamento selecionado de uma das conta foi CAIXA e não existe caixa aberto para receber o estorno!',
          'Atenção', MB_ICONINFORMATION);
        abort;
      end;
    end;
  end;

  if Application.MessageBox('Confirma o estono da(s) conta(s) selecionada(s)?',
    'Atenção', MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    qrAux1 := TUniQuery.Create(nil);
    qrAux1.Connection := frmMenu.conexao;

    for i := 0 to Length(itens) - 1 do
    begin
      qrCPagar.Locate('id_cpagar', itens[i], []);

      // verifica se existe informação de pagamento com caixa para a conta paga atual
      if not qrCPagar.FieldByName('id_caixa').IsNull then
      begin
        // verifica se o caixa de pagamento é o mesmo do caixa aberto, faz o estorno do lançamento no proprio
        if qrCPagar.FieldByName('id_caixa').AsInteger = recproj.iIDCaixa then
        begin
          //
          EstornoCaixaItem(qrCPagar.FieldByName('id_caixa').AsInteger,
            qrCPagar.FieldByName('itemcaixaitem').AsInteger, recproj.iEmp);
        end
        else // senão, faz um lançamento no caixa atual
        begin
          str_sql :=
            format(' select id_formapgto, valor,  id_cpagar, id_creceber, item_encerravenda, id_encerravenda,  '
            + ' antecipado, tipo_movimento, id_venda from caixaitem where id_caixa=%d and item=%d and id_empresa=%d',
            [qrCPagar.FieldByName('id_caixa').AsInteger,
            qrCPagar.FieldByName('itemcaixaitem').AsInteger, recproj.iEmp]);
          ExecutaConsultaSQL(qrAux1, str_sql);
          InserirCaixaItem(recproj.iIDCaixa, qrAux1.FieldByName('id_formapgto')
            .AsInteger, qrAux1.FieldByName('valor').AsFloat, 'E',
            // Tipo=entrada
            format('Estorno de conta a pagar %s',
            [qrCPagar.FieldByName('documento').asstring]),
            qrAux1.FieldByName('id_venda').AsInteger,
            qrAux1.FieldByName('id_encerravenda').AsInteger,
            qrAux1.FieldByName('item_encerravenda').AsInteger,
            qrAux1.FieldByName('antecipado').asboolean, 'C',
            // classificação outros creditos
            itens[i]);
        end;
        str_sql :=
          format(' update cpagar set id_caixa=null, itemcaixaitem=null, id_situacao=4, valor_pago=0, '
          + ' valor_desconto=0, valor_acrescimo=0, data_pagamento=null, id_usuario_pagamento=null '
          + ' where id_cpagar=%d and id_empresa=%d ', [itens[i], recproj.iEmp]);
        ExecutaComandoSQL(str_sql);

      end
      // pagamento feito por conta corrente
      else if not qrCPagar.FieldByName('id_movimentocc').IsNull then
      begin
        str_sql :=
          format(' select id_contacorrente, valor, localtimestamp  as datahora '
          + ' from movimentocontacorrente where id_empresa=%d and id_movimento=%d',
          [recproj.iEmp, qrCPagar.FieldByName('id_movimentocc').AsInteger]);
        ExecutaConsultaSQL(qrAux1, str_sql);

        InserirMovimentoContaCorrente(recproj.iEmp,
          qrAux1.FieldByName('id_contacorrente').AsInteger,
          id_usuario_contas_pagar, qrAux1.FieldByName('valor').AsFloat, 'E',
          format('Estorno de conta a pagar %s',
          [qrCPagar.FieldByName('documento').asstring]),
          qrAux1.FieldByName('datahora').AsDateTime, itens[i], null);
        str_sql :=
          format(' update cpagar set id_movimentocc=null, id_situacao=4, valor_pago=0, '
          + ' valor_desconto=0, valor_acrescimo=0, data_pagamento=null, id_usuario_pagamento=null '
          + ' where id_cpagar=%d and id_empresa=%d ', [itens[i], recproj.iEmp]);
        ExecutaComandoSQL(str_sql);
      end;
    end;
    qrAux1.free;
    Application.MessageBox('Conta(s) estornada(s) com sucesso!', 'Atenção',
      MB_ICONINFORMATION);
    qrCPagar.close;
    qrCPagar.Open;
  end;
end;

procedure TfrmControleContasPagar.btExcluirClick(Sender: TObject);
var
  justificativa, str_sql: string;
  itens: TArray<integer>;
begin
  inherited;
  itens := RegistrosSelecionados;
  if ContemPago(itens) then
  begin
    Application.MessageBox
      ('Não é possivel excluir a(s) conta(s) pois uma conta paga foi selecionada!',
      'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  if ContemCancelado(itens) then
  begin
    Application.MessageBox
      ('Não é possivel excluir a(s) conta(s) pois uma conta já cancelada foi selecionada!',
      'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  if Length(itens) <= 0 then
  begin
    Application.MessageBox('Nenhum item selecionado!', 'Atenção',
      MB_ICONINFORMATION);
    abort;
  end;

  if Application.MessageBox
    ('Confirma o cancelamento da(s) conta(s) selecionada(s)?', 'Atenção',
    MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    str_sql :=
      format(' update cpagar set id_situacao=2 , data_cancelamento=localtimestamp, '
      + ' id_usuario_cancelamento=%d ' +
      ' where id_cpagar in (%s) and id_empresa=%d and id_situacao<>7',
      [id_usuario_contas_pagar, IntArrayToString(itens, ', '), recproj.iEmp]);
    ExecutaComandoSQL(str_sql);
    qrCPagar.close;
    qrCPagar.Open;
  end;
end;

procedure TfrmControleContasPagar.btIncluirClick(Sender: TObject);
begin
  inherited;
  frmContasPagarInclusao := TfrmContasPagarInclusao.Create(self,
    id_usuario_contas_pagar);
  frmContasPagarInclusao.showmodal;
  frmContasPagarInclusao.free;
  qrCPagar.close;
  qrCPagar.Open;
end;

end.
