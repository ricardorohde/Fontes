unit uContasReceberFiadoPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, Vcl.DBCtrls, Vcl.StdCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox,
  cxRadioGroup, JvEdit, JvValidateEdit, AdvGroupBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Datasnap.DBClient, Datasnap.Provider, MemDS, DBAccess, Uni, System.Math,
  AdvGlowButton, frxClass, frxDBSet, Vcl.Grids, Vcl.DBGrids, dxSkinsCore,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmContasReceberFiadoPagamento = class(TfrmModelo)
    qrCReceberFiado: TUniQuery;
    qrCReceberFiadoid_creceber: TIntegerField;
    qrCReceberFiadoid_conta: TIntegerField;
    qrCReceberFiadoid_usuario_pagamento: TIntegerField;
    qrCReceberFiadonota: TIntegerField;
    qrCReceberFiadodescricao: TWideStringField;
    qrCReceberFiadovalor: TFloatField;
    qrCReceberFiadovalor_desconto: TFloatField;
    qrCReceberFiadovalor_acrescimo: TFloatField;
    qrCReceberFiadodata_vencimento: TDateField;
    qrCReceberFiadodata_pagamento: TDateTimeField;
    qrCReceberFiadovalor_pago_db: TFloatField;
    qrCReceberFiadovalor_pago: TFloatField;
    dspCReceberFiado: TDataSetProvider;
    cdsCReceberFiado: TClientDataSet;
    cdsCReceberFiadoid_creceber: TIntegerField;
    cdsCReceberFiadoid_conta: TIntegerField;
    cdsCReceberFiadoid_usuario_pagamento: TIntegerField;
    cdsCReceberFiadonota: TIntegerField;
    cdsCReceberFiadodescricao: TWideStringField;
    cdsCReceberFiadovalor: TFloatField;
    cdsCReceberFiadovalor_desconto: TFloatField;
    cdsCReceberFiadovalor_acrescimo: TFloatField;
    cdsCReceberFiadodata_vencimento: TDateField;
    cdsCReceberFiadodata_pagamento: TDateTimeField;
    cdsCReceberFiadovalor_pago_db: TFloatField;
    cdsCReceberFiadovalor_pago: TFloatField;
    dsCReceberFiado: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1nota: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1valor: TcxGridDBColumn;
    cxGrid1DBTableView1valor_desconto: TcxGridDBColumn;
    cxGrid1DBTableView1valor_acrescimo: TcxGridDBColumn;
    cxGrid1DBTableView1data_vencimento: TcxGridDBColumn;
    cxGrid1DBTableView1data_pagamento: TcxGridDBColumn;
    cxGrid1DBTableView1valor_pago_db: TcxGridDBColumn;
    cxGrid1DBTableView1valor_pago: TcxGridDBColumn;
    cxGrid1DBTableView1id_creceber: TcxGridDBColumn;
    cxGrid1DBTableView1id_conta: TcxGridDBColumn;
    cxGrid1DBTableView1id_usuario_pagamento: TcxGridDBColumn;
    qrCReceberFiadotipo_venda: TWideStringField;
    cdsCReceberFiadotipo_venda: TWideStringField;
    cxGrid1DBTableView1tipo_venda: TcxGridDBColumn;
    AdvGroupBox1: TAdvGroupBox;
    edValorPagamentoCaixa: TJvValidateEdit;
    rbCaixa: TcxRadioButton;
    cbFormaPagamento: TJvDBComboBox;
    meObservacao: TMemo;
    cdsCReceberFiadototal_desconto: TAggregateField;
    cdsCReceberFiadototal_valor: TAggregateField;
    cdsCReceberFiadototal_pago: TAggregateField;
    cdsCReceberFiadototal_acrescimo: TAggregateField;
    cdsCReceberFiadotaol_pago_db: TAggregateField;
    Label8: TLabel;
    DBText2: TDBText;
    DBText5: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    btConfirma: TAdvGlowButton;
    btCancela: TAdvGlowButton;
    DBText1: TDBText;
    Label1: TLabel;
    qrCReceberFiadovalor_restante: TFloatField;
    cdsCReceberFiadovalor_restante: TFloatField;
    qrCReceberFiadoid_cliente: TIntegerField;
    cdsCReceberFiadoid_cliente: TIntegerField;
    dbCReceberFiado: TfrxDBDataset;
    qrCReceberFiadodocumento: TWideStringField;
    cdsCReceberFiadodocumento: TWideStringField;
    dbDadosCliente: TfrxDBDataset;
    qrDadosCliente: TUniQuery;
    qrDadosClientenome: TWideStringField;
    qrDadosClienteendereco: TWideStringField;
    qrDadosClientebairro: TWideStringField;
    qrDadosClientecidade_desc: TWideStringField;
    qrDadosClientetelefone1: TWideStringField;
    qrDadosClientecpf: TWideStringField;
    qrCReceberFiadotaxa_juros: TFloatField;
    cdsCReceberFiadotaxa_juros: TFloatField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cdsCReceberFiadovalor_juros: TFloatField;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cdsCReceberFiadovalor_pago_ref: TFloatField;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    qrCReceberFiadodias_vencimento: TIntegerField;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cdsCReceberFiadodias_vencimento: TIntegerField;
    cdsCReceberFiadototal_juros: TAggregateField;
    DBText6: TDBText;
    Label2: TLabel;
    DBText7: TDBText;
    Label3: TLabel;
    cdsCReceberFiadototal_restante: TAggregateField;
    DBText3: TDBText;
    DBText4: TDBText;
    qrCReceberFiadovalor_juros_db: TFloatField;
    cdsCReceberFiadovalor_juros_db: TFloatField;
    qrCReceberFiadomeses_vencimento: TFloatField;
    cdsCReceberFiadomeses_vencimento: TFloatField;
    Label4: TLabel;
    lblTroco: TLabel;
    repReciboPagamento: TfrxReport;
    cdsCReceberFiadoRestante_new: TFloatField;
    constructor Create(sender : tcomponent; ItensSelecionados : TArray<integer>; id_usuario_pagamento : integer);reintroduce;
    procedure edValorPagamentoCaixaEnter(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure cdsCReceberFiadoAfterPost(DataSet: TDataSet);
    procedure edValorPagamentoCaixaExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsCReceberFiadoCalcFields(DataSet: TDataSet);
    procedure cdsCReceberFiadovalor_descontoChange(Sender: TField);
    procedure cdsCReceberFiadovalor_acrescimoChange(Sender: TField);
    procedure cdsCReceberFiadotaxa_jurosChange(Sender: TField);
    function SomaJuros: double;
    function SomaTotais: double;
    procedure cdsCReceberFiadoAfterOpen(DataSet: TDataSet);
    procedure cdsCReceberFiadovalor_pagoChange(Sender: TField);
    procedure CalcularTroco;
  private
    { Private declaraciones}
    qtd_contas, id_usuario_contas_pagar : integer;
    flag_calculando : boolean; impressora_modo_pos : boolean;
    tipo_calculo_juros : integer;
    troco: double;
  public
    { Public declarations }
    valor_juros: double;
  end;
const  I_where = 23;
var
  frmContasReceberFiadoPagamento: TfrmContasReceberFiadoPagamento;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uFuncoes;

procedure TfrmContasReceberFiadoPagamento.btCancelaClick(Sender: TObject);
begin
  inherited;
  self.Tag := 0;
  close;
end;


function TfrmContasReceberFiadoPagamento.SomaJuros: double;
var soma : double;
begin
  inherited;
  soma:=0;


end;

function TfrmContasReceberFiadoPagamento.SomaTotais: double;
begin
  inherited;
  self.Tag := 0;
  close;
end;

procedure TfrmContasReceberFiadoPagamento.btConfirmaClick(Sender: TObject);
var total_pago_contas, valor_pago, valor_pago_conta, valor_conta,
    valor_pagamentos: double;
    continua, pago : boolean ;
    i, id_situacao_conta, id_creceber : integer;
    str_sql : string;
    qr_aux : Tuniquery;
    var str_impressao : string;
begin
  inherited;
  pago:=false;
  total_pago_contas := roundto(cdsCReceberFiado.FieldByName('total_pago').value,-2);

  //verifica se os valores informados estão corretos
  frmMenu.VerificaCaixaAberto;
  valor_pago := roundto(edValorPagamentoCaixa.Value,-2);

  if valor_pago < total_pago_contas then
  begin
    Application.MessageBox('O valor informado para pagamento é menor do total informado nas contas a receber!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  continua :=true;
  i:=1;
  //verifica se os lançamentos estão ok
  cdsCReceberFiado.First;
  while not cdsCReceberFiado.eof do
  begin
    //verifica se o valor informado é superior ao valor restante
    if roundto(cdsCReceberFiado.FieldByName('valor_pago').AsFloat, -2) >
       roundto(cdsCReceberFiado.FieldByName('valor_restante_calc').AsFloat, -2) then
    begin
      continua:=false;
      Application.MessageBox(pchar(format('O valor de pagamento informado do item %d é superior ao valor da conta!',[i])),
                                          'Atenção', MB_ICONINFORMATION + mb_ok);
    end;

    //verifica se o valor é <0
    if roundto(cdsCReceberFiado.FieldByName('valor_pago').AsFloat, -2) <0 then
    begin
      continua:=false;
      Application.MessageBox(pchar(format('O valor de pagamento informado do item %d é inváilido!',[i])),
                                          'Atenção', MB_ICONINFORMATION + mb_ok);
    end;


    i:=i+1;
    cdsCReceberFiado.Next;
  end;
  valor_juros:=0;
  if continua then
  begin
    qr_aux := Tuniquery.Create(self);
    qr_aux.Connection := frmmenu.conexao;

    cdsCReceberFiado.First;
    while not cdsCReceberFiado.eof do
    begin
      if roundto(cdsCReceberFiado.FieldByName('valor_pago').asfloat, -2) >0 then
      begin
        id_creceber := cdsCReceberFiado.FieldByName('id_creceber').AsInteger;
        valor_pago_conta := cdsCReceberFiado.FieldByName('valor_pago').asfloat;
        valor_conta := cdsCReceberFiado.FieldByName('valor').asfloat +
                       cdsCReceberFiado.FieldByName('valor_acrescimo').asfloat +
                       cdsCReceberFiado.FieldByName('valor_juros').asfloat -
                       cdsCReceberFiado.FieldByName('valor_desconto').asfloat;
        valor_juros:=  cdsCReceberFiado.FieldByName('valor_juros').asfloat;       // Juros da parcela


        // insere a parcela de pagamento
        str_sql :=' insert into creceber_parcela '+
                  ' (parcela, id_creceber, id_empresa, valor, data, id_situacao, id_usuario) values '+
                  ' ((select coalesce(max(parcela), 0)+1 from creceber_parcela where id_creceber = :id_creceber and id_empresa=:id_empresa), '+
                  ' :id_creceber, :id_empresa, :valor, localtimestamp, 4, :id_user) ';
        ExecutaComandoSQL( str_sql, vararrayof([id_creceber, recproj.iEmp, valor_pago_conta, id_usuario_contas_pagar ]));

        //soma as parcelas e atualiza a conta
        str_sql :=format(' select sum(valor) as pago  from creceber_parcela '+
                  ' where id_creceber = %d and id_empresa=%d and id_situacao=4 ',[id_creceber, recproj.iEmp]);
        ExecutaConsultaSQL(qr_aux, str_sql);
        valor_pagamentos:= qr_aux.Fields[0].AsFloat;


        if roundto(valor_pagamentos,-2) = roundto(valor_conta,-2)then
          id_situacao_conta := 7
        else
          id_situacao_conta :=4;
        str_sql := ' update creceber set id_usuario_pagamento = :id_usuario, descricao=:desc, '+
                   ' valor_pago=:valor_pago, data_pagamento=localtimestamp, id_situacao=:id_situacao, '+
                   ' valor_juros=:juros, valor_total=:valor_conta, '+
                   ' valor_desconto = :valor_desconto, valor_acrescimo = :valor_acrescimo'+
                   ' where id_creceber=:id_creceber and id_empresa=:id_empresa';
        ExecutaComandoSQL( str_sql, vararrayof([id_usuario_contas_pagar,
                                                cdsCReceberFiado.FieldByName('descricao').asstring,
                                                valor_pagamentos, id_situacao_conta,
                                                valor_juros, valor_conta,
                                                cdsCReceberFiado.FieldByName('valor_desconto').asfloat,
                                                cdsCReceberFiado.FieldByName('valor_acrescimo').asfloat,
                                                id_creceber, recproj.iEmp]));
        //faz o lançamento no caixa
        InserirCaixaItem(recproj.iIDCaixa, strtoint(cbFormaPagamento.Values[cbFormaPagamento.ItemIndex]),
                         valor_pago_conta, 'E',meObservacao.Text, 0, 0, 0, false, 'C', 0,
                         id_creceber);

        //faz o lançamento na conta do cliente
        InserirMovimentoContaCliente(recproj.iEmp, cdsCReceberFiado.FieldByName('id_cliente').AsInteger, id_usuario_contas_pagar,
                          valor_pago_conta, 'E', 'Pagamento de conta ', Date+ Time , null, false, 0);
        pago :=true;
      end;
      cdsCReceberFiado.Next;
    end;

    //imprime o recibo
    if pago then

    begin
      if impressora_modo_pos then
      begin
      cdscreceberfiado.first;
      str_impressao :=  '</zera>' +  sLineBreak+
        '<e>**RECIBO DE PAGAMENTO**</e>'+ sLineBreak +
        '</linha_dupla>'+ sLineBreak+'</ae>'+
        frmmenu.qrEmpresa.FieldByName('emp_003').AsString + sLineBreak+
        AcertaTexto(frmmenu.qrEmpresa.FieldByName('cep_004').AsString, 'E' , 40)+
        AcertaTexto(frmmenu.qrEmpresa.FieldByName('emp_007').AsString, 'E' , 8)+ sLineBreak +
        AcertaTexto(frmmenu.qrEmpresa.FieldByName('cep_003').AsString, 'E' , 48)+ sLineBreak +
        'FONE: '+AcertaTexto(frmmenu.qrEmpresa.FieldByName('emp_013').AsString, 'E' , 40)+ sLineBreak +
        '</linha_simples>' +sLineBreak+
        'Cliente:  ' + qrDadosCliente.FieldByName('nome').AsString + sLineBreak+
        'Endereço: ' + qrDadosCliente.FieldByName('endereco').AsString + sLineBreak+
        'Bairro:   ' + qrDadosCliente.FieldByName('bairro').AsString + sLineBreak+
        'Cidade:   ' + qrDadosCliente.FieldByName('cidade_desc').AsString + sLineBreak+
        'Telefone: ' + qrDadosCliente.FieldByName('telefone1').AsString + sLineBreak+
        'CPF:      ' + qrDadosCliente.FieldByName('cpf').AsString + sLineBreak+  '</ae>' +
        '</linha_dupla>'+ sLineBreak +
        '<n>'+'Data do pagamento: '+FormatDateTime('dd/mm/yyyy hh:nn',date+time)+'</n>'+slinebreak+
        '</linha_simples>' +sLineBreak+
        'Documento Vencimento       Vl Pago      Restante'+slinebreak;
        while not cdscreceberfiado.Eof do
        begin
         str_impressao:=str_impressao+'</ae>'+
         AcertaTexto(cdsCReceberFiado.FieldByName('documento').AsString,'E',10,' ') +
         AcertaTexto(FormatDateTime( 'dd/mm/yyyy',cdsCReceberFiado.FieldByName('data_vencimento').AsDateTime ),'E',10) +
         AcertaTexto(Format('R$ %.2f',[ cdsCReceberFiado.FieldByName('valor_pago').AsFloat]),'D',14) +
         AcertaTexto(Format('R$ %.2f',[ cdsCReceberFiado.FieldByName('valor_restante_calc').AsFloat - cdsCReceberFiado.FieldByName('valor_pago').AsFloat]),'D',14) + slinebreak;
         cdscreceberfiado.Next;
        end;
        str_impressao:=str_impressao+'</linha_simples>' +slinebreak;

        if troco > 0 then
          str_impressao:=str_impressao + 'Forma Pgto: '+cbFormaPagamento.Text + format(' R$ %.2f',[valor_pago ]) + slinebreak +
                                         'Troco: ' + format('R$ %.2f',[troco]) + slinebreak
        else
          str_impressao:=str_impressao + 'Forma Pgto: '+cbFormaPagamento.Text + format(' R$ %.2f',[valor_pago ]) + slinebreak;

        str_impressao:=str_impressao + '</linha_simples>'+slinebreak+
        '</ce>' + recproj.sInfoDevSistema2 + sLineBreak +
        'Versão '+ GetFileVersion(ParamStr(0)) + sLineBreak +
        '</linha_simples>'+ sLineBreak + slinebreak+ slinebreak +
        '</corte_total>';
        if frmMenu.ConfiguraImpressoraPOS('CAIXA') then
          frmMenu.ACBrPosPrinter1.Imprimir(str_impressao);
      end
      else
      begin
        if troco > 0 then
        begin
          repReciboPagamento.Variables['sTroco'] := QuotedStr('TROCO:');
          repReciboPagamento.Variables['sTrocoValor'] := QuotedStr(format('R$ %.2f',[troco]));
        end
        else
        begin
          repReciboPagamento.Variables['sTroco'] := QuotedStr('');
          repReciboPagamento.Variables['sTrocoValor'] := QuotedStr('');
        end;

        repReciboPagamento.Variables['sDataPagamento'] := QuotedStr(formatdatetime('dd/mm/yyyy hh:nn', Date + Time ));
        repReciboPagamento.Variables['sSisDev'] := recproj.sInfoDevSistema2;
        repReciboPagamento.Variables['sFormaPag'] := QuotedStr(cbFormaPagamento.Text);
        repReciboPagamento.Variables['sFormaValor'] := QuotedStr(format('R$ %.2f',[valor_pago]));
        repReciboPagamento.PrintOptions.ShowDialog := true;
        repReciboPagamento.PrepareReport;
        repReciboPagamento.ShowReport;
      end;
    end;
    self.Tag  :=1;
    close;
  end;
end;

procedure TfrmContasReceberFiadoPagamento.cdsCReceberFiadoAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  // loop para forçar o recalculo dos agregates...
  cdsCReceberFiado.First;
  while not cdsCReceberFiado.Eof do
  begin
    cdsCReceberFiado.Edit;
    cdsCReceberFiado.FieldByName('valor_pago').asfloat := cdsCReceberFiado.FieldByName('valor_pago').asfloat;
    cdsCReceberFiado.Next;
  end;

end;

procedure TfrmContasReceberFiadoPagamento.cdsCReceberFiadoAfterPost(
  DataSet: TDataSet);
begin
  inherited;
//  if not varisnull(cdsCReceberFiado.FieldByName('total_pago').value) then
//    edValorPagamentoCaixa.Value := cdsCReceberFiado.FieldByName('total_pago').Value;

  CalcularTroco;
end;

procedure TfrmContasReceberFiadoPagamento.cdsCReceberFiadoCalcFields(
  DataSet: TDataSet);
var replica_valor : boolean;
    flag_juros: integer;
begin
  inherited;
  if (cdsCReceberFiado.State in [dsEdit, dsCalcFields]) and not flag_calculando  then
  begin
    flag_calculando := true;

    if cdsCReceberFiado.FieldByName('dias_vencimento').asinteger>0 then
      flag_juros := 1
    else
      flag_juros :=0;


    replica_valor := cdsCReceberFiado.FieldByName('valor_restante_calc').AsFloat =
                     cdsCReceberFiado.FieldByName('valor_pago').AsFloat ;

    case tipo_calculo_juros of
      1 : //juros simples
      begin
        cdsCReceberFiado.FieldByName('valor_juros').AsFloat := roundto(cdsCReceberFiado.FieldByName('valor').AsFloat *
                                                  (cdsCReceberFiado.FieldByName('taxa_juros').AsFloat * 0.01)*flag_juros,-2);
      end;
      2 : //juros composto
      begin
        // (valor da parcela)*(1 + juros)^(numero de meses de atraso)
        cdsCReceberFiado.FieldByName('valor_juros').AsFloat :=
          roundto((cdsCReceberFiado.FieldByName('valor').AsFloat *
          power((1 + (cdsCReceberFiado.FieldByName('taxa_juros').AsFloat * 0.01)),
          cdsCReceberFiado.FieldByName('meses_vencimento').asinteger))- cdsCReceberFiado.FieldByName('valor').AsFloat, -2);

      end;

    end;


    cdsCReceberFiado.FieldByName('valor_restante_calc').AsFloat := cdsCReceberFiado.FieldByName('valor').AsFloat -
                                                          cdsCReceberFiado.FieldByName('valor_pago_db').AsFloat -
                                                          cdsCReceberFiado.FieldByName('valor_desconto').AsFloat +
                                                          cdsCReceberFiado.FieldByName('valor_acrescimo').AsFloat +
                                                          cdsCReceberFiado.FieldByName('valor_juros').AsFloat ;


    if replica_valor then
      cdsCReceberFiado.FieldByName('valor_pago').AsFloat:= cdsCReceberFiado.FieldByName('valor_restante_calc').AsFloat;

    cdsCReceberFiado.FieldByName('restante_new').AsFloat := cdsCReceberFiado.FieldByName('valor_restante_calc').AsFloat - cdsCReceberFiado.FieldByName('valor_pago').AsFloat;

   flag_calculando :=false;

  end;

end;

procedure TfrmContasReceberFiadoPagamento.cdsCReceberFiadotaxa_jurosChange(
  Sender: TField);
begin
  inherited;
    if (cdsCReceberFiado.FieldByName('taxa_juros').AsFloat<0) or
     (cdsCReceberFiado.FieldByName('taxa_juros').isnull) then
    cdsCReceberFiado.FieldByName('taxa_juros').AsFloat:=0;
end;

procedure TfrmContasReceberFiadoPagamento.cdsCReceberFiadovalor_acrescimoChange(
  Sender: TField);
begin
  inherited;
  if (cdsCReceberFiado.FieldByName('valor_acrescimo').AsFloat<0) or
     (cdsCReceberFiado.FieldByName('valor_acrescimo').isnull) then
    cdsCReceberFiado.FieldByName('valor_acrescimo').AsFloat:=0;
end;

procedure TfrmContasReceberFiadoPagamento.cdsCReceberFiadovalor_descontoChange(
  Sender: TField);
begin
  inherited;
  if (cdsCReceberFiado.FieldByName('valor_desconto').AsFloat<0) or
     (cdsCReceberFiado.FieldByName('valor_desconto').isnull) then
    cdsCReceberFiado.FieldByName('valor_desconto').AsFloat:=0;
end;

procedure TfrmContasReceberFiadoPagamento.cdsCReceberFiadovalor_pagoChange(
  Sender: TField);
begin
  inherited;
  if cdsCReceberFiado.FieldByName('valor_pago').IsNull then
    cdsCReceberFiado.FieldByName('valor_pago').AsFloat:=0;

end;

constructor TfrmContasReceberFiadoPagamento.Create(sender : tcomponent; ItensSelecionados : TArray<integer>; id_usuario_pagamento : integer);
var qr_aux : TUniQuery;
    str_sql : string;
begin
  inherited Create(sender);
  flag_calculando  :=false;
  //frmMenu.VerificaPermissaoAcesso(RecProj.bAcessoCPagarCReceber);
  id_usuario_contas_pagar := id_usuario_pagamento;
  qtd_contas := Length(ItensSelecionados);
  if qtd_contas<=0 then
  begin
    Application.MessageBox('Nenhum item selecionado!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  //carrega o tipo de juros
  BuscaCampo(tipo_calculo_juros, 'select tipo_calculo_juros from empresas where emp_001=' + inttostr(recproj.iEmp), '', false);

  edValorPagamentoCaixa.Value :=0;
  qrCReceberFiado.Close;
  cdsCReceberFiado.Close;
  qrCReceberFiado.SQL[I_where] := format(' and cr.id_creceber in (%s) ',  [IntArrayToString(ItensSelecionados, ', ')]);
  qrCReceberFiado.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  cdsCReceberFiado.Open;

  qrDadosCliente.Close;
  qrDadosCliente.ParamByName('id_cliente').AsInteger :=cdsCReceberFiado.fieldbyname('id_cliente').AsInteger;
  qrDadosCliente.ParamByName('id_empresa').AsInteger :=recproj.iEmp;
  qrDadosCliente.open;

  qr_aux := TUniQuery.Create(self);
  qr_aux.Connection := frmmenu.conexao;
  str_sql := format('select for_001, for_002, emp_001 from formapgto where emp_001=%d  and sit_001=4 and not b_fiado and not b_devolucao', [recproj.iEmp]);
  ExecutaConsultaSQL(qr_aux,str_sql);
  while not qr_aux.Eof do
  begin
    cbFormaPagamento.Items.Add(qr_aux.Fields[1].asstring);
    cbFormaPagamento.Values.Add(qr_aux.Fields[0].asstring);
    qr_aux.next;
  end;
  cbFormaPagamento.ItemIndex:=0;
  impressora_modo_pos := LerIntegerConfig('CXMODOIMPCAIXA',frmmenu.cdsCFG.FileName)=1;

end;

procedure TfrmContasReceberFiadoPagamento.edValorPagamentoCaixaEnter(
  Sender: TObject);
begin
  inherited;
  if edValorPagamentoCaixa.AsFloat<=0  then
    edValorPagamentocaixa.AsFloat := cdsCReceberFiado.FieldByName('total_pago').value;
end;

procedure TfrmContasReceberFiadoPagamento.edValorPagamentoCaixaExit(
  Sender: TObject);
begin
  inherited;
  if cdsCReceberFiado.Active then
  begin
    if cdsCReceberFiado.RecordCount=1 then
    begin
      cdsCReceberFiado.Edit;

      if edValorPagamentoCaixa.value <= cdsCReceberFiado.FieldByName('valor_restante_calc').Value then
        cdsCReceberFiado.FieldByName('valor_pago').Value := edValorPagamentoCaixa.value
      else
        cdsCReceberFiado.FieldByName('valor_pago').Value := cdsCReceberFiado.FieldByName('valor_restante_calc').Value;

      cdsCReceberFiado.post;
    end;
  end;

  CalcularTroco;
end;

procedure TfrmContasReceberFiadoPagamento.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_return then Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmContasReceberFiadoPagamento.FormShow(Sender: TObject);
begin
  inherited;
  troco:= 0;
  edValorPagamentoCaixa.SetFocus;
end;

procedure TfrmContasReceberFiadoPagamento.CalcularTroco;
begin
  troco:= 0;

  if not cdsCReceberFiado.FieldByName('total_pago').IsNull then
    troco:= edValorPagamentoCaixa.Value - cdsCReceberFiado.FieldByName('total_pago').value;

  if troco > 0 then
    lblTroco.Caption:= FormatFloat('R$###,###,##0.00', troco)
  else
    lblTroco.Caption:= 'R$0,00';
end;

end.
