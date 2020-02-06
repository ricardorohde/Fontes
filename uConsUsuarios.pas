unit uConsUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, MemDS, DBAccess, Uni,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.StdCtrls, AdvGlowButton,
  Vcl.ExtCtrls, AdvPanel, JvExStdCtrls, JvCheckBox, cxContainer, cxCheckBox,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmConsUsuarios = class(TForm)
    AdvPanel1: TAdvPanel;
    pnBotoes: TFlowPanel;
    btNovo: TAdvGlowButton;
    Label1: TLabel;
    Label2: TLabel;
    edBusca: TEdit;
    cbCampoFiltro: TComboBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qrConsulta: TUniQuery;
    dsConsulta: TDataSource;
    btPesquisar: TAdvGlowButton;
    qrConsultausu_001: TIntegerField;
    qrConsultausu_002: TWideStringField;
    qrConsultausu_003: TWideStringField;
    qrConsultastatus: TWideStringField;
    cxGrid1DBTableView1usu_001: TcxGridDBColumn;
    cxGrid1DBTableView1usu_002: TcxGridDBColumn;
    cxGrid1DBTableView1usu_003: TcxGridDBColumn;
    cxGrid1DBTableView1status: TcxGridDBColumn;
    chkTermoParcialBusca: TcxCheckBox;
    btAbrirRegistro: TAdvGlowButton;
    qrConsultafuncao_garcom: TWideStringField;
    qrConsultafuncao_entregador: TWideStringField;
    cxGrid1DBTableView1funcao_garcom: TcxGridDBColumn;
    cxGrid1DBTableView1funcao_entregador: TcxGridDBColumn;
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure qrConsultaAfterOpen(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure abreCadastro;
    procedure btAbrirRegistroClick(Sender: TObject);
    procedure RecarregaPermissoesUsuario;
  private
    { Private declarations }
    i_where : integer;
  public
    { Public declarations }
  end;

var
  frmConsUsuarios: TfrmConsUsuarios;

implementation

{$R *.dfm}

uses uMenu, uDetalheUsuario, uLogin, Funcao_DB;
procedure TfrmConsUsuarios.RecarregaPermissoesUsuario;
var qr_aux : TUniquery;
    str_sql : string;
begin
  qr_aux := TUniquery.Create(self);
  qr_aux.Connection := frmmenu.conexao;

  str_sql := format('select usu_003 as login, usu_004 as senha from usuarios where usu_001=%d',[recproj.iUsuario]);
  ExecutaConsultaSQL(qr_aux, str_sql);

  frmLogin.Valida_Usuario(qr_aux.Fields[0].asstring, qr_aux.Fields[1].asstring);
end;

procedure TfrmConsUsuarios.btAbrirRegistroClick(Sender: TObject);
begin
  abreCadastro;
end;

procedure TfrmConsUsuarios.btNovoClick(Sender: TObject);
begin
  frmDetalheUsuario:= tfrmDetalheUsuario.Create(self);
  frmDetalheUsuario.ShowModal;
  frmDetalheUsuario.Free;
  qrConsulta.Refresh;
  RecarregaPermissoesUsuario;
end;

procedure TfrmConsUsuarios.btPesquisarClick(Sender: TObject);
var str_sql, curinga : string;
begin
  qrConsulta.Close;

  if chkTermoParcialBusca.Checked then curinga:='%'  else curinga:='';

  case cbCampoFiltro.ItemIndex of
    0: str_sql := ' and upper(usu_002) like upper(';      //nome
    1: str_sql := ' and upper(usu_003) like upper(';      //login
  end;
  str_sql := str_sql + QuotedStr(curinga+trim(edBusca.Text) +'%') +') ';

  //adiciona o filtro a ultima linha do select, onde está a cláusula 'where'
  if i_where = qrConsulta.SQL.Count then
    qrConsulta.SQL.Add(str_sql)
  else
    qrConsulta.SQL[i_where] := str_sql;
  qrConsulta.Open;
end;

procedure TfrmConsUsuarios.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  abreCadastro;
end;


procedure TfrmConsUsuarios.abreCadastro;
begin
  if qrConsulta.RecordCount>0 then
  begin
    frmDetalheUsuario:= tfrmDetalheUsuario.Create(self, qrConsulta.FieldByName('usu_001').AsInteger);
    frmDetalheUsuario.ShowModal;
    frmDetalheUsuario.Free;
  end;
  qrConsulta.Refresh;
  RecarregaPermissoesUsuario;
end;

procedure TfrmConsUsuarios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
  begin
    if ActiveControl is TcxGridSite then
      abreCadastro
    else if ActiveControl.Name = 'edBusca' then
    begin
      Perform(WM_NEXTDLGCTL, 0, 0);
      btPesquisar.Click;
    end;
  end
end;

procedure TfrmConsUsuarios.FormShow(Sender: TObject);
begin
  qrConsulta.Open;
  i_where := qrConsulta.SQL.Count;
  edBusca.SetFocus;
end;

procedure TfrmConsUsuarios.qrConsultaAfterOpen(DataSet: TDataSet);
begin
cxGrid1DBTableView1.Controller.TopRowIndex:= 0;
end;

end.


