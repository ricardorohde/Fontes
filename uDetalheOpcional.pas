unit uDetalheOpcional;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  JvExStdCtrls, JvEdit, JvValidateEdit, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  cxTextEdit, cxDBEdit, Data.DB, JvDataSource, MemDS, DBAccess, Uni,
  AdvGlowButton, Vcl.ExtCtrls, AdvPanel, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxGroupBox, cxRadioGroup;

type
  TfrmDetalheOpcional = class(TfrmModeloCadastroSimples)
    qrCadastroid_opcional: TIntegerField;
    qrCadastrodescricao: TWideStringField;
    qrCadastrovalor: TFloatField;
    Label1: TLabel;
    Label2: TLabel;
    edDescricao: TcxDBTextEdit;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    edValor: TJvValidateEdit;
    qrCadastroid_empresa: TIntegerField;
    grTipo: TcxDBRadioGroup;
    qrCadastrotipo: TIntegerField;
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure qrCadastroAfterPost(DataSet: TDataSet);
    procedure btNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheOpcional: TfrmDetalheOpcional;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uFuncoes;

procedure TfrmDetalheOpcional.btNovoClick(Sender: TObject);
begin
  inherited;
  if qrCadastro.State = dsInsert then
    edDescricao.SetFocus;
end;

procedure TfrmDetalheOpcional.btSalvarClick(Sender: TObject);
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if qrCadastrodescricao.AsString = EmptyStr then
  begin
    Application.MessageBox(pchar('Preencha o campo descrição!'), 'Atenção', MB_ICONINFORMATION);
    edDescricao.SetFocus;
    abort;
  end;

  inherited;
end;

procedure TfrmDetalheOpcional.FormShow(Sender: TObject);
begin
  inherited;
  //Verifica configuração para exibir ou não o tipo - Bruno 16/04/2018
  if LerBooleanConfig('ckTrabalharTipoOpcionais',frmMenu.cdsCFG.FileName) then
  begin
    grTipo.Visible:= True;
    Self.Height   := 215;
  end
  else
  begin
    grTipo.Visible:= False;
    Self.Height   := 150;
  end;
end;

procedure TfrmDetalheOpcional.qrCadastroAfterPost(DataSet: TDataSet);
begin
  inherited;
  qrCadastro.ParamByName('id_opcional').AsInteger := qrCadastro.fieldbyname('id_opcional').AsInteger;
end;

procedure TfrmDetalheOpcional.qrCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrCadastro.FieldByName('id_opcional').AsInteger := NovoId('opcional', 'id_opcional', RecProj.iEmp, 'id_empresa');
  qrCadastro.FieldByName('id_empresa').AsInteger  := RecProj.iEmp;
  qrCadastro.FieldByName('tipo').AsInteger        := 0; //Geral

  //Tipos de Opcionais
  //0-Geral
  //1-Massa
  //2-Recheio
  //3-Complemento
  //4-Molho
  //5-Cobertura
end;

end.
