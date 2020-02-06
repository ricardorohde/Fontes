unit uRelVendaProdutoGarcom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadrao, Vcl.ComCtrls, Data.DB,
  Datasnap.DBClient, cxLookAndFeels, Vcl.DBActns, Vcl.ActnList, Vcl.ExtCtrls,
  Vcl.ToolWin, Vcl.StdCtrls, Vcl.Mask, RxToolEdit, MemDS, DBAccess, Uni,
  frxClass, frxDBSet;

type
  TfrmRelVendaProdutoGarcom = class(TfrmPadrao)
    btConf: TToolButton;
    btCancel: TToolButton;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edDtIni: TDateEdit;
    edDtFim: TDateEdit;
    dsItensVenda: TDataSource;
    qrItensVenda: TUniQuery;
    qrItensVendamat_003: TWideStringField;
    qrItensVendamat_004: TWideStringField;
    qrItensVendaqtdevenda: TFloatField;
    qrItensVendaven_004: TWideMemoField;
    qrItensVendagar_002: TWideStringField;
    dbItensVendaProdutos: TfrxDBDataset;
    RelVendasProdutos: TfrxReport;
    rgImpressora: TRadioGroup;
    RelVendasProdutosNaoFiscal: TfrxReport;
    procedure btCancelClick(Sender: TObject);
    procedure btConfClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrItensVendaBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure MontaSQL;
  public
    { Public declarations }
  end;

var
  frmRelVendaProdutoGarcom: TfrmRelVendaProdutoGarcom;

implementation

{$R *.dfm}

uses Funcao_DB, uMenu;

procedure TfrmRelVendaProdutoGarcom.btCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmRelVendaProdutoGarcom.btConfClick(Sender: TObject);
begin
  inherited;
  if (edDtIni.Date = 0) then
   begin
      Application.Messagebox('Informe a Dt. início!', 'Atenção', 0 + 64);
      edDtIni.SetFocus;
      Exit;
   end;
   //
   if (edDtFim.Date = 0)  then
   begin
      Application.Messagebox('Informe a Dt. fim!', 'Atenção', 0 + 64);
      edDtFim.SetFocus;
      Exit;
   end;
   //
   if (edDtFim.Date < edDtIni.Date)  then
   begin
      Application.Messagebox('A Dt. fim não pode ser menor que a Dt. início!', 'Atenção', 0 + 64);
      edDtFim.SetFocus;
      Exit;
   end;
   //
   MontaSql;
   //
   qrItensVenda.Open;
   //
   case rgImpressora.ItemIndex of
      0:
      begin
         RelVendasProdutos.PrepareReport;
         RelVendasProdutos.ShowReport;
      end;
      //
      1:
      begin
         RelVendasProdutosNaoFiscal.PrintOptions.Printer := LerString('CAMIMPCAIXA');
         RelVendasProdutosNaoFiscal.PrepareReport;
         RelVendasProdutosNaoFiscal.Print;
      end;
   end;
end;

procedure TfrmRelVendaProdutoGarcom.FormCreate(Sender: TObject);
begin
  inherited;
   edDtIni.Date := DataServer(frmMenu.conexao);
   edDtFim.Date := DataServer(frmMenu.conexao);
end;

procedure TfrmRelVendaProdutoGarcom.MontaSQL;
begin
   with qrItensVenda.SQL do
   begin
      Close;
      Clear;
      Add('SELECT MAT.MAT_003');
      Add('     , MAT.MAT_004');
      Add('     , SUM(ITE.ITE_002) AS QTDEVENDA');
      Add('     , TO_CHAR(VEN.VEN_004, ''dd/mm/YYYY'') AS VEN_004');
      Add('     , GAR.GAR_002');
      Add('FROM VENDAITEM ITE');
      Add('LEFT OUTER JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_001) AND (MAT.MAT_001 = ITE.MAT_001)');
      Add('LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND (UNI.UNI_001 = MAT.UNI_001)');
      Add('LEFT OUTER JOIN VENDA VEN ON (VEN.EMP_001 = ITE.EMP_001) AND (VEN.VEN_001 = ITE.VEN_001)');
      Add('LEFT OUTER JOIN GARCOM GAR ON (GAR.GAR_001 = ITE.GAR_001)');
      Add('WHERE TO_CHAR(VEN.VEN_004, ''dd/mm/YYYY'') BETWEEN :DTINI AND :DTFIM');
      Add('  AND VEN.SIT_001 = 1');
      Add('  AND VEN.VEN_024 = ''M''');
      Add('  AND MAT.MAT_008 > 0');
      Add('GROUP BY MAT.MAT_003');
      Add('     , MAT.MAT_004');
      Add('     , VEN.VEN_004');
      Add('     , GAR.GAR_002');
      Add('ORDER BY VEN.VEN_004, GAR.GAR_002, MAT.MAT_004');
   end;

end;

procedure TfrmRelVendaProdutoGarcom.qrItensVendaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
   qrItensVenda.ParamByName('DTINI').AsDateTime := edDtIni.Date;
   qrItensVenda.ParamByName('DTFIM').AsDateTime := edDtFim.Date;
end;

end.
