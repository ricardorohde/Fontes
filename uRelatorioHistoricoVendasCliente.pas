unit uRelatorioHistoricoVendasCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Data.DB, MemDS, DBAccess,
  Uni, Vcl.ExtCtrls, AdvPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxButtonEdit, Vcl.DBActns,
  System.Actions, Vcl.ActnList, AdvGlowButton, Vcl.ComCtrls, Vcl.StdCtrls,
  cxGroupBox, cxRadioGroup, AdvGroupBox, DateUtils, Vcl.DBCtrls, frxClass,
  frxDBSet, Vcl.Grids, Vcl.DBGrids;

type
  TfrmRelatorioHistoricoVendasCliente = class(TfrmModelo)
    qrVenda: TUniQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qrVendanro_venda: TIntegerField;
    qrVendanome_cliente: TWideStringField;
    qrVendatelefone1: TWideStringField;
    qrVendatelefone2: TWideStringField;
    qrVendanome_usuario: TWideStringField;
    qrVendatipo_venda: TWideStringField;
    qrVendadata_venda: TDateTimeField;
    qrVendatotal_venda: TFloatField;
    qrVendadesconto: TFloatField;
    qrVendaacrescimo: TFloatField;
    qrVendasit_001: TIntegerField;
    dsVenda: TDataSource;
    AdvGroupBox2: TAdvGroupBox;
    rgFiltroVenda: TcxRadioGroup;
    AdvGroupBox1: TAdvGroupBox;
    rgFiltroSituacao: TcxRadioGroup;
    AdvGroupBox3: TAdvGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    btDataHoje: TAdvGlowButton;
    btDataOntem: TAdvGlowButton;
    btDataMesAtual: TAdvGlowButton;
    btDataMesAnterior: TAdvGlowButton;
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
    AdvGroupBox4: TAdvGroupBox;
    edCodCliente: TcxButtonEdit;
    lbCliente: TLabel;
    btPesquisar: TAdvGlowButton;
    qrVendadesc_status: TWideStringField;
    cxGrid1DBTableView1nro_venda: TcxGridDBColumn;
    cxGrid1DBTableView1nome_cliente: TcxGridDBColumn;
    cxGrid1DBTableView1telefone1: TcxGridDBColumn;
    cxGrid1DBTableView1telefone2: TcxGridDBColumn;
    cxGrid1DBTableView1nome_usuario: TcxGridDBColumn;
    cxGrid1DBTableView1tipo_venda: TcxGridDBColumn;
    cxGrid1DBTableView1data_venda: TcxGridDBColumn;
    cxGrid1DBTableView1total_venda: TcxGridDBColumn;
    cxGrid1DBTableView1desconto: TcxGridDBColumn;
    cxGrid1DBTableView1acrescimo: TcxGridDBColumn;
    cxGrid1DBTableView1sit_001: TcxGridDBColumn;
    cxGrid1DBTableView1desc_status: TcxGridDBColumn;
    btCancelar: TAdvGlowButton;
    qrSomatoria: TUniQuery;
    dsSomatoria: TDataSource;
    qrSomatoriatotal: TFloatField;
    qrSomatoriatotal_desconto: TFloatField;
    qrSomatoriatotal_acrescimo: TFloatField;
    Label4: TLabel;
    DBText3: TDBText;
    btConfirma: TAdvGlowButton;
    DBText4: TDBText;
    Label6: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText1: TDBText;
    Label5: TLabel;
    RelHistoricoVendas: TfrxReport;
    dbHistoricoVendas: TfrxDBDataset;
    lnNroVendas: TLabel;
    Label8: TLabel;
    qrVendanome_vendedor: TWideStringField;
    cxGrid1DBTableView1nome_vendedor: TcxGridDBColumn;
    AdvGroupBox5: TAdvGroupBox;
    cbRelatorio: TComboBox;
    qrVendaItem: TUniQuery;
    dbHistoricoVendasItens: TfrxDBDataset;
    qrVendaItemnro_item: TIntegerField;
    qrVendaItemquantidade: TFloatField;
    qrVendaItemvalor_unitario: TFloatField;
    qrVendaItemdescricao_item: TWideStringField;
    qrVendaItemobservacao: TWideStringField;
    qrVendaItemdata_hora_lancamento: TDateTimeField;
    qrVendaItemstatus: TWideMemoField;
    qrVendaItemdesconto: TFloatField;
    qrVendaItemacrescimo: TFloatField;
    qrVendaItemvalor_total: TFloatField;
    qrVendaItemordem_item: TLargeintField;
    qrVendaItemid_material: TIntegerField;
    qrVendaItemitem_fracionado: TIntegerField;
    qrVendaItemgar_001: TIntegerField;
    qrVendaItemsit_001: TIntegerField;
    qrVendaItemdesconto_perc: TFloatField;
    qrVendaItemfracionado: TWideStringField;
    qrVendaven_001: TIntegerField;
    qrVendaemp_001: TIntegerField;
    qrVendaItememp_001: TIntegerField;
    qrVendaItemven_001: TIntegerField;
    qrVendaItemcod_material: TWideStringField;
    procedure acBuscaClienteExecute(Sender: TObject);
    procedure edCodClienteExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btDataHojeClick(Sender: TObject);
    procedure btDataOntemClick(Sender: TObject);
    procedure btDataMesAtualClick(Sender: TObject);
    procedure btDataMesAnteriorClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    constructor Create (sender : Tcomponent); reintroduce;
    procedure qrVendaAfterOpen(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btConfirmaClick(Sender: TObject);
  private
    { Private declarations }
    cod_cliente, i_where: integer;
  public
    { Public declarations }
  end;

var
  frmRelatorioHistoricoVendasCliente: TfrmRelatorioHistoricoVendasCliente;

implementation

{$R *.dfm}

uses uMenu, uBuscaRegistro, uFuncoes;

constructor  TfrmRelatorioHistoricoVendasCliente.Create(sender: TComponent);
begin
  inherited Create(sender);
  qrvenda.Close;
  i_where := qrVenda.SQL.Count-2;
  cod_cliente := 0;
end;

procedure TfrmRelatorioHistoricoVendasCliente.acBuscaClienteExecute(
  Sender: TObject);
var str_sql : string;
begin
  inherited;
  edCodCliente.SetFocus;

  str_sql:= ' select cli_001, cli_002, cli_012, cli_013, fn_situacoes(sit_001) from clientes ';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
    str_sql,
    CriaIntegerArray([0,1,2,3,4]) ,
    CriaStringArray(['Código', 'Cliente', 'Telefone 1','Telefone 2', 'Status' ]),
    0, 1, ' emp_001='+IntToStr(RecProj.iEmp), 800, 500);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
    edCodCliente.Text:= frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.Free;
  edCodClienteExit(nil);
end;

procedure TfrmRelatorioHistoricoVendasCliente.btCancelarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmRelatorioHistoricoVendasCliente.btConfirmaClick(Sender: TObject);
begin
  inherited;
  if qrVenda.active then
  begin
    if qrVenda.RecordCount>0 then
    begin

      qrVendaItem.ParamByName('flag_exibe_itens').asboolean := cbRelatorio.ItemIndex=1;
      qrVendaItem.Refresh;

      RelHistoricoVendas.PrepareReport;
      RelHistoricoVendas.ShowReport;
    end
    else
      Application.MessageBox('Sem dados para exibir no relatório!', 'Atenção', MB_ICONINFORMATION);
  end
  else
    Application.MessageBox('Sem dados para exibir no relatório!', 'Atenção', MB_ICONINFORMATION);

end;

procedure TfrmRelatorioHistoricoVendasCliente.btDataHojeClick(Sender: TObject);
begin
  inherited;
  dtpDataInicial.Date:= Date;
  dtpDataFinal.Date:= Date;
end;

procedure TfrmRelatorioHistoricoVendasCliente.btDataMesAnteriorClick(
  Sender: TObject);
var dia, mes, ano : word;
begin
  inherited;
  DecodeDate(date, ano, mes, dia);
  dtpDataInicial.Date:= incMonth(EncodeDate(ano, mes, 1), -1);
  dtpDataFinal.Date:=  incDay(EncodeDate(ano, mes, 1), -1);
end;

procedure TfrmRelatorioHistoricoVendasCliente.btDataMesAtualClick(
  Sender: TObject);
var dia, mes, ano : word;
begin
  inherited;
  DecodeDate(date, ano, mes, dia);
  dtpDataInicial.Date:= EncodeDate(ano, mes, 1);
  dtpDataFinal.Date:=  incDay(incMonth(EncodeDate(ano, mes, 1)), -1);
end;

procedure TfrmRelatorioHistoricoVendasCliente.btDataOntemClick(Sender: TObject);
begin
  inherited;
  dtpDataInicial.Date:= IncDay( Date, -1);
  dtpDataFinal.Date:= IncDay(Date, -1);
end;

procedure TfrmRelatorioHistoricoVendasCliente.btPesquisarClick(Sender: TObject);
var filtro_venda, filtro_cliente, filtro_status, filtro : string;
begin
  inherited;
  qrVenda.Close;

  case rgFiltroVenda.ItemIndex of
     1: filtro_venda := ' and v.VEN_024 = ''M'' ';
     2: filtro_venda := ' and v.VEN_024 = ''D'' ';
     3: filtro_venda := ' and v.VEN_024 = ''B'' ';
     4: filtro_venda := ' and v.VEN_024 = ''C'' ';
     5: filtro_venda := ' and v.VEN_024 = ''P'' ';
     else filtro_venda :='';
  end;

  case rgFiltroSituacao.ItemIndex of
     0: filtro_status:= ' and v.sit_001 in (1, 8, 21, 6)  ';
     1: filtro_status := ' and v.sit_001 in (8, 21, 6) ';  // Em aberto, pre fechada, em transito (delivery)
     else filtro_status :=' and v.sit_001 in (1)  ';
  end;



  if cod_cliente>0 then
    filtro_cliente := format(' and v.cli_001=%d ', [cod_cliente]  )
  else
    filtro_cliente := '';

  filtro := filtro_venda + filtro_cliente + filtro_status ;

  if qrVenda.SQL.Count = i_where then
    qrVenda.SQL.Add(filtro)
  else
    qrVenda.SQL[i_where]:= filtro;

  qrVenda.ParamByName('data_inicio').AsDateTime := dtpDataInicial.Date;
  qrVenda.ParamByName('data_fim').AsDateTime := dtpDataFinal.Date+1;
  qrVenda.Parambyname('id_empresa').AsInteger := recproj.iemp;

  qrVenda.open;


  //define a relação master-detail via código pois em design buga
  qrVendaItem.Close;
  qrVendaItem.MasterSource := dsVenda;
  qrVendaItem.MasterFields := 'ven_001';
  qrVendaItem.DetailFields := 'ven_001';


  qrVendaItem.ParamByName('data_inicio').AsDateTime := dtpDataInicial.Date;
  qrVendaItem.ParamByName('data_fim').AsDateTime := dtpDataFinal.Date+1;
  qrVendaItem.Parambyname('id_empresa').AsInteger := recproj.iemp;
  qrVendaItem.open;
end;

procedure TfrmRelatorioHistoricoVendasCliente.edCodClienteExit(Sender: TObject);
var str_sql : string;
begin
  inherited;
  str_sql := 'select cli_002 from clientes where cli_001=%d and emp_001='+inttostr(recproj.iEmp);
  LookupBuscaExit(cod_cliente, edCodCliente, lbCliente, str_sql, 'Cliente');
end;

procedure TfrmRelatorioHistoricoVendasCliente.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_return then Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmRelatorioHistoricoVendasCliente.FormShow(Sender: TObject);
var dia, mes, ano : word;
begin
  inherited;
  DecodeDate(date, ano, mes, dia);
  dtpDataInicial.Date:= EncodeDate(ano, mes, 1);
  dtpDataFinal.Date:=EncodeDate(ano, mes, dia);

end;

procedure TfrmRelatorioHistoricoVendasCliente.qrVendaAfterOpen(
  DataSet: TDataSet);
var str_sql : string;
    i: integer;
begin
  inherited;
  qrsomatoria.Close;
  qrsomatoria.SQL.Clear;

  str_sql := 'select sum(total_venda) as total, sum(desconto) as total_desconto, sum(acrescimo) as total_acrescimo from (';
  qrsomatoria.SQL.add(str_sql);
  for I := 0 to qrVenda.SQL.Count-1 do
  begin
    qrsomatoria.SQL.add(qrVenda.SQL[i]);
  end;
  qrsomatoria.SQL.add(') soma');

  for I := 0 to qrVenda.ParamCount-1 do
  begin
    qrsomatoria.Params[i].Value := qrVenda.Params[i].Value;
  end;
  qrsomatoria.open;

  lnNroVendas.Caption := inttostr(qrVenda.RecordCount);
end;

end.
