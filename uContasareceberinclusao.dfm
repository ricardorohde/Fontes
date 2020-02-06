inherited frmContasareceberinclusao: TfrmContasareceberinclusao
  Action = acBuscacliente
  Caption = 'INCLUS'#195'O CONTAS A RECEBER'
  ClientHeight = 618
  ClientWidth = 968
  KeyPreview = True
  OnClick = acBuscaclienteExecute
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 974
  ExplicitHeight = 647
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 968
    Height = 569
    ExplicitWidth = 968
    ExplicitHeight = 569
    FullHeight = 200
    object AdvGroupBox3: TAdvGroupBox
      Left = 1
      Top = 3
      Width = 964
      Height = 211
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
        964
        211)
      object Label1: TLabel
        Left = 6
        Top = 6
        Width = 56
        Height = 16
        Alignment = taRightJustify
        Caption = 'Emiss'#227'o:'
      end
      object Label2: TLabel
        Left = 172
        Top = 6
        Width = 49
        Height = 16
        Alignment = taRightJustify
        Caption = 'Cliente:'
      end
      object Label4: TLabel
        Left = 528
        Top = 163
        Width = 109
        Height = 16
        Caption = 'Qtd. presta'#231#245'es:'
      end
      object lbCliente: TLabel
        Left = 304
        Top = 34
        Width = 44
        Height = 16
        Caption = 'Cliente'
      end
      object Label8: TLabel
        Left = 6
        Top = 165
        Width = 35
        Height = 16
        Alignment = taRightJustify
        Caption = 'Nota:'
      end
      object Label9: TLabel
        Left = 4
        Top = 100
        Width = 62
        Height = 16
        Alignment = taRightJustify
        Caption = 'Hist'#243'rico:'
      end
      object Label10: TLabel
        Left = 172
        Top = 165
        Width = 93
        Height = 16
        Alignment = taRightJustify
        Caption = 'Valor da nota:'
      end
      object Label5: TLabel
        Left = 338
        Top = 163
        Width = 53
        Height = 16
        Alignment = taRightJustify
        Caption = 'Esp'#233'cie:'
      end
      object Label3: TLabel
        Left = 4
        Top = 55
        Width = 38
        Height = 16
        Alignment = taRightJustify
        Caption = 'Conta'
      end
      object lbConta: TLabel
        Left = 114
        Top = 74
        Width = 38
        Height = 16
        Caption = 'Conta'
      end
      object dtDataDocumento: TDateTimePicker
        Left = 6
        Top = 25
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
        TabOrder = 8
      end
      object edCodcliente: TcxButtonEdit
        Left = 170
        Top = 28
        Properties.Buttons = <
          item
            Action = acBuscacliente
            Default = True
            Kind = bkGlyph
          end>
        Properties.IgnoreMaskBlank = True
        Properties.Images = frmMenu.ImgList16
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d'
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 0
        OnClick = acBuscaclienteExecute
        OnExit = edCodclienteExit
        Width = 105
      end
      object edNota: TEdit
        Left = 3
        Top = 184
        Width = 105
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 3
      end
      object edHistorico: TEdit
        Left = 2
        Top = 117
        Width = 743
        Height = 35
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object edValornota: TJvValidateEdit
        Tag = 1
        Left = 170
        Top = 184
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
        HasMinValue = True
        ParentFont = False
        TabOrder = 4
      end
      object edQtdParcelas: TcxSpinEdit
        Left = 530
        Top = 181
        ParentFont = False
        Properties.MaxValue = 99.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Properties.SpinButtons.Visible = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clWindowText
        Style.TextStyle = []
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        TabOrder = 6
        Value = 1
        Width = 109
      end
      object btGerarParcelas: TAdvGlowButton
        AlignWithMargins = True
        Left = 848
        Top = 167
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
        TabOrder = 7
        TabStop = True
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
      object dbEspecie: TJvDBComboBox
        Left = 338
        Top = 181
        Width = 161
        Height = 27
        DataField = 'tipo_pessoa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'Boleto'
          'Local'
          'Cheque'
          'Credi'#225'rio')
        ParentFont = False
        TabOrder = 5
        Values.Strings = (
          '0'
          '1'
          '2'
          '3')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object edCodConta: TcxButtonEdit
        Left = 3
        Top = 70
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
        TabOrder = 9
        Width = 105
      end
      object edconta: TcxButtonEdit
        Left = 3
        Top = 71
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
        TabOrder = 1
        OnExit = edcontaExit
        OnKeyDown = edcontaKeyDown
        Width = 105
      end
    end
    object cxGrid2: TcxGrid
      Left = 4
      Top = 220
      Width = 964
      Height = 346
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsInclusao
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGridDBTableView1data_vencimento: TcxGridDBColumn
          Caption = 'Vencimento'
          DataBinding.FieldName = 'data_vencimento'
          Width = 164
        end
        object cxGridDBTableView1documento: TcxGridDBColumn
          Caption = 'Documento'
          DataBinding.FieldName = 'documento'
          Width = 180
        end
        object cxGridDBTableView1especie: TcxGridDBColumn
          Caption = 'Esp'#233'cie'
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
          Options.ShowEditButtons = isebAlways
          Options.AutoWidthSizable = False
          Width = 113
        end
        object cxGridDBTableView1descricao: TcxGridDBColumn
          Caption = 'Hist'#243'rico'
          DataBinding.FieldName = 'descricao'
          Width = 396
        end
        object cxGridDBTableView1valor: TcxGridDBColumn
          Caption = 'Valor R$'
          DataBinding.FieldName = 'valor'
          Width = 109
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 569
    Width = 968
    ExplicitTop = 569
    ExplicitWidth = 968
    object btConfirma: TAdvGlowButton
      AlignWithMargins = True
      Left = 849
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
      Left = 730
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
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 776
    Top = 40
    object acBuscacliente: TAction
      Caption = 'acBuscacliente'
      ImageIndex = 0
      OnExecute = acBuscaclienteExecute
    end
    object acBuscaConta: TAction
      Caption = 'acBuscaConta'
      ImageIndex = 0
      OnExecute = acBuscaContaExecute
    end
  end
  object qraux1: TUniQuery
    Connection = frmMenu.conexao
    Left = 857
    Top = 35
  end
  object cdsInclusao: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 312
    Top = 272
    object cdsInclusaodata_vencimento: TDateField
      FieldName = 'data_vencimento'
    end
    object cdsInclusaodocumento: TStringField
      FieldName = 'documento'
      Size = 30
    end
    object cdsInclusaoespecie: TStringField
      FieldName = 'especie'
      Size = 30
    end
    object cdsInclusaovalor: TFloatField
      Alignment = taLeftJustify
      FieldName = 'valor'
      currency = True
    end
    object cdsInclusaodescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cdsInclusaonro_parcela: TIntegerField
      FieldName = 'nro_parcela'
    end
    object cdsInclusaototal: TAggregateField
      FieldName = 'total'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor) '
    end
  end
  object dsInclusao: TDataSource
    DataSet = cdsInclusao
    Left = 368
    Top = 280
  end
end
