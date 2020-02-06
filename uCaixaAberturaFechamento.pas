unit uCaixaAberturaFechamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, JvValidateEdit,
  JvExStdCtrls, JvEdit, Data.DB, MemDS, DBAccess, Uni, frxClass, Vcl.Buttons,
  AdvGlowButton, AdvGroupBox, AdvPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Datasnap.DBClient, Datasnap.Provider, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfrmCaixaAberturaFechamento = class(TForm)
    pnTopo: TPanel;
    lbTipoMovimentoCaixa: TLabel;
    qrAux1: TUniQuery;
    repCaixaAberturaFechamento: TfrxReport;
    AdvPanel1: TAdvPanel;
    AdvGroupBox3: TAdvGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edValorDinheiro: TJvValidateEdit;
    edValorCartao: TJvValidateEdit;
    edValorCheque: TJvValidateEdit;
    edValorOutros: TJvValidateEdit;
    edObservacao: TEdit;
    pnBotoes: TFlowPanel;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    btAbrirGaveta: TAdvGlowButton;
    cbPeriodo: TComboBox;
    edData: TEdit;
    edUsuario: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    AdvGroupBox1: TAdvGroupBox;
    grNumKeys: TAdvGroupBox;
    btNumKey_7: TAdvGlowButton;
    btNumKey_Del: TAdvGlowButton;
    btNumKey_0: TAdvGlowButton;
    btNumKey_Virg: TAdvGlowButton;
    btNumKey_1: TAdvGlowButton;
    btNumKey_2: TAdvGlowButton;
    btNumKey_3: TAdvGlowButton;
    btNumKey_4: TAdvGlowButton;
    btNumKey_5: TAdvGlowButton;
    btNumKey_6: TAdvGlowButton;
    btNumKey_8: TAdvGlowButton;
    btNumKey_9: TAdvGlowButton;
    btNumKey_Enter: TAdvGlowButton;
    btNumKey_Limpar: TAdvGlowButton;
    qrMovimentosForma: TUniQuery;
    dspMovimentosForma: TDataSetProvider;
    cdsMovimentosForma: TClientDataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsMovimentosForma: TDataSource;
    qrMovimentosFormatotal_forma: TFloatField;
    qrMovimentosFormaid_caixa: TIntegerField;
    qrMovimentosFormaid_empresa: TIntegerField;
    qrMovimentosFormasfi_codigo: TIntegerField;
    cdsMovimentosFormatotal_forma: TFloatField;
    cdsMovimentosFormaid_caixa: TIntegerField;
    cdsMovimentosFormaid_empresa: TIntegerField;
    cdsMovimentosFormasfi_codigo: TIntegerField;
    cxGrid1DBTableView1total_forma: TcxGridDBColumn;
    cxGrid1DBTableView1desc_forma: TcxGridDBColumn;
    qrMovimentosFormatotal_forma_db: TFloatField;
    cdsMovimentosFormatotal_forma_db: TFloatField;
    btSaidaMovimento: TAdvGlowButton;
    btEntradaMovimento: TAdvGlowButton;
    qrMovimentosFormadesc_forma: TWideMemoField;
    cdsMovimentosFormadesc_forma: TWideMemoField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    constructor Create(sender : Tcomponent ; tipomovimento : string = 'A');
    procedure FormShow(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure CarregaParametrosConfig;
    procedure btAbrirGavetaClick(Sender: TObject);
    procedure btNumKey_7Click(Sender: TObject);
    procedure btNumKey_0Click(Sender: TObject);
    procedure btNumKey_1Click(Sender: TObject);
    procedure btNumKey_2Click(Sender: TObject);
    procedure btNumKey_3Click(Sender: TObject);
    procedure btNumKey_4Click(Sender: TObject);
    procedure btNumKey_5Click(Sender: TObject);
    procedure btNumKey_6Click(Sender: TObject);
    procedure btNumKey_8Click(Sender: TObject);
    procedure btNumKey_9Click(Sender: TObject);
    procedure btNumKey_DelClick(Sender: TObject);
    procedure btNumKey_VirgClick(Sender: TObject);
    procedure btNumKey_EnterClick(Sender: TObject);
    procedure btNumKey_LimparClick(Sender: TObject);
    procedure edValorDinheiroClick(Sender: TObject);
    procedure edValorCartaoClick(Sender: TObject);
    procedure edValorChequeClick(Sender: TObject);
    procedure edValorOutrosClick(Sender: TObject);
    procedure CarregaValoresMovimento(carrega_dinheiro : boolean );
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btSaidaMovimentoClick(Sender: TObject);
    procedure btEntradaMovimentoClick(Sender: TObject);
    procedure cdsMovimentosFormaAfterPost(DataSet: TDataSet);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    tmovimento, sCamImpCaixa, sEmailFechamentoCaixa, nome_usuario_caixa : string;
    bPermiteFechamentoVendaAberta, bFechamentoCaixaEmail   : boolean;
    id_usuario_caixa : integer;

  public
    { Public declarations }
  end;
  const KEYEVENTF_KEYDOWN = 0;

var
  frmCaixaAberturaFechamento: TfrmCaixaAberturaFechamento;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uFuncoes, uPadrao, uCaixaStatus, uEnvioEmailThread,
  uConsVendaSAT, uCaixaDigitaValor, uCaixaLancaMovimento;

procedure TfrmCaixaAberturaFechamento.CarregaParametrosConfig;
begin
  //pega o caminho da impressora nas configurações
  sCamImpCaixa:= LerStringConfig('CAMIMPCAIXA',frmMenu.cdsCFG.FileName);
  buscaCampo(bPermiteFechamentoVendaAberta, format('select b_permite_fechamento_caixa_venda_aberta from empresas where emp_001=%d', [recproj.iemp]), '', false);
  if sCamImpCaixa='' then application.MessageBox('O caminho da impressora do caixa não está definido!', 'Atenção', MB_ICONWARNING);
end;

procedure TfrmCaixaAberturaFechamento.btAbrirGavetaClick(Sender: TObject);
begin
  frmMenu.AbrirGaveta;
end;

procedure TfrmCaixaAberturaFechamento.btCancelaClick(Sender: TObject);
begin
  self.Tag:=0;
  close;
end;

procedure TfrmCaixaAberturaFechamento.btConfirmaClick(Sender: TObject);
var
  str_sql, titulo_rep, caminho_pdf, arquivo_pdf : string;
  id_caixa, int_aux : integer;
  threadEmail : TEnvioEmailThread;
  // Rafael 24/10/2017
  impressora_modo_pos, erro_nfce: Boolean;
  str_impressao: String;
  Total: Double;
  qrVendasNFCeContingencia : Tuniquery;
begin
  //abertura do caixa
  if tmovimento = 'A' then
  begin
    //antes de abrir, verifica se já não existe caixa aberto
    frmMenu.carregaCaixaUsuario;
    if RecProj.iIDCaixa > 0 then
    begin
      Application.MessageBox(pchar('O caixa já encontra-se aberto!'), 'Atenção', MB_ICONINFORMATION);
      abort;
    end;

    //Insere o caixa
    str_sql:= ' insert into caixa (id_caixa, id_empresa, data_abertura, hora_abertura, '+
              ' valor_inicial, id_usuario, id_situacao, periodo_abertura, terminal) '+
              ' values ((select coalesce(max(id_caixa),0)+1 from  caixa where id_empresa=:emp),'+' :emp, localtimestamp, localtime, '+
              ' :valor_inicial, :id_usuario, 4, :periodo, :terminal)';

    ExecutaComandoSQL(str_sql,  CriaVariantArray([RecProj.iEmp, edValorDinheiro.AsFloat,
                                id_usuario_caixa, cbPeriodo.ItemIndex, NomeDoTerminal]));
    //pega o id criado...
    str_sql := 'select coalesce(max(id_caixa),0) as id_caixa from  caixa where id_empresa='+IntToStr(RecProj.iEmp) ;
    ExecutaConsultaSQL(qrAux1, str_sql);
    id_caixa:= qrAux1.Fields[0].AsInteger;
    //insere o movimento de abertura
    str_sql := ' insert into caixaitem (id_caixa, id_empresa, item, tipo_movimento, valor, data, hora, observacao ) '+
               ' values (:id_caixa, :emp, 1, ''E'', :valor_inicial, localtimestamp, localtime, :observacao)';
    ExecutaComandoSQL(str_sql,  CriaVariantArray([id_caixa, RecProj.iEmp, edValorDinheiro.AsFloat, edObservacao.Text]));

    titulo_rep:='ABERTURA DE CAIXA';
    frmMenu.carregaCaixaUsuario;
    if LerBooleanConfig('CKUTILIZAGAVETA',frmMenu.cdsCFG.FileName) then frmMenu.AbrirGaveta;
  end
  //fechamento...
  else
  begin
    id_caixa := RecProj.iIDCaixa;

    //verifica se existem notas em contingência pendentes de envio a SEFAZ e faz o envio usando a função criada no consvendasat
    qrVendasNFCeContingencia := CriaUniQuery(self, frmmenu.conexao);
    str_sql :=' select distinct v.ven_001 as id_venda, '+
              ' v.sit_001=2 as sat_cancelado, '+
              ' v.Ven_038 as chave_acesso, '+
              ' 3 as status_envio_sefaz '+
              ' from venda v '+
              ' join caixaitem ci on v.ven_001 = ci.id_venda and v.emp_001=ci.id_empresa '+
              ' join caixa cx on cx.id_caixa=ci.id_caixa and cx.id_empresa=ci.id_empresa '+
              ' where v.tipofiscal=''NFCE'' '+
              ' and v.nfce_contingencia '+
              ' and not v.nfce_contingencia_enviada '+
              ' and cx.id_caixa = %d and cx.id_empresa=%d';
    str_sql := format(str_sql, [id_caixa, recproj.iEmp]);

    if ExecutaConsultaSQL(qrVendasNFCeContingencia, str_sql) then
    begin
      frmConsVendaSAT := TfrmConsVendaSAT.Create(self);
      erro_nfce := not frmConsVendaSAT.EnviaNFCeContingencia(qrVendasNFCeContingencia,int_aux);
      frmConsVendaSAT.Free;

      if erro_nfce then
      begin
        if not application.MessageBox(pchar('Houve problemas ao enviar as NFCe''s  em contingência! '+
                                            'Gostaria de continuar com  o fechamento do caixa mesmo assim?'),
                                      'Atenção', MB_ICONQUESTION + MB_YESNO)=mrYes then   abort;
      end;
    end;

    qrVendasNFCeContingencia.Free;

    str_sql:= ' update caixa set id_situacao=1, valor_total=fn_saldo_caixa(id_caixa, id_empresa), '+
              ' data_fechamento=localtimestamp, hora_fechamento=localtime, ' +
              ' valor_informado_dinheiro=:valor_dinheiro, valor_informado_cartao=:valor_cartao, '+
              ' valor_informado_cheque=:valor_cheque, valor_informado_outros=:valor_outros, '+
              ' periodo_fechamento=:periodo, '+
              ' id_usuario_fechamento=:id_usuario_fechamento '+
              ' where id_caixa=:id_caixa and id_empresa=:id_empresa ';
    ExecutaComandoSQL(str_sql, VarArrayOf([edValorDinheiro.AsFloat, edValorCartao.AsFloat,
                      edValorCheque.AsFloat, edValorOutros.AsFloat, cbPeriodo.ItemIndex, id_usuario_caixa ,id_caixa, RecProj.iEmp]));
    titulo_rep:='FECHAMENTO DE CAIXA';

    // faz o envio de email se configurado
    if bFechamentoCaixaEmail and (sEmailFechamentoCaixa<>'') then
    begin
      //prepara o diretorio temporario para exportar o arquivo
      caminho_pdf := ExtractFilePath(Application.ExeName) + 'tmp';
      arquivo_pdf := format('%s\Caixa%s(cod-%d).pdf', [caminho_pdf, formatdatetime('dd-mm-yyyy', recproj.dCaixaDataAbertura ) ,RecProj.iIDCaixa] );
      if Not DirectoryExists(caminho_pdf) then ForceDirectories(caminho_pdf);

      // exporta o arquivo pdf
      frmCaixaStatus := TfrmCaixaStatus.Create(self);
      frmCaixaStatus.dtpDataInicial.Date := recproj.dCaixaDataAbertura;
      frmCaixaStatus.dtpDataFinal.Date := recproj.dCaixaDataAbertura;
      frmCaixaStatus.qrCaixa.Locate('id_caixa',id_caixa, [] );
      frmCaixaStatus.frxPDFExport1.FileName := arquivo_pdf;
      frmCaixaStatus.frxPDFExport1.DefaultPath := caminho_pdf ;
      frmCaixaStatus.frxPDFExport1.ShowDialog := False;
      frmCaixaStatus.frxPDFExport1.OverwritePrompt := False;
      frmCaixaStatus.repCaixa.PrepareReport;
      frmCaixaStatus.repCaixa.Export( frmCaixaStatus.frxPDFExport1);

      // faz o envio de email usando thread para nao travar o sistemas
      threadEmail := TEnvioEmailThread.Create('MFFood',  // nome Remetente
                                               sEmailFechamentoCaixa, // email de destino
                                               'Fechamento de caixa', // assunto
                                               RecProj.sEmp +
                                               ' - Fechamento de caixa (mensagem automática)',  // mensagem
                                               arquivo_pdf,
                                               true);

      frmCaixaStatus.Free;
    end;

  end;

  str_sql :='select ua.usu_002 as nome_usuario_abertura , uf.usu_002 as nome_usuario_fechamento '+
            ' from caixa c '+
            ' join usuarios ua on ua.usu_001=c.id_usuario '+
            ' left join usuarios uf on uf.usu_001=c.id_usuario_fechamento '+
            ' where c.id_caixa=' + inttostr(id_caixa);
  ExecutaConsultaSQL(qrAux1, str_sql);

  // Rafael Luiz 02/11/2017
  impressora_modo_pos := LerIntegerConfig('CXMODOIMPCAIXA',frmmenu.cdsCFG.FileName)=1;

  if impressora_modo_pos then
  begin
    str_impressao := '</zera>' +
                    '------------------------------------------' + sLineBreak +
                    AcertaTexto(titulo_rep, 'C', 42, ' ') + slinebreak +
                    '------------------------------------------' + sLineBreak +
                    'DATA/HORA ABERTURA: ' + formatdatetime('dd/mm/yyyy hh:mm', RecProj.dCaixaDataAbertura) + slinebreak +
                    'USUARIO ABERTURA:   ' + qrAux1.FieldByName('nome_usuario_abertura').AsString + slinebreak +
                    'USUARIO FECHAMENTO: ' + qrAux1.FieldByName('nome_usuario_fechamento').AsString + slinebreak +
                    'TERMINAL:           ' + NomeDoTerminal +slinebreak+
                    '------------------------------------------' + sLineBreak +
                    '           VALOR INFORMADO                ' + sLineBreak +
                    '------------------------------------------' + sLineBreak +
                    'DINHEIRO: ' + AcertaTexto(format('%.2f',[edValorDinheiro.AsCurrency]), 'D', 18, ' ') + slineBreak +
                    'CARTAO:   ' + AcertaTexto(format('%.2f',[edValorCartao.AsCurrency]), 'D', 18, ' ') + slineBreak +
                    'CHEQUE:   ' + AcertaTexto(format('%.2f',[edValorCheque.AsCurrency]), 'D', 18, ' ') + slineBreak +
                    'OUTROS:   ' + AcertaTexto(format('%.2f',[edValorOutros.AsCurrency]), 'D', 18, ' ') + slineBreak +
                    '------------------------------------------' + sLineBreak +
                    'OBSERVACOES                               ' + sLineBreak +
                    AcertaTexto(edObservacao.Text, 'E', 44, ' ') + slinebreak +
                    '------------------------------------------' + sLineBreak;

    if tmovimento <> 'A' then
    begin
      str_impressao:= str_impressao +
                    '     TOTALIZADOR - FORMA DE PAGAMENTO     ' + sLineBreak +
                    '------------------------------------------' + sLineBreak +
                    'FORMA           E/S T.VENDA          VALOR' + sLineBreak +
                    '--------------- --- ----------- ----------' + sLineBreak;

      frmCaixaStatus := TfrmCaixaStatus.Create(self);
      frmCaixaStatus.qrRelMovimentoFormaPag.Close;
      frmCaixaStatus.qrRelMovimentoFormaPag.ParamByName('id_caixa').AsInteger := id_caixa;
      frmCaixaStatus.qrRelMovimentoFormaPag.ParamByName('emp').AsInteger := RecProj.iEmp;
      frmCaixaStatus.qrRelMovimentoFormaPag.open;

      Total := 0.0;

      while not frmCaixaStatus.qrRelMovimentoFormaPag.eof do
      begin
        Total := Total + frmCaixaStatus.qrRelMovimentoFormaPag.FieldByName('total_forma').asfloat;

        str_impressao:= str_impressao +
             AcertaTexto(frmCaixaStatus.qrRelMovimentoFormaPag.FieldByName('desc_forma').asstring,'E',16, ' ') +
             AcertaTexto(frmCaixaStatus.qrRelMovimentoFormaPag.FieldByName('tipo_movimento').asstring,'C',3, ' ') +
             ' ' +
             AcertaTexto(frmCaixaStatus.qrRelMovimentoFormaPag.FieldByName('tipo_venda').asstring,'E',11, ' ') +
             AcertaTexto(format  ('%.2f',[frmCaixaStatus.qrRelMovimentoFormaPag.FieldByName('total_forma').asfloat]), 'D', 11, ' ') + slineBreak;

        frmCaixaStatus.qrRelMovimentoFormaPag.Next;
      end;

      str_impressao:= str_impressao +
                    '                              -----------' + sLineBreak +
                    'TOTAL:'+ AcertaTexto(format('%.2f',[Total]), 'D', 33, ' ') + slineBreak +
                    '------------------------------------------' + sLineBreak;

      frmCaixaStatus.Free;
    end;

    str_impressao := str_impressao +
                    'DATA: ' + formatdatetime('dd/mm/yyyy hh:mm', Now) + slinebreak +
                    '</corte_total>';

    if Frmmenu.ConfiguraImpressoraPOS('CAIXA') then
      Frmmenu.ACBrPosPrinter1.Imprimir(str_impressao);
  end
  else
  begin
    //imprime relatorio

    frmCaixaStatus := TfrmCaixaStatus.Create(self);
    frmCaixaStatus.qrRelMovimentoFormaPag.Close;
    frmCaixaStatus.qrRelMovimentoFormaPag.ParamByName('id_caixa').AsInteger := id_caixa;
    frmCaixaStatus.qrRelMovimentoFormaPag.ParamByName('emp').AsInteger := RecProj.iEmp;
    frmCaixaStatus.qrRelMovimentoFormaPag.open;

    repCaixaAberturaFechamento.FindObject('Header1').Visible := (tmovimento <> 'A');
    repCaixaAberturaFechamento.FindObject('Footer1').Visible := (tmovimento <> 'A');

    repCaixaAberturaFechamento.PrintOptions.Printer := sCamImpCaixa;
    repCaixaAberturaFechamento.Variables['sTituloRep'] := QuotedStr(titulo_rep);
    repCaixaAberturaFechamento.Variables['sUsuario'] := QuotedStr(qrAux1.FieldByName('nome_usuario_abertura').AsString);
    repCaixaAberturaFechamento.Variables['sUsuarioFechamento'] := QuotedStr(qrAux1.FieldByName('nome_usuario_fechamento').AsString);
    repCaixaAberturaFechamento.Variables['sDataHora'] := QuotedStr(formatdatetime('dd/mm/yyyy hh:mm',Date + Time));
    repCaixaAberturaFechamento.Variables['sObservacoes'] := QuotedStr(edObservacao.Text);
    repCaixaAberturaFechamento.Variables['sValorDinheiro'] := QuotedStr(FormatFloat('###,###,##0.00', edValorDinheiro.AsCurrency));
    repCaixaAberturaFechamento.Variables['sValorCheque'] := QuotedStr(FormatFloat('###,###,##0.00', edValorCheque.AsCurrency));
    repCaixaAberturaFechamento.Variables['sValorCartao'] := QuotedStr(FormatFloat('###,###,##0.00', edValorCartao.AsCurrency));
    repCaixaAberturaFechamento.Variables['sValorOutros'] := QuotedStr(FormatFloat('###,###,##0.00', edValorOutros.AsCurrency));
    repCaixaAberturaFechamento.Variables['sHoraabertura'] := QuotedStr(formatdatetime('hh:mm',RecProj.dCaixaHoraAbertura));
    repCaixaAberturaFechamento.Variables['sDataabertura'] := QuotedStr(formatdatetime('dd/mm/yyyy',RecProj.dCaixaDataAbertura));
    repCaixaAberturaFechamento.Variables['sTerminal'] := QuotedStr(NomeDoTerminal);
    repCaixaAberturaFechamento.PrepareReport;
    repCaixaAberturaFechamento.ShowReport;
    FreeAndNil(frmCaixaStatus);


  end;

  frmMenu.carregaCaixaUsuario;
  self.tag:=1;
  self.close;
  frmmenu.tmStatusTimer(nil);
end;

procedure TfrmCaixaAberturaFechamento.btEntradaMovimentoClick(Sender: TObject);
begin
  frmCaixaLancaMovimento := tfrmCaixaLancaMovimento.Create(Self, 'E');
  frmCaixaLancaMovimento.ShowModal;
  if frmCaixaLancaMovimento.tag=1 then
  begin
    cdsMovimentosForma.close;
    cdsMovimentosForma.open;
    CarregaValoresMovimento(true);
  end;
  frmCaixaLancaMovimento.free;
end;

procedure TfrmCaixaAberturaFechamento.btNumKey_0Click(Sender: TObject);
begin

  keybd_event(48, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(48, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmCaixaAberturaFechamento.btNumKey_1Click(Sender: TObject);
begin
  keybd_event(49, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(49, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmCaixaAberturaFechamento.btNumKey_2Click(Sender: TObject);
begin
  keybd_event(50, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(50, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmCaixaAberturaFechamento.btNumKey_3Click(Sender: TObject);
begin
  keybd_event(51, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(51, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmCaixaAberturaFechamento.btNumKey_4Click(Sender: TObject);
begin
  keybd_event(52, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(52, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmCaixaAberturaFechamento.btNumKey_5Click(Sender: TObject);
begin
  keybd_event(53, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(53, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmCaixaAberturaFechamento.btNumKey_6Click(Sender: TObject);
begin
  keybd_event(54, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(54, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmCaixaAberturaFechamento.btNumKey_7Click(Sender: TObject);
begin
  keybd_event(55, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(55, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmCaixaAberturaFechamento.btNumKey_8Click(Sender: TObject);
begin
  keybd_event(56, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(56, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmCaixaAberturaFechamento.btNumKey_9Click(Sender: TObject);
begin
  keybd_event(57, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(57, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmCaixaAberturaFechamento.btNumKey_DelClick(Sender: TObject);
begin
  keybd_event(vk_back, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(vk_back, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmCaixaAberturaFechamento.btNumKey_EnterClick(Sender: TObject);
begin
  keybd_event(vk_return, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(vk_return, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmCaixaAberturaFechamento.btNumKey_LimparClick(Sender: TObject);
begin
  if (ActiveControl is Tedit) or (ActiveControl is TJvValidateEdit) then
  begin
    if (not TEdit(ActiveControl).ReadOnly) and (TEdit(ActiveControl).Enabled) then
      TEdit(ActiveControl).Clear;
  end;
end;

procedure TfrmCaixaAberturaFechamento.btNumKey_VirgClick(Sender: TObject);
begin
  keybd_event(110, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(110, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmCaixaAberturaFechamento.btSaidaMovimentoClick(Sender: TObject);
begin
  frmCaixaLancaMovimento := tfrmCaixaLancaMovimento.Create(Self, 'S');
  frmCaixaLancaMovimento.ShowModal;
  if frmCaixaLancaMovimento.tag=1 then
  begin
    cdsMovimentosForma.close;
    cdsMovimentosForma.open;
    CarregaValoresMovimento(true);
  end;
  frmCaixaLancaMovimento.free;
end;

constructor TfrmCaixaAberturaFechamento.Create(sender : Tcomponent ; tipomovimento : string = 'A');
var str_aux, str_sql, msg, terminal : string;
    permite_fechamento_venda_aberta, permite_fechamento_outro_usuario,
    permite_fechamento_pag_antecipado, flag_pag_antecipado, busca_valores_fechamento : boolean;
    qr_aux : Tuniquery;
    lista_vendas : Tstringlist;
    hora, minuto, segundo, mili : word;
begin
  inherited Create(sender);

  if not frmMenu.ConfirmacaoSenha('b_acesso_abertura_caixa', id_usuario_caixa) then abort;

  qr_aux := Tuniquery.create(self);
  qr_aux.connection := frmmenu.conexao;
  str_aux := format(' select b_permite_fechamento_caixa_venda_aberta, b_permite_fechamento_caixa_outro_usuario, '+
                    ' b_permite_fechamento_caixa_venda_pag_antecipado, b_buscar_valores_fechamento_caixa '+
                    ' from empresas where emp_001=%d', [recproj.iemp]);
  ExecutaConsultaSQL(qr_aux,str_aux);

  permite_fechamento_venda_aberta := qr_aux.FieldByName('b_permite_fechamento_caixa_venda_aberta').AsBoolean;
  permite_fechamento_outro_usuario := qr_aux.FieldByName('b_permite_fechamento_caixa_outro_usuario').AsBoolean;
  permite_fechamento_pag_antecipado := qr_aux.FieldByName('b_permite_fechamento_caixa_venda_pag_antecipado').AsBoolean;
  busca_valores_fechamento := qr_aux.FieldByName('b_buscar_valores_fechamento_caixa').AsBoolean;

  BuscaCampo(nome_usuario_caixa, format('select usu_002 from usuarios where usu_001=%d',[id_usuario_caixa]),'', false);

  edUsuario.Text:=nome_usuario_caixa;
  frmMenu.carregaCaixaUsuario;
  tmovimento :=  UpperCase(tipomovimento);

  //Abertura
  if UpperCase(tipomovimento)='A' then
  begin
    lbTipoMovimentoCaixa.Caption := 'ABERTURA DE CAIXA';
    self.Caption:= 'ABERTURA DE CAIXA';
    edValorDinheiro.Enabled:=true;
    edValorCartao.Enabled:=false;
    edValorCheque.Enabled:=false;
    edValorOutros.Enabled:=false;
    edValorCartao.TabStop:=false;
    edValorCheque.TabStop:=false;
    edValorOutros.TabStop:=false;

    btEntradaMovimento.visible := false;
    btSaidaMovimento.visible := false;
    cxgrid1.Visible:=false;

    self.Width := self.Width - cxgrid1.Width - 5;

    //verifica se existe caixa aberto
    if RecProj.iIDCaixa > 0 then
    begin
      Application.MessageBox(pchar('O caixa já encontra-se aberto!'), 'Atenção', MB_ICONINFORMATION);
      abort;
    end
    else
    begin
      //verifica se não existe caixa aberto par ao usuario em outro terminal
      str_sql := format('select terminal from caixa where id_situacao=4 and id_empresa=%d and id_usuario=%d '
                        ,[recproj.iEmp, id_usuario_caixa ]);
      if BuscaCampo(terminal, str_sql, '', false) then
      begin
        Application.MessageBox(pchar(format('O usuário já possui um caixa aberto no terminal %s !',[terminal])), 'Atenção', MB_ICONINFORMATION);
        abort;
      end;
    end;
  end
  else //fechamento
  begin
    lbTipoMovimentoCaixa.Caption := 'FECHAMENTO DE CAIXA';
    self.Caption:= 'FECHAMENTO DE CAIXA';
    edValorDinheiro.Enabled:=true;
    // italo 13/09/2017
    edValorCartao.Enabled:=false;
    edValorCheque.Enabled:=false;
    edValorOutros.Enabled:=false;
    edValorCartao.TabStop:=false;
    edValorCheque.TabStop:=false;
    edValorOutros.TabStop:=false;

    //verifica se existe caixa aberto
    if RecProj.iIDCaixa=0 then
    begin
      Application.MessageBox(pchar('Não existe caixa aberto para o usuário '
                           + recproj.sUsuario+'!'), 'Atenção', MB_ICONINFORMATION);
      abort;
    end
    else
    begin
      if not permite_fechamento_outro_usuario then
      begin
        //verifica se o usuário informado é o mesmo do caixa selecionado
        str_sql := format(' select u.usu_002 from caixa c join usuarios u on u. usu_001=c.id_usuario '+
                          ' where c.id_situacao=4 and c.id_empresa=%d '+
                          ' and c.id_usuario=%d and c.id_caixa=%d '
                          ,[recproj.iEmp, id_usuario_caixa, RecProj.iIDCaixa ]);
        if not BuscaCampo(terminal, str_sql, '', false) then
        begin
          Application.MessageBox(pchar(format('Não é possível fechar o caixa, somente o usuário de abertura tem permissão para fechar!'+#13#10+
                                              'Usuário de abertura: %s',[recproj.sUsuarioCaixa])), 'Atenção', MB_ICONINFORMATION);
          abort;
        end;
      end;
    end;

    //verifica se existe venda em aberto para o caixa atual
    lista_vendas := tstringlist.Create;

    str_sql:=format(' select v.ven_001 as id_venda, u.usu_002 as usuario, m.mes_003 as nro_mesa, v.ven_009 as valor_venda, '+
                    ' cast(( case v.ven_024 when ''M''  then ''Mesa'' when ''B'' then ''Balcão'' when ''C'' then ''Comanda'' when ''D'' then ''Delivery'' else ''Outro'' end) as varchar(20)) as tipo_venda, '+
                    ' sum(coalesce(vpa.valor, 0.00)) as valor_antecipado ' +
                    ' from venda v '+
                    ' join  usuarios u on u.usu_001=v.usu_001_1'+
                    ' left join mesa m on m.emp_001 = v.emp_001 and m.mes_001 = v.ven_025 '+
                    ' left join venda_pag_antecipado vpa on vpa.id_venda=v.ven_001 and vpa.id_empresa=v.emp_001 and vpa.id_situacao=4 '+
                    ' where v.sit_001 not in (0,1,2,3)'+   // 0 DIGITAÇÃO / 1 ENCERRADO(A) / 2 CANCELADO(A) / 3 INATIVO(A)
                    ' and v.emp_001=%d '+
                    ' group by v.ven_001, u.usu_002 ,  m.mes_003, v.ven_009, v.ven_024',
                    [RecProj.iEmp]);
    ExecutaConsultaSQL(qr_aux,str_sql);

    flag_pag_antecipado := false;
    while not qr_aux.eof  do
    begin
      //verifica se existe algum pagamento antecipado
      if not flag_pag_antecipado then
        flag_pag_antecipado := qr_aux.FieldByName('valor_antecipado').AsFloat>0;

      //cria a listagem de vendas
      str_aux := format('Venda: %d | Resp.: %s | Tipo: %s | Valor: R$ %.2f ',
                       [qr_aux.FieldByName('id_venda').asinteger,
                        qr_aux.FieldByName('usuario').asstring,
                        qr_aux.FieldByName('tipo_venda').asstring,
                        //qr_aux.FieldByName('nro_mesa').asstring,
                        qr_aux.FieldByName('valor_venda').asfloat
                        //qr_aux.FieldByName('valor_antecipado').AsFloat
                         ]);
      lista_vendas.Add(str_aux);
      qr_aux.next;
    end;

    if permite_fechamento_pag_antecipado then flag_pag_antecipado := false;

    if ((not permite_fechamento_venda_aberta) or (flag_pag_antecipado)) and (qr_aux.RecordCount>0) then
    begin
      str_aux:= StringListToString(lista_vendas);
      msg:='Não é possivel fechar este caixa pois existem vendas em aberto ';
      if flag_pag_antecipado then msg := msg +'que já receberam pagamento (pagamento parcial)';
      msg := msg + ':'+#13#10;
      Application.MessageBox(pchar(msg + str_aux), 'Atenção', MB_ICONINFORMATION);
      abort;
    end;

    //consulta as formas de pagamento
    cdsMovimentosForma.close;
    qrMovimentosForma.Close;

    if busca_valores_fechamento then
      qrMovimentosForma.ParamByName('flag_mostrar_pagamentos').AsInteger := 1
    else
      qrMovimentosForma.ParamByName('flag_mostrar_pagamentos').AsInteger := 0;

    qrMovimentosForma.ParamByName('id_caixa').AsInteger := RecProj.iIDCaixa;
    qrMovimentosForma.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
    cdsMovimentosForma.Open;

    CarregaValoresMovimento(true);
  end;

  DateTimeToString(str_aux, 'dd/mm/yyyy hh:nn', Date + Time);
  edData.text := str_aux;

  DecodeTime(Time, hora, minuto, segundo, mili);
  if (hora>=6) and (hora<12) then
    cbPeriodo.ItemIndex:=0
  else if (hora>12) and (hora<19) then
    cbPeriodo.ItemIndex:=1
  else
    cbPeriodo.ItemIndex:=2;

  CarregaParametrosConfig;
  btAbrirGaveta.Visible := LerBooleanConfig('CKUTILIZAGAVETA',frmMenu.cdsCFG.FileName);
  bFechamentoCaixaEmail := LerBooleanConfig('CKFECHAMENTOCAIXAEMAIL',frmMenu.cdsCFG.FileName);
  sEmailFechamentoCaixa := LerStringConfig('EDEMAILFECHAMENTOCAIXA',frmMenu.cdsCFG.FileName);

  qr_aux.free;
end;

procedure TfrmCaixaAberturaFechamento.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);   // Evento duplo click
begin
  if ACellViewInfo.item.Index=1 then //indice 1  = valor
  begin
    frmCaixaDigitaValor := TfrmCaixaDigitaValor.Create(self, cdsMovimentosForma.FieldByName('desc_forma').AsString);
    frmCaixaDigitaValor.ShowModal;
    if frmCaixaDigitaValor.Tag=1 then
    begin
      cdsMovimentosForma.Edit;
      cdsMovimentosForma.FieldByName('total_forma').AsFloat := frmCaixaDigitaValor.valor_acumulado;
      cdsMovimentosForma.post;
    end;
    frmCaixaDigitaValor.Free;
  end;
end;

procedure TfrmCaixaAberturaFechamento.cxGrid1DBTableView1KeyPress(
  Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    if cdsMovimentosForma.State=dsedit then cdsMovimentosForma.Post;
  end;
end;

procedure TfrmCaixaAberturaFechamento.CarregaValoresMovimento(carrega_dinheiro : boolean );
var  valor_dinheiro, valor_cartao, valor_cheque, valor_outros: double;
     posicao : integer;
     qr_aux : Tuniquery;
     str_aux: string;
begin
  //guarda a posição do dataset
  posicao := cdsMovimentosForma.RecNo;
  cdsMovimentosForma.First;
  valor_dinheiro:= 0;
  valor_cartao:=0;
  valor_cheque:=0;
  valor_outros:=0;
  while not cdsMovimentosForma.eof do
  begin
    if cdsMovimentosForma.FieldByName('sfi_codigo').AsInteger in [1] then
      valor_dinheiro := valor_dinheiro + cdsMovimentosForma.FieldByName('total_forma').Asfloat
    else if cdsMovimentosForma.FieldByName('sfi_codigo').AsInteger in [2] then
      valor_cheque := valor_cheque + cdsMovimentosForma.FieldByName('total_forma').Asfloat
    else if cdsMovimentosForma.FieldByName('sfi_codigo').AsInteger in [3,4] then
      valor_cartao := valor_cartao + cdsMovimentosForma.FieldByName('total_forma').Asfloat
    else
      valor_outros := valor_outros + cdsMovimentosForma.FieldByName('total_forma').Asfloat;

    cdsMovimentosForma.Next;
  end;

  edValorCartao.value := valor_cartao;
  edValorCheque.value := valor_cheque;
  edValorOutros.value := valor_outros;
  if carrega_dinheiro then
    edValorDinheiro.value := valor_dinheiro;

  {  sfi_codigo
  1 Dinheiro
  2 Cheque
  3 Cartao de Crédito
  4 Cartao de Débito
  5 Crédito Loja
  6 Vale Alimentação
  7 Vale Refeição
  8 Vale Presente
  9 Vale Combustivel
  10 Outros }

  //volta à posição inicial
  cdsMovimentosForma.RecNo := posicao;
end;

procedure TfrmCaixaAberturaFechamento.cdsMovimentosFormaAfterPost(
  DataSet: TDataSet);
begin
  CarregaValoresMovimento(true);
end;

procedure TfrmCaixaAberturaFechamento.edValorCartaoClick(Sender: TObject);
begin
  edValorCartao.SelectAll;
end;

procedure TfrmCaixaAberturaFechamento.edValorChequeClick(Sender: TObject);
begin
  edValorCheque.SelectAll;
end;

procedure TfrmCaixaAberturaFechamento.edValorDinheiroClick(Sender: TObject);
begin
  edValorDinheiro.SelectAll;
end;

procedure TfrmCaixaAberturaFechamento.edValorOutrosClick(Sender: TObject);
begin
  edValorOutros.SelectAll;
end;

procedure TfrmCaixaAberturaFechamento.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmCaixaAberturaFechamento.FormShow(Sender: TObject);
begin
  edValorDinheiro.SetFocus;
end;

end.
