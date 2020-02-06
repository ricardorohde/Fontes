unit dtm_xml;

interface

uses
  Classes, SysUtils, ExtCtrls, ACBrNFe,
  ACBrMail, ACBrNFeDANFeRLClass, db, ACBrDFe,
  ACBrDFeSSL, Data.FMTBcd, Data.SqlExpr, ACBrNFeDANFEClass, ACBrBase,
  DbxSqlite, Forms, Datasnap.DBClient, Datasnap.Provider, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.Phys.SQLite, ACBrDFeReport, ACBrDFeDANFeReport;

type

  { Tdtmxml }

  Tdtmxml = class(TDataModule)
    ACBrMail1: TACBrMail;
    ACBrNFe: TACBrNFe;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    find: TFDQuery;
    AutoExec: TTimer;
    qXmlDfe: TFDQuery;
    qXmlNfe: TFDQuery;
    qXmlRes: TFDQuery;
    qXmlCfg: TFDQuery;
    Conn: TFDConnection;
    pXmlCfg: TDataSetProvider;
    XmlCfg: TClientDataSet;
    pXmlRes: TDataSetProvider;
    XmlRes: TClientDataSet;
    pXmlDfe: TDataSetProvider;
    XmlDfe: TClientDataSet;
    pXmlNfe: TDataSetProvider;
    XmlNfe: TClientDataSet;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure AutoExecTimer(Sender: TObject);
    procedure xmlcfgAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure XmlCfgAfterOpen(DataSet: TDataSet);
    procedure pXmlCfgUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    procedure pXmlResUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
  private
    { private declarations }
  public
    { public declarations }
    procedure SetaConfiguracoes;
  end;

var
  dtmxml: Tdtmxml;

implementation

uses frm_xml;

{$R *.dfm}

{ Tdtmxml }

procedure Tdtmxml.DataModuleCreate(Sender: TObject);
begin
  xmlcfg.CommandText := 'select * from xmlcfg';
  xmldfe.CommandText := 'select * from xmlnfe where NFe = ''F''';
  xmlnfe.CommandText := 'select * from xmlnfe where NFe = ''T''';
  xmlres.CommandText := 'select * from xmlnfe where idDFe = -1';

  Conn.Params.Database := ExtractFilePath(Application.ExeName) + 'Database\acbrxml.db';
  Conn.Connected := True;
  // Abertura da tabela de configuração
  xmlcfg.Open;
end;

procedure Tdtmxml.xmlcfgAfterPost(DataSet: TDataSet);
begin
  xmlcfg.ApplyUpdates(0);
  // Seta Configurações para os componentes
  SetaConfiguracoes;
end;

procedure Tdtmxml.AutoExecTimer(Sender: TObject);
begin
  frmxml.AutoExecuteProcessos;
end;

procedure Tdtmxml.DataModuleDestroy(Sender: TObject);
begin
  Conn.Connected := False;
  xmlcfg.Close;
end;

procedure Tdtmxml.pXmlCfgUpdateData(Sender: TObject;
  DataSet: TCustomClientDataSet);
begin
  XmlCfg.FieldByName('idDFe').ProviderFlags := [pfInKey];
end;

procedure Tdtmxml.pXmlResUpdateData(Sender: TObject;
  DataSet: TCustomClientDataSet);
begin
  XmlCfg.FieldByName('idDFe').ProviderFlags := [pfInKey];
end;

procedure Tdtmxml.SetaConfiguracoes;
begin
  // Atribui as configurações ao componente
  with ACBrNFe do
  begin
    with Configuracoes do
    begin
      // WebServices
      WebServices.UF := xmlcfg.FieldByName('UF').AsString;
      // Geral
      if xmlcfg.FieldByName('SSLLib').AsString = '01' then
         Geral.SSLLib := libCapicom
      else
         Geral.SSLLib := libOpenSSL;

      // Certificados
      Certificados.NumeroSerie := xmlcfg.FieldByName('NumeroSerie').AsString;
      Certificados.Senha       := xmlcfg.FieldByName('Senha').AsString;
      //
      if Length(Certificados.NumeroSerie) > 0 then
         SSL.CarregarCertificado;
    end;
  end;
  with AutoExec do
  begin
    Enabled  := Boolean(xmlcfg.FieldByName('AutoExecute').AsInteger);
    Interval := xmlcfg.FieldByName('AutoTimer').AsInteger * 60000;
  end;
end;

procedure Tdtmxml.XmlCfgAfterOpen(DataSet: TDataSet);
begin
  // Seta Configurações para os componentes
  SetaConfiguracoes;
end;

end.
