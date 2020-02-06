unit uGraficosVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxGroupBox, cxRadioGroup, Vcl.StdCtrls, Vcl.ComCtrls, AdvGroupBox,
  Data.DB, MemDS, DBAccess, Uni;

type
  TfrmGraficosVendas = class(TfrmModelo)
    qrItensVenda: TUniQuery;
    qrItensVendamat_003: TWideStringField;
    qrItensVendamat_004: TWideStringField;
    qrItensVendaqtdevenda: TFloatField;
    qrItensVendavlrvenda: TFloatField;
    qrItensVendaven_004: TWideMemoField;
    qrItensVendatotgeral: TFloatField;
    qrItensVendataxa: TFloatField;
    qrItensVendataxagarcon: TFloatField;
    AdvGroupBox3: TAdvGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    cbRelatorio: TComboBox;
    AdvGroupBox1: TAdvGroupBox;
    rgFiltro: TcxRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGraficosVendas: TfrmGraficosVendas;

implementation

{$R *.dfm}

end.
