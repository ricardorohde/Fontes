unit uVendaFiadoCrediario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Data.DB, Datasnap.DBClient, Vcl.StdCtrls, Vcl.ComCtrls, cxTextEdit,
  cxMaskEdit, cxButtonEdit, AdvGroupBox, Vcl.DBActns, System.Actions,
  Vcl.ActnList, AdvGlowButton, JvExStdCtrls, JvCombobox, JvDBCombobox, UNI,
  MemDS, DBAccess, Datasnap.Provider, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, Vcl.Mask, Vcl.DBCtrls,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxSpinEdit, cxDBEdit, System.Math,
  cxCheckBox;

type
  TfrmVendaFiadoCrediario = class(TfrmModelo)
    btCancela: TAdvGlowButton;
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
    acBuscaCliente: TAction;
    AdvGroupBox4: TAdvGroupBox;
    lbCliente: TLabel;
    edCodCliente: TcxButtonEdit;
    dtpDataLançamento: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    edVenda: TEdit;
    lbVenda: TLabel;
    edDocumento: TEdit;
    Label3: TLabel;
    edValor: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    btConfirma: TAdvGlowButton;
    cdsParcelasFiado: TClientDataSet;
    cbCondicaoPag: TJvDBComboBox;
    Label6: TLabel;
    cdsCondicaoPagamento: TClientDataSet;
    dspCondicaoPagamento: TDataSetProvider;
    qrCondicaoPagamento: TUniQuery;
    qrCondicaoPagamentoid_condicaopagamento: TIntegerField;
    qrCondicaoPagamentodescricao: TWideStringField;
    qrCondicaoPagamentoperiodicidade_inicio: TIntegerField;
    cdsCondicaoPagamentoid_condicaopagamento: TIntegerField;
    cdsCondicaoPagamentodescricao: TWideStringField;
    cdsCondicaoPagamentoperiodicidade_inicio: TIntegerField;
    dsCondicaoPagamento: TDataSource;
    Label7: TLabel;
    btGeraParcelas: TAdvGlowButton;
    cdsParcelasFiadodocumento: TStringField;
    cdsParcelasFiadovencimento: TDateField;
    cdsParcelasFiadovalor: TFloatField;
    dsParcelasFiado: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1documento: TcxGridDBColumn;
    cxGrid1DBTableView1vencimento: TcxGridDBColumn;
    cxGrid1DBTableView1valor: TcxGridDBColumn;
    btNovo: TAdvGlowButton;
    btExcluir: TAdvGlowButton;
    cdsParcelasFiadototal: TAggregateField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    btSalvar: TAdvGlowButton;
    cdsParcelasFiadoparcela_saldo: TBooleanField;
    ckSaldoCliente: TcxCheckBox;
    constructor Create(sender: TComponent; id_venda, id_cliente: integer;
      valor_fiado: double); reintroduce;
    procedure edCodClienteExit(sender: TObject);
    procedure acBuscaClienteExecute(sender: TObject);
    procedure btNovoClick(sender: TObject);
    procedure btExcluirClick(sender: TObject);
    procedure btGeraParcelasClick(sender: TObject);
    procedure btCancelaClick(sender: TObject);
    procedure btConfirmaClick(sender: TObject);
    procedure btSalvarClick(sender: TObject);
    procedure dsParcelasFiadoStateChange(sender: TObject);
    procedure FormKeyDown(sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbCondicaoPagChange(sender: TObject);
    procedure cdsCondicaoPagamentoperiodicidade_inicioChange(sender: TField);
    procedure cdsParcelasFiadoBeforePost(DataSet: TDataSet);
    procedure geraParcelaSaldo(out valor_contas: double);
    procedure Button1Click(sender: TObject);
    procedure edCodClientePropertiesChange(sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    valor_fiado, valor_parcela_saldo: double;
    id_venda, nro_venda, id_cliente: integer;
  end;

var
  frmVendaFiadoCrediario: TfrmVendaFiadoCrediario;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uFuncoes, uBuscaRegistro;

procedure TfrmVendaFiadoCrediario.geraParcelaSaldo(out valor_contas: double);
var
  limite_fiado, saldo_fiado: double;
begin
  inherited;

  VerificaSaldoFiado(saldo_fiado, limite_fiado, id_cliente, recproj.iEmp,
    valor_fiado);

  // saldo_fiado := roundto(saldo_fiado + limite_fiado,-2);
  cdsParcelasFiado.EmptyDataSet;
  cdsParcelasFiado.Append;
  cdsParcelasFiado.FieldByName('vencimento').AsDateTime := Date;
  cdsParcelasFiado.FieldByName('documento').asstring := 'Saldo do cliente';
  cdsParcelasFiado.FieldByName('parcela_saldo_cliente').AsBoolean := true;

  // verifica se o saldo é suficiente... e gera a parcela com o saldo
  if saldo_fiado >= valor_fiado then
  begin
    valor_parcela_saldo := valor_fiado;
    valor_contas := 0;
  end
  else if saldo_fiado <= 0 then
  begin
    valor_parcela_saldo := 0;
    valor_contas := valor_fiado;
  end
  else
  begin
    valor_parcela_saldo := saldo_fiado;
    valor_contas := roundto(valor_fiado - saldo_fiado, -2);
  end;
  cdsParcelasFiado.FieldByName('valor').AsFloat := valor_parcela_saldo;
  cdsParcelasFiado.post;
end;

procedure TfrmVendaFiadoCrediario.acBuscaClienteExecute(sender: TObject);
var
  str_sql: string;
begin
  inherited;
  edCodCliente.SetFocus;

  str_sql :=
    ' select cli_001, cli_002, cli_012, cli_013, fn_situacoes(sit_001) from clientes ';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
    CriaIntegerArray([0, 1, 2, 3, 4]), CriaStringArray(['Código', 'Cliente',
    'Telefone 1', 'Telefone 2', 'Status']), 0, 1,
    ' emp_001=' + IntToStr(recproj.iEmp), 800, 500);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag = 1 then
    edCodCliente.Text := frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.Free;
  edCodClienteExit(nil);
end;

procedure TfrmVendaFiadoCrediario.btGeraParcelasClick(sender: TObject);
var
  qr_aux: TUniQuery;
  str_sql: string;
  i, qtd_parcelas, dia_vencimento: integer;
  dia, mes, ano: Word;
  data_ref, data_parcela: Tdate;
  valor_parcela, correcao, limite_fiado, valor_contas: double;
  utilizacontrolecliente: boolean;
  dia_vencimento_cliente: integer;

begin
  inherited;
  valor_contas := valor_fiado;
  if ckSaldoCliente.Checked then
  begin
    if (id_cliente <= 0) then
    begin
      Application.messagebox('Cliente não informado!', 'Atenção',
        MB_ICONINFORMATION + mb_ok);
      abort;
    end;
    geraParcelaSaldo(valor_contas);
  end
  else
  begin
    cdsParcelasFiado.EmptyDataSet;
  end;

  DecodeDate(Date, ano, mes, dia);

  dia_vencimento := cdsCondicaoPagamento.FieldByName('periodicidade_inicio').AsInteger;

  if (cbCondicaoPag.ItemIndex >= 0) and (valor_contas > 0) then
  begin
    if cdsCondicaoPagamento.RecordCount > 0 then
    begin
      qr_aux := TUniQuery.Create(self); // aqui você cria conexao
      qr_aux.Connection := frmmenu.conexao;
      str_sql :=
        format('select dias_prazo from condicaopagamentoparcela where id_condicaopagamento=%d and id_empresa=%d',
        [strtoint(cbCondicaoPag.Values[cbCondicaoPag.ItemIndex]),
        recproj.iEmp]);
      ExecutaConsultaSQL(qr_aux, str_sql);
      qtd_parcelas := qr_aux.RecordCount;
      if qtd_parcelas < 1 then
        qtd_parcelas := 1;
      valor_parcela := roundto(valor_contas / qtd_parcelas, -2);
      // correção de arredondamento
      correcao := valor_contas - (valor_parcela * qtd_parcelas);

      i := 1;

      // se não preencheu o dia do vencimento , vai obedecer a regra das parcelas, senão o dia será fixo...
      if dia_vencimento <= 0 then
      begin
        data_ref := Date;
      end
      else
      begin
        if (mes = 2) and (dia_vencimento > 28) then
          dia_vencimento := 28;
        if (mes in [4, 6, 9, 11]) and (dia_vencimento > 30) then
          dia_vencimento := 30;

        data_ref := encodedate(ano, mes, dia_vencimento);
        if data_ref < Date then
          data_ref := IncMonth(data_ref);
      end;

      while not qr_aux.eof do
      begin

        // se não preencheu o dia do vencimento , vai obedecer a regra das parcelas, senão o dia será fixo...
        if dia_vencimento <= 0 then
        begin
          data_parcela := data_ref + qr_aux.FieldByName('dias_prazo').AsInteger;
        end
        else
        begin
          data_parcela := IncMonth(data_ref, i - 1);
        end;

        cdsParcelasFiado.Append;
        cdsParcelasFiado.FieldByName('vencimento').AsDateTime := data_parcela;
        cdsParcelasFiado.FieldByName('documento').asstring :=
          format('%s-%d', [edDocumento.Text, i]);
        // aplica correção de arredondadmento na ultima parcela
        if i = qtd_parcelas then
          cdsParcelasFiado.FieldByName('valor').AsFloat := valor_parcela
            + correcao
        else
          cdsParcelasFiado.FieldByName('valor').AsFloat := valor_parcela;
        cdsParcelasFiado.FieldByName('parcela_saldo_cliente').AsBoolean
          := false;
        cdsParcelasFiado.post;
        qr_aux.Next;
        i := i + 1;
      end;
      btconfirma.SetFocus;
    end;
  end;

end;

procedure TfrmVendaFiadoCrediario.btCancelaClick(sender: TObject);
begin
  inherited;
  self.Tag := 0;
  close;
end;

procedure TfrmVendaFiadoCrediario.btConfirmaClick(sender: TObject);
var
  saldo, limite_fiado, valor_parcelas: double;
  str_aux: string;
  parcela_zerada: boolean;
begin
   if cdsparcelasfiado.state=dsedit then
  begin
   cdsparcelasfiado.Post;
   end;
  if id_cliente <= 0 then
  begin
    Application.messagebox('Cliente não informado!', 'Atenção',
      MB_ICONINFORMATION + mb_ok);
    abort;
  end;
  // verifica se há saldo pro cliente informado
  if not VerificaSaldoFiado(saldo, limite_fiado, id_cliente, recproj.iEmp,
    valor_fiado) then
  begin
    str_aux := format('O cliente %s não possui saldo suficente!' + #13#10 +
      'Saldo: %m' + #13#10 + 'Limite: %m', [lbCliente.Caption, saldo,
      limite_fiado]);
    Application.messagebox(pchar(str_aux), 'Atenção',
      MB_ICONINFORMATION + mb_ok);
    abort;
  end;

  // verifica se o valor das parcelas é igual ao do fiado
  if varisnull(cdsParcelasFiado.FieldByName('total').value) then
    valor_parcelas := 0
  else
    valor_parcelas := cdsParcelasFiado.FieldByName('total').value;
  // valor_parcelas<>valor_parcelas não funciona para float...
  if CompareValue(valor_parcelas, valor_fiado) <> 0 then
  begin
    Application.messagebox
      ('O valor das parcelas é diferente do valor do crediário!', 'Atenção',
      MB_ICONINFORMATION + mb_ok);
    abort;
  end;


  // verifica parcela zerada...
  cdsParcelasFiado.First;
  parcela_zerada := false;
  while not cdsParcelasFiado.eof do
  begin
    if not parcela_zerada then
      parcela_zerada := (cdsParcelasFiado.FieldByName('valor').AsFloat <= 0) and
        (not cdsParcelasFiado.FieldByName('parcela_saldo_cliente').AsBoolean);
    cdsParcelasFiado.Next;
  end;
  if parcela_zerada then
  begin
    Application.messagebox('Foi informada parcela de valor zero!', 'Atenção',
      MB_ICONINFORMATION + mb_ok);
    abort;
  end;

  self.Tag := 1;
  close;
end;

procedure TfrmVendaFiadoCrediario.btExcluirClick(sender: TObject);
begin
  inherited;
  if cdsParcelasFiado.active then
  begin
    if cdsParcelasFiado.RecordCount > 0 then
    begin
      if not cdsParcelasFiado.FieldByName('parcela_saldo_cliente').AsBoolean
      then
        if Application.messagebox('Deseja exluir o registro?', 'Atenção',
          MB_ICONQUESTION + mb_yesno) = mryes then
          cdsParcelasFiado.Delete;
    end;
  end;
end;

procedure TfrmVendaFiadoCrediario.btNovoClick(sender: TObject);
var
  nro_parc: integer;
begin
  inherited;
  btSalvarClick(nil);
  nro_parc := cdsParcelasFiado.RecordCount + 1;
  cdsParcelasFiado.Append;
  cdsParcelasFiado.FieldByName('vencimento').AsDateTime := Date;
  cdsParcelasFiado.FieldByName('documento').asstring :=
    format('%s-%d', [edDocumento.Text, nro_parc]);
  cdsParcelasFiado.FieldByName('valor').AsFloat := 0;
end;

procedure TfrmVendaFiadoCrediario.btSalvarClick(sender: TObject);
begin
  inherited;
  if cdsParcelasFiado.state in [dsinsert, dsEdit] then
  begin
    if cdsParcelasFiado.FieldByName('parcela_saldo_cliente').AsBoolean then
      cdsParcelasFiado.cancel
    else
      cdsParcelasFiado.post;
  end;
end;

procedure TfrmVendaFiadoCrediario.Button1Click(sender: TObject);
begin
  inherited;
  cdsParcelasFiado.Refresh;
end;

procedure TfrmVendaFiadoCrediario.cbCondicaoPagChange(sender: TObject);
begin
  inherited;
  cdsCondicaoPagamento.Locate('id_condicaopagamento',
    cbCondicaoPag.Values[cbCondicaoPag.ItemIndex], []);
end;

procedure TfrmVendaFiadoCrediario.cdsCondicaoPagamentoperiodicidade_inicioChange
  (sender: TField);
begin
  inherited;
  if (cdsCondicaoPagamento.FieldByName('periodicidade_inicio').AsInteger < 0) or
    (cdsCondicaoPagamento.FieldByName('periodicidade_inicio').AsInteger > 31)
  then
    cdsCondicaoPagamento.FieldByName('periodicidade_inicio').AsInteger := 0;
end;

procedure TfrmVendaFiadoCrediario.cdsParcelasFiadoBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsParcelasFiado.FieldByName('parcela_saldo_cliente').AsBoolean and
    (cdsParcelasFiado.state = dsEdit) then
    cdsParcelasFiado.FieldByName('valor').AsFloat := valor_parcela_saldo;
end;

constructor TfrmVendaFiadoCrediario.Create(sender: TComponent;
  id_venda, id_cliente: integer; valor_fiado: double);
var
  str_sql: string;
  qr_aux: TUniQuery;
  valor_contas: double;
  utilizacontrolecliente: boolean;
  dia_vencimento_cliente: integer;

begin
  inherited Create(sender);
  self.valor_fiado := valor_fiado;
  self.id_venda := id_venda;
  self.id_cliente := id_cliente;

  qr_aux := TUniQuery.Create(self);
  qr_aux.Connection := frmmenu.conexao;

  cdsParcelasFiado.CreateDataSet;
  qrCondicaoPagamento.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  cdsCondicaoPagamento.Open;

  while not cdsCondicaoPagamento.eof do
  begin
    cbCondicaoPag.Items.Add(cdsCondicaoPagamento.FieldByName('descricao')
      .asstring);
    cbCondicaoPag.Values.Add(cdsCondicaoPagamento.FieldByName
      ('id_condicaopagamento').asstring);
    cdsCondicaoPagamento.Next;
  end;
  cbCondicaoPag.ItemIndex := 0;

  str_sql :=
    format('select ven_029 as nro_venda, cli_001 as id_cliente from venda where ven_001 = %d and emp_001=%d',
    [id_venda, recproj.iEmp]);
  ExecutaConsultaSQL(qr_aux, str_sql);

  edVenda.Text := qr_aux.FieldByName('nro_venda').asstring;
  edDocumento.Text := qr_aux.FieldByName('nro_venda').asstring;

  edCodCliente.Text := IntToStr(id_cliente);
  edCodClienteExit(nil);
  edCodCliente.Enabled := id_cliente <= 0;

  edValor.Text := format('%m', [valor_fiado]);
  dtpDataLançamento.Date := Date;
  geraParcelaSaldo(valor_contas);

  // Verifica se Controle de fiado por data de vencimento esta habilitado na configuração  Rafael inicio 21/04/2017
  qr_aux := TUniQuery.Create(self);
  qr_aux.Connection := frmmenu.conexao;
  str_sql := 'select b_utiliza_controle_cliente from empresas where emp_001=' +
    IntToStr(recproj.iEmp);
  qr_aux.close;
  qr_aux.sql.Clear;
  qr_aux.sql.Add(str_sql);
  qr_aux.Open;
  utilizacontrolecliente := qr_aux.FieldByName('b_utiliza_controle_cliente')
    .AsBoolean;

  if utilizacontrolecliente = true then
  begin
    str_sql := 'select dia_vencimento from clientes where cli_001=' +
      IntToStr(id_cliente) + ' and emp_001=' + IntToStr(recproj.iEmp);
    qr_aux.close;
    qr_aux.sql.Clear;
    qr_aux.sql.Add(str_sql);
    qr_aux.Open;
    dia_vencimento_cliente := qr_aux.FieldByName('dia_vencimento').AsInteger;
    cdsCondicaoPagamento.Edit; // entrou em modo edição
    cdsCondicaoPagamento.FieldByName('periodicidade_inicio').AsInteger :=
      dia_vencimento_cliente;

  end;
  // Rafael termino 21/04/2017

end;

procedure TfrmVendaFiadoCrediario.dsParcelasFiadoStateChange(sender: TObject);
begin
  inherited;
  btSalvar.Enabled := cdsParcelasFiado.state in [dsinsert, dsEdit];
end;

procedure TfrmVendaFiadoCrediario.edCodClienteExit(sender: TObject);
var
  str_sql: string;
begin
  inherited;
  str_sql := 'select cli_002 from clientes where cli_001=%d and emp_001=' +
    IntToStr(recproj.iEmp);
  LookupBuscaExit(id_cliente, edCodCliente, lbCliente, str_sql, 'Cliente');
end;

procedure TfrmVendaFiadoCrediario.edCodClientePropertiesChange(sender: TObject);
var
  valor_contas: double;
begin
  inherited;
  cdsParcelasFiado.EmptyDataSet;
  geraParcelaSaldo(valor_contas);
end;

procedure TfrmVendaFiadoCrediario.FormKeyDown(sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_return then
    Perform(WM_NEXTDLGCTL, 0, 0);
end;

end.
