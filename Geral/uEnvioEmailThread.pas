unit uEnvioEmailThread;

interface

uses
  System.Classes, Sysutils, VCL.Forms, Windows;

type
  TEnvioEmailThread = class(TThread)
  constructor Create(remetente, destino, assunto, mensagem, anexo  : string;
                     deletaanexo : boolean;
                     const CreateSuspended: boolean =false );

  private
    { Private declarations }
    remetente, destino, assunto, mensagem, anexo : string;
    mailport : integer;
    mailhost, mailusername, mailpassword : String;
    deletaanexo : boolean;
  protected
    procedure Execute; override;
  end;

implementation

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure TEnvioEmailThread.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; 
    
    or 
    
    Synchronize( 
      procedure 
      begin
        Form1.Caption := 'Updated in thread via an anonymous method' 
      end
      )
    );
    
  where an anonymous method is passed.
  
  Similarly, the developer can call the Queue method with similar parameters as 
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.
    
}

uses uFuncoes;

{ TEnvioEmailThread }

procedure TEnvioEmailThread.Execute;
var cmd, caminho_exe, str_anexo, diretorio_exe : string;
   lStartUpInfo:TStartUpInfo;
   lProcesso: TProcessInformation;
   anexos : TstringList;
begin
   anexos := TstringList.create;
   anexos.Add(anexo);

   EnviaEmailSSL(remetente, destino, assunto,  mensagem, anexos, false);

   if deletaanexo then
     if fileexists(anexo) then
       DeleteFile(pchar(anexo));


  {
  diretorio_exe := FormatarCaminhoDir(ExtractFilePath(Application.ExeName));
  caminho_exe := diretorio_exe  + 'EnvioEmail\envioemail.exe';
  if FileExists(caminho_exe) then
  begin
    if fileexists(anexo) then
      str_anexo := format(' -anexo "%s" ', [anexo])
    else
      str_anexo :='';

    cmd := format('cmd /c ""%s" -nomeremet "%s" -emaildest "%s"  -assunto "%s" '+
                  ' -mensagem "%s" -mailport %d -mailhost "%s" -mailusername "%s" -mailpassword "%s" %s "',
                  [caminho_exe, remetente, destino, assunto, mensagem,
                   mailport, mailhost,  mailusername, mailpassword,
                   str_anexo ]);

    lStartUpInfo.cb:=2048;
    lStartUpInfo.lpReserved:=NIL;
    lStartUpInfo.lpDesktop:=NIL;
    lStartUpInfo.lpTitle:=NIL;
    lStartUpInfo.dwFlags:=STARTF_USESHOWWINDOW;
    lStartUpInfo.wShowWindow:=SW_Hide ; //SW_Hide; //para não aparecer na tela!  SW_SHOWNORMAL; para aparecer
    lStartUpInfo.cbReserved2:=0;
    lStartUpInfo.lpReserved2:=NIL;

    if CreateProcess(NIL,PChar(cmd), NIL, NIL, False, 0, NIL, PChar(diretorio_exe), lStartUpInfo, lProcesso) then
    begin
      WaitForSingleObject(lProcesso.hProcess, INFINITE);
      if deletaanexo then deletefile(pchar(anexo));
    end
    else
    begin
      // erro ao tentar enviar email...
    end;
  end; }
end;

constructor TEnvioEmailThread.Create(remetente, destino, assunto, mensagem, anexo  : string;
                     deletaanexo : boolean;
                     const CreateSuspended: boolean =false );
begin
  self.remetente := remetente;
  Self.destino := destino;
  Self.assunto := assunto;
  Self.mensagem := mensagem;
  Self.anexo := anexo;
  self.deletaanexo := deletaanexo;

  inherited Create(CreateSuspended);
end;

end.

