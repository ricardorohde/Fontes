unit uControleDeliverySelecaoEntregador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.ExtCtrls,
  Vcl.StdCtrls, AdvPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, MemDS, DBAccess, Uni, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxContainer, cxCheckBox, dxGDIPlusClasses;

type
  TfrmControleDeliverySelecaoEntregador = class(TForm)
    AdvPanel1: TAdvPanel;
    pnBotoes: TFlowPanel;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qrEntregador: TUniQuery;
    dsEntregador: TDataSource;
    qrEntregadorid_usuario: TIntegerField;
    qrEntregadornome: TWideStringField;
    cxGrid1DBTableView1id_usuario: TcxGridDBColumn;
    cxGrid1DBTableView1nome: TcxGridDBColumn;
    ckImprimeRecibo: TcxCheckBox;
    Image1: TImage;
    constructor Create(sender : Tcomponent ; id_venda :integer);
    procedure btCancelaClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
  private
    { Private declarations }
    id_venda : integer;
  public
    { Public declarations }
  end;

var
  frmControleDeliverySelecaoEntregador: TfrmControleDeliverySelecaoEntregador;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uControleDeliveryFechamento;

procedure TfrmControleDeliverySelecaoEntregador.btCancelaClick(Sender: TObject);
begin
  tag:=0;
  close;
end;

procedure TfrmControleDeliverySelecaoEntregador.btConfirmaClick(
  Sender: TObject);
var  str_sql : string;
begin
  if qrEntregador.Active then
  begin
    if qrEntregador.RecordCount>0 then
    begin
      str_sql := format('update venda set id_entregador=%d, sit_001=6, data_saida=localtimestamp where ven_001=%d and emp_001=%d',[
                         qrEntregador.FieldByName('id_usuario').AsInteger, id_venda, recproj.iEmp]);
      ExecutaComandoSQL(str_sql);
    end
    else
    begin
      Application.MessageBox('Não foi selecionado o entregador!', 'Atenção', MB_ICONINFORMATION);
      abort;
    end;
  end;
  if ckImprimeRecibo.Checked then
  begin
    frmControleDeliveryFechamento := TfrmControleDeliveryFechamento.Create(self,id_venda, false );
    frmControleDeliveryFechamento.ImprimirRelatorio(true);
    frmControleDeliveryFechamento.Free;
  end;

  tag:=1;
  close;
end;

constructor TfrmControleDeliverySelecaoEntregador.Create(sender : Tcomponent ; id_venda :integer);
begin
  inherited Create(sender);
  self.id_venda := id_venda;
  qrEntregador.Open;
  qrEntregador.First;
end;

end.
