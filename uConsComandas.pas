unit uConsComandas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmModeloConsultaTabelaUnica,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, MemDS, DBAccess, Uni,
  Vcl.ExtCtrls, AdvGlowButton, Vcl.StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, AdvPanel;

type
  TfrmConsComanda = class(TfrmModeloConsultaTabelaUnica)
    qrConsultacom_001: TIntegerField;
    qrConsultaemp_001: TIntegerField;
    qrConsultacom_002: TWideStringField;
    qrConsultacom_003: TIntegerField;
    cxGrid1DBTableView1com_001: TcxGridDBColumn;
    cxGrid1DBTableView1com_002: TcxGridDBColumn;
    cxGrid1DBTableView1com_003: TcxGridDBColumn;
    btGerar: TAdvGlowButton;
    btExcluir: TAdvGlowButton;
    procedure btAbrirRegistroClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btGerarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsComanda: TfrmConsComanda;

implementation

{$R *.dfm}

uses uMenu, uDetalhesComanda, uDetalheComandaNovo;

procedure TfrmConsComanda.btAbrirRegistroClick(Sender: TObject);
begin
  inherited;
  if qrConsulta.Active then
  begin
    if qrConsulta.RecordCount > 0 then
    begin
      frmDetalheComandaNovo := TfrmDetalheComandaNovo.Create(self, 'com_001',
        '', qrConsulta.FieldByName('com_001').AsInteger, True, True, True,
        'emp_001', recProj.iEmp);
      frmDetalheComandaNovo.ShowModal;
      FreeAndNil(frmDetalheComandaNovo);
      qrConsulta.Refresh;
    end;
  end;
end;

procedure TfrmConsComanda.btExcluirClick(Sender: TObject);
var
  str_sql: string;
  qraux1: tuniquery;
begin
  inherited;
  str_sql := 'delete from comanda where emp_001=:emp';
  qraux1 := tuniquery.Create(self);
  qraux1.Connection := frmmenu.conexao;
  qraux1.SQL.Add(str_sql);
  qraux1.ParamByName('emp').AsInteger := recProj.iEmp;
  Application.MessageBox('Todas as comandas foram excluidas com sucesso!',
    'alerta', +MB_ICONQUESTION + mb_ok);
  qraux1.execute;
  qrConsulta.Refresh;

end;

procedure TfrmConsComanda.btGerarClick(Sender: TObject);
var
  str_sql: string;
  qraux1: tuniquery;
begin
  inherited;
  frmDetalheComanda := TfrmDetalheComanda.Create(self);
  frmDetalheComanda.ShowModal;
  FreeAndNil(frmDetalheComanda);
  qrConsulta.Refresh;

end;

procedure TfrmConsComanda.btNovoClick(Sender: TObject);
begin
  inherited;
  frmDetalheComandaNovo := TfrmDetalheComandaNovo.Create(self, 'com_001', '');
  frmDetalheComandaNovo.ShowModal;
  FreeAndNil(frmDetalheComandaNovo);
  qrConsulta.Refresh;
end;

end.
