unit uFechamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, MemDS,
  DBAccess, Uni, dxGDIPlusClasses, Vcl.ExtCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, AdvPageControl, Vcl.ComCtrls, AdvPanel, cxCalendar, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, AdvGroupBox, System.Actions, Vcl.ActnList,
  AdvGlowButton;

type
  TfrmFechamento = class(TfrmModelo)
    qrOrcamentoitem: TUniQuery;
    dsOrcamentoitem: TDataSource;
    qrOrcamento: TUniQuery;
    dsOrcamento: TDataSource;
    qrOrcamentoid_orcamento: TIntegerField;
    qrOrcamentovalor_total: TFloatField;
    qrOrcamentonome_cliente: TWideStringField;
    qrOrcamentodata: TDateTimeField;
    qrOrcamentonome_usuario: TWideStringField;
    AdvGroupBox3: TAdvGroupBox;
    Label9: TLabel;
    Label21: TLabel;
    Image1: TImage;
    dbNumero_orcamento: TDBEdit;
    dbHora: TDBEdit;
    btConfirma: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    ActionList1: TActionList;
    acFecharvenda: TAction;
    acExcluirvenda: TAction;
    acEditarcliente: TAction;
    acSair: TAction;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    qrOrcamentoitemid_material: TIntegerField;
    qrOrcamentoitemquantidade: TFloatField;
    qrOrcamentoitemvalor_unitario: TFloatField;
    qrOrcamentoitemvalor_total: TFloatField;
    qrOrcamentoitemdescricao: TWideStringField;
    qrOrcamentoitemcodigo: TWideStringField;
    edNumeroorcamento: TEdit;
    pgcontrol1: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1id_orcamento: TcxGridDBColumn;
    cxGrid1DBTableView1data: TcxGridDBColumn;
    cxGrid1DBTableView1nome_cliente: TcxGridDBColumn;
    cxGrid1DBTableView1valor_total: TcxGridDBColumn;
    cxGrid1DBTableView1nome_usuario: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    ADV: TAdvTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1codigo: TcxGridDBColumn;
    cxGrid2DBTableView1descricao: TcxGridDBColumn;
    cxGrid2DBTableView1quantidade: TcxGridDBColumn;
    cxGrid2DBTableView1valor_unitario: TcxGridDBColumn;
    cxGrid2DBTableView1valor_total: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    qrOrcamentoitemid_orcamento: TIntegerField;
    acDefinirfocusprodutos: TAction;
    acDefinirfocusatendimento: TAction;
    qrOrcamentoitemid_empresa: TIntegerField;
    qrOrcamentoid_empresa: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure acSairExecute(Sender: TObject);
    procedure edNumeroorcamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acDefinirfocusatendimentoExecute(Sender: TObject);
    procedure acDefinirfocusprodutosExecute(Sender: TObject);
    procedure acExcluirvendaExecute(Sender: TObject);
    procedure acEditarclienteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFechamento: TfrmFechamento;

implementation

{$R *.dfm}

uses uMenu, uConsCliente, uBuscaRegistro, uFuncoes;

procedure TfrmFechamento.acDefinirfocusatendimentoExecute(Sender: TObject);
begin
  inherited;
  pgcontrol1.ActivePageIndex:=0;
end;

procedure TfrmFechamento.acDefinirfocusprodutosExecute(Sender: TObject);
begin
   pgcontrol1.ActivePageIndex:=1;
end;

procedure TfrmFechamento.acEditarclienteExecute(Sender: TObject);
var str_sql:string;
qraux1:tuniquery;
begin
  if qrorcamento.RecordCount>0 then
  begin
  if Application.MessageBox ('Deseja realmente alterar o cliente?','Atenção',MB_ICONQUESTION + mb_yesno)= mryes then
  begin

  str_sql := 'select cli_001, cli_002,limite_credito,emp_001 from clientes ';
  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
    CriaIntegerArray([0, 1, 2]), CriaStringArray(['Código', 'Nome','Límite de crédito']), 0, 1, 'sit_001=4 and emp_001=' +
    IntToStr(RecProj.iEmp), 800, 500);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag = 1 then
    begin
     str_sql:='update orcamento set id_cliente=:id_cliente where id_orcamento=:id_orcamento and id_empresa=:id_empresa';
     qraux1 := TUniQuery.Create(self);
     qraux1.Connection := frmMenu.conexao;
     qraux1.SQL.Add(str_sql);
     qraux1.ParamByName('id_cliente').Value :=frmbuscaregistro.valor_retorno;
     qraux1.ParamByName('id_empresa').AsInteger :=qrOrcamentoitem.FieldByName('id_empresa').AsInteger;
     qraux1.ParamByName('id_orcamento').AsInteger :=qrOrcamento.FieldByName('id_orcamento').AsInteger;
     qraux1.Execute;
     qrorcamento.refresh;
    end;
   frmBuscaRegistro.Free;

  end;









  end;

end;

procedure TfrmFechamento.acExcluirvendaExecute(Sender: TObject);
var str_sql: string;
qraux1: TUniQuery;
begin

  if qrorcamento.RecordCount>0 then
  begin
   if Application.MessageBox
      ('Deseja realmente excluir esse orçamento, essa ação é irreversível!',
      'Atenção', MB_ICONQUESTION + MB_YESNO) = mrYes then
    begin
      str_sql:='delete from orcamento_item where id_orcamento =:id_orcamento and id_empresa =:id_empresa';
      qraux1 := TUniQuery.Create(self);
      qraux1.Connection := frmMenu.conexao;
      qraux1.Close;
      qraux1.SQL.Clear;
      qraux1.SQL.Add(str_sql);
      qraux1.ParamByName('id_orcamento').AsInteger :=qrOrcamento.FieldByName('id_orcamento').AsInteger;
      qraux1.ParamByName('id_empresa').AsInteger :=qrOrcamento.FieldByName('id_empresa').AsInteger;
      qraux1.execute;
      str_sql:='delete from orcamento where id_orcamento=:id_orcamento and id_empresa=:id_empresa';
      qraux1.SQL.Clear;
      qraux1.SQL.Add(str_sql);
      qraux1.ParamByName('id_orcamento').AsInteger :=qrOrcamento.FieldByName('id_orcamento').AsInteger;
      qraux1.ParamByName('id_empresa').AsInteger :=qrOrcamento.FieldByName('id_empresa').AsInteger;
      qraux1.execute;
      qrorcamento.refresh;
    end;

   end
   else
  begin
    Application.MessageBox('Não existe orçamento para ser excluído!', 'Atenção',
    MB_ICONQUESTION);
  end;

end;

procedure TfrmFechamento.acSairExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmFechamento.edNumeroorcamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var filtro:string;

begin
  if key= vk_return then
  begin
    if  edNumeroorcamento.Text='' then
    begin
      filtro:='';
    end
    else
    begin
       filtro:='and o.id_orcamento='+edNumeroorcamento.Text;
    end;

    qrorcamento.Close;
    qrorcamento.SQL[10]:=filtro;
    qrorcamento.Open;
   end;

end;

procedure TfrmFechamento.FormCreate(Sender: TObject);
begin
  inherited;
  qrorcamento.ParamByName('id_empresa').AsInteger:= RecProj.iEmp;
  qrorcamentoitem.ParamByName('id_empresa').AsInteger:= RecProj.iEmp;
  qrorcamento.Open;
  qrorcamentoitem.open;
end;

end.
