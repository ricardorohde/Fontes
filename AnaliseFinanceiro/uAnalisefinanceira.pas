unit uAnalisefinanceira;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, MemDS,
  DBAccess, Uni, AdvGlowButton, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.StdCtrls, AdvGroupBox, Vcl.ExtCtrls, AdvPanel,dateutils, cxImageComboBox,
  frxClass, frxDBSet, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmAnalisefinanceira = class(TfrmModelo)
    cbMes: TComboBox;
    cbAno: TComboBox;
    AdvGroupBox1: TAdvGroupBox;
    AdvGroupBox2: TAdvGroupBox;
    AdvGroupBox3: TAdvGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    btPesquisar: TAdvGlowButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblReceitas: TLabel;
    lblDespesas: TLabel;
    lblSaldo: TLabel;
    qrLista: TUniQuery;
    dsLista: TDataSource;
    qrListadata_emissao: TDateField;
    qrListareceita: TFloatField;
    qrListadespesa: TFloatField;
    qrListasaldo_total: TFloatField;
    cxGrid1DBTableView1data_emissao: TcxGridDBColumn;
    cxGrid1DBTableView1receita: TcxGridDBColumn;
    cxGrid1DBTableView1despesa: TcxGridDBColumn;
    cxGrid1DBTableView1saldo_total: TcxGridDBColumn;
    qrListasaldo_acumulado: TFloatField;
    cxGrid1DBTableView1saldo_acumulado: TcxGridDBColumn;
    qrListaflag_receita: TWideMemoField;
    qrListaflag_despesa: TWideMemoField;
    cxGrid1DBTableView1flag_receita: TcxGridDBColumn;
    cxGrid1DBTableView1flag_despesa: TcxGridDBColumn;
    btSair: TAdvGlowButton;
    btImprimir: TAdvGlowButton;
    dbAnalise: TfrxDBDataset;
    repAnalise: TfrxReport;
    procedure btPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure cbAnoKeyPress(Sender: TObject; var Key: Char);
    constructor Create (sender : Tcomponent); reintroduce;
    procedure btImprimirClick(Sender: TObject);
  private
    id_usuario_creceber:Integer;
  public
    { Public declarations }
  end;

var
  frmAnalisefinanceira: TfrmAnalisefinanceira;

implementation

{$R *.dfm}

uses uMenu;

  // Início 08/03/2018    Rafael
 // Termino 09/03/2018
// Objetivo desse relatório ,saber quanto teve de receita e saida

constructor TfrmAnalisefinanceira.create(sender: TComponent);
begin
  inherited create(sender);
  if not frmMenu.ConfirmacaoSenha('b_acesso_cpagar_creceber',id_usuario_creceber) then
  abort;
end;
procedure TfrmAnalisefinanceira.btImprimirClick(Sender: TObject);
begin
  inherited;
  if qrLista.RecordCount = 0 then
    Exit;

  repAnalise.Variables['sTitulo']   := QuotedStr('ANÁLISE FINANCEIRO - ' + UpperCase(cbMes.Text) + '/' + UpperCase(cbAno.Text));
  repAnalise.Variables['sReceitas'] := QuotedStr(lblReceitas.Caption);
  repAnalise.Variables['sDespesas'] := QuotedStr(lblDespesas.Caption);
  repAnalise.Variables['sSaldo']    := QuotedStr(lblSaldo.Caption);

  repAnalise.PrepareReport;
  repAnalise.ShowReport;
end;

procedure TfrmAnalisefinanceira.btPesquisarClick(Sender: TObject);
var
mes:integer;
acumulado, receitas, despesas:double;
begin
  inherited;
  case cbmes.ItemIndex of
    0: mes:=1;
    1: mes:=2;
    2: mes:=3;
    3: mes:=4;
    4: mes:=5;
    5: mes:=6;
    6: mes:=7;
    7: mes:=8;
    8: mes:=9;
    9: mes:=10;
   10: mes:=11;
   11: mes:=12;
  end;
  if cbmes.ItemIndex=-1 then
  begin
      Application.MessageBox('INFORME UM MÊS VÁLIDO','ALERTA',MB_ICONQUESTION+MB_OK);
      Abort;
  end;

  if  cbano.Text='' then
  begin
    Application.MessageBox('INFORME UM ANO VÁLIDO','ALERTA',MB_ICONQUESTION+MB_OK);
    Abort;
  end;

  // No Item Index do CB ANO foi colocado ate o ano 2050, após isso espero já ter aposentado e não ter que mexer com isso mais
  // Acredito que meus filho Marcelo e Arthur estará no comando, então não esqueçam de incluir mais anos.    Rafael 08/03/2018 as 17:19
  // Amo vocês filhos

  acumulado:=0;
  receitas:= 0;
  despesas:= 0;

  qrlista.Close;
  qrlista.ParamByName('emp').AsInteger:=RecProj.iEmp;
  qrlista.ParamByName('mes').AsInteger:=mes ;
  qrlista.ParamByName('ano').AsInteger:=StrToInt(cbAno.Text);
  qrlista.Open;
  qrlista.DisableControls;
  qrlista.First;
  while not qrlista.Eof do
  begin
     qrlista.Edit;
    if qrlista.RecNo=1 then
    begin
      qrLista.FieldByName('saldo_acumulado').AsFloat:=qrlista.FieldByName('saldo_total').AsFloat;
      acumulado:=acumulado+qrlista.FieldByName('saldo_total').AsFloat;
    end
    else
    begin
      qrLista.FieldByName('saldo_acumulado').AsFloat:=qrlista.FieldByName('saldo_total').AsFloat+acumulado;
      acumulado:=acumulado+qrlista.FieldByName('saldo_total').AsFloat;
    end;
    qrlista.Post;

    receitas:= receitas + qrLista.FieldByName('receita').AsFloat;
    despesas:= despesas + qrLista.FieldByName('despesa').AsFloat;
    qrlista.Next;
  end;
  qrlista.First;
  qrlista.EnableControls;
  if (receitas-despesas)>0 then
  begin
     lblSaldo.Caption:= '+'+FormatFloat('###,###,##0.00', receitas - despesas);
  end
  else if (receitas-despesas)=0 then
  begin
     lblSaldo.Caption:= FormatFloat('###,###,##0.00', receitas - despesas);
  end
  else
  begin
    lblSaldo.Caption:= '-'+FormatFloat('###,###,##0.00', receitas - despesas);
  end;
  lblReceitas.Caption:='+'+ FormatFloat('###,###,##0.00', receitas);
  lblDespesas.Caption:='-'+ FormatFloat('###,###,##0.00', despesas);

end;

procedure TfrmAnalisefinanceira.btSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmAnalisefinanceira.cbAnoKeyPress(Sender: TObject; var Key: Char);
begin
  if not( key  in ['0','1','2','3','4','5','6','7','8','9',#8]) then //
   key:=#0 ;

end;

procedure TfrmAnalisefinanceira.FormShow(Sender: TObject);
begin
  inherited;
  cbmes.ItemIndex:=monthof(date)-1;
  cbano.Text:=IntToStr(yearof(date)) ;
end;

end.
