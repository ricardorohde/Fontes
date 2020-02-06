unit uDetalheMesa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModeloCadastroSimples, JvDataSource,
  Data.DB, MemDS, DBAccess, Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.StdCtrls, cxTextEdit, cxDBEdit, Vcl.Mask, Vcl.DBCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox;

type
  TfrmDetalheMesa = class(TfrmModeloCadastroSimples)
    qrCadastromes_001: TIntegerField;
    qrCadastroemp_001: TIntegerField;
    qrCadastromes_002: TWideStringField;
    qrCadastromes_003: TIntegerField;
    qrCadastrosit_001: TIntegerField;
    qrCadastrodat_001_1: TDateTimeField;
    qrCadastronome_reserva: TWideStringField;
    qrCadastrotelefone_reserva: TWideStringField;
    qrCadastrodata_reserva: TDateField;
    qrCadastrohora_reserva: TTimeField;
    DBEdit1: TDBEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    qrCadastroambiente: TIntegerField;
    cbAmbiente: TJvDBComboBox;
    Label4: TLabel;
    procedure qrCadastroNewRecord(DataSet: TDataSet);
    procedure qrCadastromes_003Change(Sender: TField);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheMesa: TfrmDetalheMesa;

implementation

{$R *.dfm}

uses Funcao_DB, uMenu;

procedure TfrmDetalheMesa.FormCreate(Sender: TObject);
var qr_aux:tuniquery;
str_sql:string;
begin
  inherited;
  qr_aux:=CriaUniQuery(self,frmmenu.conexao);  // Faz a conexão
  str_sql:='select ambiente1, ambiente2, ambiente3, ambiente4 from ambiente where id_empresa='+ IntToStr( RecProj.iEmp);
  ExecutaConsultaSQL(qr_aux,str_sql);
  if qr_aux.RecordCount>0 then  // Verifica se a consulta é maior que 0
  begin
    cbAmbiente.Items.Add(qr_aux.FieldByName('ambiente1').AsString);   // Passo os valores para o combo
    cbAmbiente.Items.Add(qr_aux.FieldByName('ambiente2').AsString);   // Passa os valores para o combo
    cbAmbiente.Items.Add(qr_aux.FieldByName('ambiente3').AsString);   // Passa os valores para o combo
    cbAmbiente.Items.Add(qr_aux.FieldByName('ambiente4').AsString);   // Passa os valores para o combo

    // Valores correspondente
    cbAmbiente.Values.Add('1');
    cbAmbiente.Values.Add('2');
    cbAmbiente.Values.Add('3');
    cbAmbiente.Values.Add('4');

  end;


end;

procedure TfrmDetalheMesa.qrCadastromes_003Change(Sender: TField);
var nro_mesa :integer;
begin
  inherited;
  if BuscaCampo(nro_mesa, format('select mes_003 from mesa where mes_003=%d and emp_001 =%d and mes_001<>%d',
                                [qrCadastro.FieldByName('mes_003').AsInteger,
                                recproj.iEmp,
                                qrCadastro.FieldByName('mes_001').asinteger]),'Número', false ) then
  begin
    Application.MessageBox('Número de mesa já cadastrado!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;
end;

procedure TfrmDetalheMesa.qrCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrCadastro.FieldByName('sit_001').AsInteger := 4;
  qrCadastro.FieldByName('mes_001').AsInteger := NovoId('mesa', 'mes_001', RecProj.iEmp, 'emp_001');
  qrCadastro.FieldByName('emp_001').AsInteger := RecProj.iEmp;
  qrCadastro.FieldByName('mes_003').AsInteger := qrCadastro.FieldByName('mes_001').AsInteger;

end;

end.
