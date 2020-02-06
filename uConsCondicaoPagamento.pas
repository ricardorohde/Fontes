unit uConsCondicaoPagamento;

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
  TfrmConsCondicaoPagamento = class(TfrmModeloConsultaTabelaUnica)
    qrConsultaid_condicaopagamento: TIntegerField;
    qrConsultadescricao: TWideStringField;
    qrConsultanumero_parcelas: TIntegerField;
    qrConsultadesc_situacao: TWideMemoField;
    cxGrid1DBTableView1id_condicaopagamento: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1numero_parcelas: TcxGridDBColumn;
    cxGrid1DBTableView1desc_situacao: TcxGridDBColumn;
    procedure btNovoClick(Sender: TObject);
    procedure btAbrirRegistroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsCondicaoPagamento: TfrmConsCondicaoPagamento;

implementation

{$R *.dfm}

uses uDetalheCondicaoPagamento;

procedure TfrmConsCondicaoPagamento.btAbrirRegistroClick(Sender: TObject);
begin
  inherited;
  if qrConsulta.Active then
  begin
    if qrConsulta.RecordCount>0 then
    begin
      frmDetalheCondicaoPagamento := TfrmDetalheCondicaoPagamento.Create(self, 'id_condicaopagamento', 'id_situacao' , qrConsulta.FieldByName('id_condicaopagamento').AsInteger);
      frmDetalheCondicaoPagamento.ShowModal;
      frmDetalheCondicaoPagamento.Free;
      qrConsulta.Refresh;
    end;
  end;
end;

procedure TfrmConsCondicaoPagamento.btNovoClick(Sender: TObject);
begin
  inherited;
  frmDetalheCondicaoPagamento := TfrmDetalheCondicaoPagamento.Create(self, 'id_condicaopagamento', 'id_situacao');
  frmDetalheCondicaoPagamento.ShowModal;
  frmDetalheCondicaoPagamento.Free;
  qrConsulta.Refresh;
end;

end.
