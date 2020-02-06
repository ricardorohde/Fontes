unit UCasanoturnacadastroclientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Data.DB, MemDS, DBAccess, Uni,
  JvDataSource, Vcl.ExtCtrls, AdvPanel, Vcl.StdCtrls, Vcl.DBCtrls, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, cxImage, AdvGroupBox,
  AdvGlowButton, Vcl.ComCtrls;

type
  TfrmCasanoturnacadastroclientes = class(TForm)
    jvdsCadastro: TJvDataSource;
    dsCadastro: TDataSource;
    qrCadastro: TUniQuery;
    qrCadastrocpf: TWideStringField;
    qrCadastrorg: TWideStringField;
    qrCadastrosexo: TWideStringField;
    qrCadastrodata_nascimento: TDateField;
    qrCadastrocelular1: TWideStringField;
    qrCadastroemail: TWideStringField;
    qrCadastrocli_001: TIntegerField;
    qrCadastrosit_001: TIntegerField;
    qrCadastroemp_001: TIntegerField;
    qrCadastroobservacao: TWideMemoField;
    qrCadastronome1: TWideStringField;
    qrCadastroobs_bloqueio: TWideStringField;
    qrCadastrofoto: TBlobField;
    pnPrincipal: TAdvPanel;
    pnBotoes: TFlowPanel;
    btCancelar: TAdvGlowButton;
    btSalvar: TAdvGlowButton;
    btExcluir: TAdvGlowButton;
    btEditar: TAdvGlowButton;
    btNovo: TAdvGlowButton;
    PageControl1: TPageControl;
    pgDados: TTabSheet;
    Label10: TLabel;
    AdvGroupBox1: TAdvGroupBox;
    cxDBImage1: TcxDBImage;
    AdvGroupBox2: TAdvGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edCPF: TcxDBTextEdit;
    edRG: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    edSexo: TDBComboBox;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    edNome: TcxDBTextEdit;
    TabSheet2: TTabSheet;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    TabSheet3: TTabSheet;
    Label9: TLabel;
    btDesbloquear: TAdvGlowButton;
    btBloquear: TAdvGlowButton;
    DBMemo2: TDBMemo;
    procedure btSalvarClick(Sender: TObject);

    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrCadastrocpfChange(Sender: TField);
    procedure btNovoClick(Sender: TObject);
    procedure btDesbloquearClick(Sender: TObject);
    procedure btBloquearClick(Sender: TObject);
    procedure cxDBImage1Click(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure dsCadastroStateChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCasanoturnacadastroclientes: TfrmCasanoturnacadastroclientes;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB;

procedure TfrmCasanoturnacadastroclientes.AdvGlowButton3Click(Sender: TObject);
begin
  if Application.MessageBox('Confirma o desbloqueio do cliente?', 'Atenção', MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    qrcadastro.FieldByName('sit_001').AsInteger := 4;
    qrcadastro.FieldByName('obs_bloqueio').AsString := '';
    btdesbloquear.Enabled:=false;
    btbloquear.Enabled:=true;
    Application.MessageBox('Cliente desbloqueado com sucesso!','Atenção',MB_ICONQUESTION+mb_ok);
  end;
end;

procedure TfrmCasanoturnacadastroclientes.AdvGlowButton4Click(Sender: TObject);
var   motivo: string;
begin
 motivo := Chama_Justificativa('Motivo de bloqueio de cliente', 'Cliente',
 qrcadastro.FieldByName('CLI_001').AsString);
  if motivo <> '' then
  begin
    qrcadastro.FieldByName('sit_001').AsInteger := 5;
    qrcadastro.FieldByName('obs_bloqueio').AsString := motivo;
    Application.MessageBox('Cliente bloqueado com sucesso!','Atenção',MB_ICONQUESTION+mb_ok);
    btbloquear.Enabled:=false;
    btdesbloquear.Enabled:=true;
  end;
end;

procedure TfrmCasanoturnacadastroclientes.btBloquearClick(Sender: TObject);
var   motivo: string;
begin
motivo := Chama_Justificativa('Motivo de bloqueio de cliente', 'Cliente',
    qrcadastro.FieldByName('CLI_001').AsString);
  if motivo <> '' then
  begin
    qrcadastro.FieldByName('sit_001').AsInteger := 5;
    qrcadastro.FieldByName('obs_bloqueio').AsString := motivo;
    Application.MessageBox('Cliente bloqueado com sucesso!','Atenção',MB_ICONQUESTION+mb_ok);
    btbloquear.Enabled:=false;
    btdesbloquear.Enabled:=true;
  end;
end;

procedure TfrmCasanoturnacadastroclientes.btDesbloquearClick(Sender: TObject);
begin
 if Application.MessageBox('Confirma o desbloqueio do cliente?', 'Atenção',MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    qrcadastro.FieldByName('sit_001').AsInteger := 4;
    qrcadastro.FieldByName('obs_bloqueio').AsString := '';
    btdesbloquear.Enabled:=false;
     btbloquear.Enabled:=true;
    Application.MessageBox('Cliente desbloqueado com sucesso!','Atenção',MB_ICONQUESTION+mb_ok);

  end;
end;

procedure TfrmCasanoturnacadastroclientes.btEditarClick(Sender: TObject);
begin
qrcadastro.Edit;
if  qrcadastro.FieldByName('sit_001').AsInteger = 4 then      // Ativo
   begin
      btbloquear.Enabled:=true;
      btDesbloquear.Enabled:=false;
   end ;
   if qrcadastro.FieldByName('sit_001').AsInteger=5 then
   begin
     btbloquear.Enabled:=false;
     btDesbloquear.Enabled:=true;
   end
   else
   begin
      btbloquear.Enabled:=false;
      btDesbloquear.Enabled:=false;
   end;
end;

procedure TfrmCasanoturnacadastroclientes.btExcluirClick(Sender: TObject);
begin
qrcadastro.Delete;
qrcadastro.Refresh;
end;

procedure TfrmCasanoturnacadastroclientes.btNovoClick(Sender: TObject);
begin
if not qrcadastro.Active then
begin
  qrcadastro.Open;
  qrcadastro.Append;
  edNome.SetFocus;
end;

end;

procedure TfrmCasanoturnacadastroclientes.btSalvarClick(Sender: TObject);
begin
 if qrcadastro.FieldByName('RG').AsString='' then
  begin
    Application.MessageBox('O campo RG é obrigatorio, por favor informe o numero do RG!','Atenção',MB_ICONQUESTION+mb_ok);
    edRg.canfocus;
    abort;
  end;

  if qrcadastro.FieldByName('CPF').AsString='' then
  begin
    Application.MessageBox('O campo CPF é obrigatorio, por favor informe o numero do CPF!','Atenção',MB_ICONQUESTION+mb_ok);
    edcpf.canfocus;
    abort;
  end;

  if qrcadastro.FieldByName('nome1').AsString='' then
  begin
    Application.MessageBox('O campo Nome é obrigatorio, por favor informe o Nome do cliente!','Atenção',MB_ICONQUESTION+mb_ok);
    edNome.canfocus;
    abort;
  end;

  if  qrcadastro.FieldByName('sexo').AsString='' then
  begin
    Application.MessageBox('Selecione o sexo do cliente!','Atenção', MB_ICONWARNING +MB_OK);
    edSexo.canfocus ;
    abort;
  end;
  qrcadastro.Post;

end;

procedure TfrmCasanoturnacadastroclientes.cxDBImage1Click(Sender: TObject);
var opendlg:topendialog;
begin
 opendlg:=topendialog.Create(self);
 if qrcadastro.State in [dsInsert, dsEdit] then
 begin
   if opendlg.Execute then //Execute abre a janela
   begin
     tblobfield(qrcadastro.FieldByName('foto')).LoadFromFile(opendlg.FileName);
   end;
 end;
end;



procedure TfrmCasanoturnacadastroclientes.dsCadastroStateChange(Sender: TObject);

begin
  if qrcadastro.Active then
  begin
    // aberto, nao editando...
    if qrcadastro.State = dsBrowse then
    begin
      btNovo.Enabled := true;
      btEditar.Enabled := true;
      btExcluir.Enabled := true;
      btSalvar.Enabled := false;
      btCancelar.Enabled := false;
      btBloquear.enabled:=false;
      btDesbloquear.enabled:=false;

      if qrcadastro.RecordCount <= 0 then
      begin
        btEditar.Enabled := false;
        btExcluir.Enabled := false;
      end;
      // sit_001=5 -> bloqueado
      // sit_001=4 -> Ativo
    end
    else if qrcadastro.State in [dsInsert, dsEdit] then
    begin
      btNovo.Enabled := false;
      btEditar.Enabled := false;
      btExcluir.Enabled := false;
      btSalvar.Enabled := true;
      btCancelar.Enabled := true;
    end;
  end
  else
  begin
    btNovo.Enabled := true;
    btEditar.Enabled := false;
    btExcluir.Enabled := false;
    btSalvar.Enabled := false;
    btCancelar.Enabled := false;
    btBloquear.Enabled := false;
    btDesbloquear.Enabled := false;

  end;
end;


procedure TfrmCasanoturnacadastroclientes.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key= vk_return then
Perform(WM_NEXTDLGCTL,0,0)
end;

procedure TfrmCasanoturnacadastroclientes.FormShow(Sender: TObject);
begin
   PageControl1.ActivePage := pgdados;
   ednome.SetFocus;

   if  qrcadastro.FieldByName('sit_001').AsInteger = 4 then      // Ativo
   begin
      btbloquear.Enabled:=true;
      btDesbloquear.Enabled:=false;
   end ;
   if qrcadastro.FieldByName('sit_001').AsInteger=5 then
   begin
     btbloquear.Enabled:=false;
     btDesbloquear.Enabled:=true;
   end
   else
   begin
      btbloquear.Enabled:=false;
      btDesbloquear.Enabled:=false;
   end;
end;

procedure TfrmCasanoturnacadastroclientes.qrCadastrocpfChange(Sender: TField);
var aux : string;
begin
if  qrcadastro.FieldByName('CPF').AsString='' then
  begin
    Application.MessageBox('Digite um  número de CPF válido!','Atenção', MB_ICONWARNING +MB_OK);
    edcpf.SetFocus ;
    abort;
  end;

  if  BuscaCampo(aux, 'select concat(cli_001, '' - '', cli_002) as Nome_cliente  from clientes where  '+
  ' replace(replace(replace(cli_004, ''.'', ''''),'' '', ''''), ''-'', '''') '+
  ' like  replace(replace(replace(' + QuotedStr(Sender.AsString) +', ''.'', ''''),'' '', ''''), ''-'', '''') ' +
  ' and emp_001='+ IntToStr(RecProj.iEmp), 'clientes', false) then
  begin
    Application.MessageBox(Pchar('O CPF informado já está cadastrado para o cliente: '#13#10 + aux ),
    'Atenção', MB_ICONQUESTION );
    abort;
  end
end;

procedure TfrmCasanoturnacadastroclientes.qrCadastroNewRecord(
  DataSet: TDataSet);
begin
    qrcadastro.FieldByName('cli_001').AsInteger := NovoId('clientes', 'cli_001',RecProj.iEmp);
    qrcadastro.FieldByName('emp_001').AsInteger := RecProj.iEmp;
    qrcadastro.fieldbyname('sit_001').asInteger :=4;
end;



end.
