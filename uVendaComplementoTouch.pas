unit uVendaComplementoTouch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, AdvGlowButton, cxLabel, cxDBLabel,
  Vcl.DBCGrids, Vcl.StdCtrls, Vcl.ExtCtrls, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Datasnap.DBClient, Vcl.DBCtrls, MemDS, DBAccess, Uni, cxButtonEdit,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfrmVendaComplementoTouch = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBCtrlGridProduto: TDBCtrlGrid;
    lbDescricao: TcxDBLabel;
    Panel3: TPanel;
    Label2: TLabel;
    Panel5: TPanel;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    Panel6: TPanel;
    Panel7: TPanel;
    btInserir: TAdvGlowButton;
    Panel8: TPanel;
    btPagProdutoAnt: TDBAdvGlowButton;
    btPagÇProdutoProx: TDBAdvGlowButton;
    dsOpcional: TDataSource;
    qrOpcional: TUniQuery;
    qrOpcionalid_opcional: TIntegerField;
    qrOpcionaldescricao: TWideStringField;
    qrOpcionalvalor: TFloatField;
    lbDescricao2: TDBText;
    cdsOpcionaisSelecionados: TClientDataSet;
    cdsOpcionaisSelecionadosid_opcional: TIntegerField;
    cdsOpcionaisSelecionadosdescricao: TStringField;
    cdsOpcionaisSelecionadosvalor: TFloatField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsOpcionaisSelecionados: TDataSource;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1valor: TcxGridDBColumn;
    cdsOpcionaisSelecionadostotal_opcionais: TAggregateField;
    Panel4: TPanel;
    DBText1: TDBText;
    Label1: TLabel;
    cxDBLabel1: TcxDBLabel;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    qrOpcionaltipo: TIntegerField;
    btFiltraOpc1: TAdvGlowButton;
    btFiltraOpc2: TAdvGlowButton;
    btFiltraOpc3: TAdvGlowButton;
    btFiltraOpc4: TAdvGlowButton;
    btFiltraOpc5: TAdvGlowButton;
    btFiltraOpc6: TAdvGlowButton;
    cdsOpcionaisSelecionadostipo: TIntegerField;
    constructor Create(sender : Tcomponent; dsOpcionaisVenda : TDataset); reintroduce;
    procedure btInserirClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FiltraOpcionais(sTipo: string);
    procedure btFiltraOpc1Click(Sender: TObject);
    procedure btFiltraOpc2Click(Sender: TObject);
    procedure btFiltraOpc3Click(Sender: TObject);
    procedure btFiltraOpc4Click(Sender: TObject);
    procedure btFiltraOpc5Click(Sender: TObject);
    procedure btFiltraOpc6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    iProduto: integer;
  end;

var
  frmVendaComplementoTouch: TfrmVendaComplementoTouch;

implementation

{$R *.dfm}

uses uMenu, uFuncoes;

procedure TfrmVendaComplementoTouch.btCancelaClick(Sender: TObject);
begin
  self.Tag := 0;
  self.Close;
end;

procedure TfrmVendaComplementoTouch.btConfirmaClick(Sender: TObject);
begin
  self.Tag := 1;
  self.Close;
end;

procedure TfrmVendaComplementoTouch.btFiltraOpc1Click(Sender: TObject);
begin
  FiltraOpcionais('1'); //Massas
end;

procedure TfrmVendaComplementoTouch.btFiltraOpc2Click(Sender: TObject);
begin
  FiltraOpcionais('2'); //Recheios
end;

procedure TfrmVendaComplementoTouch.btFiltraOpc3Click(Sender: TObject);
begin
  FiltraOpcionais('3'); //Complementos
end;

procedure TfrmVendaComplementoTouch.btFiltraOpc4Click(Sender: TObject);
begin
  FiltraOpcionais('4'); //Molhos
end;

procedure TfrmVendaComplementoTouch.btFiltraOpc5Click(Sender: TObject);
begin
  FiltraOpcionais('5'); //Coberturas
end;

procedure TfrmVendaComplementoTouch.btFiltraOpc6Click(Sender: TObject);
begin
  FiltraOpcionais('0'); //Geral - Não são todos e sim tipo Geral
end;

procedure TfrmVendaComplementoTouch.btInserirClick(Sender: TObject);
begin
  if qrOpcional.RecordCount > 0 then
  begin
    if not cdsOpcionaisSelecionados.Locate('id_opcional', qrOpcional.FieldByName('id_opcional').AsInteger, [])  then
    begin
      cdsOpcionaisSelecionados.Append;
      cdsOpcionaisSelecionados.FieldByName('id_opcional').AsInteger := qrOpcional.FieldByName('id_opcional').AsInteger;
      cdsOpcionaisSelecionados.FieldByName('descricao').asstring := qrOpcional.FieldByName('descricao').asstring;
      cdsOpcionaisSelecionados.FieldByName('valor').asfloat := qrOpcional.FieldByName('valor').asfloat;
      cdsOpcionaisSelecionados.FieldByName('tipo').AsInteger := qrOpcional.FieldByName('tipo').AsInteger;
      cdsOpcionaisSelecionados.post;
    end
    else
      application.MessageBox('Opcional já adicionado!','Atenção', MB_ICONINFORMATION );
  end;
end;

constructor TfrmVendaComplementoTouch.Create(sender : Tcomponent; dsOpcionaisVenda : TDataset);
begin
  inherited create (sender);
  cdsOpcionaisSelecionados.CreateDataSet;

  CopiaClientDataSet(TClientDataSet(dsOpcionaisVenda), cdsOpcionaisSelecionados);
end;

procedure TfrmVendaComplementoTouch.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if cdsOpcionaisSelecionados.RecordCount>0 then
     cdsOpcionaisSelecionados.Delete;
end;

procedure TfrmVendaComplementoTouch.FormDestroy(Sender: TObject);
begin
  qrOpcional.Filtered:= False;
end;

procedure TfrmVendaComplementoTouch.FormShow(Sender: TObject);
begin
  qrOpcional.Close;
  qrOpcional.ParamByName('id_empresa').AsInteger  := RecProj.iEmp;
  qrOpcional.ParamByName('id_material').AsInteger := iProduto;
  qrOpcional.open;

  //Verifica configuração para exibir ou não os botões tipo opcional - Bruno 16/04/2018
  if (LerBooleanConfig('ckTrabalharTipoOpcionais',frmMenu.cdsCFG.FileName)) then
  begin
    btFiltraOpc1.Visible:= True;
    btFiltraOpc2.Visible:= True;
    btFiltraOpc3.Visible:= True;
    btFiltraOpc4.Visible:= True;
    btFiltraOpc5.Visible:= True;
    btFiltraOpc6.Visible:= True;

    //Chama o primeiro Filtro
    FiltraOpcionais('1'); //Massas
  end
  else
  begin
    btFiltraOpc1.Visible:= False;
    btFiltraOpc2.Visible:= False;
    btFiltraOpc3.Visible:= False;
    btFiltraOpc4.Visible:= False;
    btFiltraOpc5.Visible:= False;
    btFiltraOpc6.Visible:= False;

    qrOpcional.Filtered:= False;
  end;
end;

procedure TfrmVendaComplementoTouch.FiltraOpcionais(sTipo: string);
begin
  qrOpcional.Filtered:= False;
  qrOpcional.Filter:= 'tipo = ' + sTipo;
  qrOpcional.Filtered:= True;
end;

end.
