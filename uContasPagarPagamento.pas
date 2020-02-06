unit uContasPagarPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  Datasnap.DBClient, Datasnap.Provider, MemDS, DBAccess, Uni, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, AdvGlowButton, Vcl.StdCtrls, AdvGroupBox,
  cxContainer, cxCalc, cxDBEdit, Vcl.DBCtrls, Vcl.DBActns, System.Actions,
  Vcl.ActnList, cxButtonEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxCurrencyEdit, JvExStdCtrls, JvEdit, JvValidateEdit, cxRadioGroup, System.Math,
  cxSpinEdit, JvCombobox, JvDBCombobox;

type
  TfrmContasPagarPagamento = class(TfrmModelo)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qrCPagar: TUniQuery;
    dspCPagar: TDataSetProvider;
    cdsCPagar: TClientDataSet;
    qrCPagarid_cpagar: TIntegerField;
    qrCPagardescricao: TWideStringField;
    qrCPagarnota: TIntegerField;
    qrCPagardocumento: TWideStringField;
    qrCPagarvalor: TFloatField;
    qrCPagarvalor_desconto: TFloatField;
    qrCPagarvalor_acrescimo: TFloatField;
    qrCPagarvalor_pago: TFloatField;
    qrCPagarid_conta: TIntegerField;
    qrCPagardata_pagamento: TDateTimeField;
    qrCPagarnome_fornecedor: TWideStringField;
    qrCPagarconta_desc: TWideStringField;
    cdsCPagarid_cpagar: TIntegerField;
    cdsCPagardescricao: TWideStringField;
    cdsCPagarnota: TIntegerField;
    cdsCPagardocumento: TWideStringField;
    cdsCPagarvalor: TFloatField;
    cdsCPagarvalor_desconto: TFloatField;
    cdsCPagarvalor_acrescimo: TFloatField;
    cdsCPagarvalor_pago: TFloatField;
    cdsCPagarid_conta: TIntegerField;
    cdsCPagardata_pagamento: TDateTimeField;
    cdsCPagarnome_fornecedor: TWideStringField;
    cdsCPagarconta_desc: TWideStringField;
    dsCPagar: TDataSource;
    cxGrid1DBTableView1id_cpagar: TcxGridDBColumn;
    cxGrid1DBTableView1nota: TcxGridDBColumn;
    cxGrid1DBTableView1data_vencimento: TcxGridDBColumn;
    cxGrid1DBTableView1documento: TcxGridDBColumn;
    cxGrid1DBTableView1valor: TcxGridDBColumn;
    cxGrid1DBTableView1valor_desconto: TcxGridDBColumn;
    cxGrid1DBTableView1valor_acrescimo: TcxGridDBColumn;
    cxGrid1DBTableView1valor_pago: TcxGridDBColumn;
    cxGrid1DBTableView1nome_fornecedor: TcxGridDBColumn;
    cdsCPagartotal_valor: TAggregateField;
    cdsCPagartotal_desconto: TAggregateField;
    cdsCPagartotal_pago: TAggregateField;
    cdsCPagartotal_acrescimo: TAggregateField;
    AdvGroupBox3: TAdvGroupBox;
    FlowPanel1: TFlowPanel;
    btConfirma: TAdvGlowButton;
    btCancela: TAdvGlowButton;
    Label1: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    edCodConta: TcxDBButtonEdit;
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
    acBuscaContaCorrente: TAction;
    acBuscaConta: TAction;
    DBText1: TDBText;
    Label3: TLabel;
    Label8: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    cxGrid1DBTableView1data_pagamento: TcxGridDBColumn;
    AdvGroupBox1: TAdvGroupBox;
    edValorPagamentoConta: TJvValidateEdit;
    edCodContaCorrente: TcxButtonEdit;
    lbContaCorrente: TLabel;
    edValorPagamentoCaixa: TJvValidateEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    rbContaCorrente: TcxRadioButton;
    rbCaixa: TcxRadioButton;
    cbFormaPagamento: TJvDBComboBox;
    Label4: TLabel;
    meObservacao: TMemo;
    qrCPagarid_situacao: TIntegerField;
    cdsCPagarid_situacao: TIntegerField;
    qrCPagardata_vencimento: TDateField;
    cdsCPagardata_vencimento: TDateField;
    qrCPagarid_usuario_pagamento: TIntegerField;
    cdsCPagarid_usuario_pagamento: TIntegerField;
    qrCPagarid_caixa: TIntegerField;
    qrCPagaritemcaixaitem: TIntegerField;
    cdsCPagarid_caixa: TIntegerField;
    cdsCPagaritemcaixaitem: TIntegerField;
    qrCPagarid_movimentocc: TIntegerField;
    cdsCPagarid_movimentocc: TIntegerField;
    constructor Create(sender : tcomponent; ItensSelecionados : TArray<integer>; id_usuario_pagamento : integer);reintroduce;
    procedure btCancelaClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure cdsCPagarid_contaChange(Sender: TField);
    procedure acBuscaContaExecute(Sender: TObject);
    procedure acBuscaContaCorrenteExecute(Sender: TObject);
    procedure edValorPagamentoContaEnter(Sender: TObject);
    procedure edValorPagamentoCaixaEnter(Sender: TObject);
    procedure edCodContaCorrenteExit(Sender: TObject);
    procedure rbContaCorrenteClick(Sender: TObject);
    procedure cdsCPagarvalor_descontoChange(Sender: TField);
    procedure cdsCPagarvalor_acrescimoChange(Sender: TField);
    procedure cdsCPagarvalor_pagoChange(Sender: TField);
    procedure cdsCPagarAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    b_calculando :boolean;
    cod_conta_corrente, id_usuario_contas_pagar : integer;
  public
    { Public declarations }
  end;

var
  frmContasPagarPagamento: TfrmContasPagarPagamento;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uBuscaRegistro, uFuncoes;

procedure TfrmContasPagarPagamento.acBuscaContaCorrenteExecute(Sender: TObject);
var str_sql : string;
begin
  inherited;
  edCodContaCorrente.SetFocus;

  str_sql:= ' select id_contacorrente, agencia, conta, banco, '+
            ' cast(fn_situacoes(id_situacao) as varchar(100)) as situacao from contacorrente ';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
    str_sql,
    CriaIntegerArray([0,1,2,3,4]) ,
    CriaStringArray(['Código', 'Agência', 'Conta','Banco', 'Status' ]),
    0, 1, ' id_situacao=4 and id_empresa='+IntToStr(RecProj.iEmp));
  frmBuscaRegistro.ShowModal;
  cod_conta_corrente := 0;
  if frmBuscaRegistro.Tag=1 then
  begin
    edCodContaCorrente.Text:= frmBuscaRegistro.valor_retorno;
    edCodContaCorrenteExit(nil);
  end;
  frmBuscaRegistro.Free;
end;

procedure TfrmContasPagarPagamento.acBuscaContaExecute(Sender: TObject);
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
    cdsCPagar.FieldByName('id_conta').value:= frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.Free;
end;

procedure TfrmContasPagarPagamento.btCancelaClick(Sender: TObject);
begin
  inherited;
  self.Tag :=0;
  self.Close;
end;

procedure TfrmContasPagarPagamento.btConfirmaClick(Sender: TObject);
var valor_pago, valor_pago_contas : double;
    str_sql : string;
    itempagamento : integer;
begin
  inherited;
  valor_pago_contas := roundto(cdsCPagar.FieldByName('total_pago').value,-2);
  //verifica se os valores informados estão corretos
  if rbCaixa.Checked then
  begin
    valor_pago := roundto(edValorPagamentoCaixa.Value,-2);
    frmMenu.VerificaCaixaAberto;
  end
  else
  begin
    valor_pago := roundto(edValorPagamentoConta.Value,-2);
    if cod_conta_corrente=0 then
    begin
      Application.MessageBox('Não foi informada a conta corrente!', 'Atenção', MB_ICONINFORMATION);
      if edCodContaCorrente.CanFocus then edCodContaCorrente.SetFocus ;
      abort;
    end;
  end;

  if valor_pago <> valor_pago_contas then
  begin
    Application.MessageBox('O valor informado para pagamento é diferente do total informado nas contas a pagar!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  if Application.MessageBox('Confirma o pagamento das contas?', 'Atenção', MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    cdsCPagar.First;
    while not cdsCPagar.EOF do
    begin
      cdsCPagar.Edit;
      if rbCaixa.Checked then
      begin
        InserirCaixaItem(recproj.iIDCaixa, strtoint(cbFormaPagamento.Values[cbFormaPagamento.ItemIndex]),   //empresa, formapag
                         cdsCPagar.FieldByName('valor_pago').AsFloat, 'S',  //valor, tipo=saida
                         meObservacao.Text, 0,0,0,                            //Observacao, venda, encerravenda, encerravendaitem
                         false, 'D',                                        //  antecipado, classificação = D, outros debitos
                         cdsCPagar.FieldByName('id_cpagar').asinteger, 0);   // id_cpagar, id_creceber
        //busca o ultimo id do caixa e atualiza o item
        str_sql := format('select item from caixaitem where id_caixa=%d and id_empresa=%d and id_cpagar=%d',
                            [recproj.iIDCaixa, recproj.iEmp, cdsCPagar.FieldByName('id_cpagar').asinteger]);
        buscacampo(itempagamento, str_sql, '', false);
        cdsCPagar.FieldByName('id_caixa').AsInteger := recproj.iIDCaixa;
        cdsCPagar.FieldByName('itemcaixaitem').AsInteger := itempagamento;
      end
      else
      begin
        InserirMovimentoContaCorrente(recproj.iEmp, cod_conta_corrente, id_usuario_contas_pagar,
                                      cdsCPagar.FieldByName('valor_pago').AsFloat, 'S', meObservacao.Text,
                                      cdsCPagar.FieldByName('data_pagamento').AsDateTime,
                                      cdsCPagar.FieldByName('id_cpagar').asinteger, null);
        str_sql := format('select id_movimento from movimentocontacorrente where id_empresa=%d and id_cpagar=%d ',
                          [recproj.iEmp, cdsCPagar.FieldByName('id_cpagar').asinteger ]);
        buscacampo(itempagamento, str_sql, '', false);
        cdsCPagar.FieldByName('id_movimentocc').AsInteger := itempagamento;
      end;
      cdsCPagar.post;
      cdsCPagar.Next;
    end;
    cdsCPagar.ApplyUpdates(1);
    self.Tag := 1;
    self.close;
  end;
end;

{ movimentocontacorrente(id_movimento}


procedure TfrmContasPagarPagamento.cdsCPagarAfterOpen(DataSet: TDataSet);
begin
  inherited;
  //atualiza o status para pago no clientdataset
  //é necessário editar os registros para que sejam lançado no ApplyUpdates
  cdsCPagar.First;
  while not cdsCPagar.eof do
  begin
    cdsCPagar.Edit;
    cdsCPagar.FieldByName('id_situacao').asinteger :=7;
    cdsCPagar.FieldByName('id_usuario_pagamento').asinteger :=recproj.iEmp;
    cdsCPagar.post;
    cdsCPagar.next;
  end;
end;

procedure TfrmContasPagarPagamento.cdsCPagarid_contaChange(Sender: TField);
var str_sql, nome_conta : string;
begin
  inherited;
  if not cdsCPagar.FieldByName('id_conta').isnull then
  begin
    str_sql := format('select descricao from conta where b_pagar and id_situacao=4 and id_conta=%d and id_empresa=%d',
                      [cdsCPagar.FieldByName('id_conta').asinteger, recproj.iEmp]);
    if not BuscaCampo(nome_conta, str_sql, 'Conta') then
    begin
      abort;
    end
    else
    begin
      cdsCPagar.FieldByName('conta_desc').asstring := nome_conta;
    end;

  end
  else
  begin
    Application.MessageBox('É necessário informar uma conta!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;
end;

procedure TfrmContasPagarPagamento.cdsCPagarvalor_acrescimoChange(
  Sender: TField);
begin
  inherited;
  if cdsCPagar.FieldByName('valor_acrescimo').AsFloat <0 then
  begin
    Application.MessageBox('Valor inválido!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;
  if not b_calculando then
  begin
    b_calculando:= true;
    cdsCPagar.FieldByName('valor_pago').AsFloat := cdsCPagar.FieldByName('valor').AsFloat
                              - cdsCPagar.FieldByName('valor_desconto').AsFloat
                              + cdsCPagar.FieldByName('valor_acrescimo').AsFloat;
    b_calculando:= false;
  end;
end;

procedure TfrmContasPagarPagamento.cdsCPagarvalor_descontoChange(
  Sender: TField);
begin
  inherited;
  if (cdsCPagar.FieldByName('valor_desconto').AsFloat <0) or
     (cdsCPagar.FieldByName('valor_desconto').AsFloat > cdsCPagar.FieldByName('valor').AsFloat) then
  begin
    Application.MessageBox('Valor inválido!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  if not b_calculando then
  begin
    b_calculando:= true;
    cdsCPagar.FieldByName('valor_pago').AsFloat := cdsCPagar.FieldByName('valor').AsFloat
                              - cdsCPagar.FieldByName('valor_desconto').AsFloat
                              + cdsCPagar.FieldByName('valor_acrescimo').AsFloat;
    b_calculando:= false;
  end;
end;

procedure TfrmContasPagarPagamento.cdsCPagarvalor_pagoChange(Sender: TField);
var valor_pago, valor, diferenca : double;
begin
  inherited;
  if cdsCPagar.FieldByName('valor_pago').AsFloat <0 then
  begin
    Application.MessageBox('Valor inválido!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  if not b_calculando then
  begin
    b_calculando:= true;
    valor := roundto(cdsCPagar.FieldByName('valor').AsFloat,-2);
    valor_pago := roundto(cdsCPagar.FieldByName('valor_pago').AsFloat,-2);
    diferenca := valor_pago -  valor;

    if diferenca > 0 then
    begin
      cdsCPagar.FieldByName('valor_desconto').AsFloat := 0;
      cdsCPagar.FieldByName('valor_acrescimo').AsFloat := diferenca;
    end
    else
    begin
      cdsCPagar.FieldByName('valor_desconto').AsFloat := diferenca * -1;
      cdsCPagar.FieldByName('valor_acrescimo').AsFloat := 0 ;
    end;
    b_calculando:= false;
    if cdsCPagar.State =dsEdit then cdsCPagar.post;
  end;
end;

constructor TfrmContasPagarPagamento.Create(sender : tcomponent; ItensSelecionados : TArray<integer>; id_usuario_pagamento : integer);
var str_sql : string;
    qr_aux : TUniQuery;
begin
  inherited Create(sender);
  //frmMenu.VerificaPermissaoAcesso(RecProj.bAcessoCPagarCReceber);
  id_usuario_contas_pagar := id_usuario_pagamento;
  if Length(ItensSelecionados)<=0 then
  begin
    Application.MessageBox('Nenhum item selecionado!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;
  b_calculando:=false;
  qrCPagar.Close;
  cdsCPagar.Close;
  qrCPagar.SQL[qrCPagar.SQL.Count-1] := format(' and cp.id_cpagar in (%s) ',  [IntArrayToString(ItensSelecionados, ', ')]);

  edValorPagamentoConta.AsFloat:=0;
  edValorPagamentoCaixa.AsFloat:=0;
  cdsCPagar.Open;
  lbContaCorrente.caption:='';

  qr_aux := TUniQuery.Create(self);
  qr_aux.Connection := frmmenu.conexao;
  str_sql := format('select for_001, for_002, emp_001 from formapgto where emp_001=%d  and sit_001=4', [recproj.iEmp]);
  ExecutaConsultaSQL(qr_aux,str_sql);
  while not qr_aux.Eof do
  begin
    cbFormaPagamento.Items.Add(qr_aux.Fields[1].asstring);
    cbFormaPagamento.Values.Add(qr_aux.Fields[0].asstring);
    qr_aux.next;
  end;
  cbFormaPagamento.ItemIndex:=0;

end;

procedure TfrmContasPagarPagamento.edCodContaCorrenteExit(Sender: TObject);
var str_sql, nome_conta : string;
begin
  inherited;
  if edCodContaCorrente.Text<>'' then
  begin
    try
      cod_conta_corrente := strtoint(trim(edCodContaCorrente.Text));
    except
      cod_conta_corrente := 0;
    end;
    str_sql := format(' select cast(concat(''AG: '', agencia,  '' | CC: '',conta, '' | '', banco) as varchar(100)) '+
                      ' from contacorrente where id_situacao=4 and id_contacorrente=%d and id_empresa=%d',
                      [cod_conta_corrente, recproj.iEmp]);
    if not BuscaCampo(nome_conta, str_sql, 'Conta corrente') then
    begin
      edCodContaCorrente.Clear;
      edCodContaCorrenteExit(nil);
    end
    else
    begin
      lbContaCorrente.caption := nome_conta;
    end;

  end
  else
  begin
    lbContaCorrente.Caption := '';
    cod_conta_corrente := 0;
  end;
end;

procedure TfrmContasPagarPagamento.edValorPagamentoCaixaEnter(Sender: TObject);
begin
  inherited;
  if edValorPagamentoCaixa.AsFloat<=0  then
    edValorPagamentocaixa.AsFloat := cdsCPagar.FieldByName('total_pago').value;
end;

procedure TfrmContasPagarPagamento.edValorPagamentoContaEnter(Sender: TObject);
begin
  inherited;
  if edValorPagamentoConta.AsFloat<=0  then
    edValorPagamentoConta.AsFloat:= cdsCPagar.FieldByName('total_pago').value;

end;

procedure TfrmContasPagarPagamento.rbContaCorrenteClick(Sender: TObject);
begin
  inherited;
  if rbContaCorrente.Checked then
  begin
    edValorPagamentoContaEnter(nil);
    edValorPagamentoConta.Enabled := true;
    edValorPagamentoCaixa.Enabled := false;
    edValorPagamentoCaixa.value   := 0;
    edCodContaCorrente.Enabled := true;
    cbFormaPagamento.Enabled := false;

  end
  else
  begin
    edValorPagamentoCaixaEnter(nil);
    edValorPagamentoConta.Enabled := false;
    edValorPagamentoCaixa.Enabled := true;
    edValorPagamentoConta.value   := 0;
    edCodContaCorrente.Enabled := false;
    cbFormaPagamento.Enabled := true;
  end;
end;

end.
