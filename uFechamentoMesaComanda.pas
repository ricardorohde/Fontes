unit uFechamentoMesaComanda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.StdCtrls,
  JvExStdCtrls, JvHtControls, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Mask, Vcl.DBCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, cxRadioGroup,
  AdvGroupBox, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, JvEdit, JvValidateEdit, JvDataSource, dxGDIPlusClasses;

type
  TfrmFechamentoMesaComanda = class(TForm)
    btImprimir: TAdvGlowButton;
    btFechar: TAdvGlowButton;
    qrVenda: TUniQuery;
    dsVenda: TDataSource;
    qrVendaid_mesa: TIntegerField;
    qrVendanro_mesa: TIntegerField;
    qrVendadescricao_mesa: TWideStringField;
    qrVendavalor_venda: TFloatField;
    qrVendanro_pessoas: TIntegerField;
    qrVendanro_couvert_m: TIntegerField;
    qrVendanro_couvert_f: TIntegerField;
    qrVendacpf_cliente: TWideStringField;
    qrVendaven_001: TIntegerField;
    qrVendaemp_001: TIntegerField;
    qrVendaid_venda: TIntegerField;
    rgTipoVenda: TcxRadioGroup;
    edMesaComanda: TJvValidateEdit;
    DBEdit1: TJvValidateEdit;
    jvVenda: TJvDataSource;
    Image1: TImage;
    AdvGroupBox1: TAdvGroupBox;
    Label3: TLabel;
    Label2: TLabel;
    dbeditCouvertf: TJvValidateEdit;
    dbeditCouvertm: TJvValidateEdit;
    JvHTLabel1: TJvHTLabel;
    procedure qrVendaAfterOpen(DataSet: TDataSet);
    procedure btFecharClick(Sender: TObject);
    procedure qrVendanro_mesaValidate(Sender: TField);
    procedure btImprimirClick(Sender: TObject);
    constructor Create(sender : tcomponent ; nro_mesa : integer ; tipo_venda : string );
    procedure edMesaComandaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qrVendanro_pessoasValidate(Sender: TField);
    procedure qrVendaBeforePost(DataSet: TDataSet);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Click(Sender: TObject);
    procedure qrVendanro_couvert_fChange(Sender: TField);
    procedure dbeditCouvertmKeyPress(Sender: TObject; var Key: Char);
    procedure qrVendanro_couvert_mChange(Sender: TField);
    procedure dbeditCouvertfKeyPress(Sender: TObject; var Key: Char);
    procedure edMesaComandaEnter(Sender: TObject);
    procedure dbeditCouvertfExit(Sender: TObject);
    procedure btImprimirExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    venda_retorno : integer;
  end;

var
  frmFechamentoMesaComanda: TfrmFechamentoMesaComanda;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB;

constructor TfrmFechamentoMesaComanda.Create(sender: TComponent; nro_mesa: Integer ; tipo_venda : string);
begin
  inherited Create(sender);


  if tipo_venda='M' then
    rgTipoVenda.ItemIndex:=0
  else
    rgTipoVenda.ItemIndex:=1;

  edMesaComanda.value := IntToStr(nro_mesa);
  edMesaComandaExit(self);
  edMesaComanda.SelectAll;
end;

procedure TfrmFechamentoMesaComanda.DBEdit1Click(Sender: TObject);
begin
    DBEdit1.SelectAll;
end;

procedure TfrmFechamentoMesaComanda.DBEdit1Enter(Sender: TObject);
begin
  DBEdit1.SelectAll;
end;

procedure TfrmFechamentoMesaComanda.dbeditCouvertfExit(Sender: TObject);
begin
  btImprimir.SetFocus;
end;

procedure TfrmFechamentoMesaComanda.dbeditCouvertfKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key  in ['0','1','2','3','4','5','6','7','8','9',#8,#9,#13,#127] )then
  abort;
end;

procedure TfrmFechamentoMesaComanda.dbeditCouvertmKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key  in ['0','1','2','3','4','5','6','7','8','9',#8,#9,#13,#127] )then
  abort;
end;

procedure TfrmFechamentoMesaComanda.btFecharClick(Sender: TObject);
begin
  tag:=0;
  venda_retorno:=0;
  close;
end;

procedure TfrmFechamentoMesaComanda.btImprimirClick(Sender: TObject);
var qtd_itens : integer;
begin
  if qrVenda.Active then
  begin
    if qrVenda.RecordCount>0 then
    begin
      qtd_itens := 0 ;
      BuscaCampo(qtd_itens,
                 format('select count(1) from  vendaitem where ven_001=%d and emp_001=%d and sit_001 not in (0,1,2,3) and ite_005> 0.01',
                 [qrVenda.FieldByName('id_venda').AsInteger, recproj.iEmp]), '', false);
      if qtd_itens<1 then
      begin
        Application.MessageBox('Esta venda não possui itens!', 'Atenção', MB_ICONINFORMATION);
        venda_retorno:=0;
      end
      else
        begin
        venda_retorno:= qrVenda.FieldByName('id_venda').AsInteger;
        if qrVenda.State = dsEdit then  qrVenda.Post;
        close;
      end;
    end
    else
    begin
      Application.MessageBox('Mesa/Venda não encontrada!', 'Atenção', MB_ICONINFORMATION);
      venda_retorno:=0;
    end;
  end
  else
  begin
    Application.MessageBox('Mesa/Venda não encontrada!', 'Atenção', MB_ICONINFORMATION);
    venda_retorno:=0;
  end;
end;

procedure TfrmFechamentoMesaComanda.btImprimirExit(Sender: TObject);
begin
  edmesacomanda.SetFocus;
end;

procedure TfrmFechamentoMesaComanda.edMesaComandaEnter(Sender: TObject);
begin
  if qrVenda.State=dsedit then
   qrVenda.Post ;

end;

procedure TfrmFechamentoMesaComanda.edMesaComandaExit(Sender: TObject);
begin
  if edMesaComanda.Text<>'' then
  begin
    qrVenda.Close;
    if rgTipoVenda.ItemIndex =0 then
    begin
      qrVenda.ParamByName('nro_mesa').AsInteger := StrToInt(edMesaComanda.Text);
      qrVenda.ParamByName('comanda').AsInteger := 0;
    end
    else
    begin
      qrVenda.ParamByName('nro_mesa').AsInteger := 0;
      qrVenda.ParamByName('comanda').AsInteger := StrToInt(edMesaComanda.Text);
    end;
    qrVenda.ParamByName('emp').AsInteger := RecProj.iEmp;
    qrVenda.Open;

    if qrVenda.RecordCount<=0 then
    begin
      Application.MessageBox('Mesa/Venda não encontrada!', 'Atenção', MB_ICONINFORMATION);
      venda_retorno:=0;
      close;
    end;


  end;
end;

procedure TfrmFechamentoMesaComanda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmFechamentoMesaComanda.FormShow(Sender: TObject);
begin
  edMesaComanda.SetFocus;
end;

procedure TfrmFechamentoMesaComanda.qrVendaAfterOpen(DataSet: TDataSet);
begin
  if qrVenda.RecordCount>0 then
  begin
    DBEdit1.Enabled:=true;
    DBEdit1.selectall;
    qrVenda.Edit;
  end;
end;

procedure TfrmFechamentoMesaComanda.qrVendaBeforePost(DataSet: TDataSet);
begin
  qrVendanro_pessoasValidate(nil);
end;

procedure TfrmFechamentoMesaComanda.qrVendanro_couvert_fChange(Sender: TField);
begin
  if qrvenda.FieldByName('nro_couvert_f').AsFloat <0 then
  begin
     Application.MessageBox('Número inválido para couvert masculino, por favor informe um número válido!', 'Atenção', MB_ICONINFORMATION);
     qrVenda.FieldByName('nro_couvert_f').AsFloat:=0;
     dbeditCouvertf.SetFocus;
     abort;

  end;
end;

procedure TfrmFechamentoMesaComanda.qrVendanro_couvert_mChange(Sender: TField);
begin
 if qrvenda.FieldByName('nro_couvert_m').AsFloat <0 then
  begin
     Application.MessageBox('Número inválido para couvert masculino, por favor informe um número válido!', 'Atenção', MB_ICONINFORMATION);
     qrVenda.FieldByName('nro_couvert_m').AsFloat:=0;
     dbeditCouvertm.SetFocus;
     abort;
  end;


end;

procedure TfrmFechamentoMesaComanda.qrVendanro_mesaValidate(Sender: TField);
begin
  if qrVendanro_mesa.IsNull then
    qrVendanro_mesa.Value:=0
  else
  begin
    if qrVendanro_mesa.Value<=0 then
      qrVendanro_mesa.Value:=1;
  end;
end;

procedure TfrmFechamentoMesaComanda.qrVendanro_pessoasValidate(Sender: TField);
begin
  if  qrVendanro_pessoas.IsNull then qrVendanro_pessoas.AsInteger:=1;
  if  qrVendanro_pessoas.AsInteger<=0 then qrVendanro_pessoas.AsInteger:=1;
end;

end.
