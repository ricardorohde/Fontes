unit uDetalheNotaSaidaDocReferenciado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, JvDataSource,
  Data.DB, MemDS, DBAccess, Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.StdCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox, cxMaskEdit,
  cxSpinEdit, cxDBEdit, cxTextEdit;

type
  TfrmDetalheNotaSaidaDocReferenciado = class(TfrmModeloCadastroSimples)
    qrCadastroid_nota_saida: TIntegerField;
    qrCadastroid_empresa: TIntegerField;
    qrCadastroitem: TIntegerField;
    qrCadastrotipo_doc: TWideStringField;
    qrCadastrochave_nfe: TWideStringField;
    qrCadastronumero_ecf: TIntegerField;
    qrCadastronumero_cupom_ecf: TIntegerField;
    qrCadastroid_situacao: TIntegerField;
    Label1: TLabel;
    edChave: TcxDBTextEdit;
    Label2: TLabel;
    edNumeroECF: TcxDBSpinEdit;
    Label3: TLabel;
    edNumeroCupomECF: TcxDBSpinEdit;
    JvDBComboBox1: TJvDBComboBox;
    Label4: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label5: TLabel;
  constructor Create(sender : Tcomponent ; id_nota : integer; id_tabela : integer = 0); reintroduce;
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure qrCadastroBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheNotaSaidaDocReferenciado: TfrmDetalheNotaSaidaDocReferenciado;

implementation

{$R *.dfm}

uses Funcao_DB, uMenu;

procedure TfrmDetalheNotaSaidaDocReferenciado.btCancelarClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TfrmDetalheNotaSaidaDocReferenciado.btSalvarClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

constructor TfrmDetalheNotaSaidaDocReferenciado.Create(sender: TComponent; id_nota: Integer; id_tabela: Integer = 0);
begin
  inherited Create(sender, 'item', 'id_situacao', id_tabela,  false, false, false,  'id_nota_saida' , id_nota );

  if id_tabela>0 then qrCadastro.Edit;

end;

procedure TfrmDetalheNotaSaidaDocReferenciado.qrCadastroBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if qrCadastro.FieldByName('tipo_doc').AsString='NFE' then
  begin
    if length(qrCadastro.FieldByName('chave_nfe').asstring)<44 then
    begin
      application.MessageBox('A chave da NFe/SAT é inválida!', 'Atenção', MB_ICONINFORMATION );
      if edChave.CanFocus then edchave.SetFocus;
      abort;
    end;

  end
  else
  begin
    if qrCadastro.FieldByName('numero_ecf').asinteger<=0 then
    begin
      application.MessageBox('Informe o número do ECF!', 'Atenção', MB_ICONINFORMATION );
      if edNumeroECF.CanFocus then edNumeroECF.SetFocus;

      abort;
    end;

    if qrCadastro.FieldByName('numero_cupom_ecf').asinteger<=0 then
    begin
      application.MessageBox('Informe o número do cupom!', 'Atenção', MB_ICONINFORMATION );
      if edNumeroCupomECF.CanFocus then edNumeroCupomECF.SetFocus;
      abort;
    end;

  end;


end;

procedure TfrmDetalheNotaSaidaDocReferenciado.qrCadastroNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  qrCadastro.FieldByName('id_nota_saida').AsInteger := qrCadastro.ParamByName('id_nota_saida').AsInteger;
  qrCadastro.FieldByName('id_empresa').AsInteger := recproj.iEmp;
  qrCadastro.FieldByName('item').AsInteger := NovoId('nota_saida_doc_referenciado', 'item', recproj.iEmp , 'id_empresa', 'id_nota_saida='+qrCadastro.ParamByName('id_nota_saida').asstring);
  qrCadastro.FieldByName('id_situacao').AsInteger := 4;
end;

end.
