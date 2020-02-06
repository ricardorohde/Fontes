unit uConfirmacaoSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Uni, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, AdvGlowButton, JvAutoComplete;

type
  TfrmConfirmacaoSenha = class(TForm)
    edUsuario: TEdit;
    edSenha: TEdit;
    imgFundo: TImage;
    Label3: TLabel;
    Label1: TLabel;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    JvAutoComplete: TJvLookupAutoComplete;
    procedure btCancelaClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    constructor Create(sender : tcomponent ; campo_permissao : string); reintroduce;
  private
    { Private declarations }
    campo_permissao : string;
  public
    { Public declarations }
    id_usuario_retorno : integer;
  end;

var
  frmConfirmacaoSenha: TfrmConfirmacaoSenha;

implementation

{$R *.dfm}

uses uMenu, uLogin, Funcao_DB;

procedure TfrmConfirmacaoSenha.btCancelaClick(Sender: TObject);
begin
  tag:=0;
  close;
end;

constructor TfrmConfirmacaoSenha.Create(sender : tcomponent ; campo_permissao : string);
var qry : TUniQuery;
begin
  inherited Create(sender);

  //carrega os usuarios para o componente de autocompletar
  JvAutoComplete.Strings.Clear;
  qry := TUniQuery.Create(self);
  qry.Connection := frmMenu.conexao;
  ExecutaConsultaSQL(qry, 'select usu_003 from usuarios where sit_001=4');
  while not qry.eof do
  begin
    JvAutoComplete.Strings.Add(qry.Fields[0].asstring);
    qry.next;
  end;
  self.campo_permissao := campo_permissao;
end;


procedure TfrmConfirmacaoSenha.btConfirmaClick(Sender: TObject);
var
   qr: TUniQuery;
begin
   qr := TUniQuery.Create(nil);
   with qr, SQl do
   begin
      Connection := frmMenu.Conexao;
      //
      Add(' SELECT USU.USU_001, USU.USU_002, ');
      Add(campo_permissao);
      Add(' FROM USUARIOS USU ');
      Add(' WHERE upper(USU.USU_003) = upper(:USUARIO) ');
      Add('   AND USU.USU_004 = :SENHA ');
      Add('   AND USU.DAT_001_3 IS NULL ');
      if uppercase(campo_permissao)='TRUE' then
         Add('   AND USU.USU_001 = :IDUSUARIO');
      ParamByName('USUARIO').AsString := edUsuario.Text;
      ParamByName('SENHA').AsString := edSenha.Text;
      if uppercase(campo_permissao)='TRUE' then
         ParamByName('IDUSUARIO').AsInteger := RecProj.iUsuario;
      Open;
      if RecordCount > 0 then
      begin
        if qr.Fields[2].AsBoolean then
        begin
          id_usuario_retorno := qr.Fields[0].asinteger;
          self.tag:=1;
          self.Close;
        end
        else
        begin
          id_usuario_retorno :=0;
          self.tag:=0;
          Application.MessageBox(pchar(format('Usuário %s não permitido!', [qr.Fields[1].asstring])), 'Atenção', MB_ICONWARNING + MB_OK);
        end;
      end
      else
      begin
        Application.MessageBox('Usuário ou senha inválidos!', 'Atenção', MB_ICONINFORMATION + MB_OK);
        edUsuario.SetFocus;
      end;
   end;
end;

procedure TfrmConfirmacaoSenha.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then Perform(WM_NEXTDLGCTL, 0, 0)
  else if  key=#27 then  btCancela.Click;

end;

procedure TfrmConfirmacaoSenha.FormShow(Sender: TObject);
begin
   imgFundo.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\imagens\fundologin.png');
  if uppercase(campo_permissao)='TRUE' then
  begin
    edUsuario.Text :=RecProj.sLoginUsuario;
    edSenha.SetFocus;
  end
  else
    edUsuario.SetFocus;

end;

end.
