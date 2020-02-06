unit uRelatorioMovimentoContaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, AdvGlowButton, Vcl.ExtCtrls,
  AdvPanel, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, Vcl.StdCtrls,
  AdvGroupBox, Vcl.DBActns, System.Actions, Vcl.ActnList, Data.DB, MemDS,
  DBAccess, Uni, frxClass, frxDBSet, Vcl.ComCtrls;

type
  TfrmRelatorioMovimentoContaCliente = class(TfrmModelo)
    btConfirma: TAdvGlowButton;
    btCancelar: TAdvGlowButton;
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
    qrRelMovContaCliente: TUniQuery;
    qrRelMovContaClientecliente: TWideStringField;
    qrRelMovContaClientedata_movimento: TDateTimeField;
    qrRelMovContaClientecredito_debito: TWideStringField;
    qrRelMovContaClientevalor: TFloatField;
    qrRelMovContaClienteid_venda: TIntegerField;
    qrRelMovContaClienteobservacao: TBlobField;
    qrRelMovContaClienteresponsavel: TWideStringField;
    qrRelMovContaClientelancamento_manual: TBooleanField;
    dbRelMovContaCliente: TfrxDBDataset;
    repMovContaCliente: TfrxReport;
    AdvGroupBox3: TAdvGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    qrRelMovContaClienteid_cliente: TIntegerField;
    qrRelMovContaClientesaldo_atual: TFloatField;
    qrRelMovContaClientelimite_credito: TFloatField;
    procedure btCancelarClick(Sender: TObject);
    procedure acBuscaClienteExecute(Sender: TObject);
    procedure edCodClienteExit(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    constructor Create (sender : Tcomponent) ; reintroduce;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }

  public
    { Public declarations }
    cod_cliente : integer;
  end;

var
  frmRelatorioMovimentoContaCliente: TfrmRelatorioMovimentoContaCliente;

implementation

{$R *.dfm}

uses uMenu, uBuscaRegistro, uFuncoes;

constructor TfrmRelatorioMovimentoContaCliente.Create (sender : Tcomponent);
var dia, mes, ano : word;
begin
  inherited Create(sender);
  cod_cliente := 0;
  //preenche os filtros de data com o primeiro dia do mes e com o dia atual
  DecodeDate(date, ano, mes, dia);
  dtpDataInicial.Date:= EncodeDate(ano, mes, 1);
  dtpDataFinal.Date:=EncodeDate(ano, mes, dia);
end;

procedure TfrmRelatorioMovimentoContaCliente.acBuscaClienteExecute(
  Sender: TObject);
var str_sql : string;
begin
  inherited;
  edCodCliente.SetFocus;

  str_sql:= ' select cli_001, cli_002, cli_012, cli_013, fn_situacoes(sit_001) from clientes ';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
    str_sql,
    CriaIntegerArray([0,1,2,3,4]) ,
    CriaStringArray(['Código', 'Cliente', 'Telefone 1','Telefone 2', 'Status' ]),
    0, 1, ' emp_001='+IntToStr(RecProj.iEmp), 800, 500);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
    edCodCliente.Text:= frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.Free;
  edCodClienteExit(nil);
end;

procedure TfrmRelatorioMovimentoContaCliente.btCancelarClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TfrmRelatorioMovimentoContaCliente.btConfirmaClick(Sender: TObject);
begin
  inherited;
  qrRelMovContaCliente.Close;
  qrRelMovContaCliente.ParamByName('id_cliente').AsInteger:=cod_cliente;
  qrRelMovContaCliente.ParamByName('id_empresa').AsInteger:=recproj.iEmp;
  qrRelMovContaCliente.ParamByName('data_1').AsDateTime := dtpDataInicial.Date;
  qrRelMovContaCliente.ParamByName('data_2').AsDateTime := dtpDataFinal.Date+1;
  qrRelMovContaCliente.Open;

  if qrRelMovContaCliente.RecordCount>0 then
  begin
    repMovContaCliente.PrepareReport;
    repMovContaCliente.ShowReport;
  end
  else
    Application.MessageBox('Sem dados para exibir!', 'Atenção', MB_ICONINFORMATION);
end;

procedure TfrmRelatorioMovimentoContaCliente.edCodClienteExit(Sender: TObject);
var str_sql : string;
begin
  inherited;
  str_sql := 'select cli_002 from clientes where cli_001=%d and emp_001='+inttostr(recproj.iEmp);
  LookupBuscaExit(cod_cliente, edCodCliente, lbCliente, str_sql, 'Cliente');
end;

procedure TfrmRelatorioMovimentoContaCliente.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_return then Perform(WM_NEXTDLGCTL, 0, 0);
end;

end.
