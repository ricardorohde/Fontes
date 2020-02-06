unit uDetalheAlmoxarifado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoDetalhe, cxLookAndFeels, Data.DB, MemDS, DBAccess, Uni, Vcl.DBActns,
  Vcl.ActnList, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin, cxGraphics, cxControls, cxLookAndFeelPainters,
  cxPCdxBarPopupMenu, cxContainer, cxEdit, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxTextEdit, cxDBEdit, cxPC,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxMaskEdit, cxButtonEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmDetalheAlmoxarifado = class(TfrmPadraoDetalhe)
    pcAbas: TcxPageControl;
    tsDados: TcxTabSheet;
    tsMateriais: TcxTabSheet;
    gbusuarios: TGroupBox;
    Label15: TLabel;
    Label33: TLabel;
    edDataUltimaAtualiz: TDBText;
    edUsuUltimaAtualiz: TDBText;
    Label34: TLabel;
    Label37: TLabel;
    edDataCadastro: TDBText;
    Label14: TLabel;
    edUsuCadastrado: TDBText;
    DBText1: TDBText;
    Label7: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    qrDetalhealm_001: TIntegerField;
    qrDetalheemp_001: TIntegerField;
    qrDetalhealm_002: TWideStringField;
    qrDetalhesituacao: TWideStringField;
    qrDetalheinclusao: TWideStringField;
    qrDetalheedicao: TWideStringField;
    qrDetalhedat_001_1: TDateTimeField;
    qrDetalhedat_001_2: TDateTimeField;
    cxGrid3: TcxGrid;
    GridDBAlmoxMat: TcxGridDBTableView;
    GridDBAlmoxMatmat_001: TcxGridDBColumn;
    GridDBAlmoxMatmat_003: TcxGridDBColumn;
    GridDBAlmoxMatuni_002: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel4: TPanel;
    Label41: TLabel;
    Label42: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    edMaterial: TcxDBButtonEdit;
    qrAlmox_Materiais: TUniQuery;
    dsAlmox_Materiais: TDataSource;
    qrAlmox_Materiaisemp_001: TIntegerField;
    qrAlmox_Materiaisalm_001: TIntegerField;
    qrAlmox_Materiaismat_001: TIntegerField;
    qrAlmox_Materiaisusu_001_1: TIntegerField;
    qrAlmox_Materiaisusu_001_2: TIntegerField;
    qrAlmox_Materiaisusu_001_3: TIntegerField;
    qrAlmox_Materiaisdat_001_1: TDateTimeField;
    qrAlmox_Materiaisdat_001_2: TDateTimeField;
    qrAlmox_Materiaisdat_001_3: TDateTimeField;
    qrAlmox_Materiaismat_003: TWideStringField;
    qrAlmox_Materiaisuni_001: TIntegerField;
    qrAlmox_Materiaisuni_003: TWideStringField;
    qrAlmox_Materiaisamt_001: TIntegerField;
    qrAlmox_Materiaisamt_002: TFloatField;
    qrAlmox_Materiaisamt_003: TFloatField;
    GridDBAlmoxMatamt_002: TcxGridDBColumn;
    GridDBAlmoxMatamt_003: TcxGridDBColumn;
    qrAlmox_Materiaisdisponivel: TFloatField;
    GridDBAlmoxMatdisponivel: TcxGridDBColumn;
    qrDetalheusu_001_1: TIntegerField;
    qrDetalheusu_001_2: TIntegerField;
    procedure qrAlmox_MateriaisBeforePost(DataSet: TDataSet);
    procedure qrAlmox_MateriaisBeforeOpen(DataSet: TDataSet);
    procedure qrAlmox_MateriaisNewRecord(DataSet: TDataSet);
    procedure pcAbasPageChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure pcAbasChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsAlmox_MateriaisStateChange(Sender: TObject);
    procedure qrDetalheBeforePost(DataSet: TDataSet);
    procedure qrAlmox_MateriaisBeforeDelete(DataSet: TDataSet);
  private
    procedure ChecaBtn;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheAlmoxarifado: TfrmDetalheAlmoxarifado;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uFuncoes;

procedure TfrmDetalheAlmoxarifado.ChecaBtn;
begin
   if pcAbas.ActivePage = tsMateriais then
   begin
      btnIncluir.Enabled := (Not(qrAlmox_Materiais.State in [dsEdit, dsInsert]));
      btnEditar.Enabled := (Not(qrAlmox_Materiais.State in [dsEdit, dsInsert])) and (GridDBAlmoxMat.ViewData.RowCount > 0);
      btnExcluir.Enabled := (Not(qrAlmox_Materiais.State in [dsEdit, dsInsert])) and (GridDBAlmoxMat.ViewData.RowCount > 0);
   end;
end;

procedure TfrmDetalheAlmoxarifado.dsAlmox_MateriaisStateChange(Sender: TObject);
begin
  inherited;
   if qrAlmox_Materiais.State in [dsEdit, dsInsert] then
      TestarFocoField(qrAlmox_MateriaisMAT_001);
   //
   ChecaBtn;
end;

procedure TfrmDetalheAlmoxarifado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   if qrAlmox_Materiais.State in [dsEdit, dsInsert] then
      qrAlmox_Materiais.Cancel;
end;

procedure TfrmDetalheAlmoxarifado.FormCreate(Sender: TObject);
begin
  sTabela := 'ALMOXARIFADOS';
  inherited;

end;

procedure TfrmDetalheAlmoxarifado.FormShow(Sender: TObject);
begin
   pcAbas.ActivePageIndex := 0;
   pcAbasChange(pcAbas);
   //
   Formatar_Float(qrAlmox_MateriaisAMT_002, sMskQtdeMat);
   Formatar_Float(qrAlmox_MateriaisAMT_003, sMskQtdeMat);
   Formatar_Float(qrAlmox_Materiaisdisponivel, sMskQtdeMat);
   inherited;
   Campo_Obrigatorio([Label2, Label41]);
end;

procedure TfrmDetalheAlmoxarifado.pcAbasChange(Sender: TObject);
begin
  inherited;
   btnIncluir.Hide;
   btnEditar.Hide;
   btnExcluir.Hide;
   btnSep1.Hide;
   //
   if pcAbas.ActivePage = tsMateriais then
   begin
      qrAlmox_Materiais.Close;
      qrAlmox_Materiais.Open;
      //
      if Not bVisualizar then
      begin
         btnIncluir.Show;
         btnExcluir.Show;
         btnSep1.Show;
      end;
   end;
end;

procedure TfrmDetalheAlmoxarifado.pcAbasPageChanging(Sender: TObject; NewPage: TcxTabSheet;
  var AllowChange: Boolean);
begin
  inherited;
   ActiveControl := Nil;
   //
   if (Not(qrDetalhe.State in [dsEdit, dsInsert])) and (qrDetalhealm_001.IsNull) and (pcAbas.ActivePage = tsDados) then
   begin
      Application.MessageBox('É necessário informar os Dados Cadastrais antes de Prosseguir.', 'Anteção', 0 + 64);
      Abort;
   end;
   //
   AllowChange := (Not(qrDetalhe.State in [dsEdit, dsInsert])) and (Not(qrAlmox_Materiais.State in [dsEdit, dsInsert]));
end;

procedure TfrmDetalheAlmoxarifado.qrAlmox_MateriaisBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  ChecaBtn;
end;

procedure TfrmDetalheAlmoxarifado.qrAlmox_MateriaisBeforeOpen(DataSet: TDataSet);
begin
  inherited;
   qrAlmox_Materiais.ParamByName('EMP').AsInteger := RecProj.iEmp;
   qrAlmox_Materiais.ParamByName('ALM').AsInteger := qrDetalhealm_001.AsInteger;
end;

procedure TfrmDetalheAlmoxarifado.qrAlmox_MateriaisBeforePost(DataSet: TDataSet);
var
  Where: string;
begin
   EventoExit.BtnExit(edMaterial);
   //
   if qrAlmox_Materiaismat_001.IsNull then
   begin
      Application.MessageBox('Favor informar um Material.', 'Atenção', 0 + 64);
      TestarFocoField(qrAlmox_Materiaismat_001);
      Abort;
   end;
   //
   if qrAlmox_Materiais.State = dsEdit then
      Where := ' AND AMT_001 <> ' + qrAlmox_Materiaisamt_001.AsString;
   //
   if Exists_Record(frmMenu.conexao, 'ALMOXARIFADOS_MATERIAIS', ['EMP_001', 'MAT_001', 'ALM_001'],
     [RecProj.iEmp, qrAlmox_Materiaismat_001.AsInteger, qrDetalhealm_001.AsInteger], Where) then
   begin
      Application.MessageBox('Esse Material já foi informado.', 'Atenção', 0 + 64);
      TestarFocoField(qrAlmox_Materiaismat_001);
      Abort;
   end;
   //
   if qrAlmox_Materiais.State = dsInsert then
   begin
      qrAlmox_Materiaisdat_001_1.AsDateTime := DataServer(frmMenu.conexao);
      qrAlmox_Materiaisusu_001_1.AsInteger := RecProj.iUsuario;
      qrAlmox_Materiaisamt_001.AsInteger := NovoID(frmMenu.conexao, 'ALMOXARIFADOS_MATERIAIS', RecProj.iEmp);
   end;
   //
   if qrAlmox_Materiais.State = dsEdit then
   begin
      qrAlmox_Materiaisdat_001_2.AsDateTime := DataServer(frmMenu.conexao);
      qrAlmox_Materiaisusu_001_2.AsInteger := RecProj.iUsuario;
   end;
   //
   ActiveControl := Nil;
  inherited;

end;

procedure TfrmDetalheAlmoxarifado.qrAlmox_MateriaisNewRecord(DataSet: TDataSet);
begin
  inherited;
   qrAlmox_Materiaisemp_001.AsInteger := RecProj.iEmp;
   qrAlmox_Materiaisalm_001.AsInteger := qrDetalhealm_001.AsInteger;
   qrAlmox_Materiaisdisponivel.AsFloat := 0;
end;

procedure TfrmDetalheAlmoxarifado.qrDetalheBeforePost(DataSet: TDataSet);
begin
   if Trim(qrDetalheALM_002.AsString) = '' then
   begin
      Application.MessageBox('Favor informar a Descrição.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalheALM_002);
      Abort;
   end;
   //
   if qrDetalhe.State = dsInsert then
   begin
      qrDetalhedat_001_1.AsDateTime := DataServer(frmMenu.conexao);
      qrDetalheusu_001_1.AsInteger := RecProj.iUsuario;
      qrDetalheinclusao.AsString := RecProj.sUsuario;
   end;
   if qrDetalhe.State = dsEdit then
   begin
      qrDetalhedat_001_2.AsDateTime := DataServer(frmMenu.conexao);
      qrDetalheusu_001_2.AsInteger := RecProj.iUsuario;
      qrDetalheedicao.AsString := RecProj.sUsuario;
   end;
   //
  inherited;

end;

end.
