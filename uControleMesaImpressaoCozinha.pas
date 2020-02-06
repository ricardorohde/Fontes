unit uControleMesaImpressaoCozinha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  AdvGlowButton, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxImageComboBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  Datasnap.DBClient, Datasnap.Provider, MemDS, DBAccess, Uni, cxCheckBox,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack,
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
  TfrmControleMesaImpressaoCozinha = class(TfrmModelo)
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    qrVendaItem: TUniQuery;
    dspVendaItem: TDataSetProvider;
    cdsVendaItem: TClientDataSet;
    qrVendaItemid_empresa: TIntegerField;
    qrVendaItemid_venda: TIntegerField;
    qrVendaItemnro_item: TIntegerField;
    qrVendaItemqtdevenda: TFloatField;
    qrVendaItemdescricao_item: TWideStringField;
    qrVendaItemobservacao: TWideStringField;
    qrVendaItemordem_item: TLargeintField;
    qrVendaItemid_material: TIntegerField;
    qrVendaItemite_013: TIntegerField;
    qrVendaItemite_011: TWideStringField;
    qrVendaItemite_008: TWideStringField;
    qrVendaItemquantidade_impressao: TFloatField;
    cdsVendaItemid_empresa: TIntegerField;
    cdsVendaItemid_venda: TIntegerField;
    cdsVendaItemnro_item: TIntegerField;
    cdsVendaItemqtdevenda: TFloatField;
    cdsVendaItemdescricao_item: TWideStringField;
    cdsVendaItemobservacao: TWideStringField;
    cdsVendaItemordem_item: TLargeintField;
    cdsVendaItemid_material: TIntegerField;
    cdsVendaItemite_013: TIntegerField;
    cdsVendaItemite_011: TWideStringField;
    cdsVendaItemite_008: TWideStringField;
    cdsVendaItemquantidade_impressao: TFloatField;
    cdVendaItem: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1nro_item: TcxGridDBColumn;
    cxGrid1DBTableView1qtdevenda: TcxGridDBColumn;
    cxGrid1DBTableView1descricao_item: TcxGridDBColumn;
    cxGrid1DBTableView1observacao: TcxGridDBColumn;
    cxGrid1DBTableView1ordem_item: TcxGridDBColumn;
    cxGrid1DBTableView1ite_013: TcxGridDBColumn;
    cxGrid1DBTableView1ite_011: TcxGridDBColumn;
    cxGrid1DBTableView1ite_008: TcxGridDBColumn;
    cxGrid1DBTableView1quantidade_impressao: TcxGridDBColumn;
    qrVendaItemb_producao: TBooleanField;
    qrVendaItemb_entregue: TBooleanField;
    cdsVendaItemb_producao: TBooleanField;
    cdsVendaItemb_entregue: TBooleanField;
    procedure btCancelaClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure cdsVendaItemite_011Change(Sender: TField);
    constructor Create (sender : Tcomponent; id_venda : Integer; temporario : boolean ; DataSetItensTemp : TClientDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControleMesaImpressaoCozinha: TfrmControleMesaImpressaoCozinha;

implementation

{$R *.dfm}

uses uMenu;

constructor TfrmControleMesaImpressaoCozinha.Create (sender : Tcomponent; id_venda : Integer; temporario : boolean ; DataSetItensTemp : TClientDataSet);
var i : integer;
begin
  inherited Create(sender);
  cdsVendaItem.Close;
  qrVendaItem.close;
  if temporario then
  begin
    cdsVendaItem.ProviderName:='';
    cdsVendaItem.CreateDataSet;
    DataSetItensTemp.First;
    i:=1;
    while not DataSetItensTemp.eof do
    begin
      cdsVendaItem.append;
      cdsVendaItem.FieldByName('ordem_item').AsInteger := i;
      cdsVendaItem.FieldByName('descricao_item').asstring := DataSetItensTemp.FieldByName('descricao_item').AsString;
      cdsVendaItem.FieldByName('observacao').asstring := DataSetItensTemp.FieldByName('observacao').AsString;
      cdsVendaItem.FieldByName('qtdevenda').asfloat := DataSetItensTemp.FieldByName('qtdevenda').asfloat;
      cdsVendaItem.FieldByName('ite_013').asinteger := DataSetItensTemp.FieldByName('ite_013').asinteger;
      cdsVendaItem.FieldByName('nro_item').asinteger := DataSetItensTemp.FieldByName('nro_item').asinteger;
      cdsVendaItem.FieldByName('ite_011').asstring := DataSetItensTemp.FieldByName('ite_011').AsString;
      cdsVendaItem.FieldByName('ite_008').asstring := DataSetItensTemp.FieldByName('ite_008').AsString;

      if DataSetItensTemp.FieldByName('quantidade_impressao').asfloat <= 0 then
        cdsVendaItem.FieldByName('quantidade_impressao').asfloat := DataSetItensTemp.FieldByName('qtdevenda').asfloat
      else
        cdsVendaItem.FieldByName('quantidade_impressao').asfloat := DataSetItensTemp.FieldByName('quantidade_impressao').asfloat;

      cdsVendaItem.post;
      DataSetItensTemp.Next;
      i:= i+1;
    end;
  end
  else
  begin
    qrVendaItem.ParamByName('id_empresa').AsInteger := recproj.iEmp;
    qrVendaItem.ParamByName('id_venda').AsInteger := id_venda;
    cdsVendaItem.Open;
  end;

end;

procedure TfrmControleMesaImpressaoCozinha.btCancelaClick(Sender: TObject);
begin
  inherited;
  self.Tag := 0;
  self.close;
end;

procedure TfrmControleMesaImpressaoCozinha.btConfirmaClick(Sender: TObject);
begin
  inherited;
  self.Tag := 1;
  self.close;
end;

procedure TfrmControleMesaImpressaoCozinha.cdsVendaItemite_011Change(
  Sender: TField);
begin
  inherited;
  if cdsVendaItem.FieldByName('ite_011').AsString ='S' then
    cdsVendaItem.FieldByName('ite_008').AsString :='N';
end;

end.
