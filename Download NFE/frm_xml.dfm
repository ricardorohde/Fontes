object frmxml: Tfrmxml
  Left = 393
  Top = 163
  BorderStyle = bsSingle
  BorderWidth = 1
  Caption = 'Donwload do XML diretamente pelo Sefaz'
  ClientHeight = 739
  ClientWidth = 1018
  Color = 14671839
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelTitle: TPanel
    Left = 0
    Top = 0
    Width = 1018
    Height = 94
    Align = alTop
    BevelOuter = bvNone
    Color = 14671839
    ParentBackground = False
    TabOrder = 0
    OnMouseDown = PanelTitleMouseDown
    OnMouseMove = PanelTitleMouseMove
    OnMouseUp = PanelTitleMouseUp
    object Image2: TImage
      Left = 4
      Top = -4
      Width = 439
      Height = 92
    end
  end
  object StatusShow: TStatusBar
    Left = 0
    Top = 716
    Width = 1018
    Height = 23
    Panels = <
      item
        Alignment = taCenter
        Text = 'Certificado :'
        Width = 75
      end
      item
        Alignment = taCenter
        Style = psOwnerDraw
        Width = 30
      end
      item
        Text = 'Empresa :'
        Width = 60
      end
      item
        Width = 350
      end
      item
        Text = 'CNPJ :'
        Width = 50
      end
      item
        Width = 150
      end
      item
        Text = 'Validade :'
        Width = 60
      end
      item
        Width = 100
      end>
    SizeGrip = False
    OnClick = StatusShowClick
  end
  object Notebook1: TPageControl
    Left = 0
    Top = 94
    Width = 1018
    Height = 514
    ActivePage = Configurações
    Align = alClient
    TabOrder = 2
    object Configurações: TTabSheet
      Caption = 'Configura'#231#245'es'
      OnShow = ConfiguraçõesShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label3: TLabel
        Left = 128
        Top = 37
        Width = 59
        Height = 13
        Caption = #218'ltimo NSU :'
        Color = 16119285
        ParentColor = False
      end
      object Label4: TLabel
        Left = 97
        Top = 68
        Width = 90
        Height = 13
        Caption = 'UF do Certificado :'
        Color = 16119285
        ParentColor = False
      end
      object Label5: TLabel
        Left = 43
        Top = 128
        Width = 144
        Height = 13
        Caption = 'N'#250'mero de S'#233'rie (CAPICOM) :'
        Color = 16119285
        ParentColor = False
      end
      object Label6: TLabel
        Left = 68
        Top = 158
        Width = 119
        Height = 13
        Caption = 'Arquivo PFX (OpenSSL) :'
        Color = 16119285
        ParentColor = False
      end
      object Label7: TLabel
        Left = 150
        Top = 187
        Width = 37
        Height = 13
        Caption = 'Senha :'
        Color = 16119285
        ParentColor = False
      end
      object Label9: TLabel
        Left = 22
        Top = 97
        Width = 165
        Height = 13
        Caption = 'Usar (01) Capicom/(02) OpenSSL :'
        Color = 16119285
        ParentColor = False
      end
      object Label10: TLabel
        Left = 14
        Top = 239
        Width = 173
        Height = 13
        Caption = 'Tempo p/ Auto Execu'#231#227'o Processo :'
        Color = 16119285
        ParentColor = False
      end
      object Label13: TLabel
        Left = 184
        Top = 260
        Width = 518
        Height = 32
        AutoSize = False
        Caption = 
          'N'#227'o defina intervalo de minutos curtos, isso poder'#227'o ocasionar l' +
          'entid'#227'o no computador, use o bom senso, aconselho o tempo ser ma' +
          'ior que 30 minutos.'
        Color = 16119285
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object Label8: TLabel
        Left = 96
        Top = 7
        Width = 91
        Height = 13
        Caption = #218'ltimo AutoInc ID :'
        Color = 16119285
        ParentColor = False
      end
      object edtultNSU: TDBEdit
        Left = 192
        Top = 34
        Width = 100
        Height = 21
        DataField = 'ultNSU'
        DataSource = dscfg
        TabOrder = 0
      end
      object edtNumeroSerie: TDBEdit
        Left = 192
        Top = 124
        Width = 484
        Height = 21
        DataField = 'NumeroSerie'
        DataSource = dscfg
        TabOrder = 1
      end
      object btnCertificado: TButton
        Left = 670
        Top = 123
        Width = 32
        Height = 23
        Caption = '. . .'
        TabOrder = 2
        OnClick = btnCertificadoClick
      end
      object edtArquivoPFX: TDBEdit
        Left = 192
        Top = 154
        Width = 484
        Height = 21
        DataField = 'ArquivoPFX'
        DataSource = dscfg
        Enabled = False
        TabOrder = 3
      end
      object btnArquivoPFX: TButton
        Left = 670
        Top = 153
        Width = 32
        Height = 23
        Caption = '. . .'
        Enabled = False
        TabOrder = 4
        OnClick = btnArquivoPFXClick
      end
      object edtUF: TDBComboBox
        Left = 192
        Top = 65
        Width = 55
        Height = 21
        Style = csDropDownList
        DataField = 'UF'
        DataSource = dscfg
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PB'
          'PE'
          'PI'
          'PR'
          'RJ'
          'RN'
          'RO'
          'RR'
          'RS'
          'SC'
          'SE'
          'SP'
          'TO')
        TabOrder = 5
      end
      object edtSenha: TDBEdit
        Left = 192
        Top = 184
        Width = 250
        Height = 21
        DataField = 'Senha'
        DataSource = dscfg
        TabOrder = 6
      end
      object btnPost: TBitBtn
        Left = 450
        Top = 306
        Width = 252
        Height = 30
        Caption = 'Salvar Altar'#231#245'es'
        TabOrder = 7
        OnClick = btnPostClick
      end
      object edtSSLLib: TDBComboBox
        Left = 192
        Top = 94
        Width = 55
        Height = 21
        Style = csDropDownList
        DataField = 'SSLLib'
        DataSource = dscfg
        Items.Strings = (
          '01'
          '02')
        TabOrder = 8
        OnChange = edtSSLLibChange
      end
      object edtAutoExecute: TDBCheckBox
        Left = 192
        Top = 209
        Width = 250
        Height = 23
        BiDiMode = bdLeftToRight
        Caption = 'Automatizar o processo de Consulta no SEFAZ'
        DataField = 'AutoExecute'
        DataSource = dscfg
        ParentBiDiMode = False
        TabOrder = 9
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object edtAutoTimer: TDBEdit
        Left = 192
        Top = 236
        Width = 80
        Height = 21
        DataField = 'AutoTimer'
        DataSource = dscfg
        Enabled = False
        TabOrder = 10
      end
      object edtidDFeAutoInc: TDBEdit
        Left = 192
        Top = 4
        Width = 100
        Height = 21
        DataField = 'idDFeAutoInc'
        DataSource = dscfg
        TabOrder = 11
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Listagem de notas n'#227'o baixadas'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1010
        Height = 41
        Align = alTop
        ParentBackground = False
        TabOrder = 0
        object BtnConsulta: TBitBtn
          Left = 16
          Top = 10
          Width = 153
          Height = 25
          Caption = 'Consultar Sefaz'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000040000000A000000100000001300000015000000140000
            00110000000C0000000500000001000000000000000000000000000000000000
            00030000000C070404263F271F836E4235CA7A4839DE915644FF774436DE693C
            30CE3A2019870704032B00000010000000040000000000000000000000030000
            0011442C2486976253F5BE998EFFD9C5BEFFE0CFCAFFEFE6E3FFDDCAC4FFD3BC
            B5FFB48B7FFF895140F540231B92000000180000000500000001010204145536
            2D9CC5A398FFF2E9E7FFF5EFEDFFBCAEA8FF71574CFF593A2DFF755B4EFFBEAE
            A7FFEBE2DEFFE5D8D3FFB79085FF4E2A21A90101021A000000032F23246BB58D
            80FFF9F5F4FFF7F3F2FFC1B3ADFF826555FFB19A85FFC2AC97FFB09783FF7F62
            51FFC0B0A9FFECE3DFFFECE2DFFFA37467FF28191A750000000A5E4F60E1BCB1
            ACFFF6F3F3FFF8F4F3FF7A5E50FFBEA995FF857162FF3F2A22FF746053FFB8A3
            8FFF806658FFEEE5E2FFECE2DFFFB1A29CFF503F50E40000000D182C4D885C63
            72FFB2B0B0FFF1EEEDFF725242FFDDD1B9FF806D5EFF493229FF493228FFCFC0
            A9FF745545FFEBE3E1FFABA6A3FF505566FF142A55AA0000000A05080F21395F
            9DFA697F9AFF626160FF55443CFFB2A894FFE4E0C1FF584135FF847466FFA498
            87FF58483FFF5F5C5CFF4E6586FF2F5191FF050B173C00000004000000031221
            3B685A7FB7FFA6C5E3FF7990ABFF444D59FF3E4248FF2B2A25FF3C4148FF3E48
            56FF627D9EFF789DC9FF3C609FFD0B172E630000000600000000000000000000
            00030F1B3159315593ED6F91C1FF9BB9DCFFB0CDE9FFCBE8FCFFA7C7E6FF87AA
            D3FF5A7EB3FF284B8BF10A152958000000060000000100000000000000000000
            0000000000020204071112223E6F1C3765B0213F76D0274C91FC1E3C74D01933
            62B40F1F3D750204081700000003000000000000000000000000000000000000
            0000000000000000000000000002000000030000000400000005000000050000
            0004000000020000000100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 0
          OnClick = BtnConsultaClick
        end
        object BtnAtualiza: TBitBtn
          Left = 200
          Top = 10
          Width = 145
          Height = 25
          Caption = 'Atualizar Lista'
          TabOrder = 1
          OnClick = BtnAtualizaClick
        end
        object BtnDistribuicao: TBitBtn
          Left = 376
          Top = 10
          Width = 161
          Height = 25
          Caption = 'Distribui'#231#227'o DFe'
          TabOrder = 2
          OnClick = BtnDistribuicaoClick
        end
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 408
        Width = 1010
        Height = 78
        Ctl3D = True
        DataSource = dsres
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'xNumeroNFE'
            Title.Caption = 'N'#250'mero NFe'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dhEmi'
            Title.Caption = 'Emiss'#227'o'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'xNome'
            Title.Caption = 'Emitente'
            Width = 260
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'chNFe'
            Title.Caption = 'Chave'
            Width = 300
            Visible = True
          end>
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 47
        Width = 1007
        Height = 322
        TabOrder = 2
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsres
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            DataBinding.FieldName = 'xNumeroNFE'
            Width = 125
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            DataBinding.FieldName = 'dhEmi'
            Options.Editing = False
          end
          object cxGrid1DBTableView1Column3: TcxGridDBColumn
            DataBinding.FieldName = 'xNome'
          end
          object cxGrid1DBTableView1Column4: TcxGridDBColumn
            DataBinding.FieldName = 'chNFe'
          end
          object cxGrid1DBTableView1Column5: TcxGridDBColumn
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmMenu.ImgList16
            Properties.Items = <
              item
                ImageIndex = 4
                Value = False
              end
              item
                ImageIndex = 5
                Value = True
              end>
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Notas baixadas'
      ImageIndex = 2
      OnEnter = TabSheet3Enter
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        1010
        486)
      object Label2: TLabel
        Left = 8
        Top = 15
        Width = 66
        Height = 13
        Caption = 'N'#250'mero NFe :'
        Color = 16119285
        ParentColor = False
      end
      object Label11: TLabel
        Left = 166
        Top = 15
        Width = 60
        Height = 13
        Caption = 'Data Inicial :'
        Color = 16119285
        ParentColor = False
      end
      object Label12: TLabel
        Left = 347
        Top = 15
        Width = 55
        Height = 13
        Caption = 'Data Final :'
        Color = 16119285
        ParentColor = False
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 53
        Width = 1010
        Height = 433
        Align = alBottom
        DataSource = dtsXml
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'xNumeroNFE'
            Title.Caption = 'N'#250'mero NFe'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dhEmi'
            Title.Caption = 'Emiss'#227'o'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'xNome'
            Title.Caption = 'Emitente'
            Width = 260
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'chNFe'
            Title.Caption = 'Chave'
            Width = 300
            Visible = True
          end>
      end
      object Button6: TButton
        Left = 522
        Top = 9
        Width = 70
        Height = 25
        Caption = 'Pesquisar'
        TabOrder = 1
        OnClick = Button6Click
      end
      object edtNumeroNFe: TSpinEdit
        Left = 80
        Top = 11
        Width = 80
        Height = 22
        Anchors = [akTop, akRight]
        MaxValue = 999999999
        MinValue = 0
        TabOrder = 2
        Value = 0
      end
      object edtDataInicial: TDateTimePicker
        Left = 230
        Top = 11
        Width = 110
        Height = 21
        Date = 42463.419280231480000000
        Time = 42463.419280231480000000
        TabOrder = 3
      end
      object edtDataFinal: TDateTimePicker
        Left = 405
        Top = 11
        Width = 110
        Height = 21
        Date = 42463.419569270830000000
        Time = 42463.419569270830000000
        TabOrder = 4
      end
      object btnView: TButton
        Left = 593
        Top = 8
        Width = 70
        Height = 25
        Caption = 'Visualizar'
        TabOrder = 5
        OnClick = btnViewClick
      end
      object btnPrint: TButton
        Left = 666
        Top = 9
        Width = 70
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 6
        OnClick = btnPrintClick
      end
      object btnDPFs: TButton
        Left = 739
        Top = 9
        Width = 70
        Height = 25
        Caption = 'Gerar PDFs'
        TabOrder = 7
        OnClick = btnDPFsClick
      end
    end
  end
  object ListBoxError: TListBox
    Left = 0
    Top = 608
    Width = 1018
    Height = 108
    Align = alBottom
    ItemHeight = 13
    TabOrder = 3
  end
  object dscfg: TDataSource
    DataSet = dtmxml.XmlCfg
    OnStateChange = dscfgStateChange
    Left = 42
    Top = 348
  end
  object dsres: TDataSource
    AutoEdit = False
    DataSet = dtmxml.XmlDfe
    Left = 108
    Top = 348
  end
  object dtsXml: TDataSource
    AutoEdit = False
    DataSet = dtmxml.XmlNfe
    Left = 172
    Top = 349
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '.pfx '
    Filter = 'Arquivo Certificado A1|*.pfx'
    Left = 74
    Top = 444
  end
  object ImageList1: TImageList
    Left = 380
    Top = 364
  end
end
