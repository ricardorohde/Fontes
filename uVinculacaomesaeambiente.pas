unit uVinculacaomesaeambiente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.StdCtrls,
  Vcl.Samples.Spin, cxTextEdit, cxDBEdit, Data.DB, MemDS, DBAccess, Uni,
  Vcl.ExtCtrls, AdvPanel, AdvGlowButton;

type
  TfrmVinculacaomesaeambiente = class(TfrmModelo)
    qrAmbiente: TUniQuery;
    qrAmbienteambiente1: TWideStringField;
    qrAmbienteambiente2: TWideStringField;
    qrAmbienteambiente3: TWideStringField;
    qrAmbienteambiente4: TWideStringField;
    dsAmbiente: TDataSource;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    edamb1inicial: TSpinEdit;
    edamb1final: TSpinEdit;
    btSalvar: TAdvGlowButton;
    btCancelar: TAdvGlowButton;
    qrAmbienteid_empresa: TIntegerField;
    edamb3final: TSpinEdit;
    edamb2final: TSpinEdit;
    edamb3inicial: TSpinEdit;
    edamb2inicial: TSpinEdit;
    edamb4inicial: TSpinEdit;
    edamb4final: TSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    btNaoUtilizarAmb2: TAdvGlowButton;
    btNaoUtilizarAmb3: TAdvGlowButton;
    btNaoUtilizarAmb4: TAdvGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btNaoUtilizarAmb2Click(Sender: TObject);
    procedure btNaoUtilizarAmb3Click(Sender: TObject);
    procedure btNaoUtilizarAmb4Click(Sender: TObject);
    procedure qrAmbienteNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVinculacaomesaeambiente: TfrmVinculacaomesaeambiente;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, Funcoes_XE, uFuncoes;

procedure TfrmVinculacaomesaeambiente.btCancelarClick(Sender: TObject);
begin
  inherited;
  qrambiente.Cancel;
  close;
end;

procedure TfrmVinculacaomesaeambiente.btNaoUtilizarAmb2Click(Sender: TObject);
begin
  inherited;
  edamb2inicial.Value:=0;
  edamb2final.Value:=0;
end;

procedure TfrmVinculacaomesaeambiente.btNaoUtilizarAmb3Click(Sender: TObject);
begin
  inherited;
  edamb3inicial.Value:=0;
  edamb3final.Value:=0;
end;

procedure TfrmVinculacaomesaeambiente.btNaoUtilizarAmb4Click(Sender: TObject);
begin
  inherited;
  edamb4inicial.Value:=0;
  edamb4final.Value:=0;
end;

procedure TfrmVinculacaomesaeambiente.btSalvarClick(Sender: TObject);
var a1_i, a1_f ,a2_i, a2_f ,a3_i, a3_f ,a4_i, a4_f :integer;
str_sql:string;
qr_aux:tuniquery;
begin
  inherited;

  a1_i:=edamb1inicial.Value;
  a1_f:=edamb1final.Value;
  a2_i:=edamb2inicial.Value;
  a2_f:=edamb2final.Value;
  a3_i:=edamb3inicial.Value;
  a3_f:=edamb3final.Value;
  a4_i:=edamb4inicial.Value;
  a4_f:=edamb4final.Value;
  
  //Faz a verificação se o numero das mesas estão dentro da faixa
  if a1_f < a1_i then
  begin
    Application.MessageBox('Faixa de mesa inválida para o ambiente 1!','Atenção',MB_ICONINFORMATION);
    edamb1inicial.SetFocus;
    abort;
  end;

  if a2_f < a2_i then
  begin
    Application.MessageBox('Faixa de mesa inválida para o ambiente 2!','Atenção',MB_ICONINFORMATION);
    edamb2inicial.SetFocus;
    abort;
  end;
  
   if a3_f < a3_i then
  begin
    Application.MessageBox('Faixa de mesa inválida para o ambiente 3!','Atenção',MB_ICONINFORMATION);
    edamb3inicial.SetFocus;
    abort;
  end;

   if a4_f < a4_i then
  begin
    Application.MessageBox('Faixa de mesa inválida para o ambiente 4!','Atenção',MB_ICONINFORMATION);
    edamb4inicial.SetFocus;
    abort;
  end;
  // Valida se as faixas de mesa não se sobrescrevem
  if  (((a1_f < a2_i) or (a2_i=0)) and ((a1_f < a3_i) or (a3_i=0)) and ((a1_f < a4_i) or (a4_i=0))) and
      (((a2_i > a1_f) or (a2_i=0)) and ((a2_f < a3_i) or (a3_i=0)) and ((a2_f < a4_i) or (a4_i=0))) and
      (((a3_i > a1_f) or (a3_i=0)) and ((a3_i > a2_f) or (a3_i=0)) and ((a3_f < a4_f) or (a4_i=0))) and
      (((a4_i > a1_f) or (a4_i=0)) and ((a4_i > a2_f) or (a4_i=0)) and ((a4_i > a3_f) or (a4_i=0))) then
  begin
    //Sempre define o ambiente 1
    str_sql:='update mesa set ambiente =1 where mes_003 >=:mesainicial and mes_003 <=:mesafinal and emp_001=:id_empresa';
    qr_aux:=CriaUniQuery(self,frmmenu.conexao);
    ExecutaComandoSQL(str_sql,VarArrayOf([edamb1inicial.Value, edamb1final.Value, recproj.iEmp]));

    //Se foi informada a faixa de mesas para o ambiente 2
    if a2_i>0 then
    begin
      str_sql:='update mesa set ambiente =2 where mes_003 >=:mesainicial and mes_003 <=:mesafinal and emp_001=:id_empresa';
      qr_aux:=CriaUniQuery(self,frmmenu.conexao);
      ExecutaComandoSQL(str_sql,VarArrayOf([edamb2inicial.Value, edamb2final.Value, recproj.iEmp]));
    end;

    //Se foi informada a faixa de mesas para o ambiente 3
    if a3_i>0 then
    begin
      str_sql:='update mesa set ambiente =3 where mes_003 >=:mesainicial and mes_003 <=:mesafinal and emp_001=:id_empresa';
      qr_aux:=CriaUniQuery(self,frmmenu.conexao);
      ExecutaComandoSQL(str_sql,VarArrayOf([edamb3inicial.Value, edamb3final.Value, recproj.iEmp]));
    end;

    //Se foi informada a faixa de mesas para o ambiente 4
    if a4_i>0 then
    begin
      str_sql:='update mesa set ambiente =4 where mes_003 >=:mesainicial and mes_003 <=:mesafinal and emp_001=:id_empresa';
      qr_aux:=CriaUniQuery(self,frmmenu.conexao);
      ExecutaComandoSQL(str_sql,VarArrayOf([edamb4inicial.Value, edamb4final.Value, recproj.iEmp]));
    end;
  end
  else
   begin
      Application.MessageBox(pchar('Faixas de mesas inválidas! O número da mesa não deve '+
                             'repetir em outro ambiente, verifique se não houve sobreposição!'),
                             'Atenção',MB_ICONINFORMATION); //Arrumar mensagem
    abort;
   end;

  qrambiente.post;
  close;
end;

procedure TfrmVinculacaomesaeambiente.FormCreate(Sender: TObject);
var qr_aux:tuniquery;
str_sql:string;

begin
  inherited;
  qrambiente.Close;
  qrambiente.ParamByName('id_empresa').AsInteger:=RecProj.iEmp;
  qrambiente.Open;
  if qrambiente.RecordCount>0 then
  begin
    qrAmbiente.Edit;
  end   
  else
  begin
    qrAmbiente.Insert;  // Senão colocamos a Qr em modo de inserção, senão tiver registro vamos inserir 
  end;

  qr_aux:=CriaUniQuery(self,frmMenu.conexao);
  str_sql:= 'select  ambiente ,min(mes_003) as numeroinicial,max(mes_003) as numerofinal'+
  ' from mesa' +
  ' where sit_001=4 and emp_001=' +IntToStr (RecProj.iEmp) +
  ' GROUP BY ambiente order by ambiente';
  ExecutaConsultaSQL(qr_aux,str_sql);
  
  while not qr_aux.Eof do
  begin
    if qr_aux.FieldByName('ambiente').AsInteger=1 then
    begin
      edamb1inicial.Value:=qr_aux.FieldByName('numeroinicial').AsInteger;
      edamb1final.Value:=qr_aux.FieldByName('numerofinal').AsInteger;
    end;
    
    if qr_aux.FieldByName('ambiente').AsInteger=2 then
    begin
      edamb2inicial.Value:=qr_aux.FieldByName('numeroinicial').AsInteger;
      edamb2final.Value:=qr_aux.FieldByName('numerofinal').AsInteger;
    end;
    
    if qr_aux.FieldByName('ambiente').AsInteger=3 then
    begin   
      edamb3inicial.Value:=qr_aux.FieldByName('numeroinicial').AsInteger;
      edamb3final.Value:=qr_aux.FieldByName('numerofinal').AsInteger;
    end;

    if qr_aux.FieldByName('ambiente').AsInteger=4 then 
    begin
      edamb4inicial.Value:=qr_aux.FieldByName('numeroinicial').AsInteger;
      edamb4final.Value:=qr_aux.FieldByName('numerofinal').AsInteger;
    end;
    
    qr_aux.Next;
  end;
  


end;

procedure TfrmVinculacaomesaeambiente.qrAmbienteNewRecord(DataSet: TDataSet);
begin
  inherited;
   qrambiente.FieldByName('id_empresa').AsInteger:=RecProj.iEmp;
end;

end.
