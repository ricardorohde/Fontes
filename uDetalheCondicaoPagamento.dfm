inherited frmDetalheCondicaoPagamento: TfrmDetalheCondicaoPagamento
  Caption = 'Condi'#231#227'o de Pagamento'
  ClientHeight = 272
  ClientWidth = 542
  KeyPreview = True
  OnKeyDown = FormKeyDown
  ExplicitWidth = 548
  ExplicitHeight = 301
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 542
    Height = 223
    ExplicitWidth = 542
    ExplicitHeight = 223
    FullHeight = 200
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 39
      Height = 16
      Caption = 'C'#243'digo'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 98
      Top = 12
      Width = 55
      Height = 16
      Caption = 'Descri'#231#227'o'
      FocusControl = cxDBTextEdit1
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 16
      Top = 34
      TabStop = False
      DataBinding.DataField = 'id_condicaopagamento'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      Properties.SpinButtons.Visible = False
      Style.Color = 14997705
      TabOrder = 0
      Width = 76
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 98
      Top = 34
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = dsCadastro
      TabOrder = 1
      Width = 431
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 16
      Top = 64
      Width = 513
      Height = 152
      BorderColor = clNavy
      RoundEdges = True
      TabOrder = 2
      object Label4: TLabel
        Left = 11
        Top = 11
        Width = 115
        Height = 16
        Caption = 'N'#250'mero de parcelas'
        FocusControl = edNumeroParcelas
      end
      object Label5: TLabel
        Left = 11
        Top = 41
        Width = 189
        Height = 16
        Caption = 'Periodicidade em dias para venc.'
        FocusControl = edPeriodicidade
      end
      object edNumeroParcelas: TcxDBSpinEdit
        Left = 206
        Top = 8
        DataBinding.DataField = 'numero_parcelas'
        DataBinding.DataSource = dsCadastro
        Properties.MinValue = 1.000000000000000000
        Properties.SpinButtons.Visible = False
        Properties.ValidationOptions = []
        TabOrder = 0
        Width = 121
      end
      object edPeriodicidade: TcxDBSpinEdit
        Left = 206
        Top = 38
        DataBinding.DataField = 'periodicidade'
        DataBinding.DataSource = dsCadastro
        Properties.SpinButtons.Visible = False
        TabOrder = 1
        Width = 121
      end
      object ckPossuiEntrada: TcxDBCheckBox
        Left = 11
        Top = 70
        Caption = 'Parcelamento com entrada?'
        DataBinding.DataField = 'possui_entrada'
        DataBinding.DataSource = dsCadastro
        Properties.ValidationOptions = []
        TabOrder = 2
        OnClick = ckPossuiEntradaClick
      end
      object btGerarParcelas: TAdvGlowButton
        Left = 11
        Top = 100
        Width = 184
        Height = 41
        Caption = 'Gerar parcelas'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 3
        OnClick = btGerarParcelasClick
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
      object cxGrid1: TcxGrid
        Left = 333
        Top = 9
        Width = 172
        Height = 132
        TabOrder = 4
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsCondicaoPagParcela
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1id_condicaopagamento: TcxGridDBColumn
            DataBinding.FieldName = 'id_condicaopagamento'
            Visible = False
          end
          object cxGrid1DBTableView1id_empresa: TcxGridDBColumn
            DataBinding.FieldName = 'id_empresa'
            Visible = False
          end
          object cxGrid1DBTableView1nro_parcela: TcxGridDBColumn
            DataBinding.FieldName = 'nro_parcela'
            Visible = False
          end
          object cxGrid1DBTableView1dias_prazo: TcxGridDBColumn
            Caption = 'Dias de prazo'
            DataBinding.FieldName = 'dias_prazo'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 223
    Width = 542
    ExplicitTop = 223
    ExplicitWidth = 542
    inherited btCancelar: TAdvGlowButton
      Left = 435
      ExplicitLeft = 435
    end
    inherited btSalvar: TAdvGlowButton
      Left = 328
      ExplicitLeft = 328
    end
    inherited btExcluir: TAdvGlowButton
      Left = 221
      ExplicitLeft = 221
    end
    inherited btEditar: TAdvGlowButton
      Left = 114
      ExplicitLeft = 114
    end
    inherited btNovo: TAdvGlowButton
      Left = 7
      ExplicitLeft = 7
    end
  end
  inherited dsCadastro: TDataSource
    OnDataChange = dsCadastroDataChange
    Left = 256
  end
  inherited qrCadastro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO condicaopagamento'
      
        '  (id_condicaopagamento, id_empresa, descricao, id_situacao, num' +
        'ero_parcelas, '
      '   periodicidade, periodicidade_inicio, possui_entrada)'
      'VALUES'
      
        '  (:id_condicaopagamento, :id_empresa, :descricao, :id_situacao,' +
        ' :numero_parcelas, '
      '   :periodicidade, :periodicidade_inicio, :possui_entrada)')
    SQLDelete.Strings = (
      'DELETE FROM condicaopagamento'
      'WHERE'
      
        '  id_condicaopagamento = :Old_id_condicaopagamento AND id_empres' +
        'a = :Old_id_empresa')
    SQLUpdate.Strings = (
      'UPDATE condicaopagamento'
      'SET'
      
        '  id_condicaopagamento = :id_condicaopagamento, id_empresa = :id' +
        '_empresa, '
      '  descricao = :descricao, id_situacao = :id_situacao, '
      
        '  numero_parcelas = :numero_parcelas, periodicidade = :periodici' +
        'dade, '
      
        '  periodicidade_inicio = :periodicidade_inicio, possui_entrada =' +
        ' :possui_entrada'
      'WHERE'
      
        '  id_condicaopagamento = :Old_id_condicaopagamento AND id_empres' +
        'a = :Old_id_empresa')
    SQLLock.Strings = (
      'SELECT * FROM condicaopagamento'
      'WHERE'
      
        '  id_condicaopagamento = :Old_id_condicaopagamento AND id_empres' +
        'a = :Old_id_empresa'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_condicaopagamento, id_empresa, descricao, id_situacao,' +
        ' numero_parcelas, periodicidade, periodicidade_inicio FROM condi' +
        'caopagamento'
      'WHERE'
      
        '  id_condicaopagamento = :id_condicaopagamento AND id_empresa = ' +
        ':id_empresa')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM condicaopagamento'
      ''
      ') t')
    SQL.Strings = (
      
        'select id_condicaopagamento, id_empresa, descricao, id_situacao,' +
        ' numero_parcelas,'
      
        'periodicidade, periodicidade_inicio, possui_entrada from condica' +
        'opagamento'
      
        'where id_condicaopagamento=:id_condicaopagamento and id_empresa=' +
        ':id_empresa')
    AfterOpen = qrCadastroAfterOpen
    AfterPost = qrCadastroAfterPost
    AfterScroll = qrCadastroAfterScroll
    OnNewRecord = qrCadastroNewRecord
    Left = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_condicaopagamento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrCadastroid_condicaopagamento: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_condicaopagamento'
      Required = True
    end
    object qrCadastroid_empresa: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'id_empresa'
      Required = True
    end
    object qrCadastrodescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 100
    end
    object qrCadastroid_situacao: TIntegerField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'id_situacao'
      Required = True
    end
    object qrCadastronumero_parcelas: TIntegerField
      DisplayLabel = 'N'#250'mero de parcelas'
      FieldName = 'numero_parcelas'
      Required = True
    end
    object qrCadastroperiodicidade: TIntegerField
      DisplayLabel = 'Periodicidade'
      FieldName = 'periodicidade'
      Required = True
    end
    object qrCadastroperiodicidade_inicio: TIntegerField
      DisplayLabel = 'Periodicidade in'#237'cio'
      FieldName = 'periodicidade_inicio'
      Required = True
    end
    object qrCadastropossui_entrada: TBooleanField
      DisplayLabel = 'Possui entrada'
      FieldName = 'possui_entrada'
      Required = True
    end
  end
  inherited jvdsCadastro: TJvDataSource
    Left = 400
    Top = 8
  end
  object cdsCondicaoPagParcela: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCondicaoPagParcela'
    Left = 472
    Top = 8
    object cdsCondicaoPagParcelaid_condicaopagamento: TIntegerField
      FieldName = 'id_condicaopagamento'
      Required = True
    end
    object cdsCondicaoPagParcelaid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object cdsCondicaoPagParcelanro_parcela: TIntegerField
      FieldName = 'nro_parcela'
      Required = True
    end
    object cdsCondicaoPagParceladias_prazo: TIntegerField
      FieldName = 'dias_prazo'
      Required = True
    end
  end
  object dspCondicaoPagParcela: TDataSetProvider
    DataSet = qrCondicaoPagParcela
    Left = 360
    Top = 72
  end
  object qrCondicaoPagParcela: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO condicaopagamentoparcela'
      '  (id_condicaopagamento, id_empresa, nro_parcela, dias_prazo)'
      'VALUES'
      
        '  (:id_condicaopagamento, :id_empresa, :nro_parcela, :dias_prazo' +
        ')')
    SQLDelete.Strings = (
      'DELETE FROM condicaopagamentoparcela'
      'WHERE'
      
        '  id_condicaopagamento = :Old_id_condicaopagamento AND id_empres' +
        'a = :Old_id_empresa AND nro_parcela = :Old_nro_parcela')
    SQLUpdate.Strings = (
      'UPDATE condicaopagamentoparcela'
      'SET'
      
        '  id_condicaopagamento = :id_condicaopagamento, id_empresa = :id' +
        '_empresa, nro_parcela = :nro_parcela, dias_prazo = :dias_prazo'
      'WHERE'
      
        '  id_condicaopagamento = :Old_id_condicaopagamento AND id_empres' +
        'a = :Old_id_empresa AND nro_parcela = :Old_nro_parcela')
    SQLLock.Strings = (
      'SELECT * FROM condicaopagamentoparcela'
      'WHERE'
      
        '  id_condicaopagamento = :Old_id_condicaopagamento AND id_empres' +
        'a = :Old_id_empresa AND nro_parcela = :Old_nro_parcela'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_condicaopagamento, id_empresa, nro_parcela, dias_prazo' +
        ' FROM condicaopagamentoparcela'
      'WHERE'
      
        '  id_condicaopagamento = :id_condicaopagamento AND id_empresa = ' +
        ':id_empresa AND nro_parcela = :nro_parcela')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM condicaopagamentoparcela'
      ''
      ') t')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'id_condicaopagamento, id_empresa, nro_parcela, dias_prazo'
      'from condicaopagamentoparcela'
      
        'where id_condicaopagamento = :id_condicaopagamento and id_empres' +
        'a = :id_empresa'
      ''
      '')
    Left = 480
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_condicaopagamento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrCondicaoPagParcelaid_condicaopagamento: TIntegerField
      FieldName = 'id_condicaopagamento'
      Required = True
    end
    object qrCondicaoPagParcelaid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrCondicaoPagParcelanro_parcela: TIntegerField
      FieldName = 'nro_parcela'
      Required = True
    end
    object qrCondicaoPagParceladias_prazo: TIntegerField
      FieldName = 'dias_prazo'
      Required = True
    end
  end
  object dsCondicaoPagParcela: TDataSource
    AutoEdit = False
    DataSet = cdsCondicaoPagParcela
    Left = 144
    Top = 72
  end
end
