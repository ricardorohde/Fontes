unit uVendaSelecaoPreco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  Data.DB, MemDS, DBAccess, Uni, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Vcl.StdCtrls, Vcl.DBCtrls, AdvGlowButton, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfrmVendaSelecaoPreco = class(TfrmModelo)
    qrTamanhoMaterial: TUniQuery;
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
    btConfirma: TAdvGlowButton;
    qrTamanhoMaterialdesc: TWideStringField;
    qrTamanhoMaterialdescricao: TWideStringField;
    qrTamanhoMaterialvalor: TFloatField;
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
    valor: double;
  end;

var
  frmVendaSelecaoPreco: TfrmVendaSelecaoPreco;

implementation

{$R *.dfm}

uses uMenu;

procedure TfrmVendaSelecaoPreco.btCancelaClick(Sender: TObject);
begin
  inherited;
  self.Tag :=0;
  close;
end;

procedure TfrmVendaSelecaoPreco.btConfirmaClick(Sender: TObject);
begin
  inherited;
  if qrTamanhoMaterial.RecordCount>0 then
  begin
    valor := qrTamanhoMaterial.FieldByName('valor').asfloat;
    if valor<=0 then
    begin
      application.MessageBox('Valor inválido!', 'Atenção', MB_ICONINFORMATION);
    end
    else
    begin
      Tag:=1;
      close;
    end;
  end;
end;

constructor TfrmVendaSelecaoPreco.Create (sender : Tcomponent; id_material: integer);
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
  end
  else if qrTamanhoMaterial.RecordCount = 1 then
    btConfirma.Click;
end;

procedure TfrmVendaSelecaoPreco.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if btConfirma.Enabled then btConfirma.click;
end;

procedure TfrmVendaSelecaoPreco.FormKeyDown(Sender: TObject; var Key: Word;
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

function TfrmVendaSelecaoPreco.IsGridFocused: Boolean;
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

procedure TfrmVendaSelecaoPreco.FormShow(Sender: TObject);
begin
  inherited;
  cxgrTamnhoMaterial.SetFocus;
end;

end.
