program EcosXml;

uses
  Vcl.Forms,
  MidasLib,
  frm_xml in 'frm_xml.pas' {frmxml},
  dtm_xml in 'dtm_xml.pas' {dtmxml: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdtmxml, dtmxml);
  Application.CreateForm(Tfrmxml, frmxml);
  Application.Run;
end.
