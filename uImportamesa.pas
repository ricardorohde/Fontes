unit uImportamesa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, AdvGlowButton, MemDS,
  DBAccess, Uni, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls, AdvPanel, System.Actions, Vcl.ActnList;

type
  TfrmImportamesa = class(TfrmModelo)
    edComanda: TEdit;
    Image1: TImage;
    Label4: TLabel;
    Image2: TImage;
    Label1: TLabel;
    lbTotalProdutos: TLabel;
    Label2: TLabel;
    lbTotalDescontos: TLabel;
    lbTotalVenda: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    lbTotalServicos: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1descricao_produto: TcxGridDBColumn;
    cxGrid1DBTableView1quantidade: TcxGridDBColumn;
    cxGrid1DBTableView1valor_unitario: TcxGridDBColumn;
    cxGrid1DBTableView1acrescimo: TcxGridDBColumn;
    cxGrid1DBTableView1desconto: TcxGridDBColumn;
    cxGrid1DBTableView1valor_total: TcxGridDBColumn;
    cxGrid1DBTableView1nome_garcom: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    qrConsultacomanda: TUniQuery;
    qrConsultacomandaid_empresa: TIntegerField;
    qrConsultacomandaid_venda: TIntegerField;
    qrConsultacomandavalor_venda: TFloatField;
    qrConsultacomandatipo_venda: TWideStringField;
    qrConsultacomandanumero_venda: TIntegerField;
    qrConsultacomandaid_material: TIntegerField;
    qrConsultacomandaid_vendaitem: TIntegerField;
    qrConsultacomandaquantidade: TFloatField;
    qrConsultacomandavalor_unitario: TFloatField;
    qrConsultacomandavalor_total: TFloatField;
    qrConsultacomandab_venda_tamanho: TBooleanField;
    qrConsultacomandatamanho: TWideStringField;
    qrConsultacomandaitem_fracionado: TIntegerField;
    qrConsultacomandadata_hora_lancamento: TDateTimeField;
    qrConsultacomandaid_garcom: TIntegerField;
    qrConsultacomandanome_garcom: TWideStringField;
    qrConsultacomandadescricao_produto: TWideStringField;
    qrConsultacomandaacrescimo: TFloatField;
    qrConsultacomandadesconto: TFloatField;
    qrConsultacomandacodigo_material: TWideStringField;
    qrConsultacomandab_70pc_valor_unit: TBooleanField;
    qrConsultacomandacli_001: TIntegerField;
    qrConsultacomandausu_001_1: TIntegerField;
    qrConsultacomandacat_001: TIntegerField;
    qrConsultacomandasit_001: TIntegerField;
    dsConsultacomanda: TDataSource;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    qrConsultacomandanumero_mesa: TIntegerField;
    cxGrid1DBTableView1numero_mesa: TcxGridDBColumn;
    ActionList1: TActionList;
    acImportarmesa: TAction;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure edComandaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
      procedure limpavenda;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure acImportarmesaExecute(Sender: TObject);
  private
    valor_total, valor_desconto, valor_acrescimo: double;
  public
  id_venda_mesa_retorno, numero_mesa:integer;
  end;

var
  frmImportamesa: TfrmImportamesa;

implementation

{$R *.dfm}

uses uMenu;

procedure TfrmImportamesa.acImportarmesaExecute(Sender: TObject);
begin
  if qrConsultacomanda.RecordCount > 0 then
    begin
    qrConsultacomanda.edit;
    id_venda_mesa_retorno := qrConsultacomanda.FieldByName('id_venda').AsInteger;// ID VENDA
    numero_mesa := qrConsultacomanda.FieldByName('numero_mesa').AsInteger;      // NUMERO MESA
    qrConsultacomanda.FieldByName('sit_001').AsInteger := 0;
    self.Tag := 1;
    qrConsultacomanda.Close;
    Close;
  end;
  Close;
end;


procedure TfrmImportamesa.AdvGlowButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmImportamesa.limpavenda;
begin
  edComanda.Clear;
  lbTotalProdutos.Caption := 'R$ 0,00';
  lbTotalServicos.Caption := 'R$ 0,00';
  lbTotalDescontos.Caption := 'R$ 0,00';
  lbTotalVenda.Caption := 'R$ 0,00';
end;


procedure TfrmImportamesa.edComandaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 inherited;
  if Key = VK_RETURN then
  begin
    if trim(edComanda.Text) = '' then
      exit;
    qrConsultacomanda.Close;
    qrConsultacomanda.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
    qrConsultacomanda.ParamByName('numero_mesa').AsInteger :=strtoint(edComanda.Text);
    qrConsultacomanda.Open;
    if qrConsultacomanda.RecordCount > 0 then
    begin
      valor_total := qrConsultacomanda.FieldByName('valor_venda').Value;
      valor_desconto := qrConsultacomanda.FieldByName('desconto').Value;
      valor_acrescimo := qrConsultacomanda.FieldByName('acrescimo').asfloat;
      lbTotalDescontos.Caption := format('R$ %.2f', [valor_desconto]);
      lbTotalProdutos.Caption := format('R$ %.2f', [valor_total]);
      lbTotalVenda.Caption := format('R$ %.2f', [valor_total]);
      qrConsultacomanda.edit;
      id_venda_mesa_retorno := qrConsultacomanda.FieldByName('id_venda').AsInteger;// ID VENDA
      numero_mesa := qrConsultacomanda.FieldByName('numero_mesa').AsInteger;      // NUMERO MESA
      qrConsultacomanda.FieldByName('sit_001').AsInteger := 0;
      self.Tag := 1;
      qrConsultacomanda.Close;
      Close;
    end
    else
    begin
      Application.MessageBox
        ('ESSA MESA NÃO CONTEM VENDAS, POR FAVOR INFORME UMA MESA VÁLIDA!',
        'ALERTA', +MB_ICONQUESTION + MB_OK);
      edComanda.Clear;
      edComanda.SetFocus;
      Limpavenda;
    end;
  end;
end;


procedure TfrmImportamesa.FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
  if key= vk_return then
  Perform(WM_NEXTDLGCTL,0,0)
end;

procedure TfrmImportamesa.FormShow(Sender: TObject);
begin
  edComanda.SetFocus;
end;

end.
