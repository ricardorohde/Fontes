unit uControleMesaJuntarTransferir;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB,
  Datasnap.DBClient, MemDS, DBAccess, Uni, AdvGroupBox, AdvPanel, AdvGlowButton,
  Vcl.ExtCtrls;

type
  TfrmControleMesaJuntarTransferir = class(TForm)
    dsVendaMesaDestino: TDataSource;
    qrListaNomeMesa: TUniQuery;
    dsListaNomeMesa: TDataSource;
    qrListaNomeMesaid_mesa: TIntegerField;
    qrListaNomeMesaid_venda: TIntegerField;
    qrListaNomeMesanro_mesa: TIntegerField;
    qrListaNomeMesavalor_venda: TFloatField;
    qrListaNomeMesastatus: TIntegerField;
    qrListaNomeMesacod_venda: TIntegerField;
    qrListaNomeMesadescricao_mesa: TWideStringField;
    qrListaNomeMesadesc_status: TWideStringField;
    pnBotoes: TFlowPanel;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    AdvPanel1: TAdvPanel;
    AdvGroupBox3: TAdvGroupBox;
    AdvGroupBox1: TAdvGroupBox;
    DBText3: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    DBText4: TDBText;
    Label6: TLabel;
    DBText5: TDBText;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    cdsVendaMesaDestino: TClientDataSet;
    cdsVendaMesaDestinoid_mesa: TIntegerField;
    cdsVendaMesaDestinonro_mesa: TIntegerField;
    qrMesaAtual: TUniQuery;
    qrMesaAtualnro_mesa: TIntegerField;
    qrMesaAtualid_mesa: TIntegerField;
    qrMesaAtualid_venda: TIntegerField;
    qrMesaAtualdescricao_mesa: TWideStringField;
    qrMesaAtualvalor_venda: TFloatField;
    qrMesaAtualdesc_status: TWideStringField;
    dsMesaAtual: TDataSource;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCancelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    constructor Create(sender: Tcomponent ; id_venda, nro_mesa : integer; modo_tela : integer = 1 ; id_usuario_tranferencia : integer = 0 );
    procedure cdsVendaMesaDestinoid_mesaChange(Sender: TField);
    procedure btConfirmaClick(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    gModoTela : integer;
    id_venda, nro_mesa : integer;

  public
    { Public declarations }
    id_mesa_destino :integer;
  end;

var
  frmControleMesaJuntarTransferir: TfrmControleMesaJuntarTransferir;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB;

procedure TfrmControleMesaJuntarTransferir.btConfirmaClick(Sender: TObject);
var str_sql1 : string;

begin
  //trasferência
  if gModoTela=1 then
  begin
    if cdsVendaMesaDestinoid_mesa.IsNull then
    begin
      Application.MessageBox('Selecione a mesa de destino!', 'Atenção', MB_ICONINFORMATION + mb_ok) ;
    end
    else
    begin
      if Application.MessageBox(pchar('Deseja mesmo transferir a venda da mesa '+inttostr(nro_mesa)+' para a mesa ' +
                                      qrListaNomeMesa.FieldByName('nro_mesa').AsString + '?' ),
                                      'Atenção', MB_ICONQUESTION + MB_YESNO)=mrYes then
      begin
        // altera o id da mesa da a venda atual para a mesa de destino
        str_sql1 :=' update venda set ven_025=' + cdsVendaMesaDestino.FieldByName('id_mesa').AsString +
                   ' where emp_001=' + IntToStr(RecProj.iEmp) +
                   ' and ven_001='+ inttostr(id_venda);
        ExecutaComandoSQL(str_sql1);
        id_mesa_destino := cdsVendaMesaDestino.FieldByName('id_mesa').AsInteger;
        Application.MessageBox('Venda transferida com sucesso!', 'Atenção', MB_ICONINFORMATION + mb_ok) ;
        self.Tag := 1;
        self.close;
      end;
    end;
  end;
end;

procedure TfrmControleMesaJuntarTransferir.cdsVendaMesaDestinoid_mesaChange(
  Sender: TField);
begin
  btConfirma.Enabled:= not cdsVendaMesaDestinoid_mesa.IsNull;

end;

constructor TfrmControleMesaJuntarTransferir.Create(sender: TComponent; id_venda, nro_mesa : integer; modo_tela : integer = 1 ; id_usuario_tranferencia : integer = 0);
var str_sql : string;
    qraux : Tuniquery;
    acesso : boolean;
begin
  inherited Create(sender);
  buscacampo( acesso, 'select b_transferencia_mesa from usuarios where usu_001=' + inttostr(recproj.iUsuario), '', false);

  if id_usuario_tranferencia = 0  then
    frmMenu.VerificaPermissaoAcesso(acesso)
  else
  begin
    str_sql:=format('Select b_transferencia_mesa FROM USUARIOS USU WHERE USU.USU_001 = %d  ', [id_usuario_tranferencia]);
    qraux := Tuniquery.Create(self);
    qraux.Connection := frmmenu.conexao;

    ExecutaConsultaSQL(qraux, str_sql );

    if qraux.RecordCount<1 then
    begin
      Application.MessageBox(pchar(format('Acesso negado para o usuário %s!', [Recproj.sUsuario])), 'Atenção', MB_ICONWARNING );
      abort;
    end;
    qraux.Free;
  end;

  gModoTela := modo_tela;
  self.id_venda :=  id_venda;
  self.nro_mesa :=  nro_mesa;

  //Modo tela transferencia, lista apenas mesas nao ocupadas
  if gModoTela = 1 then
    qrListaNomeMesa.ParamByName('cod_status').AsInteger:=4
  else
  qrListaNomeMesa.ParamByName('cod_status').AsInteger:=8;
  qrListaNomeMesa.ParamByName('emp').AsInteger:=RecProj.iEmp;
  qrListaNomeMesa.ParamByName('mesa_atual').AsInteger:=nro_mesa;
  qrListaNomeMesa.Open;

  qrMesaAtual.Close;
  qrMesaAtual.parambyname('id_venda').AsInteger := id_venda ;
  qrMesaAtual.parambyname('emp').AsInteger := RecProj.iEmp ;
  qrMesaAtual.Open;

  cdsVendaMesaDestino.CreateDataSet;
  cdsVendaMesaDestino.Open;
  cdsVendaMesaDestino.Insert;
end;

procedure TfrmControleMesaJuntarTransferir.DBLookupComboBox1Click(
  Sender: TObject);
begin
  cdsVendaMesaDestinoid_mesaChange(nil);
end;

procedure TfrmControleMesaJuntarTransferir.btCancelaClick(Sender: TObject);
begin
  self.Tag := 0;
  self.close;
end;

procedure TfrmControleMesaJuntarTransferir.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key= vk_return then
  Perform(WM_NEXTDLGCTL,0,0)
end;

procedure TfrmControleMesaJuntarTransferir.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 // if key=#13 then Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmControleMesaJuntarTransferir.FormShow(Sender: TObject);
begin
  if qrListaNomeMesa.RecordCount<1 then
  begin
    Application.MessageBox('Não existem mesas disponíveis para esta ação!', 'Atenção', MB_ICONINFORMATION + mb_ok) ;
    btCancela.Click;
  end
  else
  DBLookupComboBox1.SetFocus;
end;

end.
