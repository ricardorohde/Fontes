unit uDetalheCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, Data.DB,
  JvDataSource, MemDS, DBAccess, Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.DBCtrls, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmDetalheCidade = class(TfrmModeloCadastroSimples)
    qrCadastrocid_001: TIntegerField;
    qrCadastrocid_002: TWideStringField;
    qrCadastrocid_003: TWideStringField;
    qrCadastroest_001: TIntegerField;
    qrListaEstados: TUniQuery;
    qrListaEstadosid_estado: TIntegerField;
    qrListaEstadosuf: TWideStringField;
    SpeedButton1: TSpeedButton;
    dsListaEstados: TDataSource;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure btExcluirClick(Sender: TObject);
    procedure qrCadastroAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheCidade: TfrmDetalheCidade;

implementation

{$R *.dfm}

uses Funcao_DB, uMenu;

procedure TfrmDetalheCidade.btExcluirClick(Sender: TObject);
var id : integer;
begin
  //inherited;
  if not btExcluir.Enabled then abort;
  Application.NormalizeAllTopMosts;
  //if Application.MessageBox('Confirma a exclusão do registro? Esta ação não pode ser desfeita', 'Atenção', MB_APPLMODAL + MB_ICONQUESTION + MB_YESNO)=mryes then
  if  Application.MessageBox( 'Confirma a exclusão do registro? Esta ação não pode ser desfeita', 'Atenção', MB_TOPMOST  + MB_ICONQUESTION + MB_YESNO)=mryes then
  begin
    try
      id:= qrCadastro.FieldByName('cid_001').AsInteger;
      qrCadastro.Delete;
      qrCadastro.close;
    except
      Application.MessageBox('Erro ao excluir o registro. A exclusão não é possível caso o item já tenha sido usado no sistema!', 'Atenção', MB_ICONERROR + MB_OK);
    end;
  end;
end;

procedure TfrmDetalheCidade.qrCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qrlistaestados.Open;
end;

procedure TfrmDetalheCidade.qrCadastroNewRecord(DataSet: TDataSet);
var str_sql : string;
    id_estado : integer;
begin
  inherited;
  //busca o codigo de uf da empresa
  str_sql :=' select est.est_001 from empresas emp '+
            ' join cidades cid on (cid.cid_001 = emp.cid_001) '+
            ' join estados est on (est.est_001 = cid.est_001) '+
            ' where emp.emp_001='+inttostr(recproj.iemp);
  if not BuscaCampo(id_estado, str_sql, '', false) then
    id_estado := 26;

  qrCadastro.fieldbyname('cid_001').AsInteger := NovoId('cidades', 'cid_001',0, '0');
  qrCadastro.fieldbyname('est_001').AsInteger := id_estado;

end;

end.
