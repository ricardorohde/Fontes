unit uMonitorpreparo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCGrids, Vcl.StdCtrls, Vcl.DBCtrls,  DateUtils,
  Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, Uni, dxGDIPlusClasses, AdvGlowButton,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxLabel, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridCardView,
  cxGridDBCardView, cxGridCustomView, cxGridCustomLayoutView, cxClasses,
  cxGridLevel, cxGrid, cxButtonEdit, cxGridTableView, cxGridDBTableView, cxMemo,
  System.Actions, Vcl.ActnList;

type
  TfrmMonitorpreparo = class(TForm)
    qrProducao: TUniQuery;
    dsProducao: TDataSource;
    qrProducaomesa_delivery: TWideStringField;
    qrProducaonro_venda: TIntegerField;
    qrProducaoitem: TIntegerField;
    qrProducaocod_produto: TIntegerField;
    qrProducaoproduto: TWideStringField;
    qrProducaoobservacao: TWideStringField;
    qrProducaogarcom: TWideStringField;
    qrProducaoitem_fracionado: TIntegerField;
    qrProducaoquantidade: TWideStringField;
    qrProducaonumero_pedido: TIntegerField;
    qrProducaotempo_producao: TWideStringField;
    qrProducaoqtde_fracao: TWideStringField;
    qrProducaob_producao: TBooleanField;
    qrProducaob_entregue: TBooleanField;
    qrProducaoid_venda: TIntegerField;
    pnTitulo: TPanel;
    cbLocalProducao: TComboBox;
    Timer1: TTimer;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBCardView1: TcxGridDBCardView;
    cxGrid1DBCardView1mesa_delivery: TcxGridDBCardViewRow;
    cxGrid1DBCardView1produto: TcxGridDBCardViewRow;
    cxGrid1DBCardView1garcom: TcxGridDBCardViewRow;
    cxGrid1DBCardView1quantidade: TcxGridDBCardViewRow;
    cxGrid1DBCardView1numero_pedido: TcxGridDBCardViewRow;
    cxGrid1DBCardView1tempo_producao: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Botoes: TcxGridDBCardViewRow;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    qrProducaodummy_botoes: TWideMemoField;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView2mesa_delivery: TcxGridDBColumn;
    cxGrid1DBTableView2nro_venda: TcxGridDBColumn;
    cxGrid1DBTableView2item: TcxGridDBColumn;
    cxGrid1DBTableView2cod_produto: TcxGridDBColumn;
    cxGrid1DBTableView2produto: TcxGridDBColumn;
    cxGrid1DBTableView2observacao: TcxGridDBColumn;
    cxGrid1DBTableView2garcom: TcxGridDBColumn;
    cxGrid1DBTableView2item_fracionado: TcxGridDBColumn;
    cxGrid1DBTableView2quantidade: TcxGridDBColumn;
    cxGrid1DBTableView2numero_pedido: TcxGridDBColumn;
    cxGrid1DBTableView2tempo_producao: TcxGridDBColumn;
    cxGrid1DBTableView2qtde_fracao: TcxGridDBColumn;
    cxGrid1DBTableView2b_producao: TcxGridDBColumn;
    cxGrid1DBTableView2b_entregue: TcxGridDBColumn;
    cxGrid1DBTableView2id_venda: TcxGridDBColumn;
    cxGrid1DBTableView2dummy_botoes: TcxGridDBColumn;
    cxGrid1DBTableView3id_venda: TcxGridDBColumn;
    cxGrid1DBTableView3id_empresa: TcxGridDBColumn;
    cxGrid1DBTableView3nro_item: TcxGridDBColumn;
    cxGrid1DBTableView3id_opcional: TcxGridDBColumn;
    cxGrid1DBTableView3descricao: TcxGridDBColumn;
    cxGrid1DBTableView3valor: TcxGridDBColumn;
    cxGrid1DBTableView3ord: TcxGridDBColumn;
    qrProducaoopcionais: TWideMemoField;
    cxGrid1DBCardView1opcionais: TcxGridDBCardViewRow;
    ActionList1: TActionList;
    acPronto: TAction;
    acEntregue: TAction;
    qrProducaotempo: TIntegerField;
    cxGrid1DBCardView1tempo: TcxGridDBCardViewRow;
    Shape3: TShape;
    Label4: TLabel;
    Shape1: TShape;
    Label5: TLabel;
    Label3: TLabel;
    Shape4: TShape;
    Label2: TLabel;
    Shape2: TShape;
    constructor Create(sender : Tcomponent ; tipo_exibicao : integer); reintroduce;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbLocalProducaoChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure acProntoExecute(Sender: TObject);
    procedure acEntregueExecute(Sender: TObject);
    procedure cxGrid1DBCardView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    tipo_exibicao : integer;
  public
    { Public declarations }
  end;

var
  frmMonitorpreparo: TfrmMonitorpreparo;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uFuncoes;

procedure TfrmMonitorpreparo.acEntregueExecute(Sender: TObject);
var str_sql : string;
begin
  str_sql := format('update vendaitem set b_producao=false, b_entregue=true where ven_001=%d and ite_001=%d and emp_001=%d',
                      [qrProducao.FieldByName('id_venda').AsInteger,
                       qrProducao.FieldByName('item').AsInteger, recproj.iEmp ]);
  ExecutaComandoSQL(str_sql);
  qrProducao.Refresh;
end;

procedure TfrmMonitorpreparo.acProntoExecute(Sender: TObject);
var str_sql : string;
begin
  str_sql := format('update vendaitem set b_producao=false where ven_001=%d and ite_001=%d and emp_001=%d',
                      [qrProducao.FieldByName('id_venda').AsInteger,
                       qrProducao.FieldByName('item').AsInteger, recproj.iEmp ]);
  ExecutaComandoSQL(str_sql);
  qrProducao.Refresh;
end;

procedure TfrmMonitorpreparo.cbLocalProducaoChange(Sender: TObject);
begin
  qrProducao.Close;
  qrproducao.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrproducao.ParamByName('tipo_exibicao').AsInteger := tipo_exibicao;
  qrproducao.ParamByName('cod_impressora').AsInteger := cbLocalProducao.ItemIndex;
  qrproducao.Open;
end;

constructor TfrmMonitorpreparo.Create(sender : Tcomponent ; tipo_exibicao : integer );
begin
  inherited Create(sender);
  self.tipo_exibicao := tipo_exibicao;
  cbLocalProducao.ItemIndex := LerIntegerConfig('PRE_INDICEMONITORPRODUCAO', frmMenu.cdsCFG.FileName,0);
  qrProducao.Close;
  qrproducao.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrproducao.ParamByName('tipo_exibicao').AsInteger := tipo_exibicao;
  qrproducao.ParamByName('cod_impressora').AsInteger := cbLocalProducao.ItemIndex;
  qrproducao.Open;

  if tipo_exibicao = 1 then //tipo exibição: 1 = Produção / 2 = Controle entrega
  begin
    cxGrid1DBCardView1Botoes.Properties.Buttons.Items[0].Visible :=true;
    cxGrid1DBCardView1Botoes.Properties.Buttons.Items[1].Visible :=true;
    pntitulo.Caption := 'MONITOR DE PRODUÇÃO';
  end
  else
  begin
    //desabilita
    cxGrid1DBCardView1Botoes.Properties.Buttons.Items[0].Visible :=false;
    cxGrid1DBCardView1Botoes.Properties.Buttons.Items[1].Visible :=true;
    pntitulo.Caption := 'MONITOR DE ENTREGA';
  end;

end;


procedure TfrmMonitorpreparo.cxGrid1DBCardView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  tempo_producao_produto:String;
  tolerancia :Integer;
begin       // 23/01/2018    Rafael

  if tipo_exibicao = 1 then
  begin
      tempo_producao_produto:= FormataMinutos(qrproducao.FieldByName('tempo').asinteger);
      tolerancia            := HoraParaMin(AViewInfo.GridRecord.Values[cxGrid1DBCardView1tempo_producao.Index]);

      if (AViewInfo.GridRecord.Values[cxGrid1DBCardView1tempo_producao.Index] > tempo_producao_produto )  and (tolerancia>=45) then
      begin
        ACanvas.Font.Color  := clRed;
      end
      else
      if  (AViewInfo.GridRecord.Values[cxGrid1DBCardView1tempo_producao.Index] > tempo_producao_produto )  and (tolerancia >=30) and (tolerancia <45) then
      begin
        ACanvas.Font.Color  := clyellow;
      end
      else
      if   (AViewInfo.GridRecord.Values[cxGrid1DBCardView1tempo_producao.Index] > tempo_producao_produto )  and (tolerancia >=15) and (tolerancia <30) then
      begin
         ACanvas.Font.Color  :=  clGreen;
      end;
  end;

end;

procedure TfrmMonitorpreparo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  GravaIntegerConfig('PRE_INDICEMONITORPRODUCAO', cbLocalProducao.ItemIndex, frmMenu.cdsCFG.FileName);
end;

procedure TfrmMonitorpreparo.FormShow(Sender: TObject);
begin
 self.Caption:=frmmenu.cabecalho;
end;

procedure TfrmMonitorpreparo.Timer1Timer(Sender: TObject);
begin

  if qrproducao.Active then
  begin
   qrproducao.Refresh;
  end;

end;

end.
