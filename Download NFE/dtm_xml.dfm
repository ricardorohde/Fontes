object dtmxml: Tdtmxml
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 371
  Width = 507
  object ACBrNFe: TACBrNFe
    MAIL = ACBrMail1
    Configuracoes.Geral.SSLLib = libCustom
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsMsXml
    Configuracoes.Geral.ExibirErroSchema = False
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.PathSalvar = '.\Salvar\'
    Configuracoes.Arquivos.PathSchemas = '.\Schemas\'
    Configuracoes.Arquivos.IniServicos = 'UrlsTXT.txt'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.SepararPorMes = True
    Configuracoes.Arquivos.EmissaoPathNFe = True
    Configuracoes.Arquivos.SalvarEvento = True
    Configuracoes.Arquivos.PathNFe = '.\NFe'
    Configuracoes.Arquivos.PathInu = '.\Inu'
    Configuracoes.Arquivos.PathEvento = '.\Eventos'
    Configuracoes.WebServices.UF = 'ES'
    Configuracoes.WebServices.Ambiente = taProducao
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = ACBrNFeDANFeRL1
    Left = 304
    Top = 72
  end
  object ACBrNFeDANFeRL1: TACBrNFeDANFeRL
    PathPDF = '.\PDFs\'
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 0.700000000000000000
    MargemSuperior = 0.700000000000000000
    MargemEsquerda = 0.700000000000000000
    MargemDireita = 0.700000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrNFe = ACBrNFe
    ExibeCampoFatura = False
    Left = 312
    Top = 136
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = UTF_8
    Left = 304
    Top = 264
  end
  object qXmlCfg: TFDQuery
    Connection = Conn
    SQL.Strings = (
      'select * from xmlcfg')
    Left = 121
    Top = 58
  end
  object qXmlRes: TFDQuery
    Connection = Conn
    SQL.Strings = (
      'select * from xmlnfe')
    Left = 120
    Top = 116
  end
  object find: TFDQuery
    Connection = Conn
    Left = 116
    Top = 288
  end
  object qXmlDfe: TFDQuery
    Connection = Conn
    Left = 118
    Top = 174
  end
  object qXmlNfe: TFDQuery
    Connection = Conn
    Left = 116
    Top = 230
  end
  object AutoExec: TTimer
    Enabled = False
    OnTimer = AutoExecTimer
    Left = 428
    Top = 130
  end
  object Conn: TFDConnection
    Params.Strings = (
      
        'Database=D:\Delphi Projects Demos\ACBr Download XML Delphi\Datab' +
        'ase\acbrxml.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 66
    Top = 56
  end
  object pXmlCfg: TDataSetProvider
    DataSet = qXmlCfg
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    OnUpdateData = pXmlCfgUpdateData
    Left = 162
    Top = 58
  end
  object XmlCfg: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'pXmlCfg'
    AfterOpen = XmlCfgAfterOpen
    AfterPost = XmlCfgAfterPost
    Left = 202
    Top = 60
  end
  object pXmlRes: TDataSetProvider
    DataSet = qXmlRes
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    OnUpdateData = pXmlResUpdateData
    Left = 160
    Top = 114
  end
  object XmlRes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pXmlRes'
    Left = 198
    Top = 116
  end
  object pXmlDfe: TDataSetProvider
    DataSet = qXmlDfe
    Options = [poReadOnly, poAllowCommandText, poUseQuoteChar]
    Left = 158
    Top = 174
  end
  object XmlDfe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pXmlDfe'
    Left = 196
    Top = 174
  end
  object pXmlNfe: TDataSetProvider
    DataSet = qXmlNfe
    Options = [poReadOnly, poAllowCommandText, poUseQuoteChar]
    Left = 158
    Top = 230
  end
  object XmlNfe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pXmlNfe'
    Left = 196
    Top = 230
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 64
    Top = 108
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 64
    Top = 162
  end
end
