unit uDetalheContaCorrente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, Data.DB,
  JvDataSource, MemDS, DBAccess, Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxCurrencyEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  Vcl.StdCtrls, dxSkinsCore, dxSkinsDefaultPainters, dxSkinBlack, dxSkinBlue,
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
  TfrmDetalheContaCorrente = class(TfrmModeloCadastroSimples)
    qrCadastroid_contacorrente: TIntegerField;
    qrCadastroid_empresa: TIntegerField;
    qrCadastroagencia: TWideStringField;
    qrCadastroconta: TWideStringField;
    qrCadastrobanco: TWideStringField;
    qrCadastrosaldo: TFloatField;
    qrCadastroid_situacao: TIntegerField;
    qrCadastroobservacao: TWideStringField;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label5: TLabel;
    Label6: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    qrCadastrotitular: TWideStringField;
    Label7: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheContaCorrente: TfrmDetalheContaCorrente;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB;

procedure TfrmDetalheContaCorrente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key= vk_return then
  Perform(WM_NEXTDLGCTL,0,0)
end;

procedure TfrmDetalheContaCorrente.qrCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrCadastro.FieldByName('id_empresa').AsInteger := RecProj.iemp;
  qrCadastro.FieldByName('saldo').AsInteger :=0;
  qrCadastro.FieldByName('id_situacao').AsInteger := 4;
  qrCadastro.FieldByName('id_contacorrente').AsInteger := NovoId('contacorrente', 'id_contacorrente', RecProj.iEmp, 'id_empresa');;
end;

end.
