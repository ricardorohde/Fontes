unit uPDVCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, Vcl.StdCtrls, Data.DB,
  MemDS, DBAccess, Uni, AdvGlowButton, Vcl.ActnList, System.Actions;

type
  TfrmPDVCliente = class(TfrmModelo)
    btConfirma: TAdvGlowButton;
    btCancela: TAdvGlowButton;
    qrCliente: TUniQuery;
    qrClientenome: TWideStringField;
    qrClientetelefone1: TWideStringField;
    qrClientetelefone2: TWideStringField;
    qrClientecelular1: TWideStringField;
    qrClientecelular2: TWideStringField;
    qrClientecelular3: TWideStringField;
    qrClienteendereco: TWideStringField;
    qrClienteendereco_numero: TWideStringField;
    qrClientebairro: TWideStringField;
    qrClientecidade: TWideStringField;
    qrClientecep: TWideStringField;
    qrClienteid_cliente: TIntegerField;
    qrClienteid_empresa: TIntegerField;
    qrClienteendereco_complemento: TWideStringField;
    qrClienteendereco_referencia: TWideStringField;
    qrClientetaxa_delivery: TFloatField;
    qrClientenro_vendas: TLargeintField;
    qrClientepontos_atuais: TIntegerField;
    qrClientecli_004: TWideStringField;
    dsCliente: TDataSource;
    Label2: TLabel;
    Label10: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label12: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label17: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label28: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label15: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label14: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label18: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label1: TLabel;
    edIDCliente: TcxButtonEdit;
    ActionList1: TActionList;
    acBuscaCliente: TAction;
    edCPF: TEdit;
    qrClientecpf: TWideStringField;
    edNomeCliente: TEdit;
    btCadastraCliente: TAdvGlowButton;
    procedure btCancelaClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrClienteBeforeOpen(DataSet: TDataSet);
    procedure edIdClienteExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure acBuscaClienteExecute(Sender: TObject);
    procedure qrClienteAfterOpen(DataSet: TDataSet);
    Constructor Create(sender : tcomponent ; idcliente : integer ; cpfcliente, nomecliente : string) ; reintroduce;
    procedure edCPFExit(Sender: TObject);
    procedure btCadastraClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id_cliente : integer;
    cpf, nome_cliente : string;
  end;

var
  frmPDVCliente: TfrmPDVCliente;

implementation

{$R *.dfm}

uses uMenu, uBuscaRegistro, uFuncoes, uDetalheCliente;

constructor  TfrmPDVCliente.Create(sender : tcomponent ; idcliente : integer ; cpfcliente, nomecliente : string) ;
begin
  inherited Create(sender);
  id_cliente :=  idcliente;
  cpf  := cpfcliente;
  nome_cliente := nomecliente;
  edCPF.Text := cpf;
  edNomeCliente.Text := nomecliente;

  if idcliente>0 then
  begin
    edIDCliente.Text := inttostr(idcliente);
    edIdClienteExit(nil);
  end;
end;

procedure TfrmPDVCliente.acBuscaClienteExecute(Sender: TObject);
begin
  inherited;
  edIDCliente.setfocus;
  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
          ' select c.cli_001, c.emp_001, c.cli_002,  c.cli_012, ' +
          ' coalesce(c.cidade_desc, d.cid_002) as cidade '+
          ' from clientes c ' +
          ' left join cidades d on c.cid_001=d.cid_001 ' ,
        vararrayof([2,3,4]) ,
        vararrayof(['Nome', 'Telefone', 'Cidade']),
        0, 0, ' c.sit_001=4 and c.emp_001='+IntToStr(RecProj.iEmp) );
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
  begin
    edIDCliente.Text := frmBuscaRegistro.valor_retorno;
    edIDClienteexit(nil);
  end;
  frmBuscaRegistro.Free;
end;

procedure TfrmPDVCliente.btCadastraClienteClick(Sender: TObject);
begin
  frmDetalheCliente:=tfrmdetalhecliente.Create(self);
  frmDetalheCliente.ShowModal;
  // se cadastrou o cliente, já pega o cliente e lança numa nova venda
  if frmDetalheCliente.qrDetalhe.FieldByName('cli_001').AsInteger>0 then
  begin
    edIDCliente.Text:= frmDetalheCliente.qrDetalhe.FieldByName('cli_001').asstring;
    edIdClienteExit(nil);
  end;
  frmDetalheCliente.Free;
end;

procedure TfrmPDVCliente.btCancelaClick(Sender: TObject);
begin
  inherited;
  {if old_cliente=0 then
    frmPDV.qrVenda.FieldByName('id_cliente').Clear
  else
    frmPDV.qrVenda.FieldByName('id_cliente').value := old_cliente;

  frmPDV.qrVenda.FieldByName('cpf_cliente').asstring := old_CPF; }
  self.Tag:=0;
  close;
end;

procedure TfrmPDVCliente.btConfirmaClick(Sender: TObject);
begin
  inherited;
  if qrCliente.Active then
  begin
    if qrCliente.RecordCount>0 then
      id_cliente := qrCliente.FieldByName('id_cliente').asinteger
    else
      id_cliente :=0;
  end
  else
  begin
    id_cliente :=0;
  end;
  cpf := edCPF.Text;
  nome_cliente := edNomeCliente.Text;
  self.tag := 1;
  close;
end;

procedure TfrmPDVCliente.edCPFExit(Sender: TObject);
begin
  inherited;
  if edCPF.Text='' then exit;

  if not (Valida_CPF(edCPF.Text) or  Valida_CNPJ(edCPF.Text) ) then
  begin
    Application.MessageBox('CPF/CNPJ inválido', 'Atenção', MB_ICONINFORMATION);
  end;
end;

procedure TfrmPDVCliente.edIdClienteExit(Sender: TObject);
var cod_cliente : integer;
begin
  inherited;
  if edIDCliente.Text='' then
  begin
    qrCliente.Close;
    cod_cliente := 0;
    exit;
  end;

  try
    cod_cliente := strtoint(edIDCliente.Text);
  except
    cod_cliente := 0;
  end;

  qrCliente.Close;
  qrCliente.ParamByName('id_cliente').asinteger := cod_cliente;
  qrCliente.Open;

  if qrCliente.RecordCount<1 then
  begin
    id_cliente := 0;
    cpf:='';
    nome_cliente :='';
    edIDCliente.Clear;
    Application.MessageBox('Cliente não encontrado!', 'Atenção', MB_ICONEXCLAMATION);
  end


end;

procedure TfrmPDVCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then
  begin
    Perform(WM_NEXTDLGCTL,0,0);
  end
  else if key=VK_ESCAPE then
    btcancela.click;
end;

procedure TfrmPDVCliente.FormShow(Sender: TObject);
begin
  inherited;
  qrCliente.ParamByName('id_cliente').AsInteger := id_cliente;
  qrCliente.Open;
  edIDCliente.SetFocus;
end;

procedure TfrmPDVCliente.qrClienteAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if qrCliente.RecordCount>0 then
  begin
    if trim(edCPF.Text)='' then
    begin
      edCPF.Text := qrCliente.FieldByName('cpf').AsString;
      edNomeCliente.Text := qrCliente.FieldByName('nome').AsString;
    end;
    id_cliente :=  qrCliente.FieldByName('id_cliente').AsInteger;
  end
  else
  begin
    id_cliente:=0
  end;
end;

procedure TfrmPDVCliente.qrClienteBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qrCliente.ParamByName('id_empresa').AsInteger :=  RecProj.iEmp;
end;

end.
