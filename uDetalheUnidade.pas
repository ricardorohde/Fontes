unit uDetalheUnidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, JvDataSource,
  Data.DB, MemDS, DBAccess, Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls,
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
  dxSkinXmas2008Blue;

type
  TfrmDetalheUnidade = class(TfrmModeloCadastroSimples)
    qrCadastrouni_001: TIntegerField;
    qrCadastrouni_002: TWideStringField;
    qrCadastrouni_003: TWideStringField;
    qrCadastrosit_001: TIntegerField;
    qrCadastrousu_001_1: TIntegerField;
    qrCadastrousu_001_2: TIntegerField;
    qrCadastrousu_001_3: TIntegerField;
    qrCadastrodat_001_1: TDateTimeField;
    qrCadastrodat_001_2: TDateTimeField;
    qrCadastrodat_001_3: TDateTimeField;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    edDescricao: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    qrCadastroid_empresa: TIntegerField;
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheUnidade: TfrmDetalheUnidade;

implementation

{$R *.dfm}

uses Funcao_DB, uMenu;

procedure TfrmDetalheUnidade.cxDBTextEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_return then
    if btSalvar.canFocus then btSalvar.SetFocus;
end;

procedure TfrmDetalheUnidade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmDetalheUnidade.FormShow(Sender: TObject);
begin
  inherited;
  if edDescricao.canFocus then
    edDescricao.SetFocus;
end;

procedure TfrmDetalheUnidade.qrCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrCadastro.FieldByName('uni_001').AsInteger := novoId('unidades','uni_001',recProj.Iemp,'emp_001');
  qrCadastro.FieldByName('id_empresa').AsInteger := recProj.Iemp;
  qrCadastro.FieldByName('usu_001_1').AsInteger := recProj.iUsuario;
  qrCadastro.FieldByName('dat_001_1').AsDateTime := date+time;
  qrCadastro.FieldByName('sit_001').AsInteger := 4;
end;

end.
