unit uControleDeliveryFinaliza;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit,
  cxDBEdit, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls, AdvGroupBox, MemDS, DBAccess,
  Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel, uControleDeliveryFechamento,
  Vcl.Buttons;

type
  TfrmControleDeliveryFinaliza = class(TForm)
    AdvPanel1: TAdvPanel;
    pnBotoes: TFlowPanel;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    AdvGroupBox3: TAdvGroupBox;
    AdvGroupBox1: TAdvGroupBox;
    qrVenda: TUniQuery;
    dsVenda: TDataSource;
    qrVendaven_001: TIntegerField;
    qrVendaemp_001: TIntegerField;
    qrVendaid_cliente: TIntegerField;
    qrVendadata_cadastro: TDateTimeField;
    qrVendatipo_venda: TWideStringField;
    qrVendavenda_orcamento: TIntegerField;
    qrVendadesconto: TFloatField;
    qrVendaacrescimo: TFloatField;
    qrVendatotal_venda: TFloatField;
    qrVendadesconto_percent: TFloatField;
    qrVendasit_001: TIntegerField;
    qrVendausu_001_1: TIntegerField;
    qrVendastatus_desc: TWideStringField;
    qrVendaid_caixa_abertura: TIntegerField;
    qrVendaobservacao: TWideStringField;
    qrVendaid_entregador: TIntegerField;
    qrVendadata_saida: TDateTimeField;
    qrVendahora_saida: TDateTimeField;
    qrVendanome_entregador: TWideStringField;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    btAlterarForma: TAdvGlowButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    qrVendasubtotal_venda: TFloatField;
    lbTroco: TLabel;
    cbEntregador: TDBLookupComboBox;
    qrEntregador: TUniQuery;
    qrEntregadorid_usuario: TIntegerField;
    qrEntregadornome: TWideStringField;
    dsEntregador: TDataSource;
    Label9: TLabel;
    qrVendadata_entrega: TDateTimeField;
    lbReceber: TLabel;
    qrVendab_taxa_entrega: TBooleanField;
    MemoCupomTEF: TMemo;
    pAguardeTef: TPanel;
    MemoCupomTEF1: TMemo;
    MemoCupomTEF3: TMemo;
    MemoCupomTEF2: TMemo;
    btn1: TBitBtn;
    procedure btCancelaClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    constructor Create(sender : Tcomponent ; id_venda : integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btAlterarFormaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    id_venda : integer;
  public
    { Public declarations }
  end;

var
  frmControleDeliveryFinaliza: TfrmControleDeliveryFinaliza;

implementation

{$R *.dfm}

uses uMenu ;

constructor TfrmControleDeliveryFinaliza.Create(sender : Tcomponent ; id_venda : integer);
begin
  inherited Create(sender);

  //verifica se existe caixa aberto
  frmMenu.carregaCaixaUsuario;
  if RecProj.iIDCaixa=0 then
  begin
    Application.MessageBox(pchar('Não existe caixa aberto para o usuário '
                         + recproj.sUsuario+'!'), 'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  if id_venda<=0 then
  begin
    Application.messagebox('Não foi informada a venda!', 'Atenção', MB_ICONINFORMATION + mb_ok);
    abort;
  end;

  self.id_venda := id_venda;
  qrEntregador.Open;

  qrVenda.Close;
  qrVenda.ParamByName('id_venda').AsInteger:=id_venda;
  qrVenda.ParamByName('id_empresa').AsInteger:=RecProj.iEmp;
  qrVenda.Open;
  qrVenda.Edit;

  frmControleDeliveryFechamento:= TfrmControleDeliveryFechamento.Create(self, id_venda);

  lbTroco.Caption := format('%m', [frmControleDeliveryFechamento.cdsVenda.FieldByName('valor_troco').AsFloat]);
  lbReceber.Caption := format('%m', [frmControleDeliveryFechamento.cdsVenda.FieldByName('total_pago').AsFloat]);
end;

procedure TfrmControleDeliveryFinaliza.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if qrVenda.State = dsEdit then qrVenda.cancel;

  if Assigned(frmControleDeliveryFechamento) then
    FreeAndNil(frmControleDeliveryFechamento);
end;

procedure TfrmControleDeliveryFinaliza.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then  Perform(WM_NEXTDLGCTL, 0, 0);

end;

procedure TfrmControleDeliveryFinaliza.btAlterarFormaClick(Sender: TObject);
begin
  qrVenda.post;
  frmControleDeliveryFechamento.ShowModal;
  lbTroco.Caption := format('%m', [frmControleDeliveryFechamento.cdsVenda.FieldByName('valor_troco').AsFloat]);
  lbReceber.Caption := format('%m', [frmControleDeliveryFechamento.cdsVenda.FieldByName('total_pago').AsFloat]);
  qrVenda.refresh;
  qrVenda.edit;
end;

procedure TfrmControleDeliveryFinaliza.btCancelaClick(Sender: TObject);
begin
  qrVenda.cancel;
  tag:=0;
  close;
end;

procedure TfrmControleDeliveryFinaliza.btConfirmaClick(Sender: TObject);
var confirma : boolean;
begin
  if qrVenda.FieldByName('id_entregador').isnull and qrVenda.FieldByName('b_taxa_entrega').asboolean  then
  begin
    Application.MessageBox('Não foi informado o entregador!', 'Atenção', MB_ICONINFORMATION);
    cbEntregador.SetFocus;
    abort;
  end;

  confirma:= Application.MessageBox('Confirmar a finalização da venda?', 'Atenção', MB_ICONQUESTION + MB_YESNO) = mrYes;

  if confirma then
  begin
    frmControleDeliveryFechamento.venda_concluida:=true;
    frmControleDeliveryFechamento.id_entregador := qrVenda.FieldByName('id_entregador').asinteger;
    frmControleDeliveryFechamento.nome_entregador := cbEntregador.Text;
    frmControleDeliveryFechamento.btConfirma.Click;

    qrVenda.FieldByName('data_entrega').AsDateTime :=  Date + time;
    if qrVenda.FieldByName('data_saida').IsNull then
      qrVenda.FieldByName('data_saida').AsDateTime :=  Date + time;

    qrVenda.Post;
    tag:=1;
    close;
  end;
end;

end.
