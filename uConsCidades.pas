unit uConsCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoCons, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, Datasnap.DBClient, Vcl.Menus, MemDS, DBAccess, Uni, Vcl.ActnList, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ComCtrls, AdvGlowButton, Vcl.ToolWin,
  Vcl.ExtCtrls, Vcl.DBActns, cxCheckBox, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore, dxPScxCommon, cxNavigator;

type
  TfrmConsCidades = class(TfrmPadraoCons)
    qrConsultacid_001: TIntegerField;
    qrConsultacid_002: TWideStringField;
    qrConsultacid_003: TWideStringField;
    qrConsultaest_003: TWideStringField;
    qrConsultapai_002: TWideStringField;
    GradeConsultacid_001: TcxGridDBColumn;
    GradeConsultacid_002: TcxGridDBColumn;
    GradeConsultacid_003: TcxGridDBColumn;
    GradeConsultaest_003: TcxGridDBColumn;
    GradeConsultapai_002: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsCidades: TfrmConsCidades;

implementation

{$R *.dfm}

uses uDetalheCidades, uMenu, uFuncoes;

procedure TfrmConsCidades.FormCreate(Sender: TObject);
begin
  inherited;
  frmDetalhe := TfrmDetalheCidades;
  sTabela := 'CIDADES';
end;

procedure TfrmConsCidades.FormShow(Sender: TObject);
begin
  bUsaEmpresa := False;
  inherited;
  btnExcluir.Visible := False;
end;

end.
