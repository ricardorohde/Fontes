unit uControleMesaPagamentoAntecipadoNovo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  AdvGlowButton, Vcl.ExtCtrls, AdvOfficeButtons, Vcl.ComCtrls, Vcl.StdCtrls,
  JvExStdCtrls, JvEdit, JvValidateEdit, AdvGroupBox, AdvPanel, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Mask, Vcl.DBCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc,
  cxDBEdit, frxClass, frxDBSet, cxCurrencyEdit, AdvSmoothTouchKeyBoard,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfrmControleMesaPagamentoAntecipadoNovo = class(TForm)
    AdvPanel1: TAdvPanel;
    lbMesa: TLabel;
    pnTopo: TPanel;
    lbTipoMovimentoCaixa: TLabel;
    AdvGroupBox3: TAdvGroupBox;
    pnBotoes: TFlowPanel;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    qrListaFormapgto: TUniQuery;
    qrListaFormapgtofor_001: TIntegerField;
    qrListaFormapgtofor_002: TWideStringField;
    qrListaFormapgtoemp_001: TIntegerField;
    qrVendaPagAntecipado: TUniQuery;
    qrVendaPagAntecipadoid_venda_pag_antecipado: TIntegerField;
    qrVendaPagAntecipadoid_venda: TIntegerField;
    qrVendaPagAntecipadoid_empresa: TIntegerField;
    qrVendaPagAntecipadoid_formapgto: TIntegerField;
    qrVendaPagAntecipadovalor: TFloatField;
    dsVendaPagAntecipado: TDataSource;
    cbFormaPgto: TDBLookupComboBox;
    dsListaFormapgto: TDataSource;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    UniQuery1: TUniQuery;
    qrVendaPagAntecipadoobservacao: TWideStringField;
    RepPagAntecipado: TfrxReport;
    grTecladoNumerico: TAdvGroupBox;
    kbTecladoNumerico: TAdvSmoothTouchKeyBoard;
    edValor: TcxDBCurrencyEdit;
    qrVendaPagAntecipadoid_caixa: TIntegerField;
    qrVendaPagAntecipadoid_caixaitem: TIntegerField;
    qrVendaPagAntecipadoid_usuario: TIntegerField;
    procedure qrListaFormapgtoBeforeOpen(DataSet: TDataSet);
    constructor Create(sender : tcomponent ; id_venda, id_usuario : integer ; valor_maximo : double ; modo_touch : boolean = false);
    procedure btConfirmaClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure qrVendaPagAntecipadovalorValidate(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    venda, id_usuario : integer;
    sCamImpCaixa : string;
    modo_touch : boolean;
    valor_maximo : double ;
  public
    { Public declarations }
  end;

var
  frmControleMesaPagamentoAntecipadoNovo: TfrmControleMesaPagamentoAntecipadoNovo;

implementation

{$R *.dfm}

uses uMenu, uFuncoes, Funcao_DB, uControleMesa, uControleMesaRelatorios;
procedure TfrmControleMesaPagamentoAntecipadoNovo.btCancelaClick(Sender: TObject);
begin
  qrVendaPagAntecipado.Cancel;
  tag:=0;
  close;
end;

procedure TfrmControleMesaPagamentoAntecipadoNovo.btConfirmaClick(Sender: TObject);
var str_sql : string;
    item : integer;
begin
  if qrVendaPagAntecipado.State = dsInsert then
  begin
    //valida os valores
    if qrVendaPagAntecipado.FieldByName('valor').AsFloat<=0 then
    begin
      Application.MessageBox('Valor inválido!', 'Atenção', MB_ICONINFORMATION);
      edValor.SetFocus;
      abort;
    end;

    if qrVendaPagAntecipado.FieldByName('valor').AsFloat>valor_maximo then
    begin
      Application.MessageBox('Não é possível fazer esse pagamento pois ele é superior ao valor da venda!', 'Atenção', MB_ICONINFORMATION);
      edValor.SetFocus;
      abort;
    end;

    if qrVendaPagAntecipado.FieldByName('id_formapgto').IsNull then
    begin
      Application.MessageBox('Selecione uma forma de pagamento!', 'Atenção', MB_ICONINFORMATION);
      cbFormaPgto.SetFocus;
      abort;
    end;

    InserirCaixaItem(RecProj.iIDCaixa,
          qrVendaPagAntecipado.FieldByName('id_formapgto').AsInteger,
          qrVendaPagAntecipado.FieldByName('valor').AsFloat, 'E',
          'Pagamento antecipado '+ lbMesa.Caption + qrVendaPagAntecipado.FieldByName('observacao').AsString, venda,0,0,true);
    str_sql := format('select max(item) from caixaitem where id_caixa=%d and id_empresa=%d ',[recproj.iIDCaixa, recproj.iEmp]);
    BuscaCampo(item, str_sql, '', false);

    qrVendaPagAntecipado.FieldByName('id_caixa').asinteger := recproj.iIDCaixa;
    qrVendaPagAntecipado.FieldByName('id_caixaitem').asinteger := item;
    qrVendaPagAntecipado.Post;
    if Application.MessageBox('Deseja imprimir o recibo do pagamento?', 'Atenção', MB_ICONQUESTION+ MB_YESNO)=mryes then
    begin
      frmControleMesaRelatorios.qrVendaMesaRep.Close;
      frmControleMesaRelatorios.qrVendaMesaRep.ParamByName('id_venda').AsInteger := venda;
      frmControleMesaRelatorios.qrVendaMesaRep.ParamByName('emp').AsInteger := recproj.iEmp;
      frmControleMesaRelatorios.qrVendaMesaRep.ParamByName('flag_couvert_mesa').AsBoolean := false;
      frmControleMesaRelatorios.qrVendaMesaRep.ParamByName('valor_couvert_masc').AsFloat := 0;
      frmControleMesaRelatorios.qrVendaMesaRep.ParamByName('valor_couvert_fem').AsFloat := 0;
      frmControleMesaRelatorios.qrVendaMesaRep.open;

      RepPagAntecipado.PrintOptions.Printer := sCamImpCaixa;
      RepPagAntecipado.Variables['sFormaPag'] := QuotedStr(cbFormaPgto.Text);
      RepPagAntecipado.Variables['sValor'] := QuotedStr('R$: ' + FormatFloat(',0.00', qrVendaPagAntecipado.FieldByName('valor').AsFloat) );
      RepPagAntecipado.PrepareReport;
      RepPagAntecipado.ShowReport;
    end;

    close;
  end;
end;

constructor TfrmControleMesaPagamentoAntecipadoNovo.Create(sender: TComponent;
      id_venda, id_usuario: Integer ; valor_maximo : double ; modo_touch : boolean = false);
var str_sql : string;
begin
  inherited Create(sender);
  self.modo_touch := modo_touch;
  self.valor_maximo := valor_maximo;
  self.id_usuario := id_usuario;
  venda:=id_venda;
  str_sql := ' select cast( '+
             ' case when v.ven_024=''M'' then m.mes_002 '+
             '     when v.ven_024=''C'' then concat(''COMANDA'', '' '', v.ven_026) '+
             '     else ''VENDA'' end as varchar(100)) '+
             ' from venda v '+
             ' left join mesa m on (m.emp_001 = v.emp_001) and (m.mes_001 = v.ven_025) '+
             ' where v.emp_001 =' + IntToStr(RecProj.iEmp) + ' and v.ven_001=' + IntToStr(venda);
  ExecutaConsultaSQL(UniQuery1, str_sql);
  lbMesa.Caption:=  UniQuery1.Fields[0].AsString;

  qrListaFormapgto.Open;
  qrVendaPagAntecipado.open;
  qrVendaPagAntecipado.Append;
  qrVendaPagAntecipado.FieldByName('id_venda').AsInteger:= venda;
  qrVendaPagAntecipado.FieldByName('id_empresa').AsInteger:= RecProj.iEmp;
  qrVendaPagAntecipado.FieldByName('valor').AsInteger:=0;
  qrVendaPagAntecipado.FieldByName('id_usuario').AsInteger:= id_usuario;

  sCamImpCaixa:= LerStringConfig('CAMIMPCAIXA',frmMenu.cdsCFG.FileName);

  if modo_touch then
  begin
    self.Width := 545;
    grTecladoNumerico.Visible := true;
  end
  else
  begin
    self.Width := self.Constraints.MinWidth;
  end;
end;

procedure TfrmControleMesaPagamentoAntecipadoNovo.edValorKeyPress(
  Sender: TObject; var Key: Char);
begin
if key in ['-']  then key:=#0
end;

procedure TfrmControleMesaPagamentoAntecipadoNovo.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=vk_return then Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmControleMesaPagamentoAntecipadoNovo.FormShow(Sender: TObject);
begin
  //pega a primeira forma de pagamento
  qrListaFormapgto.First;
  qrVendaPagAntecipado.FieldByName('id_formapgto').AsInteger:=
                              qrListaFormapgto.FieldByName('for_001').AsInteger;


  edValor.SetFocus;
end;

procedure TfrmControleMesaPagamentoAntecipadoNovo.qrListaFormapgtoBeforeOpen(
  DataSet: TDataSet);
begin
  qrListaFormapgto.ParamByName('emp').AsInteger := RecProj.iEmp;
end;

procedure TfrmControleMesaPagamentoAntecipadoNovo.qrVendaPagAntecipadovalorValidate(
  Sender: TField);
begin
  if qrVendaPagAntecipadovalor.IsNull then
    qrVendaPagAntecipadovalor.Value:=0;
  if qrVendaPagAntecipadovalor.AsFloat <0 then
    qrVendaPagAntecipadovalor.AsFloat:=  qrVendaPagAntecipadovalor.AsFloat *-1;
end;

end.
