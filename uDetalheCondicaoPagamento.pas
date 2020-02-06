unit uDetalheCondicaoPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, JvDataSource,
  Data.DB, MemDS, DBAccess, Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Datasnap.Provider, Datasnap.DBClient, cxCheckBox, cxDBEdit,
  Vcl.StdCtrls, AdvGroupBox, cxTextEdit, cxMaskEdit, cxSpinEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid;

type
  TfrmDetalheCondicaoPagamento = class(TfrmModeloCadastroSimples)
    qrCadastroid_condicaopagamento: TIntegerField;
    qrCadastroid_empresa: TIntegerField;
    qrCadastrodescricao: TWideStringField;
    qrCadastroid_situacao: TIntegerField;
    qrCadastronumero_parcelas: TIntegerField;
    qrCadastroperiodicidade: TIntegerField;
    qrCadastroperiodicidade_inicio: TIntegerField;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    AdvGroupBox1: TAdvGroupBox;
    Label4: TLabel;
    edNumeroParcelas: TcxDBSpinEdit;
    Label5: TLabel;
    edPeriodicidade: TcxDBSpinEdit;
    qrCadastropossui_entrada: TBooleanField;
    ckPossuiEntrada: TcxDBCheckBox;
    btGerarParcelas: TAdvGlowButton;
    cdsCondicaoPagParcela: TClientDataSet;
    dspCondicaoPagParcela: TDataSetProvider;
    qrCondicaoPagParcela: TUniQuery;
    qrCondicaoPagParcelaid_condicaopagamento: TIntegerField;
    qrCondicaoPagParcelaid_empresa: TIntegerField;
    qrCondicaoPagParcelanro_parcela: TIntegerField;
    qrCondicaoPagParceladias_prazo: TIntegerField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cdsCondicaoPagParcelaid_condicaopagamento: TIntegerField;
    cdsCondicaoPagParcelaid_empresa: TIntegerField;
    cdsCondicaoPagParcelanro_parcela: TIntegerField;
    cdsCondicaoPagParceladias_prazo: TIntegerField;
    dsCondicaoPagParcela: TDataSource;
    cxGrid1DBTableView1id_condicaopagamento: TcxGridDBColumn;
    cxGrid1DBTableView1id_empresa: TcxGridDBColumn;
    cxGrid1DBTableView1nro_parcela: TcxGridDBColumn;
    cxGrid1DBTableView1dias_prazo: TcxGridDBColumn;
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure qrCadastroBeforePost(DataSet: TDataSet);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure btGerarParcelasClick(Sender: TObject);
    procedure qrCadastroAfterOpen(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ckPossuiEntradaClick(Sender: TObject);
    procedure qrCadastroAfterScroll(DataSet: TDataSet);
    procedure qrCadastroAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheCondicaoPagamento: TfrmDetalheCondicaoPagamento;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uFuncoes;

procedure TfrmDetalheCondicaoPagamento.btGerarParcelasClick(Sender: TObject);
var numero_parcelas, periodicidade, periodicidade_inicial , dias_acumulador , i : integer;
    possui_entrada : boolean;
begin
  inherited;
  if qrCadastro.FieldByName('numero_parcelas').isnull or (qrCadastro.FieldByName('numero_parcelas').asinteger<0) then
  begin
    Application.MessageBox('Número de parcelas inválido!','Atenção', MB_ICONINFORMATION );
    edNumeroParcelas.SetFocus;
    abort;
  end;
  if qrCadastro.FieldByName('periodicidade').isnull or (qrCadastro.FieldByName('periodicidade').asinteger<0) then
  begin
    Application.MessageBox('Periodicidade inválida!','Atenção', MB_ICONINFORMATION );
    edPeriodicidade.SetFocus;
    abort;
  end;
{  if qrCadastro.FieldByName('periodicidade_inicio').isnull or (qrCadastro.FieldByName('periodicidade_inicio').asinteger<0) then
  begin
    Application.MessageBox('Início da periodicidade inválido!','Atenção', MB_ICONINFORMATION );
    edPeriodicidadeInicio.SetFocus;
    abort;
  end;  }

  numero_parcelas := qrCadastro.FieldByName('numero_parcelas').asinteger;
  possui_entrada := qrCadastro.FieldByName('possui_entrada').asboolean;
  periodicidade :=  qrCadastro.FieldByName('periodicidade').asinteger;
  periodicidade_inicial :=  qrCadastro.FieldByName('periodicidade_inicio').asinteger;

  //apaga o dataset..
  cdsCondicaoPagParcela.first;
  while not cdsCondicaoPagParcela.Eof do
  begin
    cdsCondicaoPagParcela.delete;
  end;

  for I := 1 to numero_parcelas do
  begin
    if i=1 then
    begin
      if possui_entrada then
        dias_acumulador:= 0
      else
        dias_acumulador:= periodicidade;
    end;
    cdsCondicaoPagParcela.Append;
    cdsCondicaoPagParcela.FieldByName('id_condicaopagamento').AsInteger := qrCondicaoPagParcela.ParamByName('id_condicaopagamento').Asinteger;
    cdsCondicaoPagParcela.FieldByName('id_empresa').AsInteger := recproj.iEmp;
    cdsCondicaoPagParcela.FieldByName('nro_parcela').AsInteger := i;
    cdsCondicaoPagParcela.FieldByName('dias_prazo').AsInteger := dias_acumulador;
    cdsCondicaoPagParcela.Post;
    dias_acumulador:= dias_acumulador + periodicidade;
  end;
end;

procedure TfrmDetalheCondicaoPagamento.ckPossuiEntradaClick(Sender: TObject);
begin
  inherited;
  qrCadastro.FieldByName('possui_entrada').asboolean := ckPossuiEntrada.Checked;
end;

procedure TfrmDetalheCondicaoPagamento.dsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  btGerarParcelas.Enabled := dsCadastro.State in [dsEdit, dsInsert] ;
end;

procedure TfrmDetalheCondicaoPagamento.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_return then Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmDetalheCondicaoPagamento.qrCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qrCondicaoPagParcela.ParamByName('id_condicaopagamento').Asinteger := qrCadastro.FieldByName('id_condicaopagamento').AsInteger;
  qrCondicaoPagParcela.ParamByName('id_empresa').Asinteger := recproj.iemp;
  cdsCondicaoPagParcela.Open;
end;

procedure TfrmDetalheCondicaoPagamento.qrCadastroAfterPost(DataSet: TDataSet);
begin
  inherited;
  cdsCondicaoPagParcela.ApplyUpdates(1);
end;

procedure TfrmDetalheCondicaoPagamento.qrCadastroAfterScroll(DataSet: TDataSet);
begin
  inherited;
  cdsCondicaoPagParcela.Close;
  qrCondicaoPagParcela.ParamByName('id_condicaopagamento').Asinteger := qrCadastro.FieldByName('id_condicaopagamento').AsInteger;
  qrCondicaoPagParcela.ParamByName('id_empresa').Asinteger := recproj.iemp;
  cdsCondicaoPagParcela.Open;
end;

procedure TfrmDetalheCondicaoPagamento.qrCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsCondicaoPagParcela.RecordCount <1 then
  begin
    Application.MessageBox('Não foram informadas as parcelas da condição de pagamento!','Atenção', MB_ICONINFORMATION );
    abort;
  end;

  if qrcadastro.FieldByName('numero_parcelas').AsInteger<>cdsCondicaoPagParcela.RecordCount then
  begin
    Application.MessageBox('A quantidade de parcelas informada é diferente das pasrcelas geradas!','Atenção', MB_ICONINFORMATION );
    edNumeroParcelas.SetFocus;
    abort;
  end;

end;

procedure TfrmDetalheCondicaoPagamento.qrCadastroNewRecord(DataSet: TDataSet);
var novo_id : integer;
begin
  inherited;
  novo_id := NovoId('condicaopagamento','id_condicaopagamento', recproj.iemp, 'id_empresa');
  qrCadastro.FieldByName('id_condicaopagamento').AsInteger := novo_id;
  qrCadastro.FieldByName('id_empresa').Asinteger := recproj.iemp;
  qrCadastro.FieldByName('id_situacao').Asinteger := 4;

  qrCadastro.FieldByName('numero_parcelas').asinteger := 1;
  qrCadastro.FieldByName('periodicidade').asinteger := 30;
  qrCadastro.FieldByName('periodicidade_inicio').asinteger :=0;
  qrCadastro.FieldByName('possui_entrada').asboolean := false;

  qrCondicaoPagParcela.ParamByName('id_condicaopagamento').Asinteger := novo_id;
  qrCondicaoPagParcela.ParamByName('id_empresa').Asinteger := recproj.iemp;

end;

end.
