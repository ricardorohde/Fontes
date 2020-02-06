unit uPesquisavendabalcao2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCheckBox,
  MemDS, DBAccess, Uni, AdvGlowButton, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.ExtCtrls, AdvPanel, cxCurrencyEdit, dxGDIPlusClasses, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfrmPesquisavendabalcao2 = class(TfrmModelo)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    dsPesquisavendapdv: TDataSource;
    qrPesquisavendapdv: TUniQuery;
    qrPesquisavendapdvven_001: TIntegerField;
    qrPesquisavendapdvven_009: TFloatField;
    qrPesquisavendapdvnome_cliente: TWideStringField;
    cxGrid1DBTableView1ven_001: TcxGridDBColumn;
    cxGrid1DBTableView1ven_009: TcxGridDBColumn;
    cxGrid1DBTableView1nome_cliente: TcxGridDBColumn;
    qrPesquisavendapdvemp_001: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisavendabalcao2: TfrmPesquisavendabalcao2;

implementation

{$R *.dfm}

uses uMenu;

procedure TfrmPesquisavendabalcao2.btCancelaClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPesquisavendabalcao2.btConfirmaClick(Sender: TObject);
var str_sql:string;
    qraux1:tuniquery;
begin
  if qrPesquisavendapdv.RecordCount>0 then
  begin
    if Application.MessageBox('Deseja realmente retornar a essa venda?','Atenção',MB_YESNO+MB_ICONQUESTION)=mryes then
    begin
      self.tag:=1 ;
      self.Close;
      str_sql :='update venda set sit_001=0 where ven_001=:ven_001 and emp_001=:emp_001';
      qrAux1 := TUniQuery.Create(self);
      qrAux1.Connection := frmMenu.conexao;
      qrAux1.close;
      qrAux1.SQL.clear;
      qrAux1.SQL.Add(str_sql);
      qrAux1.ParamByName('ven_001').asinteger := qrPesquisavendapdv.FieldByName('ven_001').asinteger;
      qrAux1.ParamByName('emp_001').asinteger := qrPesquisavendapdv.FieldByName('emp_001').asinteger;
      qrAux1.Execute;
    end;
  end
  else
    Application.MessageBox('Não existem vendas a serem fechadas! ', 'Atenção', MB_ICONQUESTION+MB_OK);

  Close;
end;

procedure TfrmPesquisavendabalcao2.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btconfirma.click;
end;

procedure TfrmPesquisavendabalcao2.FormShow(Sender: TObject);
begin
  qrpesquisavendapdv.ParamByName('emp_001').AsInteger:= RecProj.iEmp;
  qrpesquisavendapdv.Open;
  qrpesquisavendapdv.Last;
end;

end.
