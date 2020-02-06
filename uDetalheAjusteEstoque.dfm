inherited frmDetalheAjusteEstoque: TfrmDetalheAjusteEstoque
  Caption = 'Ajuste de Estoque'
  ClientHeight = 486
  ClientWidth = 800
  ExplicitWidth = 806
  ExplicitHeight = 515
  PixelsPerInch = 96
  TextHeight = 13
  inherited CoolBar1: TCoolBar
    Width = 800
    Bands = <
      item
        Break = False
        Control = pnPadrao
        FixedSize = True
        ImageIndex = -1
        MinHeight = 34
        Width = 853
      end>
    ExplicitWidth = 800
    inherited pnPadrao: TPanel
      Width = 853
      ExplicitWidth = 853
      inherited tBarPadrao: TToolBar
        Width = 853
        ExplicitWidth = 853
        object ToolButton7: TToolButton
          Left = 163
          Top = 0
          Width = 8
          Caption = 'ToolButton7'
          ImageIndex = 1
          Style = tbsSeparator
        end
        object btAutoriza: TToolButton
          Left = 171
          Top = 0
          Hint = 'Autorizar Ajuste de Estoque (Ctrl+A)'
          Caption = 'btAutoriza'
          ImageIndex = 25
          OnClick = btAutorizaClick
        end
      end
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 38
    Width = 800
    Height = 135
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label7: TLabel
      Left = 12
      Top = 14
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label10: TLabel
      Left = 102
      Top = 13
      Width = 23
      Height = 13
      Caption = 'Data'
      FocusControl = cxDBDateEdit1
    end
    object Label22: TLabel
      Left = 250
      Top = 14
      Width = 61
      Height = 13
      Caption = 'Respons'#225'vel'
      FocusControl = edResponsavel
    end
    object Label1: TLabel
      Left = 12
      Top = 55
      Width = 35
      Height = 13
      Caption = 'Motivo '
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 102
      Top = 29
      AutoSize = False
      DataBinding.DataField = 'aju_002'
      DataBinding.DataSource = dsDetalhe
      Properties.Kind = ckDateTime
      TabOrder = 0
      Height = 22
      Width = 133
    end
    object edResponsavel: TcxDBButtonEdit
      Tag = 8
      Left = 250
      Top = 29
      Margins.Left = 4
      Margins.Top = 1
      AutoSize = False
      DataBinding.DataField = 'fnc_001'
      DataBinding.DataSource = dsDetalhe
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      Height = 22
      Width = 72
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 328
      Top = 29
      DataBinding.DataField = 'fnc_002'
      DataBinding.DataSource = dsDetalhe
      ParentColor = True
      Style.BorderStyle = ebsNone
      Style.Shadow = False
      TabOrder = 3
      Width = 237
    end
    object gbusuarios: TGroupBox
      Left = 578
      Top = 13
      Width = 214
      Height = 110
      Enabled = False
      TabOrder = 4
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
    object cxDBMemo1: TcxDBMemo
      Left = 12
      Top = 71
      DataBinding.DataField = 'aju_003'
      DataBinding.DataSource = dsDetalhe
      Properties.CharCase = ecUpperCase
      Properties.ScrollBars = ssVertical
      TabOrder = 2
      Height = 49
      Width = 553
    end
    object edCodigo: TcxDBTextEdit
      Left = 14
      Top = 29
      AutoSize = False
      DataBinding.DataField = 'aju_001'
      DataBinding.DataSource = dsDetalhe
      ParentColor = True
      Style.BorderStyle = ebsNone
      Style.Shadow = False
      TabOrder = 5
      Height = 22
      Width = 78
    end
  end
  object gbItens: TGroupBox [2]
    Left = 0
    Top = 173
    Width = 800
    Height = 313
    Align = alClient
    Caption = ' Itens '
    TabOrder = 2
    object Panel2: TPanel
      Left = 2
      Top = 53
      Width = 796
      Height = 104
      Align = alTop
      ParentColor = True
      TabOrder = 0
      object Label2: TLabel
        Left = 10
        Top = 12
        Width = 38
        Height = 13
        Caption = 'Material'
        FocusControl = edMaterialItem
      end
      object Label3: TLabel
        Left = 335
        Top = 12
        Width = 39
        Height = 13
        Caption = 'Unidade'
      end
      object Label4: TLabel
        Left = 12
        Top = 56
        Width = 70
        Height = 13
        Caption = 'Qtde. Anterior'
      end
      object Label5: TLabel
        Left = 154
        Top = 56
        Width = 60
        Height = 13
        Caption = 'Ajustar para'
      end
      object Label6: TLabel
        Left = 335
        Top = 56
        Width = 83
        Height = 13
        Caption = 'Qtde. Reservada'
      end
      object Label8: TLabel
        Left = 512
        Top = 56
        Width = 79
        Height = 13
        Caption = 'Qtde. Dispon'#237'vel'
      end
      object Label9: TLabel
        Left = 388
        Top = 12
        Width = 57
        Height = 13
        Caption = 'Composi'#231#227'o'
      end
      object edMaterialItem: TcxDBButtonEdit
        Tag = 18
        Left = 10
        Top = 29
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        DataBinding.DataField = 'mat_001'
        DataBinding.DataSource = dsItens
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.CharCase = ecUpperCase
        TabOrder = 0
        Visible = False
        OnExit = edMaterialItemExit
        Height = 22
        Width = 72
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 88
        Top = 29
        DataBinding.DataField = 'mat_003'
        DataBinding.DataSource = dsItens
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 4
        Width = 241
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 335
        Top = 29
        DataBinding.DataField = 'uni_003'
        DataBinding.DataSource = dsItens
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 5
        Width = 38
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 12
        Top = 73
        DataBinding.DataField = 'ite_002'
        DataBinding.DataSource = dsItens
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 6
        Width = 70
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 335
        Top = 73
        DataBinding.DataField = 'ite_004'
        DataBinding.DataSource = dsItens
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 7
        Width = 70
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 512
        Top = 73
        DataBinding.DataField = 'disponivel'
        DataBinding.DataSource = dsItens
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 8
        Width = 70
      end
      object edAjustar: TRxDBCalcEdit
        Left = 155
        Top = 73
        Width = 102
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'ite_003'
        DataSource = dsItens
        ClickKey = 113
        FormatOnEditing = True
        NumGlyphs = 2
        TabOrder = 3
        OnExit = edAjustarExit
      end
      object edComposicao: TcxDBButtonEdit
        Tag = 34
        Left = 388
        Top = 29
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        DataBinding.DataField = 'com_001'
        DataBinding.DataSource = dsItens
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.CharCase = ecUpperCase
        TabOrder = 2
        OnExit = edComposicaoExit
        Height = 22
        Width = 72
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 466
        Top = 29
        DataBinding.DataField = 'com_002'
        DataBinding.DataSource = dsItens
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 9
        Width = 320
      end
      object rbCodigo: TRadioButton
        Left = 88
        Top = 8
        Width = 59
        Height = 17
        Caption = 'C'#243'digo'
        TabOrder = 10
        OnClick = rbCodigoClick
      end
      object rbBarra: TRadioButton
        Left = 155
        Top = 8
        Width = 113
        Height = 17
        Caption = 'C'#243'digo de Barras'
        Checked = True
        TabOrder = 11
        TabStop = True
        OnClick = rbBarraClick
      end
      object edBarras: TcxDBButtonEdit
        Tag = 37
        Left = 10
        Top = 29
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        DataBinding.DataField = 'comp'
        DataBinding.DataSource = dsItens
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.CharCase = ecUpperCase
        TabOrder = 1
        Visible = False
        OnExit = edBarrasExit
        Height = 22
        Width = 72
      end
    end
    object CoolBar2: TCoolBar
      Left = 2
      Top = 15
      Width = 796
      Height = 38
      Bands = <
        item
          Break = False
          Control = Panel3
          FixedSize = True
          ImageIndex = -1
          MinHeight = 34
          Width = 853
        end>
      Images = frmMenu.ImgList24
      object Panel3: TPanel
        Left = 2
        Top = 0
        Width = 853
        Height = 34
        Align = alTop
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ToolBar1: TToolBar
          Left = 0
          Top = 0
          Width = 853
          Height = 34
          Align = alClient
          ButtonHeight = 34
          ButtonWidth = 31
          Caption = 'tBarPadrao'
          GradientEndColor = 11319229
          GradientStartColor = clNavy
          Images = frmMenu.ImgList24
          TabOrder = 0
          object btConItem: TToolButton
            Left = 0
            Top = 0
            Hint = 'Confirmar (Ctrl+S)'
            Caption = 'btConItem'
            ImageIndex = 5
            ParentShowHint = False
            ShowHint = True
            OnClick = btConItemClick
          end
          object btCanItem: TToolButton
            Left = 31
            Top = 0
            Hint = 'Cancelar (Ctrl+C)'
            Caption = 'btCanItem'
            ImageIndex = 6
            ParentShowHint = False
            ShowHint = True
            OnClick = btCanItemClick
          end
          object btSep1: TToolButton
            Left = 62
            Top = 0
            Width = 8
            Caption = 'btSep1'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object btIncItem: TToolButton
            Left = 70
            Top = 0
            Hint = 'Incluir (Ctrl+I)'
            Caption = 'btIncItem'
            ImageIndex = 15
            ParentShowHint = False
            ShowHint = True
            OnClick = btIncItemClick
          end
          object btEdtItem: TToolButton
            Left = 101
            Top = 0
            Hint = 'Editar (Ctrl+E)'
            Caption = 'btEdtItem'
            ImageIndex = 17
            ParentShowHint = False
            ShowHint = True
            OnClick = btEdtItemClick
          end
          object btExcItem: TToolButton
            Left = 132
            Top = 0
            Hint = 'Excluir (Ctrl+D)'
            Caption = 'btExcItem'
            ImageIndex = 0
            ParentShowHint = False
            ShowHint = True
            OnClick = btExcItemClick
          end
        end
      end
    end
    object GridItem: TcxGrid
      Left = 2
      Top = 157
      Width = 796
      Height = 154
      Align = alClient
      TabOrder = 2
      TabStop = False
      object GridItemDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsItens
        DataController.KeyFieldNames = 'ite_001'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object GridItemDBTableView1mat_001: TcxGridDBColumn
          Caption = 'Material'
          DataBinding.FieldName = 'mat_001'
          Width = 45
        end
        object GridItemDBTableView1mat_002: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'mat_003'
          Width = 165
        end
        object GridItemDBTableView1uni_003: TcxGridDBColumn
          Caption = 'Unidade'
          DataBinding.FieldName = 'uni_003'
          Width = 45
        end
        object GridItemDBTableView1com_002: TcxGridDBColumn
          Caption = 'Composi'#231#227'o'
          DataBinding.FieldName = 'com_002'
          Width = 160
        end
        object GridItemDBTableView1ite_002: TcxGridDBColumn
          Caption = 'Qtde. Anterior'
          DataBinding.FieldName = 'ite_002'
          Width = 85
        end
        object GridItemDBTableView1ite_003: TcxGridDBColumn
          Caption = 'Ajustar para'
          DataBinding.FieldName = 'ite_003'
          Width = 85
        end
        object GridItemDBTableView1ite_004: TcxGridDBColumn
          Caption = 'Qtde. Reservada'
          DataBinding.FieldName = 'ite_004'
          Width = 90
        end
        object GridItemDBTableView1disponivel: TcxGridDBColumn
          Caption = 'Qtde. Dispon'#237'vel'
          DataBinding.FieldName = 'disponivel'
          Width = 90
        end
      end
      object GridItemLevel1: TcxGridLevel
        GridView = GridItemDBTableView1
      end
    end
  end
  inherited qrDetalhe: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO ajusteestoque'
      
        '  (aju_001, emp_001, aju_002, aju_003, fnc_001, sit_001, usu_001' +
        '_1, usu_001_2, dat_001_1, dat_001_2)'
      'VALUES'
      
        '  (:aju_001, :emp_001, :aju_002, :aju_003, :fnc_001, :sit_001, :' +
        'usu_001_1, :usu_001_2, :dat_001_1, :dat_001_2)')
    SQLDelete.Strings = (
      'DELETE FROM ajusteestoque'
      'WHERE'
      '  aju_001 = :Old_aju_001 AND emp_001 = :Old_emp_001')
    SQLUpdate.Strings = (
      'UPDATE ajusteestoque'
      'SET'
      
        '  aju_001 = :aju_001, emp_001 = :emp_001, aju_002 = :aju_002, aj' +
        'u_003 = :aju_003, fnc_001 = :fnc_001, sit_001 = :sit_001, usu_00' +
        '1_1 = :usu_001_1, usu_001_2 = :usu_001_2, dat_001_1 = :dat_001_1' +
        ', dat_001_2 = :dat_001_2'
      'WHERE'
      '  aju_001 = :Old_aju_001 AND emp_001 = :Old_emp_001')
    SQLLock.Strings = (
      'SELECT * FROM ajusteestoque'
      'WHERE'
      '  aju_001 = :Old_aju_001 AND emp_001 = :Old_emp_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT aju_001, emp_001, aju_002, aju_003, fnc_001, sit_001, usu' +
        '_001_1, usu_001_2, dat_001_1, dat_001_2 FROM ajusteestoque'
      'WHERE'
      '  aju_001 = :aju_001 AND emp_001 = :emp_001')
    SQL.Strings = (
      'SELECT AJU.EMP_001'
      '     , AJU.AJU_001'
      '     , AJU.AJU_002'
      '     , AJU.AJU_003'
      '     , AJU.FNC_001'
      '     , FUN.FNC_002'
      '     , AJU.SIT_001'
      
        '     , CAST(FN_SITUACOES(AJU.SIT_001)  AS VARCHAR(40)) AS SITUAC' +
        'AO'
      '     , AJU.USU_001_1'
      '     , AJU.USU_001_2'
      '     , AJU.DAT_001_1'
      '     , AJU.DAT_001_2'
      '     , USU_1.USU_002 AS INCLUSAO'
      '     , USU_2.USU_002 AS EDICAO'
      'FROM AJUSTEESTOQUE AJU'
      
        'LEFT OUTER JOIN USUARIOS USU_1 ON (USU_1.USU_001 = AJU.USU_001_1' +
        ')'
      
        'LEFT OUTER JOIN USUARIOS USU_2 ON (USU_2.USU_001 = AJU.USU_001_2' +
        ')'
      
        'LEFT OUTER JOIN FUNCIONARIOS FUN ON (FUN.EMP_001 = AJU.EMP_001) ' +
        'AND (FUN.FNC_001 = AJU.FNC_001)'
      'WHERE AJU.EMP_001 = :EMP'
      'AND   AJU.AJU_001 = :ID')
    AfterOpen = qrDetalheAfterOpen
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
      end
      item
        DataType = ftUnknown
        Name = 'ID'
      end>
    object qrDetalheaju_001: TIntegerField
      FieldName = 'aju_001'
      Required = True
      OnGetText = qrDetalheaju_001GetText
    end
    object qrDetalheemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrDetalheaju_002: TDateTimeField
      FieldName = 'aju_002'
      Required = True
    end
    object qrDetalheaju_003: TWideMemoField
      FieldName = 'aju_003'
      Required = True
      BlobType = ftWideMemo
    end
    object qrDetalhefnc_001: TIntegerField
      FieldName = 'fnc_001'
    end
    object qrDetalhefnc_002: TWideStringField
      FieldName = 'fnc_002'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrDetalhesituacao: TWideStringField
      FieldName = 'situacao'
      Size = 40
    end
    object qrDetalheusu_001_1: TIntegerField
      FieldName = 'usu_001_1'
    end
    object qrDetalheusu_001_2: TIntegerField
      FieldName = 'usu_001_2'
    end
    object qrDetalhedat_001_1: TDateTimeField
      FieldName = 'dat_001_1'
    end
    object qrDetalhedat_001_2: TDateTimeField
      FieldName = 'dat_001_2'
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
    object qrDetalhesit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
  end
  inherited dsDetalhe: TDataSource
    OnStateChange = dsDetalheStateChange
  end
  object dsItens: TDataSource
    DataSet = qrItens
    OnStateChange = dsItensStateChange
    Left = 576
    Top = 26
  end
  object qrItens: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO ajusteestoqueitem'
      
        '  (emp_001, aju_001, ite_001, mat_001, com_001, ite_002, ite_003' +
        ', ite_004)'
      'VALUES'
      
        '  (:emp_001, :aju_001, :ite_001, :mat_001, :com_001, :ite_002, :' +
        'ite_003, :ite_004)')
    SQLDelete.Strings = (
      'DELETE FROM ajusteestoqueitem'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND aju_001 = :Old_aju_001 AND ite_001 ' +
        '= :Old_ite_001')
    SQLUpdate.Strings = (
      'UPDATE ajusteestoqueitem'
      'SET'
      
        '  emp_001 = :emp_001, aju_001 = :aju_001, ite_001 = :ite_001, ma' +
        't_001 = :mat_001, com_001 = :com_001, ite_002 = :ite_002, ite_00' +
        '3 = :ite_003, ite_004 = :ite_004'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND aju_001 = :Old_aju_001 AND ite_001 ' +
        '= :Old_ite_001')
    SQLLock.Strings = (
      'SELECT * FROM ajusteestoqueitem'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND aju_001 = :Old_aju_001 AND ite_001 ' +
        '= :Old_ite_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT emp_001, aju_001, ite_001, mat_001, com_001, ite_002, ite' +
        '_003, ite_004 FROM ajusteestoqueitem'
      'WHERE'
      
        '  emp_001 = :emp_001 AND aju_001 = :aju_001 AND ite_001 = :ite_0' +
        '01')
    DataTypeMap = <>
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT AJU.AJU_001'
      '     , AJU.EMP_001'
      '     , AJU.ITE_001'
      '     , AJU.MAT_001'
      '     , MAT.MAT_003'
      '     , UNI.UNI_003'
      
        '     , CAST(COR.COR_002 || '#39'-'#39' || TAM.TAM_002 AS VARCHAR(100)) A' +
        'S COM_002'
      '     , AJU.COM_001'
      '     , AJU.ITE_002'
      '     , AJU.ITE_003'
      '     , AJU.ITE_004'
      '     , MAT.MAT_008'
      '     , COM.COM_002 BARRAS'
      '     , CAST('#39#39' AS VARCHAR(20)) AS COMP'
      'FROM AJUSTEESTOQUEITEM AJU'
      
        'LEFT OUTER JOIN MATERIAIS MAT ON (MAT.EMP_001 = AJU.EMP_001) AND' +
        ' (MAT.MAT_001 = AJU.MAT_001)'
      
        'LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND ' +
        '(UNI.UNI_001 = MAT.UNI_001)'
      
        'LEFT OUTER JOIN COMPOSICAO COM ON (COM.EMP_001 = AJU.EMP_001) AN' +
        'D (COM.COM_001 = AJU.COM_001)'
      'LEFT OUTER JOIN COR COR ON (COR.COR_001 = COM.COR_001)'
      'LEFT OUTER JOIN TAMANHO TAM ON (TAM.TAM_001 = COM.TAM_001)'
      'WHERE AJU.EMP_001 = :EMP'
      'AND   AJU.AJU_001 = :AJU'
      'ORDER BY MAT.MAT_003')
    AfterInsert = qrItensAfterInsert
    BeforePost = qrItensBeforePost
    AfterDelete = qrItensAfterDelete
    OnCalcFields = qrItensCalcFields
    OnNewRecord = qrItensNewRecord
    Left = 548
    Top = 26
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
      end
      item
        DataType = ftUnknown
        Name = 'AJU'
      end>
    object qrItensaju_001: TIntegerField
      FieldName = 'aju_001'
      Required = True
    end
    object qrItensemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrItensite_001: TIntegerField
      FieldName = 'ite_001'
      Required = True
    end
    object qrItensmat_001: TIntegerField
      FieldName = 'mat_001'
      Required = True
    end
    object qrItensmat_003: TWideStringField
      FieldName = 'mat_003'
      Size = 50
    end
    object qrItensuni_003: TWideStringField
      FieldName = 'uni_003'
      Size = 3
    end
    object qrItenscom_001: TIntegerField
      FieldName = 'com_001'
    end
    object qrItensite_002: TFloatField
      FieldName = 'ite_002'
      Required = True
    end
    object qrItensite_003: TFloatField
      FieldName = 'ite_003'
      Required = True
    end
    object qrItensite_004: TFloatField
      FieldName = 'ite_004'
    end
    object qrItenscom_002: TWideStringField
      FieldName = 'com_002'
      Size = 100
    end
    object qrItensdisponivel: TFloatField
      FieldKind = fkCalculated
      FieldName = 'disponivel'
      Calculated = True
    end
    object qrItenscomp: TWideStringField
      FieldName = 'comp'
    end
    object qrItensmat_008: TFloatField
      FieldName = 'mat_008'
      ReadOnly = True
      Required = True
    end
    object qrItensbarras: TWideStringField
      FieldName = 'barras'
      ReadOnly = True
    end
  end
end
