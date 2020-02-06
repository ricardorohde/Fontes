object frmControleDelivery: TfrmControleDelivery
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'DISK DELIVERY - SEU NOVO CONCEITO EM DELIVERY'
  ClientHeight = 655
  ClientWidth = 1035
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 16
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 1035
    Height = 655
    Align = alClient
    BevelOuter = bvNone
    Color = 14997705
    TabOrder = 0
    UseDockManager = True
    Version = '2.5.4.1'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -13
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Indent = 0
    ColorTo = 12691076
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    DesignSize = (
      1035
      655)
    FullHeight = 200
    object AdvPanel2: TAdvPanel
      Left = 0
      Top = 0
      Width = 408
      Height = 655
      Align = alLeft
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      Version = '2.5.4.1'
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.Indent = 0
      ColorTo = 12691076
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 200
      object AdvGroupBox1: TAdvGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 549
        Width = 398
        Height = 30
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        BorderColor = clNavy
        TabOrder = 0
        object JvLabel1: TJvLabel
          Left = 3
          Top = 7
          Width = 152
          Height = 16
          Caption = 'CR'#201'DITO DO CLIENTE:    '
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = 14997705
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = [fsBold]
        end
        object DBText12: TDBText
          Left = 143
          Top = 8
          Width = 65
          Height = 17
          DataField = 'credito_cliente'
          DataSource = dsBuscaCliente
        end
      end
      object AdvPanel3: TAdvPanel
        Left = 2
        Top = 292
        Width = 408
        Height = 23
        BevelOuter = bvNone
        Color = clHighlightText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UseDockManager = True
        Version = '2.5.4.1'
        Caption.Color = clHighlight
        Caption.ColorTo = clNone
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clWindowText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Tahoma'
        Caption.Font.Style = []
        Caption.Indent = 0
        DoubleBuffered = True
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        Text = ''
        FullHeight = 200
        object JvLabel2: TJvLabel
          Left = 1
          Top = 4
          Width = 401
          Height = 16
          Caption = 'SELECIONE O CLIENTE E TECLE ENTER PARA INICIAR O DELIVERY'
          Color = clMaroon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = 14997705
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = [fsBold]
        end
      end
      object AdvGroupBox2: TAdvGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 69
        Width = 398
        Height = 219
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        BorderColor = clNavy
        TabOrder = 2
        DesignSize = (
          398
          219)
        object JvLabel4: TJvLabel
          Left = 4
          Top = 9
          Width = 90
          Height = 16
          Caption = 'TELEFONE (F2)'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = 14997705
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = [fsBold]
        end
        object JvLabel5: TJvLabel
          Left = 141
          Top = 9
          Width = 67
          Height = 16
          Caption = 'NOME (F3)'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = 14997705
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = [fsBold]
        end
        object DBText1: TDBText
          Left = 168
          Top = 104
          Width = 65
          Height = 17
        end
        object edFiltroTelefone: TEdit
          Left = 3
          Top = 29
          Width = 132
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 0
          OnKeyDown = edFiltroTelefoneKeyDown
        end
        object cxgrFiltroClientes: TcxGrid
          Left = 3
          Top = 57
          Width = 392
          Height = 159
          Anchors = [akLeft, akTop, akRight, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          LookAndFeel.NativeStyle = True
          object cxGridDBTableView1: TcxGridDBTableView
            OnDblClick = cxGridDBTableView1DblClick
            OnKeyDown = cxGridDBTableView1KeyDown
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsBuscaCliente
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsSelection.CellSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGridDBTableView1nome: TcxGridDBColumn
              Caption = 'Nome'
              DataBinding.FieldName = 'nome'
              Width = 278
            end
            object cxGridDBTableView1telefone1: TcxGridDBColumn
              Caption = 'Telefone'
              DataBinding.FieldName = 'telefone1'
              Width = 110
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object edFiltroNome: TEdit
          Left = 141
          Top = 29
          Width = 254
          Height = 22
          Anchors = [akLeft, akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyDown = edFiltroNomeKeyDown
        end
      end
      object AdvGroupBox3: TAdvGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 323
        Width = 398
        Height = 223
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        BorderColor = clNavy
        TabOrder = 3
        object JvLabel10: TJvLabel
          Left = 7
          Top = 6
          Width = 85
          Height = 18
          Caption = 'ENDERE'#199'O'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = 14997705
          HotTrackFont.Height = -15
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = [fsBold]
        end
        object JvLabel11: TJvLabel
          Left = 7
          Top = 48
          Width = 63
          Height = 18
          Caption = 'BAIRRO'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = 14997705
          HotTrackFont.Height = -15
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = [fsBold]
        end
        object JvLabel12: TJvLabel
          Left = 271
          Top = 88
          Width = 31
          Height = 18
          Caption = 'CEP'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = 14997705
          HotTrackFont.Height = -15
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = [fsBold]
        end
        object JvLabel13: TJvLabel
          Left = 7
          Top = 90
          Width = 60
          Height = 18
          Caption = 'CIDADE'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = 14997705
          HotTrackFont.Height = -15
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = [fsBold]
        end
        object JvLabel14: TJvLabel
          Left = 7
          Top = 174
          Width = 80
          Height = 18
          Caption = 'TELEFONE'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = 14997705
          HotTrackFont.Height = -15
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = [fsBold]
        end
        object DBText2: TDBText
          Left = 7
          Top = 27
          Width = 58
          Height = 18
          AutoSize = True
          DataField = 'endereco'
          DataSource = dsBuscaCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 7
          Top = 69
          Width = 58
          Height = 18
          AutoSize = True
          DataField = 'bairro'
          DataSource = dsBuscaCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object JvLabel6: TJvLabel
          Left = 137
          Top = 174
          Width = 94
          Height = 18
          Caption = 'TELEFONE 2'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = 14997705
          HotTrackFont.Height = -15
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = [fsBold]
        end
        object JvLabel7: TJvLabel
          Left = 271
          Top = 174
          Width = 71
          Height = 18
          Caption = 'CELULAR'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = 14997705
          HotTrackFont.Height = -15
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = [fsBold]
        end
        object DBText4: TDBText
          Left = 7
          Top = 111
          Width = 58
          Height = 18
          AutoSize = True
          DataField = 'cidade'
          DataSource = dsBuscaCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 7
          Top = 196
          Width = 58
          Height = 18
          AutoSize = True
          DataField = 'telefone1'
          DataSource = dsBuscaCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object JvLabel15: TJvLabel
          Left = 271
          Top = 48
          Width = 70
          Height = 18
          Caption = 'N'#218'MERO'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = 14997705
          HotTrackFont.Height = -15
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = [fsBold]
        end
        object DBText6: TDBText
          Left = 271
          Top = 196
          Width = 58
          Height = 18
          AutoSize = True
          DataField = 'celular1'
          DataSource = dsBuscaCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText7: TDBText
          Left = 271
          Top = 70
          Width = 58
          Height = 18
          AutoSize = True
          DataField = 'endereco_numero'
          DataSource = dsBuscaCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText8: TDBText
          Left = 271
          Top = 108
          Width = 58
          Height = 18
          AutoSize = True
          DataField = 'cep'
          DataSource = dsBuscaCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText9: TDBText
          Left = 137
          Top = 196
          Width = 58
          Height = 18
          AutoSize = True
          DataField = 'telefone2'
          DataSource = dsBuscaCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object JvLabel8: TJvLabel
          Left = 7
          Top = 132
          Width = 120
          Height = 18
          Caption = 'COMPLEMENTO'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = 14997705
          HotTrackFont.Height = -15
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = [fsBold]
        end
        object DBText10: TDBText
          Left = 7
          Top = 153
          Width = 66
          Height = 18
          AutoSize = True
          DataField = 'complemento'
          DataSource = dsBuscaCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object grIdentificadorChamada: TAdvGroupBox
        AlignWithMargins = True
        Left = 4
        Top = 582
        Width = 398
        Height = 86
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        BorderColor = clNavy
        TabOrder = 4
        Visible = False
        object lbInfoChamada: TJvLabel
          Left = 92
          Top = 32
          Width = 289
          Height = 57
          Alignment = taCenter
          AutoSize = False
          Caption = 'AGUARDANDO CHAMADA'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          WordWrap = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = 14997705
          HotTrackFont.Height = -21
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = [fsBold]
        end
        object Image1: TImage
          Left = 7
          Top = 8
          Width = 78
          Height = 73
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D494844520000005A
            0000005A080600000038A841020000000467414D410000B18F0BFC6105000000
            097048597300000B1200000B1201D2DD7EFC0000001C74455874536F66747761
            72650041646F62652046697265776F726B7320435336E8BCB28C000045084944
            4154785ECD7D057C9C55FA75B0BAE1B2B8DB622DC5D617F958FE2CCB1A7F165D
            165B28508A5317EA2EB4A5AE69DA24B5349EA671B7896792CC4C64E2DEB89CEF
            9C3B1928DD5961EDFBCAEFF9BD9337EFBCF3DE73CF3DCF79EEBD13BC00FCFF14
            43BABBBBC77575755DD7D1D1F1547B7BFBD4D6D6D6256D6D6D750CB4B4B47C2B
            F83B0CFE6EC1C993273FE1F533F9BE3BFBFAFA46318679B8FFFFB3F078F2BF18
            6713D44B08CEFD04EA0D82B7AAB1B1F108C35A5F5F5FC77FA8A9A941555515AA
            ABABCDF1D4D03977D4D6D6A2A1A1017C6F36EF7384F1253BE08F04FFFE9E9E9E
            F3F959679DF6D9FFD5F078F23F1D0303031711E02708C61202934250BB04941B
            C0CACA4A389D4EF35A402BDC602ADCAF75745FAF282F2F474545C5D7F71904BF
            ADA9A9299AEC5FD8D9D9F95B32FD463EC319A73FD37F3A3C9EFC0FC53836F2A7
            64EFEB0437CA0DAC1B54812606F377686E6E36B2A090442808D6D7A16B14EED7
            EC28C3661DDD9DA2FB0A74855EEB9CAEE1BD0AC8F28564F91D7CA611A73DE37F
            2C3C9EFC77476F6FEFA36CDC6102D3A8068B796ABC4011586E501502D90D9E3A
            C32D1DEA0CBDC71D02D0CD7A1D4FED2CBDCF7DD439FD4E9F595656665EEB3C01
            B7515A76F2D926F019CF3EFD99FFDDE1F1E4BF2BC8E0F164F01602D7A4060A1C
            37B84A6E04DF1C05AC0039155001E30E87C301BBDDFEF5D11DA79E17880E4719
            AFAF30EFD13D74BF6A863ED3DD617A065DEB7E16766C2DF3C35A26E11B3CB5E1
            DF151E4FFEABD1DFDF7F0587E66AB2A646C0A961838D021B6598DBD0D088DA1A
            C947B5697439AF29235076BB0BBC92D252149594A0B8B818454545282C2CFCFA
            A82828F8E6675D53C26B4B4B4B60B3D9CC3DCACA1C5F7740790581E77318E007
            3BD4DD81EA9041863B498AF924C7384F6DFA57C3E3C97F2598701E274B73F5F0
            6AA41A258D75034C2F6158A6069655B858682BB5A194401512B8FCFC7CE4E6E6
            223B3B1B168B059999998C0C64646522232363F0E76F8785BFCBCEB620272707
            797979EC804258AD4528610794F2DE369B6B04B8985CCE5143F93965E4B8192E
            B9E2B35BD8865FB12DFFD684E9F1E43F137411D7F221BF62C269D443AB1162B0
            A441404B33C526D7D075C0E6B0A1B8A498CC2C2040B9C8CCCA427A6A2A529292
            101B178B1391C711111282E0A0633872F4080E1D3C88837EFEF0F3F385BFBF1F
            0E1D3E8C80A3C71012128C888808C4C6C422212111C92929C84C570764233B37
            0FF98505B0B2034B4AD89983A0AB731DE50E03B2194D3CBAE548C4A0B4359318
            9B2827177B6AEB3F131E4F7ED7E0907B886C4D943CE8C195DDA5BF6E80DD43D5
            00CC865AAD56E4E7E4C19269416A4A1A12E3A211191E826304D4DFEF00BCF7EE
            C5B63DDED8BED707BBF7FB63DFA1001C0A0C41506838C28F47E278642482C2C2
            70242814FB8F1C83B7FF21ECF33D085FBF8304FF2842C3C3101D7302C9C9B11C
            05A9C8B26421372F1745949B62AB4B621CB65202EE62B991173E9F1BF053D81D
            C8B6DDE7A9CDDF353C9EFC2E41263FA584222D5688C1025960575533F9687896
            55183615155991939F838CCC3424C727E104991870C417FBF6EDC1E65DBBB07E
            EF3E6C3C700C3B036370203A0341A97988CAB623B1B812D9F65A1457D6C159DB
            C8CE6B42794D3D0A2B6A91555A8DF83C07C252F3E1179D8A9D4151D87E3018BB
            FC8FE160C03144868523313E0E69E9A9ECD834E46767A1B080DA5E6237CF64B7
            DBBED1F253C02EE3B9C1BC52CEF6FCD253DBBF4B783CF90F86AABA7734CCC400
            3D546767075AC9E21A251C82EE7A689B61B0743723231D09B1B188080EC0C1FD
            64EDB69D58B5D51B4BF60662C5D104AC3F9187ED4976ECCFAAC2B19C2A841754
            21A6B816298E7AE49437A2B8AA098E9A2694D5B4C056DD8CC2CA266497D523A5
            B40651C5750829ACC5A12C277627966243440E961F8DC76A5F827E3010C12111
            1C39B1C84E4B42AE251D397C9E8242494A2973048349F41BF7E24AA402DCE9AC
            12D8DD04FB230F18FCC3E1F1E43F1274158B64D3F4604A7C62B17E7656533E94
            E82813C54C707207164B36921212101D4ABDF5D98B4D5BB661DED6FDF86C6F24
            A61DCAC6BCF0622C8F2DC3C6A40AEC4EAB845FB613C70A085E692392CB5B9159
            751245B527616FEC82A399D1A263378A1BBA9053D78674021E6F6F427851038E
            E654637FA613DBD32AB026DE867961F9F8D43F1553BDA3B0EE400802293996D4
            581465A6223B2B03B94CBECA15722D4ACA76CA89017A10F0524A4C65A55360F7
            5046E6B2EDE79C8EC53F121E4FFEBD20C893E57DD5E3D2E0F68E7634522A9CD4
            621B1FCA612F4109599C935B80D4B44CC432B1051DF4C1F69D3B307B932F266D
            3F8E37FCD23139C88A3961A55872A2146B122BB135A3063E961A1CC96B447071
            0B22CBDA9058D18E746707B26BDA5158DF85C2C64E143775C3DAD089829A4E64
            567720A5BA1DB11527116E6FC5B1E226F8E63462776635B6243BB12AA602738F
            3BF0C1B13CBCE19D8877F8D95FFA852136366E10EC3464E55A505C6835CEA784
            CCB6C962BA59CD9FC57A8D5AE51C3A921DC460E4E998FCBDF078F26F05417E57
            206BA8B94156E290549455549201F4BE85396C80058909C9880C398A83DE3BB1
            68D32EBCBE29087FD8958C97FD733139C08AE961767C115D8965095558975A83
            6D590DD86BA9833F813E56D48C90921644D94E22B1BC0D29956D48739E34C05A
            087056553B329CED3CDF81D8F293386E6F63E7B4E268512B0EE43660774E3D36
            A7D7624D423516C755624EA4039F0495E0E5FDB978664B2C018FC0DEA0381412
            E8E2EC0C646558905F9447505D9650243272C26329A545F227273508F61C4FD8
            FCADF078F2AF0535F95537936BEB6AD1D1DE61929E932C2EA31EDB4A69D74CB2
            CB460CED56D891FDD8B573273E587F10BF5B1F8DDFEDCC20C8799874CC8A4F82
            CB3033BC1C734F5460611C99975C8D4D69F5D899518FBD3904BB80605B097669
            3322290B318E162490B5023D91C724821BCF882E3B8988D25684585B1150D002
            FF9C26D359DB32EBB03EAD16AB936AB18860CF8E76B2636DF880A3E815BF7C3C
            BD35194FAF3F8E05DEE1C8484B83BD208B96300D79F9025BCEA4F41BC0193A77
            1AD86F78C2E8AF85C7939E82204FA406DB95E0A4C92A40C46477E52726E4E4E5
            232D2D1DD191A108F0DF87E5DBF6E0D95501786C630A9EDE9D8317FC387C0F97
            60D2513BDE0DB1E3B38832C3E8E562744A0D36A4D663536A1D7666D5C19B8CF4
            CB6F22439B1158EC02FCB8AD0D27ECCD3841D0A3F83A828CD7F9206B138E1434
            C397D7EB7DDB331BF0557A1DD626D76269420DBE6047CE8A2EE7E755E2FD9072
            BC1D508A57FD0AF09B5D1978646D1C5ED91088A098789417E47324E6D01951B7
            4DB53908F660C1A3730AD50304BB8179E9279EB0F2141E4F9E1E4C02E3097281
            744A1FF235C826E995990FCFA34F4D494D435448280ED2AE4DDD78000FAF0CC3
            4F36A4E0C93DB9F8BD6F119EF72BC21B478AF16988038BE26AB0299D433CBB11
            BBB29BB139A3813A5D8DB549D4D674323BAB1EDED90DF0CD6DC2C1FC661C296C
            4220410F22CBA5DFC1D6161C2BD4F9661C2C68C2FEDC46ECE1F53B32EAF0153B
            6B1D415E91508B85314ECC8EAAC0D4E315F838D489F783CB3129D0863F1DB1E1
            05FF22FC6E771E1E5A95889F2E0DC496807814E717203F37DB54A80658B19BE1
            9612B1FA14B0F3C9ECEB3C61767A783C796AF4F6F65ECC1BFAABE8107B5BE993
            1B1AEA4D095B2E4D66AFE7E5E6202D2509512C3ABCBD7D30698D2F7EB024123F
            DA98892777E5E1A9BD05F8BD4F31DE259397C63BB18FC005593B1827E14B266E
            21C82BE2ABB038B6122B126BB031B90E5BA9AFDB09F61ECA804F6E3DF6E737F2
            DA264A4A8301F620A5E50019EC93D3C00ED175F5462E36512E343A56B2D316F1
            9E7329193322ABF05978353E20C8EF0696E24D32FA653ECBF3FE2578665F219E
            DA538007D6A760C2170198BB2F12F92CE34BF20AE898F250585C64C0FE464E4A
            CD1C8B8ECA512CD4B613A7BFBBA8E0F1E4A9C10264795D6D6DBF29A95B9A8DBB
            A8AE52055809072B2C37934F4484C1DBC7172FADF2C79D8B4EE0479B2C787467
            3E1EDD4190BD8BF0798403DE4C729165DD4C5C5D4C762D64731301A9C19C28EA
            756419E6C512EC78829454832F536AB19152B235BD113B33EBB18BA0EFCDAE23
            6BEB7824B03CEEE671177F27A9D0E8D89022B9A8616729013A312FBA8AF7ADE4
            673BF16148052607DBF116E3D500075E3AECC0F3074BF1CC81123CED5D8C5F92
            D93FDE988E9B661FC3073B8FB35DF9B033DF1492E1C59210DA3C315A21D03599
            2557C21CD5458CDEF784DDA9E1F1A43BC8E687281955D265253DF9E42A1AF88A
            7227758B20D35DA4A5A72336221407F6EFC74B2BFC70E3C213B87F53167EBC2D
            170F6ECAC5EFF6155183AB1151D181A4AA0E449670A8E713180EF1D9D4E72941
            6598125A86CF8E5762F60927E6139CC571D51CF6359412B293C06D4CAD2553EB
            C87C02CFD8C6F76EE3513F6F6267ACE7EFC5E2550478797C3516C40AE44ACC38
            5169EEFB6168B901F99D201B5E0FB0E1E5C376BC78D08E67C9E8DF12E85FF9D8
            F0F89E223CBC2B173FD8988D2BA60662F2AE301493B9564A88ABB091840C1637
            0C4988E66906E774EA29217F53AF3D9E7407C5DE4F92213DD2CC9BAA3F9977BB
            83E5B4D5820C8B05F1D12770CCFF00DE5CB11FD7CE3B8E091BB2F0E0E60CDCB3
            3E13BFDF5B8CAF329B9152DB4D1BD649A96861B26AC02AB2F5E3B07226460D63
            1B1363193E0CAFC4B4F00ACC2603E7455512AC2A2CA1CC889DABE948D610F075
            64EC970C1DD7498793C860BA8A95C9555896A8D1E0C41731B4720299BAFC4944
            153E0C736232EF3F29989F75D486578E38F0E221079EF5B5E1F77E363CE5538A
            27F615E351B2FAE7DB0BF1D8D65CDCBB3E03974D3B8AD9FEB1A82A27A079D964
            B0D5002CC05DA0AB182B30804B42C8EA239E307487C7930ABA8C494C783D6233
            7BCCDC4CBDE7282B8795926161C2488A4F4054D0217CBAD107D7CF0AC26DABD3
            3161630EEE5C9D89DFEE2BC09EBC26A437F41B0BE69FD780ED4C7A8BC9D44904
            F705BF52D3E0D7A999EF04DBF07EA8031F873B38CCCB313DB2827242D008D8C2
            58CA00E56409DFB78C9ABB9CC0AF24A82B384AC4DE25FC9DECE17CB2587A3C8B
            7651EFFF8CF7F99023E5FDA072DEDF813782ECF823817EE9901DCFF95332F8F9
            4F1FB0E17F983B1EDB5B88477617E0915D56FC605B3E7EB83513B7AF4AC75553
            0F61F7894CB43ACB587C659BF9F112BA109BE6BDF95A4951530B3204CC63F40C
            1D2F79C252E1F1647F7FFF6DECA162F71C86BCB3DBC6D9A855054C1449C9A948
            3C7E145FEDF0C6ED330EE2BA2589B86B5D266E5D9389DFED29C42EBA85B4C65E
            E371BD2DB564763DE6C6D4E0B5435626A07CFC816C7AF16819FE1460C79F09FC
            3B04E2BD503BA6D0917C1A2A9740DFCBA13F933127AA0AF362AAC8D66A7C41E0
            E7F3389F3FCFA3A39833E82A6647961B3D9E463DFE28ACC2243E231781BABF9D
            2E834CA62E1B907D4BF15BDF123CB9BF044FEC2DC263BB0BF1E8EE22FC746711
            7EB0B310F76FC9C1C4AFB270C5FC68DC31F30832734BD0E22C35D3AE02D8C56A
            17BBC56A852C2F477D1AE5F6324F98FEC50905F56695182CA005B26EA2D74A04
            CAB8991999488D0EC331BF3DF8D93C5F5C382701DF5F9D819B190FEFCEC746BA
            88849A3E161C2D2C4098D838CCA7138417A8894FEEB5E2D7074AF11C1BFBC2C1
            12BC72A804AF52425E3FC6444550DE6521F35E30B59B32F2315929AF3D9D8972
            06993A83F710F00AE9EF34C6E727AAF0393BE5D3880A7CC402E803EAF1FB64F0
            6476DCDBBCDF6B810EBC72D48197C9E41708F2FF52937FCBCF7F6A7F31FE679F
            952017E1D15D45F8D94E2B7EB4AD908C2EC47D5B0A307EA385C4C9C058EAF56F
            BE0C405B5535AA291D79854C8EC441FE5A404B3AB4E02017A2914FEB3BC313A6
            7F71823DF2230E836A379B4DE5272B4709D18D35499F921887D8E0237873F93E
            9C3F230CD72E4FC3CD64F2839B7330878C0BB177E0106563735A95D1E34FC2AA
            F08C4F11FE0F87E72FA8894FEFB7B1C1C578968D7E5ECC3E54869768B75E3B5A
            8AB78F95E23DCAC9C781C598CA0A725A601166061762767001E684E4330A3097
            AF678514617A4821A60617E3B3101B3EA4FCB8B4D861007E9300FFE958196D1C
            997C44568E2093C502F95704F9096F2B7E41363FBADB8A9FEF28C28FB717E1A1
            6D45647321EEDD5C807BBECAC35D5F5AD8B6648CFDF430961C4E467743258AAD
            8528B1D285100B498730D1AA8EC0165E043A8F44BDE9745CBFF58382172D72B3
            594589DEACD79AEED44C5C5A5A2AD26282B0629B37AEFBFC302E5E108B1B57A7
            E1F6F516BC1158069F7C4A05CBE0B5B46DCBA8A71F8497E16936E8E11DF97884
            92F238ADDE5374224FFB94E0374A48D4C9E779FCE3A162FCF97001DE3B9C878F
            0EE7E2D32339981A908DE98C990159981560C16CBE9EC5981D90638E33CCEF2C
            987134079F0514E083007AF58012BCCE0EFB230B12E58017D891CF11E0DFFBDA
            F1EBFD02B9D4A5CB7C160332D9FC6302FDC36DC504B9001336E763FCA67CDCBD
            311FDF5F9F8BDBD65870DEAC285C33E310A2B30AD05D578E22264657D5586AC0
            D628D7B29B401F64F594D371FDD60F8C4BA8CD3162B09C86BBC4D694A16E9865
            C94656521C828F1EC1CFE6ECC38869E1B88A6CBE615526ED511E162535B0A26B
            C69A24263226AFF7432AF12B269A1F32C1FC788795F689AC66031F139B7CEC06
            ECE77C0AF1DA811C4CF2CFC53BFED978D72F0B9319EF1FCAC2078A83164C3994
            8D0F0E5BF02143C70F0EB95E4F39AC6BF8B3AE31918DF70EE6E04DFF02BCE26F
            C57304F9F7FE0EFC8EF11B76E853FCBC27F795E0FFF099A4C98F502E7E225D26
            D00F92C9F711E47BB7E4E39E4D79B89340DF4EA06F21ABAF5A9E0AAF2947F1DC
            C6709CACAB427DB91DD66217D82EF9284676768E59E794CC12E8209A89734FC5
            F65490C5E667C8E66EC98458EDD6E63226C03CFAC98CF46458A8CDD3D6FB60F4
            8787306E7E32AE5A998E3B9804DFA01F5E95DA8865B465F3E887DF0B71E27126
            99FBE8421EDC52841F31A3FF840DFBD9CE62FC98094759FE77BB72F0DCEE54BC
            B027192FF3F8CAAE14BCBA3B19AFED49C19BFB5231C9270D930FA4E023BF147C
            7A300DD3FC5318C9987E2805330EEA750A3EF74FC5473C3785D7BDE393823FEF
            4BC16B7B53F0C7DDE97866B7058F13D49FEE29C5CFF9D98FEE2EC6C31A5D0279
            57091E962EEF28C603D4E58994BD8904FA1EB2F9AE8DB9F8FE863CDCBA3E0F37
            AFCFC60D64F5E85971183AF9007C632C405335EC25F4D864746909B59A3AADC2
            2D233DCDE43126C57602FDE4A9D89E0AF418B2F9EB52DB3D97E162B3CDAC3267
            A7C4E1D8E123183F7537CEF82C12DF5B9185CB9767E0677CD0695175981F5783
            A94C4AEF12E427F614E34E7AEA7BD880FBA97F776D2CA08EE7E1F62FB3F1C8A6
            143CB73596A0C6E31DEF347CEA978A05411958176EC1EEE81C1C4EB1223CB314
            D1B90E24163A9061B523BFB40C45368709AB8DCF64E710B6D16ADA2B90575286
            B4C272C4E59721DC62E3FB0BB19780AC0B4BC3274733F0BC4F367EB1CB82FBBF
            CA3009EEFBEBB271DB466A30A5E281ED563CB0A31013B6E65197732919B9B883
            4C16C83731AE5F9B4BA0B371E54AB27AD2413CBA24000DB564B5B3827A2DF9A0
            4E33B43C964EA0A5D5C28EACDEDBD7D7F7F5BCF5D740F7F4F4DC458761935716
            93B52DA082CC2E9536B332CAD2527FEC71CCD8B80F5EEF1FC5C80569B87C451A
            AE5C9189DF30C14DA7EFFD847AFC5670057EC99FBFFF650EEEDE90830904F9E2
            9559B866690A7EBB3315F34273E19F64454C7A01528B38F4CAAB5153558BA686
            7AB437D7A3BBA5117D279B31D0528BDEC62A74D6D7A0CD4435DA386CDD71B2DE
            C9A8427B432D3A9B1AD0D55287BED65A0CB4D5A2AFAD097DBC4F67531D1AF8BE
            0A3A86ACB25AF8E538B128BC08AF7A67E081F5F1B86A493C2E5A948EEBD6E51B
            3248326EDF405DE6B3DF6240CEC6756B7271F5EA1C5CBF3A0BA366C6E18C49DE
            F04BCA4617EFEB30A5B9E6400876316B0BEA746A6AAAA93708B49DBE5ADBCEBE
            0D34D9FC0B01EC960D2541BD56D9999F9B83ACD404848604E147B3F6C2EBA313
            F8DEB2745CB2240537F0619E672130258C7EF59803BF662170F7866CDC4AD6DC
            B1D586317393F1C355F1F04DE77D0926DA1A4184D04F307A9B5BD0D35C8D8E06
            275A6AAAD058CD4E763A5056AE79E052B3F1C549E6D4D63A09580D994202F058
            C746D6F0DACA0AAD8214B352B5D2E397A0BCD28E4ABEBFBAD2C1CEE3A8647B5A
            1B9DECB072A0B381CD1C6000CDED9DC828AF83771241DF97868BE74562F48274
            32DC8E3BE9366E22D037ACCDC1B504F91A32FACA557CBDDC82CB9759E0F5A62F
            5ED81886A61A072ACA980C4B1CB013E49212C9471E9292924C7254526465FD82
            B055B8813E9B966EA16443BD21A0BF4E82147A0B65232B3106EB7D8E62CC94FD
            3867461CAE5C9A8E0B1767521EF24D21F07A80C394B41337E7E1C6B52C5C3617
            E36C82FCD8BA289454AB91EDE86DA946734D39AAAB1C04A98C23667007288129
            276872365A7DAEAD76A24D8CECEE406F5F0FFAFB7B00C6C000A3BF973F77A3AF
            AF1B3D3D9D6C4C2BBD7E2DEF598E726D1F70D8F8DC5AF3636EE1BD2BD959E566
            49AA98C03BF97EDE6B1070FDEBEDED46449E0D3F5C1101AF99C9B86153096E65
            9BAE2581AE599363D87CD58A6C8E5ECA242BDEB33E8AC4A51FF92385BADCC876
            68EB4289CD6ED61D0B59B82427279B4D3DC290402FE647987D7D06E8EEEEEE5B
            D8030E812C8075912950ECD4462B0B94CC74A4C546E28D3507E1F52E93E0C264
            5CB42413E72FCAC4440EB73FF895D1173BE8450B39D4B271D386024A0B93E48A
            28586B0472176AF9508E4A825BC98693A5953C8AAD35CE4A5438B5CC6F4713A5
            60800DFFA7FF09C48E0676683DBA586835D5F2334816B3605CE5B2A89AE2EDEB
            E9463F3F67809D48A8CD5B9DD4D59FAF3B4EB01370ED3A2BAE27ABAF5965C115
            2B2DD4E76C5CC6B894F968CC17C9F07A753F5686A6A3B59E9D69A7743034C327
            27A2957E812D1CA912D1940FB309C700CD1F9E556122764932DC1B5EE413F3F3
            0B91959682A0E3219838CB8736271C172DCEC07964F305047B3C33F5AF689D64
            956E5D472BB4360FE72F2BC0F01927B03FD3C6DBF790A192A1329473B86B0157
            009B20D8656576C3E8CEF636B517C5B52D08CCABC0F6543BD6C5D9F165AC0D5B
            52CAB13DAD123B53CBB08312B43BDD8E5DE90E73F4CE72C037AB0C872D0E8417
            9423C65A81B4521616E54ED4D4D5A2511A4D39A922D0EA5C3DC7C993AD04BA07
            7D5D5DE8EB6E1F041C2872D660C28A488C589081ABD7E5D251E530076599A47F
            09597DC9D20C5CB8240D5EAF1FC6AFD786C2C91152C1FB69B498B5D2419D4E48
            4830D8D17D0C10DB5FF0D62EA089FC0B6E16CB3F8BD95A5130E5A5BC736A2236
            1F09C0B8293E38736A2C2E5E9481731767E182A5940E66EF9FD0F82BF15D493F
            7DC5AA5CB222053FDD9C88C6CE93E86562739669A4541AC9A8FE1A646DC5A296
            522606280395CDEDF89CC5C7CF36A5E29EB5C9B87179126E5E99865B18B7AD4A
            C51DAB9231715D3A266ECCC6FD1B33681B33712F5FDFB1C1823BD6A4E0CE3549
            8C34DC43ABF903BA8B5F6F4BC6C73EF1282C2D4767630D25449FABEDBE65A862
            87F77451960876772F9F9112D5D7E362B66F7A292E5C10634874D58A1C5CC164
            7FC9B22C5CB85491898B9765C0EBC3085CF5A92FD28AECA8E33DCD1C352DB0F6
            FA49A705B48E9A5666527CCB0DF419D4E7294A8402D85D096A52DBD54359C848
            89C5F41D47696FFC3074763CCE5F9C8631920EF6F06DF49B776D2EE430A386AD
            D44365C2EBF3687C1E9C43296C679273A28C49AAAA9245909126850BE43ADAA4
            813E57033FA30DBB92C9F5264ACF2FB6A6617E5409FD78094B6C96DBA105981A
            988D5F6F4DC6E35BB3F1C4CE5C3CBE2D073F20C8BFD89E8E3759A4BCE6978317
            0FE4E28F2C7E1EDF96811B5765E007EBE2119C50C8E4DBC48E7598CFAD6408EC
            A6C606F4F5761A907BCDB1954FD18F0ECACA935B9330F28B347CCFC845162E22
            D0E72BD8E68B966460087394D71B7BE0139FCB9CA3B9799B7167025A134C8989
            896643E6A0CDD3C69B33BC0606064613E8DDD21437A3251B5A662FA4E6646666
            21393E06CFAF0EA03E0760E4FC448C23D063D9C3920FE9D8B5AB2D06603DD879
            8B2D3873462CD647E503DD4DF49B65049A5A4990A5C5FA9C7226AB9AEA2A7477
            B51B903BFABAF0BFBB68B7F8FE89EB33105752651ADDD3DE4893528F4EDA3E7A
            3678B3618F7F1987A7B6A4E0E7EB93F0F2B678581D15ECD04E5E4EDDE57F4A74
            B68626FC9205CBF5CB92114C3F4E6F883AB2B8A3B90ECDCC034D351568ACADC4
            400F3F5FBA3EA0CED67B5D9DBE30340F236627E07C827CB1617326CEE3F13C02
            7D1E47F328A3D3FE98C522AAA1AE923AADD517D74A796151A1D168B90F493081
            DEC71C3852FEF95252DC229005827EE99A0E957F2E64CFA4212A3A0E3FFBC21F
            5E1F846214FDF368C6B8251686AB972FE4F1023EC8F718A3282967CF8CC7A6A8
            5CE6C0263454934574144EEDDEACB0C35E6633B2D1D3DDE56AA069641FFEBC37
            9D8D48C3E36468736B33DAE84E4A4BADA8968563B2E92758A945E578E2CB08FC
            FCCB183C402D5D1698C214D08CD6EA7234D0CE490E04B43CC5028E88F36645E2
            44710D4F35233E330F412C64ECECF056FAEB36460F3BBA9717D79DEC449EB309
            8D6D2DC2197B521D183B270EE72EB4B05D169C27A0397ACF2599C62E4CC5E8C5
            E9B4790178EECB70544A011CDA972DA05DEB89696969888F8F373852A723A9D3
            17A8ECBE9F858AD30DB48B716CA4E69D0B0A91C96AE7D8F168DC328D85CAC711
            18B7201323F961A316126C26C57104FA5CF5F4520B2E25D0C3787ED4F4586C8F
            2A2055EB317092BEB987C987C7FE961A12930D27835DFFFA291D6423FFAD8C2A
            C5158B12F1C4E624649550571B58109457A0CAB8920A32D24917548E88F47C04
            651423309D6E28BF14F52486A4405BB9CA99585B5B280903FD981156888BE684
            23C9C1CFE73FEF13C9B8FB931D786A5920DEDD938069FBE331F3400CDEDE1F87
            FB1605E2D64FBD116521FBF9EF587E05CE25D02317E6E05C022C269F4B32A9AD
            631610681EBDDE0DC14373FD5152A9ADC80E3E9BCA7117D0928DD8D85877396E
            65397EB31CC70C3A0EB392228D16E086D1CC9AB979F9C84C4D814F6814CEFFCC
            9789300AE3E6A7312BA71BFB369AC3681C25642C3FF802CA8886DAB005FC7946
            A429A5D1D78C98D41C04A415A1809ED94627A01DA06965CD58156CC1A77B2361
            AFAE358D4B2DAFC1CFD644E1272B4EB094B6B3431A8D2391AE5655D16FD30F37
            70C80FB0D851C103CA8A24A5CC1435E526C1097015119DED2D981C68C5B019D1
            F04E2D31F7EFECEA418CA5044B0F2761F2CE18BCB52504AF7D15883F7C158A57
            76C66163642E1A5B3522C0EA310B67CD8AC12832F97CBA0C813C862375D4C274
            8E685A3CB6D5EBE3485C3BF520728BE9682AD436ADBC0868C96D26A2A3A38D99
            A02CEB9B043FF6A2862C91E310B8025AA1D7D21B2DD318C7117002C33E3A8A21
            9484D1F4D02309F0C885D42A7EF0681EC7F041A4D7E712F4718B733166460866
            1F8A370FED17958A2716F8E2D99587F0F29A23F8DDCA63786C7930EE9DE18BB7
            B685A0AED5A5D387334A71FFD208FC7EC3719411D8665A27252E9338C918D932
            07BDB683AFCBECAE9F9558C578E36274E4FB5408B5B23C9F1690C3A41C67DCC8
            B2300B9C4DCDFC14898AB458234A23C9A5C9EE7FED9D1D581341B998198DA124
            D2F94BB349A06C02EB6AEB28B559A378510ACE9E168B311F1E467CAE15B5C28C
            394D49D1CA84288B77E2C409B7F3E860E1F29E80FE4C408BD1EE84E8721CC5C8
            C9CD43567A12D61E3C8EA19303306C6E22862F26D004750C3F74343F7C0C4177
            1D2D3C9745F948C7B54BE370CF822044E514F3F1FB60ABACE7EB528466E6233C
            DB86E4D25A3869E75C0D1F404466319EFC3216B7CF0F845F5201BAC954C98076
            E53B3824E57FEBEA6AD0D8D480FAA65A96E3744804D7C14C5F218210E472B199
            AC5207D4B39C4FA4F5BA6E4114BC66679ABC72FBF2183CB723164B03D3B13BA1
            0887D38B9928AD389C5688B571C578F7502E1E5C158D733E0BC3197CCFB9CB99
            D8E930E4AE462F72116A148F8A310B933084C9F29CC9871042B9A9A6ACB9BF7B
            23166BBA343232D21C65F108F47C013DE354460B70F7F627CD44593252B0D23F
            1267BF7F18C3E7251B6D1E459D361F2E9007C3F4362BC52B96A7E0810DC9B865
            4934EEA7F62D0DCE80C5C1B2BEBE115D9D9DE81F18402B0B86BCAA7A6C4DB4E1
            99ADB1B87759146E9E1F89C97B1351CFCAAD5AEE84C0B5B7505668BD8C96F7F7
            D3EBF235CB70D73F9EEBED603144BBC69C72B2B51EDD6D0DE86C6D41233BA5BB
            B501ABC3F371C6E751386F452E9FD982217CFE1B17C760FCD2684C581A8EFB17
            8761FC92109C3BF704BCA6A7D0FFA76208DB751E2570ACE4C28C5826FF6FB591
            E033470D9D938473DEF347008B32D954559D2A52DC8C3E7EFC38B2B2B2CC5220
            819E25A063E4F704B4D82CA08D01E71B72497D01BDDC007D082304F47C974EFD
            05D00C69F7554B93F1D097097880F1FD65B1B8796114EE5F1E815FD12DFC7263
            327E48FB76EFCA185CBD28920F1B87CB2945772F4FC443CB42115FC0AA8DF6AB
            A65ADFA4AAC2113662672AABC2443B72CB94D4066065076D892EC0573125F049
            B4A2B5BD834C6FC6BEA80C6C8DCCC1F6E39948CD2F6691E2446D5D359ED89808
            AFA9F1B88615EB852BF2712DFDF57D6B980057C561E2CA044C5C9380AB97A762
            C4C26CE61B3A0C390BDA578D52B5CB8CD85383D2319A0971E89C649CF5AE1F0E
            2717A0A1B6C66CF335D231C86837D062B4F2A0809EAF6245400B641D05B42649
            F2281DD99969587EE804CE22D0C3E7266334817601FB6DA08D6EF377D72C49C6
            03AB635D0D6183EE5D9D807B56C6E26EFE7C19B56DC87CB916261626CD8B9764
            E3DE2F3371E39C202C0C48A5EDAA411D65A2A3B90645B5D5B863D63178BD48FF
            FEA21FBE38966178BC392607E7BC71005E6F87E1726A644155231C0DCDB87AEA
            019C33E508CE9DBC0F5F86A7D33A3BD147A989C82FC779738EE3EC2F286BABF2
            F03D26B77BD724E307AB39F2D624E2C1B509B87D6532730B4729592C90C7D066
            BADA28167FD34EF33343CE6308813E9B401F4929E208AAA5EB704D8A15B3F610
            D0FA029392E2A07418A0A74B3AA4CB6EB08D469B64E8027AEDE1589C234653A3
            C790CDA31611A8C10F7787019A5AA82241404F20B0F7902D135627E2FED5F1B8
            9F8DBA7C592AC62CA7EF5E9A46CFCC1277653EAEF8220A4FAE0EA1BFAE424B03
            A58B1E5BF3D24D2CDF3F0DC8A2AF4EC56F76262184DA2E46C7592BF1CA9E64FC
            AF4F0EA6F8A5A3AEA50DF54CA8EFEFD7EA4A1A3EF089434856218773255AA8DD
            E86EC4BC50FADEC9E118B684ACA62CDCB63A090FAC8DE33325E0FEB5F1B86755
            12135C1AADA92BF79C0AEEA9E1025AD790D1D4E821948EE02C07EA490A9B61B4
            4B72C5E4D0D05063F306819E297B3757D2E1065A218D76ADEEE623372B1D9B83
            E23074CA610E9704024A8D366CF6C068EAD98DCB291D64F2F855B118AFA1B922
            9EACE66B36E8B2A5E9648E86288F045CAF2F9F168843093918686DA4832827D0
            0EEA6D137A7BFA9061AFC689A22A445A9D70D4365096FB50DBDC86789E8BB1D6
            22D5566D4AE6BE9E2EA4963A115E548B9842274ACAE846A4DD74283D2C74DABA
            4FE2B115E1F07A3F0AA39715E2B695A9049AA38EA3ED3E823D7E4522CE5D4496
            FE0D90DDA1B68F5D98827366C763D8643F4466DB592C551BE9D01604F9683159
            404BAB9B9B9BFB08F45A01BD44400B5C37D87A2DF9C867C19293958103910918
            FBD1619CC51A7FD412EA993E940F75EA0308E851EC849B5624E121827C8F584D
            C998B08220AF660262A32E349D944D1B481D5C910DAF0FA3F0C2E62826AE3AB4
            36A8F0283793F6E8EB4601E5E096C9DEF07AFA28BC7EB91F5376C719E9F8EA04
            4BFC17F7C0EBE5005CFC860FB29C0D28AA6BC465AFED85D733BCF6A53D581D9A
            82D6C61AEA3C6D5FA59DEFEA45188B90B1532845D3B370F5CA4C03F20401BD9A
            167055021D461A869BB67C1B68D9B95347AF6CED38E6A2333F8FC1851FFA22A5
            B094C554151C7449C24C3E5A95617070B0B177F4D10E02FD9CF6D7FD9A99B1C1
            ADCF0A930CC9E882C202E459D83B09E9B8E2333F787D7ADC0CB131721EA77CB8
            79200E29F5F60D04FA41827C0F1B309EF2317E653C6544C33301E753A3479231
            E732E9784D6565F94100A20B0804CB6867A55C0F81A66D53E558D67A126F7E75
            023F9B1F8B1FCD8DC2B61356F492D1475373F1BB35217882F7FFDF559128AD6F
            41794B3B5E5C1B834716C7E3172B42E1974CFFCA44A87BDACB4BD1D658673A69
            D2BE64567427702947D47D24839EEBBE95047A6522CE67593DFC34F29C1EA6CD
            7221AC17BC3E3A8E5BA61F42218B30CDE069B141B86997A9E63A0203030DBB59
            19E691CC178AD1971368B3FD4B4C16D062B6AC8A2ECCA7B0C7A76763E21C023D
            25848922CBCC75FC55A0352CA9C9138C4E1360CA873952AB2F5C9262E609862D
            209BDF8CC0149F2436BF1D2D75AE32DA557854A0B3E324FA69E7AADB5A51D252
            878AB62656769D64BDFEDA41051A5AEA51D7DCC46871CD25F7F7A2EA640B4A78
            5D7573232D9F4066B568FC752547093B8F76B092D7DF3A37981523933493E0BD
            029A64B893CF789E9E4B6D3BAD5DA786D1672642558C5EEF04E391458750DD50
            47725432C7B830D30676CD730868E9755B5B9B431B6AB4BA328E821D200FAD1E
            11C80ABD9655C9CBCB41B6250FCFAC0A86D7A4406A185D033F6CE469436C341F
            42FA7DDDB224263F0DCB389310C793C9E3C91AB98F4B96F27D4BC8E64FE371D3
            EC1014D7B15AEB6D6302D697DF5D200B20D02F57B4B6E2D98DC771C7BC78DC38
            2F016B4273D1DFD5C0723E078FAF8DC0C3EB62F0D2961306ECCAA6163CB9EA04
            EE9CCFCF5E721CFB93F2CD6A8D4AF372A7CA7807BAD979FAB7911670F827C1B8
            656592017A229FF30E327A2CDB335440CBBE7DAB5DDF84ACDE58CD75F05AAFD7
            0EE2CF5B22D0C2024A93640EBB6BD94FDF8189898941505090C1918A1148A02F
            D034E908D2FB2BCDDAA947F44B315BAF251FF9F9B9286552FC7C6F2CBCDE3888
            51B43562B424E09BC4A163BAD1E9AB0CD0920BBA0E231F62B4124F9CF1AB67CD
            4BC390A991D8149D6F1ADE4A0B26A0DD6CD6701FE86A87ADA915774EA78D7BE9
            08F5F8003EF74DE0D53DD8139785AB3EF1C1C59F1EC2BDB3FC5051DF0C7B5D13
            AE9BC26B5F0DC0D993F661D3F134DABB2A54D38B6BE6B08A60770C02AD7FEFEC
            8DC30DF3C3F97CF2D1F1B4777453948D618B2D06F0D301D628FCDA8DF0F5D02F
            12E0F5C77D58196A6181546FEA0F25437DE75CBA1C1E1E6E92A130A5626CECE9
            E919AE89FF3349EF8FE5A505AEC26DBE05B4BE3F6DA3566F094FC1596F1FC059
            4C027A986F67673D009309FDF1C54C2A1A8E025ADE79C2AA4403F8C45531B879
            053572463C6E591A8382DA26D3E84E0E79314F6B89025A7315B24B9D5DDDC8AD
            6C407C713512E828AA097C372BCA62FAD5D83CEDF9B02385C78EF6167453D32D
            8E1A24DB6A91505406ABCD811A4DF956684AC135E1D4DDDDC54AD2356B18484B
            76E7A270DCB182238D406B3547FA3C826C1E731AD09248337AD55EE9B396B288
            C19037F622CC6225D0240A5D8ECD5E4C7D2E32D62E2080B9273ADA548504FA53
            AAC69966298B5EFA2D390F7712D4D1BC26E8568A7B49612EA2537370E3670769
            91C25C0F734A69EA0A26130EBD0B16A7105C0D49D9BB185681D26797C5BB8B7E
            F59C9971B875692CAC4C62FA276BA6790CCD55B858ADBF38E0E043D6EBB783C1
            729BA5BBF67E54F19A466A7A6375395AEAABD1D3DD413D5769EEBAAE83FA5DC5
            A1AC151D33C5CAD15253C3EB2847FD8353B261B9952CBD2370171DD1FD7CD62B
            390ACFE1F36B2EFDF44A5023576D73CDE90868CAC6A410DC33F510EC646C7363
            AD79769BCDF56730B4AFC3CFCFCF1CA914928E3FF023BF5E9C7D42C65A895002
            EE66B6E657CD97650A0A504ADBF2CCBA50A34DC3A85332EDA73E901E6604AB2B
            B912555A0FAE8935A5F60403B44B3E2612F071736371C3E2481470C8EB5F3F93
            5947FB49E3A105B061B561360B811AA7EC114EF2D9F45A5F7D76B19E9A5EAE49
            F536F4D189F4757590AD9D06CC2A2642C3625EA7D008D1DC472FD9DC67E6C17B
            1192598A898BC20CD013A8D517D0B20E61EE19A782E55B6D1A948BAF814EC5F0
            F92994B37D98B43D0A5D1DADA8ABA1B57394A3B458F3F70586C9025AEE83B836
            31EE12C6066852FB42A21FA6D93B2540C36A4D9210682B4BF1220E09A7C38AB5
            81FC9057F7E2EC69F134ED62B41EC2FD504C861C7A2378FE9A6569ACBA5C3A7D
            B7F49AC97002B57A2201BF9276ED96A511C8AB7749476F17B573A0171D940581
            68122381AA3472420754614745998DCCE491E7AA087285C36ED6FCFAE9367ABB
            DBC96AE92F3BAC8D89912EC3B510EB4AAC7233275B9BCDA4540F478F5C8E66ED
            26523AEEE1F3DD4C5268924CA3710CF5F7549015C65DA93C27E092CCB33F67AE
            7A693B7C530AD0DFD9C691A385EC0A14595549E73009B2003B74D8E833936034
            D5C26C4C37402B78E21395E262B4C29510252502BA1095F67C2466E7E1E68F68
            F32685B370E1872F48319E5A00CBFA18F9E0035D4486C8652801DE25D960E122
            09D1B99B1644E307AB2351E806BAB3C32C926AE8CBD669CAB18CA06A5D51CC34
            73D10257AFD9095ADE6FA0CCF5B3A8612FA1AFB39355640F7AD959DAC574AA4D
            74EF1DE9EE6CE7FD07D0D5CDF7D0B307675871DFE230DCCDAAF53256B25AAC90
            6D1DE5016837D86359A48CD10AF85BC730E163266162D54E99D2B6393B712AB0
            6AEF5D3A7C7D7DCD3C87648349F06337BE5F034D8AFF52F2216D967FD6B15421
            E0C9729BB500D5E5C5787BF309665C7F0CFB229920D3171BA0E93864F60DA329
            217C7D1B99A2525CACB9478C56B0DCBD6151141E5F17019B918E0102DD6E1295
            760C096C69762B9929DD56F122DBA74429D06A394CDBC84EC98D426B847D5A7B
            E47D3A3ADA788D8A9E6F80963E0BFC815E2DC0F6A08DA366A0AD11E119C57870
            49186E5F4EB7B13815C334EFCC36B8C8F297409B44C8DF0FD5A2ECF33B31C387
            0EA8B78349BBCAECAC2AD5041C6D9D6463CF9E3D66C184208BD1FFE3C6F76BA0
            291F57B21712E5A7A52FAEA4580A1BE5A3A4D44AA12F4133FD68684A36CE7F73
            B7498A721AA3E834C652DBA45FD2B1917C58E9DDA54B535C93362CBFEF26B3E5
            3CEE21F0D72F8AC023AB4390575E6D001AE8EF3620F7126085B67C0970379062
            B936D7E8D837D819BAE6EBEB07FA796D2F3B41DF4AF8C626AA63A4CFED275D1B
            7394281B1AAAD1DF5C87F0341BEE5F1A89EF2D4D32338E92BDD19A1E301EFADB
            609B73F3D92EB34E1881CB5FDB864C3A1F0E252351EEA951CD6B1C3D7A14FBF7
            EF379B44FBFAFA329A9B9BAFE1077F1B6805E5C3CC7B185B47561B2FCD1B69CA
            54AC76DA09766D059ED1D683177D307C6E1241763DE808F6B8801EB5C882211C
            8623C976D9B90734554A569BC2853272DD20A3ED4CBCFDACE2DA38C4FA99D094
            AC7ABA3BC96E2635B3A185B2A0DD44622F8FFD9A3C5287E81A7640AF5C04CF6B
            134CAD990F2E35EB879AFD53A852ABA34DEC67021CE8EBE77D7B60AFB4A1B7DE
            8978DABBBB969EE0C853E1A5097E0BDBA091F9ED8AD7B4C780CFAA711EF3D31F
            F6E1AD0D2184AACBEC0DD4DE4461A46A5065F7DEBD7BCDCA4A575797620309FB
            F5DFF6F816D0FCE51DCCF2259AF750067539106D4BA556175B097E217AC88A88
            CC3C5CF40E593D59DB0F928C7C8C20D8AE8722C87C3D6C4106CEE703DEB986CC
            36E5B8269712C9E8583CBC2A1CC5954EB3C3B3B54A058A58E75ECF731FDDFB2C
            DCE1B26FDF04FF5197BBA8938DD515B47A4E96E8D568A5E5D39A613B2B36F68C
            EB3ADEB39F9FD5C41169343AA71497CE8BC25032D5F5CC2E30A5D1CA3786C922
            9042D30D721A2CB9AF9AB41319A52AE7FB8CA4696A541869FE392C2C0CFBF6ED
            33B9ADB7B7B78D389AAD60EEF816D08C2164B5B792A2182D032EFD71D93D3B0A
            68F5AA4A8B31D05C85C9BB23E1F5BA2FCE9E1EC78711D8A73C34754F9A3D9C49
            E65296DD62B2CA5D4D2CC952DDB4200CEF7AC721A1A00CC7B36C084C2D346B89
            D19A122DAC44687E2542F22B103C18210595082E709AD0EF744D54A11361B469
            21698526B90567942024BD08617C1D94CED73976841556F3BDD508E37B8E6595
            20268B854E9E0D8F7F158BB366F199E5260C93F5DC9AE77079E9D1AC1005B22C
            ECC8452938675A1CABD3FD98752096100DA0851E5F459DF2982AC194941463E9
            424242E49B65EBBC59610F3F15DB53413641017F477B7B558ABBBFE12F293132
            C2A3F4BBBDCA8E425AACEFCFF4A76E05622487D5A8F9D26B17330CD87CAD8A6A
            38D97EC5B254E3A1EFD374A94A723A903B1645E2F645A1B87B7138EE5EC8E382
            10DC4DCB75EB82705C3D370297CD3A8E0B6746E2DC99C73176E6098C991185F3
            665223E786E3E6F9F4C07CEF3D7CCF5D7C8F2BC2307E31CF2D8EC01564EB8819
            C7591C459308D1387F5624CF879BE5B2EBBF88C4304ADE7003F2203106430ECA
            A5D162B2127C1A594F36BF1D8089B30EA0A68532473B594617E4AE39DC0BB14A
            82222793600F73DDD7FBA2DDF1AD1F06630C591D2C4117A8921001EC06BB98A1
            0A08ADB5D817C7DE7F7B2FCEF8348A09439B6AB48BC7D5002DE21A8DA3FEC9F2
            5DC532D7804DBD96DD1B2F47B23681E1722313D62662FC3ACDAA25E2BE75BC76
            5D32C6AF4DC63D7CEDBA2E1913F8FADE758998C89F2728D624E16EBD6F75120B
            A4783CB82E01D7ACD49C8B052397E69AD06AD0652B33F0D08644DCBD464B56D9
            D466B1F6DB95AD2948C8EC113CAF0D426625492EE3A3288CFBF35E1CCB649BC9
            66CDC568A55D722A7721361F3870C04C2291C962743AC97AD569987A045A73D4
            BF62AF9C54AF69255CDAAC0D8FBAB9D6C564CE2BD89BE86DC5BBBBC2E1F5A77D
            18329B568F0FF6F51C88A484608F62C9AA0439920FFEBD65296C6C1C8122D0AA
            1457C8F6A96A64B224DBEF5A238722D6ABA2D4E229833F6B24980EE27BEE91D6
            9B906DD4746C341EE0EFEFE748B99AA5F4306AEA70B1D2141992037A603EC365
            CBD370E1A2640CD57AA561AE46E0E0B30E86A61694DCD51123E7D35FCF8EC599
            2FEDC634EF28C202BA965A4A46052D5DB921A196AAA4CD3B77EE24F8E54A807D
            B4C8EFB9713C35FEE2843BC8EA40ED9916A3D5731A26263992D9FACB0605F48D
            B27B8DAD4DF8F1EC03F07AF3B0491A63181A7E46AFA5D56C907E56761FC6465C
            BC241977AC4CC50FC8E2FBD64413B0F841E004F02080D273B25F47D7C201CF73
            146892CAFC4EF2C3D70FF2FC0FD569BCD7A54B5208B2CBCF8F31EE41A38B47B1
            949F3B84BF1BCED702DDB0D5AC7DAAE476834D42F0BA51F3498AF9CA3964F36B
            47F0C8DC03E8A427EEA64D2C6785AA0D3C320839940CB159204B3AE49B09F251
            4F582A3C9E54B0777E4356B7C8576B464A7A2DF93025BAF4DA61434E6E21BAEB
            6B9141865FFDDE0E9C3125CCB5E1C4802D90B52950ACE26BB3A54A5BC632308E
            0DD28C99A628CDDA1DE543F3C2135541123CB1D61D067CFE4E61E64BD8217231
            13D7BA26AE6E5A916086FD59BCEF0875AA8036E0B90A29B157D305DAA7317489
            05E77C9184215F50E678FD181182618861DECB8E12599853CE783714374EDA81
            42273D716F2F2A1DDA745EC1765B5DBB032CD966966ED7AE5DC637B7B5B5D5D1
            693CEA094B85C793EEE09BD7AA5A14B82A2F5DF320AEE4E8FE3E745181153DAD
            8DF04BCEC5E83F6D25D81118B7948DE0038BC5A3CD448DE44347CD87905DFC79
            281B75011977FDB278DC652482C50D81BF9FD2A20929153A5A4D7F88AF1F20C8
            F7A9538CC6BB987E034B674D06E93E434DC1C4CFA4B66A95C7E51CC85E7ED658
            1EC5F2B3E632A94D8DC3F07949B8704586D94F3782AE68B8F1FF74190BB25D20
            5362CE7C371C63FFB8052199F9668E447F64507F01CD4EC9D00857028C898DC5
            860D1B8C7C489B6920B678C2D01D1E4FBA43DFD4E70DD2B4675A3717B3CD3746
            C9E0E2621533AA1A4BE1A0F5EB696BC2E6B0349CFDD2269C39850F2A969039D2
            E66F74707048F3B5E67EB5BCAFAF318CA185BA8855DA1564F9F50C4DC4DF212B
            C8247737436B7AB7AD4834E05EB124891DC45CA0CE62470EA71573DB4A6D3E54
            676A7F86E66286B1EA3B83B9C36B7A22CE99C511B13E1B2F1EA9C6CFBD1D66A3
            CC7093BC5D8BCDDAB43966691A6B83100C7F7E0376C5649AAAB39123B6829E59
            6B82229A72962463CB96CDA6129443E3C82F61657DB5270CDDE1F1E4A941ADFE
            036FD62EB14FCF4C377F50B5A8A0C87CA855253A815699EEA47E694BD6867082
            F7A71DF09A126A1832EA0B06139434501B53B452213064A534BF3092400D23A3
            2429EE5DAADA8A358ED76BC3BBA65DF5DA5DA569A57A18DF3F8260EA9E6307B5
            58FB0147B0E386D3666AEBDAD079740E5FB866121FDE518059D14DD853D48BE9
            710DB8ED4B3A1226EED1EAE4F9EC98057194984478BD178AD164F2EEE84C36BD
            17AD8D4DA8AC72EDAE557E12C89A675605283BA7D94EE2D3CC91FFDAE9B89D1E
            1E4F9E1667F2665BB55AA08DD6A9EC4D7DDDA2D04AB0951CC96C5339B23CD7A6
            7110EC83A9B9F8DEE43DE64B35C366C733C1B8AA4769A0BCB618348C20AB6C17
            CB95E9C72DD15E6B02CAA32670E4C1471044B16EF88254D311C395D016A4989F
            47B01387D3520E2398C3192378EE5C9ED30AF72D5F66E1E73B0BF0CEB1726CCD
            6A466C753FC2CA07CC5FA3B96E452ACE99E3EA7C6D6FD3FAE7B099B17CD643B8
            FADD1D084ED7125B3F5A9B1A51A5695A5A39914A8640FB35343BF7D5575F19CF
            ACE2846CFE9C6FF8BB7F6BDAE3C9D38389F132F65A845C88D6C51293129169C9
            A4CD2B44296544F2516A73ED6BA8B09799BDCB96D2323C348705CD1FBDE9B323
            C9A024939854D20A5C81AC6429564966CED5D718F47DBE5539B87AA5BE119587
            2B57E7E28A953CB7CC82CB96F1F7CB2DB884D75DB62CC37C63F7DA55D9B8796D
            2EC67F5540608BF0BFBEA5981C5A8555492D386AED426AED00E26AFBB136BD01
            8FECC8C508EAF3997365EB380216D10AD2C2797D1C0DAF17F7E0A7B37DCCB7B2
            E4959BEAF587602A5156EE2AB105B2B4D8DFDF1FEBD6AD33AF493E817C9447FD
            AF473CE2766A783CE929D87B3712EC3425473990B8B858D3C34564B6269C54CC
            68D7BBBE9B28CF2D1939D9D1800FF79CC088377D4C7575CEF458A3DB66829D2C
            1EC9624693389294B11CFA1711E86B56E771681713BC12DCB7B5140FEDB0E3A7
            BB6C78648F1D4F505B7F75A00CBFF72DC74B479C782BB01A9F1CAFC3C284667C
            95D906BFA2764494F522DAD98F638E5E2C4F68C053BBADB8706112BC66C6E36C
            CACA58EAF0188E0AED6FF69A7414A3DEF0C6B43DC7D1D9DD09F4F5417FADDDFC
            115B4AA5BE762C872123209057AE5C69A443568E58E410E8EB3D61E5293C9EFC
            6BC1ECFA387B70403222BDD2FCAB1E42E65D4349006BDA50601710FCE6464D85
            76E348622EEE9C46AF4D767BBD178621D4CF91CB28174A46EED29D3196A06B43
            FBE564F3ADEBF597604AF0F06E077E7DA01CCF1F76E28D805A4C09ABC3F4A846
            2C4C6CC1DAB4764A433BBCF34F627F5107F6E6B7636D4A23A68454E2A7940EF3
            9DC069F13863A62CA06BE3CE30B98F7702CD72D4BDD3F7E3587A019F11E8A273
            70966B31571BF15D7BE8DC4CD63CC6B265CBCCB7ADB4DF84A473D2CA3D204CFE
            D1F078F26F053FE459825D2F66EB41A2A2A2CCC388E5DF804D27C22C5D6875A0
            46BA3DD00A07B3F727DE2770D9DBD4EE3FECC319938F9BA13C9A9AAA24A7F27D
            243579C442ED664A6122CCC0252BB2CC77B2EFA634FC707B319ED8ABBFBFE162
            F39B414EBC4399782BA41AAF0538F08C6F89F9E6EEF59494D173C8607D456D4E
            22BD333B70A5AC5C0ACE78E738BC9EF5C6156F6DC3D47D27E06C74AD5BB6366B
            CB43192D9C6B13BEEBEF6F647F8BC9FA96951688D9F6C6BABABABFEA97FF5A78
            3CF9F782B5FCD304BC55D646B35762B6F69B096CB15B6C905E3B6CAAA29830C9
            F09E93FAAAF249241596E2F5354770C1EBBBE1F53C25E5CFC770E634FA5B263A
            AD30BBE62098E8283143E6B1DA63221DC92A6D2CE5E53CFEEEA2A599B8941AAD
            3F5F710965E07C02A93989B369DFBC66D039CC4AC159FC5973CD5ABF3C7B4602
            AB5632F8D9EDB8E8D5CDF8F3978148B3328F508BB5FDA0A18A0CAE50D2A34F36
            5F9072F96449848F8F0FD6AE5D6BEC9C983C48B06F4D7FFEA3E1F1E43F12FCD0
            5F52A76AC46C3D9C98ADA125960B6C656A81ACAF1CD804388B9C869A2AEA603B
            FA7B5B9152588C4F7745E1A68F9830B569F1255F78B15038E3F318D7329912A5
            AA49023C7241B201FCEC790938676E22CE9E93C048C259B3137116597B16A5E8
            2C4ACF50CAC33973937186D1DF6078BDB01F67BCBC15DFFFC807D3F6C62283CF
            3160BE6EC72E6F6D31DFF6D29790CAC8E66296D57939ACF8B2734C3B545A6FDC
            B8D1B09A66C0C80525F33177FBBF6B783CF98F0681FE29A3CC65FD4A0CB3B51D
            4ACB3AF9F979E67B8A9212B1DB6C6BA53391FEE94B9AE86C417F673D6C554EEC
            8BCDC1AB9B23F0FDA97E18FAC64E78BDB28F764B5FF03F66FE64C5995309EC74
            824C8087E82B0D0C817D26139C97E68A3F8C74E9EEEBEC34BE772847CB5D9FF9
            E38D2DC7E19B9C8FCA067D5B4000F7986F6CD556EBBB94E59437FD29661B0AF2
            C9623E73466616228F479A8A6FC74E96DF7C7E124A892F93A377FCA96DFFAEE1
            F1E477092648ADCAF892D9032A6AA4655A05D651804B5AA4DDEE69566303EDFA
            528F03D5D5B5E868ACC3C0491E5959EA3B7BE15956AC08CEC09B5BC2F0D8227F
            DC3AFD28CEFBF010867FE087E1EFB323DEF1C3B077F9FABD0318F9BE2F2EF8E8
            206E9F7194D71EC4DB5BC3B13634131179743F35B5E834DF8CED466F470B9AF8
            3955EC54AD926B8BAD9EA588A34E493D83ACD5C6445F3F5FAC59BBC6547C83C5
            88B1706CDFF73CB5FDBB84C793DF3538ACC6F081E6327AB43A23ADD68C96BEC7
            A1B53495EE025C1263ACA0FE1A00C1B6D3736BCA51FB38F417105A3932BA0878
            D7C92634B791792C1AEC954EF305CF04AB13E1396508CE2C41082322AF0C0925
            95B0D8CA61AFAE43435B2BDA3B4E7294B46380C78ED626B3B349D3072AA1B557
            5AFF3B101B3F5BFF331C3D8F9E4B006B7268D3A64DD8BE7DBB49ECCA3D04B99D
            4C5ECCE3459EDAFC5DC3E3C97F26FAFAFAB40CF6161F32950C308C5042D1863F
            7DE7EE54C0AD852AE1E9504AAD28B169E37B392A282DE62B6C04455BBA6AE867
            B5E8DA54A73FF353CF4E68A03BA8C7C99626B4B710083A85B6E6465670F56826
            A00D750DBCBE1EB55535A8AAD0B65D6DC6615097F5FF5C91065B596069D3A6FC
            7F4242BC99ACDFB16307B66CD96288A159389246BBA372499AE7E932CEF4D4D6
            7F263C9EFC57828E640C1F74091FB4858C308B95628DD6D32429717171C6A1E4
            E45A5058404B48C00BA9E32EA7E2DA215546A65730896A138D834CD41E67252D
            6DA2D1B4ADFE10AD96FAB58BD3FC6CAEA930F6CCF57F2D2A355302A5D65256B2
            566AAD6B4E5D9F1B13138D23478E10E09DD8BC79B3D9C7AC7BA808E133B731DF
            6C60F2FB8B15927F353C9EFC7704D9FD4B3E783A193220864BA7E36263111C1C
            8463C7021041A6C727B09427BBA493F99415251FB7639197359AAE8A534590EC
            2259EF0E75A039CF8ED1FE134D03687FB2E938DDA740ECCD37F332F10909080A
            0CC2DE3D7BCC3CC5D6AD5BF90CC7CCE7C8517477777731C7F8F139BF5311F25D
            C2E3C97F5710E48B08F6AB3C4611F81E699FC011C395705471E9FF8115121C6C
            4A7A498D8017FB24317964BC018D9DE4EE84D34360BA43EF717B60B99FC0A040
            33D3269BA6390AC98446953A89234F2CEEE2730591C54F73F4FD47FF9F861E4F
            FEBB838DB9589A4787124A06F54A52B409504C56C23C74E89059E0D4CCD84102
            2FB6692D4EDA2EA9918391C62BDCAF5544C8EFEAAF08485F254D9204EDADD8B6
            6D9B61AE129C5640F4C51D7580360791BDDA45544BA0F792C1CF32798FF1F4CC
            FFEEF078F23F1504FB7C82FC0736723D1B6CD1B0E539A3B562A30054F23C7CF8
            B001DEDBDBDB3052B17BF76E139A0716782A28E412DC2170754E5BB294E4F4E7
            76C472B90E253882ABB0B0B3D751267E44560FF5F48CFFA9F078F2BF1164D355
            04FC5902BE81C72282D142D0FBC53A3916498CECA058AFEA4CEC15BBDD21260B
            4C9358798D6444DA2D6055AD72140DF0BE75ECCC58C64A02FC6BDEFB4A8E94FF
            FAFFD857E1F1E47F3308C050027103419948B05F642CE4B99D3CA6102C3B4780
            AC56156340EC5762D5D11DFCBD74B694D797F21E617CEF66C622FEFC12EF7B37
            AFB998C00FF1F4D9FFCDF078F2FF65109C7308D870C6E58CDB08D8653CFE8460
            CEE2EB590471358F118CE98C83FC7926DF731DAFB986C78B794EEFFDA7FEC761
            FFB980D7FF05C405A0621537E7650000000049454E44AE426082}
          Proportional = True
          Stretch = True
        end
      end
      object btNovoCliente: TAdvGlowButton
        AlignWithMargins = True
        Left = 4
        Top = 6
        Width = 130
        Height = 55
        Margins.Right = 0
        Caption = 'NOVO CLIENTE (F5)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
          6D0000000473424954080808087C086488000000097048597300000AEB00000A
          EB01828B0D5A00000016744558744372656174696F6E2054696D650030392F30
          352F31364CE3C6F50000001C74455874536F6674776172650041646F62652046
          697265776F726B7320435336E8BCB28C00000A55494441545885CD987B8C5CD7
          5DC73FE775E7B5B3B3EFB5BDF6AE9D2C7E24719A509398468A8DE2AAA129694A
          2B51539542858A10151522FD833F418A4A115024FE80B651204A1551A4B694B4
          498B2A4AA2D4AD441ED4751C48D2C4AF5DEF7A77766776E771EF3D2FFE98B1B3
          214EBB761DE0484747579A7BBE9FF99DDFEB1E1163E4FFF390FFD7003F6DE89F
          75833FF8F84727B531335AE909A5551538ED9D77CEBB4577DC9EFEDCF71FF999
          F617577BC4BFF3E10FDE618CF9B031E64E6DCC8D5A69A5B402C03B1F9C77AF39
          6B4F586BFFDD5AFBC8E7FFE12B67FE57003FFAFEF70AA3CD9F69AD3F9524C618
          63D0C6A095660320CE3B9CB5586BC973BBEA9CFB9C75F68147BEFE78B812BDAB
          F1C1BF8EC4FB85C06CF60521188EC43F01FEEE4AC5AE08F0D7DF77F70781DF8B
          11BC8F849F62FC085817E9A481DC0622FCC6D17BEEFEC3B705F0C8C1DB0C317E
          3284880F914A59210574D288BFCCA15917C9B2C8CCD684A3EF19E1E6DD15F23C
          02F19347EF39B26DB3BA9B8EE2A92D430772CBED31C287EE1AE5F69B2A9C5F76
          1C7FD9F2CA1CB4D388E95B34CF224355C92F1C2871C72D030C5513EE7C678DBF
          78C4F1C2CBEB3B0B89BC1DF8DA3505B436CEE62E96EE3D34CA7D4776E2F5285B
          B75BF6EFA9B370618D738B394B4D0841B07D5CB37D326162BC4A1015ACCFA994
          3BDC7B688C1FBDB446370DD39BD5DD7C1E1471CF70D570F79DDB11C52D443180
          576554F97AB60F36999AAEE3F375881E9D5488AA4C40135D1B7C4E08919D5B0D
          5BC60AB43B76CFB5058C7F54D9315978EFDEEB6A4C4E8EE09C0799135140118A
          93C4C216A44F21E40422D175886E1D8203022146CA05D8315920B7EA56F84209
          3ED1BD2680CB4FD7C76EB8BEB27FFFEE6190106C8E4081504401E40E443FDEA2
          23860C7C178285E088C18177144C647C48E2433209A1005C1B40E7CD7BDEB177
          4C4F8E26842CED71088120F680A40604107B160B790F3264C49843B0C4E8205A
          66A7344E946698FBF1F54CF1EC350154C2CECC4C6A8A49C4D92E5146448C44E9
          415A906A03A0EF5B2E2786147C1F34E45897B16F574216B45C3FD5DC56BD5680
          21C433128B1281E02242F6E084CC4118907203608068897D48424EF419841CE7
          2D83C540D7299A5D73B6BA09ED4D01E6413F1A527B88901F2D162331064474C4
          A87B5B880DF93E06C0F57D6F0364C811D1923A4D16F48399183DB119ED4D370B
          CF7DF963535313FA995AD16D416A90062114A0881B00450C8027467F29488896
          E82D9140DBD74ED4DDE4C1BD473ED3DE8CEEA64BDDCFFFDAC373B9955F4D2D08
          DF01D7E9A512DF06D702D75BA36F135DA7F7EC5362DFFF44CCC943812C575FD9
          2C1C5C61C39A59FF59A3CD478C486B4A7488A21FBD4270C90763ECAFA13F1D22
          7ABC28D1CE4BAFAEB7ED9F5F89E6157533B3F73C74C606797FC70D1042849042
          C8C0A7AFCF7E7AE9F99EED619B215A61C435D6DD6FEDFBC0DFB7DE3640801D47
          BEF0601E92CF7643D5C700223A88FEF5197CCF724221741959D9462B8CFAC57A
          FEFB37FEEAC34F5DA9DE55B7FC8B4FFEEE378CF4F728DF209129824844218446
          E812982AC18CB2DA48999F9FFBE281A38F7EE26A74AEFAA34912D68A83337837
          4EDA59460A875206A12B043D800B8666BDC1F285F3ACB7DACB57AB73D5805AB8
          2095A2501AC7166B0467B13EE043C47633D26E03976714134D2C1BFBB6010A21
          4ABBB626D5FD7B264A21192D160A35F583FF98DBFAE803876FBBA56A11AA8056
          8A28417B8773168540CB22B951789773663E3DB87BDFFE5B4A038379312E850B
          0B8B76B9BEB6DE4AE92EC5B83EF693F437FAA01042DC7CE0170F55CAE5038383
          D5D9A15A6D3A291447AA65B3AD94C491E5FA6AE5FCF9054AE511EE7DDF5DFCD2
          2D15D2E5134C8C9419281791522008786F595B5BE7FCC2327A608633ED29FEEA
          C17FA6DD6A317BFD0E868647429AD9F92C0F2B9D6E77BE5E5F79B9D56ABDD26C
          368F9DFCE133CFBC095008210E1FF9E58F8D8F8F7D7A62626277B95CD2448175
          8E10026996D1A8D731C6502A97C9B20C84E24F1FF863F2E62BD44F7F8F21D364
          7430412949A3D1A0DE29206B37327BEBAFF0E5AF3EC1635FFF1A13E3A374D38C
          3CB70C8D8CA0B5416B45620C2106DA9D767771F1C2F32B2B2B0F7CF75F1E7FFC
          D211DF71F8DDBF393D3DFD50A954E2C285251ACD35F2DC22048410C8BA2D26C6
          C75066980B4B4B78EF68B55A9C38719C8307EFA0509BA5557F9553F34F43BE4C
          B2F52EC6666FA03A3CC9D9B9733CF1CDC7E874BB2C2C2D53299769AD37397DFA
          14A658414A0140A150607878A8343E36FE2EA5D43FEDD97FEB91FFFAD1F34FE9
          A95DBB6BBB67673F3D7FFE3CCD46138440298510BD176308E4B9636E7E1E797E
          814A650093248410F8D7EF3EC90DFBF692A55D9E3EABF9CBC7CA4C4FECC65704
          F71F5A676F8C9C3B7B96F985054AC502AB2B2BCC9D3BD34BF208A2D0883E609A
          A6D4EB75A49454AB03666ADBB64FEDBFF5B6637AD7AE9D7BDA9DCEBE3CCF9152
          2200EFDE187411E8767314012525CE7972EB3879F23FC9AD65A456E55BCF3ECB
          4B75C7BC03A1CFF3EC7515EEDA3FC3DF3CF830599A1243C0DB8C4EBB4B40502C
          96C8F3F44D41E13DACD457D0461F1E181CDCA2BD0FBB9CB5E45976C96A6F0C23
          1011468707191CACB1DA58A393A6C41878F5D4299EF8D6B7B9EFFDF7F1DC8F97
          286A41D9085A3E727C6E9D932FBDC2B1EF1D23CF737C08140B09333BA769AE36
          69ACADF76BF89B478C8192AC8C144BA5314D8CCA3987CD3284BC7CE573DE6194
          40294DBBD3C67B8F10824EA7C3D34F3D493B99A0D9B5289300504A34A71B199F
          F9DB2FB1B4384F5449EFAEC6598C56B4DAEB74D32E5A5D3ECB85104892022184
          AA9652AD45C0058FE4ADCBDE527D8556BB4DAD5623F31EE71C8931BCF8C2099E
          591B25ADFC1C85FE1F4CB4E46C2367E1E4698CCD01D58B562D3937778E34B714
          92023EF8B7048C31A2956ECBA4909C956F61B98B430841A15824CD2D2B8D5592
          4493188314916E4C58EAC85E9370F1F780758E74601BE80205A3314AB1B2DAC0
          3A4FB150BCBC3B6DD494324B92A421CBA5D2A29472090431467E52F3902409CE
          0596EB2BC4E82919892D8EE14BA3FD4EFAF52183251FDA8919182678CBF2CA0A
          3E444CDF0D2E37628C841010422011732649D665B93CB02A95FC7EB952C12409
          5AF79AD018C325E08DE0C6188454AC361A743A6D645226AA02F046C05E1F5862
          3DCD6934D7504AF7F77E1DE67F4EA5144992502E57904A3D373834D4103146DE
          75E8DDD3528ADBACB5D739E76E0E21DC1C82DF157C287AEF75CF277AB7035CDC
          30449CCD00417BFA30F9C44D14CA86E240095D4CC8AD20FCF09B9853C7D08512
          17DD4808D1B39094BDB426254AE98E9272414AF9BC36FA79639297420C3F38F6
          6FDF39AB8510C418CF0097AE683FF2F1DF36A75F3B3D9E67F9EE10C22E84D829
          8498F2DE6F0DC18F851887895405D5E8F3EEA0593D5E6C0C6D57B132D9DB4025
          14175FA4B8FA62AE8687232A59239249494348B5A8945C1588D7209E42C8735A
          EB17764CCF9CFBC72F3D94BDE11484E0E2C784A457F62EAEA6BF0A406D983593
          24E3A57265D418538B312A639241E1D2627BFC1D3725EFFCC0874A835564CCDA
          9DEF7CFE8B49F3EC62D425EF5CBEE6BD6F6769BAD26EAD2F02CB40DEF70B4FAF
          1678C0F5D78B33FC3747339497645D0FCF0000000049454E44AE426082}
        TabOrder = 5
        OnClick = btNovoClienteClick
        Appearance.BorderColor = clNavy
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object btEditarCliente: TAdvGlowButton
        AlignWithMargins = True
        Left = 138
        Top = 6
        Width = 130
        Height = 55
        Margins.Right = 0
        Caption = 'EDITAR CLIENTE (F4)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
          A20000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC0000001C74455874536F6674776172650041646F626520466972
          65776F726B7320435336E8BCB28C000006C7494441544889C5974B8C1C571586
          BFFBA8EAEAEE999EB17BC6F6243836B1B10D218640444820428014A228121242
          224282052CB2C92A48EC0081802D0B84946D58B0601529425920041B88C24338
          3179F915DB8933B6E3A9E947757557DDC76151E3B1E71129128A385249DDB7EE
          BDFF3DFFF9CFB9A79488F0FF307BF3C79FEF38F8EBCE7CF69452148012A13B19
          4C7FBBFCE8EAD3F77EFD78285FAF1214A0A272970E4C179E7971FCBF002B11E1
          C5A3773FBEEFD0DEE7D3CC12A38080490DBEA04A4E5EBEB4F248E5E3441B0034
          D6FAF2C6AFAE7FF7B9A7D52F73F4AA05146029A69779F5FC1FE4D96FD61FC8E3
          4E92DC37BA38A01CCC504A81409448FFCEE5563AEA1C93AA86D0E0E23574AB23
          C756AE3C80EE803AD08CEB661D4B1F790AF8CD07020EF954C52864466FBE0835
          F8B244BDB7CCDA0B8174D92141215191B697F854E7345F78EFF7AC318FC14114
          627F818572F4C4B97DDFFF5BD1ED69514A35BB093144538EFD3B0FE757AF6C52
          FDCACAE11F29F8194A21212031A280E0038B4796682FCD13BD6F08051085559E
          8C9A80DE1C4604672C5E995B53016D2DCA28EAB11BE5676F3C76F2EDB7FE6A37
          5E2A94221605A69D61E6E72046B4C0F84A49350ED8B66D76B9250FC680266CA1
          50704475DB98D6C4614E8881D6F242AFBDB7F338D00047ADF0A3319D871E64E1
          E73F21DA042591E63C0AF11144D864EE366FB6FC97861401442222409AC09555
          F21FFC90F1EBAB240B73D9668C27211062A4FBE4F7C80FDD05F93ADA5A8C3118
          63489284344D514AB1A1BD2DA636404584DAD5B8DA1142208440740EF3A507B1
          DF7982E14F7F81EDB6E326F0D87B7C9A60AB9A70F122BA76586B49D3944E3BA3
          529AF57282B516A534BB9988E09CA3D369A3504CA7535C5DE3BD435C45D03032
          0ABB419A05188D26E3B1C0ECEA1AB1B788A96BB2ACCDDC5C97B84171312E6865
          2D8C360DFDDB380E31329BCD1068E61733C69309B3E9149939DCF535C675C5DC
          A02801EC571EFFF8E74FDED1BEC78E6A5A6FFC0BC92F6342C05A4B6FB1CF3DF7
          DEC79E3D8B2C2D2FD3E97448D204BD2DD651045F3B2665495996E4EBEBBC76FA
          14C3F51B78E789598B70E52C6EB185EF25C79E7DE4D8C3EAC74F7EB9FAC663F7
          27693B516E3205110445A7A579E5CC2A97E26738F189934C8A218B0B0BB4B20C
          A30DB7E74B8881AAAA180C06743A3DCE9E798D3BE3DFF9F48915CA5A5022600C
          B69DE1664E9EFFE3BF9D0D31A6C361C181A4C71DCB3D621404213186E5CFA63C
          F3C269D6F2C31C3F7A887EBF4FB7DB2549924D85DF8CED643221CFD73873FE1D
          CAEB2FF3D5470F91D80C17024AC058C3B5E1947C50280931B53E44371A4E934C
          6B32A59A5A0DC41859ECB579E088E52F6F9E62B9DF0389D475459AB6B600D775
          C5783C225F1F71F68D537CF1A306A55A5CCF2718DD88D168C560BD60382AA97D
          7476B1DBE2E491FD68A3A96A7F2B5795221F947CF2EE7DBC74EE02E7DE3ACC91
          432BCCAA1959966DAA5B24329B554C26056FBD7D8D747A9E93470F920F4A9456
          C48D6B3784C84A7F9E03FD79CE5CBC8A1D4C2A5EBB789DFE42877EAF4388F1B6
          0221380F0F1DEFF2BB97FE8997CFD1EB64A4596BD3931822555531292B5E3DFD
          0FBE757F9BE0152146D4AD628A518AD5B5827C543218CFB022820B1117842842
          BC0D18A098D67CECAE258E9FBDC0F9537FA2BF670EAD356CD67F2186483E9C70
          746FCD89C347288A1A4190782BE994D6F81070211022D8F9768B630797305A51
          BBAD75B7F13A3218557CFB6BC771DE35D46D3B1C5AA3D55E529B90E713420C5B
          BC6DA80E2C2F76E8F7BABC7EEE2AB698D65C78376771AE4DAFDB626727A4F05E
          C8D70AACD19B31DB6A01AD14E350E183EC2C308D64786F50329C548CA7F506D5
          BEA140443655BDDD9C07E77732B29BED7636AD1521449CF38410B1ED2CE1AEFD
          8B18A3A9DF676311B04691584388B28DC4E6D2305AE17DC00761C70480080B73
          6DE6BB2DFE7376153BAB3CEFDE1831DF69D1CDD25DA9B44633AB3C2FBE728961
          31C598AD174508915E37E3BEE377D24E13DC760D005A2906C594C9B4665A3974
          9088F3111F2231EEFE68149757D7591B8EC95A066BD596A7D532E4A3824BABEB
          A0D4FBEEE343C0F9D0509DA596FD7BE63046E342DC95A569ED5959EE91658610
          846D77047123147BE63BCC6ABF6B8C03C25CBB45A795D2CE526C55076E8C2674
          5B29ADD4B29BB6442289351CDCB7B7C9F3EDC8D288A7721EE7C38E4E059A2545
          E929AB9A59ED1A55FB10712162A3F07E5F16B3DA53B9D0148F1DC94273B9DC6C
          8F76D94329858B6123A4824D13237BE7DB58631A6F766F309A82201025B053B6
          0DA0D2BB056A63BD08DD2C214B0D6962C58A485A6DE4D687FD19A51484181162
          6A5F3E73EDB9B7AF8DACBE596D3E2C7075B32914D647D3F05F3822D8C90CA917
          B50000000049454E44AE426082}
        TabOrder = 6
        OnClick = btEditarClienteClick
        Appearance.BorderColor = clNavy
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object btConsultarFrete: TAdvGlowButton
        AlignWithMargins = True
        Left = 271
        Top = 6
        Width = 130
        Height = 55
        Margins.Right = 0
        Caption = 'CONSULTAR FRETE (F1)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
          6D0000000473424954080808087C086488000000097048597300002E2300002E
          230178A53F7600000016744558744372656174696F6E2054696D650030392F30
          352F31364CE3C6F50000001C74455874536F6674776172650041646F62652046
          697265776F726B7320435336E8BCB28C00000B2A494441545885CD987B705DD7
          55C67F6BED73EEC3BAB22DCB4FC5AEA99DC489839DD0C40EA129F14C4B53331D
          3A851918C8C4D03C18A68F4949181A28B429D3195AA6A569DA421FB8B46EA785
          692004689236A14D93B861D26227B5E318C796254B962559D6EB3EA47BCF397B
          F1C73E8A65497E10FE61CDDC199D7BF7D9EBD3B7D6FAD6DA5BCC8CFFCF16BDCE
          F7AEE1F85F5D855BB187D16716513B4096F420690DB1367C6919BA68132CBDA9
          918EECDD155FFB770DCA5D8FCFDD24A3763D70C051699DCF915C2A832914A389
          BDEFB2BE6FBCDB575FBAC54D0DAEF1CD1E101013C40B2078F520867A010FBE50
          81CA35505CFD032DADFF129B1FDC87701428786A3B0C7EE8A824FF2780D3D5EF
          7FC01DDB73773CF6FC16A6FBB1AC0502A60AA6201982800819A0667815C467A8
          81794041B584EFDC41BAF2D6AF17D67FF05F80FF04062FE4FB6200B7F883EFB9
          47CE3C77A7548F6202A82006991A20381F169A84E7FC0143C079F039BBEAC3F7
          DE23F16258F9CEC42EBFEF4BDAFEA60FBC2E80BEE7B3D7C999EF7D5F467EB482
          A4012EF78D043AF08818DE2B2A1E8F0BF02CFF1E87E25F032F336E04F06009F8
          E5D7216B6FFFA6AEBFF70E2001C8A8BE1978C9D15E3B3FC017FFE0469B7CEE29
          265FAE889BF39B451860EAC12BA219DE04C1230622E19F10530CC3C423289283
          7D6D1B14493DC44BE0CA8FF5B3E19EEB81E18CEA3A60C8D1DE5A18E0E1BFD861
          A7BEFA84357A8B228AC8B91B7B55D47B4C14EF0D4D03A7DE81B8229235F11622
          9A458053343344CEF5E3453073884F11B7185BBFEB51BDFA73BF0164B3D79D03
          D0C60FBDC30EBEE751265F2880C304DCB9EB01879987CCF00EDCEA5F85B5B741
          C736706D903660F210F4EDC1061E45B21422813900CD944C04519024430A4B61
          D3C79F6AAE7FDFFD034CEDDB40D9E602BC8103BFFBBCEFDD1385B00A331977AE
          096966441DDBE04DBB69D83A4EEC7F8433479FC624A3D0BE9C655D37B0FAEAB7
          539153D8A17BB1A11F20918280D75C820879E9C51011480D69BF9274EB9E473E
          DB71E3AFDF3797413BF2A1C7E8FEFC4ECB1AA8E4F844604E0A5802B6E656F486
          7FE6D5BDDF61FF77EF65D9AA4D746D79078B16FF1C121568D64FE3E288AE6BEF
          A05C12D2FD7722FDDF4463101F85A2991719C83CC8B26DFD3FBDE985376E87F4
          2CC0D3DFFB253BF4877BA5F64AAE140AE267489CB50350E9821DC7D8FFC42779
          E5BB0FB0FDF6DD5CBEFD8E79CE00D2A4898B8A644993EA93BF4887BC08E230F2
          9C9C9D5E805984A0E6377DE43FDCC60FBF1BA8292076EA5B7F698D6E4C6586D7
          99723CD70CB8E20146074F70E8B107B8E9F7F69C05E75332F364E6B1FC23518C
          598A2B149958FB618EF402850C11636E718680792C6B891BFCF7B7D13CD91EA8
          AAF6BCCDD70EFE32BE999397D36633AFCDC2E91CAC7917479FFD0CEBB6DECA1B
          AFBF1D0F1886578720A8858E120A4C50510458B9E1268E0C7570B41B70128223
          67E185B4342472F8FA7FC1F14FBD3F001C797497D40F07EDB5D9B45B5E79B943
          0F14578076D098E865E3F6BBF2753E0043501144257FD6100551008AA5652C5E
          BE9E978F404FBF401C123D809C11FFDC6733C54FF5BD17D8A636B9F716694E85
          0DE79A1118929092DE1501A3BDF32A1677FD0206885FE0BD05CC5C842B947031
          1CEECD38DE278813C45C1E210B7E0C440D265F594ACF43AAD21C596796E7C47C
          4DC150F0165A5D6B18D2713ADEB09D456D2BC2EFEAE7BFB48065499D6C7A9062
          04912AC7FB3D27FA1C448135314366485290A957F0C647D5EADD88CB595E50F5
          0C3117726C7A0A1BDDC7EA4DB7928ACF7BEF05797BEDAFD66837C9681F1A09CE
          09E21CC78732FA06F202C99BBDE5080D439AC33B956428507B1E178A4724432D
          07D4BF9B72A58342A11DBFA09083651EF31E8FE1F39C1E38F00DD224C339419D
          112B4491A777C8737248026BCCD4808419B3FA6394A4354B512E444708B39DFA
          276CECC788BA2095321FA2D79C150F2A427DF42883FBBE4A5C84482DD48ECB88
          140A4E19386D9C1C322C12440D310D50A6FBD1999623E7E5F01C3A43E33FF47E
          CCB740CF3274EEB2BC15E5E08F3E751F496D122D28A64224A04E5081C819C430
          34E63935E883164B129423994651C34CF3B1F712ACA070663F1CF96880B20083
          82041645E8FFE917183CF8AFC48B945804E71C4E0D47905C51283AA3A0C2E898
          32340CA68288215A444D0B2016AAF5525834C081EF79109B7C31CF420B123AB3
          24D7CF667D80DE673E4229822882483D2A09EA82E6AB061685F0EC8A305E758C
          8C1272B1BC06D56815DE0C5337AFFD9CD722419AD3E8C9BF0FF0BC0499301F86
          540BB27BEA67DFA63E394A5402558F39C349A8511542C1A8E13430198911158C
          F1068C8C3BFCE21B50CAEBBC1888650B866BAE79014925B078E67148EB98E67A
          281ABA48BECF64F7BF51D620212A0470328B39F1380DEC49408E332356A53EED
          A94F97BE1D65CD63DF51D5DFBA88A0CD4208DE0519B0895791E91EA86C266B36
          486BC3D4C78F9054FB6955FBA88FECC395409D0FC02454B52AA804365D9E6F9A
          4F4FAA0EF529858E8D4CA7CD87225DFBFB99EFFE6BD437B824906AA81941F78D
          C9C39F6324DB0ABE46216AA3D0BE9CE2D28D54565FC744DFB3D47A9FC6C51200
          690027399BCE29AA86203831C485B38BA91095BBFA3AB77D7A3A928EB77E5EE3
          6FFD0E53C758A81DCFB599C390A4862DBD9AE2DADBE8F025225120239D1A276D
          0EE1EB4358328EBA1CD00C38F23C7441F3542CFF3DF464759E58634A2BB6FF08
          7851597ECBCBAC7AFB84D9A51128E2C3F94C415A13B4AA3DF8661D9F36B1B445
          546CA7D47105F192D544713924BFFA70F650C339C1458A6A9E932AA80BD348A4
          2066C44B36B368C3DD7B72374CD2F59B9F60F1E6B9D3FDC2E61515C38B91C515
          A4BC1AB184A43E40AB3942B335469634387DF06BD44E3E4FA9E0027B6238119C
          867C7362A8866A5642254792E1A232F19A9B9F95659B9E04D026B52DD6B1E3D3
          B674DBE3F346FC05CCD42326200E1D3F023D0F51685F4FB9F30A8AA5954440D6
          18249B1AA61CE5FD4995482152098C119813519C0470AA41484BCBAE196FDB70
          D71FA54C6F4EA95DAB40AF42CACF7F71C056BE139F42385A2AB6509730037C18
          2222A8242F513DF049C64F3C4F6B6A1857EA64A2EF49AA879F208D85C8099A87
          18C9DB81868156D450A7A873441EA225EBD0AE5FF933EDB8F605A01FE8997DEC
          541B78E4363BFEB13D8CBD04CE85DB828B51EAA1E561BC6D178D680DC9D04F98
          EADF4B162714D470A2E0329C48AE8186AA22EA894411712009B18B286FD8F5B0
          6DDFBDAB604353E3D39F6065F933F36E1662061ED96DFFFDC7B7533D0AF1C59B
          9F01A2CA74C373EC04D45A5028090527445E7191E1238FC3CE0AB41A310E8B84
          C8529C28C5AD7F9254B67CFC2AA0BB654365604741563DBEE0DD4C36F0E52FEB
          9187EEA6FA3272912B4E8F602238533C9E9E01A8D5A118195941F2CE10A42600
          F43801718AE2718576CA6B763EDD76F33FBE0F383477FFF35FBF0D3EF6203D9F
          BA271BFD216A20E230C9F23A7279E80D4CF1E21191FCD8A8F40F1BD58611C72E
          EF1E3361CD5007050B871DD7B684B6ADF7BF5ABAF2FEDB809F2C04E382F783AD
          E9E1BF7107EFDAEA469F7B739A8C0527E2F3DBAB995573A66A810C617818EA53
          4A5CC85013CC49180632238BA074D95B69BFFCCEBF8DDEF0DBEFBD5084CE0BB0
          45A392B2686301AAEEF0DD6FA17EFA2B8C3E13938C2119581486D22024F32F98
          3C196726A05A87C841E4C1952AB8CECD142EDBF9B3C59BEFBD1F5D7C08E87D5D
          00136A370313299563656818ACA1FF2B1FA2EF8B575A32BD531AC74152C81224
          65E6E493739A1F87C531568B99CA2A943AAFA969E775FFD0B6E5CF9F8EE3CE87
          81E685805D14E0852C997CEE466D9CFCA09C7A18A91FBF4C4A97BDC5B231B004
          21C24715B4DEFD2CC5E527D355BF466B2A7B70D1E63FED0306FEB7BEFE077D94
          2CBA4E827F5A0000000049454E44AE426082}
        TabOrder = 7
        OnClick = btConsultarFreteClick
        Appearance.BorderColor = clNavy
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
    end
    object AdvGroupBox5: TAdvGroupBox
      Left = 406
      Top = 5
      Width = 622
      Height = 650
      BorderColor = clNavy
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      DesignSize = (
        622
        650)
      object Label1: TLabel
        Left = 320
        Top = 551
        Width = 78
        Height = 16
        Anchors = [akLeft]
        Caption = 'Monitorar por'
        ExplicitTop = 564
      end
      object Shape1: TShape
        Left = 371
        Top = 520
        Width = 20
        Height = 19
        Anchors = [akLeft, akBottom]
        Brush.Color = 16774120
        Pen.Color = clNavy
        ExplicitTop = 535
      end
      object Shape3: TShape
        Left = 250
        Top = 521
        Width = 20
        Height = 19
        Anchors = [akLeft, akBottom]
        Brush.Color = 6618980
        Pen.Color = clNavy
        ExplicitTop = 536
      end
      object Shape4: TShape
        Left = 131
        Top = 521
        Width = 20
        Height = 19
        Anchors = [akLeft, akBottom]
        Brush.Color = 3342335
        Pen.Color = clNavy
        ExplicitTop = 536
      end
      object Shape2: TShape
        Left = 3
        Top = 521
        Width = 20
        Height = 19
        Anchors = [akLeft, akBottom]
        Brush.Color = 6579455
        Pen.Color = clNavy
        ExplicitTop = 536
      end
      object Label2: TLabel
        Left = 28
        Top = 523
        Width = 100
        Height = 16
        Anchors = [akLeft, akBottom]
        Caption = 'Acima de 45 min.'
        ExplicitTop = 538
      end
      object Label3: TLabel
        Left = 153
        Top = 523
        Width = 92
        Height = 16
        Anchors = [akLeft, akBottom]
        Caption = '30 a 45 minutos'
        ExplicitTop = 538
      end
      object Label4: TLabel
        Left = 273
        Top = 523
        Width = 92
        Height = 16
        Anchors = [akLeft, akBottom]
        Caption = '15 a 30 minutos'
        ExplicitTop = 538
      end
      object Label5: TLabel
        Left = 394
        Top = 523
        Width = 86
        Height = 16
        Anchors = [akLeft, akBottom]
        Caption = 'At'#233' 15 minutos'
        ExplicitTop = 538
      end
      object Label6: TLabel
        Left = 508
        Top = 523
        Width = 107
        Height = 16
        Anchors = [akLeft, akBottom]
        Caption = 'Retirada no balc'#227'o'
        ExplicitTop = 535
      end
      object Shape5: TShape
        Left = 485
        Top = 521
        Width = 20
        Height = 19
        Anchors = [akLeft, akBottom]
        Brush.Color = 16750652
        Pen.Color = clNavy
        ExplicitTop = 533
      end
      object JvLabel3: TJvLabel
        Left = 10
        Top = 38
        Width = 93
        Height = 16
        Caption = 'Buscar cliente'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -13
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = [fsBold]
      end
      object cxgrDeliveryEmProcesso: TcxGrid
        Left = 2
        Top = 62
        Width = 617
        Height = 454
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxgrDeliveryEmProcessoDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxgrDeliveryEmProcessoDBTableView1CellDblClick
          DataController.DataSource = dsVendaDelivery
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideSelection = True
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          Styles.OnGetContentStyle = cxgrDeliveryEmProcessoDBTableView1StylesGetContentStyle
          object cxgrDeliveryEmProcessoDBTableView1id_venda: TcxGridDBColumn
            Caption = 'Venda'
            DataBinding.FieldName = 'nro_venda'
            Width = 40
          end
          object cxgrDeliveryEmProcessoDBTableView1nome_cliente: TcxGridDBColumn
            DataBinding.FieldName = 'nome_cliente'
            Width = 122
          end
          object cxgrDeliveryEmProcessoDBTableView1nome_entregador: TcxGridDBColumn
            DataBinding.FieldName = 'nome_entregador'
            Width = 69
          end
          object cxgrDeliveryEmProcessoDBTableView1data_hora: TcxGridDBColumn
            DataBinding.FieldName = 'data_hora'
            Width = 50
          end
          object cxgrDeliveryEmProcessoDBTableView1data_hora2: TcxGridDBColumn
            DataBinding.FieldName = 'data_hora2'
            Width = 53
          end
          object cxgrDeliveryEmProcessoDBTableView1data_saida: TcxGridDBColumn
            DataBinding.FieldName = 'data_saida'
            Width = 47
          end
          object cxdbcMinutosPedido: TcxGridDBColumn
            DataBinding.FieldName = 'minutos_desc'
            Width = 53
          end
          object cxgrDeliveryEmProcessoDBTableView1sit_001: TcxGridDBColumn
            DataBinding.FieldName = 'sit_001'
            Visible = False
          end
          object cxdbcMinutosSaida: TcxGridDBColumn
            DataBinding.FieldName = 'minutos_saida_desc'
            Visible = False
            Width = 69
          end
          object cxgrDeliveryEmProcessoDBTableView1minutos: TcxGridDBColumn
            DataBinding.FieldName = 'minutos'
            Visible = False
          end
          object cxgrDeliveryEmProcessoDBTableView1minutos_saida: TcxGridDBColumn
            DataBinding.FieldName = 'minutos_saida'
            Visible = False
          end
          object cxgrDeliveryEmProcessoDBTableView1retirada_balcao: TcxGridDBColumn
            DataBinding.FieldName = 'retirada_balcao'
            Width = 45
          end
          object cxgrDeliveryEmProcessoDBTableView1id_venda1: TcxGridDBColumn
            DataBinding.FieldName = 'id_venda'
            Visible = False
          end
          object cxgrDeliveryEmProcessoDBTableView1valor_venda: TcxGridDBColumn
            DataBinding.FieldName = 'valor_venda'
            Width = 49
          end
          object cxgrDeliveryEmProcessoDBTableView1data_agendamento: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'data_agendamento'
            Width = 51
          end
          object cxgrDeliveryEmProcessoDBTableView1hora_agendamento: TcxGridDBColumn
            Caption = 'Hor'#225'rio'
            DataBinding.FieldName = 'hora_agendamento'
            Width = 42
          end
          object cxgrDeliveryEmProcessoDBTableView1observacao: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'observacao'
            Width = 28
          end
          object cxgrDeliveryEmProcessoDBTableView1cep_003: TcxGridDBColumn
            Caption = 'BAIRRO'
            DataBinding.FieldName = 'cep_003'
            Width = 98
          end
        end
        object cxgrDeliveryEmProcessoLevel1: TcxGridLevel
          GridView = cxgrDeliveryEmProcessoDBTableView1
        end
      end
      object rgFiltroVendas: TcxRadioGroup
        Left = 8
        Top = -9
        Anchors = [akLeft, akTop, akRight]
        Properties.Columns = 3
        Properties.Items = <
          item
            Caption = 'EM PROCESSO'
          end
          item
            Caption = 'EM TR'#194'NSITO'
          end
          item
            Caption = 'EM AGENDAMENTO'
          end>
        ItemIndex = 0
        Style.BorderStyle = ebsNone
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Transparent = True
        OnClick = rgFiltroVendasClick
        Height = 38
        Width = 612
      end
      object btMenuOpcoesDelivery: TAdvGlowButton
        AlignWithMargins = True
        Left = 499
        Top = 545
        Width = 120
        Height = 48
        Anchors = [akRight, akBottom]
        Caption = 'A'#231#245'es Delivery'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 20
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btMenuOpcoesDeliveryClick
        Appearance.BorderColor = clNavy
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        DropDownButton = True
        DropDownMenu = pmOpcoesDelivery
      end
      object btCancelar: TAdvGlowButton
        AlignWithMargins = True
        Left = 254
        Top = 599
        Width = 120
        Height = 48
        Action = acCancelarpedido
        Anchors = [akLeft, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 31
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
        Appearance.BorderColor = clNavy
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object rgTipoMonitoramento: TcxRadioGroup
        Left = 255
        Top = 549
        Anchors = [akLeft, akBottom]
        Properties.Columns = 3
        Properties.Items = <
          item
            Caption = 'Hora de pedido'
          end
          item
            Caption = 'Hora de sa'#237'da'
          end>
        ItemIndex = 0
        Style.BorderStyle = ebsNone
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 4
        Transparent = True
        OnClick = rgTipoMonitoramentoClick
        Height = 44
        Width = 227
      end
      object edFiltrodelivery: TEdit
        Left = 109
        Top = 34
        Width = 510
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 5
        OnKeyDown = edFiltrodeliveryKeyDown
      end
      object btConfirmarsaida: TAdvGlowButton
        AlignWithMargins = True
        Left = 129
        Top = 549
        Width = 120
        Height = 48
        Action = acConfirmarSaida
        Anchors = [akLeft, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 35
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 6
        Appearance.BorderColor = clNavy
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object btAlterar: TAdvGlowButton
        AlignWithMargins = True
        Left = 4
        Top = 599
        Width = 120
        Height = 48
        Action = acAlterarpedido
        Anchors = [akLeft, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 15
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 7
        Appearance.BorderColor = clNavy
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object AdvGlowButton3: TAdvGlowButton
        AlignWithMargins = True
        Left = 129
        Top = 599
        Width = 120
        Height = 48
        Action = acVizualizarPedido
        Anchors = [akLeft, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 25
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 8
        Appearance.BorderColor = clNavy
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object btReimprimir: TAdvGlowButton
        AlignWithMargins = True
        Left = 3
        Top = 549
        Width = 120
        Height = 48
        Action = acReimprimir
        Anchors = [akLeft, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 54
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 9
        Appearance.BorderColor = clNavy
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object btFinalizar: TAdvGlowButton
        AlignWithMargins = True
        Left = 380
        Top = 599
        Width = 120
        Height = 48
        Action = acFinalizarPedido
        Anchors = [akLeft, akBottom]
        Caption = 'Finalizar(F6)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 8
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 10
        Appearance.BorderColor = clNavy
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object btOrcamento: TAdvGlowButton
        AlignWithMargins = True
        Left = 444
        Top = 291
        Width = 107
        Height = 55
        Margins.Right = 0
        Caption = 'OR'#199'AMENTO (F7)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
          A20000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC0000001C74455874536F6674776172650041646F626520466972
          65776F726B7320435336E8BCB28C000006F4494441544889B597DBAF5D5515C6
          7F73CEB5F6E59CD20B6DE9E500D6DAD05A9A3614A9122B98F8203E688C266A42
          487CF1C5F847F0E203890F9AE813213E98682ADE126F44A244D3887084DA8A82
          B505DA73DA03BD9DEBDE7BAD39E718C387B5F6B968401F64266BAF979DF18DEF
          1BDF1C632C67663CFCB527EED8BE75F3B473EE6EE3BD390E50D5DFFDF4EB5FFD
          044001B07BC7ED8F06EFEF72EE3D426D8F993DF4C5C79F3C79EAF1AF9C2E0096
          96073B42F00E036B7E68981B0E47AFD7C1F13F64E54044A9EA4843C2FDDB9B22
          679902286EFFC8639B1F7BF4D31FEC9425CE398AA2A0280245089465418C8997
          5E398F99E1FE8B24A2CA6D137D3E7CEC10AA46CA999C8594332967CC8CBA8E47
          8053EE8953BF3D7DE8E0818FDEB1730765595084D024EFC07B8FE4C4B79EFC01
          E7DF9CA5DBE9BC2BF07054F1A9874FF085CF7E9298153343D58875A44E892CC2
          952B6FD57F7DE5EF5F2E5CD9B9475C607130A22C4BCAB2D810ACDBE970FCC83D
          BC7D639E6EA77C47503563EBA6090E1FFC000BC3484AB95141941823316572CE
          A80F8EA2DC57C494AFA8C84E00AC29EE7A45638CDC7FDF514EDC77A42922E09C
          C3CC30C03B87619836A5487872CAAB8E30D3366EE31A554DA32A5E2B54E586AA
          9A9A3955455509C16FAC9DF3089EA228E89405D568447F7212E7A0AA6A82F738
          1FA8EB7A1560AC82AAA2664DA266986A4E29CE1739CB0D69908338C5ABE0BDDF
          C0DA54E976BB54A3013F7AFA1966E7AE71F0C03E9C73CCBD759D5155F1B9CF3C
          C2DDFBF631188E56D98A3444540D35C50C542D8FAA7AD167919BAA6AAB7F1045
          4436D6B9DB6569619E6F7EFB299E397D865A1C13DD0EFD4E49283B9CFDE715BE
          F19DEF72EE2F67999CE8636350910DE06686A8A4C170B4E873925B22AAAA8AA8
          904510C96491A686DEA39278EA7B3FE4F2B545B66EBE0D80955164306A4CB369
          A287FA0E4F7DFF67CC5E9EA1280AB264440469E38ECBA8AA69617169D9A79C6E
          8988886AC356952C8A642167A1DBEDF2DCEFFFC86B6F5C65D3641F33C33BE896
          814E192882C730CA225009FCF817BF417346A489A3EBE5564554E3A599B99522
          A634DFE01A20B04EE5C2C1C2C202A7A7CFD2EFF7570D52763A6CDFB10380F941
          8D6963A8895E977FBC3ECB858B6F3075E79D88C486B51832662C1A2FBE3CBDE2
          EB3A2EE496B188216D8D73169CF3BC7979969BF34B9445D35872CE6CDBB68D93
          274F70F26327D8BFFFFDA49C5793CDA2BC76E10D1C86682B755B6F55238BD636
          F3A7415155715144938A60AB56B6B10379EBDA4D44D7AE88F38E9C338BCB431C
          5055D586565A84C0DBD76F11535A957B9C80AA9173AECD4C8A95E1605144B3A8
          E268868399270410C90C47F5DABD546330AA195575A30850C7C460D874BD4E59
          E09CA3AA1331E575CE1EB315724A154031BFB0B89C728A228A73ED546A6B99B3
          E07D33974495ED9B27F9F889A36CD9B695D1A8068C5D3BB6F1F9471EE2CADC35
          5E7BF32A003E7854B475F62A5372332C2A003F333BB792628AB97562234F9365
          4C99897E1FE71CDE796E2D2CB177CF4E3E74FC18C3D188E1A862CF9EDD3C70FC
          28D76FCEE39D434D99ECF7501BD7D6C680A494C9B961EC5F7F697A25E51C634A
          A4945A1736E075ACD9BE6D33DD6EA7A9BB0B3CFDF367B97C7906EF43337962CD
          A99FFC926B0B2B1445C0CCD8B5733BB9AD6FCA4DDC9412314562CA2300CFD5E9
          618AB14EB1A94B4C8931FB3A26B66ED9C2D4EE9DC494290ACFA0167EFDEC73A8
          643A9D92E79F7F91F397E6E8753B88289B26FADC35B587D1A86A0173FB34E039
          A506D8CC34A654C7144929B69925624CE494895978E0D8BD389AD9DAEB76B970
          F96DFEFCD219AECCCE727AFA2CBD7E0F078CEA8AA3870ED0EFF7A8AA9A864C24
          8EE3C6488A6908EDCE9552AC628C8450A0AA142120211024907266D7AE3B78F0
          F8BDFCE1C5734CF47BF4FB7D5E78F96F9C39F72AF812EF1C83AA66FFD46E8E1E
          39C4D2CAA055ADE9078DB11A32A9655C00C498AA58478A42512D90A084208410
          F0DEB3B0BCCCD1238731355E38FB2AA2460A9E5112CC8C941207DFB797930FDE
          CFB08EAD579A4624AD9B73CEC45813535CC738368C5595A04208450B2A04EFF1
          DE9152E2F0E1834CEDDEC9F9D72F71FDD6126ACA964D13ECBF7B8ABD7BF730A8
          1339A555478BE4B6E7B7C07524A70D52A7615DD7880A85146B6C83C7FBD0CE67
          471D139D6E9FFB8E1D41B5611B7CA0CEC2CDA51568FB7133709A2B99A501952C
          0DE3B84EEAAAAA2CA5D4344BB36673302368C007C33B876BC12B11AABA66DC44
          AD5D6BDAED82B52927FFC138A5CC60799155E0B9994B6754E4D16EAFD74AEBF1
          61CCB491DA39B7D693C76F1BF7F5B567DDDC5D9780A0220C062B5C3C373DE39C
          C3B5FBF29DBB0F1EFF52D9E94C8EC3E156573BD69D7759ACDB2CDA8EBFB67A35
          4BA1C3B1B27063717EE6C2AF808B63E009603310DE39F0FFED2C9BD992337BAF
          3ED3DEFDFC0BAAFE96B62CE2FA920000000049454E44AE426082}
        TabOrder = 11
        Visible = False
        Appearance.BorderColor = clNavy
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object btSair: TAdvGlowButton
        AlignWithMargins = True
        Left = 500
        Top = 599
        Width = 120
        Height = 48
        Margins.Right = 0
        Anchors = [akRight, akBottom]
        Caption = 'SAIR (F9)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          8700000B40494441546881D5595B6C565516FED6F94F5BA888C04F6981721318
          8BB494E2504D2C8CC50A836D21C42AE0138F354C8C28907174124663E6C5F8A0
          643469A2C3A0BCCC388168190D622217A1805CE2243240B9B55A157AA1FFDFCB
          7FCEDE7BCDC3DEFBF4FCB7B660326476B273D6DE7BAD7D39EB5B97B30F3133FE
          9F8B9B6DE0FAA9530B077B7AAAC8710A8899180001081F37DCBE537A84712185
          F879EC840927665656FE9B88D2DF363327D54B478E6CEF6A6BEB5152B2929295
          52CCCC494F5BC3ED3BA547E435FBE86E6FEFBD7CE4C81F53F74B61085D6D69F9
          647665659DF8E927F43537C36F6D05F7F7EBB742A4DF0C91A64D1B76CCB643FD
          94DA9F2A93A19FC23C8E03B82EDCC242E4AF5A859CE2625C3B75EA8B594B973E
          11F0DB039CFFF2CBDF975457FFB9EFC001F47DFE39BB454504C7611081888889
          988808568D8E63570B7840C46643968FC871821740A14DDBFE91C6410402E05D
          BDCAB90F3C40F7AE5983F3070FEE28A9A9F913003800505D5DED4E993BF70F7E
          5B1B62FBF773A4A040AB4829B09443D5B6CD13868652BACF56CBA371000CC763
          E6B173A58E43CF839C59B32871FE3C272E5C40E1FCF95BABABAB5D0088ECD8B1
          03538996942E5BF6BB5BBB7703AE4B0008CC003301B096A3FBB47D25F53373F2
          98951DEA4F2ECC810187FBD27853DA9109132871EE1C26D6D4E44E039AE75654
          7CEF02408EEF570380D7DA0A67D22466ADC221B85848380E31C0213B48860D33
          1B3C07F083761D56C6F2131141190859D824D9858518F350BFE340DCB8011021
          5788C7009C70CD2B9C0200321E07DD779FC6778A208882376717485D30A96DE5
          4DE564E3677B18B68A30361076180086E4ACE6A4B4439301C021226266871C07
          4A08B0520429C9E09E58293238D54FA56C1F298D5382E161CD4306F36478B3F6
          2BA5480901A5D4903D1928856D00B65FCB68AD314788885C7D300E8C474999AA
          EEC00BD93E45041FC02040B9449C17892012E6674E9335080B60C98E4309668E
          BB2EE5F93EE7472270B5CD055E0856232198057B35F691148995B5FA61A0A11C
          07034A215E5242A54F3D85F673E7A8EBB3CF78A23E4446190EF7035044E89712
          BC6409952C5B86D88D1B74FDE38F39AA145CC76102C05292855C10A1CD01C2C5
          D11667FCB1525042901242C3434A62DD869292A494E8F33CEA2B2DA5F28D1BE1
          E6E561766525A20D0DD4E5FB10062A4A08B0109A3610527A2E482929EEFB84A5
          4B31F737BF01390EC6171662CE860D749319BE5E9BC2EE540931E4B6A50CB413
          1C8001BB79D8D0CD5222944E4048C931DF47BCAC0C8B1A1A0217C74AA1A8A404
          D18606740AC1BE95B52947681EA11462BECF5C5989FBABAA34C6CD1CF91326E0
          FE8D1B7193993D2186E494E2E0207ADE2408396175B0351ECB6C838B10480881
          BE050B50B17E3D329569A5A598DCD0405D42C00F073FED18209542CCF380471E
          A179CB96659CE39E681473366EA49831D6A4203A549264DC30842C5434DC0870
          1CAD4A22C499A9E2D96787FCB629E1F6F4B2321011FDB4670F263A0EB99188B6
          1BA5A88F19EE638F617E75759A6C788E7B0B0A30989F4F321E4744C7221D0F94
          2210410901729C20083AC19B570A8A194AAB8F95F1484A4A6621902325B79D3D
          9B14EEADFAC3F4D4071FC4940D1BD029252784605F08F40AC1545585F9D5D569
          FCA973745EBB86DCEE6E865D5F08362ED766A99A3FAC81207932860B22ED7B89
          C87A8E3C22EAD8B50BB9E3C661DAC285193560E9E98B168199A963CF1EE400C8
          5BB1824A6A6AB2F2DB67577B3BAE7DF821A28E4390D2BA728B77B27B0CCF9114
          07ACE1D8148088D81E84887822115D79E71DE6CD9B69DAC28581E7B29B08D3D3
          CBCA90D7D888FE9E1ECC2C2F375906A5F1DB67675B1BAEEEDA8549444CCC6022
          52267E04318919CA06C76C7140E993278775E3B61C224C047079E74EE6CD9BA9
          78D1220C5726CF9A059A3327D874B672E3EA555CDCB993A344C48E03E138A048
          048844E0B82EC835DB741CBDBF50090E406650093114408C1141BF3D627D089A
          A8142EBFFD36E8851730BDB4340D12B7435F3B7D1A5F3DFD34663253B70E5A43
          EB1B0891EBC2C9CD251A33064831627D000321A9141C21188EA385954AFD5821
          18B58EF73C7CFBCA2B9478F965CCA9AC1C164ED9E8CB274FE2D0FAF598C9CC2E
          00A55389F44F64CF23F4F707FD6910B223365098371EA80D00542201D9DB0BD1
          DB0B118B410D0E2207C0D10D1B38F1FEFBB460C58A4CE8C85A5A4F9CC0A1F5EB
          790633B9660F77723FA2E380F142524A442C8400C8588CFC9E1E885BB7A01209
          AB350A0B1731D3B14D9B30AEB91933CACA828987834DD7F7DFE38B679EC16C29
          C9D5B616BE6E087FE764A4C3A944B21712025E4F0FFBDDDD10B76E114B39DC2D
          08A017E65C21D0D5D646C5C6BD8E04A1445F1F5C21C044CCFACAE6B66E64B27A
          A181F6F6113D46B808005D4AA160CB162A7FF2C951CB16CD9B8787DE7D17671B
          1B51042067D42BA697342FC423AB9000409ACD4FDAB285566DDB16CC119E6F38
          7A717D3D9899CE3636A210A0D0214607215392538950C8CE424329C59E527C53
          088E6EDD8A55DBB605EA1C2EC5C8442FAEABC392A6267428C589EC6BA6D159B3
          519572EB95A9FACCE8520AD1975EA2555BB7E29796F2DA5A3CD4D4443F02F046
          B17EE60F1AE3859409D5A6A6D1BE52E8929226BFF822ADDEBE3D506738A709D3
          7DDDDD8877760ECB036838FDBAA9893A989118667D4B938E535920C4CCA626D1
          3E33772A8529DBB7E3B7DBB78F089B4B2D2D682A2DE5A6B232B49E3C99154EF6
          595E5B8B873FF8003F02EC67583F4C0F0BA14C553223AE14A2CF3F8FD1C0E652
          4B0B9AD7AEE5E99E87E989043EADAFE7D6932747942BAFADC5AF5E7F9DFA9482
          CCB217950942569D86814C0D68C98CEE3163A8F6D55703086483C495D3A7F1E9
          9A3528F23CCA61A61C664CF53C6AAEAFC7A596968C100AF72D5ABD1A5ECAFAA9
          749A170A54AB6D20CDF25929E4F5F7736B4BCBB01F34978E1FC7DED5ABB92891
          80ABE598954244292EF43CFEB4B616DF1D3A94F5834649893D9B36719EB9531D
          B517B20D6506D2AC9E19F732E393B56B71FDDCB9CCB0397E1CFBEAEB79AAE7C1
          B597532179971945BE8FCFD7ADE3F3870FA7C93333DEADABC3F86FBE817BBB5E
          C8966C9853CC7098519848E0EF2B57F2B5B3679326B972FA34F6D6D5A1289140
          C42C922ACF668E29BE8FCFD6ADE3F35F7D95B4F9BFD4D521FFC8118CD11DC3EE
          25ED00D68D1A6F446CBF7A423494225729140D0CD03F9E7802974F9D02005C3C
          760CFF5CB91245838370C3D78919E681527095A2299E47FF5ABB165F7FF4117A
          7EF8013B6B6A907FF830C63283B2AC1FA6C36E343999D3EA1EF6975604E0C2C1
          41343FFE3806A64EA5B11D1D5CA8142226B1E3ECB2011D0150E0FBF45D63237F
          0BD0788073CDB8BAA364CE6A401BD588B9900B202A25B8BD1D0490C5E128F2A8
          808E00C8373499278F420EC8904E03D07F527273A11289D1FE54B40BB3CACE3F
          1AFAB6D269272FCFDE6CEB3633F3A0EF7703407E71F1A87291BB59F38B8B0100
          9E94DD6C3E4571ADB3F3389851F0E8A3E8BD787154E9F4083CB74B8F9A77CAF2
          E50033AE74761E07A0FF528E1F3F3E7AE9CC99B6C8AD5B63F75755310B610546
          FC22CBC073BBF4A8799D9C1CAC3E7A94E4B871FDF3962C99D9DBDBDBE900402C
          168B7F7DF0E0DFA2151558FCDA6B8448E4AE4325B592EB62F11B6F50B4BC1C47
          0E1CF820168BC5030D9076AA85C7F6EDDBFF487D7DC5CD3367F09FF7DEC38F87
          0F237EFD3A94E7E16E94485E1EEE99310385CB9763C173CF215A5E8EA3FBF69D
          AA5AB7AE0EC0CF9C129E230066ED7EEBADDD1D172E0C0497BC523233273D53FB
          7F093D1A5E2504775CB830B0EBCD37FF0A60268048A099A1B805105104C0C49C
          9C9C99CFD6D73F5C367B76C53D63C64C40BAE1FEAF0AC70707BBCF5DBE7CF6C3
          BD7B8F016807D0CDCCC1FD62D201824EFDF32F0F402EB466EE66910012003C66
          16A983FF054EA9F05E5ED854820000000049454E44AE426082}
        TabOrder = 12
        OnClick = btSairClick
        Appearance.BorderColor = clNavy
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object btAtualizar: TAdvGlowButton
        AlignWithMargins = True
        Left = 314
        Top = 369
        Width = 125
        Height = 41
        Anchors = [akRight, akBottom]
        Caption = 'Atualizar'
        ImageIndex = 21
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 13
        Visible = False
        OnClick = btAtualizarClick
        Appearance.BorderColor = clNavy
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object Memo1: TMemo
        Left = 644
        Top = 387
        Width = 41
        Height = 33
        TabOrder = 14
        Visible = False
      end
      object btConsultarIFood: TAdvGlowButton
        AlignWithMargins = True
        Left = 287
        Top = 522
        Width = 120
        Height = 48
        Margins.Right = 0
        Anchors = []
        Caption = 'Consultar IFOOD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 22
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 15
        OnClick = btConsultarIFoodClick
        Appearance.BorderColor = clNavy
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
    end
  end
  object qrBuscaCliente: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'cli_001, '
      'emp_001, '
      'cli_002 as nome,'
      'cli_012 as telefone1,'
      'cli_013 as telefone2,'
      'celular1,'
      'celular2,'
      'cli_014 as celular3,'
      'cep_004 as endereco,'
      'cli_008 as endereco_numero,'
      'cli_009 as complemento,'
      'cep_003 as bairro,'
      'cidade_desc as cidade,'
      'cep_002 as cep,'
      '0.00 as credito_cliente,'
      'sit_001 as status,'
      'obs_bloqueio'
      'from clientes '
      'where sit_001 in (4,5) -- ativo / bloqueado'
      'and true -- Aqui vem o filtro aplicado via codigo'
      'order by  cli_002')
    ReadOnly = True
    Left = 792
    Top = 176
    object qrBuscaClientecli_001: TIntegerField
      FieldName = 'cli_001'
      Required = True
    end
    object qrBuscaClienteemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrBuscaClientenome: TWideStringField
      FieldName = 'nome'
      Required = True
      Size = 80
    end
    object qrBuscaClientetelefone1: TWideStringField
      FieldName = 'telefone1'
    end
    object qrBuscaClientetelefone2: TWideStringField
      FieldName = 'telefone2'
    end
    object qrBuscaClientecelular1: TWideStringField
      FieldName = 'celular1'
    end
    object qrBuscaClientecelular2: TWideStringField
      FieldName = 'celular2'
    end
    object qrBuscaClientecelular3: TWideStringField
      FieldName = 'celular3'
    end
    object qrBuscaClienteendereco: TWideStringField
      FieldName = 'endereco'
      Size = 125
    end
    object qrBuscaClienteendereco_numero: TWideStringField
      FieldName = 'endereco_numero'
      Size = 10
    end
    object qrBuscaClientebairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object qrBuscaClientecidade: TWideStringField
      FieldName = 'cidade'
      Size = 100
    end
    object qrBuscaClientecep: TWideStringField
      FieldName = 'cep'
      Size = 9
    end
    object qrBuscaClientecredito_cliente: TFloatField
      FieldName = 'credito_cliente'
      ReadOnly = True
    end
    object qrBuscaClientecomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 100
    end
    object qrBuscaClientestatus: TIntegerField
      FieldName = 'status'
      Required = True
    end
    object qrBuscaClienteobs_bloqueio: TWideStringField
      FieldName = 'obs_bloqueio'
      Size = 200
    end
  end
  object dsBuscaCliente: TDataSource
    AutoEdit = False
    DataSet = qrBuscaCliente
    Left = 840
    Top = 176
  end
  object qrVendaDelivery: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'v.ven_001 as id_venda,'
      'v.ven_029 as nro_venda, '
      'c.cli_002 as nome_cliente,'
      'v.ven_004 as data_hora,'
      'v.ven_004 as data_hora2,'
      
        'round(extract(epoch from (localtimestamp - v.ven_004))/60) as mi' +
        'nutos,'
      
        'round(extract(epoch from (localtimestamp - v.data_saida))/60) as' +
        ' minutos_saida,'
      'v.sit_001,'
      'u.usu_002 as nome_entregador,'
      'v.data_saida,'
      'to_char(localtimestamp - v.ven_004, '#39'HH24:MI'#39') as minutos_desc,'
      
        'to_char(localtimestamp - v.data_saida, '#39'HH24:MI'#39') as minutos_sai' +
        'da_desc,'
      
        'cast( case when b_taxa_entrega then '#39#39' else '#39'SIM'#39' end as varchar' +
        '(3)) as retirada_balcao,'
      'v.ven_009 as valor_venda,'
      'c.cli_012 as telefone1,'
      'c.cli_013 as telefone2,'
      'c.celular1,'
      'c.celular2,'
      'c.cli_014 as celular3,'
      'c.email,'
      '(COALESCE (pag.total_pagamento,0)-v.ven_009)as troco,'
      'v.data_agendamento ,'
      'v.hora_agendamento,'
      'observacao,'
      'c.cep_003,'
      'v.vendas_pelo_ifood,'
      'v.correlation_id_ifood'
      'from venda v'
      'join clientes c on c.cli_001=v.cli_001 and c.emp_001=v.emp_001'
      
        'LEFT join (select sum (valor) as total_pagamento, id_venda, id_e' +
        'mpresa'
      'from venda_pag_antecipado '
      
        'GROUP BY id_venda , id_empresa) as pag on pag.id_empresa=v.emp_0' +
        '01 and pag.id_venda=v.ven_001'
      'left join usuarios u on u.usu_001=v.id_entregador'
      'where ven_024='#39'D'#39' and v.emp_001=:id_empresa'
      'order by  v.data_agendamento,v.ven_029')
    Filtered = True
    Filter = 'sit_001=8'
    AfterOpen = qrVendaDeliveryAfterOpen
    AfterRefresh = qrVendaDeliveryAfterRefresh
    Left = 496
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end>
    object qrVendaDeliveryid_venda: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_venda'
      Required = True
    end
    object qrVendaDeliverynome_cliente: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nome_cliente'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrVendaDeliverydata_hora: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'data_hora'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qrVendaDeliveryminutos: TFloatField
      FieldName = 'minutos'
      ReadOnly = True
    end
    object qrVendaDeliverysit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
    object qrVendaDeliverydata_hora2: TDateTimeField
      DisplayLabel = 'Hora Pedido'
      FieldName = 'data_hora2'
      DisplayFormat = 'hh:nn'
    end
    object qrVendaDeliverynome_entregador: TWideStringField
      DisplayLabel = 'Entregador'
      FieldName = 'nome_entregador'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrVendaDeliverydata_saida: TDateTimeField
      DisplayLabel = 'Hora Sa'#237'da'
      FieldName = 'data_saida'
      DisplayFormat = 'hh:nn'
    end
    object qrVendaDeliveryminutos_saida: TFloatField
      FieldName = 'minutos_saida'
      ReadOnly = True
    end
    object qrVendaDeliveryminutos_desc: TWideMemoField
      DisplayLabel = 'T. de Pedido'
      FieldName = 'minutos_desc'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrVendaDeliveryminutos_saida_desc: TWideMemoField
      DisplayLabel = 'T. de Pedido'
      FieldName = 'minutos_saida_desc'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrVendaDeliveryretirada_balcao: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Balc'#227'o'
      FieldName = 'retirada_balcao'
      ReadOnly = True
      Size = 100
    end
    object qrVendaDeliverynro_venda: TIntegerField
      DisplayLabel = 'N'#186' Venda'
      FieldName = 'nro_venda'
    end
    object qrVendaDeliveryvalor_venda: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor_venda'
      currency = True
    end
    object qrVendaDeliverytelefone1: TWideStringField
      FieldName = 'telefone1'
      ReadOnly = True
    end
    object qrVendaDeliverytelefone2: TWideStringField
      FieldName = 'telefone2'
      ReadOnly = True
    end
    object qrVendaDeliverycelular1: TWideStringField
      FieldName = 'celular1'
      ReadOnly = True
    end
    object qrVendaDeliverycelular2: TWideStringField
      FieldName = 'celular2'
      ReadOnly = True
    end
    object qrVendaDeliverycelular3: TWideStringField
      FieldName = 'celular3'
      ReadOnly = True
    end
    object qrVendaDeliverytroco: TFloatField
      FieldName = 'troco'
      ReadOnly = True
    end
    object qrVendaDeliverydata_agendamento: TDateTimeField
      FieldName = 'data_agendamento'
    end
    object qrVendaDeliveryhora_agendamento: TTimeField
      FieldName = 'hora_agendamento'
    end
    object qrVendaDeliveryobservacao: TWideMemoField
      FieldName = 'observacao'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrVendaDeliverycep_003: TWideStringField
      FieldName = 'cep_003'
      ReadOnly = True
      Size = 50
    end
    object qrVendaDeliveryvendas_pelo_ifood: TBooleanField
      FieldName = 'vendas_pelo_ifood'
      Required = True
    end
    object qrVendaDeliverycorrelation_id_ifood: TWideStringField
      FieldName = 'correlation_id_ifood'
    end
    object qrVendaDeliveryemail: TWideStringField
      FieldName = 'email'
      ReadOnly = True
      Size = 100
    end
  end
  object dsVendaDelivery: TDataSource
    AutoEdit = False
    DataSet = qrVendaDelivery
    Left = 456
    Top = 128
  end
  object pmOpcoesDelivery: TPopupMenu
    Left = 464
    Top = 416
    object miConfirmardelivery: TMenuItem
      Caption = 'Confirmar Sa'#237'da'
      OnClick = miConfirmardeliveryClick
    end
    object miCancelarDelivery: TMenuItem
      Caption = 'Cancelar'
      OnClick = miCancelarDeliveryClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object miAltararDelivery: TMenuItem
      Caption = 'Alterar'
      OnClick = miAltararDeliveryClick
    end
    object miDetalhesDelivery: TMenuItem
      Caption = 'Visualizar'
      OnClick = miDetalhesDeliveryClick
    end
    object Reimprimircupom1: TMenuItem
      Caption = 'Reimprimir cupom'
      OnClick = Reimprimircupom1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object miFinalizarDelivery: TMenuItem
      Caption = 'Finalizar'
      OnClick = miFinalizarDeliveryClick
    end
  end
  object ComPort1: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    OnRxChar = ComPort1RxChar
    Left = 590
    Top = 184
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList32
    Left = 494
    Top = 300
    object acReimprimir: TAction
      Caption = 'Reimprimir (F10)'
      ImageIndex = 54
      ShortCut = 121
      OnExecute = acReimprimirExecute
    end
    object acAlterarpedido: TAction
      Caption = 'Alterar  (F11)'
      ImageIndex = 15
      ShortCut = 122
      OnExecute = acAlterarpedidoExecute
    end
    object acVizualizarPedido: TAction
      Caption = 'Visualizar(F12)'
      ImageIndex = 25
      ShortCut = 123
      OnExecute = acVizualizarPedidoExecute
    end
    object acCancelarpedido: TAction
      Caption = 'Cancelar Delivery (F8)'
      ImageIndex = 31
      ShortCut = 119
      OnExecute = acCancelarpedidoExecute
    end
    object acFinalizarPedido: TAction
      Caption = ', GO'
      ImageIndex = 8
      ShortCut = 117
      OnExecute = acFinalizarPedidoExecute
    end
    object acConfirmarSaida: TAction
      Caption = 'Confirmar sa'#237'da(F7)'
      ImageIndex = 35
      ShortCut = 118
      OnExecute = acConfirmarSaidaExecute
    end
    object Action1: TAction
      Caption = 'Reimpress'#227'o'
      ShortCut = 16464
      OnExecute = Action1Execute
    end
  end
  object Timer1: TTimer
    Interval = 30000
    OnTimer = Timer1Timer
    Left = 320
    Top = 192
  end
  object qrEmpresa: TUniQuery
    Connection = frmMenu.conexao
    Left = 494
    Top = 229
  end
  object tmrIFood: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = tmrIFoodTimer
    Left = 32
    Top = 216
  end
end
