unit uDetalhesComanda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.StdCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, cxTextEdit, cxDBEdit, Vcl.Mask,
  JvExMask, JvSpin, AdvGroupBox, Data.DB, JvDataSource, MemDS, DBAccess, Uni,
  AdvGlowButton, Vcl.ExtCtrls, AdvPanel, cxCheckBox, System.Actions,
  Vcl.ActnList, Vcl.DBCtrls, Vcl.Samples.Spin, uFuncoes, Funcao_DB;

type
  TfrmDetalheComanda = class(TfrmModelo)
    btSalvar: TAdvGlowButton;
    btCancelar: TAdvGlowButton;
    AdvPanel1: TAdvPanel;
    AdvGroupBox2: TAdvGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    edNomecomanda: TEdit;
    qrAux1: TUniQuery;
    edComandainicial: TEdit;
    edComandafinal: TEdit;
    procedure btCancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheComanda: TfrmDetalheComanda;

implementation

{$R *.dfm}
uses umenu;

procedure TfrmDetalheComanda.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDetalheComanda.btSalvarClick(Sender: TObject);
var i, prox_id: Integer;
    str_sql:string;
begin
  if edNomeComanda.Text='' then
  begin
    Application.MessageBox('CAMPO DESCRIÇÃO NÃO PODE SER VAZIO!','ALERTA',MB_ICONEXCLAMATION+MB_OK);
    edNomeComanda.SetFocus;
    abort;
  end;

  if(edComandainicial.Text = '') or (edComandafinal.Text = '')  then
  begin
    Application.MessageBox('FAIXA DE COMANDAS NÃO PODE SER VAZIO!','ALERTA',+MB_ICONQUESTION+MB_OK);
    edComandainicial.SetFocus;
    abort;
  end;

  if (edComandainicial.Text = '0') or (edComandafinal.Text = '0') then
  begin
    Application.MessageBox('FAIXA DE COMANDAS NÃO PODE SER 0!','ALERTA',MB_ICONEXCLAMATION+MB_OK);
    edComandainicial.SetFocus;
    abort;
  end;

  if StrToInt(edComandafinal.Text) < StrToInt(edComandainicial.Text) then
  begin
    Application.MessageBox('NÚMERO FINAL DA COMANDA NÃO PODE SER MENOR QUE O NÚMERO INICIAL! ','ALERTA',+MB_ICONQUESTION+MB_OK);
    edComandafinal.SetFocus;
    abort;
  end;

  qraux1:=tuniquery.Create(self);
  qraux1.Connection:=frmMenu.conexao;
  str_sql:='select com_003 from comanda where emp_001=:emp_001 and sit_001=4 and com_003>=:inicial and com_003<=:final';
  qraux1.SQL.Add(str_sql);
  qraux1.ParamByName('emp_001').AsInteger := RecProj.iEmp;
  qraux1.ParamByName('inicial').Asinteger := StrToInt(edComandainicial.Text);
  qraux1.ParamByName('final').Asinteger   := StrToInt(edComandafinal.Text);
  qraux1.Open;

  if qraux1.RecordCount>0 then
  begin
    Application.MessageBox('ESSE NÚMERO DE COMANDA JÁ EXISTE!','ALERTA',+MB_ICONQUESTION);
    edComandainicial.SetFocus;
    abort;
  end;

  qraux1.Close;

  for i := StrToInt(edComandainicial.Text) to StrToInt(edComandafinal.Text) do
  begin
    qraux1:=tuniquery.Create(self);
    qraux1.Connection:=frmMenu.conexao;
    str_sql:='select coalesce( max(com_001),0)+1 as proximo_item from comanda where emp_001=:emp_001';
    qraux1.SQL.Add(str_sql);
    qraux1.ParamByName('emp_001').AsInteger:=RecProj.iEmp;
    qraux1.Open;
    prox_id:=qraux1.FieldByName('proximo_item').AsInteger;

    str_sql:='insert into comanda'+
    '(com_001,emp_001,com_002,com_003,sit_001,usu_001_1,dat_001_1)'+
    'values(:com_001,:emp_001,:com_002,:com_003,:sit_001,:usu_001_1,:dat_001_1)';

    qrAux1.Close;
    qrAux1.SQL.Clear;
    qrAux1.SQL.Add(str_sql);
    qraux1.ParamByName('com_001').AsInteger    := prox_id;
    qraux1.ParamByName('emp_001').AsInteger    := RecProj.iEmp;
    qraux1.ParamByName('com_002').AsString     := trim(edNomecomanda.Text+' '+FloatToStr(i));
    qraux1.ParamByName('com_003').AsInteger    := i;
    qraux1.ParamByName('sit_001').AsInteger    := 4;
    qraux1.ParamByName('usu_001_1').Asinteger  := RecProj.iUsuario ;
    qraux1.ParamByName('dat_001_1').AsDateTime := DataServer(frmMenu.conexao);
    qraux1.Execute;
  end;

  Application.MessageBox('COMANDAS CADASTRADAS COM SUCESSO!','ALERTA',+MB_ICONQUESTION+mb_ok);

  qraux1.Close;

  Close;
end;

procedure TfrmDetalheComanda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key= vk_return then
    Perform(WM_NEXTDLGCTL,0,0);
end;

end.
