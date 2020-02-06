unit uConsCeps;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoCons, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
   cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, Datasnap.DBClient,
   Vcl.Menus, MemDS, DBAccess, Uni, Vcl.DBActns, Vcl.ActnList, cxGridLevel, cxGridCustomTableView, cxGridTableView,
   cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, dxPSGlbl, dxPSUtl,
   dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
   dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
   dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
   dxPSCore, dxPScxCommon, cxNavigator;

type
   TfrmConsCeps = class(TfrmPadraoCons)
      qrConsultacep_001: TIntegerField;
      qrConsultacep_002: TWideStringField;
      qrConsultacep_003: TWideStringField;
      qrConsultacep_004: TWideStringField;
      qrConsultacid_002: TWideStringField;
      GradeConsultacep_002: TcxGridDBColumn;
      GradeConsultacep_003: TcxGridDBColumn;
      GradeConsultacep_004: TcxGridDBColumn;
      GradeConsultacid_002: TcxGridDBColumn;
      GradeConsultacep_001: TcxGridDBColumn;
      qrConsultacid_001: TIntegerField;
      qrConsultaest_003: TWideStringField;
      qrConsultapai_002: TWideStringField;
      GradeConsultaest_003: TcxGridDBColumn;
      GradeConsultapai_002: TcxGridDBColumn;
      procedure FormCreate(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure act_FiltroExecute(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   frmConsCeps: TfrmConsCeps;

implementation

{$R *.dfm}

uses uDetalheCeps, uDefCeps;

procedure TfrmConsCeps.act_FiltroExecute(Sender: TObject);
var
   frmDef: TfrmDefCeps;
   sWhere: String;
begin
   inherited;
   frmDef := TfrmDefCeps.Create(Nil);
   with frmDef do
   begin
      btnIncluir.Visible := btnInsert.Visible;
      cbPesquisa.Items.Add('Código');
      cbPesquisa.Items.Add('Bairro');
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
            qrConsulta.SQL.Add(' WHERE CEP.CEP_001 = 0 ');
         //
         if iRet = 1 then
         begin
            if (cbPesquisa.ItemIndex = 0) then
            begin
               qrConsulta.SQL.Add(' WHERE CEP.CEP_001 = :CEP_001 ');
               qrConsulta.ParamByName('CEP_001').AsString := edPesquisa.Text;
            end
            else
            begin
               if (edPesquisa.Text <> '') then
                  sWhere := sWhere + ' AND CEP.CEP_003 LIKE (''' + edPesquisa.Text + '%' + ''') ';
               //
               if (edCep.Text <> '') then
                  sWhere := sWhere + ' AND CEP.CEP_002 LIKE (''' + edCep.Text + '%' + ''') ';
               //
               if (edCidade.Text <> '') then
                  sWhere := sWhere + ' AND CEP.CID_001 = ' + edCidade.Text;
               //
               if sWhere <> '' then
                  qrConsulta.SQL.Add(' WHERE ' + Copy(sWhere, 5, Length(sWhere)));
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

procedure TfrmConsCeps.FormCreate(Sender: TObject);
begin
   inherited;
   frmDetalhe := TfrmDetalheCeps;
   sTabela := 'CEPS';
end;

procedure TfrmConsCeps.FormShow(Sender: TObject);
begin
   bUsaEmpresa := False;
   inherited;
   btnExcluir.Action := nil;
end;

end.
