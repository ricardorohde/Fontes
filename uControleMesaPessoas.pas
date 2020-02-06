unit uControleMesaPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, Uni,
  AdvGroupBox, AdvPanel, AdvGlowButton, Vcl.DBActns, System.Actions,
  Vcl.ActnList, cxButtonEdit, dxSkinsCore, dxSkinsDefaultPainters, dxSkinBlack,
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
  TfrmControleMesaPessoas = class(TForm)
    qrVenda: TUniQuery;
    qrVendanro_pessoas: TIntegerField;
    qrVendanro_couvert_m: TIntegerField;
    qrVendanro_couvert_f: TIntegerField;
    qrVendacpf_cliente: TWideStringField;
    dsVenda: TDataSource;
    qrVendaven_001: TIntegerField;
    qrVendaemp_001: TIntegerField;
    pnBotoes: TFlowPanel;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    AdvPanel1: TAdvPanel;
    AdvGroupBox3: TAdvGroupBox;
    AdvGroupBox1: TAdvGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    edQtdePessoas: TcxDBSpinEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBSpinEdit3: TcxDBSpinEdit;
    qrVendacli_001: TIntegerField;
    edCodCliente: TcxDBButtonEdit;
    ActionList1: TActionList;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetRefresh1: TDataSetRefresh;
    act_confirmar: TAction;
    act_cancelar: TAction;
    acBuscaCliente: TAction;
    lbCliente: TLabel;
    procedure btConfirmaClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    constructor Create (sender : TComponent ; id_venda, id_empresa : integer);
    procedure FormShow(Sender: TObject);
    procedure qrVendacli_001Change(Sender: TField);
    procedure acBuscaClienteExecute(Sender: TObject);
  private
    { Private declarations }
    aviso : boolean;
  public
    { Public declarations }
  end;

var
  frmControleMesaPessoas: TfrmControleMesaPessoas;

implementation

{$R *.dfm}

uses uMenu, uFuncoes, Funcao_DB, uBuscaRegistro;

constructor TfrmControleMesaPessoas.Create(sender: TComponent; id_venda: Integer; id_empresa: Integer);
begin
  inherited Create(sender);
  qrVenda.ParamByName('id_venda').AsInteger:=id_venda;
  qrVenda.ParamByName('emp').AsInteger:=id_empresa;
  qrVenda.Open;
  qrVenda.Edit;
  aviso:=false;
  qrVendacli_001Change(nil);
  aviso :=true;
end;

procedure TfrmControleMesaPessoas.FormShow(Sender: TObject);
begin
  edQtdePessoas.SetFocus;
end;

procedure TfrmControleMesaPessoas.qrVendacli_001Change(Sender: TField);
var str_sql , cpf: string;
    cod_cliente : integer;
begin
  if not qrVenda.FieldByName('cli_001').isnull then
  begin
    str_sql := 'select cli_002 from clientes where cli_001=%d and emp_001='+inttostr(recproj.iEmp);
    cod_cliente := qrVenda.FieldByName('cli_001').asinteger;
    edCodCliente.Text := qrVenda.FieldByName('cli_001').asstring;
    LookupBuscaExit(cod_cliente,TcxButtonEdit(edCodCliente), lbCliente, str_sql, 'Cliente', aviso);
    if cod_cliente<1 then
    begin
      qrVenda.FieldByName('cli_001').value:=null;
    end
    else
    begin
      str_sql := format('select cli_004 from clientes where cli_001=%d and emp_001=%d', [cod_cliente, recproj.Iemp]);
      buscacampo(cpf, str_sql ,'CPF', false);
      if qrVenda.FieldByName('cpf_cliente').AsString = '' then
         qrVenda.FieldByName('cpf_cliente').AsString := cpf;

    end;
  end
  else
    lbCliente.Caption :='';
end;

procedure TfrmControleMesaPessoas.acBuscaClienteExecute(Sender: TObject);
var str_sql : string;
begin
  edCodCliente.SetFocus;

  str_sql:= ' select cli_001, cli_002, cli_012, cli_013, fn_situacoes(sit_001) from clientes ';

   frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
      str_sql,
      CriaIntegerArray([0,1,2,3,4]) ,
      CriaStringArray(['Código', 'Cliente', 'Telefone 1','Telefone 2', 'Status' ]),
      0, 1, ' sit_001=4 and emp_001='+IntToStr(RecProj.iEmp), 800, 500);
   frmBuscaRegistro.ShowModal;
   if frmBuscaRegistro.Tag=1 then
     qrVenda.FieldByName('cli_001').value := frmBuscaRegistro.valor_retorno;
   frmBuscaRegistro.Free;
end;

procedure TfrmControleMesaPessoas.btCancelaClick(Sender: TObject);
begin
  if qrVenda.State = dsEdit then qrVenda.Cancel;
  close;
end;

procedure TfrmControleMesaPessoas.btConfirmaClick(Sender: TObject);
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if edQtdePessoas.Value > 99 then
  begin
    Application.MessageBox('Número máximo de pessoas é 99!', 'Atenção', MB_ICONINFORMATION);
    edQtdePessoas.Value:= 99;
    Abort;
  end;

  if qrVenda.State = dsEdit then qrVenda.Post;
    close;
end;

end.
