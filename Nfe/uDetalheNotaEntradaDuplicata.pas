unit uDetalheNotaEntradaDuplicata;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, JvDataSource,
  Data.DB, MemDS, DBAccess, Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxCurrencyEdit, cxDBEdit, cxDropDownEdit, cxCalendar, cxMaskEdit,
  cxSpinEdit, cxTextEdit, Vcl.StdCtrls, dxSkinsCore, dxSkinsDefaultPainters;

type
  TfrmDetalheNotaEntradaDuplicata = class(TfrmModeloCadastroSimples)
    qrCadastroid_nota_entrada: TIntegerField;
    qrCadastroid_empresa: TIntegerField;
    qrCadastroitem: TIntegerField;
    qrCadastronumero_duplicata: TWideStringField;
    qrCadastrodata_vencimento: TDateField;
    qrCadastroid_situacao: TIntegerField;
    qrCadastrovalor: TFloatField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    edValor: TcxDBCurrencyEdit;    procedure qrCadastroBeforePost(DataSet: TDataSet);
    constructor Create(sender: TComponent; id_nota: Integer; id_tabela: Integer = 0); Reintroduce;
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheNotaentradaDuplicata: TfrmDetalheNotaentradaDuplicata;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB;

procedure TfrmDetalheNotaentradaDuplicata.btCancelarClick(Sender: TObject);
begin
  inherited;
  self.close;
end;

procedure TfrmDetalheNotaentradaDuplicata.btSalvarClick(Sender: TObject);
begin
  inherited;
  self.close;
end;

constructor TfrmDetalheNotaentradaDuplicata.Create(sender: TComponent; id_nota: Integer; id_tabela: Integer = 0);
begin
  inherited Create(sender, 'item', 'id_situacao', id_tabela,  false, false, false,  'id_nota_entrada' , id_nota );
  if id_tabela>0 then qrCadastro.Edit;
end;


procedure TfrmDetalheNotaentradaDuplicata.qrCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrCadastro.FieldByName('valor').AsFloat <=0 then
  begin
    Application.MessageBox('Valor inválido', 'Atenção', MB_ICONINFORMATION);
    edValor.setfocus;
    abort;
  end;
end;

procedure TfrmDetalheNotaentradaDuplicata.qrCadastroNewRecord(DataSet: TDataSet);
var str_sql : string;
    valor : double;
begin
  inherited;
  qrCadastro.FieldByName('id_nota_entrada').AsInteger := qrCadastro.ParamByName('id_nota_entrada').AsInteger;
  qrCadastro.FieldByName('id_empresa').AsInteger := recproj.iEmp;
  qrCadastro.FieldByName('item').AsInteger := NovoId('nota_entrada_duplicata', 'item', recproj.iEmp , 'id_empresa', 'id_nota_entrada='+qrCadastro.ParamByName('id_nota_entrada').asstring);
  qrCadastro.FieldByName('id_situacao').AsInteger := 4;
   qrCadastro.FieldByName('data_vencimento').Asdatetime := Date;

  str_sql := format(' select ns.valor_total - coalesce(sub.valor, 0.0) as restante '+
             ' from nota_entrada ns left join (select sum(valor) as valor, id_nota_entrada '+
             ' from nota_entrada_duplicata where id_nota_entrada=%d group by id_nota_entrada )'+
             ' sub on ns.id_nota_entrada=sub.id_nota_entrada '+
             ' where ns.id_nota_entrada=%d ', [qrCadastro.ParamByName('id_nota_entrada').AsInteger,
                                             qrCadastro.ParamByName('id_nota_entrada').AsInteger]);
  BuscaCampo(valor, str_sql, 'restante', false);
  qrCadastro.FieldByName('valor').Asfloat := valor;

end;

end.
