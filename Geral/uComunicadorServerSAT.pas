unit uComunicadorServerSAT;

interface

uses
  System.Json, DBXJSON,   ACBrSAT, Dialogs,  ACBrSATExtratoFortesFr,
  ACBrSATExtratoESCPOS, DateUtils, uMenu, ACBrSATClass;

type
   AutorizarCFe = class
   private
      objJson: TJSONObject;
      FAcbrSAT: TAcbrSAT;
      FExtrato: TACBrSATExtratoFortes;
      // 03/07/2017 - Italo
      FExtratoPOS: TACBrSATExtratoESCPOS;

      { Geral }
      numeroCaixa: Integer;
      ambiente: String;
      infAdicCFe: String;
      { Emitente }
      emit_CNPJ: String;
      emit_InscMun: String;
      emit_InscEst: String;
      emit_RegTrib: Integer;
      { Destinatario }
      dest_CNPJCPF: String;
      dest_Nome: String;
      { Local Entrega }
      logradouro: String;
      numero: String;
      complemento: String;
      bairro: String;
      municipio: String;
      estado: String;
      { Totais }
      descSubtotal: Currency;
      acrescSubtotal: Currency;
      vLei12741: Currency;
      totalVenda : Currency;
      { Produtos }
      aProdutos: Array of record
         codigo: String;
         EAN: String;
         descricao: String;
         NCM: String;
         CEST: String;
         CFOP: String;
         unidade: String;
         quantidade: Currency;
         unitario: Currency;
         arredTrunc: String;
         descto: Currency;
         outros: Currency;
         vTrib12741: Currency;
         infAdic: String;
         { ICMS }
         ICMS_Origem: String;
         ICMS_CSTCSOSN: String;
         ICMS_Perc: Currency;
         ICMS_Valor: Currency;
         { PIS }
         PIS_CST: String;
         PIS_vBC: Currency;
         PIS_Perc: Currency;
         PIS_Valor: Currency;
         PIS_qBC: Currency;
         PIS_vAliqProd: Currency;
         { PIS ST }
         PISST_vBC: Currency;
         PISST_Perc: Currency;
         PISST_Valor: Currency;
         PISST_qBC: Currency;
         PISST_vAliqProd: Currency;
         { COFINS }
         COFINS_CST: String;
         COFINS_vBC: Currency;
         COFINS_Perc: Currency;
         COFINS_Valor: Currency;
         COFINS_qBC: Currency;
         COFINS_vBCProd: Currency;
         COFINS_vAliqProd: Currency;
         { COFINS ST }
         COFINSST_vBC: Currency;
         COFINSST_Perc: Currency;
         COFINSST_Valor: Currency;
         COFINSST_qBC: Currency;
         COFINSST_vAliqProd: Currency;
         codigo_anp : string
      end;
      { Formas de Pagto }
      aPagto: Array of record
         formaPagto: Integer;
         valor: Currency;
         admCartao: Integer;
      end;

   public
      tipo_fiscal : string;
      constructor create();
      destructor destroy(); override;

      function addGeral(const numCaixa: Integer; const ambiente: String; const infAdic: String): Boolean;
      function addDestinatario(const cpfCnpj: String; const nome: String): Boolean;
      function addEmitente(const cpfCnpj: String; const inscEstadual: String; const inscMunicipal: String;
         const regimeTrib: Integer): Boolean;
      function addLocalEntrega(const logradouro: String; const numero: String; const complemento: String;
         const bairro: String; const municipio: String; const estado: String): Boolean;
      function addTotais(const descSubtotal: Currency; const acrescSubtotal: Currency; const vLei12741: Currency; const totalVenda : currency): Boolean;
      function addProduto(const codigo: String; const EAN: String; const descricao: String;
         const NCM: String; const CEST: String; const CFOP: String; const unidade: String; const quantidade: Currency;
         const unitario: Currency; const arredTrunc: String; const descto: Currency;
         const outros: Currency; const vTrib12741: Currency; const infAdic: String;
         { ICMS }
         const ICMS_Origem: String; const ICMS_CSTCSOSN: String; const ICMS_Perc: Currency; const ICMS_Valor: Currency;
         { PIS }
         const PIS_CST: String; const PIS_vBC: Currency; const PIS_Perc: Currency; const PIS_Valor: Currency;
         const PIS_qBC: Currency; const PIS_vAliqProd: Currency;
         { PIS ST }
         const PISST_vBC: Currency; const PISST_Perc: Currency; const PISST_Valor: Currency; const PISST_qBC: Currency;
         const PISST_vAliqProd: Currency;
         { COFINS }
         const COFINS_CST: String; const COFINS_vBC: Currency; const COFINS_Perc: Currency; const COFINS_Valor: Currency;
         const COFINS_qBC: Currency; const COFINS_vBCProd: Currency; const COFINS_vAliqProd: Currency;
         { COFINS ST }
         const COFINSST_vBC: Currency; const COFINSST_Perc: Currency; const COFINSST_Valor: Currency;
         const COFINSST_qBC: Currency; const COFINSST_vAliqProd: Currency;
         codigo_anp : string): Boolean;
      function addFormasPagto(const formaPagto: Integer; const valor: Currency; const admCartao: Integer): Boolean;

      procedure clear();
      procedure gerarJson();

      function transmitir(out numeroSessao: Integer; out codigoRetorno: Integer; out Mensagem: String;
         out Chave: String; out serieSAT: String; out numCFe: Integer; out DataHoraEmissao: TDateTime;
         out XML: String; out tipo_fiscal : string): Boolean;
      // 03/07/2017 - Italo
      procedure PrepararImpressao;
   end;

type
   CancelarCFe = class
   private
      objJson: TJsonObject;
      FAcbrSAT: TAcbrSAT;
      FExtrato: TACBrSATExtratoFortes;
      // 03/07/2017 - Italo
      FExtratoPOS: TACBrSATExtratoESCPOS;

      Ambiente: String;
      NumeroCaixa: Integer;
      Emit_CNPJ: String;
      DataHoraEmissao: String;
      ChaveAut: String;
      Dest_CNPJCPF: String;

   public
      constructor create();
      destructor destroy(); override;

      function addGeral(const numCaixa: Integer; const ambiente: String; const Emit_CNPJ: String;
         const DataHoraEmissao: TDateTime; const ChaveAut: String; const Dest_CNPJCPF: String): Boolean;

      procedure clear();
      procedure gerarJson();

      function transmitir(out numeroSessao: Integer; out codigoRetorno: Integer; out Mensagem: String;
         out Chave: String; out serieSAT: String): Boolean;

      // 03/07/2017 - Italo
      procedure PrepararImpressao;
   end;

type
   ConsultarCFe = class
   private
      objJson: TJsonObject;

      Ambiente: String;
      numSessao: Integer;

   public
      constructor create();
      destructor destroy(); override;

      function addGeral(const ambiente: String; const numSessao: Integer): Boolean;

      procedure clear();
      procedure gerarJson();

      function transmitir(out numeroSessao: Integer; out codigoRetorno: Integer; out Mensagem: String;
         out Chave: String; out serieSAT: String): Boolean;

   end;


implementation

{ AutorizarCFe }

uses  SysUtils, System.Classes, uFuncoes, Comunicador;

function AutorizarCFe.addDestinatario(const cpfCnpj, nome: String): Boolean;
begin
   try
      dest_CNPJCPF := cpfCnpj;
      dest_Nome := nome;

      Result := True;
   except
      Result := False;
   end;
end;

function AutorizarCFe.addEmitente(const cpfCnpj, inscEstadual, inscMunicipal: String; const regimeTrib: Integer): Boolean;
begin
   try
      emit_CNPJ := cpfCnpj;
      emit_InscMun := inscMunicipal;
      emit_InscEst := inscEstadual;
      emit_RegTrib := regimeTrib;

      Result := True;
   except
      Result := False;
   end;
end;

function AutorizarCFe.addFormasPagto(const formaPagto: Integer; const valor: Currency; const admCartao: Integer): Boolean;
var
  iLen: Integer;
begin
   try
      iLen := Length(aPagto);
      SetLength(aPagto, iLen + 1);

      aPagto[iLen].formaPagto := formaPagto;
      aPagto[iLen].valor := valor;
      aPagto[iLen].admCartao := admCartao;

      Result := True;
   except
      Result := False;
   end;
end;

function AutorizarCFe.addGeral(const numCaixa: Integer; const ambiente, infAdic: String): Boolean;
begin
   try
      numeroCaixa := numCaixa;
      Self.ambiente := ambiente;
      infAdicCFe := infAdic;

      Result := True;
   except
      Result := False;
   end;
end;

function AutorizarCFe.addLocalEntrega(const logradouro, numero, complemento, bairro, municipio, estado: String): Boolean;
begin
  try
    //se não forem informados todos os dados de endereço, o SAT invalida...
    if Empty(logradouro) or Empty(numero) //or Empty(complemento)
       or Empty(bairro) or Empty(municipio) or Empty(estado)  then
    begin
      Self.logradouro := '';
      Self.numero := '';
      Self.complemento := '';
      Self.bairro := '';
      Self.municipio := '';
      Self.estado := '';
    end
    else
    begin
      Self.logradouro := logradouro;
      Self.numero := numero;
      Self.complemento := complemento;
      Self.bairro := bairro;
      Self.municipio := municipio;
      Self.estado := estado;
    end;
    Result := True;
  except
    Result := False;
  end;
end;

function AutorizarCFe.addProduto(const codigo, EAN, descricao, NCM, CEST, CFOP, unidade: String;
  const quantidade, unitario: Currency; const arredTrunc: String; const descto, outros, vTrib12741: Currency;
  const infAdic, ICMS_Origem, ICMS_CSTCSOSN: String; const ICMS_Perc, ICMS_Valor: Currency; const PIS_CST: String;
  const PIS_vBC, PIS_Perc, PIS_Valor, PIS_qBC, PIS_vAliqProd, PISST_vBC, PISST_Perc, PISST_Valor, PISST_qBC,
  PISST_vAliqProd: Currency; const COFINS_CST: String; const COFINS_vBC, COFINS_Perc, COFINS_Valor, COFINS_qBC,
  COFINS_vBCProd, COFINS_vAliqProd, COFINSST_vBC, COFINSST_Perc, COFINSST_Valor, COFINSST_qBC,
  COFINSST_vAliqProd: Currency; codigo_anp : string): Boolean;
var
  iLen: Integer;
begin
   try
      iLen := Length(aProdutos);
      SetLength(aProdutos, iLen + 1);

      aProdutos[iLen].codigo := codigo;
      aProdutos[iLen].EAN := EAN;
      aProdutos[iLen].descricao := descricao;
      aProdutos[iLen].NCM := NCM;
      aProdutos[iLen].CEST := CEST;
      aProdutos[iLen].CFOP := CFOP;
      aProdutos[iLen].unidade := unidade;
      aProdutos[iLen].quantidade := quantidade;
      aProdutos[iLen].unitario := unitario;
      aProdutos[iLen].arredTrunc := arredTrunc;
      aProdutos[iLen].descto := descto;
      aProdutos[iLen].outros := outros;
      aProdutos[iLen].vTrib12741 := vTrib12741;
      aProdutos[iLen].infAdic := infAdic;
      aProdutos[iLen].ICMS_Origem := ICMS_Origem;
      aProdutos[iLen].ICMS_CSTCSOSN := ICMS_CSTCSOSN;
      aProdutos[iLen].ICMS_Perc := ICMS_Perc;
      aProdutos[iLen].ICMS_Valor := ICMS_Valor;
      aProdutos[iLen].PIS_CST := PIS_CST;
      aProdutos[iLen].PIS_vBC := PIS_vBC;
      aProdutos[iLen].PIS_Perc := PIS_Perc;
      aProdutos[iLen].PIS_Valor := PIS_Valor;
      aProdutos[iLen].PIS_qBC := PIS_qBC;
      aProdutos[iLen].PIS_vAliqProd := PIS_vAliqProd;
      aProdutos[iLen].PISST_vBC := PISST_vBC;
      aProdutos[iLen].PISST_Perc := PISST_Perc;
      aProdutos[iLen].PISST_Valor := PISST_Valor;
      aProdutos[iLen].PISST_qBC := PISST_qBC;
      aProdutos[iLen].PISST_vAliqProd := PISST_vAliqProd;
      aProdutos[iLen].COFINS_CST := COFINS_CST;
      aProdutos[iLen].COFINS_vBC := COFINS_vBC;
      aProdutos[iLen].COFINS_Perc := COFINS_Perc;
      aProdutos[iLen].COFINS_Valor := COFINS_Valor;
      aProdutos[iLen].COFINS_qBC := COFINS_qBC;
      aProdutos[iLen].COFINS_vBCProd := COFINS_vBCProd;
      aProdutos[iLen].COFINS_vAliqProd := COFINS_vAliqProd;
      aProdutos[iLen].COFINSST_vBC := COFINSST_vBC;
      aProdutos[iLen].COFINSST_Perc := COFINSST_Perc;
      aProdutos[iLen].COFINSST_Valor := COFINSST_Valor;
      aProdutos[iLen].COFINSST_qBC := COFINSST_qBC;
      aProdutos[iLen].COFINSST_vAliqProd := COFINSST_vAliqProd;
      aProdutos[iLen].codigo_anp := codigo_anp;
      Result := True;
   except
      Result := False;
   end;
end;

function AutorizarCFe.addTotais(const descSubtotal, acrescSubtotal, vLei12741, totalVenda: Currency): Boolean;
begin
   try
      Self.descSubtotal := descSubtotal;
      Self.acrescSubtotal := acrescSubtotal;
      Self.vLei12741 := vLei12741;
      self.totalVenda := totalVenda;

      Result := True;
   except
      Result := False;
   end;
end;

procedure AutorizarCFe.clear();
begin
   numeroCaixa := 0;
   ambiente := 'H';
   infAdicCFe := '';
   { Emitente }
   emit_CNPJ := '';
   emit_InscMun := '';
   emit_InscEst := '';
   emit_RegTrib := 1;
   { Destinatario }
   dest_CNPJCPF := '';
   dest_Nome := '';
   { Local Entrega }
   logradouro := '';
   numero := '';
   complemento := '';
   bairro := '';
   municipio := '';
   estado := '';
   { Totais }
   descSubtotal := 0;
   acrescSubtotal := 0;
   vLei12741 := 0;
   { Produtos }
   SetLength(aProdutos, 0);
   { Formas Pagto }
   SetLength(aPagto, 0);
end;

constructor AutorizarCFe.create();
begin
  inherited;
  FAcbrSAT := TACBrSAT.Create(Nil);
  FExtrato := TACBrSATExtratoFortes.Create(Nil);

  FExtrato.LarguraBobina    := 280;
  FExtrato.MargemSuperior     := 2;
//  FExtrato.Margens.Fundo    := 20;
  FExtrato.MargemEsquerda := 0;
  FExtrato.MargemDireita  := 2;

  FExtrato.MostraPreview := false;
  FExtrato.MostraSetup := false;

  FExtrato.ImprimeQRCode    := true;
  FExtrato.MsgAppQRCode     := 'Consulte o QR Code pelo aplicativo  "De olho na nota" disponível na AppStore (Apple) e PlayStore (Android)';
  FExtrato.Site             := recproj.sSiteDevSistema;
  FExtrato.Sistema    := recproj.sInfoDevSistema1;

  // Inicio 03/07/2017 - Italo
  FExtratoPOS := TACBrSATExtratoESCPOS.Create(Nil);

  FExtratoPOS.MostraPreview := False;
  FExtratoPOS.MostraSetup := False;

  FExtratoPOS.ImprimeQRCode := True;
  FExtratoPOS.MsgAppQRCode  := 'Consulte o QR Code pelo aplicativo  "De olho na nota" disponível na AppStore (Apple) e PlayStore (Android)';
  FExtratoPOS.Site             := recproj.sSiteDevSistema;
  FExtratoPOS.Sistema    := recproj.sInfoDevSistema1;
  FExtratoPOS.PosPrinter       := frmMenu.ACBrPosPrinter1;

  FExtratoPOS.PosPrinter.Device.ParamsString := '';
  PrepararImpressao;

  // Fim
end;

destructor AutorizarCFe.destroy();
begin
   FExtrato.Free;
   // 03/07/2017 - Italo
   FExtratoPOS.Free;

   FAcbrSAT.Free;

   SetLength(aProdutos, 0);
   SetLength(aPagto, 0);

   if (objJson.Value <> '') then
   begin
      objJson.Free;
   end;

  inherited;
end;

function AutorizarCFe.transmitir(out numeroSessao: Integer; out codigoRetorno: Integer; out Mensagem: String;
   out Chave: String; out serieSAT: String; out numCFe: Integer; out DataHoraEmissao: TDateTime;
   out XML: String; out tipo_fiscal : string): Boolean;
var

  objRetorno: TJSONObject;
  sXML: string;
  slXML: TStringList;
  dataEmissao: TDate;
begin
   Result := False;
   Mensagem := 'Erro desconhecido (Erro na função)';
   codigoRetorno := -1;

   try
      { Gerar JSON de autorização }
      gerarJson();

      { Enviar }
      //Webserver
      {Client := TServerMethods1Client.Create(ClientModule1.DSRestConnection1, False);
      objRetorno := Client.enviarAutorizacaoCFe( objJson );  }

      //Lança direto, serm usar o webserver
      objRetorno := TNotaFiscal.Transmitir(opAutorizar, objJson);

      // Carregar params de retorno
      numeroSessao := StrToIntDef( objRetorno.Get('numeroSessao').JsonValue.Value, 0 );
      codigoRetorno := StrToIntDef( objRetorno.Get('codigoDeRetorno').JsonValue.Value, 0 );
      Mensagem := objRetorno.Get('mensagem').JsonValue.Value;
      Chave := objRetorno.Get('Chave').JsonValue.Value;
      serieSAT := objRetorno.Get('serieSAT').JsonValue.Value;
      tipo_fiscal := objRetorno.Get('tipo_fiscal').JsonValue.Value;

      { Imprimir - caso esteja autorizado }
      if objRetorno.Get('codigoDeRetorno').JsonValue.Value = '6000' then begin
         sXML := ExtractFilePath(ParamStr(0)) + objRetorno.Get('Chave').JsonValue.Value + '.xml';

         // Criar arquivo xml para depois o Acbr carregar e imprimir
         slXML := TStringList.Create();
         slXML.Text := objRetorno.Get('XML').JsonValue.Value;
         slXML.SaveToFile( sXML );
         slXML.Free();

         XML := objRetorno.Get('XML').JsonValue.Value;

         // Carrega o xml
         FAcbrSAT.CFe.LoadFromFile( sXML );

         // obtem o número e data de emissao
         numCFe := FAcbrSAT.CFe.ide.nCFe;
         dataEmissao := DateOf(FAcbrSAT.CFe.ide.dEmi);

         DataHoraEmissao := dataEmissao + TimeOf(FAcbrSAT.CFe.ide.hEmi);

         // Imprime o danfe
         FExtrato.Impressora := LerStringConfig('CAMIMPCAIXA',frmmenu.cdsCFG.FileName);

         // 03/07/2017 - Italo
         PrepararImpressao;

         FAcbrSAT.ImprimirExtrato();
         DeleteFile( sXML );

         Result := True;
      end;

   finally

   end;
end;

procedure AutorizarCFe.gerarJson();
var
  I: Integer;
  aJson: TJSONArray;
  objAux: TJSONObject;
begin
   {if (objJson.Value <> '') then begin
      objJson.Free();
   end; }

   objJson.Free();


   objJson := TJSONObject.Create();

   { GERAL }
   objJson.AddPair('NumeroCaixa', TJSONNumber.Create(numeroCaixa));
   objJson.AddPair('Ambiente', TJSONString.Create(ambiente));
   if infAdicCFe <> '' then begin
      objJson.AddPair('InfAdicCFe', TJSONString.Create(infAdicCFe));
   end;

   { Destinatario }
   if dest_CNPJCPF <> '' then begin
      objJson.AddPair('Dest_CNPJCPF', TJSONString.Create(dest_CNPJCPF));
   end;
   if dest_Nome <> '' then begin
      objJson.AddPair('Dest_Nome', TJSONString.Create(dest_Nome));
   end;

   { Emitente }
   objJson.AddPair('Emit_CNPJ', TJSONString.Create(emit_CNPJ));
   if emit_InscMun <> '' then begin
      objJson.AddPair('Emit_InscMun', TJSONString.Create(emit_InscMun));
   end;
   objJson.AddPair('Emit_InscEst', TJSONString.Create(emit_InscEst));
   objJson.AddPair('Emit_RegTrib', TJSONNumber.Create(emit_RegTrib));

   { Local de Entrega }
   if logradouro <> '' then begin
      objJson.AddPair('Logradouro', TJSONString.Create(logradouro));
   end;
   if numero <> '' then begin
      objJson.AddPair('Numero', TJSONString.Create(numero));
   end;
   if complemento <> '' then begin
      objJson.AddPair('Complemento', TJSONString.Create(complemento));
   end;
   if bairro <> '' then begin
      objJson.AddPair('Bairro', TJSONString.Create(bairro));
   end;
   if municipio <> '' then begin
      objJson.AddPair('Municipio', TJSONString.Create(municipio));
   end;
   if estado <> '' then begin
      objJson.AddPair('Estado', TJSONString.Create(estado));
   end;

   { Totais }
   if descSubtotal > 0 then begin
      objJson.AddPair('DescSubtotal', TJSONNumber.Create(descSubtotal));
   end;
   if acrescSubtotal > 0 then begin
      objJson.AddPair('AcrescSubtotal', TJSONNumber.Create(acrescSubtotal));
   end;
   if vLei12741 > 0 then begin
      objJson.AddPair('vLei12741', TJSONNumber.Create(vLei12741));
   end;

   // teste 01-10/2016
   objJson.AddPair('totCFe', TJSONNumber.Create(totalVenda));


   { Produtos }
   aJson := TJSONArray.Create();
   for I := 0 to Length(aProdutos) - 1 do begin
      objAux := TJSONObject.Create();

      objAux.AddPair('Prod_Codigo', TJSONString.Create(aProdutos[I].codigo));
      if aProdutos[I].EAN <> '' then begin
         objAux.AddPair('Prod_EAN', TJSONString.Create(aProdutos[I].EAN));
      end;
      objAux.AddPair('Prod_Descricao', TJSONString.Create(aProdutos[I].descricao));
      objAux.AddPair('Prod_NCM', TJSONString.Create(aProdutos[I].NCM));
      objAux.AddPair('Prod_CEST', TJSONString.Create(aProdutos[I].CEST));
      objAux.AddPair('Prod_CFOP', TJSONString.Create(aProdutos[I].CFOP));
      objAux.AddPair('Prod_Unidade', TJSONString.Create(aProdutos[I].unidade));
      objAux.AddPair('Prod_Quantidade', TJSONNumber.Create(aProdutos[I].quantidade));
      objAux.AddPair('Prod_Unitario', TJSONNumber.Create(aProdutos[I].unitario));
      objAux.AddPair('Prod_ArredTrunc', TJSONString.Create(aProdutos[I].arredTrunc));
      if aProdutos[I].descto > 0 then begin
         objAux.AddPair('Prod_Descto', TJSONNumber.Create(aProdutos[I].descto));
      end;
      if aProdutos[I].outros > 0 then begin
         objAux.AddPair('Prod_Outros', TJSONNumber.Create(aProdutos[I].outros));
      end;
      if aProdutos[I].vTrib12741 > 0 then begin
         objAux.AddPair('Prod_Trib12741', TJSONNumber.Create(aProdutos[I].vTrib12741));
      end;
      if aProdutos[I].infAdic <> '' then begin
         objAux.AddPair('Prod_InfAdic', TJSONString.Create(aProdutos[I].infAdic));
      end;
      { ICMS }
      objAux.AddPair('ICMS_Origem', TJSONString.Create(aProdutos[I].ICMS_Origem));
      objAux.AddPair('ICMS_CSTCSOSN', TJSONString.Create(aProdutos[I].ICMS_CSTCSOSN));
      if aProdutos[I].ICMS_Perc > 0 then begin
         objAux.AddPair('ICMS_Perc', TJSONNumber.Create(aProdutos[I].ICMS_Perc));
      end;
      if aProdutos[I].ICMS_Valor > 0 then begin
         objAux.AddPair('ICMS_Valor', TJSONNumber.Create(aProdutos[I].ICMS_Valor));
      end;
      { PIS }
      objAux.AddPair('PIS_CST', TJSONString.Create(aProdutos[I].PIS_CST));
      if aProdutos[I].PIS_vBC > 0 then begin
         objAux.AddPair('PIS_vBC', TJSONNumber.Create(aProdutos[I].PIS_vBC));
      end;
      if aProdutos[I].PIS_Perc > 0 then begin
         objAux.AddPair('PIS_Perc', TJSONNumber.Create(aProdutos[I].PIS_Perc));
      end;
      if aProdutos[I].PIS_Valor > 0 then begin
         objAux.AddPair('PIS_Valor', TJSONNumber.Create(aProdutos[I].PIS_Valor));
      end;
      if aProdutos[I].PIS_qBC > 0 then begin
         objAux.AddPair('PIS_qBC', TJSONNumber.Create(aProdutos[I].PIS_qBC));
      end;
      if aProdutos[I].PIS_vAliqProd > 0 then begin
         objAux.AddPair('PIS_vAliqProd', TJSONNumber.Create(aProdutos[I].PIS_vAliqProd));
      end;
      { PIS ST }
      if aProdutos[I].PIS_vAliqProd > 0 then begin
         objAux.AddPair('PISST_vBC', TJSONNumber.Create(aProdutos[I].PISST_vBC));
      end;
      if aProdutos[I].PISST_Perc > 0 then begin
         objAux.AddPair('PISST_Perc', TJSONNumber.Create(aProdutos[I].PISST_Perc));
      end;
      if aProdutos[I].PISST_Valor > 0 then begin
         objAux.AddPair('PISST_Valor', TJSONNumber.Create(aProdutos[I].PISST_Valor));
      end;
      if aProdutos[I].PISST_qBC > 0 then begin
         objAux.AddPair('PISST_qBC', TJSONNumber.Create(aProdutos[I].PISST_qBC));
      end;
      if aProdutos[I].PISST_vAliqProd > 0 then begin
         objAux.AddPair('PISST_vAliqProd', TJSONNumber.Create(aProdutos[I].PISST_vAliqProd));
      end;
      { COFINS }
      objAux.AddPair('COFINS_CST', TJSONString.Create(aProdutos[I].COFINS_CST));
      if aProdutos[I].COFINS_vBC > 0 then begin
         objAux.AddPair('COFINS_vBC', TJSONNumber.Create(aProdutos[I].COFINS_vBC));
      end;
      if aProdutos[I].COFINS_Perc > 0 then begin
         objAux.AddPair('COFINS_Perc', TJSONNumber.Create(aProdutos[I].COFINS_Perc));
      end;
      if aProdutos[I].COFINS_Valor > 0 then begin
         objAux.AddPair('COFINS_Valor', TJSONNumber.Create(aProdutos[I].COFINS_Valor));
      end;
      if aProdutos[I].COFINS_qBC > 0 then begin
         objAux.AddPair('COFINS_qBC', TJSONNumber.Create(aProdutos[I].COFINS_qBC));
      end;
      if aProdutos[I].COFINS_vBCProd > 0 then begin
         objAux.AddPair('COFINS_vBCProd', TJSONNumber.Create(aProdutos[I].COFINS_vBCProd));
      end;
      if aProdutos[I].COFINS_vAliqProd > 0 then begin
         objAux.AddPair('COFINS_vAliqProd', TJSONNumber.Create(aProdutos[I].COFINS_vAliqProd));
      end;
      { COFINS ST }
      if aProdutos[I].COFINSST_vBC > 0 then begin
         objAux.AddPair('COFINSST_vBC', TJSONNumber.Create(aProdutos[I].COFINSST_vBC));
      end;
      if aProdutos[I].COFINSST_Perc > 0 then begin
         objAux.AddPair('COFINSST_Perc', TJSONNumber.Create(aProdutos[I].COFINSST_Perc));
      end;
      if aProdutos[I].COFINSST_Valor > 0 then begin
         objAux.AddPair('COFINSST_Valor', TJSONNumber.Create(aProdutos[I].COFINSST_Valor));
      end;
      if aProdutos[I].COFINSST_qBC > 0 then begin
         objAux.AddPair('COFINSST_qBC', TJSONNumber.Create(aProdutos[I].COFINSST_qBC));
      end;
      if aProdutos[I].COFINSST_vAliqProd > 0 then begin
         objAux.AddPair('COFINSST_vAliqProd', TJSONNumber.Create(aProdutos[I].COFINSST_vAliqProd));
      end;

      objAux.AddPair('codigo_anp', TJSONString.Create(aProdutos[I].codigo_anp));


      aJson.AddElement(objAux);
   end;
   objJson.AddPair('SecProdutos', aJson);

   { Formas de Pagto }
   aJson := TJSONArray.Create();
   for I := 0 to Length(aPagto) - 1 do begin
      objAux := TJSONObject.Create();

      objAux.AddPair('formaPagto', TJSONNumber.Create(aPagto[I].formaPagto));
      objAux.AddPair('valor', TJSONNumber.Create(aPagto[I].valor));
      objAux.AddPair('admCartao', TJSONNumber.Create(aPagto[I].admCartao));

      aJson.AddElement(objAux);
   end;
   objJson.AddPair('SecFormasPagtos', aJson);

//   ShowMessage(objJson.ToString);
end;

procedure AutorizarCFe.PrepararImpressao;
var
  impressora_modo_pos: Boolean;
begin
  // 04/07/2017 - Italo
  // Le a configuração para determinar se a impressao do CFe será feita
  // através do Fortes ou ESCPOS.
  // E defini algumas propriedades de configuração.

  impressora_modo_pos := LerIntegerConfig('CXMODOIMPCAIXA',frmmenu.cdsCFG.FileName)=1;

  if impressora_modo_pos then
  begin
    FAcbrSAT.Extrato := FExtratoPOS;

    if not frmMenu.ConfiguraImpressoraPOS('CAIXA') then raise Exception.Create('Não foi possível iniciar a impressora! Verifique as configurações, se a impressora está ligada e devidamente conectada.');

    FExtratoPOS.ImprimeQRCode := True;
    FExtratoPOS.ImprimeEmUmaLinha := True;
  end
  else
  begin
    FAcbrSAT.Extrato := FExtrato;

    FExtrato.LarguraBobina    := 280;
    FExtrato.MargemSuperior   := 2;
//    FExtrato.Margens.Fundo    := 20;
    FExtrato.MargemEsquerda   := 0;
    FExtrato.MargemDireita    := 2;

    FExtrato.MostraPreview    := false;
    FExtrato.MostraSetup      := false;

    FExtrato.ImprimeQRCode    := true;
    FExtrato.MsgAppQRCode     := 'Consulte o QR Code pelo aplicativo  "De olho na nota" disponível na AppStore (Apple) e PlayStore (Android)';
    FExtrato.Site             := recproj.sSiteDevSistema;
    FExtrato.Sistema    := recproj.sInfoDevSistema1;

    FExtrato.Impressora := LerStringConfig('CAMIMPCAIXA',frmmenu.cdsCFG.FileName);
  end;
end;

{ CancelarCFe }

function CancelarCFe.addGeral(const numCaixa: Integer; const ambiente, Emit_CNPJ: String;
  const DataHoraEmissao: TDateTime; const ChaveAut: String; const Dest_CNPJCPF: String): Boolean;
begin
   try
      Self.Ambiente := ambiente;
      Self.NumeroCaixa := numCaixa;
      Self.Emit_CNPJ := Emit_CNPJ;
      Self.DataHoraEmissao := FormatDateTime('dd/mm/yyyy hh:mm:ss', DataHoraEmissao);
      Self.ChaveAut := ChaveAut;

      if Dest_CNPJCPF <> '' then begin
         Self.Dest_CNPJCPF := Dest_CNPJCPF;
      end;

      Result := True;
   except
      Result := False;
   end;
end;

procedure CancelarCFe.clear();
begin
   Ambiente := 'H';
   NumeroCaixa := 0;
   Emit_CNPJ := '';
   DataHoraEmissao := FormatDateTime('dd/mm/yyyy hh:mm:ss', Now);
   ChaveAut := '';
   Dest_CNPJCPF := '';
end;

constructor CancelarCFe.create();
begin
  Inherited;

   FAcbrSAT := TAcbrSAT.Create(nil);
   FExtrato := TACBrSATExtratoFortes.Create(Nil);

   FExtrato.MostraPreview    := True;
   FExtrato.MostraSetup      := True;

   FExtrato.LarguraBobina    := 290;
   FExtrato.MargemSuperior   := 0;
//   FExtrato.Margens.Fundo    := 20;
   FExtrato.MargemEsquerda   := 0;
   FExtrato.MargemDireita    := 0;

   // Inicio 03/07/2017 - Italo
   FExtratoPOS := TACBrSATExtratoESCPOS.Create(Nil);

   FExtratoPOS.MostraPreview  := True;
   FExtratoPOS.MostraSetup    := True;
   FExtratoPOS.PosPrinter     := frmMenu.ACBrPosPrinter1;
   PrepararImpressao;
   // Fim
end;

destructor CancelarCFe.destroy();
begin
   FExtrato.Free;
   FExtratoPOS.Free;  // 03/07/2017 - Italo
   FAcbrSAT.Free;

   if (objJson.Value <> '') then begin
      objJson.Free;
   end;

  inherited;
end;

procedure CancelarCFe.gerarJson();
begin
  objJson.Free();
  objJson := TJSONObject.Create();

  objJson.AddPair('Ambiente', TJSONString.Create(Ambiente) );
  objJson.AddPair('NumeroCaixa', TJSONNumber.Create(NumeroCaixa) );
  objJson.AddPair('Emit_CNPJ', TJSONString.Create(Emit_CNPJ) );
  objJson.AddPair('DataHoraEmissao', TJSONString.Create(DataHoraEmissao) );
  objJson.AddPair('ChaveAut', TJSONString.Create(ChaveAut) );
  objJson.AddPair('Dest_CNPJCPF', TJSONString.Create(Dest_CNPJCPF) );
  //objJson.AddPair('Dest_CNPJCPF', TJSONString.Create(Emit_CNPJ) );
end;

procedure CancelarCFe.PrepararImpressao;
var
  impressora_modo_pos: Boolean;
begin
  // 04/07/2017 - Italo
  // Le a configuração para determinar se a impressao do CFe será feita
  // através do Fortes ou ESCPOS.
  // E defini algumas propriedades de configuração.

  impressora_modo_pos := LerIntegerConfig('CXMODOIMPCAIXA',frmmenu.cdsCFG.FileName)=1;

  if impressora_modo_pos then
  begin
    FAcbrSAT.Extrato := FExtratoPOS;

    if not frmMenu.ConfiguraImpressoraPOS('CAIXA') then raise Exception.Create('Não foi possível iniciar a impressora! Verifique as configurações, se a impressora está ligada e devidaemente conectada.');
    FExtratoPOS.ImprimeQRCode := True;
    FExtratoPOS.ImprimeEmUmaLinha := True;
  end
  else
  begin
    FAcbrSAT.Extrato := FExtrato;

    FExtrato.LarguraBobina    := 280;
    FExtrato.MargemSuperior   := 2;
//    FExtrato.Margens.Fundo    := 20;
    FExtrato.MargemEsquerda   := 0;
    FExtrato.MargemDireita    := 2;

    FExtrato.MostraPreview    := false;
    FExtrato.MostraSetup      := false;

    FExtrato.ImprimeQRCode    := true;
    FExtrato.MsgAppQRCode     := 'Consulte o QR Code pelo aplicativo  "De olho na nota" disponível na AppStore (Apple) e PlayStore (Android)';
    FExtrato.Site             := recproj.sSiteDevSistema;
    FExtrato.Sistema    := recproj.sInfoDevSistema1;

    FExtrato.Impressora := LerStringConfig('CAMIMPCAIXA',frmmenu.cdsCFG.FileName);
  end;
end;

function CancelarCFe.transmitir(out numeroSessao: Integer; out codigoRetorno: Integer; out Mensagem: String;
   out Chave: String; out serieSAT: String): Boolean;
var

  objRetorno: TJSONObject;
  sXML: string;
  slXML: TStringList;
begin
   Result := False;
   Mensagem := 'Erro desconhecido (Erro na função)';
   codigoRetorno := -1;

   try
      { Gerar JSON de autorização }
      gerarJson();

      { Enviar }
      // Não usa o webserver
      {Client := TServerMethods1Client.Create(ClientModule1.DSRestConnection1, False);
      objRetorno := Client.enviarCancelamentoCFe( objJson );  }

      // Envia direto sem webserver
      objRetorno := TNotaFiscal.Transmitir(opCancelar, objJson);

      // Carregar params de retorno
      numeroSessao := StrToInt( objRetorno.Get('numeroSessao').JsonValue.Value );
      codigoRetorno := StrToInt( objRetorno.Get('codigoDeRetorno').JsonValue.Value );
      Mensagem := objRetorno.Get('mensagem').JsonValue.Value;
      Chave := objRetorno.Get('Chave').JsonValue.Value;
      serieSAT := objRetorno.Get('serieSAT').JsonValue.Value;

      { Imprimir - caso esteja autorizado }
      if objRetorno.Get('codigoDeRetorno').JsonValue.Value = '7000' then begin
         sXML := ExtractFilePath(ParamStr(0)) + objRetorno.Get('Chave').JsonValue.Value + '.xml';

         // Criar arquivo xml para depois o Acbr carregar e imprimir
         slXML := TStringList.Create();
         slXML.Text := objRetorno.Get('XML').JsonValue.Value;
         slXML.SaveToFile( sXML );
         slXML.Free();

         // Carrega o xml e imprime
         FAcbrSAT.CFe.AsXMLString := objRetorno.Get('XML_Aut').JsonValue.Value;

         // Carrega o xml e imprime
         FAcbrSAT.CFeCanc.LoadFromFile( sXML );

         // Imprime o danfe
         FExtrato.Impressora := LerStringConfig('CAMIMPCAIXA',frmmenu.cdsCFG.FileName);

         // 03/07/2017 - Italo
         PrepararImpressao;

         FAcbrSAT.ImprimirExtratoCancelamento;
         DeleteFile( sXML );
         Result := True;
      end;

   finally

   end;
end;

{ ConsultarCFe }

function ConsultarCFe.addGeral(const ambiente: String; const numSessao: Integer): Boolean;
begin
   Self.Ambiente := ambiente;
   Self.numSessao := numSessao;
end;

procedure ConsultarCFe.clear();
begin
   Ambiente := 'H';
   numSessao := 0;
end;

constructor ConsultarCFe.create();
begin
   Inherited;
end;

destructor ConsultarCFe.destroy();
begin
   if (objJson.Value <> '') then begin
      objJson.Free();
   end;

  inherited;
end;

procedure ConsultarCFe.gerarJson();
begin
   if (objJson.Value <> '') then begin
      objJson.Free;
   end;

   objJson := TJSONObject.Create();

   objJson.AddPair('Ambiente', TJSONString.Create( Ambiente ) );
   objJson.AddPair('numSessao', TJSONNumber.Create( numSessao ) );
end;

function ConsultarCFe.transmitir(out numeroSessao: Integer; out codigoRetorno: Integer; out Mensagem: String;
   out Chave: String; out serieSAT: String): Boolean;
var
  //Client: TServerMethods1Client;
  objRetorno: TJSONObject;
begin
   Result := False;
   Mensagem := 'Erro desconhecido (Erro na função)';
   codigoRetorno := -1;

   try
      { Gerar JSON de autorização }
      gerarJson();

      { Enviar }
      {Client := TServerMethods1Client.Create(ClientModule1.DSRestConnection1, False);
      objRetorno := Client.enviarConsultaCFe( objJson ); }

      objRetorno := TNotaFiscal.Transmitir(opConsultar, objJson);

      // Carregar params de retorno
      numeroSessao := StrToInt( objRetorno.Get('numeroSessao').JsonValue.Value );
      codigoRetorno := StrToInt( objRetorno.Get('codigoDeRetorno').JsonValue.Value );
      Mensagem := objRetorno.Get('mensagem').JsonValue.Value;
      Chave := objRetorno.Get('Chave').JsonValue.Value;
      serieSAT := objRetorno.Get('serieSAT').JsonValue.Value;

      Result := True;
   finally
//      Client.Free();
//      Client := Nil;
   end;
end;

end.
