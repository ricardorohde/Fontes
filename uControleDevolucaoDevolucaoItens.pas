unit uControleDevolucaoDevolucaoItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Data.DB, MemDS, DBAccess,
  Uni, Vcl.ExtCtrls, AdvPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, AdvGlowButton, Vcl.StdCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Datasnap.DBClient, System.Math,
  Vcl.DBCtrls, AdvGroupBox, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TfrmControleDevolucaoDevolucaoItens = class(TfrmModelo)
    qrVendaItem: TUniQuery;
    dsVendaItem: TDataSource;
    qrVendaItemid_venda: TIntegerField;
    qrVendaItemqtdevenda: TFloatField;
    qrVendaItemvlrvenda: TFloatField;
    qrVendaItemdescricao_item: TWideStringField;
    qrVendaItemobservacao: TWideStringField;
    qrVendaItemdesconto: TFloatField;
    qrVendaItemvalor_total: TFloatField;
    qrVendaItemid_material: TIntegerField;
    qrVendaItemitem_fracionado: TIntegerField;
    qrVendaItemb_venda_tamanho: TBooleanField;
    qrVendaItemtamanho: TWideStringField;
    qrVendaItemsit_001: TIntegerField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Label1: TLabel;
    btSelecionarItem: TAdvGlowButton;
    btRemoverOp: TAdvGlowButton;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    qrVendaItemquantidade_devolvida: TFloatField;
    qrVendaItemitem: TIntegerField;
    cxGrid1DBTableView1item: TcxGridDBColumn;
    cxGrid1DBTableView1id_venda: TcxGridDBColumn;
    cxGrid1DBTableView1qtdevenda: TcxGridDBColumn;
    cxGrid1DBTableView1vlrvenda: TcxGridDBColumn;
    cxGrid1DBTableView1descricao_item: TcxGridDBColumn;
    cxGrid1DBTableView1observacao: TcxGridDBColumn;
    cxGrid1DBTableView1desconto: TcxGridDBColumn;
    cxGrid1DBTableView1valor_total: TcxGridDBColumn;
    cxGrid1DBTableView1id_material: TcxGridDBColumn;
    cxGrid1DBTableView1item_fracionado: TcxGridDBColumn;
    cxGrid1DBTableView1b_venda_tamanho: TcxGridDBColumn;
    cxGrid1DBTableView1tamanho: TcxGridDBColumn;
    cxGrid1DBTableView1sit_001: TcxGridDBColumn;
    cxGrid1DBTableView1quantidade_devolvida: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Label2: TLabel;
    cdsItensDevolucao: TClientDataSet;
    cdsItensDevolucaoid_vendaitem: TIntegerField;
    cdsItensDevolucaodescricao: TStringField;
    cdsItensDevolucaoquantidade_dev: TFloatField;
    cdsItensDevolucaoquantidade_dev_anterior: TFloatField;
    cdsItensDevolucaovalor_unitario: TFloatField;
    cdsItensDevolucaoquantidade: TFloatField;
    dsItensDevolucao: TDataSource;
    cxGridDBTableView1id_vendaitem: TcxGridDBColumn;
    cxGridDBTableView1descricao: TcxGridDBColumn;
    cxGridDBTableView1quantidade_devolucao: TcxGridDBColumn;
    cxGridDBTableView1quantidade_dev_anterior: TcxGridDBColumn;
    cxGridDBTableView1valor_unitario: TcxGridDBColumn;
    cxGridDBTableView1quantidade: TcxGridDBColumn;
    cxGridDBTableView1valor_total: TcxGridDBColumn;
    cdsItensDevolucaovalor_total: TFloatField;
    AdvGroupBox3: TAdvGroupBox;
    DBText1: TDBText;
    Label3: TLabel;
    DBText2: TDBText;
    cdsItensDevolucaototal: TAggregateField;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    Label6: TLabel;
    DBText6: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    Label8: TLabel;
    qrVendaItemid_cliente: TIntegerField;
    cdsItensDevolucaoid_material: TIntegerField;
    qrVendaItemquantidade_disponivel: TFloatField;
    qrVendaItemid_setor: TIntegerField;
    cdsItensDevolucaoid_setor: TIntegerField;
    qrVendaItemutiliza_combo: TBooleanField;
    cdsItensDevolucaoutiliza_combo: TBooleanField;
    constructor Create (sender : Tcomponent; id_usuario_dev, id_venda : integer ); reintroduce;
    procedure btRemoverOpClick(Sender: TObject);
    procedure btSelecionarItemClick(Sender: TObject);
    procedure qrVendaItemCalcFields(DataSet: TDataSet);
    procedure cdsItensDevolucaoquantidade_devChange(Sender: TField);
    procedure btConfirmaClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
  private
    { Private declarations }
    id_formapag_devolucao , id_venda, id_usuario_dev: integer;
  public
    { Public declarations }
    valor_devolucao : double;
    credito_cliente : boolean;
    id_cliente_selecionado : integer;
  end;

var
  frmControleDevolucaoDevolucaoItens: TfrmControleDevolucaoDevolucaoItens;

implementation

{$R *.dfm}

uses uMenu, uFuncoes, Funcao_DB, uControleDevolucaoFechamento;

procedure TfrmControleDevolucaoDevolucaoItens.btCancelaClick(Sender: TObject);
begin
  inherited;
  self.Tag :=0;
  self.Close;
end;

procedure TfrmControleDevolucaoDevolucaoItens.btConfirmaClick(Sender: TObject);
var qtde_diponivel, qtde_devolvida : double;
    str_aux : string;
begin
  inherited;
  // verifica se foram informados itens
  if cdsItensDevolucao.RecordCount<=0  then
  begin
    Application.MessageBox('Nenhum item informado!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  cdsItensDevolucao.First;
  while not cdsItensDevolucao.Eof do
  begin
    qtde_devolvida := roundto(cdsItensDevolucao.FieldByName('quantidade_devolucao').AsFloat, -2);
    qtde_diponivel := roundto(cdsItensDevolucao.FieldByName('quantidade').asfloat-
              cdsItensDevolucao.FieldByName('quantidade_dev_anterior').asfloat,-2);
    if CompareValue(qtde_devolvida, qtde_diponivel)=1   then
    begin
      str_aux := format('Não é possível fazer a devolução do item %d pois a quantidade informada (%.3f) é maior que a disponível para devolução (%.3f)',
                       [cdsItensDevolucao.FieldByName('id_vendaitem').asinteger, qtde_devolvida, qtde_diponivel ]);
      application.MessageBox(pchar(str_aux), 'Atenção', MB_ICONINFORMATION);
      abort;
    end;
    cdsItensDevolucao.next;
  end;

  valor_devolucao := cdsItensDevolucao.FieldByName('total').value;

  //tudo ok faz a devolução
  frmControleDevolucaoFechamento:= TfrmControleDevolucaoFechamento.create(self,
                     valor_devolucao,
                     qrVendaItem.fieldbyname('id_cliente').asinteger);
  frmControleDevolucaoFechamento.showmodal;
  if frmControleDevolucaoFechamento.tag = 1 then
  begin
    str_aux := trim(frmControleDevolucaoFechamento.meObservacao.text);
    if str_aux ='' then
      str_aux := 'Devolução de itens da venda ' + inttostr(id_venda);

    // faz o lançamento na conta do cliente ou no caixa....
    if frmControleDevolucaoFechamento.rbCliente.checked then
    begin
      InserirMovimentoContaCliente(recproj.iemp, frmControleDevolucaoFechamento.id_cliente,
         id_usuario_dev, valor_devolucao, 'E', str_aux , Date + Time, id_venda, false, 0, false);
      credito_cliente := true;
      id_cliente_selecionado := frmControleDevolucaoFechamento.id_cliente;
    end
    else
    begin
      InserirCaixaItem(RecProj.iIDCaixa, id_formapag_devolucao, valor_devolucao, 'S', str_aux, 0, 0, 0, false, 'D');
      credito_cliente:=false;
    end;

    //faz o lançamento no estoque e na tabela de devolução
    cdsItensDevolucao.First;
    while not cdsItensDevolucao.eof do
    begin
      str_aux := ' insert into devolucaoitem (id_venda, id_empresa, id_vendaitem, data, quantidade, id_usuario, id_caixa) '+
                 ' values (:venda, :empresa, :item, localtimestamp, :quant, :usuario, :id_caixa )';
      ExecutaComandoSQL(str_aux, vararrayof([id_venda, recproj.iEmp,
                        cdsItensDevolucao.FieldByName('id_vendaitem').AsInteger,
                        cdsItensDevolucao.FieldByName('quantidade_devolucao').asfloat,
                        id_usuario_dev, RecProj.iIDCaixa ]));

      InserirMovimentoProduto(cdsItensDevolucao.FieldByName('id_material').AsInteger,
                              cdsItensDevolucao.FieldByName('quantidade_devolucao').AsFloat,
                              'E',str_aux, id_usuario_dev, 0, 0, 'M', true,
                              0,0,0, date+time, false,
                              cdsItensDevolucao.FieldByName('utiliza_combo').AsBoolean,
                              cdsItensDevolucao.FieldByName('id_setor').AsInteger);
      cdsItensDevolucao.Next;
    end;

    Application.MessageBox('Devolução efetuada com sucesso!', 'Atenção', MB_ICONINFORMATION);
    self.Tag:=1;
    self.Close;
    frmControleDevolucaoFechamento.free;

  end
  else
  begin
    frmControleDevolucaoFechamento.free;
  end;


end;

procedure TfrmControleDevolucaoDevolucaoItens.btRemoverOpClick(Sender: TObject);
begin
  inherited;
  if cdsItensDevolucao.RecordCount>0 then cdsItensDevolucao.Delete;
end;

procedure TfrmControleDevolucaoDevolucaoItens.btSelecionarItemClick(
  Sender: TObject);
begin
  inherited;
  if not cdsItensDevolucao.Locate('id_vendaitem', qrVendaItem.FieldByName('item').AsInteger, []) then
  begin
    cdsItensDevolucao.Append;
    cdsItensDevolucao.FieldByName('id_vendaitem').AsInteger := qrVendaItem.FieldByName('item').AsInteger;
    cdsItensDevolucao.FieldByName('descricao').asstring := qrVendaItem.FieldByName('descricao_item').asstring;
    cdsItensDevolucao.FieldByName('quantidade_devolucao').asfloat := qrVendaItem.FieldByName('qtdevenda').asfloat - qrVendaItem.FieldByName('quantidade_devolvida').asfloat;
    cdsItensDevolucao.FieldByName('quantidade_dev_anterior').asfloat := qrVendaItem.FieldByName('quantidade_devolvida').asfloat;
    cdsItensDevolucao.FieldByName('valor_unitario').asfloat := roundto(qrVendaItem.FieldByName('valor_total').asfloat/qrVendaItem.FieldByName('qtdevenda').asfloat, -2);
    cdsItensDevolucao.FieldByName('quantidade').asfloat := qrVendaItem.FieldByName('qtdevenda').asfloat;
    cdsItensDevolucao.FieldByName('id_material').AsInteger := qrVendaItem.FieldByName('id_material').AsInteger;
    cdsItensDevolucao.FieldByName('id_setor').AsInteger := qrVendaItem.FieldByName('id_setor').AsInteger;
    cdsItensDevolucao.FieldByName('utiliza_combo').AsBoolean := qrVendaItem.FieldByName('utiliza_combo').AsBoolean;
    qrVendaItemCalcFields(nil);
    cdsItensDevolucao.post;
  end;

end;

procedure TfrmControleDevolucaoDevolucaoItens.cdsItensDevolucaoquantidade_devChange(
  Sender: TField);
begin
  inherited;
  if cdsItensDevolucao.State = dsedit then
  begin
    if cdsItensDevolucao.FieldByName('quantidade_devolucao').asfloat<=0 then
      cdsItensDevolucao.FieldByName('quantidade_devolucao').asfloat :=
        roundto(cdsItensDevolucao.FieldByName('quantidade').asfloat - cdsItensDevolucao.FieldByName('quantidade_dev_anterior').asfloat, -2);
  end;
  qrVendaItemCalcFields(nil);
end;

constructor TfrmControleDevolucaoDevolucaoItens.Create(sender : Tcomponent; id_usuario_dev, id_venda : integer );
begin
  inherited Create(sender);
  frmmenu.VerificaCaixaAberto;
  self.id_venda := id_venda;
  self.id_usuario_dev := id_usuario_dev;
  self.Tag := 0;
  // busca a forma de pagamento de devolução
  if not BuscaCampo(id_formapag_devolucao,
          format('select for_001 from formapgto where emp_001=%d and b_devolucao order by for_001 limit 1',[recproj.iEmp]),
          'Forma de pagamento devolução', true ) then abort;
  qrVendaItem.Close;
  qrVendaItem.ParamByName('id_venda').AsInteger := id_venda;
  qrVendaItem.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrVendaItem.Open;

  if qrVendaItem.RecordCount<=0 then
  begin
    Application.MessageBox('Não foram encontrados itens nesta venda!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;
  cdsItensDevolucao.CreateDataSet;

end;

procedure TfrmControleDevolucaoDevolucaoItens.qrVendaItemCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsItensDevolucao.FieldByName('valor_total').asfloat :=
    cdsItensDevolucao.FieldByName('quantidade_devolucao').asfloat *
    cdsItensDevolucao.FieldByName('valor_unitario').asfloat;
  if cdsItensDevolucao.State = dsedit then cdsItensDevolucao.post;
end;

end.
