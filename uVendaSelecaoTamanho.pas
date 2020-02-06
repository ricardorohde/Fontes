unit uVendaSelecaoTamanho;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  Data.DB, MemDS, DBAccess, Uni, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Vcl.StdCtrls, Vcl.DBCtrls, AdvGlowButton;

type
  TfrmVendaSelecaoTamanho = class(TfrmModelo)
    qrTamanhoMaterial: TUniQuery;
    qrTamanhoMaterialtamanho: TWideMemoField;
    qrTamanhoMaterialdesc_tamanho: TWideStringField;
    qrTamanhoMaterialvalor: TFloatField;
    cxgrTamnhoMaterial: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dsTamanhoMaterial: TDataSource;
    cxGridDBTableView1tamanho: TcxGridDBColumn;
    cxGridDBTableView1desc_tamanho: TcxGridDBColumn;
    cxGridDBTableView1valor: TcxGridDBColumn;
    btCancela: TAdvGlowButton;
    pnTopo: TPanel;
    DBText1: TDBText;
    qrTamanhoMaterialdesc: TWideStringField;
    qrTamanhoMaterialpadrao: TBooleanField;
    btConfirma: TAdvGlowButton;
    constructor Create (sender : Tcomponent; id_material: integer);
    procedure btCancelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btConfirmaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    function IsGridFocused: Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
    tamanho: string;
  end;

var
  frmVendaSelecaoTamanho: TfrmVendaSelecaoTamanho;

implementation

{$R *.dfm}

uses uMenu;

procedure TfrmVendaSelecaoTamanho.btCancelaClick(Sender: TObject);
begin
  inherited;
  self.Tag :=0;
  close;
end;

procedure TfrmVendaSelecaoTamanho.btConfirmaClick(Sender: TObject);
begin
  inherited;
  if qrTamanhoMaterial.RecordCount>0 then
  tamanho := qrTamanhoMaterial.FieldByName('tamanho').asstring;
  Tag:=1;
  close;
end;

constructor TfrmVendaSelecaoTamanho.Create (sender : Tcomponent; id_material: integer);
begin
  inherited Create(sender);
  qrTamanhoMaterial.Close;
  qrTamanhoMaterial.ParamByName('id_material').AsInteger := id_material;
  qrTamanhoMaterial.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrTamanhoMaterial.Open;
  if qrTamanhoMaterial.RecordCount<1 then
  begin
    Application.MessageBox('Produto não encontrado!', 'Atenção', MB_ICONINFORMATION + MB_OK);
    self.Tag :=0;
    abort;
  end;
end;

procedure TfrmVendaSelecaoTamanho.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if btConfirma.Enabled then btConfirma.click;
end;

procedure TfrmVendaSelecaoTamanho.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then
  begin
    if IsGridFocused then
    begin
      if qrTamanhoMaterial.RecordCount>0 then
        btConfirma.Click
      else
        Perform(WM_NEXTDLGCTL, 0, 0);
    end
    else
      Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else
  if key=VK_ESCAPE then btCancela.Click;
end;

function TfrmVendaSelecaoTamanho.IsGridFocused: Boolean;
var
 AContainer: TcxCustomEdit;
begin
 Result := Screen.ActiveControl is TcxGridSite;
 if not Result then
 begin
   AContainer := nil;
   if Screen.ActiveControl is TcxCustomEdit then
   begin
     AContainer := TcxCustomEdit(Screen.ActiveControl);
     Result := True;
   end
   else
     if (Screen.ActiveControl.Parent <> nil) and
       (Screen.ActiveControl.Parent is TcxCustomEdit) then
     begin
       AContainer := TcxCustomEdit(Screen.ActiveControl.Parent);
       Result := True;
     end;
   Result := Result and (AContainer.Parent is TcxGridSite);
 end;
end;

procedure TfrmVendaSelecaoTamanho.FormShow(Sender: TObject);
begin
  inherited;
  cxgrTamnhoMaterial.SetFocus;
  qrTamanhoMaterial.Locate('padrao', true, []);
end;

end.
