unit uConsFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmModeloConsultaTabelaUnica,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, MemDS, DBAccess, Uni, Vcl.ExtCtrls, AdvGlowButton, Vcl.StdCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, AdvPanel;

type
  TfrmConsFornecedor = class(TfrmModeloConsultaTabelaUnica)
    qrConsultaid_fornecedor: TIntegerField;
    qrConsultanome_fantasia: TWideStringField;
    qrConsultarazao_social: TWideStringField;
    qrConsultatipo_p: TWideStringField;
    qrConsultacnpj: TWideStringField;
    qrConsultacpf: TWideStringField;
    qrConsultanome_contato1: TWideStringField;
    qrConsultatelefone1: TWideStringField;
    qrConsultatelefone2: TWideStringField;
    qrConsultacelular1: TWideStringField;
    cxGrid1DBTableView1id_fornecedor: TcxGridDBColumn;
    cxGrid1DBTableView1nome_fantasia: TcxGridDBColumn;
    cxGrid1DBTableView1razao_social: TcxGridDBColumn;
    cxGrid1DBTableView1tipo_p: TcxGridDBColumn;
    cxGrid1DBTableView1cnpj: TcxGridDBColumn;
    cxGrid1DBTableView1cpf: TcxGridDBColumn;
    cxGrid1DBTableView1nome_contato1: TcxGridDBColumn;
    cxGrid1DBTableView1telefone1: TcxGridDBColumn;
    cxGrid1DBTableView1telefone2: TcxGridDBColumn;
    cxGrid1DBTableView1celular1: TcxGridDBColumn;
    qrConsultasituacao: TWideStringField;
    cxGrid1DBTableView1situacao: TcxGridDBColumn;
    procedure btAbrirRegistroClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsFornecedor: TfrmConsFornecedor;

implementation

{$R *.dfm}

uses uDetalheFornecedor;

procedure TfrmConsFornecedor.btAbrirRegistroClick(Sender: TObject);
begin
  inherited;
  if qrConsulta.Active then
  begin
    if qrConsulta.RecordCount>0 then
    begin
      frmDetalheFornecedor := TfrmDetalheFornecedor.Create(self, 'id_fornecedor','id_situacao' , qrConsulta.FieldByName('id_fornecedor').AsInteger);
      frmDetalheFornecedor.ShowModal;
      frmDetalheFornecedor.Free;
      qrConsulta.Refresh;
    end;
  end;
end;

procedure TfrmConsFornecedor.btNovoClick(Sender: TObject);
begin
  frmDetalheFornecedor := TfrmDetalheFornecedor.Create(self, 'id_fornecedor','id_situacao');
  frmDetalheFornecedor.ShowModal;
  frmDetalheFornecedor.Free;
  qrConsulta.Refresh;
end;

end.
