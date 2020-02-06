unit uDetalheNotaSaidaPagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, JvDataSource,
  Data.DB, MemDS, DBAccess, Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, Vcl.DBCtrls, cxCurrencyEdit,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, dxSkinBlack,
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
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfrmDetalheNotaSaidaPagamentos = class(TfrmModeloCadastroSimples)
    Label2: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label4: TLabel;
    edValor: TcxDBCurrencyEdit;
    cbForma: TDBLookupComboBox;
    qrCadastroid_nota_saida: TIntegerField;
    qrCadastroid_empresa: TIntegerField;
    qrCadastroitem: TIntegerField;
    qrCadastroid_forma: TIntegerField;
    qrCadastrovalor: TFloatField;
    qrListaFormapgto1: TUniQuery;
    qrListaFormapgto1for_001: TIntegerField;
    qrListaFormapgto1for_002: TWideStringField;
    qrListaFormapgto1cnpjcred: TWideStringField;
    qrListaFormapgto1bandeira_cartao: TWideStringField;
    qrListaFormapgto1sfi_codigo: TIntegerField;
    dsListaFormapgto1: TDataSource;
    Label1: TLabel;
    lblAut: TLabel;
    edAut: TcxDBTextEdit;
    qrCadastroautorizacao: TWideStringField;
    qrListaFormapgto1tipo_integracao: TIntegerField;
  procedure qrCadastroBeforePost(DataSet: TDataSet);
    constructor Create(sender: TComponent; id_nota: Integer; id_tabela: Integer = 0); Reintroduce;
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure cbFormaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheNotaSaidaPagamentos: TfrmDetalheNotaSaidaPagamentos;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB;

procedure TfrmDetalheNotaSaidaPagamentos.btCancelarClick(Sender: TObject);
begin
  inherited;
  self.close;
end;

procedure TfrmDetalheNotaSaidaPagamentos.btSalvarClick(Sender: TObject);
begin
  if edAut.Visible = False then
    qrcadastro.FieldByName('autorizacao').AsString:= '';

  if (qrListaFormapgto1tipo_integracao.AsInteger = 1) and ((qrListaFormapgto1sfi_codigo.AsInteger = 3) or (qrListaFormapgto1sfi_codigo.AsInteger = 4)) then
  begin
    if edAut.Text = EmptyStr then
    begin
      Application.MessageBox('Informe a Autorização de Operação!', 'Atenção', mb_iconinformation);
      edAut.SetFocus;
      Abort;
    end;

    if qrListaFormapgto1cnpjcred.AsString = '' then
    begin
      Application.MessageBox('CNPJ Credenciadora Cartão não cadastrado.' + #13 +
                             'Verifique o cadastro da forma de pagamento!', 'Atenção', mb_iconinformation);
      Abort;
    end;
  end;

  inherited;

  self.close;
end;

procedure TfrmDetalheNotaSaidaPagamentos.cbFormaClick(Sender: TObject);
begin
  inherited;
  if (qrListaFormapgto1tipo_integracao.AsInteger = 1) and ((qrListaFormapgto1sfi_codigo.AsInteger = 3) or (qrListaFormapgto1sfi_codigo.AsInteger = 4)) then //Cartões
  begin
    lblAut.Visible:= True;
    edAut.Visible:= True;
  end
  else
  begin
    lblAut.Visible:= False;
    edAut.Visible:= False;
  end;
end;

constructor TfrmDetalheNotaSaidaPagamentos.Create(sender: TComponent; id_nota: Integer; id_tabela: Integer = 0);
begin
  inherited Create(sender, 'item', '', id_tabela,  false, false, false,  'id_nota_saida' , id_nota );

  qrListaFormapgto1.close;
  qrListaFormapgto1.ParamByName('emp').AsInteger := RecProj.iEmp;
  qrListaFormapgto1.open;

  if id_tabela>0 then qrCadastro.Edit;
end;

procedure TfrmDetalheNotaSaidaPagamentos.edValorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key in ['-']  then key:=#0;
end;

procedure TfrmDetalheNotaSaidaPagamentos.FormShow(Sender: TObject);
begin
  inherited;
  if (qrListaFormapgto1tipo_integracao.AsInteger = 1) and ((qrListaFormapgto1sfi_codigo.AsInteger = 3) or (qrListaFormapgto1sfi_codigo.AsInteger = 4)) then //Cartões
  begin
    lblAut.Visible:= True;
    edAut.Visible:= True;
  end
  else
  begin
    lblAut.Visible:= False;
    edAut.Visible:= False;
  end;
end;

procedure TfrmDetalheNotaSaidaPagamentos.qrCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrCadastro.FieldByName('valor').AsFloat <=0 then
  begin
    Application.MessageBox('Valor inválido!', 'Atenção', MB_ICONINFORMATION);
    edValor.setfocus;
    abort;
  end;
end;

procedure TfrmDetalheNotaSaidaPagamentos.qrCadastroNewRecord(DataSet: TDataSet);
var str_sql : string;
    valor : double;
begin
  inherited;
  qrCadastro.FieldByName('id_nota_saida').AsInteger := qrCadastro.ParamByName('id_nota_saida').AsInteger;
  qrCadastro.FieldByName('id_empresa').AsInteger := recproj.iEmp;
  qrCadastro.FieldByName('item').AsInteger := NovoId('nota_saida_pagamentos', 'item', recproj.iEmp , 'id_empresa', 'id_nota_saida='+qrCadastro.ParamByName('id_nota_saida').asstring);

  str_sql := format('select ns.valor_total - coalesce(sub.valor, 0.0) as restante '+
             ' from nota_saida ns left join (select sum(valor) as valor, id_nota_saida '+
             ' from nota_saida_pagamentos where id_nota_saida=%d group by id_nota_saida )'+
             ' sub on ns.id_nota_saida=sub.id_nota_saida '+
             ' where ns.id_nota_saida=%d ', [qrCadastro.ParamByName('id_nota_saida').AsInteger,
                                             qrCadastro.ParamByName('id_nota_saida').AsInteger]);
  BuscaCampo(valor, str_sql, 'restante', false);
  qrCadastro.FieldByName('valor').Asfloat := valor;
end;

end.
