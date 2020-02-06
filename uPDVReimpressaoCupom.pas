unit uPDVReimpressaoCupom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, AdvGlowButton, Vcl.ExtCtrls,
  AdvPanel, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxGridLevel, cxGridCardView, cxGridDBCardView,
  cxGridCustomLayoutView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, MemDS, DBAccess, Uni;

type
  TfrmPDVReimpressaoCupom = class(TfrmModelo)
    btConfirma: TAdvGlowButton;
    btCancelar: TAdvGlowButton;
    dsVendas: TDataSource;
    qrVendas: TUniQuery;
    qrVendasid_venda: TIntegerField;
    qrVendasid_empresa: TIntegerField;
    qrVendasdata_emissao: TDateTimeField;
    qrVendasnro_cupom: TIntegerField;
    qrVendasvalor: TFloatField;
    qrVendassat_cancelado: TBooleanField;
    qrVendastipo_venda: TWideStringField;
    qrVendasnome_cliente: TWideStringField;
    qrVendaschave_acesso: TWideStringField;
    qrVendaschave_cancelamento: TWideStringField;
    qrVendashora_emissao: TDateTimeField;
    qrVendasven_024: TWideStringField;
    qrVendassituacao_caixa: TIntegerField;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1id_venda: TcxGridDBColumn;
    cxGrid2DBTableView1id_empresa: TcxGridDBColumn;
    cxGrid2DBTableView1data_emissao: TcxGridDBColumn;
    cxGrid2DBTableView1hora_emissao: TcxGridDBColumn;
    cxGrid2DBTableView1nro_cupom: TcxGridDBColumn;
    cxGrid2DBTableView1sat_cancelado: TcxGridDBColumn;
    cxGrid2DBTableView1nome_cliente: TcxGridDBColumn;
    cxGrid2DBTableView1valor: TcxGridDBColumn;
    cxGrid2DBTableView1tipo_venda: TcxGridDBColumn;
    cxGrid2DBCardView1: TcxGridDBCardView;
    cxGrid2DBCardView1observacao: TcxGridDBCardViewRow;
    cxGrid2Level1: TcxGridLevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPDVReimpressaoCupom: TfrmPDVReimpressaoCupom;

implementation

{$R *.dfm}

end.
