unit uControleContasReceberFiado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxImageComboBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, MemDS,
  DBAccess, Uni, cxCheckBox, AdvGlowButton, Vcl.StdCtrls, AdvGroupBox, frxClass,
  frxDBSet, cxContainer, cxGroupBox, cxRadioGroup, Vcl.ComCtrls,
  uContasareceberinclusao, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, AdvDateTimePicker, cxDBEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, DateUtils;

type
  TfrmControleContasReceberFiado = class(TfrmModelo)
    qrClientesFiado: TUniQuery;
    qrClientesFiadocli_001: TIntegerField;
    qrClientesFiadolimite_credito: TFloatField;
    qrClientesFiadocli_002: TWideStringField;
    qrClientesFiadosaldo_atual: TFloatField;
    qrClientesFiadosituacao: TIntegerField;
    qrClientesFiadolimite_percent: TFloatField;
    cxgrdViewClientes: TcxGridDBTableView;
    cxGridClientesLevel1: TcxGridLevel;
    cxGridClientes: TcxGrid;
    dsClientesFiado: TDataSource;
    cxgrdViewClientescli_001: TcxGridDBColumn;
    cxgrdViewClientescli_002: TcxGridDBColumn;
    cxgrdViewClienteslimite_credito: TcxGridDBColumn;
    cxgrdViewClientessaldo_atual: TcxGridDBColumn;
    cxgrdViewClientessituacao: TcxGridDBColumn;
    cxgrdViewClienteslimite_percent: TcxGridDBColumn;
    qrCReceberFiado: TUniQuery;
    qrCReceberFiadoid_creceber: TIntegerField;
    qrCReceberFiadoid_cliente: TIntegerField;
    qrCReceberFiadodata: TDateTimeField;
    qrCReceberFiadoid_venda: TIntegerField;
    qrCReceberFiadovalor_nota: TFloatField;
    qrCReceberFiadovalor: TFloatField;
    qrCReceberFiadovalor_pago: TFloatField;
    qrCReceberFiadoid_situacao: TIntegerField;
    dsCReceberFiado: TDataSource;
    cxgrdViewCreceberFiado: TcxGridDBTableView;
    cxGridCreceberFiadoLevel1: TcxGridLevel;
    cxGridCreceberFiado: TcxGrid;
    cxgrdViewCreceberFiadoid_creceber: TcxGridDBColumn;
    cxgrdViewCreceberFiadoid_cliente: TcxGridDBColumn;
    cxgrdViewCreceberFiadodata: TcxGridDBColumn;
    cxgrdViewCreceberFiadoid_venda: TcxGridDBColumn;
    cxgrdViewCreceberFiadovalor_nota: TcxGridDBColumn;
    cxgrdViewCreceberFiadovalor: TcxGridDBColumn;
    cxgrdViewCreceberFiadovalor_pago: TcxGridDBColumn;
    cxgrdViewCreceberFiadoid_situacao: TcxGridDBColumn;
    cxgrdViewCreceberFiadotipo_venda: TcxGridDBColumn;
    qrCReceberFiadotipo_venda: TWideMemoField;
    cxgrdViewCreceberFiadoSelecao: TcxGridDBColumn;
    btPagamento: TAdvGlowButton;
    AdvGroupBox3: TAdvGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    btPesquisar: TAdvGlowButton;
    cbFiltroSituacao: TComboBox;
    edFiltroNomeCliente: TEdit;
    btRelatorio: TAdvGlowButton;
    repCReceberFiado: TfrxReport;
    dbCReceberFiado: TfrxDBDataset;
    qrCreceber_parcela: TUniQuery;
    qrCreceber_parcelaid_creceber: TIntegerField;
    qrCreceber_parcelaid_empresa: TIntegerField;
    qrCreceber_parcelaparcela: TIntegerField;
    qrCreceber_parcelavalor: TFloatField;
    qrCreceber_parceladata: TDateTimeField;
    dbCreceber_parcela: TfrxDBDataset;
    dbClientesFiado: TfrxDBDataset;
    qrCReceberFiadoid_empresa: TIntegerField;
    qrCReceberFiadodescricao: TWideStringField;
    qrCReceberFiadodata_pagamento: TDateTimeField;
    qrCReceberFiadodata_vencimento: TDateField;
    Label2: TLabel;
    Label5: TLabel;
    cbFiltroSituacaoConta: TComboBox;
    Label6: TLabel;
    cbFiltroTipoData: TComboBox;
    Label7: TLabel;
    lbTotalSelecionado: TLabel;
    qrCReceberFiadovalor_desconto: TFloatField;
    qrCReceberFiadovalor_acrescimo: TFloatField;
    qrCReceberFiadovalor_juros: TFloatField;
    dtpDataInicial: TcxDateEdit;
    dtpDataFinal: TcxDateEdit;
    qrReimprimir: TUniQuery;
    qrReimprimirid_venda: TIntegerField;
    qrReimprimirid_empresa: TIntegerField;
    qrReimprimirdata_emissao: TDateTimeField;
    qrReimprimirhora_emissao: TDateTimeField;
    qrReimprimirnumero_cupom: TIntegerField;
    qrReimprimirvalor: TFloatField;
    qrReimprimirvenda_cancelada: TBooleanField;
    qrReimprimirtipo_venda: TWideStringField;
    qrReimprimirnome_cliente: TWideStringField;
    qrReimprimirchave_acesso: TWideStringField;
    qrReimprimirchave_cancelamento: TWideStringField;
    qrReimprimirven_024: TWideStringField;
    qrReimprimirsituacao_caixa: TIntegerField;
    qrReimprimirtipofiscal: TWideStringField;
    qrReimprimirdescricao_mesa_comanda: TWideStringField;
    repReciboPagamento: TfrxReport;
    qrCReceberFiadocli_002: TWideStringField;
    qrCReceberFiadocep_004: TWideStringField;
    qrCReceberFiadocep_003: TWideStringField;
    qrCReceberFiadocep_002: TWideStringField;
    qrCReceberFiadocli_012: TWideStringField;
    qrCReceberFiadocidade_desc: TWideStringField;
    qrCReceberFiadodocumento: TWideStringField;
    qrCReceberFiadocli_004: TWideStringField;
    btTodas: TAdvGlowButton;
    btNenhuma: TAdvGlowButton;
    btPendentes: TAdvGlowButton;
    btIncluir: TAdvGlowButton;
    btReimprimircupom: TAdvGlowButton;
    qrPend_Parcelas: TUniQuery;
    qrPend_Parcelasdocumento: TWideStringField;
    qrPend_Parcelasid_creceber: TIntegerField;
    qrPend_Parcelasid_cliente: TIntegerField;
    qrPend_Parcelasdata: TDateTimeField;
    qrPend_Parcelasvalor_nota: TFloatField;
    qrPend_Parcelasvalor: TFloatField;
    qrPend_Parcelasvalor_pago: TFloatField;
    qrPend_Parcelasdata_vencimento: TDateField;
    qrPend_Parcelasnota: TIntegerField;
    qrPend_Parcelasid_empresa: TIntegerField;
    qrPend_Produtos: TUniQuery;
    qrPend_Produtosnota: TIntegerField;
    qrPend_Produtosquantidade: TFloatField;
    qrPend_Produtosvalor_unitario: TFloatField;
    qrPend_Produtosvalor_total: TFloatField;
    qrPend_Produtosid_material: TIntegerField;
    qrPend_Produtosmat_003: TWideStringField;
    qrPend_Produtosmat_004: TWideStringField;
    qrPend_Produtositem: TIntegerField;
    qrPend_Produtosid_empresa: TIntegerField;
    qrDadosCliente: TUniQuery;
    qrDadosClientenome: TWideStringField;
    qrDadosClienteendereco: TWideStringField;
    qrDadosClientebairro: TWideStringField;
    qrDadosClientecidade_desc: TWideStringField;
    qrDadosClientetelefone1: TWideStringField;
    qrDadosClientecpf: TWideStringField;
    procedure btPesquisarClick(Sender: TObject);
    constructor Create (sender : Tcomponent); reintroduce;
    procedure edFiltroNomeClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function  RegistrosSelecionados: TArray<integer>;
    procedure btPagamentoClick(Sender: TObject);
    function  ContemStatus(Registros :  TArray<integer> ; id_status : integer) : boolean;
    function  ContemPago(Registros :  TArray<integer>) : boolean;
    function  ContemCancelado(Registros :  TArray<integer>) : boolean;
    procedure qrClientesFiadoAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qrClientesFiadoAfterOpen(DataSet: TDataSet);
    procedure btRelatorioClick(Sender: TObject);
    procedure qrCReceberFiadoAfterOpen(DataSet: TDataSet);
    procedure cxgrdViewCreceberFiadoSelecaoPropertiesChange(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure btReimprimircupomClick(Sender: TObject);
    procedure btTodasClick(Sender: TObject);
    procedure btNenhumaClick(Sender: TObject);
    procedure btPendentesClick(Sender: TObject);
  private
    { Private declarations }
    i_where, i_where_creceber:integer;
    valor_total_selecionado : double;
    impressora_modo_pos: boolean;
  public
   id_usuario_contas_pagar : integer;
  end;

var
  frmControleContasReceberFiado: TfrmControleContasReceberFiado;

implementation

{$R *.dfm}

uses uMenu, uContasReceberFiadoPagamento, Funcao_DB, uPDVFechamento, uFuncoes;

function  TfrmControleContasReceberFiado.ContemStatus(Registros :  TArray<integer> ; id_status : integer) : boolean;
var i :integer;
begin
  result := false;
  if Length(Registros) <=0 then exit;

  for I := 0 to Length(Registros) do
  begin
    qrCReceberFiado.Locate('id_creceber', Registros[i], []);
    result := qrCReceberFiado.FieldByName('id_situacao').AsInteger = id_status ;
    if result then  break;
  end;
end;


function  TfrmControleContasReceberFiado.RegistrosSelecionados: TArray<integer>;
var iRec, i : integer;
    selecionado : boolean;
begin
  inherited;
  SetLength(Result,qrCReceberFiado.RecordCount);
  qrCReceberFiado.First;
  i:=0;
  while not qrCReceberFiado.eof do
  begin
    iRec := cxgrdViewCreceberFiado.Controller.SelectedRecords[0].RecordIndex;
    //Registro selecionado, coluna 0 (coluna de seleção)
    if VarIsNull(cxgrdViewCreceberFiado.DataController.Values[iRec, 0]) then
      selecionado := false
    else
    begin
      selecionado := cxgrdViewCreceberFiado.DataController.Values[iRec, 0];
    end;

    if selecionado then
    begin
      result[i] := qrCReceberFiado.FieldByName('id_creceber').AsInteger;
      i:=i+1;
    end;
    qrCReceberFiado.next;
  end;
  SetLength(Result,i);
end;

constructor  TfrmControleContasReceberFiado.Create(sender: TComponent);
var ano, mes, dia : word;
    str_sql : string;
    Dataref : Tdatetime;
begin
  inherited create(sender);

  if not frmMenu.ConfirmacaoSenha('b_acesso_cpagar_creceber', id_usuario_contas_pagar) then abort;

  qrClientesFiado.Close;
  qrCReceberFiado.Close;

  qrClientesFiado.ParamByName('id_empresa').AsInteger:=recproj.iEmp;
  qrCReceberFiado.ParamByName('id_empresa').AsInteger:=recproj.iEmp;

  cbFiltroSituacaoConta.ItemIndex := 0;
  cbFiltroTipoData.ItemIndex := 1;
  cbFiltroSituacao.ItemIndex := 2;

  //preenche a data inicial com a data de vencimento da primeira parcela em aberto encontrada
//  str_sql := format('select data_vencimento from creceber where id_situacao=4 and id_empresa=%d order by data_vencimento',
//                    [recproj.iEmp]);
//  if not buscacampo(Dataref, str_sql, '', false) then
//  begin
//    DecodeDate(Date, ano, mes, dia);
//    dtpDataInicial.Date:= EncodeDate(ano, mes, 1);
//  end
//  else
  //dtpDataInicial.Date:= Dataref;

  dtpDataInicial.Date:= StartOfTheYear(Date);;
  dtpDataFinal.Date:= EndOfTheYear(Date);

  //guarda o indice onde deve ser aplicados os filtros
  i_where :=  qrClientesFiado.SQL.Count;
  i_where_creceber :=  qrCReceberFiado.SQL.Count;
end;

procedure TfrmControleContasReceberFiado.cxgrdViewCreceberFiadoSelecaoPropertiesChange(
  Sender: TObject);
var id_atual, iRec, i : integer;
    selecionado : boolean;
begin
  inherited;
  id_atual := qrCReceberFiado.FieldByName('id_creceber').AsInteger;

  qrCReceberFiado.First;
  valor_total_selecionado := 0;
  while not qrCReceberFiado.eof do
  begin
    iRec := cxgrdViewCreceberFiado.Controller.SelectedRecords[0].RecordIndex;
    //Registro selecionado, coluna 0 (coluna de seleção)
    if VarIsNull(cxgrdViewCreceberFiado.DataController.Values[iRec, 0]) then
      selecionado := false
    else
      selecionado := cxgrdViewCreceberFiado.DataController.Values[iRec, 0];

    if selecionado then
      valor_total_selecionado := valor_total_selecionado + qrCReceberFiado.FieldByName('valor').asfloat - qrCReceberFiado.FieldByName('valor_pago').asfloat;

    qrCReceberFiado.next;
  end;
  lbTotalSelecionado.caption := format('Total selecionado: %m',[valor_total_selecionado]);
  qrCReceberFiado.Locate('id_creceber',id_atual,[]) ;

end;

procedure TfrmControleContasReceberFiado.edFiltroNomeClienteKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_return  then btPesquisar.Click;

end;

procedure TfrmControleContasReceberFiado.FormShow(Sender: TObject);
begin
  inherited;
  btpesquisar.click;

end;

procedure TfrmControleContasReceberFiado.qrClientesFiadoAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  qrCReceberFiado.Open;
  qrCreceber_parcela.Open;
end;

procedure TfrmControleContasReceberFiado.qrClientesFiadoAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  qrCReceberFiado.close;
  qrCReceberFiado.open;
end;

procedure TfrmControleContasReceberFiado.qrCReceberFiadoAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  valor_total_selecionado := 0;
  lbTotalSelecionado.caption := 'Total selecionado: R$0,00';
end;

function  TfrmControleContasReceberFiado.ContemPago(Registros :  TArray<integer>) : boolean;
var i :integer;
begin
  result := ContemStatus(Registros,7);
end;

function  TfrmControleContasReceberFiado.ContemCancelado(Registros :  TArray<integer>) : boolean;
var i :integer;
begin
  result := ContemStatus(Registros,2);
end;

procedure TfrmControleContasReceberFiado.btIncluirClick(Sender: TObject);
begin
  frmcontasareceberinclusao:=tfrmcontasareceberinclusao.Create(self);
  frmContasareceberinclusao.Showmodal;
  FreeAndNil(frmcontasareceberinclusao);

  btPesquisar.Click;
end;

procedure TfrmControleContasReceberFiado.btNenhumaClick(Sender: TObject);
var iRec: integer;
begin
  inherited;

  qrCReceberFiado.First;
  while not qrCReceberFiado.eof do
  begin
    iRec := cxgrdViewCreceberFiado.Controller.SelectedRecords[0].RecordIndex;

    cxgrdViewCreceberFiado.DataController.Values[iRec, 0]:= 0;

    qrCReceberFiado.next;
  end;

  qrCReceberFiado.First;

  cxgrdViewCreceberFiadoSelecaoPropertiesChange(nil);
end;

procedure TfrmControleContasReceberFiado.btPagamentoClick(Sender: TObject);
var  itens : TArray<Integer>;
begin
  inherited;
  itens := RegistrosSelecionados;
  if ContemPago(itens)  then
  begin
    Application.MessageBox('Não é possivel efetuar o recebimento pois uma conta já paga foi selecionada!',
                           'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  if ContemCancelado(itens)  then
  begin
    Application.MessageBox('Não é possivel efetuar o recebimento pois uma conta cancelada foi selecionada!',
                           'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  if Length(itens)<=0 then
  begin
    Application.MessageBox('Nenhum item selecionado!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;
  frmContasReceberFiadoPagamento:= TfrmContasReceberFiadoPagamento.create(self, itens, id_usuario_contas_pagar);
  frmContasReceberFiadoPagamento.showmodal;
  frmContasReceberFiadoPagamento.free;
  qrClientesFiado.Refresh;
  qrCReceberFiado.Refresh;
end;

procedure TfrmControleContasReceberFiado.btPendentesClick(Sender: TObject);
var str_impressao: string;
    sAtual, sUltima: string;
    fRestante: Double;
    tipo_data: string;
begin
  inherited;

  impressora_modo_pos := LerIntegerConfig('CXMODOIMPCAIXA',frmmenu.cdsCFG.FileName)=1;

  if not impressora_modo_pos then
  begin
    Application.MessageBox('Configure a impressora do CAIXA para ESC/POS!', 'Atenção', MB_ICONINFORMATION);
    Abort;
  end;

  if (qrClientesFiado.recordcount = 0) or (qrCReceberFiado.recordcount=0) then
  begin
    Application.MessageBox('Sem dados para exibir no relatório!', 'Atenção', MB_ICONINFORMATION);
    Abort;
  end;

  case cbFiltroTipoData.ItemIndex of
    0: tipo_data := ' cr.data ';
    1: tipo_data := ' cr.data_vencimento ';
    2: tipo_data := ' cr.data_pagamento ';
  end;

  qrPend_Parcelas.Close;
  qrPend_Parcelas.SQL.Text:= 'select cr.documento, cr.id_creceber, cr.id_cliente, '+
                             'cr.data, cr.valor_nota, cr.valor, cr.valor_pago, '+
                             'cr.data_vencimento, cr.nota, cr.id_empresa '+
                             'from creceber cr '+
                             'where cr.id_empresa = :emp '+
                             'and cr.id_situacao = 4 '+
                             'and cr.id_cliente = :cliente '+
                             'and cr.id_venda > 0 '+
                             'and ' + tipo_data + 'between :inicial and :final ';

  qrPend_Parcelas.ParamByName('emp').AsInteger     := RecProj.iEmp;
  qrPend_Parcelas.ParamByName('cliente').AsInteger := qrClientesFiadocli_001.AsInteger;
  qrPend_Parcelas.ParamByName('inicial').AsDate    := dtpDataInicial.Date;
  qrPend_Parcelas.ParamByName('final').AsDateTime  := dtpDataFinal.Date+1;

  qrPend_Parcelas.Open;

  qrPend_Produtos.Close;
  qrPend_Produtos.SQL.Text:= 'select distinct cr.nota, vi.ite_002 as quantidade, vi.ite_003 as valor_unitario, vi.ite_005 as valor_total, vi.mat_001 as id_material, m.mat_003, m.mat_004, vi.ite_001 as item, cr.id_empresa '+
                             'from creceber cr '+
                             'left join vendaitem vi on vi.ven_001 = cr.id_venda and vi.emp_001 = cr.id_empresa and vi.sit_001 = 4 '+
                             'left join materiais m on m.mat_001 = vi.mat_001 '+
                             'where cr.id_empresa = :emp '+
                             'and cr.id_situacao = 4 '+
                             'and cr.id_cliente = :cliente '+
                             'and cr.id_venda > 0 '+
                             'and ' + tipo_data + 'between :inicial and :final ';

  qrPend_Produtos.ParamByName('emp').AsInteger     := RecProj.iEmp;
  qrPend_Produtos.ParamByName('cliente').AsInteger := qrClientesFiadocli_001.AsInteger;
  qrPend_Produtos.ParamByName('inicial').AsDate    := dtpDataInicial.Date;
  qrPend_Produtos.ParamByName('final').AsDateTime  := dtpDataFinal.Date+1;
  qrPend_Produtos.Open;

  if (qrPend_Parcelas.recordcount>0) then
  begin
    fRestante:= 0;

    qrDadosCliente.Close;
    qrDadosCliente.ParamByName('id_cliente').AsInteger := qrClientesFiado.FieldByName('cli_001').AsInteger;
    qrDadosCliente.ParamByName('id_empresa').AsInteger := recproj.iEmp;
    qrDadosCliente.open;

    str_impressao := '</zera>' +  sLineBreak+
                     '<e>**PAGAMENTOS PENDENTES**</e>'+ sLineBreak +
                     UpperCase(cbFiltroTipoData.Text) + ': DE ' + dtpDataInicial.Text + ' A ' + dtpDataFinal.Text + sLineBreak+
                     '</linha_simples>'+ sLineBreak+'</ae>'+
                     'Cliente:  ' + qrDadosCliente.FieldByName('nome').AsString + sLineBreak+
                     'Endereço: ' + qrDadosCliente.FieldByName('endereco').AsString + sLineBreak+
                     'Bairro:   ' + qrDadosCliente.FieldByName('bairro').AsString + sLineBreak+
                     'Cidade:   ' + qrDadosCliente.FieldByName('cidade_desc').AsString + sLineBreak+
                     'Telefone: ' + qrDadosCliente.FieldByName('telefone1').AsString + sLineBreak+
                     'CPF:      ' + qrDadosCliente.FieldByName('cpf').AsString + sLineBreak+  '</ae>' +
                     '</linha_simples>'+ sLineBreak +
                     'Documento Vencimento       Vl Parc      Restante' + slinebreak +
                     '</linha_simples>'+ sLineBreak;

      qrPend_Parcelas.first;
      while not qrPend_Parcelas.Eof do
      begin
        sAtual:= qrPend_Parcelasnota.AsString;

        if qrPend_Parcelas.RecNo = 1 then
          sUltima:= sAtual;

        if sAtual = sUltima then
        begin
          str_impressao:=str_impressao+'</ae>'+
          AcertaTexto(qrPend_Parcelasdocumento.AsString,'E',10,' ') +
          AcertaTexto(FormatDateTime( 'dd/mm/yyyy',qrPend_Parcelasdata_vencimento.AsDateTime ),'E',10) +
          AcertaTexto(Format('%.2f',[qrPend_Parcelasvalor.AsFloat]),'D',14) +
          AcertaTexto(Format('%.2f',[qrPend_Parcelasvalor.AsFloat - qrPend_Parcelasvalor_pago.AsFloat]),'D',14) + slinebreak;

          sUltima:= sAtual;

          fRestante:= fRestante + (qrPend_Parcelasvalor.AsFloat - qrPend_Parcelasvalor_pago.AsFloat);
        end
        else
        begin
          str_impressao:=str_impressao+slinebreak;

          str_impressao:= str_impressao+
                          'Produto                  QTD   Vl Unit     Total' + slinebreak +
                          '</linha_simples>' + slinebreak;

          qrPend_Produtos.first;
          while not qrPend_Produtos.Eof do
          begin
            if qrPend_Produtosnota.AsString = sUltima then
            begin
              str_impressao:=str_impressao+'</ae>'+
              AcertaTexto(qrPend_Produtosmat_003.AsString,'E',20,' ') +
              AcertaTexto(Format('%.2f',[qrPend_Produtosquantidade.AsFloat]),'D',8) +
              AcertaTexto(Format('%.2f',[qrPend_Produtosvalor_unitario.AsFloat]),'D',10) +
              AcertaTexto(Format('%.2f',[qrPend_Produtosvalor_total.AsFloat]),'D',10) +
              sLineBreak;
            end;

            qrPend_Produtos.next;
          end;

          str_impressao:=str_impressao + slinebreak + '</linha_dupla>' +slinebreak + slinebreak +

          'Documento Vencimento       Vl Parc      Restante' + slinebreak +
          '</linha_simples>' + slinebreak;

          str_impressao:=str_impressao+'</ae>'+
          AcertaTexto(qrPend_Parcelasdocumento.AsString,'E',10,' ') +
          AcertaTexto(FormatDateTime( 'dd/mm/yyyy',qrPend_Parcelasdata_vencimento.AsDateTime ),'E',10) +
          AcertaTexto(Format('%.2f',[qrPend_Parcelasvalor.AsFloat]),'D',14) +
          AcertaTexto(Format('%.2f',[qrPend_Parcelasvalor.AsFloat - qrPend_Parcelasvalor_pago.AsFloat]),'D',14) + slinebreak;

          sUltima:= sAtual;

          fRestante:= fRestante + (qrPend_Parcelasvalor.AsFloat - qrPend_Parcelasvalor_pago.AsFloat);
        end;

        qrPend_Parcelas.Next;
      end;

      str_impressao:=str_impressao+slinebreak;

      str_impressao:= str_impressao+
                      'Produto                  QTD   Vl Unit     Total' + slinebreak +
                      '</linha_simples>' + slinebreak;

      qrPend_Produtos.first;
      while not qrPend_Produtos.Eof do
      begin
        if qrPend_Produtosnota.AsString = sUltima then
        begin
          str_impressao:=str_impressao+'</ae>'+
          AcertaTexto(qrPend_Produtosmat_003.AsString,'E',20,' ') +
          AcertaTexto(Format('%.2f',[qrPend_Produtosquantidade.AsFloat]),'D',8) +
          AcertaTexto(Format('%.2f',[qrPend_Produtosvalor_unitario.AsFloat]),'D',10) +
          AcertaTexto(Format('%.2f',[qrPend_Produtosvalor_total.AsFloat]),'D',10) +
          sLineBreak;
        end;

        qrPend_Produtos.next;
      end;

      str_impressao:=str_impressao+'</linha_simples>' +
      slinebreak + slinebreak +
      'TOTAL PENDENTE: ' + Format('%.2f',[fRestante])+
      slinebreak + slinebreak +
      '</corte_total>';

      if frmMenu.ConfiguraImpressoraPOS('CAIXA') then
        frmMenu.ACBrPosPrinter1.Imprimir(str_impressao);
  end
  else
    Application.MessageBox('Sem dados para exibir no relatório!', 'Atenção', MB_ICONINFORMATION);
end;

procedure TfrmControleContasReceberFiado.btPesquisarClick(Sender: TObject);
var filtro_status , filtro_nome, filtro_conta  , filtro_status_conta , filtro, tipo_data, filtro_data: string;
begin
  inherited;

  Perform(WM_NEXTDLGCTL, 0, 0);

  case cbFiltroSituacao.ItemIndex of
  0 : filtro_status := ' and coalesce(saldo_atual, 0.00) <0 ';   //em debito
  1 : filtro_status := ' and coalesce(saldo_atual, 0.00) >0 ';   //com credito
  else filtro_status := '';
  end;

  case cbFiltroTipoData.ItemIndex of
    0: tipo_data := ' data ';
    1: tipo_data := ' data_vencimento';
    2: tipo_data := ' data_pagamento';
  end;

  case cbFiltroSituacaoConta.ItemIndex of
    0 : filtro_status_conta :=' true ' ;          //todos
    1 : filtro_status_conta :=' id_situacao=4 ' ; //pendentes
    2 : filtro_status_conta :=' id_situacao=7 ' ; //pagos
    3 : filtro_status_conta :=' id_situacao=2 ' ; //cancelados
  end;

  filtro_data := format('( %s >= :data1 and %s <= :data2  )', [tipo_data, tipo_data]);

  filtro_conta := ' and cli_001 in ( select id_cliente from creceber where id_empresa=:id_empresa and ' + filtro_status_conta +' and ' + filtro_data +' )';

  if trim(edFiltroNomeCliente.Text)='' then
    filtro_nome :=''
  else
    filtro_nome := format( ' and upper(cli_002) like upper(%s) ', [ quotedstr('%'+ trim(edFiltroNomeCliente.Text)+'%')]) ;

  filtro :=  filtro_nome + filtro_status + filtro_conta;

  qrClientesFiado.Close;
  if qrClientesFiado.SQL.Count = i_where then
    qrClientesFiado.SQL.Add(filtro)
  else
    qrClientesFiado.SQL[i_where]:= filtro;
  qrClientesFiado.ParamByName('data1').AsDate := dtpDataInicial.Date;
  qrClientesFiado.ParamByName('data2').AsDateTime := dtpDataFinal.Date+1;
  qrClientesFiado.ParamByName('id_empresa').AsInteger:=recproj.iEmp;
  qrClientesFiado.Open;


  qrCReceberFiado.Close;
  if qrCReceberFiado.SQL.Count = i_where_creceber then
    qrCReceberFiado.SQL.Add(' and' + filtro_status_conta +' and ' + filtro_data)
  else
    qrCReceberFiado.SQL[i_where_creceber]:= ' and ' +filtro_status_conta +' and ' + filtro_data;


  qrCReceberFiado.ParamByName('data1').AsDate := dtpDataInicial.Date;
  qrCReceberFiado.ParamByName('data2').AsDateTime := dtpDataFinal.Date+1;
  qrCReceberFiado.ParamByName('id_empresa').AsInteger:=recproj.iEmp;
  qrCReceberFiado.Open;

end;

procedure TfrmControleContasReceberFiado.btReimprimircupomClick(Sender: TObject);
 var itens, verifica : TArray<Integer>;
     iRec, iSelecionado, i : integer;
     selecionado : boolean;
begin
  inherited;
  //11/04/2018 V2.36.0.0
  itens := RegistrosSelecionados;// Verifica se existe alguma parcela selecionada

  if Length(itens)<=0 then
  begin
    Application.MessageBox('NENHUMA PARCELA SELECIONADA!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  if Length(itens)>1 then   // Verifica se é mais que uma parcela selecionada
  begin
    Application.MessageBox('SÓ É PERMITIDO IMPRIMIR UM CUPOM DE CADA VEZ, POR FAVOR SELECIONE UMA PARCELA DE CADA VEZ!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  //Volta o registro para o selecionado - Bruno 18/04/2018
  iSelecionado:= 0;

  SetLength(verifica, qrCReceberFiado.RecordCount);
  qrCReceberFiado.First;
  while not (qrCReceberFiado.Eof) and not (selecionado) do
  begin
    iRec := cxgrdViewCreceberFiado.Controller.SelectedRecords[0].RecordIndex;
    //Registro selecionado, coluna 0 (coluna de seleção)
    if VarIsNull(cxgrdViewCreceberFiado.DataController.Values[iRec, 0]) then
      selecionado := false
    else
      selecionado := cxgrdViewCreceberFiado.DataController.Values[iRec, 0];

    if selecionado then
      iSelecionado := qrCReceberFiado.FieldByName('id_creceber').AsInteger;

    qrCReceberFiado.next;
  end;

  qrCReceberFiado.Locate('id_creceber', iSelecionado, []);

  //10/04/2018  V2.36.0.0  Rafael
  qrReimprimir.close;
  qrReimprimir.ParamByName('ven_001').AsInteger:=qrCReceberFiado.FieldByName('id_venda').AsInteger;
  qrReimprimir.ParamByName('emp_001').AsInteger:=RecProj.iEmp;
  qrReimprimir.open;

  if qrReimprimir.Active then
  begin
    if qrReimprimir.RecordCount>0 then
    begin
      if qrReimprimir.FieldByName('venda_cancelada').AsBoolean then
      begin
        application.MessageBox('Não é possível reimprimir este cupom pois a venda foi cancelada!', 'Atenção', MB_ICONINFORMATION)
      end
      else if qrCReceberFiado.FieldByName('id_situacao').AsInteger=7 then
      begin
       qrCReceberFiado.Filtered:= False;
       qrCReceberFiado.Filter:= 'id_creceber = ' + IntToStr(iSelecionado);
       qrCReceberFiado.Filtered:= True;

       repReciboPagamento.Variables['sDataPagamento'] := QuotedStr(formatdatetime('dd/mm/yyyy hh:nn', Date + Time ));
       repReciboPagamento.Variables['sSisDev'] := recproj.sInfoDevSistema2;
       repReciboPagamento.PrintOptions.ShowDialog := true;
       repReciboPagamento.PrepareReport;
       repReciboPagamento.ShowReport;
       qrCReceberFiado.Filtered:= False;
      end
      else
      begin
        frmPDVFechamento := TfrmPDVFechamento.Create(self, qrReimprimir.FieldByName('id_venda').AsInteger);
        frmPDVFechamento.ReimpressaoCupom;
        frmPDVFechamento.Free;
      end;
    end;
  end;
end;


procedure TfrmControleContasReceberFiado.btRelatorioClick(Sender: TObject);
begin
  inherited;
  if qrClientesFiado.recordcount>0 then
  begin
    repCReceberFiado.PrepareReport;
    repCReceberFiado.ShowReport;
  end
  else
  begin
    Application.MessageBox('Sem dados para exibir no relatório!', 'Atenção', MB_ICONINFORMATION);
  end;
end;

procedure TfrmControleContasReceberFiado.btTodasClick(Sender: TObject);
var iRec: integer;
begin
  inherited;

  qrCReceberFiado.First;
  while not qrCReceberFiado.eof do
  begin
    iRec := cxgrdViewCreceberFiado.Controller.SelectedRecords[0].RecordIndex;

    if qrCReceberFiadoid_situacao.AsInteger = 4 then
      cxgrdViewCreceberFiado.DataController.Values[iRec, 0]:= 1
    else
      cxgrdViewCreceberFiado.DataController.Values[iRec, 0]:= 0;

    qrCReceberFiado.next;
  end;

  qrCReceberFiado.First;

  cxgrdViewCreceberFiadoSelecaoPropertiesChange(nil);
end;

end.

