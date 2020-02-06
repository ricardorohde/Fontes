unit uImportarcomanda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.StdCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxGDIPlusClasses, Vcl.ExtCtrls,
  AdvPanel, AdvGlowButton, MemDS, DBAccess, Uni, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmImportarcomanda = class(TfrmModelo)
    edComanda: TEdit;
    Image2: TImage;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Label4: TLabel;
    Label1: TLabel;
    lbTotalProdutos: TLabel;
    Label3: TLabel;
    lbTotalServicos: TLabel;
    Label2: TLabel;
    lbTotalDescontos: TLabel;
    Label5: TLabel;
    lbTotalVenda: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    qrConsultacomanda: TUniQuery;
    dsConsultacomanda: TDataSource;
    qrConsultacomandaid_empresa: TIntegerField;
    qrConsultacomandaid_venda: TIntegerField;
    qrConsultacomandavalor_venda: TFloatField;
    qrConsultacomandatipo_venda: TWideStringField;
    qrConsultacomandanumero_comanda: TIntegerField;
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
    cxGrid1DBTableView1numero_comanda: TcxGridDBColumn;
    cxGrid1DBTableView1quantidade: TcxGridDBColumn;
    cxGrid1DBTableView1valor_unitario: TcxGridDBColumn;
    cxGrid1DBTableView1nome_garcom: TcxGridDBColumn;
    cxGrid1DBTableView1descricao_produto: TcxGridDBColumn;
    cxGrid1DBTableView1acrescimo: TcxGridDBColumn;
    cxGrid1DBTableView1desconto: TcxGridDBColumn;
    cxGrid1DBTableView1valor_total: TcxGridDBColumn;
    Image1: TImage;
    AdvGlowButton2: TAdvGlowButton;
    qrConsultacomandacli_001: TIntegerField;
    qrConsultacomandausu_001_1: TIntegerField;
    qrConsultacomandacat_001: TIntegerField;
    qrConsultacomandasit_001: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure Limpavenda;
    constructor Create(Sender: TComponent); reintroduce;
    procedure edComandaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);

  private
    valor_total, valor_desconto, valor_acrescimo: double;
  public
    id_comanda_retorno, numero_comanda: integer;
  end;

var
  frmImportarcomanda: TfrmImportarcomanda;

implementation

{$R *.dfm}

uses uMenu, uPDV, uFuncoes, Funcao_DB;

procedure TfrmImportarcomanda.edComandaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
  begin
    if trim(edComanda.Text) = '' then
      exit;
    qrConsultacomanda.Close;
    qrConsultacomanda.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
    qrConsultacomanda.ParamByName('numero_comanda').AsInteger :=
      strtoint(edComanda.Text);
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
      id_comanda_retorno := qrConsultacomanda.FieldByName('id_venda').AsInteger;
      numero_comanda := qrConsultacomanda.FieldByName('numero_comanda').AsInteger;
      qrConsultacomanda.FieldByName('sit_001').AsInteger := 0;
      self.Tag := 1;
      qrConsultacomanda.Close;
      Close;
    end
    else
    begin
      Application.MessageBox
        ('ESSA COMANDA NÃO CONTEM VENDAS, POR FAVOR INFORME UMA COMANDA VÁLIDA!',
        'ALERTA', +MB_ICONQUESTION + MB_OK);
      edComanda.Clear;
      edComanda.SetFocus;
      Limpavenda;
    end;

  end;
end;

procedure TfrmImportarcomanda.Limpavenda;
begin
  edComanda.Clear;
  lbTotalProdutos.Caption := 'R$ 0,00';
  lbTotalServicos.Caption := 'R$ 0,00';
  lbTotalDescontos.Caption := 'R$ 0,00';
  lbTotalVenda.Caption := 'R$ 0,00';
end;

procedure TfrmImportarcomanda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
    Perform(WM_NEXTDLGCTL, 0, 0)
end;

procedure TfrmImportarcomanda.FormShow(Sender: TObject);
begin
  edComanda.SetFocus;

end;

procedure TfrmImportarcomanda.AdvGlowButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmImportarcomanda.AdvGlowButton2Click(Sender: TObject);
begin
  inherited;
  if qrConsultacomanda.RecordCount > 0 then
  begin
    if Application.MessageBox
      ('DESEJA REALMENTE IMPORTAR A COMANDA PARA O PDV, APÓS IMPORTADA NÃO SERA POSSÍVEL DESFAZER ESSA AÇÃO',
      'ALERTA', +MB_ICONQUESTION + MB_YESNO) = mrOk then;
    begin
      qrConsultacomanda.edit;
      id_comanda_retorno := qrConsultacomanda.FieldByName('id_venda').AsInteger;
      numero_comanda := qrConsultacomanda.FieldByName('numero_comanda').AsInteger;
      qrConsultacomanda.FieldByName('sit_001').AsInteger := 0;
      self.Tag := 1;
      qrConsultacomanda.Close;
      Close;
    end;
    Close;
  end;
end;

constructor TfrmImportarcomanda.Create(Sender: TComponent);
begin
  inherited Create(Sender);
  // verifica se existe caixa aberto para o usuário atual
  frmmenu.VerificaCaixaAberto;
  // Abre a conexão
  qrConsultacomanda.Open;
end;

end.
