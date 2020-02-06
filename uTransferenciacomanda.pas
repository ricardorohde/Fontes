unit uTransferenciacomanda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, AdvGlowButton, Vcl.StdCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls, AdvGroupBox, AdvPanel,uni;

type
  TfrmTransferenciacomanda = class(TfrmModelo)
    COMANDA: TAdvGroupBox;
    Image1: TImage;
    edComanda: TEdit;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    LblComandaatual: TLabel;
    constructor create(sender:tcomponent;id_venda,numero_comanda:integer);reintroduce;
    procedure btConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    id_venda:integer;
    numero_comanda,comanda_inicio,comanda_fim:integer;
  public
    { Public declarations }
  end;

var
  frmTransferenciacomanda: TfrmTransferenciacomanda;

implementation

{$R *.dfm}
uses umenu, uControleMesa;
procedure TfrmTransferenciacomanda.btCancelaClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTransferenciacomanda.btConfirmaClick(Sender: TObject);
var str_sql:string;
qraux1:tuniquery;
begin
  if edcomanda.Text='' then
  begin
    Application.MessageBox('O NÚMERO DA COMANDA NÃO POSER SER VAZIO, POR FAVOR INFORME UM NÚMERO VÁLIDO','ALERTA',+MB_ICONQUESTION+MB_OK);
    edcomanda.SetFocus;
    abort;
  end;
  if (StrToInt(edcomanda.text)>=comanda_inicio) and (StrToInt(edcomanda.Text)<=comanda_fim) then
  begin
    if numero_comanda=StrToInt(edcomanda.Text) then
    begin
      Application.MessageBox('O NÚMERO DA COMANDA NÃO POSER SER VAZIO, POR FAVOR INFORME UM NÚMERO VÁLIDO','ALERTA',+MB_ICONQUESTION+MB_OK);
      edcomanda.SetFocus;
      abort;
    end;
    str_sql:='select ven_001 from venda where ven_026=:comanda and sit_001 in (8,21) and emp_001=:emp';
    qraux1:=tuniquery.Create(self);
    qraux1.Connection:=frmMenu.conexao;
    qrAux1.Close;
    qrAux1.SQL.Clear;
    qrAux1.SQL.Add(str_sql);
    qraux1.ParamByName('comanda').AsInteger:=StrToInt(edcomanda.Text);
    qraux1.ParamByName('emp').AsInteger:=RecProj.iEmp;
    qraux1.Open;
    if qraux1.RecordCount>0 then
    begin
      Application.MessageBox('JÁ EXISTE VENDA NESSA COMANDA!, POR FAVOR SELECIONE UMA OUTRA COMANDA','ALERTA',+MB_ICONINFORMATION);
      edcomanda.SetFocus;
      abort;
    end
    else
    begin
      str_sql:='update venda set ven_026=:ven_026 where ven_001=:venda and emp_001=:emp';
      qrAux1.Close;
      qrAux1.SQL.Clear;
      qrAux1.SQL.Add(str_sql);
      qraux1.ParamByName('ven_026').AsInteger:=StrToInt(edcomanda.Text);
      qraux1.ParamByName('venda').AsInteger:=id_venda;
      qraux1.ParamByName('emp').AsInteger:=RecProj.iEmp;
      qraux1.Execute;
      Application.MessageBox('COMANDA TRANSFERIDA COM SUCESSO!','ALERTA',+MB_ICONINFORMATION);
      self.Tag:=1;
      close;
    end;
  end
  else
  begin
    Application.MessageBox('NÚMERO DE COMANDA NÃO EXISTENTE!,POR FAVOR INFORME UM NUMÉRO DE COMANDA VÁLIDO!','ALERTA',+MB_ICONINFORMATION);
    edcomanda.SetFocus;
    abort;
  end;





end;

constructor tfrmtransferenciacomanda.create(sender:tcomponent;id_venda,numero_comanda:integer);
var str_sql:string;
qraux1:tuniquery;
begin
  inherited create(sender);
  self.id_venda:=id_venda;
  self.numero_comanda:=numero_comanda;
  LblComandaatual.Caption:='COMANDA ATUAL: '+IntToStr(numero_comanda);
  str_sql:='select numero_comanda_inicio, numero_comanda_fim from empresas where emp_001=:emp';
  qraux1:=tuniquery.Create(self);
  qraux1.Connection:=frmMenu.conexao;
  qrAux1.Close;
  qrAux1.SQL.Clear;
  qrAux1.SQL.Add(str_sql);
  qraux1.ParamByName('emp').AsInteger:=RecProj.iEmp;
  qraux1.Open;
  comanda_inicio:=qraux1.FieldByName('numero_comanda_inicio').AsInteger;
  comanda_fim:=qraux1.FieldByName('numero_comanda_fim').AsInteger;

end;








procedure TfrmTransferenciacomanda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key= vk_return then
Perform(WM_NEXTDLGCTL,0,0)
end;

procedure TfrmTransferenciacomanda.FormShow(Sender: TObject);
begin
  edcomanda.SetFocus;

end;

end.
