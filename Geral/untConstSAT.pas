unit untConstSAT;

interface

uses
  System.SysUtils, IniFiles, Forms, ACBrSATClass;

{******************************************************************************
   NESSA UNIT DEVERÃO CONSTAR APENAS CONSTANTES OU VARIÁVEIS QUE NÃO DEVERÃO
   SER ALTERADAS EM MOMENTO ALGUM QUE NÃO SEJA NO initialization NESSA UNIT
*******************************************************************************}


Var
   PATH_EXE: String;
   PATH_LOG: String;
   PATH_CFE_VENDA: String;
   PATH_CFE_CANC: String;
   PATH_LOG_ACBR: String;
   NOME_ARQ_INI: String;

   CNPJ_SOFTHOUSE: String;

   NOME_DLL: String;

   TIPOINTERFACE: Integer;
   SSID: String;
   SEG: Integer;
   CODIGO: String;
   TIPOLAN: Integer;
   LANIP: String;
   LANMASK: String;
   LANGW: String;
   LANDNS1: String;
   LANDNS2: String;
   USUARIO: String;
   SENHA: String;
   PROXY: Integer;
   PROXY_IP: String;
   PROXY_PORTA: Integer;
   PROXY_USER: String;
   PROXY_SENHA: String;
   VERSAO_LAYOUT : Real;

   CODIGO_ATIVACAO_SAT: String;
   ASSINATURA_AC_SAT: String;
   NUM_SERIE_EQUIP: String;
   MODELO_SAT : TACBrSATModelo;
   MFE_INTEGRADOR_INPUT : String;
   MFE_INTEGRADOR_OUTPUT : String;
   MFE_TIMEOUT : integer;

procedure lerDadosConfig;
function criarDiretoriosBase(): Boolean;

implementation

uses  uFuncoes;

procedure lerDadosConfig;
begin
  if Not FileExists(NOME_ARQ_INI) then
  begin
    application.messageBox('Arquivo de configuração não encontrado!', 'Atenção', 48);
    exit;
  end;

  // Obter dados do arquivo xml de configuração
  CNPJ_SOFTHOUSE := LerStringConfig('EDSWHCNPJ', NOME_ARQ_INI);
  NOME_DLL := LerStringConfig('EDCAMINHODLLSAT', NOME_ARQ_INI);

  TIPOINTERFACE   := LerIntegerConfig('RGSATREDETIPOINTER',NOME_ARQ_INI);
  TIPOLAN         := LerIntegerConfig('RGSATREDETIPOLAN',NOME_ARQ_INI);
  SSID            := LerStringConfig('EDSATREDESSID',NOME_ARQ_INI);
  SEG             := LerIntegerConfig('CBSATREDESEG',NOME_ARQ_INI);
  CODIGO          := LerStringConfig('EDSATREDECODIGO',NOME_ARQ_INI);
  LANIP           := LerStringConfig('EDSATREDEIP',NOME_ARQ_INI);
  LANMASK         := LerStringConfig('EDSATREDEMASK',NOME_ARQ_INI);
  LANGW           := LerStringConfig('EDSATREDEGW',NOME_ARQ_INI);
  LANDNS1         := LerStringConfig('EDSATREDEDNS1',NOME_ARQ_INI);
  LANDNS2         := LerStringConfig('EDSATREDEDNS2',NOME_ARQ_INI);
  USUARIO         := LerStringConfig('EDSATREDEUSUARIO',NOME_ARQ_INI);
  SENHA           := LerStringConfig('EDSATREDESENHA',NOME_ARQ_INI);
  PROXY           := LerIntegerConfig('CBSATREDEPROXY',NOME_ARQ_INI);
  PROXY_IP        := LerStringConfig('EDSATREDEPROXYIP',NOME_ARQ_INI);
  PROXY_PORTA     := LerIntegerConfig('EDSATREDEPROXYPORTA',NOME_ARQ_INI);
  PROXY_USER      := LerStringConfig('EDSATREDEPROXYUSER',NOME_ARQ_INI);
  PROXY_SENHA     := LerStringConfig('EDSATREDEPROXYSENHA',NOME_ARQ_INI);
  VERSAO_LAYOUT   := 0.07;//LerStringConfig('EDSATVERSAOLAYOUT',NOME_ARQ_INI);

  CODIGO_ATIVACAO_SAT := LerStringConfig('EDSATCODATIVACAO',NOME_ARQ_INI);
  ASSINATURA_AC_SAT   := LerStringConfig('EDASSSWH',NOME_ARQ_INI);

  if LerIntegerConfig('RGTIPOSISSAT', NOME_ARQ_INI, 0)=1 then  //mfe
  begin
    MODELO_SAT := mfe_Integrador_XML;
    PATH_CFE_VENDA  := PATH_EXE + 'MFE\MFEVenda';
    PATH_CFE_CANC   := PATH_EXE + 'MFE\MFECancelamento';
    PATH_LOG        := PATH_EXE + 'Log\MFE';
  end
  else //sat
  begin
    MODELO_SAT := satDinamico_stdcall;
    PATH_CFE_VENDA  := PATH_EXE + 'CFeVenda';
    PATH_CFE_CANC   := PATH_EXE + 'CFeCanc';
    PATH_LOG        := PATH_EXE + 'Log\SAT';
  end;

  MFE_INTEGRADOR_INPUT := lerStringConfig('EDMFEINPUT', NOME_ARQ_INI,'c:\Integrador\Input\');
  MFE_INTEGRADOR_OUTPUT := lerStringConfig('EDMFEOUTPUT', NOME_ARQ_INI, 'c:\Integrador\Output\');
  MFE_TIMEOUT := LerIntegerConfig('EDMFETIMEOUT',NOME_ARQ_INI, 30);

  criarDiretoriosBase();
end;

function criarDiretoriosBase(): Boolean;
begin
   Result := False;

   try
      criarDiretorio(PATH_LOG);

      criarDiretorio(PATH_CFE_VENDA);
      criarDiretorio(PATH_CFE_CANC);

      criarDiretorio(PATH_LOG_ACBR);

      Result := True;
   except
      On E: Exception do begin
        application.messageBox(pchar(E.Message), 'Atenção', 48);
      end;
   end;
   PATH_LOG       := FormatarCaminhoDir(PATH_LOG);
   PATH_CFE_VENDA := FormatarCaminhoDir(PATH_CFE_VENDA);
   PATH_CFE_CANC  := FormatarCaminhoDir(PATH_CFE_CANC);
   PATH_LOG_ACBR  := FormatarCaminhoDir(PATH_LOG_ACBR);
end;

initialization
   NUM_SERIE_EQUIP := '';
   
   PATH_EXE        := ExtractFilePath(ParamStr(0));
   PATH_LOG_ACBR   := PATH_EXE + 'Log\LogAcbr';

   NOME_ARQ_INI    := PATH_EXE + 'CONF\CONFIGURACAO.XML';

   lerDadosConfig();


end.

