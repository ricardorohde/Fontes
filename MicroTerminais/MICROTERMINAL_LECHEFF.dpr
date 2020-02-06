program MICROTERMINAL_LECHEFF;

uses
  Forms,
  Unit1 in 'unit1.pas' {frmTerminais};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmTerminais, frmTerminais);
  Application.Run;
end.

