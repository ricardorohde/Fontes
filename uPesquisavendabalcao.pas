unit uPesquisavendabalcao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCheckBox,
  MemDS, DBAccess, Uni, AdvGlowButton, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.ExtCtrls, AdvPanel, cxCurrencyEdit, dxGDIPlusClasses, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfrmPesquisavendabalcao1 = class(TfrmModelo)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    dsPesquisavendavalcao: TDataSource;
    qrPesquisavendabalcao: TUniQuery;
    qrPesquisavendabalcaoven_001: TIntegerField;
    qrPesquisavendabalcaoven_009: TFloatField;
    qrPesquisavendabalcaonome_cliente: TWideStringField;
    cxGrid1DBTableView1ven_001: TcxGridDBColumn;
    cxGrid1DBTableView1ven_009: TcxGridDBColumn;
    cxGrid1DBTableView1nome_cliente: TcxGridDBColumn;
    qrPesquisavendabalcaoemp_001: TIntegerField;
    Image3: TImage;
    procedure FormShow(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisavendabalcao1: TfrmPesquisavendabalcao1;

implementation

{$R *.dfm}

uses uMenu;

procedure TfrmPesquisavendabalcao1.btCancelaClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPesquisavendabalcao1.btConfirmaClick(Sender: TObject);
var
str_sql:string;
qraux1:tuniquery;
begin
      if qrPesquisavendabalcao.RecordCount>0 then
      begin
      if Application.MessageBox('Deseja realmente retornar a essa venda?','Atenção',MB_YESNO+MB_ICONQUESTION)=mryes then
      begin
        self.tag:=1 ;
        self.Close;
        str_sql :='update venda set sit_001=0 where ven_001=:ven_001 and emp_001=:emp_001';
        qrAux1 := TUniQuery.Create(self);
        qrAux1.Connection := frmMenu.conexao;
        qrAux1.close;
        qrAux1.SQL.clear;
        qrAux1.SQL.Add(str_sql);
        qrAux1.ParamByName('ven_001').asinteger := qrPesquisavendabalcao.fieldbyname('ven_001').asinteger;
        qrAux1.ParamByName('emp_001').asinteger := qrPesquisavendabalcao.fieldbyname('emp_001').asinteger;
        qrAux1.Execute;
      end;
      end
      else
       Application.MessageBox('Não existe vendas a serem fechadas! ','Atenção',MB_ICONQUESTION+MB_OK);
       close;


end;

procedure TfrmPesquisavendabalcao1.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btconfirma.click;
end;

procedure TfrmPesquisavendabalcao1.FormShow(Sender: TObject);
begin
  qrpesquisavendabalcao.ParamByName('emp_001').AsInteger:=RecProj.iEmp;
  qrpesquisavendabalcao.Open;
  qrPesquisavendabalcao.Last;
end;

end.
