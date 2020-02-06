unit uDetalheContasReceber;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoDetalhe, cxLookAndFeels, Data.DB, MemDS, DBAccess, Uni, Vcl.DBActns,
   Vcl.ActnList, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin, cxGraphics, cxControls, cxLookAndFeelPainters, cxContainer,
   cxEdit, RxCurrEdit, RXDBCtrl, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, Vcl.StdCtrls, Vcl.Mask, RxToolEdit,
   cxTextEdit, Vcl.DBCtrls, cxButtonEdit, cxGroupBox, cxPCdxBarPopupMenu, cxPC,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Datasnap.DBClient;

type
   TfrmDetalheContasReceber = class(TfrmPadraoDetalhe)
      qrDetalherec_001: TIntegerField;
      qrDetalheemp_001: TIntegerField;
      qrDetalherec_002: TDateTimeField;
      qrDetalherec_003: TDateTimeField;
      qrDetalherec_004: TFloatField;
      qrDetalherec_005: TFloatField;
      qrDetalherec_006: TFloatField;
      qrDetalhecli_001: TIntegerField;
      qrDetalhepcg_001: TIntegerField;
      qrDetalhecli_002: TWideStringField;
      qrDetalhepcg_002: TWideStringField;
      qrDetalheusu_sit: TWideStringField;
      qrDetalhedat_sit: TDateTimeField;
      qrDetalheinclusao: TWideStringField;
      qrDetalheedicao: TWideStringField;
      qrDetalheusu_001_1: TIntegerField;
      qrDetalheusu_001_2: TIntegerField;
      qrDetalhedat_001_1: TDateTimeField;
      qrDetalhedat_001_2: TDateTimeField;
      qrDetalheTOTAL: TFloatField;
    qrDetalhesituacao: TWideStringField;
    qrDetalherec_008: TFloatField;
    qrDetalherec_009: TDateTimeField;
    qrDetalherec_010: TWideMemoField;
    pcAbas: TcxPageControl;
    tsDados: TcxTabSheet;
    Label1: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label10: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label11: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label6: TLabel;
    edCliente: TcxDBButtonEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    edPCG: TcxDBButtonEdit;
    Label27: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    gbTotais: TcxGroupBox;
    Label9: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label17: TLabel;
    edDesconto: TRxDBCalcEdit;
    edValor: TRxDBCalcEdit;
    edMulta: TRxDBCalcEdit;
    edTotal: TcxDBTextEdit;
    gbusuarios: TGroupBox;
    Label15: TLabel;
    Label33: TLabel;
    edDataUltimaAtualiz: TDBText;
    edUsuUltimaAtualiz: TDBText;
    Label34: TLabel;
    Label37: TLabel;
    edDataCadastro: TDBText;
    Label14: TLabel;
    edUsuCadastrado: TDBText;
    DBText1: TDBText;
    DBText2: TDBText;
    edSituacao: TDBText;
    tsObs: TcxTabSheet;
    edObs: TDBMemo;
    cxDBDateEdit3: TcxDBDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    edFormaPagto: TcxDBButtonEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    Label7: TLabel;
    edCheque: TcxDBButtonEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    qrDetalheche_001: TIntegerField;
    qrDetalheche_008: TWideStringField;
    qrDetalhefor_001: TIntegerField;
    qrDetalhefor_002: TWideStringField;
    Label8: TLabel;
    edPago: TcxDBTextEdit;
    tsPago: TcxTabSheet;
    cxGridPagoDBTableView1: TcxGridDBTableView;
    cxGridPagoLevel1: TcxGridLevel;
    cxGridPago: TcxGrid;
    qrRecebido: TUniQuery;
    dsRecebido: TDataSource;
    qrRecebidorec_001: TIntegerField;
    qrRecebidoemp_001: TIntegerField;
    qrRecebidorec_002: TDateTimeField;
    qrRecebidorec_003: TDateTimeField;
    qrRecebidorec_004: TFloatField;
    qrRecebidorec_005: TFloatField;
    qrRecebidorec_006: TFloatField;
    qrRecebidorec_008: TFloatField;
    qrRecebidocli_002: TWideStringField;
    qrRecebidopcg_002: TWideStringField;
    qrRecebidodat_001_3: TDateTimeField;
    qrRecebidosit_001: TIntegerField;
    qrRecebidorec_009: TDateTimeField;
    qrRecebidoche_001: TIntegerField;
    qrRecebidoche_008: TWideStringField;
    qrRecebidofor_001: TIntegerField;
    qrRecebidofor_002: TWideStringField;
    qrRecebidocli_001: TIntegerField;
    qrRecebidopcg_001: TIntegerField;
    qrRecebidosituacao: TWideStringField;
    qrRecebidousu_baixa: TWideMemoField;
    qrRecebidodata_baixa: TDateTimeField;
    cxGridPagoDBTableView1rec_001: TcxGridDBColumn;
    cxGridPagoDBTableView1rec_002: TcxGridDBColumn;
    cxGridPagoDBTableView1rec_003: TcxGridDBColumn;
    cxGridPagoDBTableView1rec_008: TcxGridDBColumn;
    cxGridPagoDBTableView1pcg_002: TcxGridDBColumn;
    Label12: TLabel;
    edMesa: TcxDBButtonEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    qrDetalhemes_001: TIntegerField;
    qrDetalhemes_002: TWideStringField;
      procedure FormShow(Sender: TObject);
      procedure dsDetalheStateChange(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure qrDetalheAfterOpen(DataSet: TDataSet);
      procedure qrDetalheBeforePost(DataSet: TDataSet);
      procedure qrDetalheNewRecord(DataSet: TDataSet);
      procedure qrDetalheCalcFields(DataSet: TDataSet);
    procedure qrDetalherec_001GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure pcAbasChange(Sender: TObject);
    procedure qrRecebidoBeforeOpen(DataSet: TDataSet);
    procedure cxGridPagoDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
   private
      { Private declarations }
      Procedure Cria_Detalhe(Key: Integer; Visualizar: Boolean = False);
      Function VerificaRecebido: Boolean;
   public
      { Public declarations }
   end;

var
   frmDetalheContasReceber: TfrmDetalheContasReceber;

implementation

{$R *.dfm}

uses uBtnClick, Funcao_DB, uFuncoes, uMenu, uPadraoCons;

procedure TfrmDetalheContasReceber.Cria_Detalhe(Key: Integer;
  Visualizar: Boolean);
var
   frmD: TfrmPadraoDetalhe;
begin
   Application.CreateForm(TfrmDetalheContasReceber, frmD);
   frmD.Key := Key;
   frmD.bUsaEmpresa := True;
   frmD.bVisualizar := Visualizar;
   frmD.ShowModal;
   if (Key = 0) and (frmD.ModalResult = mrOk) then
      Key := frmD.qrDetalhe.Fields[0].AsInteger;
   FreeAndNil(frmD);
   Abort;
end;


procedure TfrmDetalheContasReceber.cxGridPagoDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
   if cxGridPagoDBTableView1.ViewData.RowCount = 0 then
      Abort;
   //
   Cria_Detalhe(cxGridPagoDBTableView1.DataController.GetKeyFieldsValues, True);
end;

procedure TfrmDetalheContasReceber.dsDetalheStateChange(Sender: TObject);
begin
   inherited;
   if qrDetalhe.State = dsInsert then
      TestarFocoField(qrDetalherec_002);
end;

procedure TfrmDetalheContasReceber.FormCreate(Sender: TObject);
begin
   sTabela := 'CRECEBER';
   inherited;
   pcAbas.ActivePageIndex := 0;
end;

procedure TfrmDetalheContasReceber.FormShow(Sender: TObject);
begin
   Formatar_Float(qrDetalherec_004, sMskVlTotal);
   Formatar_Float(qrDetalherec_006, sMskVlTotal);
   Formatar_Float(qrDetalherec_005, sMskVlTotal);
   Formatar_Float(qrDetalherec_008, sMskVlTotal);
   Formatar_Float(qrDetalheTOTAL, sMskVlTotal);
   //
   Formatar_Float(qrRecebidorec_004, sMskVlTotal);
   Formatar_Float(qrRecebidorec_005, sMskVlTotal);
   Formatar_Float(qrRecebidorec_006, sMskVlTotal);
   Formatar_Float(qrRecebidorec_008, sMskVlTotal);
   inherited;
   Campo_Obrigatorio([Label10, Label11, Label6, Label27, Label2]);
   //
   tsPago.TabVisible := VerificaRecebido;
end;

procedure TfrmDetalheContasReceber.pcAbasChange(Sender: TObject);
begin
  inherited;
   if pcAbas.ActivePage = tsPago then
   begin
      qrRecebido.Close;
      qrRecebido.Open;
   end;
end;

procedure TfrmDetalheContasReceber.qrDetalheAfterOpen(DataSet: TDataSet);
begin
   inherited;
   //
//   if qrDetalhesit_001.AsInteger in [1, 2] then
//      bVisualizar := True;
end;

procedure TfrmDetalheContasReceber.qrDetalheBeforePost(DataSet: TDataSet);
begin
   EventoExit.BtnExit(edCliente);
   EventoExit.BtnExit(edPCG);
   //
   if (qrDetalherec_002.AsDateTime = 0) then
   begin
      Application.Messagebox('Favor informar uma Data Emissão.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalherec_002);
      Abort;
   end;
   //
   if (qrDetalherec_003.AsDateTime = 0) then
   begin
      Application.Messagebox('Favor informar uma Data Vencimento.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalherec_003);
      Abort;
   end;
   //
   if (qrDetalherec_002.AsDateTime > qrDetalherec_003.AsDateTime) then
   begin
      Application.Messagebox('A Data Emissão não pode ser maior que a Data Vencimento.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalherec_003);
      Abort;
   end;
   //
   if (qrDetalhecli_001.IsNull) then
   begin
      Application.Messagebox('Favor informar um Cliente.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalhecli_001);
      Abort;
   end;
   //
   if (qrDetalhepcg_001.IsNull) then
   begin
      Application.Messagebox('Favor informar um PCG.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalhepcg_001);
      Abort;
   end;
   //
   if (qrDetalherec_004.AsFloat <= 0) then
   begin
      Application.Messagebox('Favor informar um Valor maior que zero.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalherec_004);
      Abort;
   end;
   //
   if (qrDetalherec_005.AsFloat < 0) then
   begin
      Application.Messagebox('A Multa não pode ser negativa.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalherec_005);
      Abort;
   end;
   //
   if (qrDetalherec_006.AsFloat < 0) then
   begin
      Application.Messagebox('O Desconto não pode ser negativo.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalherec_006);
      Abort;
   end;
   //
   if qrDetalhe.State = dsInsert then
   begin
      qrDetalhedat_001_1.AsDateTime := DataServer(frmMenu.Conexao);
      qrDetalheusu_001_1.AsInteger := recProj.iUsuario;
      qrDetalheinclusao.AsString := recProj.sUsuario;
      qrDetalheusu_sit.AsString := recProj.sUsuario;
      qrDetalhedat_sit.AsDateTime := qrDetalhedat_001_1.AsDateTime;
   end;
   if qrDetalhe.State = dsEdit then
   begin
      qrDetalhedat_001_2.AsDateTime := DataServer(frmMenu.Conexao);
      qrDetalheusu_001_2.AsInteger := recProj.iUsuario;
      qrDetalheedicao.AsString := recProj.sUsuario;
   end;
   //
   inherited;

end;

procedure TfrmDetalheContasReceber.qrDetalheCalcFields(DataSet: TDataSet);
begin
   inherited;
   {case qrDetalherec_007.AsInteger of
      0:
         qrDetalheSITUACAO.AsString := 'PENDENTE';
      1:
         qrDetalheSITUACAO.AsString := 'BAIXADO';
      2:
         qrDetalheSITUACAO.AsString := 'CANCELADO';
   end;}
   //
   qrDetalheTOTAL.AsFloat := (qrDetalherec_004.AsFloat + qrDetalherec_005.AsFloat) - (qrDetalherec_006.AsFloat + qrDetalherec_008.AsFloat);
end;

procedure TfrmDetalheContasReceber.qrDetalheNewRecord(DataSet: TDataSet);
begin
   inherited;
   qrDetalhedat_001_1.AsDateTime := DataServer(frmMenu.Conexao);
   qrDetalheusu_001_1.AsInteger := recProj.iUsuario;
   qrDetalheinclusao.AsString := recProj.sUsuario;
   qrDetalheusu_sit.AsString := recProj.sUsuario;
   qrDetalhedat_sit.AsDateTime := qrDetalhedat_001_1.AsDateTime;
//   qrDetalherec_007.AsInteger := 0;
   qrDetalherec_004.AsInteger := 0;
   qrDetalherec_005.AsInteger := 0;
   qrDetalherec_006.AsInteger := 0;
   qrDetalherec_008.AsInteger := 0;
   qrDetalheSITUACAO.AsString := 'PENDENTE';
   qrDetalherec_002.AsDateTime := StrToDate(FormatDateTime('dd/mm/yyyy', DataServer(frmMenu.conexao)));

end;

procedure TfrmDetalheContasReceber.qrDetalherec_001GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    if qrDetalherec_001.AsInteger = 0 then
      Text := 'NOVO'
   else
      Text := qrDetalherec_001.AsString;
end;

procedure TfrmDetalheContasReceber.qrRecebidoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
   qrRecebido.ParamByName('EMP').AsInteger := RecProj.iEmp;
   qrRecebido.ParamByName('REC').AsInteger := qrDetalherec_001.AsInteger;
end;

function TfrmDetalheContasReceber.VerificaRecebido: Boolean;
var
   qrAux: TUniQuery;
begin
   Result := False;
   //
   qrAux := TUniQuery.Create(Nil);
   try
      qrAux.Connection := frmMenu.Conexao;
      with qrAux, SQL do
      begin
         Close;
         Clear;
         Add('SELECT COUNT(REC_001) AS QTDE FROM CRECEBER');
         Add('WHERE EMP_001 = :EMP');
         Add('AND   REC_011 = :REC');
         ParamByName('EMP').AsInteger := RecProj.iEmp;
         ParamByName('REC').AsInteger := qrDetalherec_001.AsInteger;
         Open;
      end;
      //
      if qrAux.FieldByName('QTDE').AsInteger > 0 then
         Result := True;
   finally
      FreeAndNil(qrAux);
   end;
end;

end.
