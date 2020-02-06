unit uControleCNoturnaItensAcoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, MemDS, DBAccess, Uni, AdvPageControl,
  Vcl.ComCtrls, AdvGlowButton, Vcl.ExtCtrls, AdvPanel;

type
  TfrmControleCNoturnaItensAcoes = class(TfrmModelo)
    btConfirma: TAdvGlowButton;
    btCancela: TAdvGlowButton;
    pcPrincipal: TAdvPageControl;
    pgJustificativaCancelamento: TAdvTabSheet;
    pgObservacoes: TAdvTabSheet;
    qrJustificativa: TUniQuery;
    qrJustificativadescricao: TWideStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DataSource1: TDataSource;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    constructor Create (sender : tcomponent ; modoTela : integer);
  private
    { Private declarations }
    modoTela : integer;
  public
    { Public declarations }
  end;

var
  frmControleCNoturnaItensAcoes: TfrmControleCNoturnaItensAcoes;

implementation

{$R *.dfm}

uses uMenu;

constructor TfrmControleCNoturnaItensAcoes.Create(sender: TComponent; modoTela: Integer);
begin
  inherited create(sender);
  self.modoTela := modoTela;

  pgObservacoes.TabVisible:=false;
  pgJustificativaCancelamento.TabVisible:=false;


  if modoTela=1 then


end;

end.
