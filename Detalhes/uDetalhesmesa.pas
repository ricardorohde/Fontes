unit uDetalhesmesa;

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
  TfrmDetalhemesa = class(TfrmModelo)
    btNovo: TAdvGlowButton;
    btEditar: TAdvGlowButton;
    btExcluir: TAdvGlowButton;
    btSalvar: TAdvGlowButton;
    btCancelar: TAdvGlowButton;
    AdvPanel1: TAdvPanel;
    AdvGroupBox2: TAdvGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    edNomemesa: TEdit;
    edMesainicial: TSpinEdit;
    edMesafinal: TSpinEdit;
    qrAux1: TUniQuery;
    procedure btNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btExcluirClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalhemesa: TfrmDetalhemesa;

implementation

{$R *.dfm}
uses umenu;

procedure TfrmDetalhemesa.btCancelarClick(Sender: TObject);
begin
  ednomemesa.text:='';
  edmesainicial.Text:='';
  edmesafinal.Text:='';
  btnovo.Enabled:=true;
  bteditar.Enabled:=false;
  btexcluir.Enabled:=false;
  btcancelar.Enabled:=false;
  ednomemesa.Enabled:=false;
  edmesainicial.Enabled:=false;
  edmesafinal.Enabled:=false;

end;

procedure TfrmDetalhemesa.btExcluirClick(Sender: TObject);
var
str_sql:string;
qraux1:tuniquery;
begin
  if Application.MessageBox('DESEJA REALMENTE EXCLUIR TODAS AS MESAS ?','ALERTA',+MB_ICONWARNING+MB_YESNO)=mrYes then
    begin
    qraux1:=tuniquery.Create(self);
    qraux1.Connection:=frmMenu.conexao;
    str_sql:='delete from mesa where emp_001=:emp_001 and sit_001=4' ;
    qraux1.SQL.Add(str_sql);
    qraux1.ParamByName('emp_001').AsInteger:=RecProj.iEmp;
    qraux1.Execute;
    qraux1.close;
    Application.MessageBox('MESAS EXCLUIDAS COM SUCESSO','ALERTA',+MB_ICONQUESTION);
    close;
  end;


end;

procedure TfrmDetalhemesa.btNovoClick(Sender: TObject);
begin
    btnovo.Enabled:=false;
    bteditar.Enabled:=false;
    btsalvar.Enabled:=true;
    btexcluir.Enabled:=false;
    btcancelar.Enabled:=true;
    ednomemesa.Enabled:=true;
    edmesainicial.Enabled:=true;
    edmesafinal.Enabled:=true;
    ednomemesa.SetFocus;


end;

procedure TfrmDetalhemesa.btSalvarClick(Sender: TObject);
var
  i,prox_id:Integer;
  qraux1:tuniquery;
  str_sql:string;
begin
     if edNomemesa.Text='' then
    begin
      Application.MessageBox('CAMPO DESCRIÇÃO NÃO PODE SER VAZIO!','ALERTA',MB_ICONEXCLAMATION+MB_OK);
      edNomemesa.SetFocus;
      abort;
    end;

    if (edmesainicial.value<=0) and (edMesafinal.Value<=0) then
    begin
      Application.MessageBox('FAIXA DE MESAS NÃO PODE SER 0!','ALERTA',MB_ICONEXCLAMATION+MB_OK);
      edmesainicial.SetFocus;
      abort;
    end;

    if(edmesainicial.Text='') or (edmesafinal.Text='') then
    begin
      Application.MessageBox('NÚMERO DA MESA NÃO PODE SER VAZIO!','ALERTA',+MB_ICONQUESTION+MB_OK);
      edmesainicial.SetFocus;
      abort;
    end;

    if (edmesafinal.value<edmesainicial.value) then
    begin
      Application.MessageBox('NÚMERO FINAL DA MESA NÃO PODE SER MENOR QUE O NÚMERO INICIAL! ','ALERTA',+MB_ICONQUESTION+MB_OK);
      edmesafinal.SetFocus;
      abort;
    end;

     qraux1:=tuniquery.Create(self);
     qraux1.Connection:=frmMenu.conexao;
     str_sql:='select mes_003 from mesa where emp_001=:emp_001 and sit_001=4 and mes_003>=:inicial and mes_003<=:final';
     qraux1.SQL.Add(str_sql);
     qraux1.ParamByName('emp_001').AsInteger:=RecProj.iEmp;
     qraux1.ParamByName('inicial').Asinteger:=edmesainicial.Value;
     qraux1.ParamByName('final').Asinteger:=edmesafinal.Value;
     qraux1.Open;

     if qraux1.RecordCount>0 then
     begin
         Application.MessageBox('ESSE NÚMERO DE MESA JÁ EXISTE, POR FAVOR INFORME UM NÚMERO VALIDO!','ALERTA',+MB_ICONQUESTION);
         edmesainicial.SetFocus;
         abort;
     end;
     qraux1.Close;


    for i := edmesainicial.Value to edmesafinal.value do
    begin
      qraux1:=tuniquery.Create(self);
      qraux1.Connection:=frmMenu.conexao;
      str_sql:='select coalesce( max(mes_001),0)+1 as proximo_item from mesa where emp_001=:emp_001';
      qraux1.SQL.Add(str_sql);
      qraux1.ParamByName('emp_001').AsInteger:=RecProj.iEmp;
      qraux1.Open;
      prox_id:=qraux1.FieldByName('proximo_item').AsInteger;

      str_sql:='insert into mesa'+
      '(mes_001,emp_001,mes_002,mes_003,sit_001,usu_001_1,dat_001_1 )'+
      'values(:mes_001,:emp_001,:mes_002,:mes_003,:sit_001,:usu_001_1,:dat_001_1)';

      qrAux1.Close;
      qrAux1.SQL.Clear;
      qrAux1.SQL.Add(str_sql);
      qraux1.ParamByName('mes_001').AsInteger:=prox_id;
      qraux1.ParamByName('emp_001').AsInteger:=RecProj.iEmp;
      qraux1.ParamByName('mes_002').AsString:=trim(ednomemesa.Text+' '+FloatToStr(i));
      qraux1.ParamByName('mes_003').AsInteger:=i;
      qraux1.ParamByName('sit_001').AsInteger:=4;
      qraux1.ParamByName('usu_001_1').Asinteger:=RecProj.iUsuario ;
      qraux1.ParamByName('dat_001_1').AsDateTime:=DataServer(frmMenu.conexao);
      qraux1.Execute;

    end;

      Application.MessageBox('MESAS CADASTRADAS COM SUCESSO!','ALERTA',+MB_ICONQUESTION+mb_ok);
      qraux1.Close;
      btnovo.Enabled:=true;
      bteditar.Enabled:=false;
      btsalvar.Enabled:=false;
      btexcluir.Enabled:=true;
      btcancelar.Enabled:=false;
      ednomemesa.Enabled:=false;
      edmesainicial.Enabled:=false;
      edmesafinal.Enabled:=false;
      ednomemesa.Text:='';
      edmesainicial.Text:='';
      edmesafinal.Text:='';

end;

procedure TfrmDetalhemesa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key= vk_return then
      Perform(WM_NEXTDLGCTL,0,0)

end;

procedure TfrmDetalhemesa.FormShow(Sender: TObject);
begin
  btnovo.Enabled:=true;
  bteditar.Enabled:=true;
  btexcluir.Enabled:=false;
  btsalvar.Enabled:=false;
  btcancelar.Enabled:=false;
  ednomemesa.Enabled:=false;
  edmesainicial.Enabled:=false;
  edmesafinal.Enabled:=false;
end;

end.
