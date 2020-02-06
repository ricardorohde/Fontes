unit ufrmModeloConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, MemDS,
  DBAccess, Uni, AdvGlowButton, Vcl.StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.ExtCtrls, AdvPanel, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TfrmModeloConsulta = class(TfrmModelo)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    edBusca: TEdit;
    Label1: TLabel;
    cbCampoFiltro: TComboBox;
    Label2: TLabel;
    btPesquisar: TAdvGlowButton;
    dsConsulta: TDataSource;
    qrConsulta: TUniQuery;
    btNovo: TAdvGlowButton;
    btAbrirRegistro: TAdvGlowButton;
    function IsGridFocused: Boolean;
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModeloConsulta: TfrmModeloConsulta;

implementation

{$R *.dfm}

procedure TfrmModeloConsulta.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  btAbrirRegistro.Click;
end;

function TfrmModeloConsulta.IsGridFocused: Boolean;
var
 AContainer: TcxCustomEdit;
begin
 Result := Screen.ActiveControl is TcxGridSite;
 if not Result then
 begin
   AContainer := nil;
   if Screen.ActiveControl is TcxCustomEdit then
   begin
     AContainer := TcxCustomEdit(Screen.ActiveControl);
     Result := True;
   end
   else
     if (Screen.ActiveControl.Parent <> nil) and
       (Screen.ActiveControl.Parent is TcxCustomEdit) then
     begin
       AContainer := TcxCustomEdit(Screen.ActiveControl.Parent);
       Result := True;
     end;
   Result := Result and (AContainer.Parent is TcxGridSite);
 end;
end;

end.
