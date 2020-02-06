inherited frmTransferenciaestoque: TfrmTransferenciaestoque
  Caption = 'TRANSFER'#202'NCIA DE ESTOQUE'
  ClientHeight = 664
  ClientWidth = 1131
  KeyPreview = True
  OnKeyDown = FormKeyDown
  ExplicitWidth = 1137
  ExplicitHeight = 693
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 1131
    Height = 663
    ExplicitWidth = 1131
    ExplicitHeight = 663
    FullHeight = 200
    object AdvPageControl1: TAdvPageControl
      Left = 0
      Top = 0
      Width = 1131
      Height = 663
      ActivePage = AdvTabSheet1
      ActiveFont.Charset = DEFAULT_CHARSET
      ActiveFont.Color = clWindowText
      ActiveFont.Height = -11
      ActiveFont.Name = 'Tahoma'
      ActiveFont.Style = []
      Align = alClient
      DoubleBuffered = True
      DefaultTabColor = 14997705
      ActiveColor = 14997705
      TabBackGroundColor = 14997705
      TabMargin.RightMargin = 0
      TabOverlap = 0
      Version = '2.0.0.6'
      PersistPagesState.Location = plRegistry
      PersistPagesState.Enabled = False
      TabOrder = 0
      object AdvTabSheet1: TAdvTabSheet
        Caption = 'TRANSFER'#202'NCIA ESTOQUE'
        Color = 14997705
        ColorTo = clNone
        TabColor = 14997705
        TabColorTo = clNone
        object AdvGroupBox1: TAdvGroupBox
          Left = 152
          Top = 3
          Width = 369
          Height = 118
          BorderColor = clNavy
          CaptionPosition = cpTopCenter
          Caption = 'SETORES'
          TabOrder = 2
          object Label1: TLabel
            Left = 19
            Top = 20
            Width = 109
            Height = 16
            Caption = 'SETOR DE ORIGEM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 17
            Top = 70
            Width = 96
            Height = 16
            Caption = 'SETOR DESTINO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 216
            Top = 20
            Width = 32
            Height = 16
            Caption = 'DATA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 217
            Top = 70
            Width = 33
            Height = 16
            Caption = 'HORA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object dtpData: TDateTimePicker
            Left = 216
            Top = 37
            Width = 85
            Height = 24
            Date = 43069.000000000000000000
            Time = 43069.000000000000000000
            TabOrder = 0
          end
          object dtTime: TDateTimePicker
            Left = 216
            Top = 86
            Width = 85
            Height = 24
            Date = 2.000000000000000000
            Format = 'HH:mm'
            Time = 2.000000000000000000
            Kind = dtkTime
            TabOrder = 1
          end
        end
        object btSalvar: TAdvGlowButton
          AlignWithMargins = True
          Left = 750
          Top = 30
          Width = 167
          Height = 81
          Margins.Left = 0
          Caption = 'CONFIRMAR TRANSFER'#202'NCIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ImageIndex = 1
          Images = frmMenu.ImgList32
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = btSalvarClick
          Appearance.BorderColor = clNavy
          Appearance.BorderColorDisabled = clNavy
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
          Appearance.TextColorChecked = clNavy
          Appearance.TextColorDown = clNavy
          Appearance.TextColorHot = clNavy
          MinButtonSizeState = bsLabel
        end
        object btCancela: TAdvGlowButton
          AlignWithMargins = True
          Left = 942
          Top = 30
          Width = 167
          Height = 81
          Margins.Left = 0
          Caption = 'CANCELAR TRANSFER'#202'NCIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ImageIndex = 4
          Images = frmMenu.ImgList32
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 4
          TabStop = True
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
        object AdvGroupBox2: TAdvGroupBox
          Left = 0
          Top = 127
          Width = 420
          Height = 503
          BorderColor = clNavy
          Caption = 'PRODUTOS'
          TabOrder = 5
          DesignSize = (
            420
            503)
          object Label5: TLabel
            Left = 5
            Top = 19
            Width = 107
            Height = 16
            Caption = 'C'#211'DIGO PRODUTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblDescricao: TLabel
            Left = 144
            Top = 40
            Width = 4
            Height = 16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 282
            Top = 19
            Width = 76
            Height = 16
            Caption = 'QUANTIDADE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edCodProduto: TcxButtonEdit
            Left = 5
            Top = 36
            Properties.Buttons = <
              item
                Action = acPesquisaProduto
                Default = True
                ImageIndex = 0
                Kind = bkGlyph
              end>
            Properties.ClickKey = 0
            Properties.Images = frmMenu.ImgList16
            Properties.OnChange = edCodProdutoPropertiesChange
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            Width = 129
          end
          object edQuantidade: TJvValidateEdit
            Tag = 1
            Left = 279
            Top = 36
            Width = 83
            Height = 24
            Flat = False
            ParentFlat = False
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = False
            DisplayFormat = dfFloatFixed
            DecimalPlaces = 3
            EditText = '1,000'
            HasMaxValue = True
            HasMinValue = True
            MaxValue = 9999.000000000000000000
            MinValue = 1.000000000000000000
            TabOrder = 1
            OnEnter = edQuantidadeEnter
            DataConnector.DataField = 'quantidade'
          end
          object cxGrid1: TcxGrid
            Left = 3
            Top = 66
            Width = 414
            Height = 434
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 3
            object cxGrademateriais: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsListaprodutos
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGrademateriaiscodigo_material: TcxGridDBColumn
                Caption = 'C'#211'DIGO'
                DataBinding.FieldName = 'codigo_material'
                Width = 62
              end
              object cxGrademateriaisdescricao_material: TcxGridDBColumn
                Caption = 'DESCRI'#199#195'O'
                DataBinding.FieldName = 'descricao_material'
                Width = 243
              end
              object cxGrademateriaisquantidade: TcxGridDBColumn
                Caption = 'QUANTIDADE'
                DataBinding.FieldName = 'quantidade'
                Width = 86
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrademateriais
            end
          end
          object btInserir: TAdvGlowButton
            Left = 374
            Top = 22
            Width = 43
            Height = 38
            Hint = 'Inserir item'
            Anchors = [akTop, akRight]
            ImageIndex = 56
            Images = frmMenu.ImgList24
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            Picture.Data = {
              89504E470D0A1A0A0000000D4948445200000026000000260806000000A83DE9
              AE0000000473424954080808087C086488000000097048597300000B1200000B
              1201D2DD7EFC0000001C74455874536F6674776172650041646F626520466972
              65776F726B7320435336E8BCB28C00000016744558744372656174696F6E2054
              696D650031312F32382F31374C0B332700000A13494441545885ED987B901D55
              9DC7BFBF734E77DFE7BC3273274EE535490434042104D4B86050C0172A9B82D5
              05DD64ABB4D052D605C363089428D9E551834A28AC920A0A2C115882C2962E62
              B186974825920A60028909189924339379DD57DFDBDDE7FC7EFE313331999944
              86D496FFF8AD7B6ED73DD5E7D79F7B7EBFF3ED3E4D2282A3E9893F5E82477EB9
              8BFEF1DC66091ADBE8FCB69F0800D06788BEB96266A713FFB403BD66CFC3FFF5
              C60ED921F10F7E7B120DF6254A6B129D56182E413EBAE40C396FDE86A35EE368
              A2A381BD5EBADB0751D6B9585BAE512E35831764FEB5F8B9B5A42EBEE0A24FCD
              6D3FF5F2998D8BCEAC25237D7FEADB79F3AFB6DEFFC06D9FDF570780CFFE8CB0
              E2840BE8CC599FCA68F2552251B8A8F1ABEEB8C0360F75A351B7986CD09C3726
              97736C5380351DFEE9C5DF6E7F3C3A609FFDC482779D71EDEC194B1765753B18
              090E945FADF50CBEDCB5BCF3D63B4584C7630DD86773910B5391AB44D6D5AB27
              E4BFC093088E2235B1A3C96BD1819FCB0AE93473628CF2FC567FAEE90FB7A786
              D5D60FCD9BF9BE6F149A162E4AEB2654E520225450C89F906E6F3EB1EBD19757
              AE3C3C56AB39BB62391AF67460A7BAD6B16426761069434A05449412580FA429
              C0CCB81CBE92CBA6F24BF299C2FC94DF880865301288C4204AA13DBFA05D66DB
              9BFF67FB97CA9F59B47EE378BCB9E9CF3A003504D3C19AE25F309030BB324B5C
              7612C5966B2A426FCA0F72DA32976AC97018BB3208807002C731222E41298D19
              F939ED730A27DFF1A3E7CFFFC4F430DE06D889B995DC99FE5C2DC2BE01CB514F
              E4AA7B42E9DDDF9A39AD2F1F74BCD43FB4E7FFFA8B3B2B162184044E12384E10
              BA21782685F696051D272FFCC8F7D63DF191F71F0FD85157E554E786BCD77FE1
              0F77FE03BCE4EB6DCDB32E98D9749249AC8580010888347C93463D2E635FFF6B
              DB76BEB9F9B25567FD7CF33B019B4E414A46CD8D4EE9F8E7CDE2D4FDFD837FFA
              455FF1F5482866826396581CD710254518CFC3CCB6CE5317CC5BF2DDF54F7F7C
              D9B1823EBEE30B53F6EB1B6FBC711A6C4036E888BD4C79B018F62643C51E658C
              9AA5FD202028C5928025816307630C023F3327F0D3F37EFADCDA1D1F3C71D5FE
              A9E29DD4B6024FBD7139E6377FF2F8C000A0D15B145678C76094C461DFD06EE3
              07FE6CDF0F5200E03881E3088E13047E00E379F3F3B9DCA2E7B6AFDF55ABECDF
              3FABED0393BCEC8DE127D4EBFD3FC5AF5FB9114B3B2F03304D6F395C8B67FCFB
              BE93172CDE14E8C6F5FBFA5F7B72A4DA53058DD69BE50889ABA0168D2015A4D0
              DC5CF8607BA17DF5B6375F580800FDEE91F44B43DF4E8FC73A77FE9DEC695F77
              CE59AAC7FBDE311800B463556F6BED935B366DFADD7FBEBA73F386FDFDBB4ACC
              311401966344B686302E22083CD5DAD27E4EFBACFCAAAE7B4ECB17F4C549DA4B
              37BD78704DF3737DDF32D8368C7CA63908FC9CFF4FEB09C0D8AABC642D654F7C
              CFC2333B0A7396E6D2CD0D2288AD8B994888C122EC88AD681651026861D12052
              4A9356A403761255C28373E6CE5EF8A1B9B3DE3BD3371915277540040286361E
              1414AA954A7CA0EFADFFE8BEFBFEEF3E76D78FA39EE1B732898B7D8033CCE2A2
              382E0D5647C2DF6CBEC79288E09EDF9C77496B4B616D637E46A7EFA521C2872C
              60D44DC62D85C63F47888840A4A0485922AD8914FD650C201068AD218E50AE94
              07468A43FFB6E294FB1E04802D03370409DB66619713702D8E93E15269B8AE3E
              7699A71BF3AD4B1A722D9DD96C038CAF613C05CFF3E179017C3F05DF4F8FB514
              7C2F056F42332680311EA0C838B694D808D625879A7309125B879308C6D32D81
              9F597CC35DA7290038A3F5A668EBAE5DBD2CAE8FD9B12209BCC0D72629E6954D
              1C857129917ADD13614CC37427890E1DD5A15F0206480022B8585CAD1EA69F79
              AAE8E16B885E1A7A37F5A77763A876611C50A305A0AC246466B477AA03E1161A
              A02A502B8DA64E140E4FC5749088045A017A0C4D003000CB0C8102380D5BC922
              AFCF01004436439D990FA0168FC483FCFA502D296A9724649AE60F6BB6E259C7
              1E2709180C9123EB88C6BF8EC53A36400B401AF0D4E89277001C03B1002C0AE4
              609CA8DA928FBD9A00C0B2C2CBBCAC70288AEB7E314D60CF9867FA56860BC20D
              BF236ADAA3026F0153151007818CA574EC4802C8584A20185F13020111A01444
              29586D600202050A500A700E60190586D5886BFE3E0ED32FDEF4E5AD938CF6D6
              67B31A6C0CA01CBD2279BAFDE6B8A1AD79CEE2E6427AA909A4D17194242E6226
              078185B396981372CE6AC7D6136603254E194E949124AE684F40A7CF68B76715
              DAA531EB437963178B1D1039A06A35EA9554581A4C5FB3FE8BB3EFEE0BB7C687
              43DDF2744EB1A314278AAFFF78B16E16A324F776A108E0F9B1366D5D78D5490B
              DFFBFEBDA764D336EB1394C1581A1DC00C44AC10855EB95C34B7EDDADEF4A389
              50DD5B32881367D8298ECA990898E209763A72F834756DD8BCECD4E5A5EBF28D
              F1F98D59313E01E4466B2B6120B6405851E1C880BA7BFB33B9DB1F5FF787DAC4
              382307EBCA398863896EBBB826C70576C5036DE9742AF97090B55766B2F6EC94
              C7C60050325A53B103EA0C142B0AA561BDB16767FA96C7D7F54C82BAFA312212
              18E790745FF4179F7A476057DCD7A6D229B7DCD3B83ADB909C99F2D90F144401
              E418B00C840950AE124A45FDE0C8B077CDFDD70D0C4C8CB3FA5122303480A4FB
              E223CDF31D816985F38C47AB33B9E46CCF4B94A74414001E4B61CD02A52A501A
              D21BF7EF4E7DFBBEAE52EFC418573E4410403B075E77E964479F36D8577FD8B2
              ACA5C55C9BCEB8E55E508321812610018819A83BA05C219486CC53C3FD7ED77D
              5DA5DD13635CF11011044604BCEE529972AF392DB0AFFC70C6294DF9F41A3F88
              96ABA00A6681D2800810D951132D5714CAC3FEF37B77377CE9C1357D7B0F1FBF
              FA51221BC383400388BF7F891C7577FEB69FC73E7F6B4736974E5DE805EE1C31
              21226B41182DF4C802350794CA1AD562FAF7BDBB5A2F9F0875E5235ABB44E5C1
              2A70F1B1A1800933D6F593B9D0BEC3DA8B7A269DD890CF788A38C7A81AB10E24
              404CA3B71B01902406F552E68DEA507EF5BD37BCB5EDF0B1DF7830A5085E8E44
              11B32ADFB9AAF257DF631C396364C859CFBBE6A18E4933F9F09AC248AD4C4FA9
              24BF87380FEB805A0DA8D68028F2502F350CD4060BDFB9E3B29E278F80DA404A
              B1E4C01A92642BEBBEF8D7A1268341095B089CF6AE7EE05D0400573D9C35D73E
              96A3E2F00BF8DF8DE54DD511BF5BEACDBB0DB7208C8138D1882A4D43AED2D65D
              EB3DE367B7ED26EFBA5FF80600BEF9DFDA2804398851E4BCF0FB2B0FDAB70305
              4CB1E1BDEADE7950DA9151590F647D27D66306B451D2F8BEFDE5C7BED360969D
              5DF874A6C17D4D67A2D35D227B6B45AF3B79F3AC8D2BAE36D1AF9F7EB2A15AB6
              30DA08918025499C8BC3DBFF65E06DBFE999126C5C6B36BC07204B4E18EC98B4
              47C87654F8FA0FF76376EBB9F8E8977BE73BC7A78E0CD06BDB7E5ED8F556FF26
              075C8AEB1FDE426118C1F38914193192969B2E7D753A4CC706FB5BEBB8B66FFF
              9FFA3BD874F567AF141CC2DA8A79D00000000049454E44AE426082}
            TabOrder = 2
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
        end
        object AdvGroupBox3: TAdvGroupBox
          Left = 423
          Top = 127
          Width = 697
          Height = 503
          BorderColor = clNavy
          CaptionPosition = cpTopCenter
          Caption = 'DETALHES DA TRANSFER'#202'NCIA'
          TabOrder = 6
          DesignSize = (
            697
            503)
          object cxGrid2: TcxGrid
            Left = 3
            Top = 18
            Width = 691
            Height = 482
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 0
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsProdutostransferidos
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.ShowEditButtons = gsebAlways
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGridDBTableView1codigo: TcxGridDBColumn
                Caption = 'C'#211'DIGO'
                DataBinding.FieldName = 'codigo'
                Width = 52
              end
              object cxGridDBTableView1descricao: TcxGridDBColumn
                Caption = 'DESCRI'#199#195'O'
                DataBinding.FieldName = 'descricao'
                Width = 179
              end
              object cxGridDBTableView1estoque_origem: TcxGridDBColumn
                Caption = 'ESTQ ORIGEM'
                DataBinding.FieldName = 'estoque_origem'
                Width = 98
              end
              object cxGridDBTableView1estoque_destino: TcxGridDBColumn
                Caption = 'ESTQ DESTINO'
                DataBinding.FieldName = 'estoque_destino'
                Width = 104
              end
              object cxGridDBTableView1qtd_estoque_transferido: TcxGridDBColumn
                Caption = 'QTDE TRANSFERIDA'
                DataBinding.FieldName = 'qtd_estoque_transferido'
                Width = 124
              end
              object cxGridDBTableView1valor_total_produto: TcxGridDBColumn
                Caption = 'VALOR TOTAL'
                DataBinding.FieldName = 'valor_total_produto'
                Width = 90
              end
              object cxGridDBTableView1Column1: TcxGridDBColumn
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Action = acDeleteproduto
                    Default = True
                    ImageIndex = 1
                    Kind = bkGlyph
                  end>
                Properties.Images = frmMenu.ImgList16
                Width = 40
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
        object cbsetordestino: TDBLookupComboBox
          Left = 167
          Top = 89
          Width = 181
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'id_setor'
          ListField = 'descricao'
          ListSource = dsListasetordestino
          ParentFont = False
          TabOrder = 1
        end
        object cbsetororigem: TDBLookupComboBox
          Left = 167
          Top = 40
          Width = 181
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'id_setor'
          ListField = 'descricao'
          ListSource = dsListasetororigem
          ParentFont = False
          TabOrder = 0
          OnClick = cbsetororigemClick
        end
        object rgTipoestoque: TcxRadioGroup
          Left = 3
          Top = 5
          Caption = 'TIPO ESTOQUE'
          Properties.Items = <
            item
              Caption = 'PRODUTOS'
            end
            item
              Caption = 'INGREDIENTES'
            end>
          Style.BorderColor = clNavy
          Style.BorderStyle = ebsSingle
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          OnClick = cbsetororigemClick
          Height = 116
          Width = 129
        end
        object btNovo: TAdvGlowButton
          AlignWithMargins = True
          Left = 559
          Top = 30
          Width = 167
          Height = 81
          Margins.Left = 0
          Caption = 'NOVO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ImageIndex = 16
          Images = frmMenu.ImgList32
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = btNovoClick
          Appearance.BorderColor = clNavy
          Appearance.BorderColorDisabled = clNavy
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
          Appearance.TextColorChecked = clNavy
          Appearance.TextColorDown = clNavy
          Appearance.TextColorHot = clNavy
          MinButtonSizeState = bsLabel
        end
      end
      object AdvTabSheet2: TAdvTabSheet
        Caption = 'ITENS TRANSFERIDOS'
        Color = 14997705
        ColorTo = clNone
        TabColor = 14997705
        TabColorTo = clNone
        DesignSize = (
          1123
          632)
        object Label8: TLabel
          Left = 186
          Top = 3
          Width = 40
          Height = 16
          Caption = 'SETOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxGrid3: TcxGrid
          Left = 3
          Top = 80
          Width = 1117
          Height = 280
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
          object cxGridDBTableViewHistorico: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsTransferidosHistoricoMateriais
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGridDBTableViewHistoricodata: TcxGridDBColumn
              Caption = 'DATA'
              DataBinding.FieldName = 'data'
            end
            object cxGridDBTableViewHistoricohora: TcxGridDBColumn
              Caption = 'HOR'#193'RIO'
              DataBinding.FieldName = 'hora'
            end
            object cxGridDBTableViewHistoricoestoque_origem: TcxGridDBColumn
              Caption = 'ESTOQUE ORIGEM'
              DataBinding.FieldName = 'descricao'
              Width = 190
            end
            object cxGridDBTableViewHistoricoestoque_destino: TcxGridDBColumn
              Caption = 'ESTOQUE DESTINO'
              DataBinding.FieldName = 'setor_destino'
              Width = 223
            end
            object cxGridDBTableViewHistoricousu_002: TcxGridDBColumn
              Caption = 'USU'#193'RIO RESPONS'#193'VEL PELA TRANSFER'#202'NCIA'
              DataBinding.FieldName = 'usu_002'
              Width = 299
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGridDBTableViewHistorico
          end
        end
        object cxGrid4: TcxGrid
          Left = 3
          Top = 366
          Width = 1117
          Height = 263
          Anchors = [akLeft, akRight, akBottom]
          TabOrder = 1
          object cxGridDBTableViewHistoricoItens: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsTransferidosHistoricoMateriaisItens
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGridDBTableViewHistoricoItenscodigo_produto: TcxGridDBColumn
              Caption = 'C'#211'DIGO'
              DataBinding.FieldName = 'codigo_ref'
              Width = 131
            end
            object cxGridDBTableViewHistoricoItensdescricao: TcxGridDBColumn
              Caption = 'DESCRI'#199#195'O'
              DataBinding.FieldName = 'descricao_item'
              Width = 483
            end
            object cxGridDBTableViewHistoricoItensquantidade: TcxGridDBColumn
              Caption = 'QUANTIDADE'
              DataBinding.FieldName = 'quantidade'
              Width = 94
            end
            object cxGridDBTableViewHistoricoItensvalor_total: TcxGridDBColumn
              Caption = 'VALOR TOTAL'
              DataBinding.FieldName = 'valor_total'
              Width = 216
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableViewHistoricoItens
          end
        end
        object btPesquisar: TAdvGlowButton
          AlignWithMargins = True
          Left = 489
          Top = 18
          Width = 104
          Height = 41
          Margins.Left = 0
          Caption = 'Pesquisar'
          ImageIndex = 65
          Images = frmMenu.ImgList24
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 2
          OnClick = btPesquisarClick
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
        object rgFiltroTipoEstoque: TcxRadioGroup
          Left = 3
          Top = 0
          Caption = 'TIPO ESTOQUE'
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = 'PRODUTOS'
            end
            item
              Caption = 'INGREDIENTES'
            end>
          Style.BorderColor = clNavy
          Style.BorderStyle = ebsSingle
          Style.LookAndFeel.Kind = lfStandard
          Style.LookAndFeel.NativeStyle = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnClick = cbsetororigemClick
          Height = 74
          Width = 223
        end
        object AdvGroupBox4: TAdvGroupBox
          Left = 230
          Top = 8
          Width = 252
          Height = 65
          BorderColor = clNavy
          CaptionPosition = cpTopCenter
          TabOrder = 4
          object Label9: TLabel
            Left = 3
            Top = 5
            Width = 109
            Height = 16
            Caption = 'SETOR DE ORIGEM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 161
            Top = 5
            Width = 32
            Height = 16
            Caption = 'DATA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object dtpFiltrodata: TDateTimePicker
            Left = 161
            Top = 27
            Width = 85
            Height = 24
            Date = 43069.000000000000000000
            Time = 43069.000000000000000000
            TabOrder = 0
          end
          object cbFiltroSetorOrigem: TDBLookupComboBox
            Left = 3
            Top = 27
            Width = 152
            Height = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'id_setor'
            ListField = 'descricao'
            ListSource = dsListasetororigem
            ParentFont = False
            TabOrder = 1
            OnClick = cbsetororigemClick
          end
        end
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 663
    Width = 1131
    Height = 1
    ExplicitTop = 663
    ExplicitWidth = 1131
    ExplicitHeight = 1
  end
  object qrListasetororigem: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'SELECT id_setor, descricao from setor_estoque where id_empresa=:' +
        'id_empresa and id_situacao=4')
    Left = 268
    Top = 421
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrListasetororigemid_setor: TIntegerField
      FieldName = 'id_setor'
      Required = True
    end
    object qrListasetororigemdescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
  end
  object dsListasetororigem: TDataSource
    DataSet = qrListasetororigem
    Left = 340
    Top = 413
  end
  object qrListasetordestino: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select id_setor, descricao from setor_estoque where id_empresa=:' +
        'id_empresa and id_situacao=4'
      '')
    Left = 264
    Top = 480
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrListasetordestinoid_setor: TIntegerField
      FieldName = 'id_setor'
      Required = True
    end
    object qrListasetordestinodescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
  end
  object dsListasetordestino: TDataSource
    DataSet = qrListasetordestino
    Left = 348
    Top = 485
  end
  object qrListaprodutos: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select m.mat_001 as id_material,m.mat_003 descricao_material ,m.' +
        'mat_004 codigo_material,s.quantidade,m.mat_012 preco,'
      's.id_setor, m.utiliza_combo,'
      'se.descricao as descricao_setor, '#39'M'#39' as TIPO_MATERIAL '
      'from materiais m '
      
        'join setor_estoque_material s on m.mat_001=s.id_material and s.i' +
        'd_empresa=m.emp_001 '
      
        'join setor_estoque se on se.id_setor=s.id_setor and se.id_empres' +
        'a=s.id_empresa'
      
        'where m.emp_001=:emp and s.id_setor=:setor and utiliza_combo=fal' +
        'se')
    FilterOptions = [foCaseInsensitive]
    Left = 55
    Top = 421
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'setor'
        Value = nil
      end>
    object qrListaprodutosid_material: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object qrListaprodutosdescricao_material: TWideStringField
      FieldName = 'descricao_material'
      Required = True
      Size = 100
    end
    object qrListaprodutoscodigo_material: TWideStringField
      FieldName = 'codigo_material'
      Size = 50
    end
    object qrListaprodutosquantidade: TFloatField
      FieldName = 'quantidade'
      ReadOnly = True
      Required = True
    end
    object qrListaprodutospreco: TFloatField
      FieldName = 'preco'
      Required = True
    end
    object qrListaprodutosid_setor: TIntegerField
      FieldName = 'id_setor'
      ReadOnly = True
      Required = True
    end
    object qrListaprodutosdescricao_setor: TWideStringField
      FieldName = 'descricao_setor'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrListaprodutostipo_material: TWideMemoField
      FieldName = 'tipo_material'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrListaprodutosutiliza_combo: TBooleanField
      FieldName = 'utiliza_combo'
      ProviderFlags = []
    end
  end
  object dsListaprodutos: TDataSource
    DataSet = qrListaprodutos
    Left = 143
    Top = 421
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList24
    Left = 348
    Top = 277
    object acPesquisaProduto: TAction
      Caption = 'acPesquisaproduto'
      ImageIndex = 65
      OnExecute = acPesquisaProdutoExecute
    end
    object acDeleteproduto: TAction
      ImageIndex = 0
      OnExecute = acDeleteprodutoExecute
    end
  end
  object cdsProdutostransferidos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 492
    Top = 541
    object cdsProdutostransferidoscodigo: TStringField
      FieldName = 'codigo'
      Size = 40
    end
    object cdsProdutostransferidosdescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object cdsProdutostransferidosid_estoque_origem: TIntegerField
      FieldName = 'id_estoque_origem'
    end
    object cdsProdutostransferidosid_estoque_destino: TIntegerField
      FieldName = 'id_estoque_destino'
    end
    object cdsProdutostransferidosestoque_destino: TStringField
      FieldName = 'estoque_destino'
      Size = 50
    end
    object cdsProdutostransferidosestoque_origem: TStringField
      FieldName = 'estoque_origem'
      Size = 50
    end
    object cdsProdutostransferidosqtd_estoque_transferido: TFloatField
      FieldName = 'qtd_estoque_transferido'
    end
    object cdsProdutostransferidosvalor_total_produto: TCurrencyField
      FieldName = 'valor_total_produto'
    end
    object cdsProdutostransferidosid_produto: TIntegerField
      FieldName = 'id_produto'
    end
    object cdsProdutostransferidostipo_material: TStringField
      FieldName = 'tipo_material'
      Size = 1
    end
    object cdsProdutostransferidosutiliza_combo: TBooleanField
      FieldName = 'utiliza_combo'
    end
  end
  object dsProdutostransferidos: TDataSource
    AutoEdit = False
    DataSet = cdsProdutostransferidos
    Left = 580
    Top = 541
  end
  object qrListacomposicao: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select c.id_composicao as id_material,c.descricao as descricao_m' +
        'aterial, c.codigo_ref as codigo_material,sc.quantidade as quanti' +
        'dade,  c.valor_custo as preco, '
      
        '      se.id_setor , se.descricao as descricao_setor ,  '#39'C'#39' as TI' +
        'PO_MATERIAL, false as utiliza_combo      '
      '      from composicao c'
      
        '      join setor_estoque_composicao sc on (c.id_composicao=sc.id' +
        '_composicao) and (sc.id_empresa=c.id_empresa)  '
      
        '      join setor_estoque se on (se.id_empresa = sc.id_empresa) a' +
        'nd (sc.id_setor=se.id_setor)  '
      '      join unidades un  on (c.id_unidade=un.uni_001)'
      '      where'
      
        '      c.id_situacao=4 and c.id_empresa=:id_empresa and  se.id_se' +
        'tor=:id_setor')
    Left = 35
    Top = 483
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_setor'
        Value = nil
      end>
    object qrListacomposicaoid_material: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object qrListacomposicaodescricao_material: TWideStringField
      FieldName = 'descricao_material'
      Size = 100
    end
    object qrListacomposicaocodigo_material: TWideStringField
      FieldName = 'codigo_material'
      Size = 50
    end
    object qrListacomposicaoquantidade: TFloatField
      FieldName = 'quantidade'
      ReadOnly = True
      Required = True
    end
    object qrListacomposicaopreco: TFloatField
      FieldName = 'preco'
    end
    object qrListacomposicaoid_setor: TIntegerField
      FieldName = 'id_setor'
      ReadOnly = True
      Required = True
    end
    object qrListacomposicaodescricao_setor: TWideStringField
      FieldName = 'descricao_setor'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrListacomposicaotipo_material: TWideMemoField
      FieldName = 'tipo_material'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrListacomposicaoutiliza_combo: TBooleanField
      FieldName = 'utiliza_combo'
      ProviderFlags = []
    end
  end
  object dsComposicao: TDataSource
    DataSet = qrListacomposicao
    Left = 123
    Top = 483
  end
  object qrTransferidosHistoricoMateriaisItens: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select me.data,'
      'cast (me.data as time) as hora,'
      'me.quantidade,'
      'm.mat_003 as descricao_item,'
      'm.mat_004 as codigo_ref,'
      'm.mat_012 as valor_custo,'
      'me.quantidade*m.mat_012 as valor_total'
      'from movimentoestoque me'
      
        'join materiais m on m.mat_001=me.id_material and m.emp_001=me.id' +
        '_empresa'
      
        'where me.id_setor_destino is not null  and me.id_empresa=:empres' +
        'a order by me.data')
    MasterSource = dsTransferidosHistoricoMateriais
    MasterFields = 'data'
    DetailFields = 'data'
    Left = 676
    Top = 379
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data'
        Value = nil
      end>
    object qrTransferidosHistoricoMateriaisItenshora: TTimeField
      FieldName = 'hora'
      ReadOnly = True
      EditMask = '!90:00;1;_'
    end
    object qrTransferidosHistoricoMateriaisItensquantidade: TFloatField
      FieldName = 'quantidade'
      Required = True
      EditFormat = '0.00'
    end
    object qrTransferidosHistoricoMateriaisItensvalor_total: TFloatField
      FieldName = 'valor_total'
      ReadOnly = True
      currency = True
    end
    object qrTransferidosHistoricoMateriaisItensdata: TDateTimeField
      FieldName = 'data'
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object qrTransferidosHistoricoMateriaisItensdescricao_item: TWideStringField
      FieldName = 'descricao_item'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qrTransferidosHistoricoMateriaisItenscodigo_ref: TWideStringField
      FieldName = 'codigo_ref'
      ReadOnly = True
      Size = 50
    end
    object qrTransferidosHistoricoMateriaisItensvalor_custo: TFloatField
      FieldName = 'valor_custo'
      ReadOnly = True
    end
  end
  object dsTransferidosHistoricoMateriaisItens: TDataSource
    AutoEdit = False
    DataSet = qrTransferidosHistoricoMateriaisItens
    Left = 820
    Top = 395
  end
  object qrTransferidosHistoricoMateriais: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select me.data,'
      'cast (me.data as time) as hora,'
      'se.descricao,sed.descricao as setor_destino,'
      'u.usu_002'
      'from movimentoestoque me'
      
        'join setor_estoque se on se.id_setor=me.id_setor and se.id_empre' +
        'sa=me.id_empresa'
      
        'join setor_estoque sed on  sed.id_setor=me.id_setor_destino and ' +
        'sed.id_empresa=me.id_empresa'
      'join usuarios u on u.usu_001=me.id_usuario'
      'where '
      'me.id_setor_destino is not null '
      'and me.id_empresa=:empresa '
      'and me.data>=:data1 and me.data<:data2'
      'and me.id_setor=:id_setor'
      'group by me.data ,se.descricao,sed.descricao,u.usu_002 '
      'order by me.data')
    Left = 676
    Top = 307
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_setor'
        Value = nil
      end>
    object qrTransferidosHistoricoMateriaishora: TTimeField
      FieldName = 'hora'
      ReadOnly = True
    end
    object qrTransferidosHistoricoMateriaisdescricao: TWideStringField
      FieldName = 'descricao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrTransferidosHistoricoMateriaissetor_destino: TWideStringField
      FieldName = 'setor_destino'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrTransferidosHistoricoMateriaisusu_002: TWideStringField
      FieldName = 'usu_002'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrTransferidosHistoricoMateriaisdata: TDateTimeField
      FieldName = 'data'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object dsTransferidosHistoricoMateriais: TDataSource
    AutoEdit = False
    DataSet = qrTransferidosHistoricoMateriais
    Left = 820
    Top = 323
  end
  object qrTransferidosHistoricoComposicao: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select me.data,'
      'cast (me.data as time) as hora,'
      'se.descricao,sed.descricao as setor_destino,'
      'u.usu_002'
      'from movimento_estoque_composicao me'
      
        'join setor_estoque se on se.id_setor=me.id_setor and se.id_empre' +
        'sa=me.id_empresa'
      
        'join setor_estoque sed on  sed.id_setor=me.id_setor_destino and ' +
        'sed.id_empresa=me.id_empresa'
      'join usuarios u on u.usu_001=me.id_usuario'
      'where '
      'me.id_setor_destino is not null '
      'and me.id_empresa=:empresa '
      'and me.data>=:data1 and me.data<:data2'
      'and me.id_setor=:id_setor'
      'group by me.data ,se.descricao,sed.descricao,u.usu_002 '
      'order by me.data')
    Left = 676
    Top = 435
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_setor'
        Value = nil
      end>
    object TimeField1: TTimeField
      FieldName = 'hora'
      ReadOnly = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'descricao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object WideStringField2: TWideStringField
      FieldName = 'setor_destino'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object WideStringField3: TWideStringField
      FieldName = 'usu_002'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'data'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object dsTransferidosHistoricoComposicao: TDataSource
    AutoEdit = False
    DataSet = qrTransferidosHistoricoComposicao
    Left = 820
    Top = 451
  end
  object qrTransferidosHistoricoComposicaoItens: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select me.data,'
      'cast (me.data as time) as hora,'
      'me.quantidade,'
      'c.descricao as descricao_item,'
      'c.codigo_ref,'
      'c.valor_custo,'
      'me.quantidade*c.valor_custo as valor_total'
      'from movimento_estoque_composicao me'
      
        'join composicao c on c.id_composicao = me.id_composicao and c.id' +
        '_empresa=me.id_empresa'
      'where '
      'me.id_setor_destino is not null  '
      'and me.id_empresa=:empresa '
      'order by me.data')
    MasterSource = dsTransferidosHistoricoComposicao
    MasterFields = 'data'
    DetailFields = 'data'
    Left = 676
    Top = 507
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data'
        Value = nil
      end>
    object TimeField2: TTimeField
      FieldName = 'hora'
      ReadOnly = True
      EditMask = '!90:00;1;_'
    end
    object FloatField1: TFloatField
      FieldName = 'quantidade'
      Required = True
      EditFormat = '0.00'
    end
    object FloatField3: TFloatField
      FieldName = 'valor_total'
      ReadOnly = True
      currency = True
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'data'
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object qrTransferidosHistoricoComposicaoItensdescricao_item: TWideStringField
      FieldName = 'descricao_item'
      ReadOnly = True
      Size = 100
    end
    object qrTransferidosHistoricoComposicaoItenscodigo_ref: TWideStringField
      FieldName = 'codigo_ref'
      ReadOnly = True
      Size = 50
    end
    object qrTransferidosHistoricoComposicaoItensvalor_custo: TFloatField
      FieldName = 'valor_custo'
      ReadOnly = True
    end
  end
  object dsTransferidosHistoricoComposicaoItens: TDataSource
    AutoEdit = False
    DataSet = qrTransferidosHistoricoComposicaoItens
    Left = 820
    Top = 523
  end
end
