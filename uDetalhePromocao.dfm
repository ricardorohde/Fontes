inherited frmDetalhePromocao: TfrmDetalhePromocao
  Caption = 'frmDetalhePromocao'
  ClientHeight = 409
  ClientWidth = 684
  OnShow = FormShow
  ExplicitWidth = 690
  ExplicitHeight = 438
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 684
    Height = 360
    ExplicitWidth = 684
    ExplicitHeight = 360
    FullHeight = 200
    object Label1: TLabel
      Left = 10
      Top = 220
      Width = 73
      Height = 16
      Caption = 'Observa'#231#245'es'
      FocusControl = cxDBMemo1
    end
    object Label2: TLabel
      Left = 10
      Top = 12
      Width = 39
      Height = 16
      Caption = 'C'#243'digo'
      FocusControl = cxDBSpinEdit1
    end
    object Label3: TLabel
      Left = 10
      Top = 64
      Width = 55
      Height = 16
      Caption = 'Descri'#231#227'o'
      FocusControl = cxDBTextEdit1
    end
    object Label4: TLabel
      Left = 10
      Top = 168
      Width = 52
      Height = 16
      Caption = 'Desconto'
    end
    object lbCategoria: TLabel
      Left = 94
      Top = 141
      Width = 63
      Height = 16
      Caption = 'Categoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 10
      Top = 116
      Width = 55
      Height = 16
      Caption = 'Categoria'
    end
    object Label6: TLabel
      Left = 108
      Top = 12
      Width = 36
      Height = 16
      Caption = 'Status'
      FocusControl = cxDBSpinEdit1
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 333
      Top = 4
      Width = 342
      Height = 85
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Dias ativos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 10
        Top = 24
        Caption = 'Segunda'
        DataBinding.DataField = 'dia_seg'
        DataBinding.DataSource = dsCadastro
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 10
        Top = 54
        Caption = 'Ter'#231'a'
        DataBinding.DataField = 'dia_ter'
        DataBinding.DataSource = dsCadastro
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
      end
      object cxDBCheckBox3: TcxDBCheckBox
        Left = 106
        Top = 24
        Caption = 'Quarta'
        DataBinding.DataField = 'dia_qua'
        DataBinding.DataSource = dsCadastro
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
      end
      object cxDBCheckBox4: TcxDBCheckBox
        Left = 106
        Top = 54
        Caption = 'Quinta'
        DataBinding.DataField = 'dia_qui'
        DataBinding.DataSource = dsCadastro
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
      end
      object cxDBCheckBox5: TcxDBCheckBox
        Left = 186
        Top = 24
        Caption = 'Sexta'
        DataBinding.DataField = 'dia_sex'
        DataBinding.DataSource = dsCadastro
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 4
      end
      object cxDBCheckBox6: TcxDBCheckBox
        Left = 186
        Top = 54
        Caption = 'S'#225'bado'
        DataBinding.DataField = 'dia_sab'
        DataBinding.DataSource = dsCadastro
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 5
      end
      object cxDBCheckBox7: TcxDBCheckBox
        Left = 256
        Top = 24
        Caption = 'Domingo'
        DataBinding.DataField = 'dia_dom'
        DataBinding.DataSource = dsCadastro
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 6
      end
    end
    object AdvGroupBox2: TAdvGroupBox
      Left = 333
      Top = 95
      Width = 342
      Height = 58
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Tipo de venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object cxDBCheckBox8: TcxDBCheckBox
        Left = 10
        Top = 24
        Caption = 'Mesa'
        DataBinding.DataField = 'tipo_mesa'
        DataBinding.DataSource = dsCadastro
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
      end
      object cxDBCheckBox9: TcxDBCheckBox
        Left = 146
        Top = 24
        Caption = 'Delivery'
        DataBinding.DataField = 'tipo_delivery'
        DataBinding.DataSource = dsCadastro
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
      end
      object cxDBCheckBox10: TcxDBCheckBox
        Left = 66
        Top = 24
        Caption = 'Comanda'
        DataBinding.DataField = 'tipo_comanda'
        DataBinding.DataSource = dsCadastro
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
      end
      object cxDBCheckBox11: TcxDBCheckBox
        Left = 219
        Top = 24
        Caption = 'Balc'#227'o'
        DataBinding.DataField = 'tipo_balcao'
        DataBinding.DataSource = dsCadastro
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
      end
      object cxDBCheckBox12: TcxDBCheckBox
        Left = 286
        Top = 24
        Caption = 'PDV'
        DataBinding.DataField = 'tipo_pdv'
        DataBinding.DataSource = dsCadastro
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 4
      end
    end
    object cxDBMemo1: TcxDBMemo
      Left = 10
      Top = 242
      DataBinding.DataField = 'observacao'
      DataBinding.DataSource = dsCadastro
      TabOrder = 3
      Height = 115
      Width = 511
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 10
      Top = 34
      TabStop = False
      DataBinding.DataField = 'id_promocao'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      Properties.SpinButtons.Visible = False
      Style.Color = 14997705
      TabOrder = 6
      Width = 92
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 10
      Top = 86
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = dsCadastro
      TabOrder = 0
      Width = 303
    end
    object edDesconto: TcxDBCurrencyEdit
      Left = 10
      Top = 190
      DataBinding.DataField = 'desconto'
      DataBinding.DataSource = dsCadastro
      Properties.AssignedValues.MinValue = True
      Properties.DisplayFormat = '##0.00 %'
      Properties.MaxValue = 100.000000000000000000
      Properties.ValidationOptions = []
      Style.Color = 8454143
      Style.TextStyle = [fsBold]
      TabOrder = 2
      OnClick = edDescontoClick
      OnEnter = edDescontoEnter
      Width = 78
    end
    object edIDCategoria: TcxDBButtonEdit
      Left = 10
      Top = 138
      DataBinding.DataField = 'id_categoria'
      DataBinding.DataSource = dsCadastro
      Properties.Buttons = <
        item
          Action = acBuscaCategoria
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = frmMenu.ImgList16
      TabOrder = 1
      Width = 78
    end
    object cxDBSpinEdit2: TcxDBSpinEdit
      Left = 108
      Top = 34
      TabStop = False
      DataBinding.DataField = 'desc_situacao'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      Properties.SpinButtons.Visible = False
      Style.Color = 14997705
      TabOrder = 7
      Width = 205
    end
    object btAtivar: TAdvGlowButton
      Left = 527
      Top = 316
      Width = 148
      Height = 41
      Caption = 'Ativar promo'#231#227'o'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 8
      OnClick = btAtivarClick
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
  inherited pnBotoes: TFlowPanel
    Top = 360
    Width = 684
    ExplicitTop = 360
    ExplicitWidth = 684
    inherited btCancelar: TAdvGlowButton
      Left = 577
      ExplicitLeft = 577
    end
    inherited btSalvar: TAdvGlowButton
      Left = 470
      ExplicitLeft = 470
    end
    inherited btExcluir: TAdvGlowButton
      Left = 363
      ExplicitLeft = 363
    end
    inherited btEditar: TAdvGlowButton
      Left = 256
      ExplicitLeft = 256
    end
    inherited btNovo: TAdvGlowButton
      Left = 149
      ExplicitLeft = 149
    end
  end
  inherited dsCadastro: TDataSource
    Left = 360
    Top = 184
  end
  inherited qrCadastro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO promocao'
      
        '  (id_promocao, id_empresa, id_categoria, id_situacao, descricao' +
        ', desconto, dia_seg, dia_ter, dia_qua, dia_qui, dia_sex, dia_sab' +
        ', dia_dom, tipo_mesa, tipo_delivery, tipo_comanda, tipo_balcao, ' +
        'tipo_pdv, observacao)'
      'VALUES'
      
        '  (:id_promocao, :id_empresa, :id_categoria, :id_situacao, :desc' +
        'ricao, :desconto, :dia_seg, :dia_ter, :dia_qua, :dia_qui, :dia_s' +
        'ex, :dia_sab, :dia_dom, :tipo_mesa, :tipo_delivery, :tipo_comand' +
        'a, :tipo_balcao, :tipo_pdv, :observacao)')
    SQLDelete.Strings = (
      'DELETE FROM promocao'
      'WHERE'
      
        '  id_promocao = :Old_id_promocao AND id_empresa = :Old_id_empres' +
        'a')
    SQLUpdate.Strings = (
      'UPDATE promocao'
      'SET'
      
        '  id_promocao = :id_promocao, id_empresa = :id_empresa, id_categ' +
        'oria = :id_categoria, id_situacao = :id_situacao, descricao = :d' +
        'escricao, desconto = :desconto, dia_seg = :dia_seg, dia_ter = :d' +
        'ia_ter, dia_qua = :dia_qua, dia_qui = :dia_qui, dia_sex = :dia_s' +
        'ex, dia_sab = :dia_sab, dia_dom = :dia_dom, tipo_mesa = :tipo_me' +
        'sa, tipo_delivery = :tipo_delivery, tipo_comanda = :tipo_comanda' +
        ', tipo_balcao = :tipo_balcao, tipo_pdv = :tipo_pdv, observacao =' +
        ' :observacao'
      'WHERE'
      
        '  id_promocao = :Old_id_promocao AND id_empresa = :Old_id_empres' +
        'a')
    SQLLock.Strings = (
      'SELECT * FROM promocao'
      'WHERE'
      
        '  id_promocao = :Old_id_promocao AND id_empresa = :Old_id_empres' +
        'a'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_promocao, id_empresa, id_categoria, id_situacao, descr' +
        'icao, desconto, dia_seg, dia_ter, dia_qua, dia_qui, dia_sex, dia' +
        '_sab, dia_dom, tipo_mesa, tipo_delivery, tipo_comanda, tipo_balc' +
        'ao, tipo_pdv, observacao FROM promocao'
      'WHERE'
      '  id_promocao = :id_promocao AND id_empresa = :id_empresa')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM promocao'
      ''
      ') t')
    SQL.Strings = (
      
        'select id_promocao, id_empresa, id_categoria, id_situacao, descr' +
        'icao, desconto,'
      'dia_seg, dia_ter, dia_qua, dia_qui, dia_sex, dia_sab, dia_dom, '
      'tipo_mesa, tipo_delivery, tipo_comanda, tipo_balcao, tipo_pdv,'
      
        'observacao, cast(fn_situacoes(id_situacao) as varchar(50)) as de' +
        'sc_situacao'
      'from promocao'
      'where id_promocao = :id_promocao and id_empresa = :id_empresa')
    Options.DefaultValues = True
    AfterOpen = qrCadastroAfterOpen
    OnNewRecord = qrCadastroNewRecord
    Left = 424
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_promocao'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrCadastroid_promocao: TIntegerField
      DefaultExpression = 'nextval('#39'promocao_id_promocao_seq'#39'::regclass)'
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_promocao'
    end
    object qrCadastroid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrCadastroid_categoria: TIntegerField
      DisplayLabel = 'Categoria'
      FieldName = 'id_categoria'
      Required = True
      OnChange = qrCadastroid_categoriaChange
    end
    object qrCadastroid_situacao: TIntegerField
      FieldName = 'id_situacao'
      Required = True
    end
    object qrCadastrodescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 100
    end
    object qrCadastrodesconto: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Desconto'
      FieldName = 'desconto'
      Required = True
      DisplayFormat = '##0.00 %'
      EditFormat = '##0.00'
    end
    object qrCadastrodia_seg: TBooleanField
      DefaultExpression = 'false'
      DisplayLabel = 'Segunda'
      FieldName = 'dia_seg'
      Required = True
    end
    object qrCadastrodia_ter: TBooleanField
      DefaultExpression = 'false'
      DisplayLabel = 'Ter'#231'a'
      FieldName = 'dia_ter'
      Required = True
    end
    object qrCadastrodia_qua: TBooleanField
      DefaultExpression = 'false'
      DisplayLabel = 'Quarta'
      FieldName = 'dia_qua'
      Required = True
    end
    object qrCadastrodia_qui: TBooleanField
      DefaultExpression = 'false'
      DisplayLabel = 'Quinta'
      FieldName = 'dia_qui'
      Required = True
    end
    object qrCadastrodia_sex: TBooleanField
      DefaultExpression = 'false'
      DisplayLabel = 'Sexta'
      FieldName = 'dia_sex'
      Required = True
    end
    object qrCadastrodia_sab: TBooleanField
      DefaultExpression = 'false'
      DisplayLabel = 'S'#225'bado'
      FieldName = 'dia_sab'
      Required = True
    end
    object qrCadastrodia_dom: TBooleanField
      DefaultExpression = 'false'
      DisplayLabel = 'Domingo'
      FieldName = 'dia_dom'
      Required = True
    end
    object qrCadastrotipo_mesa: TBooleanField
      DefaultExpression = 'false'
      DisplayLabel = 'Mesa'
      FieldName = 'tipo_mesa'
      Required = True
    end
    object qrCadastrotipo_delivery: TBooleanField
      DefaultExpression = 'false'
      DisplayLabel = 'Delivery'
      FieldName = 'tipo_delivery'
      Required = True
    end
    object qrCadastrotipo_comanda: TBooleanField
      DefaultExpression = 'false'
      DisplayLabel = 'Comanda'
      FieldName = 'tipo_comanda'
      Required = True
    end
    object qrCadastrotipo_balcao: TBooleanField
      DefaultExpression = 'false'
      DisplayLabel = 'Balc'#227'o'
      FieldName = 'tipo_balcao'
      Required = True
    end
    object qrCadastrotipo_pdv: TBooleanField
      DefaultExpression = 'false'
      DisplayLabel = 'PDV'
      FieldName = 'tipo_pdv'
      Required = True
    end
    object qrCadastroobservacao: TWideMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'observacao'
      BlobType = ftWideMemo
    end
    object qrCadastrodesc_situacao: TWideStringField
      FieldName = 'desc_situacao'
      Size = 50
    end
  end
  inherited jvdsCadastro: TJvDataSource
    Left = 216
    Top = 184
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 288
    Top = 184
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
    object acBuscaCategoria: TAction
      Caption = 'acBuscaCategoria'
      ImageIndex = 0
      OnExecute = acBuscaCategoriaExecute
    end
  end
end
