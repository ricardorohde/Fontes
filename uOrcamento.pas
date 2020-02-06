unit uOrcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  Data.DB, MemDS, DBAccess, Uni, System.Actions, Vcl.ActnList, AdvGlowButton,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxButtonEdit, cxDBEdit, cxMemo, cxCalc, cxDropDownEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, cxCurrencyEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, AdvGroupBox, cxGroupBox,
  cxRadioGroup, JvExStdCtrls, JvEdit, JvValidateEdit, Vcl.Mask, Vcl.DBCtrls,
  frxClass, frxDBSet, Vcl.Menus, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, frxExportPDF;

type
  TfrmOrcamento = class(TfrmModelo)
    ActionList1: TActionList;
    acIncluir: TAction;
    acExcluir: TAction;
    acSalvar: TAction;
    acLocalizar: TAction;
    AcCancelar: TAction;
    qrOrcamento: TUniQuery;
    dsOrcamento: TDataSource;
    qrOrcamentoid_orcamento: TIntegerField;
    qrOrcamentoid_empresa: TIntegerField;
    qrOrcamentoid_cliente: TIntegerField;
    qrOrcamentodata: TDateTimeField;
    qrOrcamentoid_usuario: TIntegerField;
    qrOrcamentovalor_total: TFloatField;
    qrOrcamentovalor_desconto: TFloatField;
    qrOrcamentovalor_acrescimo: TFloatField;
    qrOrcamentoobservacao: TWideMemoField;
    qrOrcamentonome_retirada: TWideStringField;
    Label10: TLabel;
    meObservacao: TcxDBMemo;
    edCodproduto: TcxButtonEdit;
    acBuscaProduto: TAction;
    acBuscavendedor: TAction;
    edVendedor: TcxDBButtonEdit;
    edNomevendedor: TEdit;
    acBuscacliente: TAction;
    edCodigocliente: TcxDBButtonEdit;
    edNomecliente: TEdit;
    Label3: TLabel;
    lblLimitecliente: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxTabelapreco: TcxRadioGroup;
    edDescricaoproduto: TEdit;
    btInserir: TAdvGlowButton;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lblDesconto: TLabel;
    Label7: TLabel;
    edQuantidade: TJvValidateEdit;
    edPreco: TJvValidateEdit;
    edDesconto: TJvValidateEdit;
    edTotal: TJvValidateEdit;
    qrOrcamentoitem: TUniQuery;
    dsOrcamentoitem: TDataSource;
    qrOrcamentoitemid_orcamento: TIntegerField;
    qrOrcamentoitemitem: TIntegerField;
    qrOrcamentoitemid_empresa: TIntegerField;
    qrOrcamentoitemid_material: TIntegerField;
    qrOrcamentoitemquantidade: TFloatField;
    qrOrcamentoitemvalor_unitario: TFloatField;
    qrOrcamentoitemvalor_total: TFloatField;
    qrOrcamentoitemvalor_desconto: TFloatField;
    qrOrcamentoitemvalor_acrescimo: TFloatField;
    cxGrid1DBTableView1quantidade: TcxGridDBColumn;
    cxGrid1DBTableView1valor_unitario: TcxGridDBColumn;
    cxGrid1DBTableView1valor_total: TcxGridDBColumn;
    cxGrid1DBTableView1valor_desconto: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    qrOrcamentoitemcodigo: TWideStringField;
    cxGrid1DBTableView1codigo: TcxGridDBColumn;
    acEditar: TAction;
    edIdorcamento: TJvValidateEdit;
    Label13: TLabel;
    dbTotal_item: TcxDBCurrencyEdit;
    Label8: TLabel;
    edQuantidadeitens: TJvValidateEdit;
    Label9: TLabel;
    btFecharorcamento: TAdvGlowButton;
    btEditar: TAdvGlowButton;
    acFinalizarorcamento: TAction;
    acFecharcomovenda: TAction;
    acExcluirorcamento: TAction;
    qrOrcamentoid_situacao: TIntegerField;
    btExcluiritem: TAdvGlowButton;
    acSair: TAction;
    btNovo: TAdvGlowButton;
    acImprimir: TAction;
    qrOrcamentoparcelas: TIntegerField;
    qrOrcamentoid_formapgto: TIntegerField;
    repOrcamento: TfrxReport;
    dbOrcamento: TfrxDBDataset;
    dbOrcamentoItem: TfrxDBDataset;
    qrOrcamentonome_vendedor: TWideStringField;
    qrOrcamentonome_cliente: TWideStringField;
    qrOrcamentodata_validade: TDateField;
    cxDBDateEdit1: TcxDBDateEdit;
    Label11: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    Label12: TLabel;
    Label14: TLabel;
    pmImpressao: TPopupMenu;
    ImpressoraA41: TMenuItem;
    ImpressoraTrmica1: TMenuItem;
    acFecharConsignado: TAction;
    qrOrcamentoitemid_setor: TIntegerField;
    qrOrcamentoconsignado: TBooleanField;
    ImpressoProduo1: TMenuItem;
    repProducao: TfrxReport;
    qrOrcamentoitemid_variacao: TIntegerField;
    qrOrcamentoitemdescricao: TWideMemoField;
    EnviarporEmail1: TMenuItem;
    N1: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    qrAuxiliar: TUniQuery;
    qrEmpresa: TUniQuery;
    qrCliente: TUniQuery;
    acConsultaProd: TAction;
    qrOrcamentocomanda: TIntegerField;
    lblComanda: TLabel;
    edComanda: TDBEdit;
    Timer1: TTimer;
    qrOrcamentoterminal: TWideStringField;
    btSair: TAdvGlowButton;
    btFecharConsignado: TAdvGlowButton;
    btImprimir: TAdvGlowButton;
    btExcluirorcamento: TAdvGlowButton;
    brExcluirorcamento: TAdvGlowButton;
    btConsultaProd: TAdvGlowButton;
    procedure acBuscaProdutoExecute(Sender: TObject);
    procedure dsOrcamentoStateChange(Sender: TObject);
    constructor Create(Sender: tcomponent; id_orcamento: integer = 0);
      reintroduce;
    procedure acIncluirExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure AcCancelarExecute(Sender: TObject);
    procedure acBuscavendedorExecute(Sender: TObject);
    procedure qrOrcamentoid_usuarioChange(Sender: TField);
    procedure acBuscaclienteExecute(Sender: TObject);
    procedure qrOrcamentoid_clienteChange(Sender: TField);
    procedure edCodprodutoExit(Sender: TObject);
    procedure edQuantidadeExit(Sender: TObject);
    procedure edTotalEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btInserirClick(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure qrOrcamentoNewRecord(DataSet: TDataSet);
    procedure qrOrcamentoAfterOpen(DataSet: TDataSet);
    procedure qrOrcamentoBeforePost(DataSet: TDataSet);
    procedure atualiza_totais;
    procedure qrOrcamentoitemAfterRefresh(DataSet: TDataSet);
    procedure qrOrcamentoitemAfterClose(DataSet: TDataSet);
    procedure acFinalizarorcamentoExecute(Sender: TObject);
    procedure acSairExecute(Sender: TObject);
    procedure acExcluirorcamentoExecute(Sender: TObject);
    procedure cxTabelaprecoClick(Sender: TObject);
    procedure acLocalizarExecute(Sender: TObject);
    procedure acFecharcomovendaExecute(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
    procedure ImpressoraA41Click(Sender: TObject);
    procedure ImprimirOrcamento(modo_impressao : String = 'G');
    procedure ImpressoraTrmica1Click(Sender: TObject);
    procedure acFecharConsignadoExecute(Sender: TObject);
    procedure ImpressoProduo1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EnviarporEmail1Click(Sender: TObject); //G=Gráfica / P=POS
    procedure EnviarEmail;
    procedure edCodprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure acConsultaProdExecute(Sender: TObject);
    procedure VerificarComandas;
    procedure Timer1Timer(Sender: TObject);
  private
    id_material, id_usuario_orcamento, dias_validade, id_setor, id_variacao: integer;
    escolher_numero_vias, imprimir_fantasia, permite_desconto,
    permite_alterar_valor_unitario : Boolean;
    bUtilizaVariacoesGrade, bDescricaoSeparada, bDadosCompletosEmpresa,
    bDadosCompletosCliente, bImprimirValidade, bExibirLimite,
    bAgruparItens, bHabilitarComandas, bSemSenha : Boolean;
    sLetraPesquisa: string;
  public
    { Public declarations }
  end;

var
  frmOrcamento: TfrmOrcamento;

implementation

{$R *.dfm}

uses uMenu, uBuscaRegistro, uFuncoes, uOrcamentofechaorcamento,
  uConsultaorcamento, Funcao_DB, uBuscaRegistroProd, uVendaSelecaoGrade,
  uConsProduto, uComandaOrc;

// SITUAÇAO DO ORCAMENTO
//  0 = DIGITAÇÃO   ( QUANDO ABRE UM ORÇAMENTO)
//  1 = FINALIZADO  ( QUANDO FINALIZA A VENDA)
//  2 = ORCAMENTO EXCLUIDO
//  4 = ORÇAMENTO SALVO
//  11 = AUTORIZADO
// ------------------------------------------   Rafael 13/10/2017-------------------------------------------------

procedure  TfrmOrcamento.ImprimirOrcamento(modo_impressao : String = 'G'); //G=Gráfica / P=POS
var caminho_logo, str_impressao, str_aux, caminho_config: string;
    correcao_colunas, numero_vias, i: integer;
begin
  modo_impressao := uppercase(modo_impressao);

  if qrOrcamento.State in [dsedit, dsinsert] then
  begin
    acSalvar.Execute;
    qrOrcamento.edit;
  end
  else
    qrOrcamento.Refresh;

  qrOrcamentoitem.Refresh;

  qrCliente.Close;
  qrCliente.ParamByName('cli').AsInteger:= qrOrcamentoid_cliente.AsInteger;
  qrCliente.Open;

  if qrOrcamentoitem.RecordCount > 0 then
  begin
    if modo_impressao = 'X' then //modo Gráfico EM PRODUÇÃO
    begin
      //Bruno - 07/05/2018
      repProducao.Variables['sTitulo'] := QuotedStr(qrEmpresa.FieldByName('titulo_orc').AsString);

      if imprimir_fantasia then
        repProducao.Variables['sNomeEmpresa'] := QuotedStr(qrEmpresa.FieldByName('fantasia').AsString)
      else
        repProducao.Variables['sNomeEmpresa'] := QuotedStr('');

      if bDadosCompletosEmpresa then
      begin
        repProducao.Variables['sEndEmpresa'] := QuotedStr(UpperCase(qrEmpresa.FieldByName('endereco').AsString));
        repProducao.Variables['sTelEmpresa'] := QuotedStr(qrEmpresa.FieldByName('telefone').AsString);
      end
      else
      begin
        repProducao.Variables['sEndEmpresa'] := QuotedStr('');
        repProducao.Variables['sTelEmpresa'] := QuotedStr('');
      end;

      if bDadosCompletosCliente then
      begin
        repProducao.Variables['sTitEnd']     := QuotedStr('Endereço:');
        repProducao.Variables['sEndCliente'] := QuotedStr(UpperCase(qrCliente.FieldByName('endereco').AsString));
        repProducao.Variables['sTelCliente'] := QuotedStr(qrCliente.FieldByName('telefone').AsString);
      end
      else
      begin
        repProducao.Variables['sTitEnd']     := QuotedStr('');
        repProducao.Variables['sEndCliente'] := QuotedStr('');
        repProducao.Variables['sTelCliente'] := QuotedStr('');
      end;

      //Bruno - 02/04/2018
      repProducao.Variables['sCliente']  := QuotedStr(edNomecliente.Text);
      repProducao.Variables['sVendedor'] := QuotedStr(edNomevendedor.Text);
      repProducao.Variables['sItens']    := QuotedStr('Qtde. de itens: ' + edQuantidadeitens.Text);

      if bImprimirValidade then
        repProducao.Variables['sValidade'] := QuotedStr('Validade: ' + FormatDateTime('dd/mm/yyyy', qrOrcamento.FieldByName('data_validade').asdatetime))
      else
        repProducao.Variables['sValidade'] := QuotedStr('');

      try
        caminho_logo := ExtractFilePath(Application.ExeName)+'\imagens\logoOrcamento.png';
        if FileExists(caminho_logo) then
          TfrxPictureView(repProducao.FindObject('imgLogoOrcamento')).Picture.LoadFromFile(caminho_logo);
      except
      end;

      repProducao.PrepareReport;
      repProducao.ShowReport;
    end
    else if modo_impressao = 'G' then //modo Gráfico
    begin
      //Bruno - 07/05/2018
      repOrcamento.Variables['sTitulo'] := QuotedStr(qrEmpresa.FieldByName('titulo_orc').AsString);

      if imprimir_fantasia then
        repOrcamento.Variables['sNomeEmpresa'] := QuotedStr(qrEmpresa.FieldByName('fantasia').AsString)
      else
        repOrcamento.Variables['sNomeEmpresa'] := QuotedStr('');

      if bDadosCompletosEmpresa then
      begin
        repOrcamento.Variables['sEndEmpresa'] := QuotedStr(UpperCase(qrEmpresa.FieldByName('endereco').AsString));
        repOrcamento.Variables['sTelEmpresa'] := QuotedStr(qrEmpresa.FieldByName('telefone').AsString);
      end
      else
      begin
        repOrcamento.Variables['sEndEmpresa'] := QuotedStr('');
        repOrcamento.Variables['sTelEmpresa'] := QuotedStr('');
      end;

      if bDadosCompletosCliente then
      begin
        repOrcamento.Variables['sTitEnd']     := QuotedStr('Endereço:');
        repOrcamento.Variables['sEndCliente'] := QuotedStr(UpperCase(qrCliente.FieldByName('endereco').AsString));
        repOrcamento.Variables['sTelCliente'] := QuotedStr(qrCliente.FieldByName('telefone').AsString);
      end
      else
      begin
        repOrcamento.Variables['sTitEnd']     := QuotedStr('');
        repOrcamento.Variables['sEndCliente'] := QuotedStr('');
        repOrcamento.Variables['sTelCliente'] := QuotedStr('');
      end;

      if bImprimirValidade then
        repOrcamento.Variables['sValidade'] := QuotedStr('Validade: ' + FormatDateTime('dd/mm/yyyy', qrOrcamento.FieldByName('data_validade').asdatetime))
      else
        repOrcamento.Variables['sValidade'] := QuotedStr('');

      //Bruno - 02/04/2018
      repOrcamento.Variables['sCliente']  := QuotedStr(edNomecliente.Text);
      repOrcamento.Variables['sVendedor'] := QuotedStr(edNomevendedor.Text);
      repOrcamento.Variables['sItens']    := QuotedStr('Qtde. de itens: ' + edQuantidadeitens.Text);

      try
        caminho_logo := ExtractFilePath(Application.ExeName)+'\imagens\logoOrcamento.png';
        if FileExists(caminho_logo) then
          TfrxPictureView(repOrcamento.FindObject('imgLogoOrcamento')).Picture.LoadFromFile(caminho_logo);
      except
      end;

      repOrcamento.PrepareReport;
      repOrcamento.ShowReport;
    end
    else //modo POS
    begin
      // pega nas configurações de impressora POS do orçamento a largura das colunas
      // para aplicar a correção onde necessário a maioria das impressoras
      // possui 48 colunas, mas algumas possuem menos (sweda possui 42)
      try
        caminho_config := ExtractFilePath(Application.ExeName) + 'CONF\IMP_ORCAMENTOPOS.xml';
        correcao_colunas := 48 - LerIntegerConfig('COLUNAS',caminho_config, 0);
        if correcao_colunas <0 then correcao_colunas := 0;
      except
        correcao_colunas := 0;
      end;

      //Bruno - 07/05/2018
      str_impressao := '</linha_simples>' + sLineBreak +
                       '</ce>' + qrEmpresa.FieldByName('titulo_orc').AsString + sLineBreak +
                       '</ae></linha_simples>' + sLineBreak;

      if imprimir_fantasia then
      begin
        str_impressao := str_impressao + '</ae>'+ qrEmpresa.FieldByName('fantasia').AsString + slinebreak;
        str_impressao := str_impressao + '</ae>'+ '</linha_simples>' + sLineBreak;
      end;

      if bDadosCompletosEmpresa then
      begin
        str_impressao := str_impressao + '</ae>'+
                         AcertaTexto(frmmenu.qrEmpresa.FieldByName('cep_004').AsString, 'E' , 40-correcao_colunas)+
                         AcertaTexto(frmmenu.qrEmpresa.FieldByName('emp_007').AsString, 'E' , 8)+ sLineBreak +
                         AcertaTexto(frmmenu.qrEmpresa.FieldByName('cep_003').AsString, 'E' , 48 -correcao_colunas)+ sLineBreak +
                         'FONE: '+AcertaTexto(frmmenu.qrEmpresa.FieldByName('emp_013').AsString, 'E' , 40)+ sLineBreak +
                         '</linha_simples>' + sLineBreak ;
      end;

      if bDadosCompletosCliente then
      begin
        str_impressao := str_impressao + '</ae>Nro.: ' + qrOrcamento.FieldByName('id_orcamento').AsString +
                         ' Data: ' + FormatDateTime('dd/mm/yyyy', qrOrcamento.FieldByName('data').asdatetime) + sLineBreak +
                         'Cliente: ' + edNomecliente.Text + sLineBreak +
                         'Endereço: ' + UpperCase(qrCliente.FieldByName('endereco').AsString) + sLineBreak +
                         'Telefone: ' + qrCliente.FieldByName('telefone').AsString + sLineBreak +
                         'Vendedor: ' + edNomevendedor.Text + sLineBreak +
                         '</linha_simples>' + sLineBreak +
                         'Valor Total: ' + format('R$%.2f', [qrOrcamento.FieldByName('valor_total').Asfloat]) + sLineBreak +
                         'Desconto: ' + format('R$%.2f', [qrOrcamento.FieldByName('valor_desconto').Asfloat]) + sLineBreak +
                         'Acréscimo: ' + format('R$%.2f', [qrOrcamento.FieldByName('valor_acrescimo').Asfloat]) + sLineBreak +
                         '</linha_simples>' + sLineBreak +
                         'Descrição do item'+ acertatexto('', 'E',10-correcao_colunas)+'Valor  Qtde.    Total' + sLineBreak +
                         '</linha_simples>' + sLineBreak ;
      end
      else
      begin
        str_impressao := str_impressao + '</ae>Nro.: ' + qrOrcamento.FieldByName('id_orcamento').AsString +
                         ' Data: ' + FormatDateTime('dd/mm/yyyy', qrOrcamento.FieldByName('data').asdatetime) + sLineBreak +
                         'Cliente: ' + edNomecliente.Text + sLineBreak +
                         'Vendedor: ' + edNomevendedor.Text + sLineBreak +
                         '</linha_simples>' + sLineBreak +
                         'Valor Total: ' + format('R$%.2f', [qrOrcamento.FieldByName('valor_total').Asfloat]) + sLineBreak +
                         'Desconto: ' + format('R$%.2f', [qrOrcamento.FieldByName('valor_desconto').Asfloat]) + sLineBreak +
                         'Acréscimo: ' + format('R$%.2f', [qrOrcamento.FieldByName('valor_acrescimo').Asfloat]) + sLineBreak +
                         '</linha_simples>' + sLineBreak +
                         'Descrição do item'+ acertatexto('', 'E',10-correcao_colunas)+'Valor  Qtde.    Total' + sLineBreak +
                         '</linha_simples>' + sLineBreak ;
      end;

      qrOrcamentoitem.First;
      while not qrOrcamentoitem.eof do
      begin
        if bDescricaoSeparada then
        begin
          str_aux := AcertaTexto(qrOrcamentoitem.FieldByName('codigo').AsString, 'E', 23)+
                     AcertaTexto(format('%.2f',[qrOrcamentoitem.FieldByName('valor_unitario').asfloat]), 'D', 9)+
                     AcertaTexto(format('%.2f',[qrOrcamentoitem.FieldByName('quantidade').asfloat]), 'D', 7)+
                     AcertaTexto(format('%.2f',[qrOrcamentoitem.FieldByName('valor_total').asfloat]), 'D', 9)+ sLineBreak +
                     Copy(qrOrcamentoitem.FieldByName('descricao').AsString, 1, 48-correcao_colunas);
        end
        else
        begin
          str_aux := QuebraLinhaItemCupom(qrOrcamentoitem.FieldByName('descricao').AsString, 23-correcao_colunas, '',
                     AcertaTexto(format('%.2f',[qrOrcamentoitem.FieldByName('valor_unitario').asfloat]), 'D', 9)+
                     AcertaTexto(format('%.2f',[qrOrcamentoitem.FieldByName('quantidade').asfloat]), 'D', 7)+
                     AcertaTexto(format('%.2f',[qrOrcamentoitem.FieldByName('valor_total').asfloat]), 'D', 9));
        end;

        str_impressao := str_impressao + str_aux +sLineBreak;
        qrOrcamentoitem.next;
      end;

      //Bruno - 02/04/2018
      str_impressao := str_impressao + '</linha_simples>' + sLineBreak +
      'Qtde. de itens: '+ edQuantidadeitens.Text + sLineBreak;

      if bImprimirValidade then
      begin
        str_impressao := str_impressao + '</linha_simples>' + sLineBreak +
                      'Validade do orçamento: ' + FormatDateTime('dd/mm/yyyy', qrOrcamento.FieldByName('data_validade').asdatetime) +
                      sLineBreak + '</linha_simples>' + sLineBreak;
      end;

      if trim(qrOrcamento.FieldByName('observacao').AsString)<>'' then
      begin
        str_impressao := str_impressao + 'Observações: ' + sLineBreak +
        qrOrcamento.FieldByName('observacao').AsString + sLineBreak + '</linha_simples>' + sLineBreak ;
      end;

      str_impressao := str_impressao + '</corte_total>' ;

      //pega o numero de vias se configurado para escolher
      numero_vias := 1;

      if escolher_numero_vias then
      begin
        numero_vias :=0;
        while not ((numero_vias >0) and (numero_vias <=3)) do
        begin
          str_aux := '2';
          if InputQuery('Informe o número de vias a imprimir', 'Número de vias:', str_aux) then
          begin
            try
              numero_vias := strtoint(trim(str_aux));
            except
              numero_vias := 0;
            end;
          end
          else
            numero_vias :=1;
          if (numero_vias <= 0) or (numero_vias>3)  then
            application.MessageBox('Valor inválido! A quantidade de impressão deve ser de 1 até 3 vias!', 'Atenção', MB_ICONINFORMATION);
        end;
      end;

      if frmmenu.ConfiguraImpressoraPOS('ORCAMENTOPOS') then
      begin
        for i := 1 to numero_vias do
          frmmenu.ACBrPosPrinter1.Imprimir(str_impressao);
      end;

    end;
  end
  else
    Application.MessageBox('Não existem itens neste orçamento!', 'Atenção', MB_ICONINFORMATION);
end;

constructor TfrmOrcamento.Create(Sender: tcomponent; id_orcamento: integer = 0);
begin
  inherited Create(Sender);

  bSemSenha:= LerBooleanConfig('CKLIBERARACESSO', frmmenu.cdsCFG.FileName);

  if not bSemSenha then
  begin
    if not frmmenu.ConfirmacaoSenha('b_permite_acesso_orcamento', id_usuario_orcamento) then
      abort;
  end;

  qrOrcamento.ParamByName('id_orcamento').AsInteger := id_orcamento;
  qrOrcamento.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
  qrOrcamento.Open;

  escolher_numero_vias           := LerBooleanConfig('CKIMPRIMIRVARIASVIASCUPOMORCAMENTO', frmmenu.cdsCFG.FileName);
  imprimir_fantasia              := LerBooleanConfig('CKIMPRIMIRFANTASIAORCAMENTO', frmmenu.cdsCFG.FileName);
  permite_desconto               := LerBooleanConfig('CKPERMITEDESCONTOITEMORCAMENTO', frmmenu.cdsCFG.FileName);
  permite_alterar_valor_unitario := LerBooleanConfig('CKPERMITEALTERARVALORUNITARIOORCAMENTO', frmmenu.cdsCFG.FileName);
  dias_validade                  := lerintegerconfig('EDORCAMENTODIASVALIDADE',frmmenu.cdsCFG.FileName, 30);
  bUtilizaVariacoesGrade         := LerBooleanConfig('CKUTILIZAVARIACOESGRADE', frmMenu.cdsCFG.FileName);
  bDescricaoSeparada             := LerBooleanConfig('CKDESCRICAOSEPARADA', frmMenu.cdsCFG.FileName);
  bDadosCompletosEmpresa         := LerBooleanConfig('CKIMPDADOSEMPORCAMENTO', frmMenu.cdsCFG.FileName);
  bDadosCompletosCliente         := LerBooleanConfig('CKIMPDADOSCLIORCAMENTO', frmMenu.cdsCFG.FileName);
  bImprimirValidade              := LerBooleanConfig('CKIMPRIMIRVALIDADE', frmMenu.cdsCFG.FileName);
  bExibirLimite                  := LerBooleanConfig('CKEXIBIRLIMITE', frmMenu.cdsCFG.FileName);
  bAgruparItens                  := LerBooleanConfig('CKAGRUPARITENSORC', frmMenu.cdsCFG.FileName);
  bHabilitarComandas             := LerBooleanConfig('CKHABILITARCOMANDAS', frmMenu.cdsCFG.FileName);

  lblComanda.Visible := bHabilitarComandas;
  edComanda.Visible  := bHabilitarComandas;
end;

procedure TfrmOrcamento.VerificarComandas;
begin
  Timer1.Enabled:= False;

  if bHabilitarComandas then
  begin
    try
      frmComandaOrc := TfrmComandaOrc.Create(self);
      frmComandaOrc.sTela:= 'ORC';
      frmComandaOrc.ShowModal;
    finally
      if frmComandaOrc.Tag = 1 then
      begin
        if frmComandaOrc.id_orcamento > 0 then
        begin
          qrorcamento.Close;
          qrorcamento.ParamByName('id_orcamento').AsInteger := frmComandaOrc.id_orcamento;
          qrorcamento.ParamByName('id_empresa').AsInteger   := RecProj.iEmp;
          qrorcamento.Open;

          qrOrcamentoid_usuarioChange(nil);
          qrOrcamentoid_clienteChange(nil);

          acEditar.Execute;

          edCodproduto.SetFocus;
        end
        else
        begin
          acIncluir.Execute;
          qrOrcamentocomanda.AsInteger:= StrToInt(frmComandaOrc.edComanda.Text);
        end;

        FreeAndNil(frmComandaOrc);
      end
      else
      begin
        FreeAndNil(frmComandaOrc);

        Close;
      end;
    end;
  end;
end;

procedure TfrmOrcamento.cxTabelaprecoClick(Sender: TObject);
var
  qraux1, qraux_update: TUniQuery;
  str_sql: string;
  soma, preco, total_item: double;
  // Calcula o preco a vista e a prazo

begin
  if qrOrcamento.State in [dsinsert, dsedit] then
  begin
    str_sql :=
      ' select mat_001 as id_material,emp_001 as empresa ,mat_003 as descricao,mat_004 as codigo ,'
      + ' mat_008 as preco,valor_tabela2 as preco_prazo, valor_atacado as preco_atacado  from materiais '
      + ' where emp_001=:id_empresa and mat_004=:codigo and sit_001=4';
    qraux1 := TUniQuery.Create(self);
    qraux1.Connection := frmmenu.conexao;
    qraux1.SQL.Add(str_sql);
    qraux1.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
    qraux1.ParamByName('codigo').AsString := edCodproduto.Text;
    qraux1.Open;
    if qraux1.RecordCount > 0 then
    begin
      if cxTabelapreco.ItemIndex = 0 then
      begin
        edPreco.value := qraux1.FieldByName('preco').Asfloat;
      end

      else if cxTabelapreco.ItemIndex = 1 then
      begin
        edPreco.value := qraux1.FieldByName('preco_prazo').Asfloat;
      end

      else if cxTabelapreco.ItemIndex = 2 then
      begin
        edPreco.value := qraux1.FieldByName('preco_atacado').Asfloat;
      end;
      edDescricaoproduto.Text := qraux1.FieldByName('descricao').AsString;
      id_material := qraux1.FieldByName('id_material').AsInteger;

      edQuantidade.value := 1;
      edDesconto.value := 0;
      soma := (edQuantidade.value * edPreco.value) - edDesconto.value;
      edTotal.value := soma;
    end;
    // Verificar se valor do item teve alteração Exemplo preço á vista e preco a prazo
    if qrorcamentoitem.active then // Se ela estiver abert a Qrorcamentoitem
    begin
      if qrOrcamentoitem.RecordCount > 0 then

      begin
        str_sql :=
          'update orcamento_item set valor_unitario=:valor_unitario , valor_total=:valor_total '
          + ' where id_orcamento=:id_orcamento and item=:item and id_empresa=:id_empresa';
        qraux_update := TUniQuery.Create(self);
        qraux_update.Connection := frmmenu.conexao;
        qraux_update.SQL.Add(str_sql);
        qrOrcamentoitem.First;
        while not qrOrcamentoitem.Eof do
        begin
          qraux1.close;
          qraux1.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
          qraux1.ParamByName('codigo').AsString :=qrOrcamentoitem.FieldByName('codigo').AsString;
          qraux1.Open;
          if cxTabelapreco.ItemIndex = 0 then
          begin
            preco := qraux1.FieldByName('preco').Asfloat;

          end

          else if cxTabelapreco.ItemIndex = 1 then
          begin
            preco := qraux1.FieldByName('preco_prazo').Asfloat;
          end

          else if cxTabelapreco.ItemIndex = 2 then
          begin
            preco := qraux1.FieldByName('preco_atacado').Asfloat;
          end;
          if preco > 0 then
          begin
            total_item:=preco*qrorcamentoitem.FieldByName('quantidade').Asfloat+qrorcamentoitem.FieldByName('valor_acrescimo').Asfloat - qrorcamentoitem.FieldByName('valor_desconto').Asfloat;
            qraux_update.ParamByName('valor_unitario').Asfloat := preco;
            qraux_update.ParamByName('valor_total').Asfloat := total_item;
            qraux_update.ParamByName('id_orcamento').AsInteger :=qrOrcamentoitem.FieldByName('id_orcamento').AsInteger;
            qraux_update.ParamByName('id_empresa').AsInteger :=qrOrcamentoitem.FieldByName('id_empresa').AsInteger;
            qraux_update.ParamByName('item').AsInteger :=qrOrcamentoitem.FieldByName('item').AsInteger;


            qraux_update.Execute;
          end;
            qrOrcamentoitem.Next;
        end;
      end;
    end;
    atualiza_totais;
    qrOrcamentoitem.Refresh;
  end;
end;

procedure TfrmOrcamento.acBuscaclienteExecute(Sender: TObject);
begin
  edCodigocliente.setfocus;

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
          'select cli_001, Cli_002, ' +
          'CLI_012, case when (cep_004 <> '''') and (cli_008 <> '''') then concat(cep_004, '', '', cli_008) '+
          'when (cep_004 <> '''') and (cli_008 = '''') then cep_004 end as endereco, '+
          'cidade_desc, cast(fn_situacoes(SIT_001) as varchar(100)) as situacao from clientes',
        CriaIntegerArray([0,1,2,3,4]),   //Campos visiveis
        CriaStringArray(['Código', 'Nome', 'Telefone Res.', 'Endereço', 'Cidade']),
        0, 0, ' sit_001=4 and emp_001='+IntToStr(RecProj.iEmp), 1000, 650);
  frmBuscaRegistro.ShowModal;

  if frmBuscaRegistro.Tag = 1 then
    qrOrcamento.FieldByName('id_cliente').value := frmBuscaRegistro.valor_retorno;

  FreeAndNil(frmBuscaRegistro);
end;

procedure TfrmOrcamento.acBuscaProdutoExecute(Sender: TObject);
var
  str_sql: string;
begin
  inherited;
  edCodproduto.setfocus;

  str_sql := 'select m.mat_004, m.mat_003, m.mat_008, ' +
             'm.valor_tabela2, coalesce(sum(stm.quantidade), 0.0) as quantidade from materiais m '+
             'left join setor_estoque_material stm on stm.id_material=m.mat_001 '+
             'and stm.id_empresa=m.emp_001 and stm.id_setor=m.id_setor ';

  frmBuscaRegistroProd := tfrmBuscaRegistroProd.CreateForm(self, str_sql,
    CriaIntegerArray([0, 1, 2, 3, 4]), CriaStringArray(['Código', 'Descrição',
    'Pr. Vista', 'Pr. Prazo', 'Estoque']), 0, 1,
    'm.sit_001=4 and m.emp_001=' + IntToStr(RecProj.iEmp),
    'group by m.mat_004, m.mat_003, m.mat_008, m.valor_tabela2',
    800, 500);

  frmBuscaRegistroProd.edBusca.Text:= sLetraPesquisa;

  frmBuscaRegistroProd.ShowModal;

  if frmBuscaRegistroProd.Tag = 1 then
    edCodproduto.Text := frmBuscaRegistroProd.valor_retorno;

  FreeAndNil(frmBuscaRegistroProd);

  edCodprodutoExit(nil);
end;

procedure TfrmOrcamento.acBuscavendedorExecute(Sender: TObject);
var
  str_sql: string;
begin

  str_sql := 'select usu_001,usu_002, usu_003 from usuarios   ';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
    CriaIntegerArray([0, 1, 2]), CriaStringArray(['Código', 'Nome', 'Vendedor']
    ), 0, 1, 'sit_001=4 and b_funcao_vendedor=true ', 30, 400);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag = 1 then
    qrOrcamento.FieldByName('id_usuario').AsInteger :=
      frmBuscaRegistro.valor_retorno;
  FreeAndNil(frmBuscaRegistro);
end;

procedure TfrmOrcamento.AcCancelarExecute(Sender: TObject);
var
str_sql:string;
qraux1:tuniquery;
begin
  inherited;
  qrOrcamento.Cancel;

  if qrorcamento.RecordCount>0 then
  begin
    if qrOrcamento.FieldByName('id_situacao').AsInteger = 0 then
    begin
      //Se for condicional estorna o estoque - Bruno 25/04/2018
      if qrOrcamentoconsignado.AsBoolean then
      begin
        qrOrcamentoitem.First;
        while not qrOrcamentoitem.Eof do
        begin
          //atualiza o estoque no setor
          str_sql := ' update setor_estoque_material set quantidade = coalesce(quantidade, 0.0) + ' +
                     ' :quantidade where id_material = :id_material and id_setor = :id_setor and id_empresa = :id_empresa';

          //tenta atualizar, se não houver registro de setor de estoque, insere
          if ExecutaComandoSQL(str_sql, vararrayof([qrOrcamentoitemquantidade.AsFloat, qrOrcamentoitemid_material.AsInteger, qrOrcamentoitemid_setor.AsInteger, qrOrcamentoitemid_empresa.AsInteger])) < 1 then
          begin
            str_sql := ' insert into setor_estoque_material (id_material, id_setor, id_empresa, quantidade) '+
                       ' values (:id_material, :id_setor, :id_empresa, (0.0 + :quantidade)) ';
            ExecutaComandoSQL(str_sql, vararrayof([qrOrcamentoitemid_material.AsInteger, qrOrcamentoitemid_setor.AsInteger, qrOrcamentoitemid_empresa.AsInteger, qrOrcamentoitemquantidade.AsFloat]));
          end;

          qrOrcamentoitem.Next;
        end;
      end;

      qrOrcamentoitem.First;

      str_sql :='delete from orcamento_item where id_orcamento=:id_orcamento and id_empresa=:id_empresa ';
      qraux1 := TUniQuery.Create(self);
      qraux1.Connection := frmmenu.conexao;
      qraux1.close;
      qraux1.SQL.Clear;
      qraux1.SQL.Add(str_sql);
      qraux1.ParamByName('id_empresa').AsInteger :=qrOrcamentoitem.FieldByName('id_empresa').AsInteger;
      qraux1.ParamByName('id_orcamento').AsInteger :=qrOrcamentoitem.FieldByName('id_orcamento').AsInteger;
      qraux1.Execute;

      qrOrcamento.Delete;

      ednomevendedor.Clear;
      ednomecliente.Clear;
      lblLimitecliente.Caption:= 'Limite disponível: 0,00';

      edCodproduto.Clear;
      edDescricaoproduto.Clear;
      edquantidade.Clear;
      edPreco.Clear;
      eddesconto.Clear;
      edTotal.Clear;
      edComanda.Clear;

      edIdorcamento.Value:= 0;
      edQuantidadeitens.Value:= 0;

      qrOrcamentoitem.Refresh;
      qrorcamento.refresh;

      dsOrcamentoStateChange(nil);

      if edvendedor.Canfocus then
        edvendedor.SetFocus;
    end;
  end
  else
  begin
    ednomevendedor.Clear;
    ednomecliente.Clear;
    lblLimitecliente.Caption:= 'Limite disponível: 0,00';

    edCodproduto.Clear;
    edDescricaoproduto.Clear;
    edquantidade.Clear;
    edPreco.Clear;
    eddesconto.Clear;
    edTotal.Clear;
    edComanda.Clear;

    edIdorcamento.Value:= 0;
    edQuantidadeitens.Value:= 0;
  end;

  if bHabilitarComandas then
    VerificarComandas;
end;

procedure TfrmOrcamento.acConsultaProdExecute(Sender: TObject);
var str_sql : string;
begin
  frmConsProduto := TfrmConsProduto.Create(self);
  frmConsProduto.ShowModal;
  FreeAndNil(frmConsProduto);
end;

procedure TfrmOrcamento.acEditarExecute(Sender: TObject);
begin
  qrOrcamento.Edit;
end;

procedure TfrmOrcamento.acExcluirExecute(Sender: TObject);
var
  str_sql: string;
  qraux1: TUniQuery;
begin
  if qrOrcamentoitem.RecordCount > 0 then
  begin
    if Application.MessageBox('Deseja realmente excluir esse item?', 'Alerta', MB_ICONWARNING + MB_YESNO) = mrYes then
    begin
      //Se for condicional estorna o estoque - Bruno 25/04/2018
      if qrOrcamentoconsignado.AsBoolean then
      begin
        //atualiza o estoque no setor
        str_sql := ' update setor_estoque_material set quantidade = coalesce(quantidade, 0.0) + ' +
                   ' :quantidade where id_material = :id_material and id_setor = :id_setor and id_empresa = :id_empresa';

        //tenta atualizar, se não houver registro de setor de estoque, insere
        if ExecutaComandoSQL(str_sql, vararrayof([qrOrcamentoitemquantidade.AsFloat, qrOrcamentoitemid_material.AsInteger, qrOrcamentoitemid_setor.AsInteger, qrOrcamentoitemid_empresa.AsInteger])) < 1 then
        begin
          str_sql := ' insert into setor_estoque_material (id_material, id_setor, id_empresa, quantidade) '+
                     ' values (:id_material, :id_setor, :id_empresa, (0.0 + :quantidade)) ';
          ExecutaComandoSQL(str_sql, vararrayof([qrOrcamentoitemid_material.AsInteger, qrOrcamentoitemid_setor.AsInteger, qrOrcamentoitemid_empresa.AsInteger, qrOrcamentoitemquantidade.AsFloat]));
        end;
      end;

      str_sql :='delete from orcamento_item where item=:item and id_orcamento=:id_orcamento and id_empresa=:id_empresa';
      qraux1 := TUniQuery.Create(self);
      qraux1.Connection := frmmenu.conexao;
      qraux1.close;
      qraux1.SQL.Clear;
      qraux1.SQL.Add(str_sql);
      qraux1.ParamByName('item').AsInteger := qrOrcamentoitem.FieldByName('item').AsInteger;
      qraux1.ParamByName('id_empresa').AsInteger :=qrOrcamentoitem.FieldByName('id_empresa').AsInteger;
      qraux1.ParamByName('id_orcamento').AsInteger :=qrOrcamentoitem.FieldByName('id_orcamento').AsInteger;
      qraux1.Execute;
      qrOrcamentoitem.Refresh;
      atualiza_totais;
      edcodproduto.Clear;
      edDescricaoproduto.Clear;
      edQuantidade.Clear;
      edPreco.Clear;
      edDesconto.Clear;
      edtotal.Clear;
      edCodproduto.setfocus;
    end;
  end
  else
  begin
    Application.MessageBox('Não existe item para ser excluído!', 'Atenção',
      MB_ICONEXCLAMATION);
    edCodproduto.setfocus;

  end;
end;

procedure TfrmOrcamento.acExcluirorcamentoExecute(Sender: TObject);
var
str_sql:string;
qraux1:tuniquery;
begin
  if qrorcamento.RecordCount>0 then
  begin
    if Application.MessageBox('Deseja realmente excluir esse orçamento?', 'Atenção',MB_ICONWARNING + MB_YESNO) = mrYes then
    begin
      //Se for condicional estorna o estoque - Bruno 25/04/2018
      if qrOrcamentoconsignado.AsBoolean then
      begin
        qrOrcamentoitem.First;
        while not qrOrcamentoitem.Eof do
        begin
          //atualiza o estoque no setor
          str_sql := ' update setor_estoque_material set quantidade = coalesce(quantidade, 0.0) + ' +
                     ' :quantidade where id_material = :id_material and id_setor = :id_setor and id_empresa = :id_empresa';

          //tenta atualizar, se não houver registro de setor de estoque, insere
          if ExecutaComandoSQL(str_sql, vararrayof([qrOrcamentoitemquantidade.AsFloat, qrOrcamentoitemid_material.AsInteger, qrOrcamentoitemid_setor.AsInteger, qrOrcamentoitemid_empresa.AsInteger])) < 1 then
          begin
            str_sql := ' insert into setor_estoque_material (id_material, id_setor, id_empresa, quantidade) '+
                       ' values (:id_material, :id_setor, :id_empresa, (0.0 + :quantidade)) ';
            ExecutaComandoSQL(str_sql, vararrayof([qrOrcamentoitemid_material.AsInteger, qrOrcamentoitemid_setor.AsInteger, qrOrcamentoitemid_empresa.AsInteger, qrOrcamentoitemquantidade.AsFloat]));
          end;

          qrOrcamentoitem.Next;
        end;
      end;

      qrOrcamentoitem.First;

      str_sql :='delete from orcamento_item where id_orcamento=:id_orcamento and id_empresa=:id_empresa ';
      qraux1 := TUniQuery.Create(self);
      qraux1.Connection := frmmenu.conexao;
      qraux1.close;
      qraux1.SQL.Clear;
      qraux1.SQL.Add(str_sql);
      qraux1.ParamByName('id_empresa').AsInteger :=qrOrcamentoitem.FieldByName('id_empresa').AsInteger;
      qraux1.ParamByName('id_orcamento').AsInteger :=qrOrcamentoitem.FieldByName('id_orcamento').AsInteger;
      qraux1.Execute;

      qrOrcamento.Delete;

      ednomevendedor.Clear;
      ednomecliente.Clear;
      lblLimitecliente.Caption:= 'Limite disponível: 0,00';

      edCodproduto.Clear;
      edDescricaoproduto.Clear;
      edquantidade.Clear;
      edPreco.Clear;
      eddesconto.Clear;
      edTotal.Clear;
      edComanda.Clear;

      edIdorcamento.Value:= 0;
      edQuantidadeitens.Value:= 0;

      qrOrcamentoitem.Refresh;
      qrorcamento.Refresh;

      if edvendedor.Canfocus then
        edvendedor.SetFocus;

      if bHabilitarComandas then
        VerificarComandas;
    end;
  end
  else
  begin
    Application.MessageBox('Não existe orçamento para ser excluído!', 'Atenção', MB_ICONEXCLAMATION);
    edCodproduto.setfocus;
  end;
end;

procedure TfrmOrcamento.acFecharcomovendaExecute(Sender: TObject);
begin
  if qrorcamentoitem.RecordCount>0 then
  begin
    acSalvar.Execute;
    frmOrcamentofechaorcamento := TfrmOrcamentofechaorcamento.Create(self,qrOrcamento.FieldByName('id_orcamento').AsInteger,'V');// Parametro V seria Venda
    frmOrcamentofechaorcamento.ShowModal;
    if frmOrcamentofechaorcamento.Tag=1 then
    begin
      qrorcamentoitem.Close;
      qrorcamento.Close;

      if bHabilitarComandas then
        VerificarComandas;
    end;
    FreeAndNil(frmOrcamentofechaorcamento);
  end
  else
  begin
    Application.MessageBox('Não existe orçamento para fechar!', 'Atenção',
      MB_ICONEXCLAMATION);
  end;
end;

procedure TfrmOrcamento.acFecharConsignadoExecute(Sender: TObject);
var
  str_sql: string;
  qraux1: TUniQuery;
begin
  if qrOrcamentoitem.RecordCount > 0 then
  begin
    acSalvar.Execute;
    frmOrcamentofechaorcamento := TfrmOrcamentofechaorcamento.Create(self,qrOrcamento.FieldByName('id_orcamento').AsInteger,'C'); // Parametro C seria consignado
    frmOrcamentofechaorcamento.ShowModal;
    if frmOrcamentofechaorcamento.Tag=1 then
    begin
      qrorcamentoitem.Close;
      qrorcamento.Close;

      if bHabilitarComandas then
        VerificarComandas;
    end;
    FreeAndNil(frmOrcamentofechaorcamento);
  end
  else
  begin
    Application.MessageBox('Não existe orçamento para fechar!', 'Atenção', MB_ICONEXCLAMATION);
  end;
end;

procedure TfrmOrcamento.acFinalizarorcamentoExecute(Sender: TObject);
var
  str_sql: string;
  qraux1: TUniQuery;
begin
  if qrOrcamentoitem.RecordCount > 0 then
  begin
    acSalvar.Execute;
    frmOrcamentofechaorcamento := TfrmOrcamentofechaorcamento.Create(self,qrOrcamento.FieldByName('id_orcamento').AsInteger,'O'); // Parametro O seria orcamento
    frmOrcamentofechaorcamento.ShowModal;
    if frmOrcamentofechaorcamento.Tag=1 then
     begin
       qrorcamentoitem.Close;
       qrorcamento.Close;

       if bHabilitarComandas then
         VerificarComandas;
     end;
    FreeAndNil(frmOrcamentofechaorcamento);
  end
  else
  begin
    Application.MessageBox('Não existe orçamento para fechar!', 'Atenção',
      MB_ICONEXCLAMATION);
  end;
end;

procedure TfrmOrcamento.acImprimirExecute(Sender: TObject);
var lPoint : tpoint;
begin
  lPoint := btImprimir.ClientToScreen(Point(0,0));
  pmImpressao.Popup(lPoint.X, lPoint.Y+btImprimir.Height );
end;

procedure TfrmOrcamento.acIncluirExecute(Sender: TObject);
begin
  frmMenu.VerificaCaixaAberto;

  qrorcamento.close;
  qrorcamento.open;
  qrOrcamento.append;
  qrOrcamentoconsignado.AsBoolean:= False;

  qrorcamentoitem.open;
  edIdorcamento.value := qrOrcamento.FieldByName('id_orcamento').AsInteger;
  edVendedor.setfocus;
end;

procedure TfrmOrcamento.acLocalizarExecute(Sender: TObject);
begin
  frmconsultaorcamento := Tfrmconsultaorcamento.Create(self, 0);
  frmconsultaorcamento.showmodal;
  if frmconsultaorcamento.tag=1 then
  begin
    qrorcamento.Close;
    qrorcamento.ParamByName('id_orcamento').AsInteger:=frmconsultaorcamento.id_orcamentoretorno;
    qrorcamento.ParamByName('id_empresa').AsInteger:=RecProj.iEmp;
    qrorcamento.Open;
    qrOrcamentoid_usuarioChange(nil);
    qrOrcamentoid_clienteChange(nil)
  end;
  FreeAndNil(frmconsultaorcamento);
end;

procedure TfrmOrcamento.acSairExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmOrcamento.acSalvarExecute(Sender: TObject);
begin
  //Se estiver incluindo e for vendedor externo
  //salva na tabela transferencia para fazer a carga depois
  if (qrOrcamento.State in [dsInsert]) and (RecProj.bVendedor_Externo) then
  begin
    qrAuxiliar.Close;
    qrAuxiliar.SQL.Text:= 'INSERT INTO TRANSFERENCIA (ID_REGISTRO, ID_EMPRESA, TIPO, DATA, HORA) '+
                          '                   VALUES (:ID_REGISTRO, :ID_EMPRESA, :TIPO, :DATA, :HORA)';
    qrAuxiliar.ParamByName('ID_REGISTRO').AsInteger:= qrOrcamentoid_orcamento.AsInteger;
    qrAuxiliar.ParamByName('ID_EMPRESA').AsInteger:= qrOrcamentoid_empresa.AsInteger;
    qrAuxiliar.ParamByName('TIPO').AsString:= 'O';
    qrAuxiliar.ParamByName('DATA').AsDate:= Date;
    qrAuxiliar.ParamByName('HORA').AsTime:= Time;
    qrAuxiliar.Execute;
  end;

  qrOrcamento.Post;
end;

procedure TfrmOrcamento.btInserirClick(Sender: TObject);
var
  str_sql: string;
  qraux1: TUniQuery;
  item: integer;
  total_item: double;

begin
  if qrOrcamento.State = dsinsert then
  begin
    acSalvar.Execute;
    acEditar.Execute;
  end;

  if edCodproduto.Text = '' then
  begin
    Application.MessageBox('Informe o produto!', 'Atenção', MB_ICONEXCLAMATION);
    edCodproduto.setfocus;
    abort;
  end;

  if edQuantidade.value <= 0 then
  begin
    Application.MessageBox('Informe a quantidade!', 'Atenção', MB_ICONEXCLAMATION);
    edQuantidade.setfocus;
    abort;
  end;

  if edPreco.value <= 0 then
  begin
    Application.MessageBox('Informe o preço do produto!', 'Atenção', MB_ICONEXCLAMATION);
    if edPreco.canfocus then edPreco.setfocus;
    abort;
  end;

  if eddesconto.Value>edpreco.Value then
  begin
    Application.MessageBox('O valor do desconto permitido é maior que o valor do produto!', 'Atenção', MB_ICONEXCLAMATION);
    if eddesconto.canfocus then eddesconto.setfocus;
    abort;
  end;

  if edVendedor.Text = '' then
  begin
    Application.MessageBox('Informe o vendedor!', 'Atenção', MB_ICONEXCLAMATION);
    edVendedor.setfocus;
    abort;
  end;

  if edCodigocliente.Text = '' then
  begin
    Application.MessageBox('Informe o cliente!', 'Atenção', MB_ICONEXCLAMATION);
    edCodigocliente.setfocus;
    abort;
  end;

  //Verifica se já tem o produto e agrupa (configuração), senão insere um novo
  if (bAgruparItens) and (qrOrcamentoitem.Locate('id_orcamento;id_material;id_variacao;valor_unitario', VarArrayOf([qrOrcamento.FieldByName('id_orcamento').AsInteger, id_material, id_variacao, edPreco.value]), [])) then
  begin
    qraux1 := TUniQuery.Create(self);
    qraux1.Connection := frmmenu.conexao;

    str_sql := 'update orcamento_item set quantidade = :quantidade, valor_unitario = :valor_unitario, '+
               'valor_total = :valor_total, valor_desconto = :valor_desconto, valor_acrescimo = :valor_acrescimo '+
               'where (id_orcamento = :id_orcamento) and (item = :item) and (id_material = :id_material) and (id_empresa = :id_empresa)' ;

    qraux1.close;
    qraux1.SQL.Clear;
    qraux1.SQL.Add(str_sql);

    qraux1.ParamByName('quantidade').Asfloat      := qrOrcamentoitem.FieldByName('quantidade').AsFloat + edQuantidade.value;
    qraux1.ParamByName('valor_unitario').Asfloat  := edPreco.value;
    qraux1.ParamByName('valor_desconto').Asfloat  := qrOrcamentoitem.FieldByName('valor_desconto').AsFloat + edDesconto.value;
    qraux1.ParamByName('valor_acrescimo').Asfloat := 0;
    qraux1.ParamByName('valor_total').Asfloat     := (qraux1.ParamByName('quantidade').AsFloat * qraux1.ParamByName('valor_unitario').AsFloat) - qraux1.ParamByName('valor_desconto').AsFloat;
    qraux1.ParamByName('id_orcamento').AsInteger  := qrOrcamentoitem.FieldByName('id_orcamento').AsInteger;
    qraux1.ParamByName('item').AsInteger          := qrOrcamentoitem.FieldByName('item').AsInteger;
    qraux1.ParamByName('id_material').AsInteger   := qrOrcamentoitem.FieldByName('id_material').AsInteger;
    qraux1.ParamByName('id_empresa').AsInteger    := qrOrcamentoitem.FieldByName('id_empresa').AsInteger;
    qraux1.Execute;
  end
  else
  begin
    qraux1 := TUniQuery.Create(self);
    qraux1.Connection := frmmenu.conexao;
    str_sql := 'select coalesce( max(item),0)+1 as proximo_item from orcamento_item where id_orcamento=:id_orcamento and id_empresa=:emp';
    qraux1.SQL.Add(str_sql);
    qraux1.ParamByName('id_orcamento').AsInteger :=qrOrcamento.FieldByName('id_orcamento').AsInteger;
    qraux1.ParamByName('emp').AsInteger :=qrOrcamento.FieldByName('id_empresa').AsInteger;
    qraux1.Open;

    item := qraux1.FieldByName('proximo_item').AsInteger;

    str_sql := 'insert into orcamento_item (id_orcamento,item,id_empresa,id_material,quantidade,valor_unitario,valor_total,valor_desconto, valor_acrescimo, id_variacao) values '+
               '(:id_orcamento,:item,:id_empresa,:id_material,:quantidade,:valor_unitario,:valor_total,:valor_desconto,:valor_acrescimo, :id_variacao) ';

    qraux1.close;
    qraux1.SQL.Clear;
    qraux1.SQL.Add(str_sql);

    qraux1.ParamByName('id_orcamento').AsInteger  := qrOrcamento.FieldByName('id_orcamento').AsInteger;
    qraux1.ParamByName('item').AsInteger          := item;
    qraux1.ParamByName('id_empresa').AsInteger    := qrOrcamento.FieldByName('id_empresa').AsInteger;
    qraux1.ParamByName('id_material').AsInteger   := id_material;
    qraux1.ParamByName('quantidade').Asfloat      := edQuantidade.value;
    qraux1.ParamByName('valor_unitario').Asfloat  := edPreco.value;
    qraux1.ParamByName('valor_total').Asfloat     := edTotal.value;
    qraux1.ParamByName('valor_desconto').Asfloat  := edDesconto.value;
    qraux1.ParamByName('valor_acrescimo').Asfloat := 0;
    qraux1.ParamByName('id_variacao').AsInteger   := id_variacao;
    qraux1.Execute;
  end;

  //Se for condicional baixa o estoque - Bruno 25/04/2018
  if qrOrcamentoconsignado.AsBoolean then
  begin
    //atualiza o estoque no setor
    str_sql := ' update setor_estoque_material set quantidade = coalesce(quantidade, 0.0) - ' +
               ' :quantidade where id_material = :id_material and id_setor = :id_setor and id_empresa = :id_empresa and id_variacao = :id_variacao';

    //tenta atualizar, se não houver registro de setor de estoque, insere
    if ExecutaComandoSQL(str_sql, vararrayof([edQuantidade.value, id_material, id_setor, qrOrcamentoid_empresa.AsInteger, id_variacao])) < 1 then
    begin
      str_sql := ' insert into setor_estoque_material (id_material, id_setor, id_empresa, quantidade, id_variacao) '+
                 ' values (:id_material, :id_setor, :id_empresa, (0.0 - :quantidade), :id_variacao) ';
      ExecutaComandoSQL(str_sql, vararrayof([id_material, id_setor, qrOrcamentoid_empresa.AsInteger, edQuantidade.value, id_variacao]));
    end;
  end;

  atualiza_totais;

  qrOrcamentoitem.Refresh;

  edDescricaoproduto.Text := '';
  edCodproduto.Text       := '';
  edQuantidade.Text       := '';
  edPreco.Text            := '';
  edDesconto.Text         := '';
  edTotal.Text            := '';
  edCodproduto.setfocus;
end;

procedure TfrmOrcamento.atualiza_totais;
var
  str_sql: string;
  qraux1: TUniQuery;

begin
  str_sql :=' select sum (valor_total)as valor_total,sum (valor_desconto)as valor_desconto, sum (valor_acrescimo)as valor_acrescimo from orcamento_item where id_orcamento=:id_orcamento and id_empresa=:id_empresa';
  qraux1 := TUniQuery.Create(self);
  qraux1.Connection := frmmenu.conexao;
  qraux1.SQL.Add(str_sql);
  qraux1.ParamByName('id_orcamento').AsInteger :=qrOrcamento.FieldByName('id_orcamento').AsInteger;
  qraux1.ParamByName('id_empresa').AsInteger :=qrOrcamento.FieldByName('id_empresa').AsInteger;
  qraux1.Open;
  //valor total dos itens - desconto + acrescimo
  qrOrcamento.FieldByName('valor_total').Asfloat := qraux1.FieldByName('valor_total').Asfloat
    - qrOrcamento.FieldByName('valor_desconto').Asfloat +
    + qrOrcamento.FieldByName('valor_acrescimo').Asfloat ;
end;

procedure TfrmOrcamento.dsOrcamentoStateChange(Sender: TObject);
begin
  inherited;
  // Criar açoes do botao

  if qrOrcamento.active then
  begin
    // Aberto não editando

    if qrOrcamento.State = dsbrowse then // Modo Consulta
    begin
      edCodproduto.Enabled := false;
      edVendedor.Enabled := false;
      edCodigocliente.Enabled := false;
      edCodproduto.Enabled := false;
      edDescricaoproduto.Enabled := false;
      edQuantidade.Enabled := false;
      edPreco.Enabled := false;
      edDesconto.Enabled := false;
      edTotal.Enabled := false;
      meObservacao.Enabled := false;
      btInserir.Enabled := false;
      //--ACTION
      acIncluir.Enabled := true;
      acSalvar.Enabled := false;
      acExcluir.Enabled := true;
      acFinalizarorcamento.Enabled := false;
      acFecharcomovenda.Enabled := false;
      acFecharConsignado.Enabled := false;
      AcCancelar.Enabled := false;
      acLocalizar.Enabled := true;// localizar orçamento
      acexcluir.Enabled:=false; //Excluir item
      acexcluirorcamento.Enabled:=false;
      acBuscaProduto.Enabled := false;
      if qrorcamento.RecordCount>0 then
      begin
        aceditar.Enabled:=true;
        acimprimir.Enabled := true;
      end
      else
      begin
        aceditar.Enabled:=false;
        acimprimir.Enabled := false;
      end;
    end
    else if qrOrcamento.State in [dsinsert, dsedit] then
    begin
      edCodproduto.Enabled := true;
      acBuscaProduto.Enabled := true;
      edVendedor.Enabled := true;
      edCodigocliente.Enabled := true;
      edCodproduto.Enabled := true;
      edDescricaoproduto.Enabled := true;
      edQuantidade.Enabled := true;
      edPreco.Enabled := true;
      edDesconto.Enabled := true;
      edTotal.Enabled := true;
      meObservacao.Enabled := true;
      btInserir.Enabled := true;
      //AÇÕES
      acIncluir.Enabled := false;
      acSalvar.Enabled := true;
      acExcluir.Enabled := true;
      AcCancelar.Enabled := true;
      acLocalizar.Enabled := false;
      acFecharcomovenda.Enabled := not RecProj.bVendedor_Externo;
      acFecharConsignado.Enabled := not RecProj.bVendedor_Externo;
      acFinalizarorcamento.Enabled := true;
      acFinalizarorcamento.Enabled := true;
      aceditar.Enabled:=false;
      acexcluirorcamento.Enabled:=true;
      acImprimir.Enabled := true;
    end;

  end
  else
  begin
    edCodproduto.Enabled := false;
    acBuscaProduto.Enabled := false;
    acFecharcomovenda.Enabled := false;
    acFecharConsignado.Enabled := false;
    acFinalizarorcamento.Enabled := false;
    aceditar.Enabled:=false;
    acIncluir.Enabled := true;
    acSalvar.Enabled := false;
    acExcluir.Enabled := false;
    AcCancelar.Enabled := false;
    acLocalizar.Enabled := true;
    acexcluirorcamento.Enabled:=false;
    ednomevendedor.Clear;
    ednomecliente.Clear;
    acImprimir.Enabled := false;
  end;
end;

procedure TfrmOrcamento.edCodprodutoExit(Sender: TObject);
var
  str_sql: string;
  qraux1: TUniQuery;
  soma: double;

begin
  if edCodproduto.Text = '' then
  begin
    edDescricaoproduto.Text := '';
    edQuantidade.Text       := '';
    edPreco.Text            := '';
    edDesconto.Text         := '';
    edTotal.Text            := '';
  end
  else
  begin
    str_sql := 'select mat_001 as id_material, emp_001 as empresa, mat_003 as descricao, mat_004 as codigo, '+
               'mat_008 as preco, valor_tabela2 as preco_prazo, valor_atacado as preco_atacado, id_setor from materiais '+
               'where emp_001=:id_empresa and mat_004=:codigo and sit_001=4';

    qraux1 := TUniQuery.Create(self);
    qraux1.Connection := frmmenu.conexao;
    qraux1.SQL.Add(str_sql);
    qraux1.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
    qraux1.ParamByName('codigo').AsString      := edCodproduto.Text;
    qraux1.Open;

    if qraux1.RecordCount > 0 then
    begin
      if bUtilizaVariacoesGrade then
      begin
        frmVendaSelecaoGrade := TfrmVendaSelecaoGrade.Create(self, qraux1.FieldByName('id_material').asinteger);

        if frmVendaSelecaoGrade.qrGrade.RecordCount > 1 then
          frmVendaSelecaoGrade.ShowModal;

        if frmVendaSelecaoGrade.Tag = 1 then
        begin
          id_variacao := frmVendaSelecaoGrade.iVariacao;
          edDescricaoproduto.Text:= frmVendaSelecaoGrade.sDescricao;
          FreeAndNil(frmVendaSelecaoGrade);
        end
        else
        begin
          edCodProduto.Text:= '';
          edDescricaoProduto.Text:= '';
          FreeAndNil(frmVendaSelecaoGrade);
          edCodProduto.SetFocus;
          Abort;
        end;
      end
      else
      begin
        id_variacao:= 0;
        edDescricaoproduto.Text := qraux1.FieldByName('descricao').AsString;
      end;

      if cxTabelapreco.ItemIndex = 0 then
        edPreco.value := qraux1.FieldByName('preco').Asfloat
      else if cxTabelapreco.ItemIndex = 1 then
        edPreco.value := qraux1.FieldByName('preco_prazo').Asfloat
      else if cxTabelapreco.ItemIndex = 2 then
        edPreco.value := qraux1.FieldByName('preco_atacado').Asfloat;

      id_material             := qraux1.FieldByName('id_material').AsInteger;
      id_setor                := qraux1.FieldByName('id_setor').AsInteger;

      edQuantidade.value      := 1;
      edDesconto.value        := 0;

      edpreco.Enabled         := permite_alterar_valor_unitario;
      edDesconto.Enabled      := permite_desconto;

      soma := (edQuantidade.value * edPreco.value) - edDesconto.value;

      edTotal.value := soma;
    end
    else
    begin
      edCodproduto.Text       := '';
      edDescricaoproduto.Text := '';
      edQuantidade.Text       := '';
      edPreco.Text            := '';
      edDesconto.Text         := '';
      edTotal.Text            := '';
      Application.MessageBox('Produto não encontrado!', 'Alerta', MB_ICONEXCLAMATION + MB_OK);
      edCodproduto.setfocus;
    end;
  end;
end;

procedure TfrmOrcamento.edCodprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key in ['a'..'z', 'A'..'Z'] then
  begin
    sLetraPesquisa:= Key;
    acBuscaProdutoExecute(nil);
    Key := #0;
  end;
end;

procedure TfrmOrcamento.edQuantidadeExit(Sender: TObject);
var
  soma: double;
begin
  soma := (edQuantidade.value * edPreco.value) - edDesconto.value;
  edTotal.value := soma;
end;

procedure TfrmOrcamento.edTotalEnter(Sender: TObject);
begin
  inherited;
  edTotal.ReadOnly := true;
end;

procedure TfrmOrcamento.EnviarporEmail1Click(Sender: TObject);
begin
  inherited;
  EnviarEmail; //Bruno - 08/06/2018
end;

procedure TfrmOrcamento.EnviarEmail;
var caminho_logo, sAssunto, sDestinatario, sMensagem: string;
    anexos : Tstringlist;
begin
  if qrOrcamento.State in [dsedit, dsinsert] then
  begin
    acSalvar.Execute;
    qrOrcamento.edit;
  end
  else
    qrOrcamento.Refresh;

  qrOrcamentoitem.Refresh;

  if qrOrcamentoitem.RecordCount > 0 then
  begin
    qrAuxiliar.Close;
    qrAuxiliar.SQL.Text:= 'select email from clientes where cli_001 = :cliente';
    qrAuxiliar.ParamByName('cliente').AsInteger:= qrOrcamentoid_cliente.AsInteger;
    qrAuxiliar.Open;

    if qrAuxiliar.FieldByName('email').AsString = EmptyStr then
    begin
      Application.MessageBox('Verifique o e-mail do cliente!', 'Atenção', MB_ICONINFORMATION);
      Abort;
    end
    else
      sDestinatario:= qrAuxiliar.FieldByName('email').AsString;

    repOrcamento.Variables['sTitulo'] := QuotedStr(qrEmpresa.FieldByName('titulo_orc').AsString);

    if imprimir_fantasia then
      repOrcamento.Variables['sNomeEmpresa'] := QuotedStr(qrEmpresa.FieldByName('fantasia').AsString)
    else
      repOrcamento.Variables['sNomeEmpresa'] := QuotedStr('');

    if bDadosCompletosEmpresa then
    begin
      repOrcamento.Variables['sEndEmpresa'] := QuotedStr(UpperCase(qrEmpresa.FieldByName('endereco').AsString));
      repOrcamento.Variables['sTelEmpresa'] := QuotedStr(qrEmpresa.FieldByName('telefone').AsString);
    end
    else
    begin
      repOrcamento.Variables['sEndEmpresa'] := QuotedStr('');
      repOrcamento.Variables['sTelEmpresa'] := QuotedStr('');
    end;

    if bDadosCompletosCliente then
    begin
      repOrcamento.Variables['sTitEnd']     := QuotedStr('Endereço:');
      repOrcamento.Variables['sEndCliente'] := QuotedStr(UpperCase(qrCliente.FieldByName('endereco').AsString));
      repOrcamento.Variables['sTelCliente'] := QuotedStr(qrCliente.FieldByName('telefone').AsString);
    end
    else
    begin
      repOrcamento.Variables['sTitEnd']     := QuotedStr('');
      repOrcamento.Variables['sEndCliente'] := QuotedStr('');
      repOrcamento.Variables['sTelCliente'] := QuotedStr('');
    end;

    if bImprimirValidade then
      repOrcamento.Variables['sValidade'] := QuotedStr('Validade: ' + FormatDateTime('dd/mm/yyyy', qrOrcamento.FieldByName('data_validade').asdatetime))
    else
      repOrcamento.Variables['sValidade'] := QuotedStr('');

    repOrcamento.Variables['sCliente']  := QuotedStr(edNomecliente.Text);
    repOrcamento.Variables['sVendedor'] := QuotedStr(edNomevendedor.Text);
    repOrcamento.Variables['sItens']    := QuotedStr('Qtde. de itens: ' + edQuantidadeitens.Text);

    try
      caminho_logo := ExtractFilePath(Application.ExeName)+'\imagens\logoOrcamento.png';
      if FileExists(caminho_logo) then
        TfrxPictureView(repOrcamento.FindObject('imgLogoOrcamento')).Picture.LoadFromFile(caminho_logo);
    except
    end;

    frxPDFExport1.FileName        := ExtractFilePath(Application.ExeName) + 'ORCAMENTO_' + qrOrcamentoid_orcamento.AsString + '.pdf';
    frxPDFExport1.DefaultPath     := ExtractFilePath(Application.ExeName);
    frxPDFExport1.ShowDialog      := False;
    frxPDFExport1.OverwritePrompt := False;

    repOrcamento.PrepareReport;
    repOrcamento.Export(frxPDFExport1);

    anexos := TStringList.Create;

    if FileExists(frxPDFExport1.FileName) then
      anexos.Add(frxPDFExport1.FileName);

    qrAuxiliar.Close;
    qrAuxiliar.SQL.Text:= 'select coalesce(emp_003, emp_002) as empresa, emp_013, emp_014 from empresas where emp_001 = :emp';
    qrAuxiliar.ParamByName('emp').AsInteger:= RecProj.iEmp;
    qrAuxiliar.Open;

    sAssunto  := 'Orçamento nº ' + qrOrcamentoid_orcamento.AsString;
    sMensagem := 'Segue em anexo o orçamento em formato PDF.' + sLineBreak + sLineBreak +
                 'Atenciosamente,' + sLineBreak + sLineBreak +
                 qrAuxiliar.FieldByName('empresa').AsString + sLineBreak +
                 'Contato: ' + qrAuxiliar.FieldByName('emp_013').AsString + sLineBreak +
                 'E-mail: '  + LowerCase(qrAuxiliar.FieldByName('emp_014').AsString) + sLineBreak + sLineBreak + sLineBreak +
                 'Sistema LeStore - Desenvolvido por RP Sistemas' + sLineBreak +
                 '(16)3010-4052' + sLineBreak +
                 'www.rpsistema.com.br';

    try
      EnviaEmailSSL(qrAuxiliar.FieldByName('empresa').AsString,
                    trim(sDestinatario),
                    sAssunto,
                    sMensagem,
                    anexos,
                    true);

      if FileExists(frxPDFExport1.FileName) then
      DeleteFile(frxPDFExport1.FileName);

      FreeAndNil(anexos);

      qrAuxiliar.Close;
    except
      if FileExists(frxPDFExport1.FileName) then
        DeleteFile(frxPDFExport1.FileName);

      FreeAndNil(anexos);

      qrAuxiliar.Close;
    end;
  end
  else
    Application.MessageBox('Não existem itens neste orçamento!', 'Atenção', MB_ICONINFORMATION);
end;

procedure TfrmOrcamento.FormDestroy(Sender: TObject);
begin
  inherited;

  if qrOrcamento.RecordCount > 0 then
  begin
    if qrOrcamento.FieldByName('id_situacao').AsInteger = 0 then
    begin
      qrorcamentoitem.First;
      while not qrorcamentoitem.Eof  do
      begin
        qrorcamentoitem.Delete;
      end;

      if RecProj.bVendedor_Externo then
      begin
        qrAuxiliar.Close;
        qrAuxiliar.SQL.Text:= 'DELETE FROM TRANSFERENCIA WHERE ID_REGISTRO = :ID_REGISTRO AND ID_EMPRESA = :ID_EMPRESA AND TIPO = :TIPO';
        qrAuxiliar.ParamByName('ID_REGISTRO').AsInteger:= qrOrcamentoid_orcamento.AsInteger;
        qrAuxiliar.ParamByName('ID_EMPRESA').AsInteger:= qrOrcamentoid_empresa.AsInteger;
        qrAuxiliar.ParamByName('TIPO').AsString:= 'O';
        qrAuxiliar.Execute;
      end;

      qrOrcamento.Delete;
    end;
  end;
end;

procedure TfrmOrcamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = vk_return then
    Perform(WM_NEXTDLGCTL, 0, 0)
end;

procedure TfrmOrcamento.FormShow(Sender: TObject);
begin
  sLetraPesquisa:= '';

  qrEmpresa.Close;
  qrEmpresa.ParamByName('emp').AsInteger:= RecProj.iEmp;
  qrEmpresa.Open;

  lblLimitecliente.Visible:= bExibirLimite;
  acConsultaProd.Enabled := not RecProj.bVendedor_Externo;

  if bHabilitarComandas then
    Timer1.Enabled:= True
  else
    btNovo.setfocus;
end;

procedure TfrmOrcamento.ImpressoProduo1Click(Sender: TObject);
begin
  inherited;
  ImprimirOrcamento('X');
end;

procedure TfrmOrcamento.ImpressoraA41Click(Sender: TObject);
begin
  ImprimirOrcamento('G');
end;

procedure TfrmOrcamento.ImpressoraTrmica1Click(Sender: TObject);
begin
  inherited;
  ImprimirOrcamento('P');
end;

procedure TfrmOrcamento.qrOrcamentoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qrOrcamentoitem.close;
  if qrOrcamento.RecordCount > 0 then
  begin
    qrOrcamentoitem.ParamByName('id_orcamento').AsInteger :=
      qrOrcamento.FieldByName('id_orcamento').AsInteger;
    qrOrcamentoitem.ParamByName('id_empresa').AsInteger :=
      qrOrcamento.FieldByName('id_empresa').AsInteger;
    edIdorcamento.value := qrOrcamento.FieldByName('id_orcamento').AsInteger;

  end;
  qrOrcamentoitem.Open;
end;

procedure TfrmOrcamento.qrOrcamentoBeforePost(DataSet: TDataSet);
begin
  inherited;
  if edVendedor.Text = '' then
  begin
    Application.MessageBox('Informe o vendedor!', 'Atenção',
      MB_ICONEXCLAMATION);
    edVendedor.setfocus;
    abort;
  end;

  if edCodigocliente.Text = '' then
  begin
    Application.MessageBox('Informe o cliente!', 'Atenção',
      MB_ICONEXCLAMATION);
    edCodigocliente.setfocus;
    abort;
  end;

end;

procedure TfrmOrcamento.qrOrcamentoid_clienteChange(Sender: TField);
var
  str_sql: string;
  qraux1: TUniQuery;
begin

  if not qrOrcamento.FieldByName('id_cliente').IsNull then
  begin
    str_sql := 'select cli_002,limite_credito from clientes where cli_001=' +
      qrOrcamento.FieldByName('id_cliente').AsString;
    qraux1 := TUniQuery.Create(self);
    qraux1.Connection := frmmenu.conexao;
    qraux1.close;
    qraux1.SQL.Clear;
    qraux1.SQL.Add(str_sql);
    qraux1.Open;
    if qraux1.RecordCount > 0 then
    begin
      edNomecliente.Text := qraux1.FieldByName('cli_002').AsString;
      lblLimitecliente.Caption := format('Limite de crédito: R$%.2f',
        [qraux1.FieldByName('limite_credito').Asfloat]);

    end
    else
    begin
      qrOrcamento.FieldByName('id_cliente').value := Null;
      Application.MessageBox('Cliente não cadastrado', 'Atenção',
        MB_ICONQUESTION);
      edCodigocliente.setfocus;
    end;
  end

  else
  begin
    edNomecliente.Text := '';
    lblLimitecliente.Caption := 'Limite de crédito: 0,00';
  end;
end;

procedure TfrmOrcamento.qrOrcamentoid_usuarioChange(Sender: TField);
var
  str_sql: string;
  qraux1: TUniQuery;
begin
  if not qrOrcamento.FieldByName('id_usuario').IsNull then
  begin

    str_sql := 'select usu_002 from usuarios where usu_001=' +
      qrOrcamento.FieldByName('id_usuario').AsString;
    qraux1 := TUniQuery.Create(self);
    qraux1.Connection := frmmenu.conexao;
    qraux1.close;
    qraux1.SQL.Clear;
    qraux1.SQL.Add(str_sql);
    qraux1.Open;
    if qraux1.RecordCount > 0 then
    begin
      edNomevendedor.Text := qraux1.FieldByName('usu_002').AsString;
    end
    else
    begin
      qrOrcamento.FieldByName('id_usuario').value := Null;
      Application.MessageBox('Vendedor não cadastrado', 'Atenção',
        MB_ICONQUESTION);
      edVendedor.setfocus;
    end;
  end
  else
  begin
    edNomevendedor.Text := '';
  end;
end;

procedure TfrmOrcamento.qrOrcamentoitemAfterClose(DataSet: TDataSet);
begin
  inherited;
  edQuantidadeitens.value := 0;
  edIdorcamento.value := 0;
end;

procedure TfrmOrcamento.qrOrcamentoitemAfterRefresh(DataSet: TDataSet);
var eItens: integer;
begin
  inherited;
  //Bruno - 02/04/2018
  eItens:= 0;
  qrOrcamentoitem.DisableControls;
  qrOrcamentoitem.First;
  while not qrOrcamentoitem.Eof do
  begin
    eItens:= eItens + qrOrcamentoitemquantidade.AsInteger;

    qrOrcamentoitem.Next;
  end;
  qrOrcamentoitem.EnableControls;

  edQuantidadeitens.value := eItens;
end;

procedure TfrmOrcamento.qrOrcamentoNewRecord(DataSet: TDataSet);
begin
  qrOrcamento.FieldByName('id_empresa').AsInteger     := RecProj.iEmp;
  qrOrcamento.FieldByName('data').AsDateTime          := date + time;
  qrOrcamento.FieldByName('valor_total').Asfloat      := 0;
  qrOrcamento.FieldByName('valor_desconto').Asfloat   := 0;
  qrOrcamento.FieldByName('valor_acrescimo').Asfloat  := 0;
  qrOrcamento.FieldByName('id_situacao').AsInteger    := 0;
  qrOrcamento.FieldByName('data_validade').asdatetime := Date + dias_validade;
  qrOrcamento.FieldByName('terminal').AsString        := NomeDoTerminal;
  edNomevendedor.Text                                 := '';
  edNomecliente.Text                                  := '';
  qrOrcamentoitem.close;
end;

procedure TfrmOrcamento.Timer1Timer(Sender: TObject);
begin
  inherited;
  VerificarComandas;
end;

end.
