inherited frmVendaItemFracionado: TfrmVendaItemFracionado
  Caption = 'Inserir Item Fracionado'
  ClientHeight = 388
  ClientWidth = 692
  KeyPreview = True
  OnKeyDown = FormKeyDown
  ExplicitWidth = 698
  ExplicitHeight = 417
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 692
    Height = 339
    ExplicitWidth = 692
    ExplicitHeight = 339
    FullHeight = 200
    object DBText1: TDBText
      Left = 190
      Top = 31
      Width = 47
      Height = 16
      AutoSize = True
      DataField = 'descricao'
      DataSource = dsBuscaItem
    end
    object Label6: TLabel
      Left = 7
      Top = 6
      Width = 44
      Height = 16
      Caption = 'Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 114
      Top = 6
      Width = 30
      Height = 16
      Caption = 'Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 7
      Top = 317
      Width = 107
      Height = 19
      Caption = 'Valor do item: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbValorItem: TLabel
      Left = 134
      Top = 317
      Width = 62
      Height = 19
      Caption = 'R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 238
      Width = 154
      Height = 19
      Caption = 'Observa'#231#245'es do item:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edCodProduto: TcxButtonEdit
      Left = 7
      Top = 28
      ParentFont = False
      Properties.Buttons = <
        item
          Action = acPesquisaItem
          Default = True
          Kind = bkGlyph
        end>
      Properties.ClickKey = 0
      Properties.Images = frmMenu.ImgList16
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      OnExit = edCodProdutoExit
      Width = 101
    end
    object edValor: TJvValidateEdit
      Tag = 1
      Left = 114
      Top = 28
      Width = 70
      Height = 27
      Flat = False
      ParentFlat = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloatFixed
      DecimalPlaces = 2
      EditText = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      HasMaxValue = True
      HasMinValue = True
      MaxValue = 9999999.000000000000000000
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      DataConnector.DataSource = JvdsBuscaItem
      DataConnector.DataField = 'valor_unit'
    end
    object cxgrTamnhoMaterial: TcxGrid
      Left = 7
      Top = 65
      Width = 676
      Height = 167
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      LookAndFeel.NativeStyle = True
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsItens
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGridDBTableView1nro_item: TcxGridDBColumn
          DataBinding.FieldName = 'nro_item'
          Width = 46
        end
        object cxGridDBTableView1id_material: TcxGridDBColumn
          DataBinding.FieldName = 'id_material'
          Visible = False
        end
        object cxGridDBTableView1descricao: TcxGridDBColumn
          DataBinding.FieldName = 'descricao'
          Width = 314
        end
        object cxGridDBTableView1tamanho: TcxGridDBColumn
          DataBinding.FieldName = 'tamanho_desc'
          Width = 99
        end
        object cxGridDBTableView1quantidade: TcxGridDBColumn
          DataBinding.FieldName = 'quantidade'
          Width = 90
        end
        object cxGridDBTableView1valor_unit: TcxGridDBColumn
          DataBinding.FieldName = 'valor_unit'
          Width = 100
        end
        object cxGridDBTableView1Column1: TcxGridDBColumn
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              ImageIndex = 1
              Kind = bkGlyph
            end>
          Properties.Images = frmMenu.ImgList16
          Properties.OnButtonClick = cxGridDBTableView1Column1PropertiesButtonClick
          Options.ShowEditButtons = isebAlways
          Width = 25
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object btInserir: TAdvGlowButton
      Left = 637
      Top = 18
      Width = 46
      Height = 41
      Hint = 'Inserir item'
      Anchors = [akTop, akRight]
      ImageIndex = 3
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      TabStop = True
      OnClick = btInserirClick
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
    object DBMemo1: TDBMemo
      Left = 7
      Top = 263
      Width = 676
      Height = 48
      DataField = 'observacao'
      DataSource = dsItens
      MaxLength = 200
      TabOrder = 4
      OnEnter = DBMemo1Enter
      OnExit = DBMemo1Exit
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 339
    Width = 692
    ExplicitTop = 339
    ExplicitWidth = 692
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 573
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
      TabOrder = 0
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
    object btConfirma: TAdvGlowButton
      AlignWithMargins = True
      Left = 454
      Top = 3
      Width = 116
      Height = 41
      Margins.Left = 0
      Caption = 'Confirmar'
      ImageIndex = 1
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
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
  end
  object cdsItens: TClientDataSet
    Aggregates = <
      item
        Active = True
        Expression = 'sum(valor_unit)'
        Visible = False
      end>
    AggregatesActive = True
    Params = <>
    AfterDelete = cdsItensAfterDelete
    Left = 216
    Top = 104
    object cdsItensnro_item: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'nro_item'
    end
    object cdsItensid_material: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'id_material'
    end
    object cdsItensquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
      DisplayFormat = '0.000'
    end
    object cdsItensdescricao: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'descricao'
      Size = 100
    end
    object cdsItensvalor: TFloatField
      DisplayLabel = 'Valor Unit.'
      FieldName = 'valor_unit'
      currency = True
    end
    object cdsItenstamanho: TStringField
      DisplayLabel = 'Tamanho'
      FieldName = 'tamanho_desc'
      Size = 100
    end
    object cdsItenstamanho2: TStringField
      FieldName = 'tamanho'
      Size = 2
    end
    object cdsItensvalor_fracionado: TFloatField
      FieldName = 'valor_fracionado'
      currency = True
    end
    object cdsItenscod_impressora: TIntegerField
      FieldName = 'cod_impressora'
    end
    object cdsItensobservacao: TStringField
      FieldName = 'observacao'
      Size = 500
    end
    object cdsItenscod_referencia: TStringField
      FieldName = 'cod_ref'
    end
    object cdsItensid_categoria: TIntegerField
      FieldName = 'id_categoria'
    end
    object cdsItensvalor_unit_ref: TFloatField
      FieldName = 'valor_unit_ref'
    end
    object cdsItensa: TBooleanField
      FieldName = 'b_70pc_valor_unit'
    end
  end
  object dsBuscaItem: TDataSource
    DataSet = qrBuscaItem
    OnStateChange = dsBuscaItemStateChange
    Left = 160
    Top = 104
  end
  object qrBuscaItem: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'm.mat_001 as id_material, '
      'm.mat_003 as descricao, '
      'm.mat_003 as descricao_old, '
      'dm.tamanho_p as descricao_p,'
      'dm.tamanho_m  as descricao_m,'
      'dm.tamanho_g  as descricao_g,'
      'dm.tamanho_gg  as descricao_gg,'
      'dm.tamanho_extra  as descricao_extra,'
      'm.tamanho_padrao,'
      'm.b_venda_tamanho,'
      'm.valor_tam_p,'
      'm.valor_tam_m,'
      'm.valor_tam_g,'
      'm.valor_tam_gg,'
      'm.valor_tam_extra,'
      'u.uni_003 as unidade , '
      'm.mat_008 as valor_unit, '
      'mat_004 as cod_ref,'
      '1.00 as quantidade,'
      'coalesce(m.mat_021, 0) as cod_impressora,'
      'm.cat_001'
      'from materiais m'
      
        'join unidades u on m.uni_001 = u.uni_001 and m.emp_001 =u.emp_00' +
        '1'
      'join desc_tamanho_material dm on dm.id_empresa=m.emp_001'
      'where m.mat_004=:cod_ref and m.emp_001=:emp;')
    AfterOpen = qrBuscaItemAfterOpen
    Left = 96
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'cod_ref'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'emp'
        ParamType = ptInput
        Value = 1
      end>
    object qrBuscaItemid_material: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object qrBuscaItemdescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object qrBuscaItemdescricao_old: TWideStringField
      FieldName = 'descricao_old'
      Required = True
      Size = 50
    end
    object qrBuscaItemdescricao_p: TWideStringField
      FieldName = 'descricao_p'
      ReadOnly = True
      Size = 100
    end
    object qrBuscaItemdescricao_m: TWideStringField
      FieldName = 'descricao_m'
      ReadOnly = True
      Size = 100
    end
    object qrBuscaItemdescricao_g: TWideStringField
      FieldName = 'descricao_g'
      ReadOnly = True
      Size = 100
    end
    object qrBuscaItemdescricao_gg: TWideStringField
      FieldName = 'descricao_gg'
      ReadOnly = True
      Size = 100
    end
    object qrBuscaItemdescricao_extra: TWideStringField
      FieldName = 'descricao_extra'
      ReadOnly = True
      Size = 100
    end
    object qrBuscaItemtamanho_padrao: TWideStringField
      FieldName = 'tamanho_padrao'
      Size = 2
    end
    object qrBuscaItemb_venda_tamanho: TBooleanField
      FieldName = 'b_venda_tamanho'
    end
    object qrBuscaItemvalor_tam_p: TFloatField
      FieldName = 'valor_tam_p'
    end
    object qrBuscaItemvalor_tam_m: TFloatField
      FieldName = 'valor_tam_m'
    end
    object qrBuscaItemvalor_tam_g: TFloatField
      FieldName = 'valor_tam_g'
    end
    object qrBuscaItemvalor_tam_gg: TFloatField
      FieldName = 'valor_tam_gg'
    end
    object qrBuscaItemvalor_tam_extra: TFloatField
      FieldName = 'valor_tam_extra'
    end
    object qrBuscaItemunidade: TWideStringField
      FieldName = 'unidade'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object qrBuscaItemvalor_unit: TFloatField
      FieldName = 'valor_unit'
      Required = True
    end
    object qrBuscaItemcod_ref: TWideStringField
      FieldName = 'cod_ref'
      Size = 50
    end
    object qrBuscaItemquantidade: TFloatField
      FieldName = 'quantidade'
      ReadOnly = True
    end
    object qrBuscaItemcod_impressora: TIntegerField
      FieldName = 'cod_impressora'
      ReadOnly = True
    end
    object qrBuscaItemcat_001: TIntegerField
      FieldName = 'cat_001'
    end
  end
  object JvdsBuscaItem: TJvDataSource
    AutoEdit = False
    DataSet = qrBuscaItem
    Left = 264
    Top = 216
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 32
    Top = 104
    object acPesquisaItem: TAction
      Caption = 'acPesquisaItem'
      ImageIndex = 0
      OnExecute = acPesquisaItemExecute
    end
    object acExluirItem: TAction
      Caption = 'acTteste'
      ImageIndex = 1
    end
  end
  object dsItens: TDataSource
    AutoEdit = False
    DataSet = cdsItens
    Left = 336
    Top = 192
  end
end
