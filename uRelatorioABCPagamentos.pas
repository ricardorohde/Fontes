unit uRelatorioABCPagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, AdvGlowButton, Vcl.ComCtrls,
  Vcl.StdCtrls, AdvGroupBox, Vcl.ExtCtrls, AdvPanel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, MemDS, DBAccess, Uni, frxClass, frxDBSet;

type
  TfrmRelatorioABCPagamentos = class(TfrmModelo)
    AdvGroupBox3: TAdvGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    btPesquisar: TAdvGlowButton;
    btImprimir: TAdvGlowButton;
    btCancelar: TAdvGlowButton;
    qrRelatorio: TUniQuery;
    dsRelatorio: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qrRelatorioid_forma: TIntegerField;
    qrRelatoriodescricao_forma: TWideStringField;
    qrRelatoriototal_valor: TFloatField;
    qrRelatoriopercent: TFloatField;
    cxGrid1DBTableView1id_forma: TcxGridDBColumn;
    cxGrid1DBTableView1descricao_forma: TcxGridDBColumn;
    cxGrid1DBTableView1total_valor: TcxGridDBColumn;
    cxGrid1DBTableView1percent: TcxGridDBColumn;
    repRelatorio: TfrxReport;
    dbRelatorio: TfrxDBDataset;
    procedure btPesquisarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    constructor Create (sender : Tcomponent) ;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioABCPagamentos: TfrmRelatorioABCPagamentos;

implementation

{$R *.dfm}

uses uMenu;

constructor TfrmRelatorioABCPagamentos.Create (sender : Tcomponent) ;
var dia, mes, ano : word;
begin
  inherited Create(sender);
  //preenche os filtros de data com o primeiro dia do mes e com o dia atual
  DecodeDate(date, ano, mes, dia);
  dtpDataInicial.Date:= EncodeDate(ano, mes, 1);
  dtpDataFinal.Date:=EncodeDate(ano, mes, dia);
  qrRelatorio.Close;
end;

procedure TfrmRelatorioABCPagamentos.btCancelarClick(Sender: TObject);
begin
  inherited;
  self.close;
end;

procedure TfrmRelatorioABCPagamentos.btImprimirClick(Sender: TObject);
var periodo : string;
begin
  inherited;
  if qrRelatorio.RecordCount>0 then
  begin
    periodo := format('%s a %s',[formatdatetime('dd/mm/yyyy', qrRelatorio.ParamByName('dtini').AsDateTime),
                                 formatdatetime('dd/mm/yyyy', qrRelatorio.ParamByName('dtini').AsDateTime)]);

    repRelatorio.Variables['sPeriodo'] := QuotedStr(periodo);
    repRelatorio.PrepareReport;
    repRelatorio.ShowReport;
  end
  else
    Application.MessageBox('Sem dados no período selecionado!', 'Atenção', MB_ICONINFORMATION);
end;

procedure TfrmRelatorioABCPagamentos.btPesquisarClick(Sender: TObject);
begin
  inherited;
  qrRelatorio.close;
  qrRelatorio.ParamByName('emp').AsInteger := RecProj.iEmp;
  qrRelatorio.ParamByName('dtini').AsDateTime := dtpDataInicial.Date;
  qrRelatorio.ParamByName('dtfim').AsDateTime := dtpDataFinal.Date+1;
  qrRelatorio.open;
end;

end.
