inherited frmContasPagarInclusao: TfrmContasPagarInclusao
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSizeable
  Caption = 'Contas a Pagar - Inclus'#227'o'
  ClientHeight = 451
  ClientWidth = 884
  Constraints.MinHeight = 490
  Constraints.MinWidth = 900
  KeyPreview = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  ExplicitWidth = 900
  ExplicitHeight = 490
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 884
    Height = 402
    ExplicitWidth = 884
    ExplicitHeight = 402
    FullHeight = 200
    object AdvGroupBox3: TAdvGroupBox
      Left = 9
      Top = 10
      Width = 869
      Height = 159
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        869
        159)
      object Label1: TLabel
        Left = 29
        Top = 11
        Width = 56
        Height = 16
        Alignment = taRightJustify
        Caption = 'Emiss'#227'o:'
      end
      object Label2: TLabel
        Left = 7
        Top = 41
        Width = 78
        Height = 16
        Alignment = taRightJustify
        Caption = 'Fornecedor:'
      end
      object Label3: TLabel
        Left = 42
        Top = 71
        Width = 43
        Height = 16
        Alignment = taRightJustify
        Caption = 'Conta:'
      end
      object Label4: TLabel
        Left = 602
        Top = 129
        Width = 109
        Height = 16
        Caption = 'Qtd. presta'#231#245'es:'
      end
      object lbFornecedor: TLabel
        Left = 202
        Top = 41
        Width = 73
        Height = 16
        Caption = 'Fornecedor'
      end
      object lbConta: TLabel
        Left = 210
        Top = 76
        Width = 38
        Height = 16
        Caption = 'Conta'
      end
      object Label8: TLabel
        Left = 50
        Top = 129
        Width = 35
        Height = 16
        Alignment = taRightJustify
        Caption = 'Nota:'
      end
      object Label9: TLabel
        Left = 23
        Top = 101
        Width = 62
        Height = 16
        Alignment = taRightJustify
        Caption = 'Hist'#243'rico:'
      end
      object Label10: TLabel
        Left = 210
        Top = 129
        Width = 93
        Height = 16
        Alignment = taRightJustify
        Caption = 'Valor da nota:'
      end
      object Label5: TLabel
        Left = 433
        Top = 129
        Width = 53
        Height = 16
        Alignment = taRightJustify
        Caption = 'Esp'#233'cie:'
      end
      object dtDataDocumento: TDateTimePicker
        Left = 91
        Top = 8
        Width = 105
        Height = 24
        Date = 42696.000000000000000000
        Time = 42696.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edCodFornecedor: TcxButtonEdit
        Left = 91
        Top = 38
        Properties.Buttons = <
          item
            Action = acBuscaFornecedor
            Default = True
            Kind = bkGlyph
          end>
        Properties.IgnoreMaskBlank = True
        Properties.Images = frmMenu.ImgList16
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d'
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 1
        OnExit = edCodFornecedorExit
        OnKeyDown = edCodFornecedorKeyDown
        Width = 105
      end
      object edCodConta: TcxButtonEdit
        Left = 91
        Top = 68
        Properties.Buttons = <
          item
            Action = acBuscaConta
            Default = True
            Kind = bkGlyph
          end>
        Properties.IgnoreMaskBlank = True
        Properties.Images = frmMenu.ImgList16
        Properties.MaskKind = emkRegExprEx
        Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d'
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 2
        OnExit = edCodContaExit
        OnKeyDown = edCodContaKeyDown
        Width = 105
      end
      object edNota: TEdit
        Left = 91
        Top = 126
        Width = 105
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 4
      end
      object edHistorico: TEdit
        Left = 91
        Top = 98
        Width = 675
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object edValor: TJvValidateEdit
        Tag = 1
        Left = 309
        Top = 126
        Width = 105
        Height = 24
        Flat = False
        ParentFlat = False
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloatFixed
        DecimalPlaces = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        HasMaxValue = True
        HasMinValue = True
        MaxValue = 99999999.989999990000000000
        ParentFont = False
        TabOrder = 5
      end
      object edQtdParcelas: TcxSpinEdit
        Left = 717
        Top = 126
        Properties.MinValue = 1.000000000000000000
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 7
        Value = 1
        Width = 49
      end
      object btGerarParcelas: TAdvGlowButton
        AlignWithMargins = True
        Left = 774
        Top = 115
        Width = 92
        Height = 41
        Margins.Left = 0
        Anchors = [akRight, akBottom]
        Caption = 'Gerar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 21
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = btGerarParcelasClick
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
        MinButtonSizeState = bsLabel
      end
      object cbEspecie: TComboBox
        Left = 492
        Top = 126
        Width = 94
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Items.Strings = (
          'Boleto'
          'Cart'#227'o'
          'Cheque'
          'Credi'#225'rio'
          'D'#233'bito Conta'
          'Duplicata'
          'Nota avulsa'
          'Promiss'#243'ria')
      end
      object cbTipoConta: TComboBox
        Left = 608
        Top = 8
        Width = 145
        Height = 24
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 9
        Text = 'CONTA AVULSA'
        Items.Strings = (
          'CONTA AVULSA'
          'CONTA FIXA')
      end
    end
    object cxGrid1: TcxGrid
      Left = 9
      Top = 175
      Width = 869
      Height = 221
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsParcelas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1data_vencimento: TcxGridDBColumn
          DataBinding.FieldName = 'data_vencimento'
          Options.AutoWidthSizable = False
          Width = 95
        end
        object cxGrid1DBTableView1documento: TcxGridDBColumn
          DataBinding.FieldName = 'documento'
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxGrid1DBTableView1especie: TcxGridDBColumn
          DataBinding.FieldName = 'especie'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'Boleto'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'Cart'#227'o'
              Value = 1
            end
            item
              Description = 'Cheque'
              Value = 2
            end
            item
              Description = 'Credi'#225'rio'
              Value = 3
            end
            item
              Description = 'D'#233'bito Conta'
              Value = 4
            end
            item
              Description = 'Duplicata'
              Value = 5
            end
            item
              Description = 'Nota avulsa'
              Value = 6
            end
            item
              Description = 'Promiss'#243'ria'
              Value = 7
            end>
          Options.AutoWidthSizable = False
          Width = 113
        end
        object cxGrid1DBTableView1descricao: TcxGridDBColumn
          DataBinding.FieldName = 'descricao'
          Width = 329
        end
        object cxGrid1DBTableView1valor: TcxGridDBColumn
          DataBinding.FieldName = 'valor'
          Options.AutoWidthSizable = False
          Width = 97
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 402
    Width = 884
    ExplicitTop = 402
    ExplicitWidth = 884
    object btConfirma: TAdvGlowButton
      AlignWithMargins = True
      Left = 765
      Top = 3
      Width = 116
      Height = 41
      Margins.Left = 0
      Caption = 'Confirma'
      ImageIndex = 1
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btConfirmaClick
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
      MinButtonSizeState = bsLabel
    end
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 646
      Top = 3
      Width = 116
      Height = 41
      Margins.Left = 0
      Caption = 'Cancelar'
      ImageIndex = 4
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btCancelaClick
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
      MinButtonSizeState = bsLabel
    end
    object DBText1: TDBText
      AlignWithMargins = True
      Left = 555
      Top = 15
      Width = 71
      Height = 19
      Margins.Top = 15
      Margins.Right = 20
      AutoSize = True
      DataField = 'total'
      DataSource = dsParcelas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      AlignWithMargins = True
      Left = 460
      Top = 15
      Width = 89
      Height = 19
      Margins.Top = 15
      Alignment = taRightJustify
      Caption = 'Valor Total: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 488
    Top = 24
    object DataSetFirst1: TDataSetFirst
      Category = 'Dados'
      Caption = 'DataSetFirst1'
      Enabled = False
      Hint = 'Primeiro|Move para o primeiro registro'
      ImageIndex = 3
    end
    object DataSetPrior1: TDataSetPrior
      Category = 'Dados'
      Caption = 'DataSetPrior1'
      Enabled = False
      Hint = 'Anterior|Move para o registro anterior'
      ImageIndex = 1
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dados'
      Caption = 'DataSetNext1'
      Enabled = False
      Hint = 'Pr'#243'ximo|Move para o pr'#243'ximo registro'
      ImageIndex = 2
    end
    object DataSetLast1: TDataSetLast
      Category = 'Dados'
      Caption = 'DataSetLast1'
      Enabled = False
      Hint = #218'ltimo|Move para o pr'#243'ximo registro'
      ImageIndex = 4
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dados'
      Caption = 'DataSetInsert1'
      Enabled = False
      Hint = 'Incluir|Permite a inclus'#227'o de um novo registro'
      ImageIndex = 15
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dados'
      Caption = 'DataSetDelete1'
      Enabled = False
      Hint = 'Excluir|Permite a exclus'#227'o do registro atual'
      ImageIndex = 0
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dados'
      Caption = 'DataSetEdit1'
      Enabled = False
      Hint = 'Editar|Permite a altera'#231#227'o do registro atual'
      ImageIndex = 17
    end
    object DataSetRefresh1: TDataSetRefresh
      Category = 'Dados'
      Caption = 'DataSetRefresh1'
      Enabled = False
      Hint = 
        'Atualizar|Atualiza o registro com os dados gravados no banco de ' +
        'dados'
      ImageIndex = 16
      ShortCut = 116
    end
    object act_confirmar: TAction
      Category = 'padrao'
      Caption = 'act_confirmar'
      Hint = 'Confirmar'
      ImageIndex = 5
    end
    object act_cancelar: TAction
      Category = 'padrao'
      Caption = 'act_cancelar'
      Hint = 'Cancelar'
      ImageIndex = 6
    end
    object acBuscaFornecedor: TAction
      Caption = 'acBuscaFornecedor'
      ImageIndex = 0
      OnExecute = acBuscaFornecedorExecute
    end
    object acBuscaConta: TAction
      Caption = 'acBuscaConta'
      ImageIndex = 0
      OnExecute = acBuscaContaExecute
    end
  end
  object cdsParcelas: TClientDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'totalparc'
        Expression = 'sum(valor)'
        Visible = False
      end>
    AggregatesActive = True
    Params = <>
    Left = 416
    Top = 24
    object cdsParcelasdata_vencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'data_vencimento'
    end
    object cdsParcelasdocumento: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'documento'
    end
    object cdsParcelasespecie: TIntegerField
      DisplayLabel = 'Esp'#233'cie'
      FieldName = 'especie'
    end
    object cdsParcelasvalor: TCurrencyField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
    end
    object cdsParcelasdescricao: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'descricao'
      Size = 150
    end
    object cdsParcelasnro_parcela: TIntegerField
      FieldName = 'nro_parcela'
    end
    object cdsParcelastotal: TAggregateField
      FieldName = 'total'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor)'
    end
  end
  object dsParcelas: TDataSource
    DataSet = cdsParcelas
    Left = 352
    Top = 24
  end
end
