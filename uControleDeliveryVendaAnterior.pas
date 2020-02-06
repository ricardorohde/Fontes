unit uControleDeliveryVendaAnterior;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, MemDS, DBAccess,
  Uni, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls, AdvPanel,
  Vcl.StdCtrls, Vcl.DBCtrls, cxCheckBox, AdvGlowButton;

  type ItemVenda = Record
    id_venda : integer;
    item_venda : integer;
    item_fracionado : integer;
    possui_opcional : boolean;
  End;

type
  TfrmControleDeliveryVendaAnterior = class(TfrmModelo)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qrVendasCliente: TUniQuery;
    dsVendasCliente: TDataSource;
    qrVendasClienteid_empresa: TIntegerField;
    qrVendasClienteid_venda: TIntegerField;
    qrVendasClientenro_item: TIntegerField;
    qrVendasClientenome_cliente: TWideStringField;
    qrVendasClienteid_cliente: TIntegerField;
    qrVendasClienteqtdevenda: TFloatField;
    qrVendasClientevlrvenda: TFloatField;
    qrVendasClienteacrescimo: TFloatField;
    qrVendasClientedescricao_item: TWideStringField;
    qrVendasClienteobservacao: TWideStringField;
    qrVendasClientecod_status: TIntegerField;
    qrVendasClientestatus: TWideMemoField;
    qrVendasClientedesconto: TFloatField;
    qrVendasClientevalor_desconto: TFloatField;
    qrVendasClientevalor_total: TFloatField;
    qrVendasClienteordem_item: TLargeintField;
    qrVendasClienteid_material: TIntegerField;
    qrVendasClientedesc_tamanho: TWideStringField;
    qrVendasClienteitem_fracionado: TIntegerField;
    cxGrid1DBTableView1id_venda: TcxGridDBColumn;
    cxGrid1DBTableView1nro_item: TcxGridDBColumn;
    cxGrid1DBTableView1qtdevenda: TcxGridDBColumn;
    cxGrid1DBTableView1vlrvenda: TcxGridDBColumn;
    cxGrid1DBTableView1acrescimo: TcxGridDBColumn;
    cxGrid1DBTableView1descricao_item: TcxGridDBColumn;
    cxGrid1DBTableView1observacao: TcxGridDBColumn;
    cxGrid1DBTableView1valor_desconto: TcxGridDBColumn;
    cxGrid1DBTableView1valor_total: TcxGridDBColumn;
    cxGrid1DBTableView1desc_tamanho: TcxGridDBColumn;
    cxGrid1DBTableView1item_fracionado: TcxGridDBColumn;
    DBText1: TDBText;
    qrVendasClientenro_venda: TIntegerField;
    cxGrid1DBTableView1nro_venda: TcxGridDBColumn;
    cxGrid1DBTableView1Selecao: TcxGridDBColumn;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    qrVendasClienteb_venda_tamanho: TBooleanField;
    qrVendasClientedesc_venda: TWideStringField;
    cxGrid1DBTableView1desc_venda: TcxGridDBColumn;
    qrVendasClientepossui_opcional: TBooleanField;
    qrVendasClientedata_venda: TDateTimeField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    qrVendasClientedata_hora_lancamento: TDateTimeField;
    constructor Create(sender: tcomponent; id_cliente, id_venda_atual : integer);
    procedure btCancelaClick(Sender: TObject);
    procedure qrVendasClienteAfterOpen(DataSet: TDataSet);
    procedure  SelecionaRegistros;
    procedure btConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ItensSelecionados, ItensSelecionadosFracionados:  TArray<ItemVenda>;
  end;

var
  frmControleDeliveryVendaAnterior: TfrmControleDeliveryVendaAnterior;

implementation

{$R *.dfm}

uses uMenu;


procedure  TfrmControleDeliveryVendaAnterior.SelecionaRegistros;
var iRec, i, i_fracionados : integer;
    selecionado : boolean;
    item : ItemVenda;
begin
  inherited;
  //Limpa os arrays antes...
  SetLength(ItensSelecionados,0);
  SetLength(ItensSelecionadosFracionados,0);

  SetLength(ItensSelecionados,qrVendasCliente.RecordCount);
  SetLength(ItensSelecionadosFracionados,qrVendasCliente.RecordCount);

  qrVendasCliente.First;
  i:=0;
  i_fracionados:=0;
  while not qrVendasCliente.eof do
  begin
    iRec := cxGrid1DBTableView1.Controller.SelectedRecords[0].RecordIndex;
    //Registro selecionado, coluna 0 (coluna de seleção)
    if VarIsNull(cxGrid1DBTableView1.DataController.Values[iRec, 0]) then
      selecionado := false
    else
    begin
      selecionado := cxGrid1DBTableView1.DataController.Values[iRec, 0];
    end;

    if selecionado then
    begin
      item.id_venda := qrVendasCliente.FieldByName('id_venda').AsInteger;
      item.item_venda := qrVendasCliente.FieldByName('nro_item').AsInteger;
      item.item_fracionado := qrVendasCliente.FieldByName('item_fracionado').AsInteger;
      item.possui_opcional := qrVendasCliente.FieldByName('possui_opcional').AsBoolean;
      if qrVendasCliente.FieldByName('item_fracionado').AsInteger=0 then
      begin
        ItensSelecionados[i] := item;
        i:=i+1;
      end
      else
      begin
        ItensSelecionadosFracionados[i_fracionados] := item;
        i_fracionados:=i_fracionados+1;
      end;
    end;
    qrVendasCliente.next;
  end;

  SetLength(ItensSelecionados,i);
  SetLength(ItensSelecionadosFracionados,i_fracionados);

end;

procedure TfrmControleDeliveryVendaAnterior.btCancelaClick(Sender: TObject);
begin
  inherited;
  self.Tag := 0;
  close;
end;

procedure TfrmControleDeliveryVendaAnterior.btConfirmaClick(Sender: TObject);
begin
  inherited;
  SelecionaRegistros;
  if not ((Length(ItensSelecionados)>0) or (Length(ItensSelecionadosFracionados)>0)) then
  begin
    Application.MessageBox('Nenhum item selecionado!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end
  else
  begin
    self.Tag:=1;
    self.close;
  end;
end;

constructor TfrmControleDeliveryVendaAnterior.Create(sender: TComponent; id_cliente, id_venda_atual: Integer);
begin
  inherited Create (sender);
  qrVendasCliente.Close;
  qrVendasCliente.ParamByName('id_cliente').AsInteger := id_cliente;
  qrVendasCliente.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
  qrVendasCliente.ParamByName('id_venda_atual').AsInteger := id_venda_atual;

  qrVendasCliente.open;
  if qrVendasCliente.RecordCount<1 then
  begin
    Application.MessageBox('Não existem vendas anteriores para este cliente!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;

end;

procedure TfrmControleDeliveryVendaAnterior.qrVendasClienteAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  //cxGrid1DBTableView1.ViewData.Expand(false);
end;

end.
