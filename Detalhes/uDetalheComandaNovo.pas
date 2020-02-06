unit uDetalheComandaNovo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
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
  dxSkinXmas2008Blue, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  Vcl.StdCtrls, JvDataSource, Data.DB, MemDS, DBAccess, Uni, AdvGlowButton,
  Vcl.ExtCtrls, AdvPanel;

type
  TfrmDetalheComandaNovo = class(TfrmModeloCadastroSimples)
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    edDescricao: TcxDBTextEdit;
    edComanda: TcxDBTextEdit;
    Label3: TLabel;
    qrCadastrocom_001: TIntegerField;
    qrCadastroemp_001: TIntegerField;
    qrCadastrocom_002: TWideStringField;
    qrCadastrocom_003: TIntegerField;
    qrCadastrosit_001: TIntegerField;
    qrCadastrousu_001_1: TIntegerField;
    qrCadastrodat_001_1: TDateTimeField;
    qrAux1: TUniQuery;
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure edComandaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure qrCadastroNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheComandaNovo: TfrmDetalheComandaNovo;

implementation

{$R *.dfm}

uses Funcao_DB, uMenu;

procedure TfrmDetalheComandaNovo.btEditarClick(Sender: TObject);
begin
  inherited;
  if edDescricao.canFocus then
    edDescricao.SetFocus;
end;

procedure TfrmDetalheComandaNovo.btExcluirClick(Sender: TObject);
begin
  if not btExcluir.Enabled then abort;

  Application.NormalizeAllTopMosts;
  if  Application.MessageBox( 'Confirma a exclusão do registro? Esta ação não pode ser desfeita.', 'Atenção', MB_TOPMOST + MB_ICONQUESTION + MB_YESNO)=mryes then
  begin
    try
      qrCadastro.Delete;
      qrCadastro.close;
    except
      Application.MessageBox('Erro ao excluir o registro. A exclusão não é possível caso o item já tenha sido usado no sistema!', 'Atenção', MB_ICONERROR + MB_OK);
    end;
  end;
end;

procedure TfrmDetalheComandaNovo.btNovoClick(Sender: TObject);
begin
  inherited;
  if edDescricao.canFocus then
    edDescricao.SetFocus;
end;

procedure TfrmDetalheComandaNovo.btSalvarClick(Sender: TObject);
var str_sql: string;
begin
  if edDescricao.Text = EmptyStr then
  begin
    Application.MessageBox('Preencha a Descrição!', 'Atenção', MB_ICONEXCLAMATION);
    edDescricao.SetFocus;
    Abort;
  end;

  if edComanda.Text = EmptyStr then
  begin
    Application.MessageBox('Preencha o Número!', 'Atenção', MB_ICONEXCLAMATION);
    edComanda.SetFocus;
    Abort;
  end;

  qraux1:=tuniquery.Create(self);
  qraux1.Connection:=frmMenu.conexao;
  str_sql:='select com_003 from comanda where emp_001=:emp_001 and sit_001=4 and com_003>=:numero';
  qraux1.SQL.Add(str_sql);
  qraux1.ParamByName('emp_001').AsInteger := RecProj.iEmp;
  qraux1.ParamByName('numero').Asinteger  := StrToInt(edComanda.Text);
  qraux1.Open;

  if qraux1.RecordCount>0 then
  begin
    Application.MessageBox('Esse número de comanda já existe!','ALERTA',+MB_ICONQUESTION);
    edComanda.SetFocus;
    abort;
  end;
  qraux1.Close;

  inherited;
end;

procedure TfrmDetalheComandaNovo.edComandaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_return then
    if btSalvar.canFocus then btSalvar.SetFocus;
end;

procedure TfrmDetalheComandaNovo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmDetalheComandaNovo.FormShow(Sender: TObject);
begin
  inherited;
  if edDescricao.canFocus then
    edDescricao.SetFocus;
end;

procedure TfrmDetalheComandaNovo.qrCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrCadastro.FieldByName('com_001').AsInteger    := NovoId('comanda','com_001',recProj.iEmp,'emp_001');
  qrCadastro.FieldByName('emp_001').AsInteger    := recProj.iEmp;
  qrCadastro.FieldByName('sit_001').AsInteger    := 4;
  qrCadastro.FieldByName('usu_001_1').AsInteger  := recProj.iUsuario;
  qrCadastro.FieldByName('dat_001_1').AsDateTime := DataServer(frmMenu.conexao);;
end;

end.
