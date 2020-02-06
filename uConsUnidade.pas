unit uConsUnidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmModeloConsultaTabelaUnica,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, MemDS,
  DBAccess, Uni, Vcl.ExtCtrls, AdvGlowButton, Vcl.StdCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, AdvPanel, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmConsUnidade = class(TfrmModeloConsultaTabelaUnica)
    qrConsultauni_001: TIntegerField;
    qrConsultauni_002: TWideStringField;
    qrConsultauni_003: TWideStringField;
    cxGrid1DBTableView1uni_001: TcxGridDBColumn;
    cxGrid1DBTableView1uni_002: TcxGridDBColumn;
    cxGrid1DBTableView1uni_003: TcxGridDBColumn;
    procedure btNovoClick(Sender: TObject);
    procedure btAbrirRegistroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsUnidade: TfrmConsUnidade;

implementation

{$R *.dfm}

uses uDetalheUnidade;

procedure TfrmConsUnidade.btAbrirRegistroClick(Sender: TObject);
begin
  inherited;
  if qrConsulta.Active then
  begin
    if qrConsulta.RecordCount>0 then
    begin
      frmDetalheUnidade := TfrmDetalheUnidade.Create(self, 'uni_001', 'sit_001', qrConsulta.FieldByName('uni_001').AsInteger);
      frmDetalheUnidade.ShowModal;
      frmDetalheUnidade.Free;
      qrConsulta.Refresh;
    end;
  end;
end;

procedure TfrmConsUnidade.btNovoClick(Sender: TObject);
begin
  inherited;
  frmDetalheUnidade := TfrmDetalheUnidade.Create(self, 'uni_001', 'sit_001');
  frmDetalheUnidade.ShowModal;
  frmDetalheUnidade.Free;
  qrConsulta.Refresh;
end;

end.
