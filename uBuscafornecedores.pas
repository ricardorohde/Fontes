unit uBuscafornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBuscaRegistro, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, MemDS,
  DBAccess, Uni, Vcl.ExtCtrls, AdvSmoothTouchKeyBoard, Vcl.StdCtrls,
  AdvGroupBox, AdvGlowButton, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, AdvPanel;

type
  TfrmBuscafornecedores = class(TfrmBuscaRegistro)
    btCadastraCliente: TAdvGlowButton;
    procedure btCadastraClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuscafornecedores: TfrmBuscafornecedores;

implementation

{$R *.dfm}

uses uConsFornecedor, uFuncoes, uMenu, uDetalheFornecedor;

procedure TfrmBuscafornecedores.btCadastraClienteClick(Sender: TObject);
begin
  frmDetalheFornecedor := TfrmDetalheFornecedor.Create(self, 'id_fornecedor','id_situacao');
  frmDetalheFornecedor.ShowModal;
  frmDetalheFornecedor.Free;

end;

end.
