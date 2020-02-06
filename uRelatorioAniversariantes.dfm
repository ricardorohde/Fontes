inherited frmRelatorioAniversariantes: TfrmRelatorioAniversariantes
  Caption = 'Relat'#243'rio de Aniversariantes'
  ClientHeight = 121
  ClientWidth = 413
  OnCreate = FormCreate
  ExplicitWidth = 419
  ExplicitHeight = 150
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 413
    Height = 72
    ExplicitWidth = 413
    ExplicitHeight = 72
    FullHeight = 200
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 23
      Height = 16
      Caption = 'M'#234's'
    end
    object cbMes: TComboBox
      Left = 16
      Top = 30
      Width = 385
      Height = 24
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro')
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 72
    Width = 413
    ExplicitTop = 72
    ExplicitWidth = 413
    object btConfirma: TAdvGlowButton
      AlignWithMargins = True
      Left = 306
      Top = 3
      Width = 104
      Height = 41
      Margins.Left = 0
      Caption = 'Imprimir'
      ImageIndex = 10
      Images = frmMenu.ImgList24
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btConfirmaClick
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
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 199
      Top = 3
      Width = 104
      Height = 41
      Margins.Left = 0
      Caption = 'Sair'
      ImageIndex = 18
      Images = frmMenu.ImgList24
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btCancelarClick
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
  object qrRelAniversariantes: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select c.cli_001 as codigo, c.cli_002 as nome, c.cli_012 as tele' +
        'fone1,'
      'c.cli_013 as telefone2, c.celular1, c.data_nascimento, '
      'cast(c.observacao as varchar(200)) as observacao,'
      'c.email, subv.data_ultima_venda'
      'from clientes c '
      
        'left join (select cli_001 , max(ven_004) as data_ultima_venda, e' +
        'mp_001'
      'from venda where  cli_001 <> 0'
      'group by cli_001 , emp_001'
      
        'order by cli_001 ,  data_ultima_venda desc) subv on subv.cli_001' +
        ' = c.cli_001 and c.emp_001=subv.emp_001'
      
        'where c.emp_001=:id_empresa and date_part('#39'month'#39', c.data_nascim' +
        'ento)=:mes '
      'order by date_part('#39'day'#39', c.data_nascimento)')
    Left = 128
    Top = 56
    ParamData = <
      item
        DataType = ftWord
        Name = 'id_empresa'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'mes'
        Value = 2
      end>
    object qrRelAniversariantescodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object qrRelAniversariantesnome: TWideStringField
      FieldName = 'nome'
      Required = True
      Size = 80
    end
    object qrRelAniversariantestelefone1: TWideStringField
      FieldName = 'telefone1'
    end
    object qrRelAniversariantestelefone2: TWideStringField
      FieldName = 'telefone2'
    end
    object qrRelAniversariantescelular1: TWideStringField
      FieldName = 'celular1'
    end
    object qrRelAniversariantesdata_nascimento: TDateField
      FieldName = 'data_nascimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qrRelAniversariantesobservacao: TWideStringField
      FieldName = 'observacao'
      ReadOnly = True
      Size = 200
    end
    object qrRelAniversariantesemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object qrRelAniversariantesdata_ultima_venda: TDateTimeField
      FieldName = 'data_ultima_venda'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object dbAniversariantes: TfrxDBDataset
    UserName = 'dbAniversariantes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigo=codigo'
      'nome=nome'
      'telefone1=telefone1'
      'telefone2=telefone2'
      'celular1=celular1'
      'data_nascimento=data_nascimento'
      'observacao=observacao'
      'email=email'
      'data_ultima_venda=data_ultima_venda')
    DataSet = qrRelAniversariantes
    BCDToCurrency = False
    Left = 248
    Top = 16
  end
  object relAniversariantes: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42783.397114525500000000
    ReportOptions.LastChange = 42783.397114525500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 344
    Top = 16
    Datasets = <
      item
        DataSet = dbAniversariantes
        DataSetName = 'dbAniversariantes'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      BackPictureVisible = False
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 6.299216670000000000
          Top = 9.898769050000000000
          Width = 705.692244290000000000
          Height = 25.196866670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE ANIVERSARIANTES')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 49.133890000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = dbAniversariantes
        DataSetName = 'dbAniversariantes'
        RowCount = 0
        object dbAniversariantescodigo: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataField = 'codigo'
          DataSet = dbAniversariantes
          DataSetName = 'dbAniversariantes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbAniversariantes."codigo"]')
          ParentFont = False
        end
        object dbAniversariantesnome: TfrxMemoView
          Left = 123.622140000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'nome'
          DataSet = dbAniversariantes
          DataSetName = 'dbAniversariantes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbAniversariantes."nome"]')
          ParentFont = False
        end
        object dbAniversariantesdata_ultima_venda: TfrxMemoView
          Left = 635.961091260000000000
          Top = 3.677180000000000000
          Width = 79.370078740000000000
          Height = 15.118120000000000000
          DataField = 'data_ultima_venda'
          DataSet = dbAniversariantes
          DataSetName = 'dbAniversariantes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbAniversariantes."data_ultima_venda"]')
          ParentFont = False
        end
        object dbAniversariantesemail: TfrxMemoView
          Left = 472.338900000000000000
          Top = 3.677180000000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          DataField = 'email'
          DataSet = dbAniversariantes
          DataSetName = 'dbAniversariantes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbAniversariantes."email"]')
          ParentFont = False
        end
        object dbAniversariantestelefone1: TfrxMemoView
          Left = 285.141930000000000000
          Top = 3.779530000000000000
          Width = 90.708656540000000000
          Height = 15.118120000000000000
          DataField = 'telefone1'
          DataSet = dbAniversariantes
          DataSetName = 'dbAniversariantes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbAniversariantes."telefone1"]')
          ParentFont = False
        end
        object dbAniversariantescelular1: TfrxMemoView
          Left = 378.630180000000000000
          Top = 3.779530000000000000
          Width = 90.708661420000000000
          Height = 15.118120000000000000
          DataField = 'celular1'
          DataSet = dbAniversariantes
          DataSetName = 'dbAniversariantes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbAniversariantes."celular1"]')
          ParentFont = False
        end
        object dbAniversariantesdata_nascimento: TfrxMemoView
          Left = 49.133890000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'data_nascimento'
          DataSet = dbAniversariantes
          DataSetName = 'dbAniversariantes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbAniversariantes."data_nascimento"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 502.677490000000000000
          Top = 7.559060000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 4.338590000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 0.354360000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 123.622140000000000000
          Top = 0.354360000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 285.141930000000000000
          Top = 0.354360000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefone 1')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 378.630180000000000000
          Top = 0.354360000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Celular')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 472.338900000000000000
          Top = 0.354360000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Email')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 635.961040000000000000
          Top = 0.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #218'lt. Compra ')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 52.692950000000000000
          Top = 0.354360000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Dt. Nasc.')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 3.779527560000000000
          Top = 19.897650000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 7.559060000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        object Line4: TfrxLineView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
end
