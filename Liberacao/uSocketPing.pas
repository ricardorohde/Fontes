unit uSocketPing;

interface

uses
  Windows, SysUtils, Forms, ScktComp;

function Ping(TimeOut : Cardinal; cHost : string; Porta : Word) : Integer;

implementation

type
  TSocketPing = class(TClientSocket)
  private
    FErro : Integer;
  protected
    procedure Error(Socket : TCustomWinSocket; ErrorEvent : TErrorEvent;
      var ErrorCode : Integer); override;
  end;


  { TSocketPing }

procedure TSocketPing.Error(Socket : TCustomWinSocket;
  ErrorEvent : TErrorEvent; var ErrorCode : Integer);
begin
  FErro := ErrorCode;
  if FErro = 0 then
    FErro := 1;

  Close;
  ErrorCode := 0;
  inherited;
end;

function Ping(TimeOut : Cardinal; cHost : string; Porta : Word) : Integer;
var
  vTick : Cardinal;
begin
  if cHost = '' then
    raise Exception.Create('Host inválido');

  if Porta = 0 then
    raise Exception.Create('Porta inválida');

  with TSocketPing.Create(Application) do
  try
    Close;
    if cHost[1] in ['0'..'9'] then
      Address := cHost
    else
      Host := cHost;

    Port := Porta;

    FErro := 0;
    Open;

    //Por ser conexão assíncrona
    vTick := GetTickCount + TimeOut;
    while True do
    begin
      if Application.Terminated then
        Abort;

      if vTick < GetTickCount then
        FErro := 10;

      if Socket.Connected or (FErro <> 0) then
          Break;

        Application.ProcessMessages;
    end;

    if Active then
       Result := 0
    else
    begin
      Result := FErro;
      if Result = 0 then
        Result := 1;
    end;
    Close;
  finally
    Free;
  end;
end;

end.
