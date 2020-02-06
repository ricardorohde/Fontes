unit uDetalhencm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  Data.DB, MemDS, DBAccess, Uni,  cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, AdvGlowButton, cxTextEdit,
  cxDBEdit, Vcl.StdCtrls, Vcl.Samples.Spin, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue;

type
  TfrmDetalhencm = class(TfrmModelo)
    qrNcm: TUniQuery;
    dsNcm: TDataSource;
    qrNcmncm_codigo: TWideStringField;
    qrNcmncm_descricao: TWideStringField;
    Label1: TLabel;
    Label2: TLabel;
    dbDescricao: TcxDBTextEdit;
    btNovo: TAdvGlowButton;
    btEditar: TAdvGlowButton;
    btExcluir: TAdvGlowButton;
    btSalvar: TAdvGlowButton;
    btCancelar: TAdvGlowButton;
    qrAux1: TUniQuery;
    dbCodigo: TcxDBTextEdit;
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure dbCodigoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalhencm: TfrmDetalhencm;

implementation

{$R *.dfm}
uses umenu;

procedure TfrmDetalhencm.btCancelarClick(Sender: TObject);
begin
  qrncm.Cancel;
   btnovo.Enabled:=true;
   bteditar.Enabled:=true;
   btexcluir.Enabled:=true;
   btsalvar.Enabled:=false;
   btcancelar.Enabled:=false;
   dbcodigo.Text:='';
   dbdescricao.Text:='';
   dbcodigo.Enabled:=false;
   dbDescricao.Enabled:=false;

end;

procedure TfrmDetalhencm.btEditarClick(Sender: TObject);
begin
   qrncm.Edit;
   btnovo.Enabled:=false;
   bteditar.Enabled:=false;
   btexcluir.Enabled:=true;
   btsalvar.Enabled:=true;
   btcancelar.Enabled:=true;
   dbcodigo.Enabled:=true;
   dbDescricao.Enabled:=true;

end;

procedure TfrmDetalhencm.btExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('DESEJA REALMENTE EXCLUIR','ALERTA',MB_ICONWARNING+MB_OKCANCEL)=mrOk then
    begin
     qrncm.Delete;
     btnovo.Enabled:=true;
     bteditar.Enabled:=false;
     btexcluir.Enabled:=true;
     btsalvar.Enabled:=true;
     btcancelar.Enabled:=false;
    end;

end;

procedure TfrmDetalhencm.btNovoClick(Sender: TObject);
begin
   qrncm.Append;
   btnovo.Enabled:=false;
   bteditar.Enabled:=false;
   btexcluir.Enabled:=false;
   btsalvar.Enabled:=true;
   btcancelar.Enabled:=true;
   dbcodigo.Enabled:=true;
   dbDescricao.Enabled:=true;
   dbcodigo.canFocus;

end;

procedure TfrmDetalhencm.btSalvarClick(Sender: TObject);
var
str_sql:string;
qraux1:tuniquery;
begin
  if dbCodigo.Text='' then
  begin
     Application.MessageBox('CAMPO CÓDIGO NÃO PODE SER VAZIO','ALERTA',+MB_ICONQUESTION+MB_OK);
     dbcodigo.setfocus;
     abort;
  end;
   if dbDescricao.Text='' then
  begin
     Application.MessageBox('CAMPO DESCIÇÃO NÃO PODE SER VAZIO','ALERTA',+MB_ICONQUESTION+MB_OK);
     dbDescricao.CanFocus;
     abort;
  end;

   qraux1:=tuniquery.Create(self);
   qraux1.Connection:=frmMenu.conexao;
   str_sql:='select ncm_codigo,ncm_descricao from ncm where ncm_codigo=:ncm_codigo';
   qraux1.SQL.Add(str_sql);
   qraux1.ParamByName('ncm_codigo').asstring:=trim (dbcodigo.text);
   qraux1.Open;
   if qraux1.RecordCount>0 then
   begin
     application.messagebox('NCM JÁ CADASTRADOR, POR FAVOR INFORME UM NCM SEM CADASTRO','ALERTA',+MB_ICONQUESTION+MB_OK);
     dbcodigo.SetFocus;
     abort;
   end;
  qrncm.Post;
  Application.MessageBox('NCM CADASTRADO COM SUCESSO','ALERTA',+MB_ICONQUESTION+MB_OK);
   btnovo.Enabled:=true;
   bteditar.Enabled:=false;
   btexcluir.Enabled:=false;
   btsalvar.Enabled:=false;
   btcancelar.Enabled:=true;
   dbcodigo.Enabled:=false;
   dbDescricao.Enabled:=false;
end;

procedure TfrmDetalhencm.dbCodigoKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key  in ['0','1','2','3','4','5','6','7','8','9',#8]) then
  key:=#0 ;

end;

procedure TfrmDetalhencm.FormShow(Sender: TObject);
begin
  qrncm.Open;
   btnovo.Enabled:=true;
   bteditar.Enabled:=false;
   btexcluir.Enabled:=false;
   btsalvar.Enabled:=false;
   btcancelar.Enabled:=true;
   dbcodigo.Enabled:=false;
   dbDescricao.Enabled:=false;


end;

end.
