unit uConsCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmModeloConsultaTabelaUnica,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, MemDS, DBAccess, Uni, Vcl.ExtCtrls, AdvGlowButton, Vcl.StdCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, AdvPanel, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmConsCliente = class(TfrmModeloConsultaTabelaUnica)
    cxGrid1DBTableView1cli_001: TcxGridDBColumn;
    cxGrid1DBTableView1cli_002: TcxGridDBColumn;
    cxGrid1DBTableView1cli_012: TcxGridDBColumn;
    cxGrid1DBTableView1cli_012_1: TcxGridDBColumn;
    cxGrid1DBTableView1codigo_fidelidade: TcxGridDBColumn;
    cxGrid1DBTableView1cidade_desc: TcxGridDBColumn;
    cxGrid1DBTableView1situacao: TcxGridDBColumn;
    qrConsultacli_001: TIntegerField;
    qrConsultaemp_001: TIntegerField;
    qrConsultacli_002: TWideStringField;
    qrConsultacli_012: TWideStringField;
    qrConsultacli_013: TWideStringField;
    qrConsultacodigo_fidelidade: TWideStringField;
    qrConsultacidade_desc: TWideStringField;
    qrConsultasituacao: TWideStringField;
    procedure btAbrirRegistroClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsCliente: TfrmConsCliente;

implementation

{$R *.dfm}

uses uDetalheCliente;

procedure TfrmConsCliente.btAbrirRegistroClick(Sender: TObject);
begin
  inherited;
  if qrConsulta.Active then
  begin
    if qrConsulta.RecordCount>0 then
    begin
      frmDetalheCliente := TfrmDetalheCliente.Create(self, qrConsulta.FieldByName('cli_001').AsInteger);
      frmDetalheCliente.ShowModal;
      frmDetalheCliente.Free;
      qrConsulta.Refresh;
    end;
  end;
end;

procedure TfrmConsCliente.btNovoClick(Sender: TObject);
begin
  inherited;
  frmDetalheCliente := TfrmDetalheCliente.Create(self);
  frmDetalheCliente.ShowModal;
  frmDetalheCliente.Free;
  qrConsulta.Refresh;
end;

end.

