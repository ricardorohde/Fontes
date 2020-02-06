unit uPadraoCons;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadrao, Vcl.ComCtrls, Datasnap.DBClient, Vcl.ActnList, Vcl.ToolWin,
   Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
   cxData,
   cxDataStorage, cxEdit, cxDBData, MemDS,
   DBAccess, Uni, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
   cxGridDBTableView,
   cxGrid, Vcl.Menus, cxButtonEdit, DB, uPadraoDetalhe,  Vcl.DBActns,
   AdvGlowButton, cxCheckBox, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
   dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
   dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
   dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxCommon, cxGridExportLink, cxDBEdit,
   cxNavigator, System.Actions, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter;

type
   TfrmPadraoCons = class(TfrmPadrao)
      GradeConsulta: TcxGridDBTableView;
      GradeLevel1: TcxGridLevel;
      Grade: TcxGrid;
      qrConsulta: TUniQuery;
      dsConsulta: TDataSource;
    PpMarca: TPopupMenu;
      DesmarcarTodos1: TMenuItem;
      MarcarTodos1: TMenuItem;
      GradeConsultaMarcar: TcxGridDBColumn;
      cdsConf: TClientDataSet;
      cdsConfNOME: TStringField;
      cdsConfTEXTO: TStringField;
      act_Visualizar: TAction;
      btnInsert: TToolButton;
      btnRefresh: TToolButton;
      btnEditar: TToolButton;
      btnSair: TToolButton;
      btnExcluir: TToolButton;
      btnVisualizacao: TToolButton;
      btnLast: TToolButton;
      btnNext: TToolButton;
      btnPrior: TToolButton;
      btnFirst: TToolButton;
      btnSeparar2: TToolButton;
      btnImprimir: TToolButton;
      btnSeparar3: TToolButton;
      btnFiltro: TToolButton;
      GradePrint: TdxComponentPrinter;
      GradePrintLink: TdxGridReportLink;
      act_ImprGrade: TAction;
      act_XLS: TAction;
      popImpressao: TPopupMenu;
      ImprimirGrade1: TMenuItem;
      ExportarparaoExcel1: TMenuItem;
      btnSeparar1: TToolButton;
      act_Filtro: TAction;
      act_Editar: TAction;
      act_Incluir: TAction;
      act_Excluir: TAction;
      act_First: TAction;
      act_Prior: TAction;
      act_Next: TAction;
      act_Last: TAction;
      btnSeparar4: TToolButton;
    btDescancela: TToolButton;
      constructor CreatePesquisa(bFuncoesBasicas: Boolean; iCliente: integer);
      procedure FormCreate(Sender: TObject);
      procedure GradeConsultaCellDblClick(Sender: TcxCustomGridTableView;
        ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
        var AHandled: Boolean);
      procedure act_AtualizarExecute(Sender: TObject);
      procedure act_FiltroExecute(Sender: TObject);
      procedure act_ImprGradeExecute(Sender: TObject);
      procedure act_XLSExecute(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure act_ExcluirExecute(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure qrConsultaBeforeInsert(DataSet: TDataSet);
      procedure qrConsultaBeforeEdit(DataSet: TDataSet);
      procedure act_VisualizarExecute(Sender: TObject);
      procedure qrConsultaBeforeDelete(DataSet: TDataSet);
      procedure qrConsultaAfterDelete(DataSet: TDataSet);
      procedure GradeConsultaEditing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
        var AAllow: Boolean);
      procedure GradeConsultaCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
        AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
      procedure btnSairClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormKeyPress(Sender: TObject; var Key: Char);
      procedure GradeConsultaFocusedRecordChanged(Sender: TcxCustomGridTableView;
        APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
      procedure qrConsultaAfterRefresh(DataSet: TDataSet);
      procedure qrConsultaAfterOpen(DataSet: TDataSet);
      procedure act_EditarExecute(Sender: TObject);
      procedure act_IncluirExecute(Sender: TObject);
      procedure act_FirstExecute(Sender: TObject);
      procedure act_LastExecute(Sender: TObject);
      procedure act_PriorExecute(Sender: TObject);
      procedure act_NextExecute(Sender: TObject);
      procedure GradeConsultaDataControllerDataChanged(Sender: TObject);
      procedure qrConsultaBeforeOpen(DataSet: TDataSet);
   private
      fbPesquisa: Boolean;
      fbColuna_Selecionar: Boolean;
      fedCaller: TcxDBButtonEdit;
      fiColCount: Integer;
      fsSQL: String;
      ffrmDetalhe: TComponentClass;
      fbUsaEmpresa: Boolean;
      fsTabela: String;
      fbFuncoesBasicas: Boolean;
      fsKeyFld: String;
      fsPerguntaDel: String;
      fbCanEdit: Boolean;
      fbCanDelete: Boolean;
      fbCanInsert: Boolean;
      fsAbriuQuery: Boolean;
      fiRet: Integer;
      frm: TForm;
      //
      procedure SetfsKeyFld(Value: String);
      procedure SetfbPesquisa(Value: Boolean);
      procedure SetfbColuna_Selecionar(Value: Boolean);
      procedure SetfedCaller(Value: TcxDBButtonEdit);
      procedure SetfiColCount(Value: Integer);
      procedure SetfsSQL(Value: String);
      procedure SetffrmDetalhe(Value: TComponentClass);
      procedure SetfbUsaEmpresa(Value: Boolean);
      procedure GravaString(sNome, sValor: String);
      function LerString(sNome: String; Default: String = ''): String;
      procedure CarregaLayoutGrade;
      procedure GravaLayoutGrade;
      procedure DblClickGrid;
      { Private declarations }
   public
      property sKeyFld: String read fsKeyFld write SetfsKeyFld;
      property bPesquisa: Boolean read fbPesquisa write SetfbPesquisa;
      property bColuna_Selecionar: Boolean read fbColuna_Selecionar write SetfbColuna_Selecionar;
      property edCaller: TcxDBButtonEdit read fedCaller write SetfedCaller;
      property iColCount: Integer read fiColCount write SetfiColCount;
      property sSQL: String read fsSQL write SetfsSQL;
      property frmDetalhe: TComponentClass read ffrmDetalhe write SetffrmDetalhe;
      property bUsaEmpresa: Boolean read fbUsaEmpresa write SetfbUsaEmpresa;
      property sTabela: String read fsTabela write fsTabela;
      property sPerguntaDel: String read fsPerguntaDel write fsPerguntaDel;
      property bCanEdit: Boolean read fbCanEdit write fbCanEdit;
      property bCanDelete: Boolean read fbCanDelete write fbCanDelete;
      property bCanInsert: Boolean read fbCanInsert write fbCanInsert;
      property iRet: Integer read fiRet write fiRet;
      //
      procedure Implementa_Ajusta_Componentes(idx: Integer); Override;
      procedure ChecaBtn; Virtual;
      procedure Monta_SQL_Delete(SQL_Delete: String);
      procedure Cria_Detalhe(Key: Integer; Visualizar: Boolean = False);
      { Public declarations }
   end;

var
   frmPadraoCons: TfrmPadraoCons;

implementation

{$R *.dfm}

uses uMenu, uFuncoes, Funcao_DB, Funcoes_XE;

procedure TfrmPadraoCons.ChecaBtn;
begin
   // Método Virtual - Deve ser implementado nas classes filhas
   btnEditar.Enabled := (GradeConsulta.ViewData.RowCount > 0) and fbCanEdit and
     (((fbFuncoesBasicas) and (fbPesquisa)) or (Not fbPesquisa));
   btnExcluir.Enabled := (GradeConsulta.ViewData.RowCount > 0) and fbCanDelete and
     (((fbFuncoesBasicas) and (fbPesquisa)) or (Not fbPesquisa));
   btnInsert.Enabled := fbCanInsert and (((fbFuncoesBasicas) and (fbPesquisa)) or (Not fbPesquisa));
   //
   act_First.Enabled := (GradeConsulta.ViewData.RowCount > 0) and
     (GradeConsulta.DataController.GetFocusedRowIndex > 0);
   act_Prior.Enabled := act_First.Enabled;
   act_Last.Enabled := (GradeConsulta.ViewData.RowCount > 0) and
     (GradeConsulta.DataController.GetFocusedRowIndex < GradeConsulta.ViewData.RowCount - 1);
   act_Next.Enabled := act_Last.Enabled;
end;

procedure TfrmPadraoCons.act_VisualizarExecute(Sender: TObject);
begin
   inherited;
   if not btnVisualizacao.Visible then
      Abort;
   //
   if GradeConsulta.ViewData.RowCount = 0 then
      Abort;
   //
   Cria_Detalhe(GradeConsulta.DataController.GetKeyFieldsValues, True);
end;

procedure TfrmPadraoCons.act_EditarExecute(Sender: TObject);
begin
   inherited;
   qrConsulta.Edit;
end;

procedure TfrmPadraoCons.act_AtualizarExecute(Sender: TObject);
var
   frm: TForm;
begin
   inherited;
   qrConsulta.Close;
   qrConsulta.Open;
end;

procedure TfrmPadraoCons.act_ExcluirExecute(Sender: TObject);
begin
   inherited;
   qrConsulta.Delete;
end;

procedure TfrmPadraoCons.act_FiltroExecute(Sender: TObject);
begin
   inherited;
   // Criar Filtro
end;

procedure TfrmPadraoCons.act_FirstExecute(Sender: TObject);
begin
   inherited;
   GradeConsulta.ViewData.Rows[0].Focused := True;
end;

procedure TfrmPadraoCons.act_ImprGradeExecute(Sender: TObject);
begin
   inherited;
   GradePrint.PreviewOptions.Icon := Application.Icon;
   GradeLevel1.Caption := Self.Caption;
   GradePrint.CurrentLink.ReportTitleText := Self.Caption;
   GradePrint.CurrentLink.ReportDocument.Creator := 'SoftClean';
   GradePrintLink.PrinterPage.PageFooter.LeftTitle.Text := 'Impresso em: ' + FormatDateTime('dd/mm/yyyy hh:nn',
     DataServer(frmMenu.Conexao));
   // GradePrintLink.PrinterPage.PageFooter.CenterTitle.Text := frmMenu.qrMULTSOFTMUL_015.AsString;
   GradePrint.Preview;
end;

procedure TfrmPadraoCons.act_IncluirExecute(Sender: TObject);
begin
   inherited;
   qrConsulta.Append;
end;

procedure TfrmPadraoCons.act_LastExecute(Sender: TObject);
begin
   inherited;
   GradeConsulta.ViewData.Rows[GradeConsulta.ViewData.RowCount - 1].Focused := True;
end;

procedure TfrmPadraoCons.act_NextExecute(Sender: TObject);
begin
   inherited;
   GradeConsulta.ViewData.Rows[GradeConsulta.DataController.GetFocusedRowIndex + 1].Focused := True;
end;

procedure TfrmPadraoCons.act_PriorExecute(Sender: TObject);
begin
   inherited;
   GradeConsulta.ViewData.Rows[GradeConsulta.DataController.GetFocusedRowIndex - 1].Focused := True;
end;

procedure TfrmPadraoCons.Cria_Detalhe(Key: Integer; Visualizar: Boolean = False);
var
   frmD: TfrmPadraoDetalhe;
begin
   if not Assigned(ffrmDetalhe) then
      Abort;
   //
   Application.CreateForm(ffrmDetalhe, frmD);
   frmD.Key := Key;
   frmD.bUsaEmpresa := fbUsaEmpresa;
   frmD.bVisualizar := Visualizar;
   frmD.ShowModal;
   if (Key = 0) and (frmD.ModalResult = mrOk) then
      Key := frmD.qrDetalhe.Fields[0].AsInteger;
   qrConsulta.Refresh;
   qrConsulta.Locate(GradeConsulta.DataController.KeyFieldNames, Key, []);
   FreeAndNil(frmD);
   Abort;
end;

procedure TfrmPadraoCons.GravaString(sNome, sValor: String);
begin
   if FileExists(cdsConf.FileName) then
   begin
      try
         cdsConf.Open;
      except
         cdsConf.CreateDataSet;
      end;
   end
   else
   begin
      cdsConf.CreateDataSet;
   end;
   if (sValor = '') then
   begin
      if (cdsConf.Locate('NOME', sNome, [])) then
      begin
         cdsConf.Delete;
         cdsConf.Close;
         Exit;
      end
      else
      begin
         cdsConf.Close;
         Exit;
      end;
   end;
   //
   if (cdsConf.Locate('NOME', sNome, [])) then
   begin
      cdsConf.Edit;
   end
   else
   begin
      cdsConf.Append;
      cdsConfNOME.AsString := sNome;
   end;
   cdsConfTEXTO.AsString := sValor;
   cdsConf.Post;
   //
   cdsConf.Close;
end;

procedure TfrmPadraoCons.Implementa_Ajusta_Componentes(idx: Integer);
begin
   inherited;
   // *****************
end;

function TfrmPadraoCons.LerString(sNome: String; Default: String = ''): String;
begin
   if FileExists(cdsConf.FileName) then
      cdsConf.Open
   else
      cdsConf.CreateDataSet;
   //
   if (cdsConf.Locate('NOME', sNome, [])) then
      Result := cdsConfTEXTO.AsString
   else
      Result := Default;
   //
   cdsConf.Close;
end;

procedure TfrmPadraoCons.act_XLSExecute(Sender: TObject);
begin
   inherited;
   if (Confirma('Confirma a exportação para o Excel?', 'ATENÇÃO', False) = False) then
      Exit;
   try
      with frmMenu.SaveDialog do
      begin
         Filter := 'Excel (*.xls;*.xlsx)|*.xls;*.xlsx';
         DefaultExt := '*.xlsx';
      end;
      if (frmMenu.SaveDialog.Execute) then
      begin
         ActiveControl := nil;
         //
         if (AnsiUpperCase(ExtractFileExt(frmMenu.SaveDialog.FileName)) = '.XLS') then
            ExportGridToExcel(frmMenu.SaveDialog.FileName, Grade, True, True, False, 'xls')
         else
            ExportGridToXLSX(frmMenu.SaveDialog.FileName, Grade, True, True, False, 'xlsx');
         //
         Application.MessageBox('Exportação efetuada com sucesso!', 'ATENÇÃO', 0 + 64);
      end;
   except
      Application.MessageBox('Problemas ao efetuar a exportação para o Excel!', 'ATENÇÃO', 0 + 64);
   end;
end;

Constructor TfrmPadraoCons.CreatePesquisa(bFuncoesBasicas: Boolean; iCliente: integer);
begin
   Inherited Create(Nil);
   fbPesquisa := True;
   fbFuncoesBasicas := bFuncoesBasicas;
   //
   // if Not bFuncoesBasicas then
   // begin
   // btnEditar.Action := Nil;
   // btnInsert.Action := Nil;
   // btnExcluir.Action := Nil;
   // end;
   //
   if iCliente <> 0 then
      qrConsulta.SQL.Add(' AND REC.CLI_001 = '+ IntToStr(iCliente));

   Self.FormStyle := fsNormal;
   Self.Position := poDesktopCenter;
   //
   Grade.Hint := 'Para selecionar um registro, clique duas vezes sobre ele ou aperte enter.'
end;

procedure TfrmPadraoCons.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   if recProj.bSalvaLayoutCons then
      GravaLayoutGrade;
   if Not fbPesquisa then
      Action := caFree;
end;

procedure TfrmPadraoCons.FormCreate(Sender: TObject);
begin
   inherited;
   //
   fbCanEdit := True;
   fbCanDelete := True;
   fbCanInsert := True;
   //
//   recProj.bFiltroCreate := True;
   //
   if recProj.bSalvaLayoutCons then
      CarregaLayoutGrade;
   //
   fsSQL := qrConsulta.SQL.Text;
   fiColCount := 1;
   fbUsaEmpresa := True;
   //
   if cdsConf.Active then
      cdsConf.Close;
   //
   if Not(FileExists(ExtractFilePath(Application.ExeName) + '\REG')) then
      ForceDirectories(ExtractFilePath(Application.ExeName) + '\REG');
   //
   cdsConf.FileName := ExtractFilePath(Application.ExeName) + '\REG\' + Self.ClassName + '.XML';
   //
   GradeConsultaMarcar.VisibleForCustomization := fbColuna_Selecionar;
   GradeConsultaMarcar.Visible := fbColuna_Selecionar;
   //
   if Not fbPesquisa then
      Self.Visible := True;
end;

procedure TfrmPadraoCons.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   if ssCtrl in Shift then
   begin
      if (Char(Key) in ['I', 'i']) and (btnInsert.Visible) and (btnInsert.Enabled) then
         btnInsert.Click;
      if (Char(Key) in ['E', 'e']) and (btnEditar.Visible) and (btnEditar.Enabled) then
         btnEditar.Click;
      if (Char(Key) in ['D', 'd']) and (btnExcluir.Visible) and (btnExcluir.Enabled) then
         btnExcluir.Click;
   end;
end;

procedure TfrmPadraoCons.FormKeyPress(Sender: TObject; var Key: Char);
begin
   // inherited;
   if Key = #13 then
      DblClickGrid;
end;

procedure TfrmPadraoCons.CarregaLayoutGrade;
var
   qr: TUniQuery;
   st: TStream;
   gvView: TcxCustomGridTableView;
begin
   gvView := GradeConsulta;
   qr := TUniQuery.Create(nil);
   with qr, SQL do
   begin
      Connection := frmMenu.Conexao;
      Clear;
      Add('SELECT LTC_002 FROM LAYOUT_CONS');
      Add('WHERE (EMP_001=' + IntToStr(recProj.iEmp) + ')');
      Add('  AND (USU_001=' + IntToStr(recProj.iUsuario) + ')');
      Add('  AND (LTC_001=' + QuotedStr(Self.Name) + ')');
      Open;
      if not FieldByName('LTC_002').IsNull then
      begin
         try
            st := qr.CreateBlobStream(FieldByName('LTC_002'), bmRead);
            st.Position := 0;
            gvView.BeginUpdate(lsimImmediate);
            gvView.RestoreFromStream(st, True, False, [gsoUseFilter, gsoUseSummary], gvView.Name);
            gvView.EndUpdate;
            FreeAndNil(st);
         except
            gvView.EndUpdate;
         end;
      end;
      Close;
   end;
   FreeAndNil(qr);
end;

procedure TfrmPadraoCons.GravaLayoutGrade;
var
   qr: TUniQuery;
   st: TStream;
   gvView: TcxCustomGridTableView;
begin
   if Not fbPesquisa then
   begin
      gvView := GradeConsulta;
      qr := TUniQuery.Create(nil);
      with qr, SQL do
      begin
         Connection := frmMenu.Conexao;
         Clear;
         Add('   DELETE FROM LAYOUT_CONS');
         Add('   WHERE (EMP_001 = :EMP)');
         Add('     AND (USU_001 = :USU)');
         Add('     AND (LTC_001 = :LTC_001)');
         ParamByName('EMP').AsInteger := recProj.iEmp;
         ParamByName('USU').AsInteger := recProj.iUsuario;
         ParamByName('LTC_001').AsString := Self.Name;
         ExecSQL;
         Clear;
         Add('   INSERT INTO LAYOUT_CONS');
         Add('      (EMP_001, USU_001, LTC_001, LTC_002)');
         Add('   VALUES(:EMP, :USU, :LTC_001, :LTC_002)');
         ParamByName('EMP').AsInteger := recProj.iEmp;
         ParamByName('USU').AsInteger := recProj.iUsuario;
         ParamByName('LTC_001').AsString := Self.Name;
         //
         st := TMemoryStream.Create;
         //
         gvView.StoreToStream(st, [gsoUseFilter], gvView.Name);
         //
         st.Position := 0;
         qr.ParamByName('LTC_002').LoadFromStream(st, ftBlob);
         //
         ExecSQL;
         //
         FreeAndNil(st);
         //
      end;
      FreeAndNil(qr);
   end;
end;

procedure TfrmPadraoCons.FormShow(Sender: TObject);
var
   cxCOL: TcxGridDBColumn;
   cxCOUNT: TcxGridDBTableSummaryItem;
   I: Integer;
begin
   inherited;
   //
   Monta_SQL_Delete('');
   //
   cxCOL := TcxGridDBColumn(GradeConsulta.Columns[fiColCount]);
   cxCOUNT := TcxGridDBTableSummaryItem(GradeConsulta.DataController.Summary.FooterSummaryItems.Add);
   with cxCOUNT do
   begin
      FieldName := cxCOL.DataBinding.FieldName;
      Column := TcxGridColumn(cxCOL);
      Format := ',0';
      Kind := skCount;
      Visible := True;
   end;
   //
   try // é necessário o try except porque o Insert do def irá disparar o Insert da query e dps é disparado um
      // Abort o que faz com que o processamento de outros eventos parem, por exemplo o ChecaBtn
      if recProj.bFiltroCreate then
         btnFiltro.Click;
   except
   end;
   //
   if Not qrConsulta.Active then
      qrConsulta.Open;
end;

procedure TfrmPadraoCons.Monta_SQL_Delete(SQL_Delete: String);
begin
   with qrConsulta, SQLDelete do
   begin
      Clear;
      Add(' UPDATE ' + fsTabela);
      Add('    SET DAT_001_3 = NOW()::TIMESTAMP(0) ');
      Add('      , USU_001_3 = ' + IntToStr(recProj.iUsuario));
      Add(SQL_Delete);
      Add(' WHERE ' + GradeConsulta.DataController.KeyFieldNames + ' = :' +
        GradeConsulta.DataController.KeyFieldNames);
      //
      if fbUsaEmpresa then
         Add(' AND EMP_001 = :EMP_001 ');
   end;
end;

procedure TfrmPadraoCons.GradeConsultaCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
   bValor: Boolean;
begin
   inherited;
   if (ACellViewInfo.GridRecord.IsData) and (ACellViewInfo.Item.Index = GradeConsultaMarcar.Index) then
   begin
      ACellViewInfo.Item.Focused := True;
      bValor := False;
      if not(ACellViewInfo.Value = null) then
         bValor := ACellViewInfo.Value;
      ACellViewInfo.GridRecord.Values[GradeConsultaMarcar.Index] := (not bValor);
      AHandled := True;
   end;
end;

procedure TfrmPadraoCons.GradeConsultaCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   inherited;
   DblClickGrid;
end;

procedure TfrmPadraoCons.GradeConsultaDataControllerDataChanged(Sender: TObject);
begin
   inherited;
   if fsAbriuQuery then
      ChecaBtn;
end;

procedure TfrmPadraoCons.DblClickGrid;
begin
   if fbPesquisa then
   begin
      if Assigned(fedCaller) and Assigned(GradeConsulta.Controller.FocusedRow) then
      begin
         if fsKeyFld = '' then
            fedCaller.Text := GradeConsulta.DataController.GetKeyFieldsValues
         else
            fedCaller.Text := GradeConsulta.Controller.FocusedRow.Values
              [GradeConsulta.GetColumnByFieldName(fsKeyFld).Index];
         fedCaller := Nil;
         Close;
      end;
   end
   else
      btnVisualizacao.Click;
end;

procedure TfrmPadraoCons.GradeConsultaEditing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
   inherited;
   if (AItem.Index = GradeConsultaMarcar.Index) then
      AAllow := False;
end;

procedure TfrmPadraoCons.GradeConsultaFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
   inherited;
   if fsAbriuQuery then
      ChecaBtn;
end;

procedure TfrmPadraoCons.qrConsultaAfterDelete(DataSet: TDataSet);
begin
   inherited;
   qrConsulta.Refresh;
end;

procedure TfrmPadraoCons.qrConsultaAfterOpen(DataSet: TDataSet);
begin
   inherited;
   fsAbriuQuery := True;
   FechaProcessa(frm);
end;

procedure TfrmPadraoCons.qrConsultaAfterRefresh(DataSet: TDataSet);
begin
   inherited;
   ChecaBtn;
end;

procedure TfrmPadraoCons.qrConsultaBeforeDelete(DataSet: TDataSet);
begin
   inherited;
   if GradeConsulta.ViewData.RowCount = 0 then
      Abort;
   //
   if (Not fbFuncoesBasicas) and (fbPesquisa) then
      Abort;
   //
   if fsPerguntaDel = '' then
      fsPerguntaDel := 'Deseja realmente Inativar?';
   //
   if Not Confirma(fsPerguntaDel, 'Atenção', True) then
      Abort;
end;

procedure TfrmPadraoCons.qrConsultaBeforeEdit(DataSet: TDataSet);
begin
   inherited;
   if not btnEditar.Visible then
      Abort;
   //
   if (Not fbFuncoesBasicas) and (fbPesquisa) then
      Abort;
   //
   Cria_Detalhe(GradeConsulta.DataController.GetKeyFieldsValues);
end;

procedure TfrmPadraoCons.qrConsultaBeforeInsert(DataSet: TDataSet);
begin
   inherited;
   if not btnInsert.Visible then
      Abort;
   //
   if (Not fbFuncoesBasicas) and (fbPesquisa) then
      Abort;
   //
   Cria_Detalhe(0);
end;

procedure TfrmPadraoCons.qrConsultaBeforeOpen(DataSet: TDataSet);
begin
   inherited;
   fsAbriuQuery := False;
   if fbUsaEmpresa then
      qrConsulta.ParamByName('EMP').AsInteger := recProj.iEmp;
   frm := MostraProcessa();
end;

procedure TfrmPadraoCons.SetfbColuna_Selecionar(Value: Boolean);
begin
   fbColuna_Selecionar := Value;
end;

procedure TfrmPadraoCons.SetfbPesquisa(Value: Boolean);
begin
   fbPesquisa := Value;
end;

procedure TfrmPadraoCons.SetfbUsaEmpresa(Value: Boolean);
begin
   fbUsaEmpresa := Value;
end;

procedure TfrmPadraoCons.SetfedCaller(Value: TcxDBButtonEdit);
begin
   fedCaller := Value;
end;

procedure TfrmPadraoCons.SetffrmDetalhe(Value: TComponentClass);
begin
   ffrmDetalhe := Value;
end;

procedure TfrmPadraoCons.SetfiColCount(Value: Integer);
begin
   fiColCount := Value;
end;

procedure TfrmPadraoCons.SetfsKeyFld(Value: String);
begin
   fsKeyFld := Value;
end;

procedure TfrmPadraoCons.SetfsSQL(Value: String);
begin
   fsSQL := Value;
end;

procedure TfrmPadraoCons.btnSairClick(Sender: TObject);
begin
   inherited;
   Close;
end;

end.
