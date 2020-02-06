unit uConsUnidades;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoCons, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
   cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, Datasnap.DBClient,
   Vcl.Menus, MemDS, DBAccess, Uni, Vcl.DBActns, Vcl.ActnList, cxGridLevel, cxGridCustomTableView, cxGridTableView,
   cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, dxPSGlbl,
   dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
   dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
   dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
   dxPScxExtEditorProducers, dxPSCore, dxPScxCommon, cxNavigator;

type
   TfrmConsUnidades = class(TfrmPadraoCons)
      qrConsultauni_001: TIntegerField;
      qrConsultaemp_001: TIntegerField;
      qrConsultauni_002: TWideStringField;
      qrConsultauni_003: TWideStringField;
      GradeConsultauni_001: TcxGridDBColumn;
      GradeConsultauni_002: TcxGridDBColumn;
      GradeConsultauni_003: TcxGridDBColumn;
      qrConsultadat_001_3: TDateTimeField;
      GradeConsultadat_001_3: TcxGridDBColumn;
      procedure FormCreate(Sender: TObject);
      procedure qrConsultaBeforeDelete(DataSet: TDataSet);
      procedure act_FiltroExecute(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   frmConsUnidades: TfrmConsUnidades;

implementation

{$R *.dfm}

uses uDetalheUnidades, uMenu, uFuncoes, Funcao_DB, uDefUnidades;

procedure TfrmConsUnidades.act_FiltroExecute(Sender: TObject);
var
   frmDef: TfrmDefUnidades;
   sWhere: String;
begin
   inherited;
   frmDef := TfrmDefUnidades.Create(Nil);
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
            qrConsulta.SQL.Add(' AND UNI.UNI_001 = 0 ');
         //
         if iRet = 1 then
         begin
            if (cbPesquisa.ItemIndex = 0) then
            begin
               qrConsulta.SQL.Add(' AND UNI.UNI_001 = :UNI_001 ');
               qrConsulta.ParamByName('UNI_001').AsString := edPesquisa.Text;
            end
            else
            begin
               if (cbPesquisa.ItemIndex = 1) and (edPesquisa.Text <> '') then
                  sWhere := sWhere + ' AND UNI.UNI_002 LIKE (''' + edPesquisa.Text + '%' + ''') ';
               //
               if (edSigla.Text) <> '' then
                  sWhere := sWhere + ' AND UNI.UNI_003 LIKE (''' + edSigla.Text + '%' + ''') ';
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

procedure TfrmConsUnidades.FormCreate(Sender: TObject);
begin
   sTabela := 'UNIDADES';
   frmDetalhe := TfrmDetalheUnidades;
   inherited;

end;

procedure TfrmConsUnidades.qrConsultaBeforeDelete(DataSet: TDataSet);
var
   Index: Integer;
   qrAux: TUniQuery;
   sJust: string;
begin
   inherited;
   //
   Index := GradeConsulta.Controller.FocusedRow.Values[GradeConsultauni_001.Index];
   //
   qrAux := TUniQuery.Create(Nil);
   with qrAux, SQL do
   begin
      Connection := frmMenu.Conexao;
      Add(' SELECT DAT_001_3 ');
      Add(' FROM UNIDADES ');
      Add(' WHERE EMP_001 = :EMP ');
      Add('   AND UNI_001 = :UNI ');
      ParamByName('EMP').AsInteger := recProj.iEmp;
      ParamByName('UNI').AsInteger := Index;
      Open;
      //
      if Not Fields[0].IsNull then
      begin
         Application.MessageBox('A Unidade está inativa.', 'Atenção', 0 + 64);
         FreeAndNil(qrAux);
         Abort;
      end;
   end;
   FreeAndNil(qrAux);
   //
   sJust := Chama_Justificativa('Justificativa da Inativação da Unidade', 'Unidade',
     qrConsultauni_001.AsString + ' - ' + qrConsultauni_002.AsString);
   //
   if sJust = '' then
   begin
      Application.MessageBox('É necessário uma justificativa.', 'Atenção', 0 + 64);
      Abort;
   end;
   //
   GRAVA_LOG_CANCELAMENTO(25, Index, recProj.iusuario, DataServer(frmMenu.Conexao), sJust);
end;

end.
