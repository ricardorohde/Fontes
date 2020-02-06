unit uCadastroclientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, Data.DB, cxTextEdit, AdvGroupBox, JvDataSource, MemDS,
  DBAccess, Uni, AdvGlowButton, AdvPanel, Vcl.ComCtrls, cxMemo, JvDBImage,
  cxImage;

type
  TViewCadastroCliente = class(TfrmModeloCadastroSimples)
    qrCadastrocpf: TWideStringField;
    qrCadastrorg: TWideStringField;
    qrCadastrosexo: TWideStringField;
    qrCadastrodata_nascimento: TDateField;
    qrCadastrocelular1: TWideStringField;
    qrCadastroemail: TWideStringField;
    qrCadastrocli_001: TIntegerField;
    qrCadastrosit_001: TIntegerField;
    qrCadastroemp_001: TIntegerField;
    PageControl1: TPageControl;
    pgDados: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    AdvGroupBox1: TAdvGroupBox;
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
    DBMemo1: TDBMemo;
    qrCadastroobservacao: TWideMemoField;
    btDesbloquear: TAdvGlowButton;
    btBloquear: TAdvGlowButton;
    Label8: TLabel;
    Label9: TLabel;
    qrCadastronome1: TWideStringField;
    edNome: TcxDBTextEdit;
    qrCadastroobs_bloqueio: TWideStringField;
    DBMemo2: TDBMemo;
    qrCadastrofoto: TBlobField;
    Button1: TButton;
    Label10: TLabel;
    cxDBImage1: TcxDBImage;
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure qrCadastrocpfChange(Sender: TField);
    procedure qrCadastrorgChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btDesbloquearClick(Sender: TObject);
    procedure btBloquearClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewCadastroCliente: TViewCadastroCliente;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uFuncoes;

procedure TViewCadastroCliente.btBloquearClick(Sender: TObject);
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

procedure TViewCadastroCliente.btDesbloquearClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma o desbloqueio do cliente?', 'Atenção',
    MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    qrcadastro.FieldByName('sit_001').AsInteger := 4;
    qrcadastro.FieldByName('obs_bloqueio').AsString := '';
    btdesbloquear.Enabled:=false;
     btbloquear.Enabled:=true;
    Application.MessageBox('Cliente desbloqueado com sucesso!','Atenção',MB_ICONQUESTION+mb_ok);
  end;

end;

procedure TViewCadastroCliente.btSalvarClick(Sender: TObject);
begin
  inherited;
  if qrcadastro.FieldByName('RG').AsString='' then
  begin
    Application.MessageBox('O campo RG é obrigatorio, por favor informe o numero do RG!','Atenção',MB_ICONQUESTION+mb_ok);
    edRg.SetFocus;
    abort;
  end;

  if qrcadastro.FieldByName('CPF').AsString='' then
  begin
    Application.MessageBox('O campo CPF é obrigatorio, por favor informe o numero do CPF!','Atenção',MB_ICONQUESTION+mb_ok);
    edcpf.SetFocus;
    abort;
  end;

  if qrcadastro.FieldByName('nome1').AsString='' then
  begin
    Application.MessageBox('O campo Nome é obrigatorio, por favor informe o Nome do cliente!','Atenção',MB_ICONQUESTION+mb_ok);
    edNome.SetFocus;
    abort;
  end;

  if  qrcadastro.FieldByName('sexo').AsString='' then
  begin
    Application.MessageBox('Selecione o sexo do cliente!','Atenção', MB_ICONWARNING +MB_OK);
    edSexo.SetFocus ;
    abort;
  end;

end;

procedure TViewCadastroCliente.Button1Click(Sender: TObject);
var opendlg:topendialog;
begin
   opendlg:=topendialog.Create(self);
   if opendlg.Execute then //Execute abre a janela
   begin
     tblobfield(qrcadastro.FieldByName('foto')).LoadFromFile(opendlg.FileName);
   end;

end;

procedure TViewCadastroCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if KEY = #13 then
     PERFORM(WM_NEXTDLGCTL,0,0);
  end;

procedure TViewCadastroCliente.FormShow(Sender: TObject);
begin

   PageControl1.ActivePage := pgdados;
   ednome.SetFocus;
   if  qrcadastro.FieldByName('sit_001').AsInteger = 4 then
   begin
      btbloquear.Enabled:=true;
      btDesbloquear.Enabled:=false;
   end
   else
   begin
      btbloquear.Enabled:=false;
      btDesbloquear.Enabled:=true;
   end;




end;

procedure TViewCadastroCliente.qrCadastrocpfChange(Sender: TField);
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

procedure TViewCadastroCliente.qrCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;

    qrcadastro.FieldByName('cli_001').AsInteger := NovoId('clientes', 'cli_001',RecProj.iEmp);
    qrcadastro.FieldByName('emp_001').AsInteger := RecProj.iEmp;
    qrcadastro.fieldbyname('sit_001').asInteger :=4;


end;

procedure TViewCadastroCliente.qrCadastrorgChange(Sender: TField);
var aux : string;
begin

  if  qrcadastro.FieldByName('rg').AsString='' then
  begin
    Application.MessageBox('Digite um  número de RG válido!','Atenção', MB_ICONWARNING +MB_OK);
    edRG.SetFocus ;
    abort;
  end;

  if  BuscaCampo(aux, 'select concat(cli_001, '' - '', cli_002) as Nome_cliente  from clientes where  '+
  ' replace(replace(replace(cli_005, ''.'', ''''),'' '', ''''), ''-'', '''') '+
  ' like  replace(replace(replace(' + QuotedStr(Sender.AsString) +', ''.'', ''''),'' '', ''''), ''-'', '''') ' +
  ' and emp_001='+ IntToStr(RecProj.iEmp), 'clientes', false) then
  begin
    Application.MessageBox(Pchar('O RG informado já está cadastrado para o cliente: '#13#10 + aux ),
    'Atenção', MB_ICONQUESTION );
    abort;
  end

end;

end.
