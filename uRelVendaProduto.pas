unit uRelVendaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadrao, Vcl.ComCtrls, Data.DB,
  Datasnap.DBClient, cxLookAndFeels, Vcl.DBActns, Vcl.ActnList, Vcl.ExtCtrls,
  Vcl.ToolWin, Vcl.StdCtrls, Vcl.Mask,  MemDS, DBAccess, Uni,
  frxClass, frxDBSet;

type
  TfrmRelVendaProduto = class(TfrmPadrao)
    btConf: TToolButton;
    btCancel: TToolButton;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edDtIni: TDateEdit;
    edDtFim: TDateEdit;
    qrItensVenda: TUniQuery;
    dsItensVenda: TDataSource;
    RelVendasProdutos: TfrxReport;
    dbItensVendaProdutos: TfrxDBDataset;
    qrItensVendamat_003: TWideStringField;
    qrItensVendamat_004: TWideStringField;
    qrItensVendaqtdevenda: TFloatField;
    qrItensVendavlrvenda: TFloatField;
    qrItensVendatotgeral: TFloatField;
    rgFiltro: TRadioGroup;
    qrItensVendaven_004: TWideMemoField;
    qrItensVendataxa: TFloatField;
    qrItensVendataxagarcon: TFloatField;
    rgImpressora: TRadioGroup;
    RelVendasProdutosNaoFiscal: TfrxReport;
    procedure btCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btConfClick(Sender: TObject);
    procedure qrItensVendaBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure MontaSql;
  public
    { Public declarations }
  end;

var
  frmRelVendaProduto: TfrmRelVendaProduto;

implementation

{$R *.dfm}

uses Funcoes_XE, uMenu;

procedure TfrmRelVendaProduto.btCancelClick(Sender: TObject);
begin
  inherited;
   Close;
end;

procedure TfrmRelVendaProduto.btConfClick(Sender: TObject);
begin
  //inherited;
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

procedure TfrmRelVendaProduto.FormCreate(Sender: TObject);
begin
  inherited;
   edDtIni.Date := DataServer(frmMenu.conexao);
   edDtFim.Date := DataServer(frmMenu.conexao);
end;

procedure TfrmRelVendaProduto.MontaSql;
begin
   with qrItensVenda.SQL do
   begin
      Close;
      Clear;
      Add('SELECT MAT.MAT_003 ');
      Add('     , MAT.MAT_004 ');
      Add('     , SUM(ITE.ITE_002) AS QTDEVENDA ');
      Add('     , SUM(ITE.ITE_005) AS VLRVENDA ');
      Add('     , TO_CHAR(VEN.VEN_004, ''dd/mm/YYYY'') AS VEN_004 ');
      Add('     , (SELECT SUM(VENDAITEM.ITE_005) ');
      Add('          FROM VENDAITEM ');
      Add('          LEFT OUTER JOIN VENDA ON (VENDA.EMP_001 = VENDAITEM.EMP_001) AND (VENDA.VEN_001 = VENDAITEM.VEN_001) ');
      Add('         WHERE VENDAITEM.EMP_001 = :EMP ');
      Add('           AND TO_CHAR(VENDA.VEN_004 , ''dd/mm/YYYY'') BETWEEN :DTINI AND :DTFIM ');
      case rgFiltro.ItemIndex of
         1: Add('     AND VENDA.VEN_024 = ''M''');
         //
         2: Add('     AND VENDA.VEN_024 = ''D''');
      end;
      Add('           AND VENDA.SIT_001 = 1 ');
      Add('       ) AS TOTGERAL ');
      Add('    , (SELECT COALESCE(SUM(VENDA.VEN_031), 0.00) ');
      Add('         FROM VENDA ');
      Add('        WHERE VENDA.EMP_001 = :EMP ');
      Add('          AND TO_CHAR(VENDA.VEN_004, ''dd/mm/YYYY'') BETWEEN :DTINI AND :DTFIM ');
      case rgFiltro.ItemIndex of
         1: Add('    AND VENDA.VEN_024 = ''M''');
         //
         2: Add('    AND VENDA.VEN_024 = ''D''');
      end;
      Add('          AND VENDA.SIT_001 = 1 ');
      Add('          AND VENDA.VEN_004 = VEN.VEN_004 ');
      Add('      ) AS TAXA ');
      Add(', (SELECT ((COALESCE(SUM(T.ITE_005), 0.00) / 100) * 10)');
      Add('    FROM VENDAITEM T ');
      Add('    LEFT OUTER JOIN VENDA ON (VENDA.EMP_001 = T.EMP_001) AND (VENDA.VEN_001 = T.VEN_001)');
      Add('   WHERE T.EMP_001 = :EMP');
      Add('     AND TO_CHAR(VENDA.VEN_004, ''dd/mm/YYYY'') BETWEEN :DTINI AND :DTFIM');
      case rgFiltro.ItemIndex of
         1: Add('    AND VENDA.VEN_024 = ''M''');
         //
         2: Add('    AND VENDA.VEN_024 = ''D''');
      end;
      Add('     AND VENDA.SIT_001 = 1');
      Add(' ) TAXAGARCON');
      Add('FROM VENDAITEM ITE ');
      Add('LEFT OUTER JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_001) AND (MAT.MAT_001 = ITE.MAT_001) ');
      Add('LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND (UNI.UNI_001 = MAT.UNI_001) ');
      Add('LEFT OUTER JOIN VENDA VEN ON (VEN.EMP_001 = ITE.EMP_001) AND (VEN.VEN_001 = ITE.VEN_001) ');
      Add('LEFT OUTER JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.CAT_001 = MAT.CAT_001) ');
      Add('WHERE TO_CHAR(VEN.VEN_004, ''dd/mm/YYYY'') BETWEEN :DTINI AND :DTFIM ');
      Add('  AND VEN.SIT_001 = 1 ');
      Add('  AND MAT.MAT_008 > 0 ');
      case rgFiltro.ItemIndex of
         1: Add('  AND VEN.VEN_024 = ''M''');
         //
         2: Add('  AND VEN.VEN_024 = ''D''');
      end;
      Add('GROUP BY VEN.VEN_004 ');
      Add('     , MAT.MAT_004 ');
      Add('     , CAT.CAT_002 ');
      Add('     , MAT.MAT_003 ');
      Add('     , TOTGERAL ');
      Add('ORDER BY VEN.VEN_004, CAT.CAT_002, MAT.MAT_004');
   end;
end;

procedure TfrmRelVendaProduto.qrItensVendaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
   qrItensVenda.ParamByName('EMP').AsInteger := RecProj.iEmp;
   qrItensVenda.ParamByName('DTINI').AsDateTime := edDtIni.Date;
   qrItensVenda.ParamByName('DTFIM').AsDateTime := edDtFim.Date;
end;

end.
