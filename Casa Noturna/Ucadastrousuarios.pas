unit Ucadastrousuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ExtCtrls, AdvGlowButton,
  Vcl.StdCtrls, Vcl.DBCtrls, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, cxImage, AdvGroupBox, Vcl.ComCtrls;

type
  Tfrmcadastrousuarios = class(TForm)
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
    Button1: TButton;
    TabSheet2: TTabSheet;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    TabSheet3: TTabSheet;
    Label9: TLabel;
    btDesbloquear: TAdvGlowButton;
    btBloquear: TAdvGlowButton;
    DBMemo2: TDBMemo;
    pnBotoes: TFlowPanel;
    btCancelar: TAdvGlowButton;
    btSalvar: TAdvGlowButton;
    btExcluir: TAdvGlowButton;
    btEditar: TAdvGlowButton;
    btNovo: TAdvGlowButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcadastrousuarios: Tfrmcadastrousuarios;

implementation
rocedure TfrmCasanoturnacadastroclientes.btBloquearClick(Sender: TObject);
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

procedure TfrmCasanoturnacadastroclientes.btSalvarClick(Sender: TObject);
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

procedure TfrmCasanoturnacadastroclientes.Button1Click(Sender: TObject);
var opendlg:topendialog;
begin
   opendlg:=topendialog.Create(self);
   if opendlg.Execute then //Execute abre a janela
   begin
     tblobfield(qrcadastro.FieldByName('foto')).LoadFromFile(opendlg.FileName);
   end;

end;

procedure TfrmCasanoturnacadastroclientes.cxDBImage1Click(Sender: TObject);
begin
  inherited;

end;

procedure TfrmCasanoturnacadastroclientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if KEY = #13 then
     PERFORM(WM_NEXTDLGCTL,0,0);
  end;

procedure TfrmCasanoturnacadastroclientes.FormShow(Sender: TObject);
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

procedure TfrmCasanoturnacadastroclientes.qrCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;

    qrcadastro.FieldByName('cli_001').AsInteger := NovoId('clientes', 'cli_001',RecProj.iEmp);
    qrcadastro.FieldByName('emp_001').AsInteger := RecProj.iEmp;
    qrcadastro.fieldbyname('sit_001').asInteger :=4;


end;

procedure TfrmCasanoturnacadastroclientes.qrCadastrorgChange(Sender: TField);
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



{$R *.dfm}

end.
