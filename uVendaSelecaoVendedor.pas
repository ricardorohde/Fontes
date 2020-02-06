unit uVendaSelecaoVendedor;

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
  TfrmVendaSelecaoVendedor = class(TfrmModelo)
    qrVendedor: TUniQuery;
    cxgrVendedor: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dsVendedor: TDataSource;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    qrVendedorid_usuario: TIntegerField;
    qrVendedornome: TWideStringField;
    cxGridDBTableView1id_usuario: TcxGridDBColumn;
    cxGridDBTableView1nome: TcxGridDBColumn;
    constructor Create (sender : Tcomponent); reintroduce;
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
    id_usuario: integer;
    nome_usuario: string;
  end;

var
  frmVendaSelecaoVendedor: TfrmVendaSelecaoVendedor;

implementation

{$R *.dfm}

uses uMenu;

procedure TfrmVendaSelecaoVendedor.btCancelaClick(Sender: TObject);
begin
  inherited;
  self.Tag :=0;
  close;
end;

procedure TfrmVendaSelecaoVendedor.btConfirmaClick(Sender: TObject);
begin
  inherited;
  id_usuario := qrVendedor.FieldByName('id_usuario').asinteger;
  nome_usuario := qrVendedor.FieldByName('nome').asstring;
  Tag:=1;
  close;
end;

constructor TfrmVendaSelecaoVendedor.Create (sender : Tcomponent);
begin
  inherited Create(sender);
  qrVendedor.Open;
  if qrVendedor.RecordCount<1 then
  begin
    Application.MessageBox('Não foi encontrado nenhum usuário com a função de vendedor!', 'Atenção', MB_ICONINFORMATION + MB_OK);
    self.Tag :=0;
    abort;
  end;
end;

procedure TfrmVendaSelecaoVendedor.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if btConfirma.Enabled then btConfirma.click;
end;

procedure TfrmVendaSelecaoVendedor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_return then
  begin
    if IsGridFocused then
    begin
      if qrVendedor.RecordCount>0 then
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

function TfrmVendaSelecaoVendedor.IsGridFocused: Boolean;
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

procedure TfrmVendaSelecaoVendedor.FormShow(Sender: TObject);
begin
  inherited;
  cxgrVendedor.SetFocus;
  qrVendedor.Locate('id_usuario', recproj.iUsuario, []);
end;

end.
