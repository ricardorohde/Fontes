unit uDetalheNotaSaidaDuplicata;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, Data.DB,
  JvDataSource, MemDS, DBAccess, Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxCurrencyEdit, cxDBEdit, cxDropDownEdit, cxCalendar, cxMaskEdit,
  cxSpinEdit, cxTextEdit, Vcl.StdCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue;

type
  TfrmDetalheNotaSaidaDuplicata = class(TfrmModeloCadastroSimples)
    qrCadastroid_nota_saida: TIntegerField;
    qrCadastroid_empresa: TIntegerField;
    qrCadastroitem: TIntegerField;
    qrCadastronumero_duplicata: TWideStringField;
    qrCadastrodata_vencimento: TDateField;
    qrCadastroid_situacao: TIntegerField;
    qrCadastrovalor: TFloatField;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label4: TLabel;
    edValor: TcxDBCurrencyEdit;
    procedure qrCadastroBeforePost(DataSet: TDataSet);
    constructor Create(sender: TComponent; id_nota: Integer; id_tabela: Integer = 0); Reintroduce;
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheNotaSaidaDuplicata: TfrmDetalheNotaSaidaDuplicata;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB;

procedure TfrmDetalheNotaSaidaDuplicata.btCancelarClick(Sender: TObject);
begin
  inherited;
  self.close;
end;

procedure TfrmDetalheNotaSaidaDuplicata.btSalvarClick(Sender: TObject);
begin
  inherited;
  self.close;
end;

constructor TfrmDetalheNotaSaidaDuplicata.Create(sender: TComponent; id_nota: Integer; id_tabela: Integer = 0);
begin
  inherited Create(sender, 'item', 'id_situacao', id_tabela,  false, false, false,  'id_nota_saida' , id_nota );

  if id_tabela>0 then qrCadastro.Edit;

end;


procedure TfrmDetalheNotaSaidaDuplicata.qrCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrCadastro.FieldByName('valor').AsFloat <=0 then
  begin
    Application.MessageBox('Valor inválido', 'Atenção', MB_ICONINFORMATION);
    edValor.setfocus;
    abort;
  end;
end;

procedure TfrmDetalheNotaSaidaDuplicata.qrCadastroNewRecord(DataSet: TDataSet);
var str_sql : string;
    valor : double;
begin
  inherited;
  qrCadastro.FieldByName('id_nota_saida').AsInteger := qrCadastro.ParamByName('id_nota_saida').AsInteger;
  qrCadastro.FieldByName('id_empresa').AsInteger := recproj.iEmp;
  qrCadastro.FieldByName('item').AsInteger := NovoId('nota_saida_duplicata', 'item', recproj.iEmp , 'id_empresa', 'id_nota_saida='+qrCadastro.ParamByName('id_nota_saida').asstring);
  qrCadastro.FieldByName('id_situacao').AsInteger := 4;
   qrCadastro.FieldByName('data_vencimento').Asdatetime := Date;

  str_sql := format(' select ns.valor_total - coalesce(sub.valor, 0.0) as restante '+
             ' from nota_saida ns left join (select sum(valor) as valor, id_nota_saida '+
             ' from nota_saida_duplicata where id_nota_saida=%d group by id_nota_saida )'+
             ' sub on ns.id_nota_saida=sub.id_nota_saida '+
             ' where ns.id_nota_saida=%d ', [qrCadastro.ParamByName('id_nota_saida').AsInteger,
                                             qrCadastro.ParamByName('id_nota_saida').AsInteger]);
  BuscaCampo(valor, str_sql, 'restante', false);
  qrCadastro.FieldByName('valor').Asfloat := valor;

end;

end.
