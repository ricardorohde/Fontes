unit uControleDevolucaoFechamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxRadioGroup,
  cxTextEdit, cxMaskEdit, cxButtonEdit, AdvGlowButton;

type
  TfrmControleDevolucaoFechamento = class(TfrmModelo)
    lbCliente: TLabel;
    Label4: TLabel;
    edCodCliente: TcxButtonEdit;
    rbCliente: TcxRadioButton;
    rbCaixa: TcxRadioButton;
    meObservacao: TMemo;
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
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    Label1: TLabel;
    lbValorDevolucao: TLabel;
    procedure acBuscaClienteExecute(Sender: TObject);
    procedure edCodClienteExit(Sender: TObject);
    constructor Create (sender : Tcomponent ; valor_dev : double ; id_cliente : integer = 0) ; reintroduce;
    procedure btConfirmaClick(Sender: TObject);
    procedure rbClienteClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    id_cliente : integer;
  end;

var
  frmControleDevolucaoFechamento: TfrmControleDevolucaoFechamento;

implementation

{$R *.dfm}

uses uBuscaRegistro, uFuncoes, Funcao_DB, uMenu;

procedure TfrmControleDevolucaoFechamento.acBuscaClienteExecute(
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

procedure TfrmControleDevolucaoFechamento.edCodClienteExit(Sender: TObject);
var str_sql : string;
begin
  inherited;
  str_sql := 'select cli_002 from clientes where cli_001=%d and emp_001='+inttostr(recproj.iEmp);
  LookupBuscaExit(id_cliente, edCodCliente, lbCliente, str_sql, 'Cliente');
end;

procedure TfrmControleDevolucaoFechamento.rbClienteClick(Sender: TObject);
begin
  inherited;
  edCodCliente.Enabled := rbCliente.Checked;
end;

procedure TfrmControleDevolucaoFechamento.btCancelaClick(Sender: TObject);
begin
  inherited;
  self.tag := 0;
  self.Close;
end;

procedure TfrmControleDevolucaoFechamento.btConfirmaClick(Sender: TObject);
begin
  inherited;
  if rbcliente.Checked then
  begin
    if id_cliente<=0  then
    begin
      application.MessageBox('Cliente não informado!', 'Atenção', MB_ICONINFORMATION);
      edCodCliente.SetFocus;
      abort;
    end;
  end
  else
  begin
    frmMenu.VerificaCaixaAberto;
  end;

  self.tag := 1;
  self.Close;

end;

constructor TfrmControleDevolucaoFechamento.Create (sender : Tcomponent ; valor_dev : double ; id_cliente : integer = 0) ;
begin
  inherited Create(sender);
  self.id_cliente := id_cliente;

  if id_cliente>0 then
  begin
    edCodCliente.Text := inttostr(id_cliente);
    edCodClienteExit(nil);
  end;

  lbValorDevolucao.caption := format('R$ %.2f',[valor_dev]);
  rbClienteClick(nil);

end;


end.


