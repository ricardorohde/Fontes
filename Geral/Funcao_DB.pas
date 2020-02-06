unit Funcao_DB;

interface

uses
  System.Classes,  System.Variants, VCL.Forms, IniFiles, SysUtils, Winapi.Windows, VCL.Controls, DateUtils, StrUtils, Uni, Datasnap.DBClient;

//function NovoID(Conexao: TUniConnection; Tabela: String; Empresa: Integer): Integer; overload;
function DataServer(Conexao: TUniConnection): TDateTime;
function Exists_Record(Conexao: TUniConnection; Tabela: String; Campo: Array of String; Valor: Array of Variant;
  Where: String): Boolean;
procedure PreparaQuerySQL(var Query : TUniQuery; sql : string );
function ExecutaConsultaSQL (var Query : TUniQuery; sql : string ) : boolean;
function ExecutaComandoSQL (sql : string ) : integer;       overload;
function ExecutaComandoSQL  (sql : string ; parametros : Variant) : integer;    overload;
function BuscaCampo(out campo : string ; sql, nome_registro: string ; aviso : boolean = true) : boolean;  overload
function BuscaCampo(out campo : double ; sql, nome_registro: string ; aviso : boolean = true) : boolean;  overload
function BuscaCampo(out campo : integer ; sql, nome_registro: string ; aviso : boolean = true) : boolean;  overload
function BuscaCampo(out campo : boolean ; sql, nome_registro: string ; aviso : boolean = true) : boolean;  overload
function BuscaCampo(out campo : TDateTime ; sql, nome_registro: string ; aviso : boolean = true) : boolean;  overload
function BuscaCampo(out campo : Variant ; sql, nome_registro: string ; aviso : boolean = true) : boolean;  overload
function NovoId(tabela, nome_campo_chave : string; id_empresa : integer; nome_campo_id_empresa : string = 'emp_001' ; filtro : string ='') : integer;  overload;
function insereClientDataSet (ClientDataSet : TClientDataSet; tabela :string):boolean;
function CriaUniQuery (sender: Tcomponent; conexao : TUniConnection):Tuniquery;

implementation

uses uMenu;

function CriaUniQuery (sender: Tcomponent; conexao : TUniConnection):Tuniquery;
var qr : Tuniquery;
begin
  qr := Tuniquery.Create(sender);
  qr.Connection := conexao;
  result := qr;
end;

function insereClientDataSet (ClientDataSet : TClientDataSet; tabela :string):boolean;
var str_insert, str_campos, str_par : string ;
    i: integer;
    parametros : Variant;
begin
  result := false;
  //ClientDataSet
  str_insert := ' insert into ' + tabela + ' ( ';
  str_campos := '';
  str_par :='';
  parametros := VarArrayCreate([0, ClientDataSet.FieldCount-1], varVariant);
  //monta as colunas
  for I := 0 to ClientDataSet.FieldCount-1 do
  begin
    str_campos:=str_campos + ClientDataSet.Fields[i].FieldName;
    if i<ClientDataSet.FieldCount-1 then str_campos:=str_campos +',';
    str_par := str_par + ':par'+ IntToStr(i);
    if i<ClientDataSet.FieldCount-1 then str_par:=str_par +',';
  end;
  str_insert := str_insert +  str_campos + ') values (' + str_par + ')' ;

  ClientDataSet.First;
  while not ClientDataSet.eof do
  begin
    for i := 0 to ClientDataSet.FieldCount-1 do
    begin
      parametros[i] := ClientDataSet.fields[i].Value;
    end;
    result:= ExecutaComandoSQL(str_insert,parametros)>0;
    ClientDataSet.next;
  end;
end;

function NovoId(tabela, nome_campo_chave : string; id_empresa : integer; nome_campo_id_empresa : string = 'emp_001'; filtro : string ='') : integer;
var qr_aux : TUniQuery;
    sql : string;
begin
  qr_aux := TUniQuery.Create(nil);
  qr_aux.Connection := frmMenu.conexao;
  if trim(filtro) ='' then filtro := ' true ';

  sql := Format('select coalesce(max(%s) ,0)+1 from %s where %s=%d and %s', [nome_campo_chave, tabela, nome_campo_id_empresa, id_empresa, filtro]);
  if ExecutaConsultaSQL(qr_aux, sql) then
    result:= qr_aux.Fields[0].AsInteger
  else
    result:=0;
  FreeAndNil(qr_aux);
end;

function BuscaCampo(out campo : string ; sql , nome_registro  : string ; aviso : boolean = true) : boolean;
var   qrAux1 : tuniquery;
begin
  qrAux1 :=  tuniquery.Create(nil);
  qrAux1.Connection := frmMenu.conexao;

  ExecutaConsultaSQL(qrAux1, sql );
  result := qrAux1.RecordCount>0;
  if not result then
  begin
    if aviso then
      Application.MessageBox(pchar( nome_registro+ ' não encontrada(o)!'), 'Atenção', MB_ICONWARNING);
  end
  else
    campo := qrAux1.Fields[0].asstring ;
  FreeAndNil(qrAux1);
end;

function BuscaCampo(out campo : double ; sql , nome_registro  : string ; aviso : boolean = true) : boolean;
var   qrAux1 : tuniquery;
begin
  qrAux1 :=  tuniquery.Create(nil);
  qrAux1.Connection := frmMenu.conexao;

  ExecutaConsultaSQL(qrAux1, sql );
  result := qrAux1.RecordCount>0;
  if not result then
  begin
    if aviso then
      Application.MessageBox(pchar( nome_registro + ' não encontrada(o)!'), 'Atenção', MB_ICONWARNING);
  end
  else
    campo := qrAux1.Fields[0].asfloat ;
  FreeAndNil(qrAux1);
end;


function BuscaCampo(out campo : integer ; sql , nome_registro  : string ; aviso : boolean = true) : boolean;
var   qrAux1 : tuniquery;
begin
  qrAux1 :=  tuniquery.Create(nil);
  qrAux1.Connection := frmMenu.conexao;

  ExecutaConsultaSQL(qrAux1, sql );
  result := qrAux1.RecordCount>0;
  if not result then
  begin
    if aviso then
      Application.MessageBox(pchar( nome_registro + ' não encontrada(o)!'), 'Atenção', MB_ICONWARNING);
  end
  else
    campo := qrAux1.Fields[0].asinteger ;
  FreeAndNil(qrAux1);
end;



function BuscaCampo(out campo : Variant ; sql, nome_registro: string ; aviso : boolean = true) : boolean;
var   qrAux1 : tuniquery;
begin
  qrAux1 :=  tuniquery.Create(nil);
  qrAux1.Connection := frmMenu.conexao;

  ExecutaConsultaSQL(qrAux1, sql );
  result := qrAux1.RecordCount>0;
  if not result then
  begin
    if aviso then
      Application.MessageBox(pchar( nome_registro + ' não encontrada(o)!'), 'Atenção', MB_ICONWARNING);
  end
  else
    campo := qrAux1.Fields[0].value ;
  FreeAndNil(qrAux1);
end;

function BuscaCampo(out campo : TDateTime ; sql, nome_registro: string ; aviso : boolean = true) : boolean;
var   qrAux1 : tuniquery;
begin
  qrAux1 :=  tuniquery.Create(nil);
  qrAux1.Connection := frmMenu.conexao;

  ExecutaConsultaSQL(qrAux1, sql );
  result := qrAux1.RecordCount>0;
  if not result then
  begin
    if aviso then
      Application.MessageBox(pchar( nome_registro + ' não encontrada(o)!'), 'Atenção', MB_ICONWARNING);
  end
  else
    campo := qrAux1.Fields[0].AsDateTime ;
  FreeAndNil(qrAux1);
end;


function BuscaCampo(out campo : boolean ; sql , nome_registro  : string ; aviso : boolean = true) : boolean;
var   qrAux1 : tuniquery;
begin
  qrAux1 :=  tuniquery.Create(nil);
  qrAux1.Connection := frmMenu.conexao;

  ExecutaConsultaSQL(qrAux1, sql );
  result := qrAux1.RecordCount>0;
  if not result then
  begin
    if aviso then
      Application.MessageBox(pchar( nome_registro + ' não encontrada(o)!'), 'Atenção', MB_ICONWARNING);
  end
  else
    campo := qrAux1.Fields[0].asboolean ;
  FreeAndNil(qrAux1);
end;


procedure PreparaQuerySQL(var Query : TUniQuery; sql : string );
begin
  Query.close;
  Query.SQL.Clear;
  Query.SQL.Add(sql);
end;

function ExecutaConsultaSQL(var Query : TUniQuery; sql : string ) : boolean;
begin
  PreparaQuerySQL( Query ,sql );
  Query.Open;
  Result:= Query.RecordCount>0;
end;

function ExecutaComandoSQL (sql : string ) : integer;
var query : TUniQuery;
begin
  query := TUniQuery.Create(nil);
  Query.Connection:=frmMenu.conexao;
  Query.SQL.Add(sql);
  Query.Execute;
  Result:= Query.RowsAffected;
  FreeAndNil(Query);
end;

function ExecutaComandoSQL(sql : string ; Parametros : variant) : integer;
var query : TUniQuery;
    i, j : integer;
begin
  query := TUniQuery.Create(nil);
  Query.Connection:=frmMenu.conexao;
  Query.SQL.Add(sql);

  //Se for passado varios parâmetros
  if VarIsArray(Parametros)  then
  begin
    i := VarArrayLowBound(Parametros, 1);
    j := VarArrayHighBound(Parametros, 1);
    while i <= j do
    begin
      Query.Params[i].Value:=Parametros[i];
      Inc(i);
    end;
  end
  //..ou valor único
  else
  Query.Params[0].Value:=Parametros;

  Query.Execute;
  Result:= Query.RowsAffected;
  FreeAndNil(Query);
end;


function DataServer(Conexao: TUniConnection): TDateTime;
var
  qrDATA: TUniQuery;
begin
  qrDATA := TUniQuery.Create(nil);
  //
  with qrDATA, SQL do
  begin
    Connection := Conexao;
    Add(' SELECT NOW()::TIMESTAMP(0) AS DATA');
    Open;
    Result := FieldByName('DATA').AsDateTime;
  end;
  FreeAndNil(qrDATA);
end;

function Exists_Record(Conexao: TUniConnection; Tabela: String; Campo: Array of String; Valor: Array of Variant;
  Where: String): Boolean;
var
  qrBuscar: TUniQuery;
  I: Integer;
begin
  Result := False;
  qrBuscar := TUniQuery.Create(Nil);
  with qrBuscar, SQL do
  begin
    Connection := Conexao;
    Add(' SELECT COUNT(1) AS CONTADOR ');
    Add(' FROM ' + Tabela);
    for I := 0 to Length(Campo) - 1 do
    begin
      if I = 0 then
        Add(' WHERE ' + Campo[I] + ' = :' + Campo[I])
      else
        Add('   AND ' + Campo[I] + ' = :' + Campo[I]);
      //
      ParamByName(Campo[I]).Value := Valor[I];
    end;
    //
    if Where <> '' then
      Add(Where);
    //
    Open;
    Result := FieldByName('CONTADOR').AsInteger > 0;
  end;
  FreeAndNil(qrBuscar);
end;

end.
