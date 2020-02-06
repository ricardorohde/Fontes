unit uConsMateriais;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoCons, cxGraphics, cxControls, cxLookAndFeels,
   cxLookAndFeelPainters,
   cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, Datasnap.DBClient,
   Vcl.Menus, MemDS, DBAccess, Uni, Vcl.DBActns, Vcl.ActnList, cxGridLevel, cxGridCustomTableView, cxGridTableView,
   cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, dxPSGlbl,
   dxPSUtl,
   dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
   dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
   dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
   dxPScxExtEditorProducers,
   dxPSCore, dxPScxCommon, cxNavigator, cxImageComboBox, Vcl.StdCtrls;

type
   TfrmConsMateriais = class(TfrmPadraoCons)
      GradeConsultamat_001: TcxGridDBColumn;
      GradeConsultamat_003: TcxGridDBColumn;
      GradeConsultauni_002: TcxGridDBColumn;
      GradeConsultamat_008: TcxGridDBColumn;
      GradeConsultamat_005: TcxGridDBColumn;
      GradeConsultamtp_002: TcxGridDBColumn;
      GradeConsultamat_009: TcxGridDBColumn;
      GradeConsultadat_001_3: TcxGridDBColumn;
    qrConsultamat_001: TIntegerField;
    qrConsultaemp_001: TIntegerField;
    qrConsultamat_002: TWideStringField;
    qrConsultamat_003: TWideStringField;
    qrConsultauni_002: TWideStringField;
    qrConsultamat_004: TWideStringField;
    qrConsultamat_005: TWideStringField;
    qrConsultamat_006: TFloatField;
    qrConsultadat_001_3: TDateTimeField;
    qrConsultamat_009: TWideMemoField;
    qrConsultamtp_002: TWideStringField;
    qrConsultamat_008: TFloatField;
    GradeConsultamat_004: TcxGridDBColumn;
    qrConsultamat_012: TFloatField;
    GradeConsultamat_012: TcxGridDBColumn;
    qrConsultasit_001: TIntegerField;
    GradeConsultasit_001: TcxGridDBColumn;
    qrConsultamar_001: TIntegerField;
    qrConsultamar_002: TWideStringField;
    qrConsultagar_001: TIntegerField;
    qrConsultagar_002: TWideStringField;
    qrConsultaval_001: TIntegerField;
    qrConsultaval_002: TWideStringField;
    GradeConsultamar_002: TcxGridDBColumn;
    GradeConsultagar_002: TcxGridDBColumn;
    GradeConsultaval_002: TcxGridDBColumn;
    qrConsultacat_001: TIntegerField;
    qrConsultacat_002: TWideStringField;
    GradeConsultacat_002: TcxGridDBColumn;
    qrConsultamat_014: TFloatField;
    qrConsultamat_015: TFloatField;
    qrConsultaestoque: TFloatField;
    qrConsultareserva: TFloatField;
    qrConsultadisponivel: TFloatField;
    GradeConsultamat_014: TcxGridDBColumn;
    GradeConsultamat_015: TcxGridDBColumn;
    GradeConsultaestoque: TcxGridDBColumn;
    GradeConsultareserva: TcxGridDBColumn;
    GradeConsultadisponivel: TcxGridDBColumn;
    qrConsultamat_018: TFloatField;
    GradeConsultamat_018: TcxGridDBColumn;
    act_Etiqueta: TAction;
    Etiqueta1: TMenuItem;
    qrConsultamat_020: TFloatField;
    GradeConsultamat_020: TcxGridDBColumn;
    qrConsultavlrestoque: TFloatField;
    GradeConsultavlrestoque: TcxGridDBColumn;
    qrConsultamat_021: TIntegerField;
    GradeConsultamat_021: TcxGridDBColumn;
    Button1: TButton;
    Button2: TButton;
      procedure FormCreate(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure qrConsultaBeforeDelete(DataSet: TDataSet);
      procedure act_FiltroExecute(Sender: TObject);
    procedure dsConsultaDataChange(Sender: TObject; Field: TField);
    procedure GradeConsultaFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure qrConsultaAfterRefresh(DataSet: TDataSet);
    procedure qrConsultaCalcFields(DataSet: TDataSet);
    procedure act_EtiquetaExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
   private
    procedure ChecaBtns;
      { Private declarations }
   public
      { Public declarations }
   end;

var
   frmConsMateriais: TfrmConsMateriais;

implementation

{$R *.dfm}

uses uDetalheMateriais, uMenu, Funcao_DB, uDefMateriais, uEtiquetaMaterial,
  Funcoes_XE, uFuncoes, uDetalheProduto;

procedure TfrmConsMateriais.act_EtiquetaExecute(Sender: TObject);
begin
  inherited;
   Application.CreateForm(TfrmEtiquetaMaterial, frmEtiquetaMaterial);
   frmEtiquetaMaterial.ShowModal;
   FreeAndNil(frmEtiquetaMaterial);
end;

procedure TfrmConsMateriais.act_FiltroExecute(Sender: TObject);
var
   frmDef: TfrmDefMateriais;
   sWhere: String;
begin
   inherited;
   frmDef := TfrmDefMateriais.Create(Nil);
   with frmDef do
   begin
      btnIncluir.Visible := btnInsert.Visible;
      cbPesquisa.Items.Add('Código');
      cbPesquisa.Items.Add('Descrição');
      cbPesquisa.ItemIndex := 1;
      //
      iRet := frmDef.ShowModal;
      //
      if (iRet in [1, 9]) then
      begin
         qrConsulta.Close;
         qrConsulta.SQL.Clear;
         qrConsulta.SQL.Add(sSQL);
         if iRet = 9 then
            qrConsulta.SQL.Add(' AND MAT.MAT_001 = 0 ');
         //
         if iRet = 1 then
         begin
            if (cbPesquisa.ItemIndex = 0) then
            begin
               qrConsulta.SQL.Add(' AND MAT.MAT_001 = :MAT_001 ');
               qrConsulta.ParamByName('MAT_001').AsString := edPesquisa.Text;
            end
            else
            begin
               if (cbPesquisa.ItemIndex = 1) and (edPesquisa.Text <> '') then
                  sWhere := sWhere + ' AND MAT.MAT_003 LIKE (''' + edPesquisa.Text + '%' + ''') ';
               //
               if (edUnidade.Text) <> '' then
                  sWhere := sWhere + ' AND MAT.UNI_001 = ' + IntToStr(iUnidade);
               //
               if (ckAtivo.Items[0].Checked) and (Not ckAtivo.Items[1].Checked) then
                  sWhere := sWhere + ' AND MAT.DAT_001_3 IS NULL';
               //
               if (ckAtivo.Items[1].Checked) and (Not ckAtivo.Items[0].Checked) then
                  sWhere := sWhere + ' AND MAT.DAT_001_3 IS NOT NULL';
               //
               qrConsulta.SQL.Add(sWhere);
            end;
         end;
         //
         qrConsulta.Open;
         //
         if iRet = 9 then
            qrConsulta.Append;
      end;
      //
      if (iRet in [2, 8]) and (Not qrConsulta.Active) then
         Self.Close;
      //
   end;
   FreeAndNil(frmDef);
end;

procedure TfrmConsMateriais.Button1Click(Sender: TObject);
begin
  inherited;
  if  qrConsulta.Active then
  begin
    if qrConsulta.RecordCount>0 then
    begin
      frmDetalheProduto := TfrmDetalheProduto.Create(self,qrConsulta.FieldByName('mat_001').AsInteger);
      frmDetalheProduto.ShowModal;
      frmDetalheProduto.Free;
    end;
  end;
end;

procedure TfrmConsMateriais.Button2Click(Sender: TObject);
begin
  inherited;
  if qrConsulta.Active then
    qrConsulta.Close
  else
    qrConsulta.open;
end;

procedure TfrmConsMateriais.FormCreate(Sender: TObject);
begin
   sTabela := 'MATERIAIS';
   frmDetalhe := TfrmDetalheMateriais;
   inherited;

end;

procedure TfrmConsMateriais.FormShow(Sender: TObject);
begin
   Formatar_Float(qrConsultamat_008);
   Formatar_Float(qrConsultamat_012);
   Formatar_Float(qrConsultamat_014);
   Formatar_Float(qrConsultamat_015);
   Formatar_Float(qrConsultamat_018);
   Formatar_Float(qrConsultaestoque);
   Formatar_Float(qrConsultareserva);
   Formatar_Float(qrConsultadisponivel);
   Formatar_Float(qrConsultamat_020);
   Formatar_Float(qrConsultavlrestoque);
   inherited;
end;

procedure TfrmConsMateriais.GradeConsultaFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
   ChecaBtns;
end;

procedure TfrmConsMateriais.ChecaBtns;
begin
   btnEditar.Enabled  := (GradeConsulta.ViewData.RowCount > 0) and (qrConsultasit_001.AsInteger in [4]);
   btnExcluir.Enabled := (GradeConsulta.ViewData.RowCount > 0) and (qrConsultasit_001.AsInteger in [4]);
end;

procedure TfrmConsMateriais.dsConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
   ChecaBtns;
end;

procedure TfrmConsMateriais.qrConsultaAfterRefresh(DataSet: TDataSet);
begin
  inherited;
   ChecaBtns;
end;

procedure TfrmConsMateriais.qrConsultaBeforeDelete(DataSet: TDataSet);
var
   Index: Integer;
   qrAux: TUniQuery;
   sJust: string;
begin
   inherited;
   //
   Index := GradeConsulta.Controller.FocusedRow.Values[GradeConsultamat_001.Index];
   //
   qrAux := TUniQuery.Create(Nil);
   with qrAux, SQL do
   begin
      Connection := frmMenu.conexao;
      Add(' SELECT DAT_001_3 ');
      Add(' FROM MATERIAIS ');
      Add(' WHERE EMP_001 = :EMP ');
      Add('   AND MAT_001 = :MAT ');
      ParamByName('EMP').AsInteger := recProj.iEmp;
      ParamByName('MAT').AsInteger := Index;
      Open;
      //
      if Not Fields[0].IsNull then
      begin
         Application.MessageBox('O Material está inativo.', 'Atenção', 0 + 64);
         FreeAndNil(qrAux);
         Abort;
      end;
   end;
   //
   sJust := Chama_Justificativa('Justificativa da Inativação do Material', 'Material',
   qrConsultamat_001.AsString + ' - ' + qrConsultamat_003.AsString);
   //
   if sJust = '' then
   begin
      Application.MessageBox('É necessário uma justificativa.', 'Atenção', 0 + 64);
      Abort;
   end;
   //
   with qrAux, SQL do
   begin
      Close;
      Clear;
      Add(' UPDATE MATERIAIS ');
      Add('    SET SIT_001 = 3 ');
      Add('      , dat_001_2 = :DATA');
      Add('      , dat_001_3 = :DATA');
      Add('      , usu_001_2 = :USU');
      Add(' WHERE EMP_001 = :EMP_001 ');
      Add('   AND MAT_001 = :MAT_001 ');
      ParamByName('EMP_001').AsInteger := recProj.iEmp;
      ParamByName('MAT_001').AsInteger := qrConsultaMat_001.AsInteger;
      ParamByName('DATA').AsDateTime   := DataServer(frmMenu.conexao);
      ParamByName('USU').AsInteger     := RecProj.iUsuario;
      ExecSQL;
   end;
   //
   FreeAndNil(qrAux);
   //
   GRAVA_LOG_CANCELAMENTO(15, Index, recProj.iUsuario, DataServer(frmMenu.conexao), sJust);
   //
   qrConsulta.Refresh;
end;

procedure TfrmConsMateriais.qrConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
   qrConsultadisponivel.AsFloat := (qrConsultaestoque.AsFloat - qrConsultareserva.AsFloat);
   qrConsultavlrestoque.AsFloat := (qrConsultamat_008.AsFloat * qrConsultadisponivel.AsFloat);
end;

end.
