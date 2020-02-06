inherited frmDetalheAlmoxarifado: TfrmDetalheAlmoxarifado
  Caption = 'Cadastro de Almoxarifado'
  ClientWidth = 761
  ExplicitWidth = 767
  PixelsPerInch = 96
  TextHeight = 13
  inherited CoolBar1: TCoolBar
    Width = 761
    ExplicitWidth = 761
  end
  object pcAbas: TcxPageControl [1]
    Left = 0
    Top = 38
    Width = 761
    Height = 492
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tsDados
    Properties.CustomButtons.Buttons = <>
    OnChange = pcAbasChange
    OnPageChanging = pcAbasPageChanging
    ClientRectBottom = 488
    ClientRectLeft = 4
    ClientRectRight = 757
    ClientRectTop = 24
    object tsDados: TcxTabSheet
      Caption = 'Dados Cadastrais'
      ImageIndex = 0
      object Label7: TLabel
        Left = 16
        Top = 11
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = cxDBTextEdit10
      end
      object Label2: TLabel
        Left = 103
        Top = 11
        Width = 60
        Height = 13
        Caption = 'Raz'#227'o Social'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object gbusuarios: TGroupBox
        Left = 531
        Top = 13
        Width = 214
        Height = 110
        Enabled = False
        TabOrder = 0
        object Label15: TLabel
          Left = -421
          Top = -95
          Width = 36
          Height = 13
          Caption = 'Edi'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label33: TLabel
          Left = 4
          Top = 42
          Width = 71
          Height = 11
          Alignment = taRightJustify
          Caption = #218'ltima Altera'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object edDataUltimaAtualiz: TDBText
          Left = 77
          Top = 41
          Width = 133
          Height = 13
          DataField = 'dat_001_2'
          DataSource = dsDetalhe
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object edUsuUltimaAtualiz: TDBText
          Left = 77
          Top = 58
          Width = 133
          Height = 13
          DataField = 'edicao'
          DataSource = dsDetalhe
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 21
          Top = 59
          Width = 54
          Height = 11
          Alignment = taRightJustify
          Caption = 'Alterado por:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 12
          Top = 8
          Width = 63
          Height = 11
          Alignment = taRightJustify
          Caption = 'Data Cadastro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object edDataCadastro: TDBText
          Left = 77
          Top = 8
          Width = 133
          Height = 13
          DataField = 'dat_001_1'
          DataSource = dsDetalhe
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 8
          Top = 24
          Width = 67
          Height = 11
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          Caption = 'Cadastrado por:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object edUsuCadastrado: TDBText
          Left = 77
          Top = 24
          Width = 133
          Height = 13
          DataField = 'inclusao'
          DataSource = dsDetalhe
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 3
          Top = 83
          Width = 208
          Height = 13
          Alignment = taCenter
          DataField = 'situacao'
          DataSource = dsDetalhe
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 16
        Top = 26
        AutoSize = False
        DataBinding.DataField = 'alm_001'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 1
        Height = 22
        Width = 78
      end
      object DBEdit2: TDBEdit
        Left = 103
        Top = 26
        Width = 378
        Height = 22
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'alm_002'
        DataSource = dsDetalhe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object tsMateriais: TcxTabSheet
      Caption = 'Materiais'
      ImageIndex = 1
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 753
        Height = 406
        Align = alClient
        TabOrder = 0
        object GridDBAlmoxMat: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsAlmox_Materiais
          DataController.KeyFieldNames = 'mat_001'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.GroupRowStyle = grsOffice11
          object GridDBAlmoxMatmat_001: TcxGridDBColumn
            Caption = 'Material'
            DataBinding.FieldName = 'mat_001'
            Options.Editing = False
            Width = 101
          end
          object GridDBAlmoxMatmat_003: TcxGridDBColumn
            Caption = 'Descri'#231#227'o Material'
            DataBinding.FieldName = 'mat_003'
            Options.Editing = False
            Width = 357
          end
          object GridDBAlmoxMatuni_002: TcxGridDBColumn
            Caption = 'Unidade'
            DataBinding.FieldName = 'uni_003'
            Options.Editing = False
            Width = 51
          end
          object GridDBAlmoxMatamt_002: TcxGridDBColumn
            Caption = 'Reservado'
            DataBinding.FieldName = 'amt_002'
          end
          object GridDBAlmoxMatamt_003: TcxGridDBColumn
            Caption = 'Estoque'
            DataBinding.FieldName = 'amt_003'
          end
          object GridDBAlmoxMatdisponivel: TcxGridDBColumn
            Caption = 'Dispon'#237'vel'
            DataBinding.FieldName = 'disponivel'
            Width = 74
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = GridDBAlmoxMat
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 406
        Width = 753
        Height = 58
        Align = alBottom
        BevelInner = bvLowered
        ParentColor = True
        TabOrder = 1
        object Label41: TLabel
          Left = 5
          Top = 8
          Width = 38
          Height = 13
          Caption = 'Material'
          FocusControl = edMaterial
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TLabel
          Left = 489
          Top = 8
          Width = 39
          Height = 13
          Caption = 'Unidade'
          FocusControl = cxDBTextEdit13
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 92
          Top = 23
          AutoSize = False
          DataBinding.DataField = 'mat_003'
          DataBinding.DataSource = dsAlmox_Materiais
          ParentColor = True
          Style.BorderStyle = ebsNone
          Style.Shadow = False
          TabOrder = 1
          Height = 22
          Width = 325
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 489
          Top = 23
          AutoSize = False
          DataBinding.DataField = 'uni_003'
          DataBinding.DataSource = dsAlmox_Materiais
          ParentColor = True
          Style.BorderStyle = ebsNone
          Style.Shadow = False
          TabOrder = 2
          Height = 22
          Width = 39
        end
        object edMaterial: TcxDBButtonEdit
          Tag = 18
          Left = 5
          Top = 23
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          DataBinding.DataField = 'mat_001'
          DataBinding.DataSource = dsAlmox_Materiais
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Height = 22
          Width = 81
        end
      end
    end
  end
  inherited qrDetalhe: TUniQuery
    SQLInsert.Strings = (
      
        'INSERT INTO ALMOXARIFADOS(EMP_001, ALM_001, ALM_002, USU_001_1, ' +
        'CDU_001_1)'
      'VALUES(:EMP_001, :ALM_001, :ALM_002, :USU_001_1, :CDU_001_1)')
    SQLUpdate.Strings = (
      'UPDATE ALMOXARIFADOS'
      'SET'
      '     ALM_002 = :ALM_002, '
      '   , USU_001_2 = :USU_001_2, '
      '   , CDU_001_2 = :CDU_001_2'
      ''
      'WHERE EMP_001 = :EMP_001'
      '  AND ALM_001 = :ALM_001')
    SQL.Strings = (
      'SELECT ALM.ALM_001'
      '     , ALM.EMP_001'
      '     , ALM.ALM_002'
      '     , ALM.DAT_001_1'
      '     , ALM.DAT_001_2'
      '     , ALM.USU_001_1'
      '     , ALM.USU_001_2'
      
        '     , CAST(FN_SITUACOES(ALM.SIT_001) AS VARCHAR(40)) AS SITUACA' +
        'O'
      '     , USU_1.USU_002 AS INCLUSAO'
      '     , USU_2.USU_002 AS EDICAO'
      ''
      'FROM ALMOXARIFADOS ALM'
      
        'LEFT OUTER JOIN USUARIOS USU_1 ON (USU_1.USU_001 = ALM.USU_001_1' +
        ')'
      
        'LEFT OUTER JOIN USUARIOS USU_2 ON (USU_2.USU_001 = ALM.USU_001_2' +
        ')'
      ''
      'WHERE ALM.EMP_001 = :EMP'
      '  AND ALM.ALM_001 = :ID')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
      end
      item
        DataType = ftUnknown
        Name = 'ID'
      end>
    object qrDetalhealm_001: TIntegerField
      FieldName = 'alm_001'
      Required = True
    end
    object qrDetalheemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrDetalhealm_002: TWideStringField
      FieldName = 'alm_002'
      Required = True
      Size = 40
    end
    object qrDetalhesituacao: TWideStringField
      FieldName = 'situacao'
      ReadOnly = True
      Size = 40
    end
    object qrDetalheinclusao: TWideStringField
      FieldName = 'inclusao'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrDetalheedicao: TWideStringField
      FieldName = 'edicao'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrDetalhedat_001_1: TDateTimeField
      FieldName = 'dat_001_1'
    end
    object qrDetalhedat_001_2: TDateTimeField
      FieldName = 'dat_001_2'
    end
    object qrDetalheusu_001_1: TIntegerField
      FieldName = 'usu_001_1'
    end
    object qrDetalheusu_001_2: TIntegerField
      FieldName = 'usu_001_2'
    end
  end
  object qrAlmox_Materiais: TUniQuery
    SQLInsert.Strings = (
      
        'INSERT INTO ALMOXARIFADOS_MATERIAIS(AMT_001, EMP_001, MAT_001, A' +
        'MT_002, AMT_003, ALM_001, USU_001_1, DAT_001_1)'
      
        'VALUES(:AMT_001, :EMP_001, :MAT_001, :AMT_002, :AMT_003, :ALM_00' +
        '1, :USU_001_1, :DAT_001_1)')
    SQLDelete.Strings = (
      'UPDATE ALMOXARIFADOS_MATERIAIS'
      'SET'
      '  USU_001_3 = :USU_001_3,'
      '  DAT_001_3 = :DAT_001_3'
      ''
      'WHERE AMT_001 = :AMT_001'
      '  AND EMP_001 = :EMP_001'
      '  AND MAT_001 = :MAT_001'
      '  AND ALM_001 = :ALM_001')
    DataTypeMap = <>
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT AMT.EMP_001,'
      '       AMT.ALM_001,'
      '       AMT.MAT_001,'
      '       AMT.USU_001_1,'
      '       AMT.USU_001_2,'
      '       AMT.USU_001_3,'
      '       AMT.DAT_001_1,'
      '       AMT.DAT_001_2,'
      '       AMT.DAT_001_3,'
      '       MAT.MAT_003,'
      '       UNI.UNI_001,'
      '       UNI.UNI_003,'
      '       AMT.AMT_001,'
      '       AMT.AMT_002,'
      '       AMT.AMT_003,'
      
        '       (COALESCE(AMT.AMT_003, 0) - COALESCE(AMT.AMT_002, 0)) AS ' +
        'DISPONIVEL'
      ''
      '  FROM ALMOXARIFADOS_MATERIAIS AMT'
      
        '  LEFT OUTER JOIN MATERIAIS MAT ON (MAT.EMP_001 = AMT.EMP_001 AN' +
        'D MAT.MAT_001 = AMT.MAT_001)'
      
        '  LEFT OUTER JOIN UNIDADES UNI  ON (UNI.EMP_001 = AMT.EMP_001 AN' +
        'D UNI.UNI_001 = MAT.UNI_001)'
      '  WHERE AMT.EMP_001 = :EMP'
      '    AND AMT.ALM_001 = :ALM')
    BeforeOpen = qrAlmox_MateriaisBeforeOpen
    BeforePost = qrAlmox_MateriaisBeforePost
    BeforeDelete = qrAlmox_MateriaisBeforeDelete
    OnNewRecord = qrAlmox_MateriaisNewRecord
    Left = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
      end
      item
        DataType = ftUnknown
        Name = 'ALM'
      end>
    object qrAlmox_Materiaisemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrAlmox_Materiaisalm_001: TIntegerField
      FieldName = 'alm_001'
      Required = True
    end
    object qrAlmox_Materiaismat_001: TIntegerField
      FieldName = 'mat_001'
      Required = True
    end
    object qrAlmox_Materiaisusu_001_1: TIntegerField
      FieldName = 'usu_001_1'
    end
    object qrAlmox_Materiaisusu_001_2: TIntegerField
      FieldName = 'usu_001_2'
    end
    object qrAlmox_Materiaisusu_001_3: TIntegerField
      FieldName = 'usu_001_3'
      Required = True
    end
    object qrAlmox_Materiaisdat_001_1: TDateTimeField
      FieldName = 'dat_001_1'
    end
    object qrAlmox_Materiaisdat_001_2: TDateTimeField
      FieldName = 'dat_001_2'
    end
    object qrAlmox_Materiaisdat_001_3: TDateTimeField
      FieldName = 'dat_001_3'
      Required = True
    end
    object qrAlmox_Materiaismat_003: TWideStringField
      FieldName = 'mat_003'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrAlmox_Materiaisuni_001: TIntegerField
      FieldName = 'uni_001'
      ReadOnly = True
      Required = True
    end
    object qrAlmox_Materiaisuni_003: TWideStringField
      FieldName = 'uni_003'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object qrAlmox_Materiaisamt_001: TIntegerField
      FieldName = 'amt_001'
      Required = True
    end
    object qrAlmox_Materiaisamt_002: TFloatField
      FieldName = 'amt_002'
      Required = True
    end
    object qrAlmox_Materiaisamt_003: TFloatField
      FieldName = 'amt_003'
      Required = True
    end
    object qrAlmox_Materiaisdisponivel: TFloatField
      FieldName = 'disponivel'
      ReadOnly = True
    end
  end
  object dsAlmox_Materiais: TDataSource
    DataSet = qrAlmox_Materiais
    OnStateChange = dsAlmox_MateriaisStateChange
    Left = 424
  end
end
