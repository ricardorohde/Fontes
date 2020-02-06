unit uConsFormaPgto;

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
  TfrmConsFormaPgto = class(TfrmModeloConsultaTabelaUnica)
    qrConsultafor_001: TIntegerField;
    qrConsultafor_002: TWideStringField;
    qrConsultadesc_status: TWideStringField;
    cxGrid1DBTableView1for_001: TcxGridDBColumn;
    cxGrid1DBTableView1for_002: TcxGridDBColumn;
    cxGrid1DBTableView1desc_status: TcxGridDBColumn;
    procedure btAbrirRegistroClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsFormaPgto: TfrmConsFormaPgto;

implementation

{$R *.dfm}

uses uDetalheFormaPgto;

procedure TfrmConsFormaPgto.btAbrirRegistroClick(Sender: TObject);
begin
  inherited;
  if qrConsulta.Active then
  begin
    if qrConsulta.RecordCount>0 then
    begin
      frmDetalheFormaPgto := TfrmDetalheFormaPgto.Create(self, 'for_001', 'sit_001', qrConsulta.FieldByName('for_001').AsInteger);
      frmDetalheFormaPgto.ShowModal;
      FreeAndNil(frmDetalheFormaPgto);
      qrConsulta.Refresh;
    end;
  end;
end;

procedure TfrmConsFormaPgto.btNovoClick(Sender: TObject);
begin
  inherited;
  frmDetalheFormaPgto := TfrmDetalheFormaPgto.Create(self, 'for_001', 'sit_001');
  frmDetalheFormaPgto.ShowModal;
  frmDetalheFormaPgto.Free;
  qrConsulta.Refresh;
end;

end.
