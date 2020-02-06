unit uControleCNoturnaCheckin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  Data.DB, MemDS, DBAccess, Uni, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, AdvGlowButton, cxTextEdit, Vcl.StdCtrls, AdvGroupBox,
  cxSpinEdit, cxTimeEdit, Vcl.DBCtrls, Vcl.DBCGrids;

type
  TfrmControleCNoturnaCheckin = class(TfrmModelo)
    qrVenda: TUniQuery;
    qrVendaven_001: TIntegerField;
    qrVendaemp_001: TIntegerField;
    qrVendaven_002: TIntegerField;
    qrVendacli_001: TIntegerField;
    qrVendasit_001: TIntegerField;
    qrVendausu_001_1: TIntegerField;
    qrVendadat_001_1: TDateTimeField;
    qrVendadata_fechamento: TDateTimeField;
    qrVendavalor_consumacao: TFloatField;
    qrVendavalor_entrada: TFloatField;
    qrVendavalor_limite: TFloatField;
    qrVendaid_periodo: TIntegerField;
    qrVendaid_perfil_consumo: TIntegerField;
    qrVendanome_cliente: TWideStringField;
    qrVendacpf: TWideStringField;
    qrVendarg: TWideStringField;
    qrVendasexo: TWideStringField;
    qrVendatelefone1: TWideStringField;
    qrVendadata_nascimento: TDateField;
    AdvGroupBox1: TAdvGroupBox;
    dsVenda: TDataSource;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    btSelecionarCliente: TAdvGlowButton;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label4: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label5: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    AdvGroupBox2: TAdvGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    qrVendacomanda: TIntegerField;
    qrVendaid_operador: TIntegerField;
    qrVendanome_operador: TWideStringField;
    Label8: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    Label9: TLabel;
    qrVendadata_abertura: TDateTimeField;
    qrVendadesc_situacao: TWideStringField;
    Label10: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Button1: TButton;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBTimeEdit2: TcxDBTimeEdit;
    qrPerfilConsumo: TUniQuery;
    AdvGroupBox3: TAdvGroupBox;
    DBCtrlGrid1: TDBCtrlGrid;
    qrPerfilConsumoid_perfil_consumo: TIntegerField;
    qrPerfilConsumodescricao: TWideStringField;
    qrPerfilConsumovalor_consumacao: TFloatField;
    qrPerfilConsumovalor_entrada: TFloatField;
    qrPerfilConsumovalor_limite: TFloatField;
    qrPerfilConsumoid_situacao: TIntegerField;
    qrPerfilConsumoobservacao: TWideMemoField;
    qrPerfilConsumoid_empresa: TIntegerField;
    dsPerfilConsumo: TDataSource;
    qrPerfilConsumocod_descricao: TWideStringField;
    DBText1: TDBText;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label14: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    procedure qrVendaNewRecord(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    id_usuario_checkin : integer   ;
  public
    { Public declarations }
  end;

var
  frmControleCNoturnaCheckin: TfrmControleCNoturnaCheckin;

implementation

{$R *.dfm}

uses uMenu;

procedure TfrmControleCNoturnaCheckin.Button1Click(Sender: TObject);
begin
  inherited;
  qrvenda.Open;
end;

procedure TfrmControleCNoturnaCheckin.qrVendaNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrVenda.FieldByName('ven_002').AsInteger := 0;
  qrVenda.FieldByName('ven_004').asdatetime := Date;
  qrVenda.FieldByName('dat_001_1').asdatetime := Date;
  qrVenda.FieldByName('usu_001_1').AsInteger := id_usuario_checkin  ;
end;

end.
