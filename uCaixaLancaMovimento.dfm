object frmCaixaLancaMovimento: TfrmCaixaLancaMovimento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  ClientHeight = 301
  ClientWidth = 504
  Color = 12691076
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 8
    Top = 43
    Width = 60
    Height = 19
    Caption = 'Usu'#225'rio:'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 30
    Top = 68
    Width = 38
    Height = 19
    Caption = 'Data:'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lbUsuario: TLabel
    Left = 73
    Top = 43
    Width = 70
    Height = 19
    Caption = 'sUsuario'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lbData: TLabel
    Left = 73
    Top = 68
    Width = 47
    Height = 19
    Caption = 'sData'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object pnTopo: TPanel
    Left = 0
    Top = 0
    Width = 504
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    Color = 5263440
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 496
    object lbTipoMovimentoCaixa: TLabel
      Left = 7
      Top = 7
      Width = 259
      Height = 23
      Caption = 'Lan'#231'amento de movimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 7
    Top = 93
    Width = 490
    Height = 148
    Align = alCustom
    Anchors = [akLeft, akTop, akRight]
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label3: TLabel
      Left = 10
      Top = 10
      Width = 43
      Height = 19
      Caption = 'Valor'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 10
      Top = 77
      Width = 102
      Height = 19
      Caption = 'Observa'#231#245'es'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 122
      Top = -23
      Width = 173
      Height = 19
      Caption = 'Forma de pagamento'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 314
      Top = 10
      Width = 80
      Height = 19
      Caption = 'Categoria'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object edValor: TJvValidateEdit
      Tag = 1
      Left = 10
      Top = 35
      Width = 111
      Height = 27
      Flat = False
      ParentFlat = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloatFixed
      DecimalPlaces = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      HasMaxValue = True
      HasMinValue = True
      MaxValue = 99999999.989999990000000000
      ParentFont = False
      TabOrder = 0
      DataConnector.DataField = 'desconto'
    end
    object edObservacao: TEdit
      Left = 10
      Top = 102
      Width = 471
      Height = 27
      TabOrder = 3
    end
    object cbFormapgto: TDBLookupComboBox
      Left = 126
      Top = 35
      Width = 183
      Height = 27
      DataField = 'id_formapgto'
      DataSource = dsFormaPgto
      KeyField = 'for_001'
      ListField = 'for_002'
      ListSource = dsListaFormapgto
      TabOrder = 1
    end
    object cbCategoria: TComboBox
      Left = 314
      Top = 35
      Width = 167
      Height = 27
      Style = csDropDownList
      TabOrder = 2
    end
  end
  object rgTipoMovimento: TRadioGroup
    Left = 286
    Top = 41
    Width = 211
    Height = 46
    Caption = 'Tipo de movimento'
    Columns = 2
    Enabled = False
    ItemIndex = 0
    Items.Strings = (
      'SA'#205'DA'
      'ENTRADA')
    TabOrder = 2
  end
  object btConfirma: TAdvGlowButton
    AlignWithMargins = True
    Left = 262
    Top = 251
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
    TabOrder = 3
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
    Left = 381
    Top = 251
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
    TabOrder = 4
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
  object btAbrirGaveta: TAdvGlowButton
    AlignWithMargins = True
    Left = 118
    Top = 251
    Width = 141
    Height = 41
    Margins.Left = 0
    Caption = 'Abrir Gaveta'
    ImageIndex = 51
    Images = frmMenu.ImgList32
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 5
    TabStop = True
    OnClick = btAbrirGavetaClick
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
  object qrAux1: TUniQuery
    Connection = frmMenu.conexao
    Left = 367
    Top = 166
  end
  object qrListaFormaPgto: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select for_001, for_002, sfi_codigo=1 as dinheiro '
      'from formapgto'
      'where sit_001=4 and emp_001=:emp')
    Left = 191
    Top = 182
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end>
  end
  object cdsFormaPgto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 16
    Top = 264
    object cdsFormaPgtoid_formapgto: TIntegerField
      FieldName = 'id_formapgto'
    end
  end
  object dsFormaPgto: TDataSource
    DataSet = cdsFormaPgto
    Left = 48
    Top = 224
  end
  object dsListaFormapgto: TDataSource
    AutoEdit = False
    DataSet = qrListaFormaPgto
    Left = 104
    Top = 176
  end
  object repCaixaMovSuprRetirada: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42657.344958414390000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 282
    Top = 175
    Datasets = <>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
        Value = Null
      end
      item
        Name = 'sDataHora'
        Value = ''
      end
      item
        Name = 'sDescricaoMov'
        Value = ''
      end
      item
        Name = 'sValor'
        Value = ''
      end
      item
        Name = 'sHoraAbertura'
        Value = ''
      end
      item
        Name = 'sDataAbertura'
        Value = ''
      end
      item
        Name = 'sUsuario'
        Value = ''
      end
      item
        Name = 'sFormapgto'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 100.000000000000000000
      PaperHeight = 448.000000000000000000
      PaperSize = 256
      LeftMargin = 2.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 202.535560000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 332.598640000000000000
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 22.897650000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE ABERTURA')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          Left = 145.842610000000000000
          Top = 22.897650000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = frmCaixaStatus.dbRetiradas
          DataSetName = 'dbRetiradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sDataAbertura]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 11.338590000000000000
          Top = 159.196970000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo46: TfrxMemoView
          Left = 11.338590000000000000
          Top = 40.472480000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'USU'#193'RIO')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 145.842610000000000000
          Top = 40.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = frmCaixaStatus.dbRetiradas
          DataSetName = 'dbRetiradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sUsuario]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 11.338590000000000000
          Top = 61.252010000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo57: TfrxMemoView
          Left = 11.338590000000000000
          Top = 65.606299210000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 102.149660000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O DO MOVIMENTO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 11.338590000000000000
          Top = 158.842610000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 147.401670000000000000
          Top = 65.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = frmCaixaStatus.dbRetiradas
          DataSetName = 'dbRetiradas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[sValor]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 11.338590000000000000
          Top = 117.267780000000000000
          Width = 234.330860000000000000
          Height = 37.795300000000000000
          AutoWidth = True
          DataSet = frmCaixaStatus.dbRetiradas
          DataSetName = 'dbRetiradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[sDescricaoMov]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 56.692950000000010000
          Top = 158.842610000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = frmCaixaStatus.dbRetiradas
          DataSetName = 'dbRetiradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[sDataHora]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 11.338590000000000000
          Top = 84.503937010000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FORMA')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 113.385900000000000000
          Top = 84.370130000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = frmCaixaStatus.dbRetiradas
          DataSetName = 'dbRetiradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sFormapgto]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Top = 199.976500000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 2.779530000000001000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[sTituloRep]')
          ParentFont = False
        end
      end
    end
  end
end
