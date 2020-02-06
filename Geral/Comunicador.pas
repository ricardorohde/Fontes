unit Comunicador;

interface

uses ACBrSAT, System.Json, DBXJSON, untConstSAT, SysUtils, StrUtils,
  System.Classes, ACBrSATExtratoClass, ACBrSATMFe_integrador;

type
  Enum_TipoRetorno = (trErro, trRetornoTransmissao);
  Enum_Operacao = (opAutorizar, opCancelar, opConsultar);

type
  TNotaFiscal = class
  private const
    COD_RETORNO_AUTORIZADO = 6000;
    COD_RETORNO_CANCELADO = 7000;
    COD_RETORNO_ERRO_PORTA = 9999;
    COD_RETORNO_NAO_CONECTADO = 0;
    PREFIXO_CFE = 'CFe';

  var
    FACBrSat: TACBrSat;
    mensagemErro, caminhoAut, caminhoCanc: String;
    dataSAT: Tdate;

    procedure ConfigurarRedeSat();
    procedure ConfigurarACBrSAT();

    function GerarJsonRetorno(tipoRetorno: Enum_TipoRetorno): TJsonObject;
    function CampoObrigatorio(const valor, Campo: String): String;
    function ObterValorCampo(const Campo: TJsonPair): String;

    { Evento do Acbr }
    procedure GetCodigoAtivacao(var Chave: AnsiString);
    procedure GetAssinatura(var Chave: AnsiString);

    // class function GetDataSAT : Tdate;

  public

    class function Transmitir(operacao: Enum_Operacao; dadosNota: TJsonObject)
      : TJsonObject;

    Constructor Create();
    Destructor Destroy; override;

    function autorizarSAT(dadosNota: TJsonObject): TJsonObject;
    function cancelarSAT(dadosNota: TJsonObject): TJsonObject;
    function consultarSessaoSAT(dadosNota: TJsonObject): TJsonObject;

  end;

function CopiaMensagem(retorno: TStringList): string;

implementation

uses
  pcnConversao, ACBrSATClass, pcnRede, uFuncoes,
  pcnCFe;

{ TNotaFiscal }

function CopiaMensagem(retorno: TStringList): string;
var
  i: integer;
  str_aux: string;
begin
  if retorno.Count >= 4 then
    Result := retorno[3]
  else
  begin
    str_aux := '';
    for i := 0 to retorno.Count - 1 do
    begin
      str_aux := str_aux + retorno[i];
      if i < retorno.Count then
        str_aux := str_aux + #13#10;
    end;
    Result := str_aux;
  end;
end;

function TNotaFiscal.ObterValorCampo(const Campo: TJsonPair): String;
begin
  Result := '';

  try
    if Campo <> Nil then
    begin
      if Campo.JsonValue.Value = 'null' then
      begin
        Result := '';
      end
      else
      begin
        Result := Campo.JsonValue.Value;
      end;
    end;
  except
  end;
end;

function TNotaFiscal.CampoObrigatorio(Const valor: String;
  Const Campo: String): String;
begin
  Result := valor;

  if (Empty(Result)) Or (Result = 'null') then
  begin
    raise Exception.Create('Campo Obrigatório com valor em branco [' +
      Campo + '].');
  end;
end;

function TNotaFiscal.cancelarSAT(dadosNota: TJsonObject): TJsonObject;
begin
  try
    GravarLog(PATH_LOG, 'Comunicador', 'cancelarSAT   ' + dadosNota.ToString);

    FACBrSat.CFeCanc.Clear;

    { GERAL }
    if ObterValorCampo(dadosNota.Get('Ambiente')) = 'P' then
    begin
      FACBrSat.Config.ide_tpAmb := taProducao;
    end
    else
    begin
      FACBrSat.Config.ide_tpAmb := taHomologacao;
    end;

    { Alimentando dados da venda }
    FACBrSat.CFeCanc.infCFe.chCanc := PREFIXO_CFE +
      ApenasNumeros(CampoObrigatorio(ObterValorCampo(dadosNota.Get('ChaveAut')),
      'ChaveAut'));
    FACBrSat.CFeCanc.infCFe.dEmi :=
      StrToDateTime
      (CampoObrigatorio(ObterValorCampo(dadosNota.Get('DataHoraEmissao')),
      'DataHoraEmissao'));
    FACBrSat.CFeCanc.infCFe.hEmi :=
      StrToDateTime
      (CampoObrigatorio(ObterValorCampo(dadosNota.Get('DataHoraEmissao')),
      'DataHoraEmissao'));
    // FAcbrSAT.CFeCanc.ide.CNPJ        := ApenasNumeros( CampoObrigatorio( ObterValorCampo( dadosNota.Get('Emit_CNPJ') ), 'Emit_CNPJ' ) );
    FACBrSat.CFeCanc.ide.CNPJ := CNPJ_SOFTHOUSE;
    FACBrSat.CFeCanc.ide.signAC := ASSINATURA_AC_SAT;
    FACBrSat.CFeCanc.ide.numeroCaixa :=
      StrToIntDef(CampoObrigatorio(ObterValorCampo(dadosNota.Get('NumeroCaixa')
      ), 'NumeroCaixa'), 0);
    // FAcbrSAT.CFeCanc.Dest.CNPJCPF    := ApenasNumeros( ObterValorCampo( dadosNota.Get('Dest_CNPJCPF') ) );

    { INICIANDO DLL/SAT }
    FACBrSat.Inicializado := True;
    FACBrSat.InicializaCFe();

    { Enviando cancelamento }
    GravarLog(PATH_LOG, 'Comunicador', 'cancelarSAT   CANCELANDO...');
    FACBrSat.CancelarUltimaVenda(FACBrSat.CFeCanc.infCFe.chCanc,
      FACBrSat.CFeCanc.GerarXML(True));

    if FACBrSat.Resposta.codigoDeRetorno = COD_RETORNO_CANCELADO then
    begin
      FACBrSat.CFe.SaveToFile(caminhoCanc + 'CANC_' +
        FACBrSat.CFeCanc.infCFe.chCanc + '.xml');
    end
    else
    begin
      FACBrSat.CFe.SaveToFile(PATH_LOG_ACBR + FACBrSat.CFeCanc.infCFe.chCanc +
        '_cancelamento.xml');
    end;

    { RETORNO }
    Result := GerarJsonRetorno(trRetornoTransmissao);

  except
    On E: Exception do
    begin
      mensagemErro := E.Message;
      Result := GerarJsonRetorno(trErro);
    end;
  end;

  GravarLog(PATH_LOG, 'Comunicador', 'cancelarSAT    JSON RETORNO = ' +
    Result.ToString);
end;

function TNotaFiscal.autorizarSAT(dadosNota: TJsonObject): TJsonObject;
var
  prod: TDetCollectionItem;
  obs: TobsFiscoDetCollection;
  arrayProdutos: TJSONArray;
  i: integer;
  prodObj: TJsonObject;
  pagto: TMPCollectionItem;
  arrayPagtos: TJSONArray;
  pagtoObj: TJsonObject;
begin
  try
    GravarLog(PATH_LOG, 'Comunicador', 'autorizarSAT   ' + dadosNota.ToString);

    { GERAL }
    FACBrSat.Config.ide_numeroCaixa :=
      StrToIntDef(CampoObrigatorio(ObterValorCampo(dadosNota.Get('NumeroCaixa')
      ), 'NumeroCaixa'), 0);

    if ObterValorCampo(dadosNota.Get('Ambiente')) = 'P' then
    begin
      FACBrSat.Config.ide_tpAmb := taProducao;
    end
    else
    begin
      FACBrSat.Config.ide_tpAmb := taHomologacao;
    end;

    { DADOS DO EMITENTE }
    FACBrSat.Config.emit_CNPJ :=
      ApenasNumeros(CampoObrigatorio(ObterValorCampo(dadosNota.Get('Emit_CNPJ')
      ), 'Emit_CNPJ'));
    FACBrSat.Config.emit_IE :=
      ApenasNumeros
      (CampoObrigatorio(ObterValorCampo(dadosNota.Get('Emit_InscEst')),
      'Emit_InscEst'));
    FACBrSat.Config.emit_IM :=
      ApenasNumeros(ObterValorCampo(dadosNota.Get('Emit_InscMun')));
    FACBrSat.Config.emit_cRegTribISSQN := RTISSMicroempresaMunicipal;
    FACBrSat.Config.emit_indRatISSQN := irSim;

    FACBrSat.CFe.Emit.xNome := ObterValorCampo(dadosNota.Get('Emit_Nome'));

    case StrToIntDef
      (CampoObrigatorio(ObterValorCampo(dadosNota.Get('Emit_RegTrib')),
      'Emit_RegTrib'), 0) of
      1..2:
        FACBrSat.Config.emit_cRegTrib := RTSimplesNacional;
      3:
        FACBrSat.Config.emit_cRegTrib := RTRegimeNormal;
    Else
      raise Exception.Create('Regime Tributário não cadastrado [' +
        ObterValorCampo(dadosNota.Get('Emit_RegTrib')) + '].');
    end;

    { INICIANDO DLL/SAT }
    FACBrSat.Inicializado := True;
    FACBrSat.InicializaCFe();

    if Empty(NUM_SERIE_EQUIP) then
    begin
      GravarLog(PATH_LOG, 'Comunicador',
        'autorizarSAT   Obtendo Número Equipamento');
      FACBrSat.ConsultarStatusOperacional;

      NUM_SERIE_EQUIP := FACBrSat.Status.NSERIE;
      GravarLog(PATH_LOG, 'Comunicador', 'autorizarSAT   Número Equipamento: ' +
        NUM_SERIE_EQUIP);
    end;

    { DADOS COMPLEMENTARES }
    FACBrSat.CFe.InfAdic.infCpl := ObterValorCampo(dadosNota.Get('InfAdicCFe'));

    { DADOS DO DESTINATARIO }
    FACBrSat.CFe.Dest.CNPJCPF :=
      ApenasNumeros(ObterValorCampo(dadosNota.Get('Dest_CNPJCPF')));
    FACBrSat.CFe.Dest.xNome := ObterValorCampo(dadosNota.Get('Dest_Nome'));

    { LOCAL DE ENTREGA }
    FACBrSat.CFe.Entrega.xLgr := ObterValorCampo(dadosNota.Get('Logradouro'));
    FACBrSat.CFe.Entrega.nro := ObterValorCampo(dadosNota.Get('Numero'));
    FACBrSat.CFe.Entrega.xCpl := ObterValorCampo(dadosNota.Get('Complemento'));
    FACBrSat.CFe.Entrega.xBairro := ObterValorCampo(dadosNota.Get('Bairro'));
    FACBrSat.CFe.Entrega.xMun := ObterValorCampo(dadosNota.Get('Municipio'));
    FACBrSat.CFe.Entrega.UF := ObterValorCampo(dadosNota.Get('Estado'));

    { DADOS DO PRODUTO }
    if dadosNota.Get('SecProdutos') = Nil then
    begin
      raise Exception.Create('Não foi encontrado os produtos.');
    end
    else
    begin
      arrayProdutos := TJSONArray(dadosNota.Get('SecProdutos').JsonValue);

      for i := 0 to arrayProdutos.size - 1 do
      begin
        prodObj := TJsonObject(arrayProdutos.Get(i));
        prod := FACBrSat.CFe.Det.Add;
        prod.nItem := FACBrSat.CFe.Det.Count;
        prod.prod.cProd := CampoObrigatorio
          (ObterValorCampo(prodObj.Get('Prod_Codigo')), 'Prod_Codigo');
        prod.prod.cEAN := ObterValorCampo(prodObj.Get('Prod_EAN'));
        prod.prod.xProd := CampoObrigatorio
          (ObterValorCampo(prodObj.Get('Prod_Descricao')), 'Prod_Descricao');
        prod.prod.NCM := CampoObrigatorio
          (ObterValorCampo(prodObj.Get('Prod_NCM')), 'Prod_NCM');
        prod.prod.CEST:=
          ObterValorCampo(prodObj.Get('Prod_CEST'));
        prod.prod.CFOP := CampoObrigatorio
          (ObterValorCampo(prodObj.Get('Prod_CFOP')), 'Prod_CFOP');
        prod.prod.uCom := CampoObrigatorio
          (ObterValorCampo(prodObj.Get('Prod_Unidade')), 'Prod_Unidade');
        prod.prod.qCom :=
          StrToFloatDef
          (CampoObrigatorio(ObterValorCampo(prodObj.Get('Prod_Quantidade')),
          'Prod_Quantidade'), 0);
        prod.prod.vUnCom :=
          StrToFloatDef
          (CampoObrigatorio(ObterValorCampo(prodObj.Get('Prod_Unitario')),
          'Prod_Unitario'), 0);

        prod.prod.vDesc :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('Prod_Descto')), 0);
        prod.prod.vOutro :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('Prod_Outros')), 0);

        prod.prod.vProd := 0;
        prod.prod.vRatDesc := 0;
        prod.prod.vRatAcr := 0;

        if FACBrSat.Config.infCFe_versaoDadosEnt < 0.08 then
        begin
          if prod.prod.CEST <> EmptyStr then
          begin
          with Prod.prod.obsFiscoDet.Add do
            begin
              xCampoDet := 'Cod. CEST';
              xTextoDet := prod.prod.CEST;
            end;
          end;
        end;

        prod.infAdProd := ObterValorCampo(prodObj.Get('Prod_InfAdic'));

        prod.Imposto.vItem12741 :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('Prod_Trib12741')), 0);

        case AnsiIndexStr
          (CampoObrigatorio(ObterValorCampo(prodObj.Get('Prod_ArredTrunc')),
          'Prod_ArredTrunc'), ['A', 'T']) of
          0:
            prod.prod.indRegra := irArredondamento;
          1:
            prod.prod.indRegra := irTruncamento;
        Else
          raise Exception.Create
            ('Indice de Arredondamento/Truncamento não cadastrado [' +
            ObterValorCampo(prodObj.Get('Prod_ArredTrunc')) + '].');
        end;

        { ICMS }
        case AnsiIndexStr
          (CampoObrigatorio(ObterValorCampo(prodObj.Get('ICMS_Origem')),
          'ICMS_Origem'), ['0', '1', '2', '3', '4', '5', '6', '7', '8']) of
          0:
            prod.Imposto.ICMS.orig := oeNacional;
          1:
            prod.Imposto.ICMS.orig := oeEstrangeiraImportacaoDireta;
          2:
            prod.Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasil;
          3:
            prod.Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior40;
          4:
            prod.Imposto.ICMS.orig := oeNacionalProcessosBasicos;
          5:
            prod.Imposto.ICMS.orig :=
              oeNacionalConteudoImportacaoInferiorIgual40;
          6:
            prod.Imposto.ICMS.orig := oeEstrangeiraImportacaoDiretaSemSimilar;
          7:
            prod.Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasilSemSimilar;
          8:
            prod.Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior70;
        Else
          raise Exception.Create('Origem do Produto não cadastrado [' +
            ObterValorCampo(prodObj.Get('ICMS_Origem')) + '].');
        end;

        case AnsiIndexStr
          (CampoObrigatorio(ObterValorCampo(prodObj.Get('ICMS_CSTCSOSN')),
          'ICMS_CSTCSOSN'), ['00', '10', '20', '30', '40', '41', '45', '50',
          '51', '60', '70', '80', '81', '90', '101', '102', '103', '201', '202',
          '203', '300', '400', '500', '900']) of
          0:
            prod.Imposto.ICMS.CST := cst00;
          1:
            prod.Imposto.ICMS.CST := cst10;
          2:
            prod.Imposto.ICMS.CST := cst20;
          3:
            prod.Imposto.ICMS.CST := cst30;
          4:
            prod.Imposto.ICMS.CST := cst40;
          5:
            prod.Imposto.ICMS.CST := cst41;
          6:
            prod.Imposto.ICMS.CST := cst45;
          7:
            prod.Imposto.ICMS.CST := cst50;
          8:
            prod.Imposto.ICMS.CST := cst51;
          9:
            prod.Imposto.ICMS.CST := cst60;
          10:
            prod.Imposto.ICMS.CST := cst70;
          11:
            prod.Imposto.ICMS.CST := cst80;
          12:
            prod.Imposto.ICMS.CST := cst81;
          13:
            prod.Imposto.ICMS.CST := cst90;
          14:
            prod.Imposto.ICMS.CSOSN := csosn101;
          15:
            prod.Imposto.ICMS.CSOSN := csosn102;
          16:
            prod.Imposto.ICMS.CSOSN := csosn103;
          17:
            prod.Imposto.ICMS.CSOSN := csosn201;
          18:
            prod.Imposto.ICMS.CSOSN := csosn202;
          19:
            prod.Imposto.ICMS.CSOSN := csosn203;
          20:
            prod.Imposto.ICMS.CSOSN := csosn300;
          21:
            prod.Imposto.ICMS.CSOSN := csosn400;
          22:
            prod.Imposto.ICMS.CSOSN := csosn500;
          23:
            prod.Imposto.ICMS.CSOSN := csosn900;
        Else
          raise Exception.Create('CST/CSOSN do Produto não cadastrado [' +
            ObterValorCampo(prodObj.Get('ICMS_CSTCSOSN')) + '].');
        end;

        prod.Imposto.ICMS.pICMS :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('ICMS_Perc')), 0);
        prod.Imposto.ICMS.vICMS :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('ICMS_Valor')), 0);

        { PIS }
        case AnsiIndexStr
          (CampoObrigatorio(ObterValorCampo(prodObj.Get('PIS_CST')), 'PIS_CST'),
          ['01', '02', '03', '04', '05', '06', '07', '08', '09', '49', '50',
          '51', '52', '53', '54', '55', '56', '60', '61', '62', '63', '64',
          '65', '66', '67', '70', '71', '72', '73', '74', '75', '98', '99']) of
          0:
            prod.Imposto.PIS.CST := pis01;
          1:
            prod.Imposto.PIS.CST := pis02;
          2:
            prod.Imposto.PIS.CST := pis03;
          3:
            prod.Imposto.PIS.CST := pis04;
          4:
            prod.Imposto.PIS.CST := pis05;
          5:
            prod.Imposto.PIS.CST := pis06;
          6:
            prod.Imposto.PIS.CST := pis07;
          7:
            prod.Imposto.PIS.CST := pis08;
          8:
            prod.Imposto.PIS.CST := pis09;
          9:
            prod.Imposto.PIS.CST := pis49;
          10:
            prod.Imposto.PIS.CST := pis50;
          11:
            prod.Imposto.PIS.CST := pis51;
          12:
            prod.Imposto.PIS.CST := pis52;
          13:
            prod.Imposto.PIS.CST := pis53;
          14:
            prod.Imposto.PIS.CST := pis54;
          15:
            prod.Imposto.PIS.CST := pis55;
          16:
            prod.Imposto.PIS.CST := pis56;
          17:
            prod.Imposto.PIS.CST := pis60;
          18:
            prod.Imposto.PIS.CST := pis61;
          29:
            prod.Imposto.PIS.CST := pis62;
          20:
            prod.Imposto.PIS.CST := pis63;
          21:
            prod.Imposto.PIS.CST := pis64;
          22:
            prod.Imposto.PIS.CST := pis65;
          23:
            prod.Imposto.PIS.CST := pis66;
          24:
            prod.Imposto.PIS.CST := pis67;
          25:
            prod.Imposto.PIS.CST := pis70;
          26:
            prod.Imposto.PIS.CST := pis71;
          27:
            prod.Imposto.PIS.CST := pis72;
          28:
            prod.Imposto.PIS.CST := pis73;
          39:
            prod.Imposto.PIS.CST := pis74;
          30:
            prod.Imposto.PIS.CST := pis75;
          31:
            prod.Imposto.PIS.CST := pis98;
          32:
            prod.Imposto.PIS.CST := pis99;
        Else
          raise Exception.Create('PIS CST do Produto não cadastrado [' +
            ObterValorCampo(prodObj.Get('PIS_CST')) + '].');
        end;

        prod.Imposto.PIS.vBC :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('PIS_vBC')), 0);
        prod.Imposto.PIS.pPis :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('PIS_Perc')), 0);
        prod.Imposto.PIS.qBCProd :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('PIS_qBC')), 0);
        prod.Imposto.PIS.vPIS :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('PIS_Valor')), 0);
        prod.Imposto.PIS.vAliqProd :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('PIS_vAliqProd')), 0);

        { PIS ST }
        prod.Imposto.PISST.vBC :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('PISST_vBC')), 0);
        prod.Imposto.PISST.pPis :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('PISST_Perc')), 0);
        prod.Imposto.PISST.qBCProd :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('PISST_qBC')), 0);
        prod.Imposto.PISST.vPIS :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('PISST_Valor')), 0);
        prod.Imposto.PISST.vAliqProd :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('PISST_vAliqProd')), 0);

        { COFINS }
        case AnsiIndexStr
          (CampoObrigatorio(ObterValorCampo(prodObj.Get('COFINS_CST')),
          'COFINS_CST'), ['01', '02', '03', '04', '05', '06', '07', '08', '09',
          '49', '50', '51', '52', '53', '54', '55', '56', '60', '61', '62',
          '63', '64', '65', '66', '67', '70', '71', '72', '73', '74', '75',
          '98', '99']) of
          0:
            prod.Imposto.COFINS.CST := cof01;
          1:
            prod.Imposto.COFINS.CST := cof02;
          2:
            prod.Imposto.COFINS.CST := cof03;
          3:
            prod.Imposto.COFINS.CST := cof04;
          4:
            prod.Imposto.COFINS.CST := cof05;
          5:
            prod.Imposto.COFINS.CST := cof06;
          6:
            prod.Imposto.COFINS.CST := cof07;
          7:
            prod.Imposto.COFINS.CST := cof08;
          8:
            prod.Imposto.COFINS.CST := cof09;
          9:
            prod.Imposto.COFINS.CST := cof49;
          10:
            prod.Imposto.COFINS.CST := cof50;
          11:
            prod.Imposto.COFINS.CST := cof51;
          12:
            prod.Imposto.COFINS.CST := cof52;
          13:
            prod.Imposto.COFINS.CST := cof53;
          14:
            prod.Imposto.COFINS.CST := cof54;
          15:
            prod.Imposto.COFINS.CST := cof55;
          16:
            prod.Imposto.COFINS.CST := cof56;
          17:
            prod.Imposto.COFINS.CST := cof60;
          18:
            prod.Imposto.COFINS.CST := cof61;
          19:
            prod.Imposto.COFINS.CST := cof62;
          20:
            prod.Imposto.COFINS.CST := cof63;
          21:
            prod.Imposto.COFINS.CST := cof64;
          22:
            prod.Imposto.COFINS.CST := cof65;
          23:
            prod.Imposto.COFINS.CST := cof66;
          24:
            prod.Imposto.COFINS.CST := cof67;
          25:
            prod.Imposto.COFINS.CST := cof70;
          26:
            prod.Imposto.COFINS.CST := cof71;
          27:
            prod.Imposto.COFINS.CST := cof72;
          28:
            prod.Imposto.COFINS.CST := cof73;
          29:
            prod.Imposto.COFINS.CST := cof74;
          30:
            prod.Imposto.COFINS.CST := cof75;
          31:
            prod.Imposto.COFINS.CST := cof98;
          32:
            prod.Imposto.COFINS.CST := cof99;
        Else
          raise Exception.Create('COFINS CST do Produto não cadastrado [' +
            ObterValorCampo(prodObj.Get('COFINS_CST')) + '].');
        end;

        prod.Imposto.COFINS.vBC :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('COFINS_vBC')), 0);
        prod.Imposto.COFINS.pCOFINS :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('COFINS_Perc')), 0);
        prod.Imposto.COFINS.vCOFINS :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('COFINS_Valor')), 0);
        prod.Imposto.COFINS.qBCProd :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('COFINS_qBC')), 0);
        prod.Imposto.COFINS.vAliqProd :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('COFINS_vAliqProd')), 0);
        // prod.Imposto.COFINS.vBCProd     := StrToFloatDef( ObterValorCampo( prodObj.Get('COFINS_vBCProd') ), 0 );

        { COFINS ST }
        prod.Imposto.COFINSST.vBC :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('COFINSST_vBC')), 0);
        prod.Imposto.COFINSST.pCOFINS :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('COFINSST_Perc')), 0);
        prod.Imposto.COFINSST.vCOFINS :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('COFINSST_Valor')), 0);
        prod.Imposto.COFINSST.qBCProd :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('COFINSST_qBC')), 0);
        prod.Imposto.COFINSST.vAliqProd :=
          StrToFloatDef(ObterValorCampo(prodObj.Get('COFINSST_vAliqProd')), 0);

        {        prod.prod.xProd := CampoObrigatorio
          (ObterValorCampo(prodObj.Get('Prod_Descricao')), 'Prod_Descricao');}
      end;
    end;

    { with Prod.obsFiscoDet.Add do
      begin
      xCampoDet := 'campo';
      xTextoDet := 'texto';
      end; }

    { TOTAL DA NOTA }
    FACBrSat.CFe.Total.vCFeLei12741 :=
      StrToFloatDef(ObterValorCampo(dadosNota.Get('vLei12741')), 0);

    // teste 01-10
    FACBrSat.CFe.Total.vCFe :=
      StrToFloatDef(CampoObrigatorio(ObterValorCampo(dadosNota.Get('totCFe')),
      'totCFe'), 0);

    // FACBrSat.CFe.Total.ICMSTot.vProd := StrToFloatDef( CampoObrigatorio( ObterValorCampo( dadosNota.Get('totProdutos') ), 'totProdutos'), 0 );

    FACBrSat.CFe.Total.DescAcrEntr.vDescSubtot :=
      StrToFloatDef(ObterValorCampo(dadosNota.Get('DescSubtotal')), 0);
    FACBrSat.CFe.Total.DescAcrEntr.vAcresSubtot :=
      StrToFloatDef(ObterValorCampo(dadosNota.Get('AcrescSubtotal')), 0);

    FACBrSat.CFe.Total.ICMSTot.vICMS :=
      StrToFloatDef(ObterValorCampo(dadosNota.Get('totICMS')), 0);
    FACBrSat.CFe.Total.ICMSTot.vDesc :=
      StrToFloatDef(ObterValorCampo(dadosNota.Get('totDesc')), 0);
    FACBrSat.CFe.Total.ICMSTot.vPIS :=
      StrToFloatDef(ObterValorCampo(dadosNota.Get('totPIS')), 0);
    FACBrSat.CFe.Total.ICMSTot.vCOFINS :=
      StrToFloatDef(ObterValorCampo(dadosNota.Get('totCOFINS')), 0);
    FACBrSat.CFe.Total.ICMSTot.vPISST :=
      StrToFloatDef(ObterValorCampo(dadosNota.Get('totPISST')), 0);
    FACBrSat.CFe.Total.ICMSTot.vCOFINSST :=
      StrToFloatDef(ObterValorCampo(dadosNota.Get('totCOFINSST')), 0);
    FACBrSat.CFe.Total.ICMSTot.vOutro :=
      StrToFloatDef(ObterValorCampo(dadosNota.Get('totOutros')), 0);

    { FORMAS DE PAGAMENTO }
    if dadosNota.Get('SecFormasPagtos') = Nil then
    begin
      raise Exception.Create('Não foi encontrado as formas de pagamento.');
    end
    else
    begin
      arrayPagtos := TJSONArray(dadosNota.Get('SecFormasPagtos').JsonValue);

      for i := 0 to arrayPagtos.size - 1 do
      begin
        pagtoObj := TJsonObject(arrayPagtos.Get(i));

        pagto := FACBrSat.CFe.pagto.Add;

        case StrToIntDef
          (CampoObrigatorio(ObterValorCampo(pagtoObj.Get('formaPagto')),
          'formaPagto'), -1) of
          1:
            pagto.cMP := mpDinheiro;
          2:
            pagto.cMP := mpCheque;
          3:
            pagto.cMP := mpCartaodeCredito;
          4:
            pagto.cMP := mpCartaodeDebito;
          5:
            pagto.cMP := mpCreditoLoja;
          6:
            pagto.cMP := mpValeAlimentacao;
          7:
            pagto.cMP := mpValeRefeicao;
          8:
            pagto.cMP := mpValePresente;
          9:
            pagto.cMP := mpValeCombustivel;
          10:
            pagto.cMP := mpOutros;
        Else
          raise Exception.Create('Forma de Pagamento não cadastrado [' +
            ObterValorCampo(pagtoObj.Get('formaPagto')) + '].');
        end;

        pagto.vMP := StrToFloatDef
          (CampoObrigatorio(ObterValorCampo(pagtoObj.Get('valor')),
          'valor - FormaPagto'), 0);
        pagto.cAdmC :=
          StrToIntDef(ObterValorCampo(pagtoObj.Get('admCartao')), 0);
      end;
    end;

    { ENVIO }
    GravarLog(PATH_LOG, 'Comunicador', 'autorizarSAT    ENVIANDO...');
    FACBrSat.EnviarDadosVenda();

    mensagemErro := DateToStr(FACBrSat.Status.DH_ATUAL);

    if FACBrSat.Resposta.codigoDeRetorno = COD_RETORNO_AUTORIZADO then
    begin
      FACBrSat.CFe.SaveToFile(caminhoAut + PREFIXO_CFE + FACBrSat.CFe.infCFe.ID
        + '.xml');
    end
    else
    begin
      FACBrSat.CFe.SaveToFile(PATH_LOG_ACBR + PREFIXO_CFE +
        FACBrSat.CFe.infCFe.ID + '_autorizacao.xml');
    end;

    { RETORNO }
    Result := GerarJsonRetorno(trRetornoTransmissao);

  except
    On E: Exception do
    begin
      mensagemErro := E.Message;
      Result := GerarJsonRetorno(trErro);
    end;
  end;

  GravarLog(PATH_LOG, 'Comunicador', 'autorizarSAT    JSON RETORNO = ' +
    Result.ToString);
end;

procedure TNotaFiscal.GetCodigoAtivacao(var Chave: AnsiString);
begin
  Chave := CODIGO_ATIVACAO_SAT;
end;

procedure TNotaFiscal.GetAssinatura(var Chave: AnsiString);
begin
  Chave := ASSINATURA_AC_SAT;
end;

procedure TNotaFiscal.ConfigurarACBrSAT();
begin
  { Eventos de captura de dados para transmissão }
  FACBrSat.OnGetcodigoDeAtivacao := GetCodigoAtivacao;
  FACBrSat.OnGetsignAC := GetAssinatura;

  { Caminhos e dados da DLL }
  // FACBrSat.PastaCFeVenda        := PATH_CFE_VENDA;
  // FACBrSat.PastaCFeCancelamento := PATH_CFE_CANC;
  FACBrSat.ArqLOG := PATH_LOG_ACBR + 'LogAcbr_' + FormatDateTime('ddmmyyyy',
    Date) + '.log';
  FACBrSat.Modelo := MODELO_SAT;
  FACBrSat.NomeDLL := NOME_DLL;

  { Configurações Padrão e Dados da Software House }
  FACBrSat.Config.EhUTF8 := True;
  FACBrSat.Config.infCFe_versaoDadosEnt := VERSAO_LAYOUT;
  FACBrSat.Config.ide_CNPJ := CNPJ_SOFTHOUSE;

  {if MODELO_SAT = mfe_Integrador_XML then
  begin
    TACBrSATMFe_integrador_XML(FACBrSat.SAT).PastaInput  := MFE_INTEGRADOR_INPUT;
    TACBrSATMFe_integrador_XML(FACBrSat.SAT).PastaOutput := MFE_INTEGRADOR_OUTPUT;
    TACBrSATMFe_integrador_XML(FACBrSat.SAT).Timeout     := MFE_TIMEOUT;
  end;     }

end;

procedure TNotaFiscal.ConfigurarRedeSat();
begin
  FACBrSat.Rede.tipoInter := TTipoInterface(TIPOINTERFACE);
  FACBrSat.Rede.SSID := SSID;
  FACBrSat.Rede.seg := TSegSemFio(seg);
  FACBrSat.Rede.codigo := codigo;
  FACBrSat.Rede.tipoLan := TTipoLan(tipoLan);
  FACBrSat.Rede.lanIP := lanIP;
  FACBrSat.Rede.lanMask := lanMask;
  FACBrSat.Rede.lanGW := lanGW;
  FACBrSat.Rede.lanDNS1 := lanDNS1;
  FACBrSat.Rede.lanDNS2 := lanDNS2;
  FACBrSat.Rede.usuario := usuario;
  FACBrSat.Rede.senha := senha;
  FACBrSat.Rede.proxy := proxy;
  FACBrSat.Rede.proxy_ip := proxy_ip;
  FACBrSat.Rede.proxy_porta := proxy_porta;
  FACBrSat.Rede.proxy_user := proxy_user;
  FACBrSat.Rede.proxy_senha := proxy_senha;
end;

function TNotaFiscal.consultarSessaoSAT(dadosNota: TJsonObject): TJsonObject;
var
  nSessao: integer;
begin
  try
    GravarLog(PATH_LOG, 'Comunicador', 'consultarSessaoSAT   ' +
      dadosNota.ToString);

    FACBrSat.CFeCanc.Clear;

    { GERAL }
    if ObterValorCampo(dadosNota.Get('Ambiente')) = 'P' then
    begin
      FACBrSat.Config.ide_tpAmb := taProducao;
    end
    else
    begin
      FACBrSat.Config.ide_tpAmb := taHomologacao;
    end;

    { Alimentando dados da venda }
    nSessao := StrToIntDef
      (CampoObrigatorio(ObterValorCampo(dadosNota.Get('numSessao')),
      'numSessao'), 0);

    { INICIANDO DLL/SAT }
    FACBrSat.Inicializado := True;
    FACBrSat.InicializaCFe();

    { Enviando cancelamento }
    GravarLog(PATH_LOG, 'Comunicador', 'consultarSessaoSAT   CONSULTANDO...');
    FACBrSat.ConsultarNumeroSessao(nSessao);

    // if FACBrSAT.Resposta.codigoDeRetorno = COD_RETORNO_CANCELADO then begin
    // FACBrSAT.CFe.SaveToFile( PATH_BKP_XML + 'CANC' + PREFIXO_CFE + FACBrSAT.CFe.infCFe.ID + '.xml' );
    // end else begin
    // FACBrSAT.CFe.SaveToFile( PATH_LOG_ACBR + PREFIXO_CFE + FACBrSAT.CFe.infCFe.ID + '_cancelamento.xml' );
    // end;

    { RETORNO }
    Result := GerarJsonRetorno(trRetornoTransmissao);

  except
    On E: Exception do
    begin
      mensagemErro := E.Message;
      Result := GerarJsonRetorno(trErro);
    end;
  end;

  GravarLog(PATH_LOG, 'Comunicador', 'consultarSessaoSAT    JSON RETORNO = ' +
    Result.ToString);
end;

constructor TNotaFiscal.Create();
var
  dia, mes, ano: word;
begin
  FACBrSat := TACBrSat.Create(Nil);
  ConfigurarACBrSAT();
  ConfigurarRedeSat();
  FACBrSat.Inicializar;
  FACBrSat.ConsultarStatusOperacional;
  DecodeDate(FACBrSat.Status.DH_ATUAL, ano, mes, dia);
  dataSAT := EncodeDate(ano, mes, dia);

  if ano > 1899 then
  begin
    caminhoAut := PATH_CFE_VENDA + format('%d\%.2d\', [ano, mes]);
    caminhoCanc := PATH_CFE_CANC + format('%d\%.2d\', [ano, mes]);

    criarDiretorio(caminhoAut);
    criarDiretorio(caminhoCanc);
  end;
end;

destructor TNotaFiscal.Destroy;
begin
  FACBrSat.Free;

  Inherited Destroy;
end;

{ class function TNotaFiscal.GetDataSAT;
  begin
  Result := dataSAT;
  end; }

class function TNotaFiscal.Transmitir(operacao: Enum_Operacao;
  dadosNota: TJsonObject): TJsonObject;
var
  NotaFiscal: TNotaFiscal;
begin
  GravarLog(PATH_LOG, 'Comunicador', 'Transmitir');
  NotaFiscal := TNotaFiscal.Create();

  // Verifica se a data do sat é diferente da data do computador
  if (Date <> NotaFiscal.dataSAT) then
//  if false then // teste mfd
  begin
    if (NotaFiscal.FACBrSat.Resposta.codigoDeRetorno =
      COD_RETORNO_NAO_CONECTADO) or
      (NotaFiscal.FACBrSat.Resposta.codigoDeRetorno = COD_RETORNO_ERRO_PORTA)
    then
    begin
      NotaFiscal.mensagemErro :=
        CopiaMensagem(NotaFiscal.FACBrSat.Resposta.RetornoLst);
    end
    else
    begin
      NotaFiscal.mensagemErro :=
        format('A data do computador (%s) é diferente da data do SAT (%s)',
        [FormatDateTime('dd/mm/yyyy', Date), FormatDateTime('dd/mm/yyyy',
        NotaFiscal.dataSAT)]);
    end;
    Result := NotaFiscal.GerarJsonRetorno(trErro);
  end
  else
  begin
    if operacao = opAutorizar then
    begin
      Result := NotaFiscal.autorizarSAT(dadosNota);
    end
    else if operacao = opCancelar then
    begin
      Result := NotaFiscal.cancelarSAT(dadosNota);
    end
    else if operacao = opConsultar then
    begin
      Result := NotaFiscal.consultarSessaoSAT(dadosNota);
    end
    else
    begin
      NotaFiscal.mensagemErro := 'Não existe a operação solicitada.';
      Result := NotaFiscal.GerarJsonRetorno(trErro);
    end;
  end;
  NotaFiscal.Free;
end;

function TNotaFiscal.GerarJsonRetorno(tipoRetorno: Enum_TipoRetorno)
  : TJsonObject;
var
  slXMLAut: TStringList;
begin
  Result := TJsonObject.Create();

  if FACBrSat.Modelo = mfe_Integrador_XML then
    Result.AddPair('tipo_fiscal', TJSONString.Create('MFE'))
  else
    Result.AddPair('tipo_fiscal', TJSONString.Create('SAT'));

  if tipoRetorno = trErro then
  begin
    Result.AddPair('numeroSessao', TJSONNull.Create());
    Result.AddPair('codigoDeRetorno', TJSONNull.Create());
    Result.AddPair('Chave', TJSONNull.Create());
    Result.AddPair('mensagem', TJSONString.Create(mensagemErro));
    Result.AddPair('serieSAT', TJSONString.Create(NUM_SERIE_EQUIP));
    Result.AddPair('XML', TJSONNull.Create());
  end
  else if tipoRetorno = trRetornoTransmissao then
  begin
    Result.AddPair('numeroSessao',
      TJSONNumber.Create(FACBrSat.Resposta.numeroSessao));
    Result.AddPair('codigoDeRetorno',
      TJSONNumber.Create(FACBrSat.Resposta.codigoDeRetorno));
    // Copia a mensagem de retorno, usualmente está no índice 3 da stringlist de retorno, porém nem sempre o sat manda corretamente
    // a procedure CopiaMensagem contorna esse problema
    Result.AddPair('mensagem',
      TJSONString.Create(CopiaMensagem(FACBrSat.Resposta.RetornoLst)));
    Result.AddPair('serieSAT', TJSONString.Create(NUM_SERIE_EQUIP));
    Result.AddPair('XML', TJSONString.Create(FACBrSat.CFe.XMLOriginal));

    // se for cancelamento, retornar o XML de autorização para poder imprimir o cancelamento
    if FACBrSat.Resposta.codigoDeRetorno = COD_RETORNO_CANCELADO then
    begin
      slXMLAut := TStringList.Create;
      slXMLAut.LoadFromFile(caminhoAut + FACBrSat.CFeCanc.infCFe.chCanc
        + '.xml');

      Result.AddPair('XML_Aut', TJSONString.Create(slXMLAut.Text));

      slXMLAut.Free;

      // Cancelamento
      Result.AddPair('Chave', TJSONString.Create(FACBrSat.CFeCanc.infCFe.ID));
    end
    else
    begin
      // Autorizado
      Result.AddPair('Chave', TJSONString.Create(FACBrSat.CFe.infCFe.ID));
    end;

    { Retorno Extendido - Gravar algumas linhas extras do retorno que em alguns casos pode conter mais informações
      sobre o retorno, apenas quando for autorizado e cancelado que não, porque nesses casos não precisa, já
      que foi cancelado ou autorizado, apenas nos casos de rejeição para identificar melhor o problema }
    if Not InteiroNoConjunto(FACBrSat.Resposta.codigoDeRetorno,
      [COD_RETORNO_AUTORIZADO, COD_RETORNO_CANCELADO]) then
    begin
      GravarLog(PATH_LOG, 'Comunicador        Retorno Extendido = ',
        FACBrSat.Resposta.RetornoLst.Text);
    end;
  end;
end;

end.
