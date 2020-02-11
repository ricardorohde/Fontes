unit uGeradorNFCe;

interface

uses Uni, ACBrNFe, System.Math, System.SysUtils, System.StrUtils,
  System.Classes, pcnConversao, AcbrUtil, ACBrNFeDANFeRLClass, DateUtils, Vcl.Dialogs,
  pcnRetConsReciDFe, pcnConversaoNFe, pcnNFe, ACBrDANFCeFortesFr, Winapi.Messages,ACBrDFeUtil, ACBrDFeSSL;

type TNFCe = Class(TACBrNFe)
  public
  // Parametrização
  //iTipoEmissao: Integer; // openSSl = 1
  iAmbiente: Integer; // Produção = 0 / Homologação = 1
  //iCrt_Regime: Integer; // 1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal

  path_cancelamento : string;
  path_contingencia : string;
  justificativa_contingencia : string;
  numero_vias_impressao : integer;
  constructor create();
end;

type
  GerarNFCe = class
  private
    id_venda: Integer;
    id_empresa: Integer;

    procedure ObterDadosVenda(out Consulta, Produtos, Pagtos,
      CReceber: TUniQuery);
    procedure ObterDadosNFCe(out Consulta: TUniQuery);
    procedure CalcularICMS(ps_CST: String;
      pr_Aliq, pr_ValorProd, pr_RedBc: Currency; out pr_BaseIcm, pr_Valor: Currency);
    procedure CalcularPIS(ps_CST: String; pr_Aliq, pr_ValorProd: Currency;
      out pr_BaseCalc, pr_Valor: Currency);
    procedure CalcularCOFINS(ps_CST: String; pr_Aliq, pr_ValorProd: Currency;
      out pr_BaseCalc, pr_Valor: Currency);

    procedure AtualizarSituacaoNFCe(const Chave: String; const ChaveCanc: String; const serie: String;
                        const numNFCe: Integer; DataHoraEmissao: TDateTime; const em_contingencia : boolean);
    procedure AtualizarDadosVendaNFCe(const ps_XML: String; const qrCab, qrProd, qrPagto: TuniQuery);


  public
    codigoRet: integer;
    mensagem : string;
    Constructor Create();
    Destructor Destroy(); Override;
    function Autorizar(const id_venda: Integer;
      const id_empresa: Integer ; const em_contingencia : boolean): Boolean;

    function Cancelar(const id_venda: Integer; const id_empresa: Integer; justificativa : string): Boolean;
    function Imprimir(const id_venda: Integer; const id_empresa: Integer; imprimir_pdf : boolean = false; caminho_pdf : string =''): Boolean;
    function Inutilizar(const justificativa: string; const ano, modelo, serie , numero_inicial, numero_final : integer): Boolean;
    function TransmitirContingencia(const id_venda: Integer; const id_empresa: Integer) : boolean;
  end;

type
  AutorizarNFCe = class
  private
    FACBrNFe: TNFCe;

    // Produtos
    aProdutos: Array of record codigo: String;
    EAN: String;
    descricao: String;
    NCM: String;
    CFOP: String;
    CEST: String;
    unidade: String;
    quantidade: Currency;
    unitario: Currency;
    arredTrunc: String;
    descto: Currency;
    outros: Currency;
    total_item: Currency;
    vTrib12741: Currency;
    infAdic: String;
    // ICMS
    ICMS_Origem: String;
    ICMS_CSTCSOSN: String;
    ICMS_vBC: Currency;
    ICMS_Perc: Currency;
    ICMS_Valor: Currency;
    ICMS_pRedBC: Currency;
    // PIS
    PIS_CST: String;
    PIS_vBC: Currency;
    PIS_Perc: Currency;
    PIS_Valor: Currency;
    PIS_qBC: Currency;
    PIS_vAliqProd: Currency;
    // PIS ST
    PISST_vBC: Currency;
    PISST_Perc: Currency;
    PISST_Valor: Currency;
    PISST_qBC: Currency;
    PISST_vAliqProd: Currency;
    // COFINS
    COFINS_CST: String;
    COFINS_vBC: Currency;
    COFINS_Perc: Currency;
    COFINS_Valor: Currency;
    COFINS_qBC: Currency;
    COFINS_vBCProd: Currency;
    COFINS_vAliqProd: Currency;
    // COFINS ST
    COFINSST_vBC: Currency;
    COFINSST_Perc: Currency;
    COFINSST_Valor: Currency;
    COFINSST_qBC: Currency;
    COFINSST_vAliqProd: Currency;
  end;

  // Totais
  descSubtotal: Currency;
  acrescSubtotal: Currency;
  vLei12741: Currency;
  vTribEst: Currency;
  vTribFed: Currency;
  vTribMun: Currency;
  totalVenda: Currency;
  totalNota : Currency;
  totalTroco : Currency;
  totalBCIcms  : Currency;
  totalBCPis : Currency;
  totalBCCofins : Currency;
  totalpis : Currency;
  totalcofins : Currency;
  totalIcms   : Currency;

  // Formas de Pagto
  aPagto: Array of record formaPagto: Integer;
    valor: Currency;
    admCartao: Integer;
    cnpjcred: string;
    bandeira_cartao: string;
    autorizacao: string;
    tipo_integracao: integer;
  end;

public

  // Emitente
  emit_CNPJ: String;
  emit_uf: string;
  emit_cod_municip: String;
  emit_InscMun: String;
  emit_InscEst: String;
  emit_razao_social: string;
  emit_fantasia: string;
  emit_fone: string;
  emit_RegTrib: Integer;
  numero_nfce: Integer;
  serie_nfce : integer;

  emit_cep, emit_logradouro, emit_numero, emit_complemento, emit_bairro,
  emit_cidade: string;

  // Destinatario
  dest_CNPJCPF: String;
  dest_Nome: String;

  // Local Entrega
  logradouro: String;
  numero: String;
  complemento: String;
  bairro: String;
  municipio: String;
  cod_municipio: string;
  estado: String;
  // Geral
  numeroCaixa: Integer;
  ambiente: String;
  infAdicCFe: String;

  // destructor destroy(); override;
  //
  // function addGeral(const numCaixa: Integer; const ambiente: String; const infAdic: String): Boolean;
  // function addDestinatario(const cpfCnpj: String; const nome: String): Boolean;
  // function addEmitente(const cpfCnpj: String; const inscEstadual: String; const inscMunicipal: String;
  // const regimeTrib: Integer): Boolean;

  function addTotais(const descSubtotal: Currency;
    const acrescSubtotal: Currency;
    const vLei12741: Currency;
    const totalVenda: Currency;
    const TotalEstadual :currency;
    const TotalFederal : currency ;
    const TotalMunicipal : currency ): Boolean;
  function addProduto(const codigo: String; const EAN: String;
    const descricao: String; const NCM: String; const CEST: String; const CFOP: String;
    const unidade: String; const quantidade: Currency; const unitario: Currency;
    const arredTrunc: String; const descto: Currency; const outros: Currency;
    const vTrib12741: Currency; const infAdic: String;
    // ICMS
    const ICMS_Origem: String; const ICMS_CSTCSOSN: String;
    const ICMS_Perc: Currency; const ICMS_vBC: Currency;  const ICMS_Valor: Currency;
    const ICMS_pRedBC: Currency;
    // PIS
    const PIS_CST: String; const PIS_vBC: Currency; const PIS_Perc: Currency;
    const PIS_Valor: Currency; const PIS_qBC: Currency;
    const PIS_vAliqProd: Currency;
    // PIS ST
    const PISST_vBC: Currency; const PISST_Perc: Currency;
    const PISST_Valor: Currency; const PISST_qBC: Currency;
    const PISST_vAliqProd: Currency;
    // COFINS
    const COFINS_CST: String; const COFINS_vBC: Currency;
    const COFINS_Perc: Currency; const COFINS_Valor: Currency;
    const COFINS_qBC: Currency; const COFINS_vBCProd: Currency;
    const COFINS_vAliqProd: Currency;
    // COFINS ST
    const COFINSST_vBC: Currency; const COFINSST_Perc: Currency;
    const COFINSST_Valor: Currency; const COFINSST_qBC: Currency;
    const COFINSST_vAliqProd : currency;
    const valor_total_item: Currency): Boolean;
  function addFormasPagto(const formaPagto: Integer; const valor: Currency;
    const admCartao: Integer; const cnpjcred: string; const bandeira_cartao: string; const autorizacao: string;
    const tipo_integracao: Integer): Boolean;

  // procedure clear();

  function transmitir(out codigoRetorno: Integer; out Mensagem: String ;
                      out Chave : string;
                      out XML : string; const em_contingencia : boolean): Boolean;
  constructor Create();
  destructor Destroy();
  function addLocalEntrega(const logradouro: String; const numero: String;
    const complemento: String; const bairro: String; const municipio: String;
    const estado: String; const cod_municipio : string): Boolean;
  function TotalProdutos : double;
  end;

type
  CancelarNFCe = class
    public
    FACBrNFe: TNFCe;
    constructor create();
    function transmitir(path_xml, justificativa: string; out codigoRetorno: Integer; out Mensagem: String;
                        out Chave: String): Boolean;
  end;

type
  ImprimirNFCe = class
    public
    FACBrNFe: TNFCe;
    constructor create();
    function imprimir(path_xml: string; out codigoRetorno: Integer;
                      out Mensagem: String; imprimir_pdf : boolean=false;
                      caminho_pdf : string =''  ): Boolean;
  end;

type
  InutilizarNFCe = class
  public
    FACBrNFe: TNFCe;
    constructor create();
    function Inutilizar(cnpj,justificativa: string ;
                        ano, modelo, serie , numero_inicial, numero_final : integer  ): Boolean;
  end;

type
  TransmitirContingenciaNFCe = class
  public
    FACBrNFe: TNFCe;
    constructor Create();
    function transmitir(const path_xml : string; out codigoRetorno: Integer; out Mensagem: String): Boolean;
  end;

implementation

uses uMenu, uFuncoes, Funcao_DB, uCaixaAberturaFechamento, uPDVFechamento,
  uControleMesaFechamento, uControleDeliveryFinaliza,
  uControleDeliveryFechamento;

constructor TransmitirContingenciaNFCe.create();
begin
  FACBrNFe := TNFCe.create();

end;

function TransmitirContingenciaNFCe.transmitir(const path_xml : string; out codigoRetorno: Integer; out Mensagem: String): Boolean;
begin
  Result := False;
  Mensagem := 'Erro desconhecido (Erro na função)';
  codigoRetorno := -1;

  FACBrNFe.NotasFiscais.Clear;

  if fileexists(path_xml) then
  begin
    try
      try
        FACBrNFe.NotasFiscais.LoadFromFile(path_xml);
        FACBrNFe.Enviar('1',false,true);  //numero do lote,  imprimir, sincrono

        result := true;
      except
        on E : Exception do
        begin
          result := false;
          Mensagem := E.Message;
        end;
      end;
    finally
      if result  then
      begin
        Mensagem := 'Motivo: ' + FACBrNFe.WebServices.Retorno.xMsg + LineBreak +
                    'Mensagem: ' + FACBrNFe.WebServices.Retorno.xMsg +
                    '('+ IntToStr(FACBrNFe.WebServices.Retorno.cMsg)+')' +LineBreak +
                    'Protocolo: '+ FACBrNFe.WebServices.Retorno.Protocolo;
        codigoRetorno := FACBrNFe.WebServices.Retorno.cStat;
      end;
      FACBrNFe.NotasFiscais.Clear;
    end;

  end
  else
  begin
    mensagem:='Arquivo XML não encontrado! Caminho: ' + path_xml ;
    codigoRetorno:= -1;
    result :=false;
  end;
end;

constructor CancelarNFCe.create();
begin
  FACBrNFe := TNFCe.create();
end;

constructor ImprimirNFCe.create();
begin
  FACBrNFe := TNFCe.create();
  FACBrNFe.DANFE.MostraPreview := true;
end;

constructor InutilizarNFCe.create();
begin
  FACBrNFe := TNFCe.create();
end;

function InutilizarNFCe.Inutilizar(cnpj, justificativa: string ; ano, modelo , serie , numero_inicial, numero_final : integer  ): Boolean;
var codigo_retorno : integer;
begin
  FACBrNFe.WebServices.Inutiliza(cnpj, justificativa, ano, modelo, serie,
                                 numero_inicial, numero_final);
end;

function ImprimirNFCe.imprimir(path_xml: string; out codigoRetorno: Integer;
                      out Mensagem: String; imprimir_pdf : boolean=false ;
                      caminho_pdf : string =''  ): Boolean;
var
  caminho_aux: string;
begin
  result := true;

  FACBrNFe.NotasFiscais.Clear;
  if fileexists(path_xml) then
  begin

    if FACBrNFe.NotasFiscais.LoadFromFile(path_xml) then
    begin
      if imprimir_pdf then
      begin
        FACBrNFe.DANFE.PathPDF := ExtractFilePath(caminho_pdf);
        FACBrNFe.DANFe.MostraPreview := false;
        try
          FACBrNFe.NotasFiscais.ImprimirPDF;
          caminho_aux:= ExtractFilePath(FACBrNFe.DANFE.PathPDF) +
          Copy(FACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44) + '-nfe.pdf';
          RenameFile(caminho_aux ,caminho_pdf );
          codigoRetorno:= 1;
          result := true;
        except
          on E : Exception do
          begin
            codigoRetorno:= -1;
            result := false;
            Mensagem := E.Message;
          end;
        end;
      end
      else
      begin
        try
          FACBrNFe.NotasFiscais.Imprimir ;
          codigoRetorno:= 1;
          result := true;
        except
          on E : Exception do
          begin
            codigoRetorno:= -1;
            result := false;
            Mensagem := E.Message;
          end;
        end;
      end;
    end
    else
    begin
      mensagem:='Erro ao abrir o arquivo XML! Caminho: ' + path_xml ;
      codigoRetorno:= -1  ;
      result := false;
    end;
  end
  else
  begin
    mensagem:='Arquivo XML não encontrado! Caminho: ' + path_xml ;
    codigoRetorno:= -1;
    result :=false;
  end;

end;


function CancelarNFCe.transmitir(path_xml, justificativa : string; out codigoRetorno: Integer; out Mensagem: String;
                        out Chave: String): Boolean;
var
  sXML, caminho: string;
begin
  result := true;

  FACBrNFe.NotasFiscais.Clear;
  if fileexists(path_xml) then
  begin
    FACBrNFe.NotasFiscais.LoadFromFile(path_xml);

    FACBrNFe.EventoNFe.Evento.Clear;
    FACBrNFe.EventoNFe.idLote := 1 ;
    with FACBrNFe.EventoNFe.Evento.Add do
    begin
     infEvento.dhEvento := now;
     infEvento.tpEvento := teCancelamento;
     infEvento.detEvento.xJust := justificativa;
    end;
    FACBrNFe.EnviarEvento(1);
    codigoRetorno:= FACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cstat;
    mensagem := FACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.xMotivo;

    if codigoRetorno  = 135 then
    begin
      try //erro na impressão não deveve abortar, neste ponto a nota já foi cancelada
        FACBrNFe.ImprimirEvento;
      except  end;
      //retorna o numero do protocolo de vinculo do evento
      Chave := FACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.nProt;

      //pega o xml e copia para a pasta de canceladas
      caminho := FACBrNFe.path_cancelamento + '\' +
                 FormatDateTime('yyyymm', FACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.dhRegEvento);
      criarDiretorio(caminho);
      caminho := caminho + '\' + extractfilename(FACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.NomeArquivo);
      CopyFileTo(FACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.NomeArquivo,
                 caminho, false);
      DeleteFile(FACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.NomeArquivo);
    end;

    result := codigoRetorno  = 135 ;
  end
  else
  begin
    mensagem:='Arquivo XML não encontrado! Caminho: ' + path_xml ;
    codigoRetorno:= -1;
    result :=false;
  end;

end;

constructor TNFCe.create();
var Ok: boolean;
    str_aguardar, str_tentativas, str_intervalo : string;
    path_exe,path_schemas , path_venda, path_inutilizacao, path_evento,
    path_logs : string;
begin
  inherited  create(nil);
  path_exe          := ExtractFilePath(ParamStr(0));
  path_schemas      := path_exe + 'NFCe\Schemas';
  path_venda        := path_exe + 'NFCe\NFCeVenda';
  path_inutilizacao := path_exe + 'NFCe\NFCeInutilizacao';
  path_evento       := path_exe + 'NFCe\NFCeEvento';
  path_logs         := path_exe + 'NFCe\NFCeLogs';
  path_cancelamento := path_exe + 'NFCe\NFCeCancelamento';
  path_contingencia := path_exe + 'NFCe\NFCeContingencia';

  criarDiretorio(path_venda);
  criarDiretorio(path_inutilizacao);
  criarDiretorio(path_evento);
  criarDiretorio(path_logs);
  criarDiretorio(path_cancelamento);
  criarDiretorio(path_contingencia);

  self.DANFE := TACBrNFeDANFCeFortes.Create(nil);
  self.DANFE.TipoDANFE := TpcnTipoImpressao(LerIntegerConfig('CBNFCETIPODANFE',frmMenu.cdsCFG.FileName));
  self.DANFE.Impressora := LerStringConfig('CAMIMPCAIXA',frmMenu.cdsCFG.FileName);
  self.DANFE.MostraPreview := false;
  self.DANFE.Site  :=  recproj.sSiteDevSistema ;
  self.DANFE.Sistema := recproj.sInfoDevSistema1;
//  self.DANFE.TributosSeparadamente := true;

  self.Configuracoes.Certificados.ArquivoPFX  := LerStringConfig('EDNFCECAMINHOCERTIFICADO',frmMenu.cdsCFG.FileName);
  self.Configuracoes.Certificados.Senha       := LerStringConfig('EDNFCESENHACERTIFICADO',frmMenu.cdsCFG.FileName);
  self.Configuracoes.Certificados.NumeroSerie := LerStringConfig('EDNFCENUMSERIECERTIFICADO',frmMenu.cdsCFG.FileName);

  with self.Configuracoes.Geral do
  begin
    ExibirErroSchema := LerBooleanConfig('CKNFCEEXIBIRERROSCHEMA',frmMenu.cdsCFG.FileName);
    RetirarAcentos   := LerBooleanConfig('CKNFCERETIRARACENTOS',frmMenu.cdsCFG.FileName);
    FormatoAlerta    := LerStringConfig('EDNFCEFORMATOALERTA',frmMenu.cdsCFG.FileName);
    FormaEmissao     := teNormal;
    //ModeloDF         := TpcnModeloDF(LerIntegerConfig('CBNFCEMODELODF',frmMenu.cdsCFG.FileName));
    ModeloDF         := moNFCe;
    VersaoDF         := TpcnVersaoDF(LerIntegerConfig('CBNFCEVERSAODF',frmMenu.cdsCFG.FileName));
    IdCSC            := LerStringConfig('EDNFCEIDTOKEN',frmMenu.cdsCFG.FileName);
    CSC              := LerStringConfig('EDNFCETOKEN',frmMenu.cdsCFG.FileName);
    Salvar           := LerBooleanConfig('CKNFCESALVAR',frmMenu.cdsCFG.FileName);

    SSLLib := TSSLLib(LerIntegerConfig('CBNFCETIPOEMISSAOSSLLIB', frmMenu.cdsCFG.FileName, 1));
    // campos preenchidos automaticamente pelo componente ao selecionar o tipo SSLLib
    SSLCryptLib := TSSLCryptLib(LerIntegerConfig('CBNFCECRYPTLIB', frmMenu.cdsCFG.FileName, 1));
    SSLHttpLib := TSSLHttpLib(LerIntegerConfig('CBNFCEHTTPLIB', frmMenu.cdsCFG.FileName, 3));
    SSLXmlSignLib := TSSLXmlSignLib(LerIntegerConfig('CBNFCEXMLSIGNLIB', frmMenu.cdsCFG.FileName, 1));
  end;

  with self.Configuracoes.WebServices do
  begin
    UF         := LerStringConfig('CBNFCEUF',frmMenu.cdsCFG.FileName);
    Ambiente   := StrToTpAmb(Ok,IntToStr(LerIntegerConfig('RGNFCETIPOAMB',frmMenu.cdsCFG.FileName)+1));
    Visualizar := LerBooleanConfig('CKNCFEVISUALIZAR',frmMenu.cdsCFG.FileName);
    Salvar     := LerBooleanConfig('CKNCFESALVARSOAP',frmMenu.cdsCFG.FileName);
    AjustaAguardaConsultaRet := LerBooleanConfig('CKNCFEAJUSTARAUT',frmMenu.cdsCFG.FileName);

    str_aguardar := LerStringConfig('EDNFCEAGUARDAR',frmMenu.cdsCFG.FileName);
    str_tentativas  := LerStringConfig('EDNFCETENTATIVAS',frmMenu.cdsCFG.FileName);
    str_intervalo := LerStringConfig('EDNFCEINTERVALO',frmMenu.cdsCFG.FileName);

    if empty(str_aguardar) then  str_aguardar :='1000';
    if empty(str_tentativas) then  str_tentativas :='5';
    if empty(str_intervalo) then  str_intervalo :='1000';

    AguardarConsultaRet := ifThen(StrToInt(str_aguardar)<1000,StrToInt(str_aguardar)*1000,StrToInt(str_aguardar));
    IntervaloTentativas := ifThen(StrToInt(str_intervalo)<1000,StrToInt(str_intervalo)*1000,StrToInt(str_intervalo));
    Tentativas          := StrToInt(str_tentativas) ;

    ProxyHost := LerStringConfig('EDNFCEPROXYHOST',frmMenu.cdsCFG.FileName);
    ProxyPort := LerStringConfig('EDNFCEPROXYPORTA',frmMenu.cdsCFG.FileName);
    ProxyUser := LerStringConfig('EDNFCEPROXYUSER',frmMenu.cdsCFG.FileName);
    ProxyPass := LerStringConfig('EDNFCEPROXYSENHA',frmMenu.cdsCFG.FileName);
  end;

  with self.Configuracoes.Arquivos do
  begin
    Salvar             := true;
    SepararPorMes      := true;
    AdicionarLiteral   := false;
    EmissaoPathNFe     := true;
    SalvarEvento       := true;
    SepararPorCNPJ     := false;
    SepararPorModelo   := false;
    PathSalvar         := path_logs;
    PathSchemas        := path_schemas;
    PathNFe            := path_venda;
    PathInu            := path_inutilizacao;
    PathEvento         := path_evento;
  end;

  //iTipoEmissao := LerIntegerConfig('CBNFCETIPOEMISSAO', frmMenu.cdscfg.FileName);
  iAmbiente := LerIntegerConfig('RGNFCETIPOAMB', frmMenu.cdsCFG.FileName);
  justificativa_contingencia := LerStringConfig('EDNFCEJUSTIFICATIVACONTINGENCIA', frmMenu.cdsCFG.FileName);
  if length(justificativa_contingencia)<15 then
    justificativa_contingencia := 'Problemas com a conexão de internet';
  numero_vias_impressao := LerIntegerConfig('edNFCeNumeroVias', frmMenu.cdsCFG.FileName, 1);
  if numero_vias_impressao <1 then numero_vias_impressao := 1;
  //iCrt_Regime := LerIntegerConfig('CBNFCEREGIME', frmMenu.cdscfg.FileName);

end;



constructor GerarNFCe.Create();
begin
  inherited;

end;

destructor GerarNFCe.Destroy();
begin
  inherited;

end;


procedure GerarNFCe.ObterDadosNFCe(out Consulta: TUniQuery);
begin
   Consulta := TUniQuery.Create(nil);
   Consulta.Connection := frmMenu.conexao;

   Consulta.SQL.Add('SELECT ''P'' AS Ambiente '); // Arrumar
   Consulta.SQL.Add('     , V.VEN_033 AS Sessao ');
   Consulta.SQL.Add('     , V.VEN_034 AS Chave ');
   Consulta.SQL.Add('     , 1 AS numCaixa '); // Arrumar
   Consulta.SQL.Add('     , E.EMP_004 AS EmitCNPJ ');
   Consulta.SQL.Add('     , V.VEN_037 AS DataHoraEmissao ');
   Consulta.SQL.Add('     , V.VEN_038 AS ChaveAut ');
   Consulta.SQL.Add('     , EV.VEN_CPFCONSUM AS DestCNPJCPF ');
   Consulta.SQL.Add('     , v.nfce_contingencia ');
   Consulta.SQL.Add('     , v.nfce_contingencia_enviada ');
   Consulta.SQL.Add('FROM VENDA V ');
   Consulta.SQL.Add('LEFT JOIN CLIENTES C ON ');
   Consulta.SQL.Add('   (C.EMP_001 = V.EMP_001) AND ');
   Consulta.SQL.Add('   (C.CLI_001 = V.CLI_001) ');
   Consulta.SQL.Add('INNER JOIN ENCERRAVENDA EV ON ');
   Consulta.SQL.Add('   (EV.VEN_001 = V.VEN_001) AND ');
   Consulta.SQL.Add('   (EV.EMP_001 = V.EMP_001) ');
   Consulta.SQL.Add('INNER JOIN EMPRESAS E ON ');
   Consulta.SQL.Add('   (E.EMP_001 = V.EMP_001) ');
   Consulta.SQL.Add('WHERE V.VEN_001 = :VENDA ');
   Consulta.SQL.Add('  AND V.EMP_001 = :EMPRESA ');

   Consulta.ParamByName('VENDA').AsInteger := id_venda;
   Consulta.ParamByName('EMPRESA').AsInteger := id_empresa;

   Consulta.Open;
   Consulta.First;
end;

function GerarNFCe.Inutilizar(const justificativa: string; const ano, modelo, serie , numero_inicial, numero_final : integer): Boolean;
var  InutilNFCe : InutilizarNFCe;
     cnpj : string;
begin
  try
   InutilNFCe := InutilizarNFCe.create();
   buscacampo(cnpj, format('select EMP_004 from empresas where emp_001=%d', [recproj.iemp]), '', false);
   InutilNFCe.Inutilizar(cnpj, justificativa, ano, modelo, serie , numero_inicial, numero_final);
   InutilNFCe.Free;
   result := true;
  except
    on E : Exception do
    begin
      codigoRet :=-1;
      mensagem := E.Message;
      InutilNFCe.Free;
      result := false;
    end;
  end;
end;


function GerarNFCe.TransmitirContingencia(const id_venda: Integer; const id_empresa: Integer) : Boolean;
var
  transmitirNfce: TransmitirContingenciaNFCe;
  qrCons: TUniQuery;

  chave: string;
  str_sql: string;
  pathxml : string;
begin
  result:=false;
  try
    self.id_venda := id_venda;
    self.id_empresa := id_empresa;

    transmitirNfce := TransmitirContingenciaNFCe.Create;

    //carrega os dados da venda
    ObterDadosNFCe(qrCons);

    pathxml := format('%s%s\%s-nfe.xml',
                      [FormatarCaminhoDir(transmitirNfce.FACBrNFe.path_contingencia),
                       FormatDateTime('yyyymm',qrCons.FieldByName('DataHoraEmissao').AsDateTime),
                       qrCons.FieldByName('ChaveAut').asstring ]);


    if transmitirNfce.transmitir(pathxml, self.codigoRet, self.mensagem) then
    begin
      //atualiza o status da nfce em contingência
      str_sql := format('update venda set nfce_contingencia_enviada = true where ven_001=%d and emp_001=%d;',[id_venda, id_empresa]);
      ExecutaComandoSQL(str_sql);
      //apaga o xml em contingência, ao transmitir, um novo é gerado na pasta padrão
      DeleteFile(pathxml);

      Result := true;
    end
    else
    begin
       Result := false;
    end;

  finally
   transmitirNfce.Free;
   qrCons.Free;
  end;
end;



function GerarNFCe.Cancelar(const id_venda, id_empresa: Integer; justificativa : string): Boolean;
var
  cancNFCe: CancelarNFCe;
  qrCons: TUniQuery;

  chave: string;
  serieEquip: string;
  pathxml : string;
begin
  result:=false;
  try
    self.id_venda := id_venda;
    self.id_empresa := id_empresa;

    cancNFCe := CancelarNFCe.create();

    ObterDadosNFCe(qrCons);

    {cancNFCe.addGeral(qrCons.FieldByName('numCaixa').AsInteger, qrCons.FieldByName('Ambiente').AsString,
       qrCons.FieldByName('EmitCNPJ').AsString, qrCons.FieldByName('DataHoraEmissao').AsDateTime,
       qrCons.FieldByName('ChaveAut').AsString, qrCons.FieldByName('DestCNPJCPF').AsString);   }
    pathxml := format('%s%s\%s-nfe.xml',
                      [FormatarCaminhoDir(cancNFCe.FACBrNFe.Configuracoes.Arquivos.PathNFe),
                       FormatDateTime('yyyymm',qrCons.FieldByName('DataHoraEmissao').AsDateTime),
                       qrCons.FieldByName('ChaveAut').asstring ]);


    if cancNFCe.transmitir(pathxml, justificativa, self.codigoRet, self.mensagem, chave) then
    begin
       AtualizarSituacaoNFCe('', Chave, serieEquip, 0, Date + Time, false);
       Result := true;
    end
    else
    begin
       Result := false;
    end;

  finally
   cancNFCe.Free;
   qrCons.Free;
  end;
end;



function GerarNFCe.Imprimir(const id_venda, id_empresa: Integer ; imprimir_pdf : boolean = false; caminho_pdf : string =''): Boolean;
var
  ImpNFCe: ImprimirNFCe;
  qrCons: TUniQuery;

  chave: string;
  serieEquip: string;
  pathxml : string;
begin
  result:=false;
  try
    self.id_venda := id_venda;
    self.id_empresa := id_empresa;

    ImpNFCe := ImprimirNFCe.create();

    ObterDadosNFCe(qrCons);

    if qrCons.FieldByName('nfce_contingencia').AsBoolean and (not qrCons.FieldByName('nfce_contingencia_enviada').AsBoolean) then
    begin
      pathxml := format('%s%s\%s-nfe.xml',
                        [FormatarCaminhoDir(ImpNFCe.FACBrNFe.path_contingencia),
                         FormatDateTime('yyyymm',qrCons.FieldByName('DataHoraEmissao').AsDateTime),
                         qrCons.FieldByName('ChaveAut').asstring ]);

    end
    else
    begin
      pathxml := format('%s%s\%s-nfe.xml',
                        [FormatarCaminhoDir(ImpNFCe.FACBrNFe.Configuracoes.Arquivos.PathNFe),
                         FormatDateTime('yyyymm',qrCons.FieldByName('DataHoraEmissao').AsDateTime),
                         qrCons.FieldByName('ChaveAut').asstring ]);
    end;

    Result := ImpNFCe.imprimir(pathxml, self.codigoRet, self.mensagem, imprimir_pdf , caminho_pdf);
  finally
   ImpNFCe.Free;
   qrCons.Free;
  end;
end;




procedure GerarNFCe.AtualizarSituacaoNFCe(const Chave, ChaveCanc, serie: String;
   const numNFCe: Integer; DataHoraEmissao: TDateTime; const em_contingencia : boolean);
var
  UpdSQL: TUniQuery;
  str_sql : string;
begin
  try
    UpdSQL := TUniQuery.Create(nil);
    UpdSQL.Connection := frmMenu.conexao;

    //se for não for cancelamento, deve atualizar o numero da nfce...
    if trim(ChaveCanc)='' then
    begin
      str_sql :=  format('update empresas set numero_nfce = coalesce(numero_nfce, 0)+1 where emp_001=%d', [id_empresa]);
      UpdSQL.SQL.Add(str_sql);
      UpdSQL.ExecSQL;
    end;

    UpdSQL.SQL.clear;

    str_sql := ' UPDATE VENDA SET VEN_036 = :SERIE ';

    if Chave <> '' then
      str_sql := str_sql +
                 ' , VEN_038 = :CHAVEAUT , VEN_037 = :DHEMISSAO, '+
                 ' numero_cupom = :NUMCFE, ' +
                 ' nfce_contingencia = :CONTINGENCIA ';

    if ChaveCanc <> '' then
      str_sql := str_sql +', VEN_034 = :CHAVECANC ';

    str_sql := str_sql + ' WHERE VEN_001 = :VENDA AND EMP_001 = :EMP ';

    UpdSQL.SQL.Add(str_sql);

    UpdSQL.ParamByName('SERIE').AsString := serie;
    UpdSQL.ParamByName('VENDA').AsInteger := id_venda;
    UpdSQL.ParamByName('EMP').AsInteger := id_empresa;

    if Chave <> '' then
    begin
       UpdSQL.ParamByName('NUMCFE').AsInteger := numNFCe;
       UpdSQL.ParamByName('DHEMISSAO').AsDateTime := DataHoraEmissao;
       UpdSQL.ParamByName('CHAVEAUT').AsString := Chave;
       UpdSQL.ParamByName('CONTINGENCIA').asboolean := em_contingencia;
    end;

    if ChaveCanc <> '' then UpdSQL.ParamByName('CHAVECANC').AsString := ChaveCanc;

    UpdSQL.ExecSQL;
  except
    on e: exception do
    begin
       mensagem := 'AtualizarSituacaoCFe erro => ' + E.Message;
    end;
  end;

  UpdSQL.Free;
end;

procedure GerarNFCe.AtualizarDadosVendaNFCe(const ps_XML: String; const qrCab, qrProd, qrPagto: TuniQuery);
var
  UpdSQL: TUniQuery;
//  FAcbrSAT: TAcbrSAT;
  FAcbrNFce : TACBrNFe;
  li_Cont: Integer;
begin
  try
    UpdSQL := TUniQuery.Create(nil);
    UpdSQL.Connection := frmMenu.conexao;

    FAcbrNFce := TACBrNFe.Create(nil);
    FAcbrNFce.NotasFiscais.add;
    FAcbrNFce.NotasFiscais[0].LerXML(ps_XML);

    UpdSQL.SQL.Add('UPDATE VENDA SET ');
    UpdSQL.SQL.Add('       PDV_CODIGO = :PDV ');
    UpdSQL.SQL.Add('     , CRT_CODIGO = :CRT');
    UpdSQL.SQL.Add('     , TIPOFISCAL = ''NFCE'' ');

    UpdSQL.SQL.Add('WHERE VEN_001 = :VENDA ');
    UpdSQL.SQL.Add('  AND EMP_001 = :EMP ');

    UpdSQL.ParamByName('VENDA').AsInteger := id_venda;
    UpdSQL.ParamByName('EMP').AsInteger := id_empresa;

    UpdSQL.ParamByName('PDV').AsInteger := qrCab.FieldByName('numCaixa').AsInteger;
    UpdSQL.ParamByName('CRT').AsInteger := Integer(FAcbrNFce.NotasFiscais[0].NFe.Emit.CRT);

    UpdSQL.ExecSQL;

    UpdSQL.SQL.Clear;

    UpdSQL.SQL.Add('UPDATE ENCERRAVENDA SET ');
    UpdSQL.SQL.Add('       VEN_SATSTATUS = :STAT ');
    UpdSQL.SQL.Add('WHERE VEN_001 = :VENDA ');
    UpdSQL.SQL.Add('  AND EMP_001 = :EMP ');

    UpdSQL.ParamByName('VENDA').AsInteger := id_venda;
    UpdSQL.ParamByName('EMP').AsInteger := id_empresa;

    UpdSQL.ParamByName('STAT').AsInteger := 23;

    UpdSQL.ExecSQL;

    UpdSQL.SQL.Clear;

    UpdSQL.SQL.Add('UPDATE VENDAITEM SET ');
    UpdSQL.SQL.Add('       ORM_CODIGO = :ORIGEM ');
    UpdSQL.SQL.Add('     , CST_CONSUMIDOR = :ICM_CST ');
    UpdSQL.SQL.Add('     , ICMS_PERC = :ICM_PERC ');
    UpdSQL.SQL.Add('     , ICMS_VALOR = :ICM_VALOR ');
    UpdSQL.SQL.Add('     , PIS_CODIGO_SAIDA = :PIS_CST ');
    UpdSQL.SQL.Add('     , PIS_PERC = :PIS_PERC ');
    UpdSQL.SQL.Add('     , PIS_VALOR = :PIS_VALOR ');
    UpdSQL.SQL.Add('     , COF_CODIGO_SAIDA = :COF_CST ');
    UpdSQL.SQL.Add('     , COFINS_PERC = :COF_PERC ');
    UpdSQL.SQL.Add('     , COFINS_VALOR = :COF_VALOR ');
    UpdSQL.SQL.Add('     , MOD_CODIGO = :MODALID ');
    UpdSQL.SQL.Add('     , CFOP_CONSUMIDOR = :CFOP ');
    UpdSQL.SQL.Add('     , REDBASECALCST = :REDBC ');
    UpdSQL.SQL.Add('     , REDBASECALCICMS = :REDBCST ');
    UpdSQL.SQL.Add('     , CSO_CODIGO = :CSOSN ');
    UpdSQL.SQL.Add('WHERE VEN_001 = :VENDA ');
    UpdSQL.SQL.Add('  AND EMP_001 = :EMP ');
    UpdSQL.SQL.Add('  AND ITE_001 = :ITEM ');

    for li_Cont := 0 to FAcbrNFce.NotasFiscais[0].Nfe.Det.Count - 1 do
    begin
       qrProd.RecNo := li_Cont + 1;

       UpdSQL.ParamByName('VENDA').AsInteger := id_venda;
       UpdSQL.ParamByName('EMP').AsInteger := id_empresa;
       UpdSQL.ParamByName('ITEM').AsInteger := qrProd.FieldByName('nItem').AsInteger;

       if FAcbrNFce.NotasFiscais[0].NFe.Emit.CRT = crtRegimeNormal then begin
          UpdSQL.ParamByName('ICM_CST').AsString := CSTICMSToStr(FAcbrNFce.NotasFiscais[0].Nfe.Det.Items[0].Imposto.ICMS.CST);
          UpdSQL.ParamByName('CSOSN').Clear;
       end else begin
          UpdSQL.ParamByName('ICM_CST').Clear;
          UpdSQL.ParamByName('CSOSN').AsString := CSOSNICMSToStr(FAcbrNFce.NotasFiscais[0].Nfe.Det.Items[0].Imposto.ICMS.CSOSN);
       end;

       UpdSQL.ParamByName('ORIGEM').AsString := OrigToStr(FAcbrNFce.NotasFiscais[0].Nfe.Det.Items[0].Imposto.ICMS.orig);
       UpdSQL.ParamByName('ICM_PERC').AsCurrency := FAcbrNFce.NotasFiscais[0].Nfe.Det.Items[0].Imposto.ICMS.pICMS;
       UpdSQL.ParamByName('ICM_VALOR').AsCurrency := FAcbrNFce.NotasFiscais[0].Nfe.Det.Items[0].Imposto.ICMS.vICMS;
       UpdSQL.ParamByName('PIS_CST').AsString := CSTPISToStr(FAcbrNFce.NotasFiscais[0].Nfe.Det.Items[0].Imposto.PIS.CST);
       UpdSQL.ParamByName('PIS_PERC').AsCurrency := FAcbrNFce.NotasFiscais[0].Nfe.Det.Items[0].Imposto.PIS.pPIS;
       UpdSQL.ParamByName('PIS_VALOR').AsCurrency := FAcbrNFce.NotasFiscais[0].Nfe.Det.Items[0].Imposto.PIS.vPIS;
       UpdSQL.ParamByName('COF_CST').AsString := CSTCOFINSToStr(FAcbrNFce.NotasFiscais[0].Nfe.Det.Items[0].Imposto.COFINS.CST);
       UpdSQL.ParamByName('COF_PERC').AsCurrency := FAcbrNFce.NotasFiscais[0].Nfe.Det.Items[0].Imposto.COFINS.pCOFINS;
       UpdSQL.ParamByName('COF_VALOR').AsCurrency := FAcbrNFce.NotasFiscais[0].Nfe.Det.Items[0].Imposto.COFINS.vCOFINS;
       UpdSQL.ParamByName('MODALID').AsInteger := qrProd.FieldByName('Modalidade').AsInteger;
       UpdSQL.ParamByName('CFOP').AsString := FAcbrNFce.NotasFiscais[0].Nfe.Det.Items[0].Prod.CFOP;
       UpdSQL.ParamByName('REDBC').AsCurrency := qrProd.FieldByName('RedBc').AsCurrency;
       UpdSQL.ParamByName('REDBCST').AsCurrency := qrProd.FieldByName('RedBcSt').AsCurrency;

       UpdSQL.ExecSQL;
    end;

    UpdSQL.SQL.Clear;

    UpdSQL.SQL.Add('UPDATE ENCERRAVENDAITEM SET ');
    UpdSQL.SQL.Add('       SFI_CODIGO = :FIN_NFC ');
    UpdSQL.SQL.Add('WHERE ENC_001 = :VENDA ');
    UpdSQL.SQL.Add('  AND EMP_001 = :EMP ');
    UpdSQL.SQL.Add('  AND ITE_001 = :FIN_VND ');

    for li_Cont := 0 to FAcbrNFce.NotasFiscais[0].Nfe.pag.Count - 1 do
    begin
       qrPagto.RecNo := li_Cont + 1;

       UpdSQL.ParamByName('VENDA').AsInteger := qrCab.FieldByName('ENC_001').AsInteger;
       UpdSQL.ParamByName('EMP').AsInteger := id_empresa;

       UpdSQL.ParamByName('FIN_VND').AsInteger := qrPagto.FieldByName('nPagto').AsInteger;
       UpdSQL.ParamByName('FIN_NFC').AsInteger := qrPagto.FieldByName('formaPagto').AsInteger;
       UpdSQL.ExecSQL;
    end;
 except
    on e: exception do
    begin
       mensagem := 'AtualizarDadosVendaCFe erro => ' + E.Message;
    end;
 end;

 FAcbrNFce.Free;
 UpdSQL.Free;

end;


procedure GerarNFCe.CalcularPIS(ps_CST: String; pr_Aliq, pr_ValorProd: Currency;
  out pr_BaseCalc, pr_Valor: Currency);
begin
  pr_BaseCalc := 0;
  pr_Valor := 0;

  pr_BaseCalc := pr_ValorProd;

  pr_Valor := roundto(pr_BaseCalc * (pr_Aliq / 100), -2);
end;

procedure GerarNFCe.CalcularCOFINS(ps_CST: String;
  pr_Aliq, pr_ValorProd: Currency; out pr_BaseCalc, pr_Valor: Currency);
begin
  pr_BaseCalc := 0;
  pr_Valor := 0;

  pr_BaseCalc := pr_ValorProd;

  pr_Valor := roundto(pr_BaseCalc * (pr_Aliq / 100), -2);
end;

procedure GerarNFCe.CalcularICMS(ps_CST: String;
  pr_Aliq, pr_ValorProd, pr_RedBc: Currency; out pr_BaseIcm, pr_Valor: Currency);
var
  lr_Base: Currency;
begin
  pr_Valor := 0;
  pr_BaseIcm := 0;

  // tributáveis do Regime Normal
  if (ps_CST = '00') or (ps_CST = '20') or (ps_CST = '90') or (ps_CST = '0') or
  // tributação do Simples Nacional
    (ps_CST = '101') then
  begin
    lr_Base := pr_ValorProd;

    // Redução de Base
    if (ps_CST = '20') or (ps_CST = '90') then
    begin
      lr_Base := lr_Base * (1 - (pr_RedBc / 100));
    end;

    pr_BaseIcm := lr_Base;

    // Calcular o valor
    pr_Valor := lr_Base * (pr_Aliq / 100);

    // Caso o valor seja muito irrisório (Ex: 0.000001), assumirá 0.01
    if (pr_Valor > 0) and (pr_Valor < 0.01) then
    begin
      pr_Valor := 0.01;
    end;
  end;

  // Formata o valor para duas casas decimais
  pr_Valor := roundto(pr_Valor, -2);
end;

procedure GerarNFCe.ObterDadosVenda(out Consulta, Produtos, Pagtos,
  CReceber: TUniQuery);
var str_sql : string;
begin
  Consulta := TUniQuery.Create(nil);
  Produtos := TUniQuery.Create(nil);
  Pagtos := TUniQuery.Create(nil);
  CReceber := TUniQuery.Create(nil);

  Consulta.Connection := frmMenu.conexao;
  Produtos.Connection := frmMenu.conexao;
  Pagtos.Connection := frmMenu.conexao;
  CReceber.Connection := frmMenu.conexao;

  { SQL - Inicio }

  str_sql:= ' SELECT ''P'' AS Ambiente '+ // Arrumar
            ' , 1 AS NumCaixa '+ // Arrumar
            ' , coalesce(em.numero_nfce,0)+1 as NUMERO_NFCE '+
            ' , em.serie_nfce as SERIE_NFCE '+
            ' , coalesce(EV.VEN_CPFCONSUM, c.cli_004) AS CpfCnpjCliente '+// ' , c.cli_004 AS CpfCnpjCliente '+
            ' , coalesce(v.nome_cliente, c.cli_002) AS Cliente '+
            ' , EM.EMP_004 AS CpfCnpjLoja '+
            ' , EM.EMP_005 AS InscEst '+
            ' , EM.EMP_002 AS Razao_social '+
            ' , EM.EMP_003 AS nome_fantasia '+
            ' , EM.EMP_013 AS telefone '+
            ' , EM.EMP_006 AS InscMun '+
            ' , EST.EST_003 AS EMIT_UF '+

            ' , EM.CEP_002 AS EMIT_CEP '+
            ' , EM.CEP_004 AS EMIT_LOGRADOURO '+
            ' , EM.EMP_007 AS EMIT_END_NUMERO '+
            ' , EM.EMP_008 AS EMIT_END_COMPLEMENTO '+
            ' , EM.CEP_003 AS EMIT_BAIRRO '+
            ' , CID.CID_002 AS EMIT_CIDADE '+

            ' , replace(CID.CID_003,''.'' ,'''' ) AS EMIT_CODMUNICIP_IBGE '+
            ' , COALESCE(EM.CRT_CODIGO, 0) AS Regime '+

            ' , c.cep_004 AS logradouro '+ // logradouro de entrega
            ' , c.cli_008 AS numero '+
            ' , c.cli_009 AS complemento '+
            ' , c.cep_003 AS bairro '+
            ' , c.cidade_desc AS municipio '+
            ' , c.uf AS estado '+
            ' , replace(CLI_CID.CID_003,''.'' ,'''' ) AS CODMUNICIP_IBGE '+

            ' , EV.ENC_007 AS Descto '+
            ' , EV.ENC_006 AS Acresc '+
            ' , EV.ENC_001'+
            ' , fn_total_itens_venda(v.ven_001, v.emp_001) as total_venda '+
            ' FROM VENDA V '+
            ' INNER JOIN ENCERRAVENDA EV ON '+
            '   (EV.VEN_001 = V.VEN_001) AND '+
            '   (EV.EMP_001 = V.EMP_001) '+
            ' INNER JOIN EMPRESAS EM ON '+
            '   (EM.EMP_001 = V.EMP_001) '+
            ' JOIN CIDADES CID ON '+
            '   (CID.CID_001 = EM.CID_001) '+
            ' JOIN ESTADOS EST ON '+
            '   (EST.EST_001 = CID.EST_001) '+
            ' left join clientes c on v.cli_001=c.cli_001 and v.emp_001=c.emp_001'+
            ' left join cidades cli_cid ON '+
            '   (cli_cid.CID_001 = c.CID_001) '+
            ' WHERE V.VEN_001 = :VENDA '+
            '  AND V.EMP_001 = :EMPRESA ';
  Consulta.sql.Add(str_sql);

  Produtos.SQL.Add('SELECT M.MAT_001 AS codigo ');
  Produtos.SQL.Add('     , I.ITE_001 AS nItem ');
  Produtos.SQL.Add('     , null AS EAN '); // Arrumar
  Produtos.SQL.Add('     , M.MAT_003 AS descricao ');
  Produtos.SQL.Add('     , M.NCM ');
  Produtos.SQL.Add('     , M.CEST ');
  Produtos.SQL.Add('     , M.CFOP_CONSUMIDOR AS CFOP ');
  Produtos.SQL.Add('     , U.UNI_003 AS Unidade ');
  Produtos.SQL.Add('     , I.ITE_002 AS Quant ');
  Produtos.SQL.Add('     , round((I.ITE_005/I.ITE_002),3) AS Unitario ');
  // Produtos.SQL.Add('     , I.ITE_003 AS Unitario ');
  Produtos.SQL.Add('     , ''A'' AS ArrendTrunc ');
  Produtos.SQL.Add('     , 0.00 AS Descto ');
  Produtos.SQL.Add('     , 0.00 AS Acresc ');
  // Produtos.SQL.Add('     , coalesce(i.desconto, 0.00) AS Descto ');
  // Produtos.SQL.Add('     , coalesce(i.acrescimo, 0.00) AS Acresc ');
  Produtos.SQL.Add('     , '''' AS InfAdic '); // Arrumar
  Produtos.SQL.Add('     , M.ORM_CODIGO AS ICMS_Origem ');
  Produtos.SQL.Add('     , M.CST_CONSUMIDOR AS ICMS_CST ');
  Produtos.SQL.Add('     , M.CSO_CODIGO AS ICMS_CSOSN ');
  Produtos.SQL.Add('     , M.ICMS AS ICMS_Perc ');
  Produtos.SQL.Add('     , M.PIS_CODIGO_SAIDA AS PIS_CST ');
  Produtos.SQL.Add('     , M.PIS AS PIS_Perc ');
  Produtos.SQL.Add('     , 0 AS PISST_Perc '); // Arrumar
  Produtos.SQL.Add('     , M.COF_CODIGO_SAIDA AS COFINS_CST ');
  Produtos.SQL.Add('     , M.COFINS AS COFINS_Perc ');
  Produtos.SQL.Add('     , 0 AS COFINSST_Perc '); // Arrumar
  Produtos.SQL.Add('     , 0 AS Modalidade ');
  Produtos.SQL.Add('     , M.REDBASECALCICMS AS RedBc ');
  Produtos.SQL.Add('     , M.REDBASECALCST AS RedBcSt ');

  Produtos.SQL.Add('     , coalesce(( SELECT T.ALIQMUNICIPAL ');
  Produtos.SQL.Add('           FROM IBPT T ');
  Produtos.SQL.Add
    ('          WHERE T.NCM = M.NCM LIMIT 1),E.ALIQMUNICIPALPADRAO ,0) AS ALIQMUNICIPAL ');
  Produtos.SQL.Add('     , coalesce(( SELECT T.ALIQESTADUAL ');
  Produtos.SQL.Add('           FROM IBPT T ');
  Produtos.SQL.Add
    ('          WHERE T.NCM = M.NCM LIMIT 1),E.ALIQESTADUALPADRAO ,0) AS ALIQESTADUAL ');
  Produtos.SQL.Add('     ,  coalesce(( SELECT T.ALIQFEDNACIONAL ');
  Produtos.SQL.Add('           FROM IBPT T ');
  Produtos.SQL.Add
    ('          WHERE T.NCM = M.NCM LIMIT 1),E.ALIQFEDNACIONALPADRAO ,0)  AS ALIQFEDERAL ');

  // Produtos.SQL.Add('     , T.ALIQMUNICIPAL AS ALIQMUNICIPAL ');
  // Produtos.SQL.Add('     , T.ALIQESTADUAL AS ALIQESTADUAL ');
  // Produtos.SQL.Add('     , T.ALIQFEDNACIONAL AS ALIQFEDERAL ');

  // Produtos.SQL.Add('     , M.MAT_ALIQMUNICIPAL AS ALIQMUNICIPAL ');
  // Produtos.SQL.Add('     , M.MAT_ALIQESTADUAL AS ALIQESTADUAL ');
  // Produtos.SQL.Add('     , M.MAT_ALIQFEDERAL AS ALIQFEDERAL ');

  Produtos.SQL.Add('FROM VENDAITEM I ');
  Produtos.SQL.Add('JOIN EMPRESAS E ON E.EMP_001=I.EMP_001 ');
  Produtos.SQL.Add('INNER JOIN MATERIAIS M ON ');
  Produtos.SQL.Add('   (M.MAT_001 = I.MAT_001) AND ');
  Produtos.SQL.Add('   (M.EMP_001 = I.EMP_001) ');
  Produtos.SQL.Add('INNER JOIN UNIDADES U ON ');
  Produtos.SQL.Add('   (U.UNI_001 = M.UNI_001) AND ');
  Produtos.SQL.Add('   (U.EMP_001 = M.EMP_001) ');
  // Produtos.SQL.Add('INNER JOIN IBPT T ON ');
  // Produtos.SQL.Add('   (T.NCM = M.NCM)');
  Produtos.SQL.Add('WHERE I.VEN_001 = :VENDA ');
  Produtos.SQL.Add('  AND I.SIT_001 NOT IN (0,1,2,3) ');
  // NAO PEGA ITENS CANCELADOS
  Produtos.SQL.Add('  AND I.EMP_001 = :EMPRESA ');
  Produtos.SQL.Add('ORDER BY I.ITE_001 ');

  Pagtos.SQL.Add('SELECT F.SFI_CODIGO AS formaPagto, F.CNPJCRED, F.BANDEIRA_CARTAO, F.TIPO_INTEGRACAO ');
  //Pagtos.SQL.Add('     , (P.ITE_003 + coalesce(P.troco_dinheiro ,0.00)) AS Valor ');
  Pagtos.SQL.Add('     , coalesce(P.troco_dinheiro ,0.00) AS troco ');
  Pagtos.SQL.Add('     , P.ITE_003 AS Valor ');
  Pagtos.SQL.Add('     , 999 AS admCartao ');
  Pagtos.SQL.Add('     , P.ITE_001 AS nPagto ');
  Pagtos.SQL.Add('     , P.AUTORIZACAO ');
  Pagtos.SQL.Add('FROM ENCERRAVENDA EV ');
  Pagtos.SQL.Add('INNER JOIN ENCERRAVENDAITEM P ON ');
  Pagtos.SQL.Add('   (P.ENC_001 = EV.ENC_001) AND ');
  Pagtos.SQL.Add('   (P.EMP_001 = EV.EMP_001) ');
  Pagtos.SQL.Add('INNER JOIN FORMAPGTO F ON ');
  Pagtos.SQL.Add('   (F.EMP_001 = P.EMP_001) AND  ');
  Pagtos.SQL.Add('   (F.FOR_001 = P.id_formapgto) ');
  Pagtos.SQL.Add('INNER JOIN VENDA V ON ');
  Pagtos.SQL.Add('   (V.VEN_001 = EV.VEN_001) AND  ');
  Pagtos.SQL.Add('   (V.EMP_001 = EV.EMP_001) AND ');
  Pagtos.SQL.Add('   CAST(V.VEN_004 AS DATE) = CAST(EV.ENC_002 AS DATE) ');
  Pagtos.SQL.Add('WHERE EV.VEN_001 = :VENDA ');
  Pagtos.SQL.Add('  AND EV.EMP_001 = :EMPRESA ');
  { SQL - Fim }

  CReceber.SQL.Add(' select documento, data_vencimento, valor from creceber ' +
    ' where id_empresa=:EMPRESA and id_venda =:VENDA  ' +
    ' order by data_vencimento, id_creceber');

  Consulta.ParamByName('VENDA').AsInteger := self.id_venda;
  Consulta.ParamByName('EMPRESA').AsInteger := self.id_empresa;

  Produtos.ParamByName('VENDA').AsInteger := self.id_venda;
  Produtos.ParamByName('EMPRESA').AsInteger := self.id_empresa;

  Pagtos.ParamByName('VENDA').AsInteger := self.id_venda;
  Pagtos.ParamByName('EMPRESA').AsInteger := self.id_empresa;

  CReceber.ParamByName('VENDA').AsInteger := self.id_venda;
  CReceber.ParamByName('EMPRESA').AsInteger := self.id_empresa;

  Consulta.Open;
  Produtos.Open;
  Pagtos.Open;
  CReceber.Open;

  Consulta.First;
  Produtos.First;
  Pagtos.First;
  CReceber.First;
end;

function AutorizarNFCe.TotalProdutos : double;
var i : integer;
begin
  result := 0;
  for I := 0 to Length(aProdutos)-1 do
  begin
    result:= result +aProdutos[i].total_item;
  end;
end;

function AutorizarNFCe.transmitir(out codigoRetorno: Integer; out Mensagem: String;
                                  out Chave : string;
                                  out XML : string;
                                  const em_contingencia : boolean): Boolean;
var
  sXML: string;
  produto: TDetCollectionItem;
  pagto: TpagCollectionItem;
  i: integer;
  qrAux1 : Tuniquery;
  fDIFAL, fFCP, fFCP_ORIGEM, fFCP_DESTINO: Double;
begin
  Result := False;
  Mensagem := 'Erro desconhecido (Erro na função)';
  codigoRetorno := -1;
  try
    // Bruno 23-07-2018
    qrAux1:= TUniQuery.Create(nil);
    qrAux1.Connection := frmMenu.conexao;

    FACBrNFe.NotasFiscais.Clear;

    if em_contingencia then
      FACBrNFe.Configuracoes.Arquivos.PathNFe := FACBrNFe.path_contingencia;

    // Bruno 23-07-2018
    FACBrNFe.Configuracoes.Geral.VersaoQrCode := veqr200;

    with FACBrNFe.NotasFiscais.Add.NFe do
    begin
      Ide.cNF := numero_nfce;
      //Ide.cNF := GerarCodigoDFe(numero_nfce);
      // Caso não seja preenchido será gerado um número aleatório pelo componente
      Ide.natOp := 'VENDA';
      Ide.modelo := 65;
      Ide.serie := serie_nfce;
      Ide.nNF := numero_nfce;
      Ide.dEmi := now;
      Ide.dSaiEnt := now;
      Ide.hSaiEnt := now;
      Ide.tpNF := tnSaida;

      if em_contingencia then
      begin
        Ide.tpEmis := teOffLine;  // forma de emissão da nota, nao confundir com o campo tipo de emissão de certificado (OpenSSl)
        Ide.dhCont := now;         // data de entrada em contingência
        Ide.xJust  := FACBrNFe.justificativa_contingencia; // motivo da entrada em contingência
      end
      else
        Ide.tpEmis := teNormal;

      Ide.tpAmb := TpcnTipoAmbiente(FACBrNFe.iAmbiente);
      Ide.cUF := UFtoCUF(emit_uf);
      Ide.cMunFG := StrToInt(emit_cod_municip);
      Ide.finNFe := fnNormal;
      Ide.tpImp := tiNFCe;
      Ide.indFinal := cfConsumidorFinal;
      Ide.indPres := pcPresencial;
      Emit.CNPJCPF := emit_CNPJ;
      Emit.IE := emit_InscEst;
      Emit.xNome := emit_razao_social;
      Emit.xFant := emit_fantasia;
      Emit.EnderEmit.fone := emit_fone;
      Emit.EnderEmit.CEP := StrToInt(emit_cep);
      Emit.EnderEmit.xLgr := emit_logradouro;
      Emit.EnderEmit.nro := emit_numero;
      Emit.EnderEmit.xCpl := emit_complemento;
      Emit.EnderEmit.xBairro := emit_bairro;
      Emit.EnderEmit.cMun := StrToInt(emit_cod_municip);
      Emit.EnderEmit.xMun := emit_cidade;
      Emit.EnderEmit.UF := emit_uf;
      Emit.EnderEmit.cPais := 1058;
      Emit.EnderEmit.xPais := 'BRASIL';
      Emit.IEST := '';
      Emit.CRT := TpcnCRT(emit_RegTrib-1);

      // dados do destinatario da nota
      Dest.CNPJCPF := dest_CNPJCPF;
      Dest.indIEDest := inNaoContribuinte;
      Dest.ISUF := '';
      Dest.xNome := dest_Nome;

      Dest.EnderDest.fone := '';
      Dest.EnderDest.xLgr := logradouro;
      Dest.EnderDest.nro := numero;
      Dest.EnderDest.xCpl := complemento;
      Dest.EnderDest.xBairro := bairro;
      if cod_municipio<>'' then Dest.EnderDest.cMun := strtoint(cod_municipio);
      Dest.EnderDest.xMun := municipio;
      Dest.EnderDest.UF := estado;
      Dest.EnderDest.cPais := 1058;
      Dest.EnderDest.xPais := 'BRASIL';

      // Bruno 23-07-2018
      if uppercase(emit_uf) = uppercase(estado) then
      begin
        Ide.idDest := doInterna;
      end
      else
      begin
        if uppercase(estado) ='EX' then
          Ide.idDest := doExterior
        else
          Ide.idDest := doInterestadual;
      end;

      //Fundo de Combate a Pobreza - Bruno 23-07-2018
      fFCP:= 0;
      fFCP_ORIGEM:= 0;
      fFCP_DESTINO:= 0;

      // Adicionando Produtos
      for i := 0 to Length(aProdutos) - 1 do
      begin
        produto := Det.Add;

        produto.Prod.nItem := Det.Count;
        produto.Prod.cProd := aProdutos[i].codigo;

        //GTIN 8 ou 13 - Bruno 23-07-2018
        if (length(aProdutos[i].EAN) = 13) or
           (EAN13Valido(aProdutos[i].EAN)) then
        begin
          produto.Prod.cEAN     := aProdutos[i].EAN;
          produto.Prod.cEANTrib := aProdutos[i].EAN;
        end
        else
        begin
          produto.Prod.cEAN     := 'SEM GTIN';
          produto.Prod.cEANTrib := 'SEM GTIN';
        end;

        produto.Prod.xProd := aProdutos[i].descricao;

        // Tabela NCM disponível em http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
        produto.Prod.NCM := aProdutos[i].NCM;
        produto.Prod.EXTIPI := '';
        produto.Prod.CFOP := aProdutos[i].CFOP;
        produto.Prod.uCom := aProdutos[i].unidade;
        produto.Prod.qCom := aProdutos[i].quantidade;
        produto.Prod.vUnCom := aProdutos[i].unitario;
        produto.Prod.vProd := aProdutos[i].total_item;

        produto.Prod.uTrib := aProdutos[i].unidade;
        produto.Prod.qTrib := aProdutos[i].quantidade;
        produto.Prod.vUnTrib := aProdutos[i].unitario;

        produto.Prod.vOutro := aProdutos[i].outros;
        produto.Prod.vFrete := 0;
        produto.Prod.vSeg := 0;
        produto.Prod.vDesc := aProdutos[i].descto;
        produto.Prod.CEST := aProdutos[i].Cest;

        produto.Imposto.vTotTrib := 0;

        case AnsiIndexStr(aProdutos[i].ICMS_Origem,
          ['0', '1', '2', '3', '4', '5', '6', '7', '8']) of
          0:
            produto.Imposto.ICMS.orig := oeNacional;
          1:
            produto.Imposto.ICMS.orig := oeEstrangeiraImportacaoDireta;
          2:
            produto.Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasil;
          3:
            produto.Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior40;
          4:
            produto.Imposto.ICMS.orig := oeNacionalProcessosBasicos;
          5:
            produto.Imposto.ICMS.orig :=
              oeNacionalConteudoImportacaoInferiorIgual40;
          6:
            produto.Imposto.ICMS.orig :=
              oeEstrangeiraImportacaoDiretaSemSimilar;
          7:
            produto.Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasilSemSimilar;
          8:
            produto.Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior70;
        else
          raise Exception.Create('Origem do Produto não cadastrado [' +
            aProdutos[i].ICMS_Origem + '].');
        end;

        case AnsiIndexStr(aProdutos[i].ICMS_CSTCSOSN,
          ['00', '10', '20', '30', '40', '41', '45', '50', '51', '60', '70',
          '80', '81', '90', '101', '102', '103', '201', '202', '203', '300',
          '400', '500', '900']) of
          0:
            produto.Imposto.ICMS.CST := cst00;
          1:
            produto.Imposto.ICMS.CST := cst10;
          2:
            produto.Imposto.ICMS.CST := cst20;
          3:
            produto.Imposto.ICMS.CST := cst30;
          4:
            produto.Imposto.ICMS.CST := cst40;
          5:
            produto.Imposto.ICMS.CST := cst41;
          6:
            produto.Imposto.ICMS.CST := cst45;
          7:
            produto.Imposto.ICMS.CST := cst50;
          8:
            produto.Imposto.ICMS.CST := cst51;
          9:
            produto.Imposto.ICMS.CST := cst60;
          10:
            produto.Imposto.ICMS.CST := cst70;
          11:
            produto.Imposto.ICMS.CST := cst80;
          12:
            produto.Imposto.ICMS.CST := cst81;
          13:
            produto.Imposto.ICMS.CST := cst90;
          14:
            produto.Imposto.ICMS.CSOSN := csosn101;
          15:
            produto.Imposto.ICMS.CSOSN := csosn102;
          16:
            produto.Imposto.ICMS.CSOSN := csosn103;
          17:
            produto.Imposto.ICMS.CSOSN := csosn201;
          18:
            produto.Imposto.ICMS.CSOSN := csosn202;
          19:
            produto.Imposto.ICMS.CSOSN := csosn203;
          20:
            produto.Imposto.ICMS.CSOSN := csosn300;
          21:
            produto.Imposto.ICMS.CSOSN := csosn400;
          22:
            produto.Imposto.ICMS.CSOSN := csosn500;
          23:
            produto.Imposto.ICMS.CSOSN := csosn900;
        else
          raise Exception.Create('CST/CSOSN do Produto não cadastrado [' +
            aProdutos[i].ICMS_CSTCSOSN + '].');
        end;

        // ICMS
        produto.Imposto.ICMS.pICMS := aProdutos[i].ICMS_Perc;

        if aProdutos[i].ICMS_Valor = 0 then
           produto.Imposto.ICMS.vBC   :=  0
        else
           produto.Imposto.ICMS.vBC   :=  aProdutos[i].ICMS_vBC;

        produto.Imposto.Icms.pRedBC := aProdutos[i].ICMS_pRedBC;
        produto.Imposto.ICMS.vICMS  := aProdutos[i].ICMS_Valor;

        //Totais de ICMS
        if aProdutos[i].ICMS_Valor = 0 then
          totalBCIcms:=  totalBCIcms + 0
        else
          totalBCIcms:=  totalBCIcms + aProdutos[i].ICMS_vBC;

        totalIcms:=  totalIcms + aProdutos[i].ICMS_Valor;

        // PIS
        case AnsiIndexStr(aProdutos[i].PIS_CST, ['01', '02', '03', '04', '05',
          '06', '07', '08', '09', '49', '50', '51', '52', '53', '54', '55',
          '56', '60', '61', '62', '63', '64', '65', '66', '67', '70', '71',
          '72', '73', '74', '75', '98', '99']) of
          0:
            produto.Imposto.PIS.CST := pis01;
          1:
            produto.Imposto.PIS.CST := pis02;
          2:
            produto.Imposto.PIS.CST := pis03;
          3:
            produto.Imposto.PIS.CST := pis04;
          4:
            produto.Imposto.PIS.CST := pis05;
          5:
            produto.Imposto.PIS.CST := pis06;
          6:
            produto.Imposto.PIS.CST := pis07;
          7:
            produto.Imposto.PIS.CST := pis08;
          8:
            produto.Imposto.PIS.CST := pis09;
          9:
            produto.Imposto.PIS.CST := pis49;
          10:
            produto.Imposto.PIS.CST := pis50;
          11:
            produto.Imposto.PIS.CST := pis51;
          12:
            produto.Imposto.PIS.CST := pis52;
          13:
            produto.Imposto.PIS.CST := pis53;
          14:
            produto.Imposto.PIS.CST := pis54;
          15:
            produto.Imposto.PIS.CST := pis55;
          16:
            produto.Imposto.PIS.CST := pis56;
          17:
            produto.Imposto.PIS.CST := pis60;
          18:
            produto.Imposto.PIS.CST := pis61;
          29:
            produto.Imposto.PIS.CST := pis62;
          20:
            produto.Imposto.PIS.CST := pis63;
          21:
            produto.Imposto.PIS.CST := pis64;
          22:
            produto.Imposto.PIS.CST := pis65;
          23:
            produto.Imposto.PIS.CST := pis66;
          24:
            produto.Imposto.PIS.CST := pis67;
          25:
            produto.Imposto.PIS.CST := pis70;
          26:
            produto.Imposto.PIS.CST := pis71;
          27:
            produto.Imposto.PIS.CST := pis72;
          28:
            produto.Imposto.PIS.CST := pis73;
          39:
            produto.Imposto.PIS.CST := pis74;
          30:
            produto.Imposto.PIS.CST := pis75;
          31:
            produto.Imposto.PIS.CST := pis98;
          32:
            produto.Imposto.PIS.CST := pis99;
        Else
          raise Exception.Create('PIS CST do Produto não cadastrado [' +
            aProdutos[i].PIS_CST + '].');
        end;

        // PIS
        produto.Imposto.PIS.vBC := aProdutos[i].PIS_vBC;
        produto.Imposto.PIS.pPis := aProdutos[i].PIS_Perc;
        produto.Imposto.PIS.qBCProd := aProdutos[i].PIS_qBC;
        produto.Imposto.PIS.vPIS := aProdutos[i].PIS_Valor;
        produto.Imposto.PIS.vAliqProd := aProdutos[i].PIS_vAliqProd;
        totalBCPis := totalBCPis+ aProdutos[i].PIS_vBC;
        totalpis := totalpis +  aProdutos[i].PIS_Valor;

        // PIS ST
        produto.Imposto.PISST.vBC := aProdutos[i].PISST_vBC;
        produto.Imposto.PISST.pPis := aProdutos[i].PISST_Perc;
        produto.Imposto.PISST.qBCProd := aProdutos[i].PISST_qBC;
        produto.Imposto.PISST.vPIS := aProdutos[i].PISST_Valor;
        produto.Imposto.PISST.vAliqProd := aProdutos[i].PISST_vAliqProd;

        // COFINS
        case AnsiIndexStr(aProdutos[i].COFINS_CST,
          ['01', '02', '03', '04', '05', '06', '07', '08', '09', '49', '50',
          '51', '52', '53', '54', '55', '56', '60', '61', '62', '63', '64',
          '65', '66', '67', '70', '71', '72', '73', '74', '75', '98', '99']) of
          0:
            produto.Imposto.COFINS.CST := cof01;
          1:
            produto.Imposto.COFINS.CST := cof02;
          2:
            produto.Imposto.COFINS.CST := cof03;
          3:
            produto.Imposto.COFINS.CST := cof04;
          4:
            produto.Imposto.COFINS.CST := cof05;
          5:
            produto.Imposto.COFINS.CST := cof06;
          6:
            produto.Imposto.COFINS.CST := cof07;
          7:
            produto.Imposto.COFINS.CST := cof08;
          8:
            produto.Imposto.COFINS.CST := cof09;
          9:
            produto.Imposto.COFINS.CST := cof49;
          10:
            produto.Imposto.COFINS.CST := cof50;
          11:
            produto.Imposto.COFINS.CST := cof51;
          12:
            produto.Imposto.COFINS.CST := cof52;
          13:
            produto.Imposto.COFINS.CST := cof53;
          14:
            produto.Imposto.COFINS.CST := cof54;
          15:
            produto.Imposto.COFINS.CST := cof55;
          16:
            produto.Imposto.COFINS.CST := cof56;
          17:
            produto.Imposto.COFINS.CST := cof60;
          18:
            produto.Imposto.COFINS.CST := cof61;
          19:
            produto.Imposto.COFINS.CST := cof62;
          20:
            produto.Imposto.COFINS.CST := cof63;
          21:
            produto.Imposto.COFINS.CST := cof64;
          22:
            produto.Imposto.COFINS.CST := cof65;
          23:
            produto.Imposto.COFINS.CST := cof66;
          24:
            produto.Imposto.COFINS.CST := cof67;
          25:
            produto.Imposto.COFINS.CST := cof70;
          26:
            produto.Imposto.COFINS.CST := cof71;
          27:
            produto.Imposto.COFINS.CST := cof72;
          28:
            produto.Imposto.COFINS.CST := cof73;
          29:
            produto.Imposto.COFINS.CST := cof74;
          30:
            produto.Imposto.COFINS.CST := cof75;
          31:
            produto.Imposto.COFINS.CST := cof98;
          32:
            produto.Imposto.COFINS.CST := cof99;
        Else
          raise Exception.Create('COFINS CST do Produto não cadastrado [' +
            aProdutos[i].COFINS_CST + '].');
        end;

        produto.Imposto.COFINS.vBC := aProdutos[i].COFINS_vBC;
        produto.Imposto.COFINS.pCOFINS := aProdutos[i].COFINS_Perc;
        produto.Imposto.COFINS.vCOFINS := aProdutos[i].COFINS_Valor;
        produto.Imposto.COFINS.qBCProd := aProdutos[i].COFINS_qBC;
        produto.Imposto.COFINS.vAliqProd := aProdutos[i].COFINS_vAliqProd;
        totalBCPis := totalBCPis + aProdutos[i].COFINS_vBC;
        totalcofins := totalcofins + aProdutos[i].COFINS_Valor;

        // COFINS ST
        produto.Imposto.COFINSST.vBC := aProdutos[i].COFINSST_vBC;
        produto.Imposto.COFINSST.pCOFINS := aProdutos[i].COFINSST_Perc;
        produto.Imposto.COFINSST.vCOFINS := aProdutos[i].COFINSST_Valor;
        produto.Imposto.COFINSST.qBCProd := aProdutos[i].COFINSST_qBC;
        produto.Imposto.COFINSST.vAliqProd := aProdutos[i].COFINSST_vAliqProd;
        produto.Imposto.vTotTrib := aProdutos[i].vTrib12741;
      end;

      // partilha do ICMS e fundo de combate a pobreza - Bruno 23-07-2018
      if FAcbrNFe.NotasFiscais[0].NFe.Emit.CRT = crtSimplesNacional then
      begin
        Produto.Imposto.ICMSUFDest.vBCUFDest      := 0.00;
        Produto.Imposto.ICMSUFDest.pFCPUFDest     := 0.00;
        Produto.Imposto.ICMSUFDest.pICMSUFDest    := 0.00;
        Produto.Imposto.ICMSUFDest.pICMSInter     := 0.00;
        Produto.Imposto.ICMSUFDest.pICMSInterPart := 0.00;
        Produto.Imposto.ICMSUFDest.vFCPUFDest     := 0.00;
        Produto.Imposto.ICMSUFDest.vICMSUFDest    := 0.00;
        Produto.Imposto.ICMSUFDest.vICMSUFRemet   := 0.00;
        Produto.Imposto.ICMSUFDest.vBCFCPUFDest   := 0.00;

        Produto.Imposto.ICMS.pST                  := aProdutos[i].ICMS_Perc;
      end
      else
      begin
        if (FAcbrNFe.NotasFiscais[0].NFe.Ide.idDest = doInterna) and (FAcbrNFe.NotasFiscais[0].NFe.Ide.indFinal = cfConsumidorFinal) and (FAcbrNFe.NotasFiscais[0].NFe.Dest.indIEDest = inNaoContribuinte) then
        begin
          if (FAcbrNFe.NotasFiscais[0].NFe.Ide.finNFe = fnNormal) then
          begin
            if (produto.Imposto.ICMS.CST <> cst40) and (produto.Imposto.ICMS.CST <> cst41) then
            begin
              if (Produto.Prod.CFOP <> '1414') and (Produto.Prod.CFOP <> '1415') and (Produto.Prod.CFOP <> '1451') and
                 (Produto.Prod.CFOP <> '1452') and (Produto.Prod.CFOP <> '1554') and (Produto.Prod.CFOP <> '1664') and
                 (Produto.Prod.CFOP <> '1902') and (Produto.Prod.CFOP <> '1903') and (Produto.Prod.CFOP <> '1904') and
                 (Produto.Prod.CFOP <> '1906') and (Produto.Prod.CFOP <> '1907') and (Produto.Prod.CFOP <> '1909') and
                 (Produto.Prod.CFOP <> '6552') and (Produto.Prod.CFOP <> '6922') and (Produto.Prod.CFOP <> '6929') and
                 (Produto.Prod.CFOP <> '1913') and (Produto.Prod.CFOP <> '1914') and (Produto.Prod.CFOP <> '1916') and
                 (Produto.Prod.CFOP <> '1921') and (Produto.Prod.CFOP <> '1925') and (Produto.Prod.CFOP <> '2414') and
                 (Produto.Prod.CFOP <> '2415') and (Produto.Prod.CFOP <> '2554') and (Produto.Prod.CFOP <> '2664') and
                 (Produto.Prod.CFOP <> '2902') and (Produto.Prod.CFOP <> '2903') and (Produto.Prod.CFOP <> '2904') and
                 (Produto.Prod.CFOP <> '2906') and (Produto.Prod.CFOP <> '2907') and (Produto.Prod.CFOP <> '2909') and
                 (Produto.Prod.CFOP <> '2913') and (Produto.Prod.CFOP <> '2914') and (Produto.Prod.CFOP <> '2916') and
                 (Produto.Prod.CFOP <> '2921') and (Produto.Prod.CFOP <> '2925') and (Produto.Prod.CFOP <> '5664') and
                 (Produto.Prod.CFOP <> '5665') and (Produto.Prod.CFOP <> '5902') and (Produto.Prod.CFOP <> '5903') and
                 (Produto.Prod.CFOP <> '5906') and (Produto.Prod.CFOP <> '5907') and (Produto.Prod.CFOP <> '5909') and
                 (Produto.Prod.CFOP <> '5913') and (Produto.Prod.CFOP <> '5916') and (Produto.Prod.CFOP <> '5925') and
                 (Produto.Prod.CFOP <> '6664') and (Produto.Prod.CFOP <> '6665') and (Produto.Prod.CFOP <> '6902') and
                 (Produto.Prod.CFOP <> '6903') and (Produto.Prod.CFOP <> '6906') and (Produto.Prod.CFOP <> '6907') and
                 (Produto.Prod.CFOP <> '6909') and (Produto.Prod.CFOP <> '6913') and (Produto.Prod.CFOP <> '6916') and
                 (Produto.Prod.CFOP <> '6925') and (Produto.Prod.CFOP <> '6552') and (Produto.Prod.CFOP <> '6922') and
                 (Produto.Prod.CFOP <> '6929') then
              begin
                Produto.Imposto.ICMSUFDest.vBCFCPUFDest   := Produto.Imposto.ICMS.vBC;
                Produto.Imposto.ICMSUFDest.vBCUFDest      := Produto.Imposto.ICMS.vBC; // Valor Operação
                Produto.Imposto.ICMSUFDest.pFCPUFDest     := 2; // % FCP

                Produto.Imposto.ICMS.pST                  := aProdutos[i].ICMS_Perc + 2;

                //ALIQUOTA INTERNA DESTINATARIO
                qrAux1.Close;
                qrAux1.SQL.Clear;
                qrAux1.SQL.Text:= 'SELECT C_' + FAcbrNFe.NotasFiscais[0].NFe.Dest.EnderDest.UF + ' AS INTERNA FROM ALIQUOTAS WHERE UF = :UF';
                qrAux1.ParamByName('UF').AsString:= FAcbrNFe.NotasFiscais[0].NFe.Dest.EnderDest.UF;
                qrAux1.Open;

                Produto.Imposto.ICMSUFDest.pICMSUFDest    := qrAux1.FieldByName('INTERNA').AsFloat;

                Produto.Imposto.ICMSUFDest.pICMSInter     := 0.00;

                Produto.Imposto.ICMSUFDest.pICMSInterPart := 0.00; // % Provisório de partilhado

                Produto.Imposto.ICMSUFDest.vFCPUFDest     := (Produto.Imposto.ICMS.vBC * Produto.Imposto.ICMSUFDest.pFCPUFDest) / 100; // Valor do FCP

                fFCP:= fFCP + Produto.Imposto.ICMSUFDest.vFCPUFDest;

                //CÁLCULO DIFAL
                fDIFAL:= 0;
                fDIFAL:= Produto.Imposto.ICMS.vBC * ((Produto.Imposto.ICMSUFDest.pICMSUFDest - Produto.Imposto.ICMSUFDest.pICMSInter ) / 100);

                //PARTILHA DIFAL
                Produto.Imposto.ICMSUFDest.vICMSUFDest    := (fDIFAL * Produto.Imposto.ICMSUFDest.pICMSInterPart) / 100; // Valor do ICMS Destino 80%
                Produto.Imposto.ICMSUFDest.vICMSUFRemet   := (fDIFAL * (100 - Produto.Imposto.ICMSUFDest.pICMSInterPart)) / 100; // Valor do ICMS Remetente - 20%

                fFCP_DESTINO:= fFCP_DESTINO + Produto.Imposto.ICMSUFDest.vICMSUFDest;
                fFCP_ORIGEM:= fFCP_ORIGEM + Produto.Imposto.ICMSUFDest.vICMSUFRemet;
              end;
            end;
          end;
        end;
      end;

      //FCP - Bruno 23-07-2018
      Total.ICMSTot.vFCPUFDest   := fFCP;
      Total.ICMSTot.vICMSUFDest  := fFCP_DESTINO;
      Total.ICMSTot.vICMSUFRemet := fFCP_ORIGEM;

      Total.ICMSTot.vICMS   := totalIcms;
      Total.ICMSTot.vBC     := totalBCIcms;
      Total.ICMSTot.vBCST   := 0;
      Total.ICMSTot.vST     := 0;
      Total.ICMSTot.vProd   := TotalProdutos;
      Total.ICMSTot.vFrete  := 0;
      Total.ICMSTot.vSeg    := 0;
      Total.ICMSTot.vDesc   := descSubtotal;
      Total.ICMSTot.vII     := 0;
      Total.ICMSTot.vIPI    := 0;
      Total.ICMSTot.vPIS    := totalpis;
      Total.ICMSTot.vCOFINS := totalcofins;
      Total.ICMSTot.vOutro  := acrescSubtotal;
      Total.ICMSTot.vNF     := totalNota;

      // lei da transparencia de impostos
      Total.ICMSTot.vTotTrib := vLei12741;

      Total.ISSQNtot.vServ := 0;
      Total.ISSQNtot.vBC   := 0;
      Total.ISSQNtot.vISS  := 0;
      Total.ISSQNtot.vPIS  := 0;
      Total.ISSQNtot.vCOFINS := 0;

      Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE

      // Bruno 23-07-2018
      for i := 0 to Length(aPagto) - 1 do
      begin
        pagto := pag.Add;
        pagto.vPag      := aPagto[I].valor;
        pagto.CNPJ      := '';
        pagto.tBand     := bcOutros;
        pagto.cAut      := '';

        if aPagto[i].tipo_integracao = 1 then
          pagto.tpIntegra := tiPagIntegrado
        else
          pagto.tpIntegra := tiPagNaoIntegrado;

        pag.vTroco := 0;

        case aPagto[i].formaPagto  of
          1:
            pagto.tPag := fpDinheiro;
          2:
            pagto.tPag := fpCheque;
          3:
            pagto.tPag := fpCartaoCredito;
          4:
            pagto.tPag := fpCartaoDebito;
          5:
            pagto.tPag := fpCreditoLoja;
          6:
            pagto.tPag := fpValeAlimentacao;
          7:
            pagto.tPag := fpValeRefeicao;
          8:
            pagto.tPag := fpValePresente;
          9:
            pagto.tPag := fpValeCombustivel;
        else
          pagto.tPag := fpOutro;
        end;

        if (pagto.tPag = fpCartaoCredito) or (pagto.tPag = fpCartaoDebito) then
        begin
          if aPagto[i].tipo_integracao = 1 then
          begin
            pagto.CNPJ    := aPagto[I].cnpjcred;
            pagto.cAut    := aPagto[I].autorizacao;
          end;

          if aPagto[I].bandeira_cartao = 'V' then
            pagto.tBand := bcVisa
          else if aPagto[I].bandeira_cartao = 'M' then
            pagto.tBand := bcMasterCard
          else if aPagto[I].bandeira_cartao = 'A' then
            pagto.tBand := bcAmericanExpress
          else if aPagto[I].bandeira_cartao = 'S' then
            pagto.tBand := bcSorocred
          else if aPagto[I].bandeira_cartao = 'D' then
            pagto.tBand := bcDinersClub
          else if aPagto[I].bandeira_cartao = 'E' then
            pagto.tBand := bcElo
          else if aPagto[I].bandeira_cartao = 'H' then
            pagto.tBand := bcHipercard
          else if aPagto[I].bandeira_cartao = 'R' then
            pagto.tBand := bcAura
          else if aPagto[I].bandeira_cartao = 'C' then
            pagto.tBand := bcCabal
          else if aPagto[I].bandeira_cartao = 'O' then
            pagto.tBand := bcOutros;
        end;
      end;

      infAdic.infCpl := infAdicCFe;
      infAdic.infAdFisco := '';

      if Assigned(frmPDVFechamento) then
      begin
        if frmPDVFechamento.TransacaoComTef then
          InfAdic.infCpl:= InfAdic.infCpl + #10 + #10 + #10 + frmPDVFechamento.MemoCupomTEF.Text;
      end
      else if Assigned(frmControleMesaFechamento) then
      begin
        if frmControleMesaFechamento.TransacaoComTef then
          InfAdic.infCpl:= InfAdic.infCpl + #10 + #10 + #10 + frmControleMesaFechamento.MemoCupomTEF.Text;
      end
      else if Assigned(frmControleDeliveryFinaliza) then
      begin
        if frmControleDeliveryFechamento.TransacaoComTef then
          InfAdic.infCpl:= InfAdic.infCpl + #10 + #10 + #10 + frmControleDeliveryFinaliza.MemoCupomTEF.Text;
      end;
    end;

    FACBrNFe.DANFE.ImprimeEmUmaLinha     := true;
//    FACBrNFe.DANFE.TributosSeparadamente := false;

//    FACBrNFe.DANFE.vTroco   := self.totalTroco;
    FACBrNFe.DANFE.vTribEst := self.vTribEst;
    FACBrNFe.DANFE.vTribFed := self.vTribFed;
    FACBrNFe.DANFE.vTribMun := self.vTribMun;

    FACBrNFe.NotasFiscais.GerarNFe;
    if em_contingencia then
    begin
      FACBrNFe.NotasFiscais.Assinar;
      FACBrNFe.NotasFiscais.Validar;
      try //erros de impressão não podem invalidar nfce
        for I := 1 to FACBrNFe.numero_vias_impressao do
          FACBrNFe.NotasFiscais.Imprimir;
      except end;
    end
    else
    begin
      FACBrNFe.Enviar('1',false,true);  //numero do lote,  imprimir, sincrono

      try //erros de impressão não podem invalidar nfce
        for I := 1 to FACBrNFe.numero_vias_impressao do
          FACBrNFe.NotasFiscais.Imprimir;
      except end;
    end;

    XMl := FACBrNFe.NotasFiscais[0].GerarXML;
    chave:= Copy(FACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
    result := true;
  finally
    Mensagem := 'Motivo: ' + FACBrNFe.WebServices.Retorno.xMsg + LineBreak +
                'Mensagem: ' + FACBrNFe.WebServices.Retorno.xMsg +
                '('+ IntToStr(FACBrNFe.WebServices.Retorno.cMsg)+')' +LineBreak +
                'Protocolo: '+ FACBrNFe.WebServices.Retorno.Protocolo;
    codigoRetorno := FACBrNFe.WebServices.Retorno.cStat;
    FACBrNFe.NotasFiscais.Clear;

    // Bruno - 23-07-2018
    FreeAndNil(qrAux1);

    // Bruno - 02-08-2018
    if Assigned(frmPDVFechamento) then
      frmPDVFechamento.MemoCupomTEF.Visible := false
    else if Assigned(frmControleMesaFechamento) then
      frmControleMesaFechamento.MemoCupomTEF.Visible := false
    else if Assigned(frmControleDeliveryFinaliza) then
      frmControleDeliveryFinaliza.MemoCupomTEF.Visible := false;
  end;
end;

function AutorizarNFCe.addLocalEntrega(const logradouro, numero, complemento,
  bairro, municipio, estado, cod_municipio: String): Boolean;
begin
  try
    // se não forem informados todos os dados de endereço, o SAT invalida...
    if Empty(logradouro) or Empty(numero) // or Empty(complemento)
      or Empty(bairro) or Empty(municipio) or Empty(estado) then
    begin
      self.logradouro := '';
      self.numero := '';
      self.complemento := '';
      self.bairro := '';
      self.municipio := '';
      self.estado := '';
      self.cod_municipio := '';
    end
    else
    begin
      self.logradouro := logradouro;
      self.numero := numero;
      self.complemento := complemento;
      self.bairro := bairro;
      self.municipio := municipio;
      self.estado := estado;
      self.cod_municipio := cod_municipio;
    end;
    if Empty(self.estado) then self.estado := emit_uf;

    Result := True;
  except
    Result := False;
  end;
end;

function GerarNFCe.Autorizar(const id_venda: Integer;
  const id_empresa: Integer; const em_contingencia : boolean): Boolean;
var
  autNFCe: AutorizarNFCe;
  qrCons, qrProdutos, qrPagtos, qrCReceber: TUniQuery;
  XML, serieEquip, Chave, ls_ICMS, ls_PIS, ls_COFINS, ls_MsgAdic,
    ls_MsgAdic_cReceber: string;
  numNFCe: Integer;
  lr_TotalLei12741, lr_TotalDescto, lr_TotalVenda, lr_TotalAcresc,
    lr_ProdDescto, lr_ProdAcresc, lr_ProdLei12741, lr_ICMS_Perc,lr_ICMS_vBC, lr_ICMS_Valor, lr_redbaseicm,
    lr_ProdSubTotal, lr_PIS_BC, lr_PIS_Perc, lr_PIS_Valor, lr_PIS_QtdeBC,
    lr_PIS_AliqProd, lr_PISST_BC, lr_PISST_Perc, lr_PISST_Valor,
    lr_PISST_QtdeBC, lr_PISST_AliqProd, lr_COFINS_Perc, lr_COFINS_AliqProd,
    lr_COFINS_QtdeBC, lr_COFINS_BC, lr_COFINS_Valor, lr_COFINSST_BC,
    lr_COFINSST_Perc, lr_COFINSST_Valor, lr_COFINSST_QtdeBC,
    lr_COFINSST_AliqProd, lr_VlrEstadual, lr_VlrMunicipal, lr_VlrFederal,
    lr_TotalEstadual, lr_TotalMunicipal, lr_TotalFederal, lr_ProdUnit,
    lr_TotalDesctoCorrecao, lr_TotalAcrescCorrecao: Currency;
    lr_Total_Prod_Descto : Currency;
    lr_Total_Prod_Acresc : Currency;
begin
  try
    self.id_venda := id_venda;
    self.id_empresa := id_empresa;

    ls_MsgAdic := '';

    autNFCe := AutorizarNFCe.Create();

    ObterDadosVenda(qrCons, qrProdutos, qrPagtos, qrCReceber);

    // Dados da Venda
    numNFCe := qrCons.FieldByName('NUMERO_NFCE').AsInteger;
    autNFCe.numero_nfce := numNFCe;
    autNFCe.serie_nfce := qrCons.FieldByName('SERIE_NFCE').AsInteger;
    autNFCe.dest_CNPJCPF := qrCons.FieldByName('CpfCnpjCliente').AsString;
    autNFCe.dest_Nome := qrCons.FieldByName('Cliente').AsString;

    autNFCe.emit_CNPJ := qrCons.FieldByName('CpfCnpjLoja').AsString;
    autNFCe.emit_cod_municip := qrCons.FieldByName('EMIT_CODMUNICIP_IBGE').AsString;

    autNFCe.emit_uf := qrCons.FieldByName('EMIT_UF').AsString;
    autNFCe.emit_InscMun := qrCons.FieldByName('InscMun').AsString;
    autNFCe.emit_InscEst := qrCons.FieldByName('InscEst').AsString;
    autNFCe.emit_RegTrib := qrCons.FieldByName('Regime').AsInteger;
    autNFCe.emit_razao_social := qrCons.FieldByName('Razao_social').AsString;
    autNFCe.emit_fantasia := qrCons.FieldByName('nome_fantasia').AsString;
    autNFCe.emit_fone := qrCons.FieldByName('telefone').AsString;


    autNFCe.emit_cep := qrCons.FieldByName('EMIT_CEP').AsString;
    autNFCe.emit_logradouro := qrCons.FieldByName('EMIT_LOGRADOURO').AsString;
    autNFCe.emit_numero := qrCons.FieldByName('EMIT_END_NUMERO').AsString;
    autNFCe.emit_complemento := qrCons.FieldByName
      ('EMIT_END_COMPLEMENTO').AsString;
    autNFCe.emit_bairro := qrCons.FieldByName('EMIT_BAIRRO').AsString;
    autNFCe.emit_cidade := qrCons.FieldByName('EMIT_CIDADE').AsString;

    autNFCe.addLocalEntrega(qrCons.FieldByName('logradouro').AsString,
      qrCons.FieldByName('numero').AsString, qrCons.FieldByName('complemento')
      .AsString, qrCons.FieldByName('bairro').AsString,
      qrCons.FieldByName('municipio').AsString, qrCons.FieldByName('estado')
      .AsString, qrCons.FieldByName('CODMUNICIP_IBGE').AsString);

    lr_TotalLei12741 := 0;
    // lr_TotalDescto := 0;
    // lr_TotalAcresc := 0;

    lr_TotalDescto := qrCons.FieldByName('Descto').AsFloat;
    lr_TotalAcresc := qrCons.FieldByName('Acresc').AsFloat;
    lr_TotalVenda := qrCons.FieldByName('total_venda').AsFloat;

    lr_TotalEstadual := 0;
    lr_TotalMunicipal := 0;
    lr_TotalFederal := 0;

    // Totais da Venda
    // corrige os acréscimos e descontos pois NFe não aceita desconto e acrescimo simultaneamente
    if (lr_TotalDescto > 0.00) and (lr_TotalAcresc > 0.00) then
    begin
      if lr_TotalDescto >= lr_TotalAcresc then
      begin
        lr_TotalDesctoCorrecao := lr_TotalDescto - lr_TotalAcresc;
        lr_TotalAcrescCorrecao := 0.00;
      end
      else
      begin
        lr_TotalAcrescCorrecao := lr_TotalAcresc - lr_TotalDescto;
        lr_TotalDesctoCorrecao := 0.00;
      end;
      lr_TotalDescto := lr_TotalDesctoCorrecao;
      lr_TotalAcresc := lr_TotalAcrescCorrecao;
    end;

    lr_Total_Prod_Descto := 0;
    lr_Total_Prod_Acresc := 0;

    // Produtos da venda
    while not qrProdutos.eof do
    begin
      lr_ProdUnit := roundto(qrProdutos.FieldByName('Unitario').AsFloat, -2);
      lr_ProdSubTotal := roundto(qrProdutos.FieldByName('Quant').AsFloat *
        lr_ProdUnit, -2);

      //lr_ProdDescto := roundto(qrProdutos.FieldByName('Descto').AsFloat, -2);
      //lr_ProdAcresc := roundto(qrProdutos.FieldByName('Acresc').AsFloat, -2);

      //rateia o desconto da nota para o item proporcional
      if lr_TotalDescto > 0 then
        lr_ProdDescto :=  roundto((lr_ProdSubTotal / lr_TotalVenda) * lr_TotalDescto, -2)
      else
        lr_ProdDescto:=0;

      //rateia o acrescimo da nota para o item proporcional
      if lr_TotalAcresc > 0 then
        lr_ProdAcresc :=  roundto((lr_ProdSubTotal / lr_TotalVenda) * lr_TotalAcresc, -2)
      else
        lr_ProdAcresc :=0;

      //acumula o valor dos descontos e acresimos nos produtos
      lr_Total_Prod_Descto := lr_Total_Prod_Descto + lr_ProdDescto;
      lr_Total_Prod_Acresc := lr_Total_Prod_Acresc + lr_ProdAcresc ;

      lr_VlrEstadual :=
        roundto(lr_ProdSubTotal * (qrProdutos.FieldByName('ALIQESTADUAL')
        .AsFloat / 100), -2);
      lr_VlrMunicipal :=
        roundto(lr_ProdSubTotal * (qrProdutos.FieldByName('ALIQMUNICIPAL')
        .AsFloat / 100), -2);
      lr_VlrFederal :=
        roundto(lr_ProdSubTotal * (qrProdutos.FieldByName('ALIQFEDERAL').AsFloat
        / 100), -2);

      lr_TotalEstadual := lr_TotalEstadual + lr_VlrEstadual;
      lr_TotalMunicipal := lr_TotalMunicipal + lr_VlrMunicipal;
      lr_TotalFederal := lr_TotalFederal + lr_VlrFederal;

      lr_ProdLei12741 := roundto(lr_VlrEstadual + lr_VlrMunicipal +
        lr_VlrFederal, -2);

      lr_TotalLei12741 := lr_TotalLei12741 + lr_ProdLei12741;

      // ICMS
      if qrCons.FieldByName('Regime').AsInteger = 3 then
        ls_ICMS := FormatFloat('00', qrProdutos.FieldByName('ICMS_CST').AsInteger)
      else
        ls_ICMS := qrProdutos.FieldByName('ICMS_CSOSN').AsString;

      lr_ICMS_Perc := roundto(qrProdutos.FieldByName('ICMS_Perc').AsFloat, -2);
      lr_ICMS_vBC  := lr_ProdSubTotal;

      CalcularICMS(ls_ICMS, lr_ICMS_Perc, lr_ProdSubTotal,
                   roundto(qrProdutos.FieldByName('RedBc').AsCurrency, -2), lr_ICMS_vBC, lr_ICMS_Valor);

      lr_redbaseicm := 0;
      lr_redbaseicm := roundto(qrProdutos.FieldByName('RedBc').AsCurrency, -2);

      // PIS
      ls_PIS := FormatFloat('00', qrProdutos.FieldByName('PIS_CST').AsInteger);
      lr_PIS_Perc := roundto(qrProdutos.FieldByName('PIS_Perc').AsCurrency, -2);
      lr_PIS_AliqProd := roundto(0, -2);
      lr_PIS_QtdeBC := roundto(0, -2);
      CalcularPIS(ls_PIS, lr_PIS_Perc, lr_ProdSubTotal, lr_PIS_BC,
        lr_PIS_Valor);

      // PISST
      lr_PISST_BC := roundto(0, -2);
      lr_PISST_Perc := roundto(0, -2);
      lr_PISST_Valor := roundto(0, -2);
      lr_PISST_QtdeBC := roundto(0, -2);
      lr_PISST_AliqProd := roundto(0, -2);

      // COFINS
      ls_COFINS := FormatFloat('00', qrProdutos.FieldByName('COFINS_CST')
        .AsInteger);
      lr_COFINS_Perc := roundto(qrProdutos.FieldByName('COFINS_Perc')
        .AsFloat, -2);
      lr_COFINS_AliqProd := roundto(0, -2);
      lr_COFINS_QtdeBC := roundto(0, -2);
      //Showmessage(' Percentual ' + FloatToString(lr_COFINS_Perc));
      //Showmessage(' Valor do Produto ' + FloatToString(lr_ProdSubTotal));
      CalcularCOFINS(ls_PIS, lr_COFINS_Perc, lr_ProdSubTotal, lr_COFINS_BC,
        lr_COFINS_Valor);
      //Showmessage(FloatToString(lr_COFINS_Valor));

      // COFINS ST
      lr_COFINSST_BC := roundto(0, -2);
      lr_COFINSST_Perc := roundto(0, -2);
      lr_COFINSST_Valor := roundto(0, -2);
      lr_COFINSST_QtdeBC := roundto(0, -2);
      lr_COFINSST_AliqProd := roundto(0, -2);

      autNFCe.addProduto(qrProdutos.FieldByName('codigo').AsString,
        qrProdutos.FieldByName('EAN').AsString,
        qrProdutos.FieldByName('descricao').AsString,
        qrProdutos.FieldByName('NCM').AsString,
        qrProdutos.FieldByName('CEST').AsString,
        qrProdutos.FieldByName('CFOP').AsString,
        qrProdutos.FieldByName('Unidade').AsString,
        qrProdutos.FieldByName('Quant').AsCurrency, lr_ProdUnit,
        qrProdutos.FieldByName('ArrendTrunc').AsString, lr_ProdDescto,
        lr_ProdAcresc, lr_ProdLei12741, qrProdutos.FieldByName('InfAdic')
        .AsString, qrProdutos.FieldByName('ICMS_Origem').AsString, ls_ICMS,
        lr_ICMS_Perc,  lr_ICMS_vBC ,lr_ICMS_Valor, lr_redbaseicm, ls_PIS, lr_PIS_BC, lr_PIS_Perc,
        lr_PIS_Valor, lr_PIS_QtdeBC, lr_PIS_AliqProd, lr_PISST_BC,
        lr_PISST_Perc, lr_PISST_Valor, lr_PISST_QtdeBC, lr_PISST_AliqProd,
        ls_COFINS, lr_COFINS_BC, lr_COFINS_Perc, lr_COFINS_Valor,
        lr_COFINS_QtdeBC,lr_COFINS_BC, lr_COFINS_AliqProd, lr_COFINSST_BC,
        lr_COFINSST_Perc, lr_COFINSST_Valor, lr_COFINSST_QtdeBC,
        lr_COFINSST_AliqProd, lr_ProdSubTotal );
    {
        (const codigo, EAN, descricao, NCM, CEST, CFOP,
  unidade: String; const quantidade, unitario: Currency;
  const arredTrunc: String; const descto, outros, vTrib12741: Currency;
  const infAdic, ICMS_Origem, ICMS_CSTCSOSN: String;
  const ICMS_Perc, ICMS_vBC ,ICMS_Valor: Currency; const PIS_CST: String;
  const PIS_vBC, PIS_Perc, PIS_Valor, PIS_qBC, PIS_vAliqProd, PISST_vBC,
  PISST_Perc, PISST_Valor, PISST_qBC, PISST_vAliqProd: Currency;
  const COFINS_CST: String; const COFINS_vBC, COFINS_Perc, COFINS_Valor,
  COFINS_qBC, COFINS_vBCProd, COFINS_vAliqProd, COFINSST_vBC, COFINSST_Perc,
  COFINSST_Valor, COFINSST_qBC, COFINSST_vAliqProd: Currency;
  const valor_total_item : currency)
    }

      qrProdutos.Next;
    end;

    //aplica a correção de desconto e acrescimo no primeiro item
    lr_TotalAcrescCorrecao := roundto(lr_TotalAcresc - lr_Total_Prod_Acresc, -2);
    lr_TotalDesctoCorrecao := roundto(lr_TotalDescto - lr_Total_Prod_Descto, -2);
    autNFCe.aProdutos[0].descto := autNFCe.aProdutos[0].descto + lr_TotalDesctoCorrecao;
    autNFCe.aProdutos[0].outros := autNFCe.aProdutos[0].outros + lr_TotalAcrescCorrecao;

    //adiciona os totais
    autNFCe.addTotais(lr_TotalDescto, lr_TotalAcresc, lr_TotalLei12741,
                      lr_TotalVenda, lr_TotalEstadual, lr_TotalFederal,
                      lr_TotalMunicipal);

    if qrCReceber.RecordCount > 0 then
    begin
      ls_MsgAdic_cReceber := 'Documento    Vencimento    Valor;';
      while not qrCReceber.eof do
      begin
        ls_MsgAdic_cReceber := ls_MsgAdic_cReceber + format('%s%sR$ %.2f;',
          [AcertaTexto(qrCReceber.FieldByName('documento').AsString, 'E', 16,
          '.'), AcertaTexto(FormatDateTime('dd/mm/yyyy',
          qrCReceber.FieldByName('data_vencimento').AsDateTime), 'E', 16, '.'),
          qrCReceber.FieldByName('valor').AsFloat]);
        qrCReceber.Next;
      end;
      ls_MsgAdic_cReceber := ls_MsgAdic_cReceber + ' ;';
    end
    else
      ls_MsgAdic_cReceber := '';

    // Mensagem adicional
    ls_MsgAdic := //'Tributos Incidentes Lei Federal 12.741/12 - Total R$ ' + format('%.2f', [lr_TotalLei12741]) +
                  ' Federal R$ ' + format('%.2f', [lr_TotalFederal]) +
                  ' ;Estadual R$ ' + format('%.2f', [lr_TotalEstadual]) +
                  ' ;Municipal R$ ' + format('%.2f', [lr_TotalMunicipal]) ;


    autNFCe.numeroCaixa := qrCons.FieldByName('numCaixa').AsInteger;
    autNFCe.ambiente := qrCons.FieldByName('Ambiente').AsString;
    autNFCe.infAdicCFe := ls_MsgAdic_cReceber + ls_MsgAdic;

    // Formas de pagamento
    autNFCe.totalTroco := 0;
    while not qrPagtos.eof do
    begin
      autNFCe.addFormasPagto(qrPagtos.FieldByName('formaPagto').AsInteger,
        qrPagtos.FieldByName('Valor').AsCurrency,
        qrPagtos.FieldByName('admCartao').AsInteger,
        qrPagtos.FieldByName('cnpjcred').AsString,
        qrPagtos.FieldByName('bandeira_cartao').AsString,
        qrPagtos.FieldByName('autorizacao').AsString,
        qrPagtos.FieldByName('tipo_integracao').AsInteger);

      autNFCe.totalTroco := autNFCe.totalTroco + qrPagtos.FieldByName('troco').AsCurrency;
      qrPagtos.Next;
    end;

    // Transmite os dados para a sefaz
    if autNFCe.transmitir( self.codigoRet, self.Mensagem, Chave , XML, em_contingencia) then
    begin
      AtualizarSituacaoNFCe(Chave, '', serieEquip, numNFCe, Date + time, em_contingencia);
      AtualizarDadosVendaNFCe(XML, qrCons, qrProdutos, qrPagtos);
      Result := True;
    end
    else
    begin
      Result := False;
    end;
  finally
    autNFCe.Free;
    qrCons.Free;
    qrProdutos.Free;
    qrPagtos.Free;
  end;
end;

function AutorizarNFCe.addFormasPagto(const formaPagto: Integer;
  const valor: Currency; const admCartao: Integer; const cnpjcred: string; const bandeira_cartao: string; const autorizacao: string;
  const tipo_integracao: integer): Boolean;
var
  iLen: Integer;
begin
  try
    iLen := Length(aPagto);
    SetLength(aPagto, iLen + 1);

    aPagto[iLen].formaPagto := formaPagto;
    aPagto[iLen].valor := valor;
    aPagto[iLen].admCartao := admCartao;
    aPagto[iLen].cnpjcred := cnpjcred;
    aPagto[iLen].bandeira_cartao := bandeira_cartao;
    aPagto[iLen].autorizacao := autorizacao;
    aPagto[iLen].tipo_integracao := tipo_integracao;

    Result := True;
  except
    Result := False;
  end;
end;

function AutorizarNFCe.addProduto(const codigo, EAN, descricao, NCM, CEST, CFOP,
  unidade: String; const quantidade, unitario: Currency;
  const arredTrunc: String; const descto, outros, vTrib12741: Currency;
  const infAdic, ICMS_Origem, ICMS_CSTCSOSN: String;
  const ICMS_Perc, ICMS_vBC ,ICMS_Valor: Currency; const ICMS_pRedBC: Currency; const PIS_CST: String;
  const PIS_vBC, PIS_Perc, PIS_Valor, PIS_qBC, PIS_vAliqProd, PISST_vBC,
  PISST_Perc, PISST_Valor, PISST_qBC, PISST_vAliqProd: Currency;
  const COFINS_CST: String; const COFINS_vBC, COFINS_Perc, COFINS_Valor,
  COFINS_qBC, COFINS_vBCProd, COFINS_vAliqProd, COFINSST_vBC, COFINSST_Perc,
  COFINSST_Valor, COFINSST_qBC, COFINSST_vAliqProd: Currency;
  const valor_total_item : currency): Boolean;
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
    aProdutos[iLen].ICMS_vBC := ICMS_vBC;
    aProdutos[iLen].ICMS_Perc := ICMS_Perc;
    aProdutos[iLen].ICMS_Valor := ICMS_Valor;
    aProdutos[iLen].ICMS_pRedBC := ICMS_pRedBC;
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
    aProdutos[iLen].total_item := valor_total_item;

    Result := True;
  except
    Result := False;
  end;
end;

constructor AutorizarNFCe.Create();
begin
  FACBrNFe := TNFCe.create();
end;

destructor AutorizarNFCe.destroy();
begin
  FACBrNFe.Free;
end;



function AutorizarNFCe.addTotais(const descSubtotal, acrescSubtotal, vLei12741,
  totalVenda, TotalEstadual, TotalFederal, TotalMunicipal : Currency): Boolean;
begin
  try
    self.descSubtotal := descSubtotal;
    self.acrescSubtotal := acrescSubtotal;
    self.vLei12741 := vLei12741;
    self.totalVenda := totalVenda;
    self.totalNota := totalVenda + acrescSubtotal - descSubtotal;
    self.vTribEst := TotalEstadual;
    self.vTribFed := TotalFederal;
    self.vTribMun := TotalMunicipal;

    Result := True;
  except
    Result := False;
  end;
end;

end.
