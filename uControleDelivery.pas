unit uControleDelivery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.StdCtrls, JvExControls, JvLabel, AdvGroupBox, Vcl.ExtCtrls,
  AdvPanel, Vcl.DBCtrls, dxGDIPlusClasses, AdvGlowButton, AdvPageControl,
  Vcl.ComCtrls, cxNavigator, MemDS, DBAccess, Uni, cxContainer, cxGroupBox,
  cxRadioGroup, Vcl.Menus, CPort, System.TypInfo, System.Actions, Vcl.ActnList,
  IdHTTP, uSocketPing, IdSSLOpenSSL, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmControleDelivery = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvPanel2: TAdvPanel;
    AdvGroupBox1: TAdvGroupBox;
    JvLabel1: TJvLabel;
    AdvPanel3: TAdvPanel;
    JvLabel2: TJvLabel;
    AdvGroupBox2: TAdvGroupBox;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    edFiltroTelefone: TEdit;
    cxgrFiltroClientes: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    AdvGroupBox3: TAdvGroupBox;
    JvLabel10: TJvLabel;
    JvLabel11: TJvLabel;
    JvLabel12: TJvLabel;
    JvLabel13: TJvLabel;
    JvLabel14: TJvLabel;
    grIdentificadorChamada: TAdvGroupBox;
    lbInfoChamada: TJvLabel;
    Image1: TImage;
    edFiltroNome: TEdit;
    qrBuscaCliente: TUniQuery;
    dsBuscaCliente: TDataSource;
    qrBuscaClientecli_001: TIntegerField;
    qrBuscaClienteemp_001: TIntegerField;
    qrBuscaClientenome: TWideStringField;
    qrBuscaClientetelefone1: TWideStringField;
    qrBuscaClientetelefone2: TWideStringField;
    qrBuscaClientecelular1: TWideStringField;
    qrBuscaClientecelular2: TWideStringField;
    qrBuscaClientecelular3: TWideStringField;
    qrBuscaClienteendereco: TWideStringField;
    qrBuscaClienteendereco_numero: TWideStringField;
    qrBuscaClientebairro: TWideStringField;
    qrBuscaClientecidade: TWideStringField;
    qrBuscaClientecep: TWideStringField;
    qrBuscaClientecredito_cliente: TFloatField;
    cxGridDBTableView1nome: TcxGridDBColumn;
    cxGridDBTableView1telefone1: TcxGridDBColumn;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    JvLabel15: TJvLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText12: TDBText;
    qrVendaDelivery: TUniQuery;
    dsVendaDelivery: TDataSource;
    qrVendaDeliveryid_venda: TIntegerField;
    qrVendaDeliverynome_cliente: TWideStringField;
    qrVendaDeliverydata_hora: TDateTimeField;
    qrVendaDeliveryminutos: TFloatField;
    qrVendaDeliverysit_001: TIntegerField;
    qrVendaDeliverydata_hora2: TDateTimeField;
    AdvGroupBox5: TAdvGroupBox;
    cxgrDeliveryEmProcesso: TcxGrid;
    cxgrDeliveryEmProcessoDBTableView1: TcxGridDBTableView;
    cxgrDeliveryEmProcessoDBTableView1id_venda: TcxGridDBColumn;
    cxgrDeliveryEmProcessoDBTableView1nome_cliente: TcxGridDBColumn;
    cxgrDeliveryEmProcessoDBTableView1data_hora: TcxGridDBColumn;
    cxgrDeliveryEmProcessoDBTableView1data_hora2: TcxGridDBColumn;
    cxdbcMinutosPedido: TcxGridDBColumn;
    cxgrDeliveryEmProcessoLevel1: TcxGridLevel;
    rgFiltroVendas: TcxRadioGroup;
    pmOpcoesDelivery: TPopupMenu;
    miConfirmardelivery: TMenuItem;
    miCancelarDelivery: TMenuItem;
    N1: TMenuItem;
    miAltararDelivery: TMenuItem;
    miDetalhesDelivery: TMenuItem;
    N2: TMenuItem;
    miFinalizarDelivery: TMenuItem;
    btMenuOpcoesDelivery: TAdvGlowButton;
    btCancelar: TAdvGlowButton;
    JvLabel8: TJvLabel;
    qrBuscaClientecomplemento: TWideStringField;
    DBText10: TDBText;
    rgTipoMonitoramento: TcxRadioGroup;
    Label1: TLabel;
    qrVendaDeliverynome_entregador: TWideStringField;
    cxgrDeliveryEmProcessoDBTableView1nome_entregador: TcxGridDBColumn;
    qrVendaDeliverydata_saida: TDateTimeField;
    qrVendaDeliveryminutos_saida: TFloatField;
    cxgrDeliveryEmProcessoDBTableView1sit_001: TcxGridDBColumn;
    cxgrDeliveryEmProcessoDBTableView1data_saida: TcxGridDBColumn;
    cxdbcMinutosSaida: TcxGridDBColumn;
    qrVendaDeliveryminutos_desc: TWideMemoField;
    qrVendaDeliveryminutos_saida_desc: TWideMemoField;
    cxgrDeliveryEmProcessoDBTableView1minutos: TcxGridDBColumn;
    cxgrDeliveryEmProcessoDBTableView1minutos_saida: TcxGridDBColumn;
    Shape1: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape2: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    qrVendaDeliveryretirada_balcao: TWideStringField;
    cxgrDeliveryEmProcessoDBTableView1retirada_balcao: TcxGridDBColumn;
    Label6: TLabel;
    Shape5: TShape;
    qrVendaDeliverynro_venda: TIntegerField;
    qrVendaDeliveryvalor_venda: TFloatField;
    cxgrDeliveryEmProcessoDBTableView1id_venda1: TcxGridDBColumn;
    cxgrDeliveryEmProcessoDBTableView1valor_venda: TcxGridDBColumn;
    qrBuscaClientestatus: TIntegerField;
    qrBuscaClienteobs_bloqueio: TWideStringField;
    ComPort1: TComPort;
    Reimprimircupom1: TMenuItem;
    JvLabel3: TJvLabel;
    edFiltrodelivery: TEdit;
    qrVendaDeliverytelefone1: TWideStringField;
    qrVendaDeliverytelefone2: TWideStringField;
    qrVendaDeliverycelular1: TWideStringField;
    qrVendaDeliverycelular2: TWideStringField;
    qrVendaDeliverycelular3: TWideStringField;
    qrVendaDeliverytroco: TFloatField;
    qrVendaDeliverydata_agendamento: TDateTimeField;
    qrVendaDeliveryhora_agendamento: TTimeField;
    cxgrDeliveryEmProcessoDBTableView1data_agendamento: TcxGridDBColumn;
    cxgrDeliveryEmProcessoDBTableView1hora_agendamento: TcxGridDBColumn;
    qrVendaDeliveryobservacao: TWideMemoField;
    cxgrDeliveryEmProcessoDBTableView1observacao: TcxGridDBColumn;
    qrVendaDeliverycep_003: TWideStringField;
    cxgrDeliveryEmProcessoDBTableView1cep_003: TcxGridDBColumn;
    btConfirmarsaida: TAdvGlowButton;
    btAlterar: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    btReimprimir: TAdvGlowButton;
    btFinalizar: TAdvGlowButton;
    ActionList1: TActionList;
    acReimprimir: TAction;
    acAlterarpedido: TAction;
    acVizualizarPedido: TAction;
    acCancelarpedido: TAction;
    acFinalizarPedido: TAction;
    acConfirmarSaida: TAction;
    btOrcamento: TAdvGlowButton;
    btSair: TAdvGlowButton;
    btAtualizar: TAdvGlowButton;
    Timer1: TTimer;
    btNovoCliente: TAdvGlowButton;
    btEditarCliente: TAdvGlowButton;
    btConsultarFrete: TAdvGlowButton;
    qrEmpresa: TUniQuery;
    tmrIFood: TTimer;
    qrVendaDeliveryvendas_pelo_ifood: TBooleanField;
    qrVendaDeliverycorrelation_id_ifood: TWideStringField;
    Memo1: TMemo;
    btConsultarIFood: TAdvGlowButton;
    qrVendaDeliveryemail: TWideStringField;
    Action1: TAction;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edFiltroTelefoneKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscaCLiente(tipo, filtro :string);
    procedure edFiltroNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btNovoClienteClick(Sender: TObject);
    procedure btEditarClienteClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rgFiltroVendasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btMenuOpcoesDeliveryClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure miAltararDeliveryClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure CriaVendaDelivery(id_cliente : integer = 0);
    procedure miCancelarDeliveryClick(Sender: TObject);
    constructor Create(sender :Tcomponent);
    procedure miConfirmardeliveryClick(Sender: TObject);
    procedure rgTipoMonitoramentoClick(Sender: TObject);
    procedure qrVendaDeliveryAfterRefresh(DataSet: TDataSet);
    procedure qrVendaDeliveryAfterOpen(DataSet: TDataSet);
    procedure miFinalizarDeliveryClick(Sender: TObject);
    procedure miDetalhesDeliveryClick(Sender: TObject);
    procedure cxgrDeliveryEmProcessoDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxgrDeliveryEmProcessoDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure ComPort1RxChar(Sender: TObject; Count: Integer);
    procedure Reimprimircupom1Click(Sender: TObject);
    procedure edFiltrodeliveryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btConfirmarsaidaClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btReimprimirClick(Sender: TObject);
    procedure btFinalizarClick(Sender: TObject);
    procedure acReimprimirExecute(Sender: TObject);
    procedure acAlterarpedidoExecute(Sender: TObject);
    procedure acVizualizarPedidoExecute(Sender: TObject);
    procedure acCancelarpedidoExecute(Sender: TObject);
    procedure acConfirmarSaidaExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure acFinalizarPedidoExecute(Sender: TObject);
    procedure btConsultarFreteClick(Sender: TObject);
    procedure btConsultarIFoodClick(Sender: TObject);
    function Conectado: boolean;
    procedure GerarToken;
    procedure Dispatch;
    procedure Delivery;
    procedure ConsultarPedidos;
    procedure tmrIFoodTimer(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
    bIgnoraDDDIDchamada,b_exige_envio_email : boolean;
    telefone_itentificado : string ;
    bUtilizaIDChamada, bTelefoneIdentificado : boolean;
    IdSSLIOHandlerSocketOpenSSL1: tIdSSLIOHandlerSocketOpenSSL;
    bUtilizaIFood: Boolean;
    bEnviouEvento: Boolean;
  public
    { Public declarations }
    sTokenIFood: string;
  end;

var
  frmControleDelivery: TfrmControleDelivery;

implementation

{$R *.dfm}

uses uMenu, uDetalheCliente, Funcao_DB, uFuncoes,
  uControleDeliverySelecaoEntregador, uBuscaRegistro, uControleDeliveryFinaliza,
  uControleDeliveryDetalheVenda, uControleDeliveryFechamento, uControleIFOOD, uConsultaIFood,
  uReimprimirCancelarCupom;

procedure TfrmControleDelivery.ComPort1RxChar(Sender: TObject; Count: Integer);
var Str_com : string;
begin
  ComPort1.ReadStr(Str_com, Count);
  Str_com := trim(Str_com);
  if bIgnoraDDDIDchamada then
    telefone_itentificado := copy(Str_com, 3, pos('E',Str_com)-3)
  else
    telefone_itentificado := copy(Str_com, 1, pos('E',Str_com)-1);

    if trim(telefone_itentificado)<>'' then
    begin
      BuscaCLiente('T', telefone_itentificado);
      bTelefoneIdentificado := true;
    end
    else
    begin
      telefone_itentificado :='NÚMERO PRIVADO';
      bTelefoneIdentificado := false;
    end;
        
  lbInfoChamada.Caption := 'CHAMADA IDENTIFICADA' + sLineBreak + telefone_itentificado ;
  
end;

constructor TfrmControleDelivery.Create(sender : Tcomponent);
var baud, sDataBits, sStopBits, parity, flowControl, porta: string;
  databits : TdataBits;
  stopbits : TStopBits;
  acesso : boolean;

begin
  inherited Create(sender);

  buscacampo( acesso, 'select b_acesso_venda_delivery from usuarios where usu_001=' + inttostr(recproj.iUsuario), '', false);
  frmMenu.VerificaPermissaoAcesso(acesso);
  bUtilizaIDChamada := LerBooleanConfig('CKUTILIZAIDCHAMADA',frmmenu.cdsCFG.FileName) ;

  if  RecProj.iIDCaixa = 0 then
  begin
    Application.MessageBox(pchar('Não existe caixa aberto para o usuário '
                           + recproj.sUsuario+'!'), 'Atenção', MB_ICONINFORMATION);
    abort;
  end;


  if bUtilizaIDChamada then
  begin
    try
      grIdentificadorChamada.Visible:=true;
      baud :=  'br' + LerStringConfig( 'CBBAUDIDCHAMADA',frmmenu.cdsCFG.FileName);
      sDataBits := LerStringConfig( 'CBDATABIDCHAMADA',frmmenu.cdsCFG.FileName);
      sStopBits := LerStringConfig( 'CBSTOPIDCHAMADA',frmmenu.cdsCFG.FileName);
      parity := 'pr' + LerStringConfig( 'CBPARIDADEIDCHAMADA',frmmenu.cdsCFG.FileName);
      flowControl := 'fc' + LerStringConfig( 'CBFLOWCONTROLIDCHAMADA',frmmenu.cdsCFG.FileName);
      porta := LerStringConfig( 'EDPORTAIDCHAMADA',frmmenu.cdsCFG.FileName);
      bIgnoraDDDIDchamada :=  LerBooleanConfig('CKIGNORADDDIDCHAMADA',frmmenu.cdsCFG.FileName);

      if sDataBits='5' then
        databits := dbFive
      else if sDataBits='6' then
        databits := dbSix
      else if sDataBits='7' then
        databits := dbSeven
      else
        databits := dbEight;

      if sStopBits='2' then
        stopbits := sbTwoStopBits
      else if sStopBits='1.5' then
        stopbits := sbOne5StopBits
      else
        stopbits := sbOneStopBit;

      ComPort1.BaudRate := TBaudRate(GetEnumValue(TypeInfo(TBaudRate),baud ) );
      ComPort1.DataBits := databits ;
      ComPort1.StopBits := stopbits;
      ComPort1.Parity.Bits := TParityBits(GetEnumValue(TypeInfo(TParityBits), parity )) ;
      ComPort1.FlowControl.FlowControl := TFlowControl(GetEnumValue(TypeInfo(TFlowControl), flowControl )) ;
      ComPort1.Port := porta;
      ComPort1.Open;

    except
      on E: Exception do
      begin                           ;
        Application.MessageBox(PWideChar(format(
             'Erro ao iniciar o identificador de chamada! Detalhes:%s%s',
             [slineBreak,E.Message ])),'Atenção', MB_ICONWarning);
      end;
    end;

  end
  else
  begin
    grIdentificadorChamada.Visible:=false;
  end;
    rgFiltroVendasClick(nil);

end;

procedure TfrmControleDelivery.Timer1Timer(Sender: TObject);
begin
  btAtualizar.Click;
end;

procedure TfrmControleDelivery.tmrIFoodTimer(Sender: TObject);
begin
  ConsultarPedidos;
end;

procedure TfrmControleDelivery.BuscaCLiente(tipo, filtro :string);
var i_where : Integer;
    msg, campo_busca :string;
begin
  qrBuscaCliente.Close;
  i_where := qrBuscaCliente.SQL.Count-2;
  if UpperCase(tipo)='T' then //Telefone
  begin
    qrBuscaCliente.SQL[i_where]:= ' and  ('+
        ' upper(replace(replace(replace(replace(cli_012, ''-'', ''''), '' '', ''''), ''('', ''''), '')'', '''')) like upper(:filtro)' +
        ' OR upper(replace(replace(replace(replace(cli_013, ''-'', ''''), '' '', ''''), ''('', ''''), '')'', '''')) like upper(:filtro) '+
        ' OR upper(replace(replace(replace(replace(cli_014, ''-'', ''''), '' '', ''''), ''('', ''''), '')'', '''')) like upper(:filtro) '+
        ' OR upper(replace(replace(replace(replace(celular1, ''-'', ''''), '' '', ''''), ''('', ''''), '')'', '''')) like upper(:filtro) '+
        ' OR upper(replace(replace(replace(replace(celular2, ''-'', ''''), '' '', ''''), ''('', ''''), '')'', '''')) like upper(:filtro) '+
        ' ) ';
    campo_busca := 'Telefone';
  end
  else //Nome
  begin
    qrBuscaCliente.SQL[i_where]:= ' and upper(cli_002) like upper(:filtro) ' ;
    campo_busca := 'Cliente';
  end;
  qrBuscaCliente.ParamByName('filtro').AsString := '%'+filtro+'%';
  qrBuscaCliente.open;
  if qrBuscaCliente.RecordCount>0 then
    cxgrFiltroClientes.SetFocus
  else
  begin
    msg := format('%s não encontrado, gostaria de cadastrar?',[campo_busca]);
    if Application.MessageBox(pchar(msg), 'Atenção', MB_ICONQUESTION + MB_YESNO)=mrYes then
    begin
      btNovoCliente.Click;
    end;
  end;
end;


procedure TfrmControleDelivery.cxgrDeliveryEmProcessoDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  miDetalhesDeliveryClick(self);
end;

procedure TfrmControleDelivery.cxgrDeliveryEmProcessoDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('retirada_balcao');

  if ARecord.Values[AColumn.Index]<>'' then
  begin
    AStyle := frmMenu.cxFundoAzul;
  end
  else
  begin
    if rgTipoMonitoramento.ItemIndex = 0 then
      AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('minutos')
    else
      AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('minutos_saida');

    if ARecord.Values[AColumn.Index]>=45  then
      AStyle := frmMenu.cxFundoVermelho
    else if (ARecord.Values[AColumn.Index]>=30) and (ARecord.Values[AColumn.Index]<45) then
      AStyle := frmMenu.cxFundoAmarelo
    else if (ARecord.Values[AColumn.Index]>=15) and (ARecord.Values[AColumn.Index]<30) then
      AStyle := frmMenu.cxFundoVerde
    else
      AStyle := frmMenu.cxZebra2;
  end;
end;

procedure TfrmControleDelivery.cxGridDBTableView1DblClick(Sender: TObject);
begin
  CriaVendaDelivery;
end;


procedure TfrmControleDelivery.miCancelarDeliveryClick(Sender: TObject);
var id_usuario_cancelamento : integer;
begin
  if qrVendaDelivery.Active then
  begin
    if qrVendaDelivery.RecordCount>0 then
    begin
      if application.MessageBox('Deseja cancelar esta venda?', 'Atenção', MB_ICONQUESTION + mb_yesno)=mryes then
      begin
        if frmMenu.ConfirmacaoSenha('b_cancelamento_delivery', id_usuario_cancelamento) then
          CancelaVenda(qrVendaDelivery.FieldByName('id_venda').AsInteger, id_usuario_cancelamento, '');
        qrVendaDelivery.Refresh;
      end;
    end;
  end;
end;

procedure TfrmControleDelivery.miConfirmardeliveryClick(Sender: TObject);
var
str_sql,nome_fantasia,assunto,mensagem:string;
qraux1:tuniquery;
anexos : Tstringlist;

begin
  if qrVendaDelivery.Active then
  begin
    if qrVendaDelivery.RecordCount>0 then
    begin
      if qrVendaDelivery.FieldByName('retirada_balcao').AsString='' then
      begin
        frmControleDeliverySelecaoEntregador := TfrmControleDeliverySelecaoEntregador.Create(self, qrVendaDelivery.FieldByName('id_venda').AsInteger);
        frmControleDeliverySelecaoEntregador.ShowModal;
        FreeAndNil(frmControleDeliverySelecaoEntregador);

        if (bUtilizaIFood) and (qrVendaDeliveryvendas_pelo_ifood.AsBoolean) then
        begin
          bEnviouEvento:= False;

          while not bEnviouEvento do
          begin
            GerarToken; //Gerar o token de acesso IFood
            Dispatch; //Informa o IFood que o pedido saiu para entrega
          end;
        end;

        if b_exige_envio_email then
        begin
          if qrVendaDelivery.FieldByName('email').AsString <>'' then
          begin
            str_sql:='select emp_003,emp_014 from empresas where emp_001=:emp';
            qraux1:=tuniquery.Create(self);
            qraux1.Connection:=frmMenu.conexao;
            qrAux1.Close;
            qrAux1.SQL.Clear;
            qrAux1.SQL.Add(str_sql);
            qraux1.ParamByName('emp').AsInteger:=RecProj.iEmp;
            qrAux1.Open;
            nome_fantasia:=qraux1.FieldByName('emp_003').AsString;
            assunto:='O SEU PEDIDO Nº '+qrVendaDelivery.FieldByName('nro_venda').AsString +' JÁ SAIU PARA ENTREGA ';
            mensagem:='LOGO   MAIS SEU PEDIDO ESTARÁ EM SUAS MÃOS.'+sLINEbREAK+
            'VALOR DO PEDIDO:'+'R$ ' + FormatFloat('###,##0.00', qrVendaDelivery.FieldByName('valor_venda').AsFloat)+sLINEbREAK+sLINEbREAK+sLINEbREAK+ nome_fantasia+Slinebreak+'E-mail:'+qraux1.FieldByName('emp_014').AsString+SlineBreak+Slinebreak+'Sistema desenvolvido por RP Sistemas www.sistemalechef.com.br';
            anexos := TStringList.Create;
            EnviaEmailSSL(nome_fantasia, trim(qrvendadelivery.FieldByName('email').AsString),assunto , mensagem,anexos,true);
            qraux1.Close;
          end;
        end;
        qrVendaDelivery.Refresh;
      end
      else
      begin
        Application.MessageBox('Esta venda foi marcada para retirada no balcão!', 'Atenção', MB_ICONINFORMATION);
      end;
    end;
  end;
end;

procedure TfrmControleDelivery.miDetalhesDeliveryClick(Sender: TObject);
begin
  if qrVendaDelivery.RecordCount>0 then
  begin
    frmControleDeliveryDetalheVenda := tfrmControleDeliveryDetalheVenda.Create(self,qrVendaDelivery.FieldByName('id_venda').AsInteger,0,'D', true);
    frmControleDeliveryDetalheVenda.btEditar.Click;
    frmControleDeliveryDetalheVenda.ShowModal;
    FreeAndNil(frmControleDeliveryDetalheVenda);
    qrVendaDelivery.refresh;
  end;
end;

procedure TfrmControleDelivery.miFinalizarDeliveryClick(Sender: TObject);
var
str_sql,nome_fantasia,assunto,mensagem:string;
qraux1:tuniquery;
anexos : Tstringlist;

begin
  if qrVendaDelivery.RecordCount>0 then
  begin
    frmControleDeliveryFinaliza :=  TfrmControleDeliveryFinaliza.Create(self,qrVendaDelivery.FieldByName('id_venda').AsInteger );
    frmControleDeliveryFinaliza.showmodal;
    FreeAndNil(frmControleDeliveryFinaliza);

    if (bUtilizaIFood) and (qrVendaDeliveryvendas_pelo_ifood.AsBoolean) then
    begin
      bEnviouEvento:= False;

      while not bEnviouEvento do
      begin
        GerarToken; //Gerar o token de acesso IFood
        Delivery; //Informa o IFood que o pedido foi entregue
      end;
    end;

     // envia e-mail para o cliente, avisando sobre chegada      Rafael 08/06/2018   2.41
    if b_exige_envio_email then
    begin
      if qrVendaDelivery.FieldByName('email').AsString <>'' then
      begin
        str_sql:='select emp_003,emp_014 from empresas where emp_001=:emp';
        qraux1:=tuniquery.Create(self);
        qraux1.Connection:=frmMenu.conexao;
        qrAux1.Close;
        qrAux1.SQL.Clear;
        qrAux1.SQL.Add(str_sql);
        qraux1.ParamByName('emp').AsInteger:=RecProj.iEmp;
        qrAux1.Open;
        nome_fantasia:=qraux1.FieldByName('emp_003').AsString;
        assunto:='O SEU PEDIDO Nº '+qrVendaDelivery.FieldByName('nro_venda').AsString +' FOI ENTREGUE ';
        mensagem:=qrvendadelivery.FieldByName('nome_cliente').AsString+'  FICAMOS FELIZES EM SABER QUE VOCÊ JÁ RECEBEU SEU PEDIDO. O PEDIDO CHEGOU COMO GOSTARIA? CASO NÃO, POR FAVOR CONTATE-NOS POR TELFONE OU E-MAIL, SUA OPINIÃO É MUITO IMPORTANTE PARA NÓS!'+sLINEbREAK+
        SLINEbREAK+sLINEbREAK+ nome_fantasia+Slinebreak+'E-mail:'+qraux1.FieldByName('emp_014').AsString+SlineBreak+Slinebreak+'Sistema desenvolvido por RP Sistemas www.sistemalechef.com.br';
        anexos := TStringList.Create;
        EnviaEmailSSL(nome_fantasia, trim(qrvendadelivery.FieldByName('email').AsString),assunto , mensagem,anexos,true);
        qraux1.Close;
      end;
    end;
    qrVendaDelivery.Refresh;
  end;
end;

procedure TfrmControleDelivery.qrVendaDeliveryAfterOpen(DataSet: TDataSet);
begin
  qrVendaDeliveryAfterRefresh(DataSet);
end;

procedure TfrmControleDelivery.qrVendaDeliveryAfterRefresh(DataSet: TDataSet);
var str_sql : string;
    qr_aux : TUniQuery;
begin
  qr_aux :=  TUniQuery.Create(self);
  qr_aux.Connection:=frmMenu.conexao;
  //vendas em processo
  str_sql:=format('select count(1) from venda v  where ven_024=''D'' and v.emp_001=%d and sit_001=8',  [recproj.iEmp] );
  ExecutaConsultaSQL(qr_aux, str_sql);
  rgFiltroVendas.Properties.Items[0].Caption := format('EM PROCESSO (%d)', [qr_aux.Fields[0].AsInteger]);


  //vendas em transito
  str_sql:=format('select count(1) from venda v  where ven_024=''D'' and v.emp_001=%d and sit_001=6',  [recproj.iEmp] );
  ExecutaConsultaSQL(qr_aux, str_sql);
  rgFiltroVendas.Properties.Items[1].Caption := format('EM TRÂNSITO (%d)', [qr_aux.Fields[0].AsInteger]);

  //vendas em agendamento
  str_sql:=format('select count(1) from venda v  where ven_024=''D'' and v.emp_001=%d and sit_001=19',  [recproj.iEmp] );
  ExecutaConsultaSQL(qr_aux, str_sql);
  rgFiltroVendas.Properties.Items[2].Caption := format('EM AGENDAMENTO (%d)', [qr_aux.Fields[0].AsInteger]);
end;

procedure TfrmControleDelivery.Reimprimircupom1Click(Sender: TObject);
begin
  if qrVendaDelivery.RecordCount>0 then
  begin
    frmControleDeliveryFechamento := TfrmControleDeliveryFechamento.Create(self,qrVendaDelivery.FieldByName('id_venda').AsInteger,false);
    frmControleDeliveryFechamento.ImprimirRelatorio(false, 1);
    FreeAndNil(frmControleDeliveryFechamento);
    qrVendaDelivery.refresh;
  end;
end;

procedure  TfrmControleDelivery.CriaVendaDelivery(id_cliente : integer = 0);
var str_sql, str_aux, nome, observacao : string;
  qr_aux : TUniQuery;
  abrir, bloqueado : boolean;
begin
  if id_cliente=0 then
    if qrBuscaCliente.RecordCount>0 then
      id_cliente := qrBuscaCliente.FieldByName('cli_001').AsInteger;

  if id_cliente>0 then
  begin
    qr_aux := TUniQuery.Create(self);
    qr_aux.Connection := frmMenu.conexao;
    str_sql := format('select sit_001=5 as bloq, cli_002 as nome, obs_bloqueio from clientes '+
                      ' where cli_001=%d and emp_001=%d',[id_cliente, recproj.iEmp]);
    ExecutaConsultaSQL(qr_aux, str_sql);
    bloqueado := qr_aux.FieldByName('bloq').AsBoolean;
    observacao := qr_aux.FieldByName('obs_bloqueio').asstring ;
    nome := qr_aux.FieldByName('nome').asstring ;

    // Verifica se o cliente está bloqueado
    if bloqueado then
    begin
      str_aux := 'Não é possível abrir a venda para este cliente pois o mesmo encontra-se BLOQUEADO! '+ //#13#10+
                 'Motivo do bloqueio:'+#13#10+
                  str_aux;
      Application.MessageBox(pchar(str_aux), 'Atenção', MB_ICONINFORMATION );
      exit;
    end;

    //verifica se existe delivery em aberto para o cliente e alerta antes de fazer a venda
    str_sql := format(' select sit_001 from venda where cli_001 = %d and sit_001 in (4,6,8,19) ' +
                      ' and VEN_024=''D'' and emp_001=%d',[id_cliente, RecProj.iEmp ]);
    ExecutaConsultaSQL(qr_aux, str_sql);
    abrir:= not ExecutaConsultaSQL(qr_aux, str_sql);
    if not abrir then
    begin
      case qr_aux.Fields[0].asinteger of
        6 :  str_aux:=  'em trânsito';
        8 :  str_aux:=  'em processo';
        19:  str_aux:=  'agendada';
        else str_aux:=  'ativa';
      end;
      str_aux := Format('Já existe uma venda %s para o cliente %s, gostaria de abrir uma nova venda mesmo assim?',
                        [str_aux, nome] );
      abrir:=
        Application.MessageBox(pchar(str_aux), 'Atenção', MB_ICONQUESTION + MB_YESNO) = mrYes;
    end;

    if abrir then
    begin
      frmControleDeliveryDetalheVenda := tfrmControleDeliveryDetalheVenda.Create(self,0,id_cliente,'D');
      frmControleDeliveryDetalheVenda.ShowModal;
      FreeAndNil(frmControleDeliveryDetalheVenda);
      qrVendaDelivery.refresh;
      edFiltroTelefone.Clear;
      edFiltroNome.Clear;
      qrBuscaCliente.Close;
      if edFiltroTelefone.CanFocus then edFiltroTelefone.setfocus;
    end;
  end;

end;

procedure TfrmControleDelivery.cxGridDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then CriaVendaDelivery;
end;

procedure TfrmControleDelivery.rgFiltroVendasClick(Sender: TObject);
begin
  case rgFiltroVendas.ItemIndex of
  0 :  //em processo
    begin
      qrVendaDelivery.Filter :=  'sit_001=8';  // situacao 8 é em processo
      miConfirmardelivery.Visible:=true;
      miCancelarDelivery.Visible :=true;
      miAltararDelivery.Visible  :=true;
      miDetalhesDelivery.Visible :=true;
      miFinalizarDelivery.Visible:=true;
      cxgrDeliveryEmProcessoDBTableView1data_agendamento.Visible:=false;
      cxgrDeliveryEmProcessoDBTableView1hora_agendamento.Visible:=false;
      cxgrDeliveryEmProcessoDBTableView1observacao.Visible:=false;
      cxgrDeliveryEmProcessoDBTableView1data_hora.Visible:=true;
      cxgrDeliveryEmProcessoDBTableView1data_hora2.Visible:=true;
      cxgrDeliveryEmProcessoDBTableView1data_saida.Visible:=false;        // Hora  da saida
      cxgrDeliveryEmProcessoDBTableView1minutos_saida.Visible:=false;    // minutos Saida
      cxdbcMinutosSaida.Visible:=false;    // Minuto da saida
      cxgrDeliveryEmProcessoDBTableView1nome_entregador.Visible:=false;  // Motoboy
      cxgrDeliveryEmProcessoDBTableView1retirada_balcao.Visible:=true;   // Retirada Balcao
      cxgrDeliveryEmProcessoDBTableView1observacao.Visible:=false;        // Observação
      cxgrDeliveryEmProcessoDBTableView1cep_003.Visible:=true;            // Bairro
      cxgrDeliveryEmProcessoDBTableView1valor_venda.Visible:=false        // Valor da venda
    end;
  1 :  //em transito
    begin
      qrVendaDelivery.Filter :=  'sit_001=6'; // Situação 6 é situação em transito
      miConfirmardelivery.Visible:=false;
      miCancelarDelivery.Visible :=true;
      miAltararDelivery.Visible  :=false;
      miDetalhesDelivery.Visible :=true;
      miFinalizarDelivery.Visible:=true;
      cxdbcMinutosPedido.Visible:=false;
      cxgrDeliveryEmProcessoDBTableView1data_agendamento.Visible:=false;
      cxgrDeliveryEmProcessoDBTableView1hora_agendamento.Visible:=false;
      cxgrDeliveryEmProcessoDBTableView1observacao.Visible:=false;
      cxgrDeliveryEmProcessoDBTableView1data_hora.Visible:=true;   // data
      cxgrDeliveryEmProcessoDBTableView1data_hora2.Visible:=true;   // Horario do pedido
      cxgrDeliveryEmProcessoDBTableView1data_saida.Visible:=true;
      cxgrDeliveryEmProcessoDBTableView1minutos_saida.Visible:=false;   // Horario Saida
      cxdbcMinutosSaida.Visible:=false;    // Minuto da saida
      cxgrDeliveryEmProcessoDBTableView1nome_entregador.Visible:=true;  // Motoboy
      cxgrDeliveryEmProcessoDBTableView1retirada_balcao.Visible:=false;   // Retirada Balcao
      cxgrDeliveryEmProcessoDBTableView1observacao.Visible:=false;        // Observação
      cxgrDeliveryEmProcessoDBTableView1cep_003.Visible:=false;            // Bairro
      cxgrDeliveryEmProcessoDBTableView1valor_venda.Visible:=false

    end;
  2 :  //em agendamento
    begin
      qrVendaDelivery.Filter :=  'sit_001=19';
      miConfirmardelivery.Visible:=true;
      miCancelarDelivery.Visible :=true;
      miAltararDelivery.Visible  :=true;
      miDetalhesDelivery.Visible :=true;
      miFinalizarDelivery.Visible:=true;
      cxgrDeliveryEmProcessoDBTableView1data_agendamento.Visible:=true;
      cxgrDeliveryEmProcessoDBTableView1hora_agendamento.Visible:=true;
      cxgrDeliveryEmProcessoDBTableView1observacao.Visible:=false;
      cxgrDeliveryEmProcessoDBTableView1data_hora.Visible:=false;   // data
      cxgrDeliveryEmProcessoDBTableView1data_hora2.Visible:=false;  // Horario do pedido
      cxgrDeliveryEmProcessoDBTableView1data_saida.Visible:=false;
      cxgrDeliveryEmProcessoDBTableView1minutos_saida.Visible:=false;   // Horario Saida
      cxdbcMinutosSaida.Visible:=false;    // Minuto da saida
      cxgrDeliveryEmProcessoDBTableView1nome_entregador.Visible:=false;  // Motoboy
      cxgrDeliveryEmProcessoDBTableView1retirada_balcao.Visible:=true;   // Retirada Balcao
      cxgrDeliveryEmProcessoDBTableView1observacao.Visible:=true;        // Observação
      cxgrDeliveryEmProcessoDBTableView1cep_003.Visible:=false;            // Bairro
      cxgrDeliveryEmProcessoDBTableView1valor_venda.Visible:=false
    end;
  end;
  qrVendaDelivery.Filtered :=true;
end;

procedure TfrmControleDelivery.rgTipoMonitoramentoClick(Sender: TObject);
begin
  if rgTipoMonitoramento.ItemIndex = 0 then
  begin
    cxdbcMinutosPedido.Visible:=true;
    cxdbcMinutosSaida.Visible:=false;
  end
  else
  begin
    cxdbcMinutosPedido.Visible:=false;
    cxdbcMinutosSaida.Visible:=true;
  end;
  qrVendaDelivery.Refresh;
end;


procedure TfrmControleDelivery.btMenuOpcoesDeliveryClick(Sender: TObject);
var lPoint : tpoint;
begin
  lPoint := btMenuOpcoesDelivery.ClientToScreen(Point(0,0));
  pmOpcoesDelivery.Popup(lPoint.X, lPoint.Y+btMenuOpcoesDelivery.Height);
end;
procedure TfrmControleDelivery.btNovoClienteClick(Sender: TObject);
begin
  frmDetalheCliente := TfrmDetalheCliente.Create(self);
  if bUtilizaIDChamada and bTelefoneIdentificado then
  begin
    if frmDetalheCliente.qrDetalhe.State in [dsInsert, dsEdit] then
    begin
      frmDetalheCliente.qrDetalhe.FieldByName('cli_012').AsString := telefone_itentificado;
    end;
  end
  else if (edFiltroTelefone.Text<>'') or (edFiltroNome.Text<>'') then
  begin
    if frmDetalheCliente.qrDetalhe.State in [dsInsert, dsEdit] then
    begin
      frmDetalheCliente.qrDetalhe.FieldByName('cli_012').AsString := edFiltroTelefone.Text;
      frmDetalheCliente.qrDetalhe.FieldByName('cli_002').AsString := edFiltroNome.Text;
    end;
  end;
  frmDetalheCliente.ShowModal;
  // se cadastrou o cliente, já pega o cliente e lança numa nova venda
  if frmDetalheCliente.qrDetalhe.FieldByName('cli_001').AsInteger>0 then
  begin
    CriaVendaDelivery(frmDetalheCliente.qrDetalhe.FieldByName('cli_001').AsInteger);
  end
  else
  begin
    if qrBuscaCliente.Active then
      qrBuscaCliente.Refresh;
  end;
  FreeAndNil(frmDetalheCliente);
end;

procedure TfrmControleDelivery.btReimprimirClick(Sender: TObject);
begin
  if qrVendaDelivery.RecordCount>0 then
  begin
    frmControleDeliveryFechamento := TfrmControleDeliveryFechamento.Create(self,qrVendaDelivery.FieldByName('id_venda').AsInteger,false);
    frmControleDeliveryFechamento.ImprimirRelatorio(false, 1);
    FreeAndNil(frmControleDeliveryFechamento);
    qrVendaDelivery.refresh;
  end;
end;

procedure TfrmControleDelivery.miAltararDeliveryClick(Sender: TObject);
begin
  if qrVendaDelivery.RecordCount>0 then
  begin
    frmControleDeliveryDetalheVenda := tfrmControleDeliveryDetalheVenda.Create(self,qrVendaDelivery.FieldByName('id_venda').AsInteger,0,'D');
    frmControleDeliveryDetalheVenda.btEditar.Click;
    frmControleDeliveryDetalheVenda.ShowModal;
    FreeAndNil(frmControleDeliveryDetalheVenda);
    qrVendaDelivery.refresh;
  end;
end;

procedure TfrmControleDelivery.btConfirmarsaidaClick(Sender: TObject);
begin
 if qrVendaDelivery.Active then
  begin
    if qrVendaDelivery.RecordCount>0 then
    begin
      if qrVendaDelivery.FieldByName('retirada_balcao').AsString='' then
      begin
        frmControleDeliverySelecaoEntregador := TfrmControleDeliverySelecaoEntregador.Create(self, qrVendaDelivery.FieldByName('id_venda').AsInteger);
        frmControleDeliverySelecaoEntregador.ShowModal;
        FreeAndNil(frmControleDeliverySelecaoEntregador);
        qrVendaDelivery.Refresh;
      end
      else
      begin
        Application.MessageBox('Esta venda foi marcada para retirada no balcão!', 'Atenção', MB_ICONINFORMATION);
      end;
    end;
  end;
end;

procedure TfrmControleDelivery.btConsultarFreteClick(Sender: TObject);
begin
frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
       ' select bai_001, emp_001, bai_002, bai_003 from bairro ',
      vararrayof([2,3]) ,
      vararrayof(['Bairro', 'Taxa de entrega']),
      0, 0, ' sit_001=4 and emp_001= ' +IntToStr(RecProj.iEmp) );
  frmBuscaRegistro.ShowModal;
  FreeAndNil(frmBuscaRegistro);
end;

procedure TfrmControleDelivery.acAlterarpedidoExecute(Sender: TObject);
begin
if qrVendaDelivery.RecordCount>0 then
  begin
    frmControleDeliveryDetalheVenda := tfrmControleDeliveryDetalheVenda.Create(self,qrVendaDelivery.FieldByName('id_venda').AsInteger,0,'D');
    frmControleDeliveryDetalheVenda.btEditar.Click;
    frmControleDeliveryDetalheVenda.ShowModal;
    FreeAndNil(frmControleDeliveryDetalheVenda);
    qrVendaDelivery.refresh;
  end;
end;

procedure TfrmControleDelivery.acCancelarpedidoExecute(Sender: TObject);
var id_usuario_cancelamento : integer;
begin
if qrVendaDelivery.Active then
  begin
    if qrVendaDelivery.RecordCount>0 then
    begin
      if application.MessageBox('Deseja cancelar esta venda?', 'Atenção', MB_ICONQUESTION + mb_yesno)=mryes then
      begin
        if frmMenu.ConfirmacaoSenha('b_cancelamento_delivery', id_usuario_cancelamento) then
          CancelaVenda(qrVendaDelivery.FieldByName('id_venda').AsInteger, id_usuario_cancelamento, '');
        qrVendaDelivery.Refresh;
      end;
    end;
  end;
end;

procedure TfrmControleDelivery.acConfirmarSaidaExecute(Sender: TObject);
var
str_sql,nome_fantasia,assunto,mensagem:string;
qraux1:tuniquery;
anexos : Tstringlist;

begin
if qrVendaDelivery.Active then
  begin
    if qrVendaDelivery.RecordCount>0 then
    begin
      if qrVendaDelivery.FieldByName('retirada_balcao').AsString='' then
      begin
        frmControleDeliverySelecaoEntregador := TfrmControleDeliverySelecaoEntregador.Create(self, qrVendaDelivery.FieldByName('id_venda').AsInteger);
        frmControleDeliverySelecaoEntregador.ShowModal;
        FreeAndNil(frmControleDeliverySelecaoEntregador);

        if (bUtilizaIFood) and (qrVendaDeliveryvendas_pelo_ifood.AsBoolean) then
        begin
          bEnviouEvento:= False;

          while not bEnviouEvento do
          begin
            GerarToken; //Gerar o token de acesso IFood
            Dispatch; //Informa o IFood que o pedido saiu para entrega
          end;
        end;

        // envia e-mail para o cliente, avisando sobre a saida       Rafael 08/06/2018   2.41
        if b_exige_envio_email then
        begin
          if qrVendaDelivery.FieldByName('email').AsString <>'' then
          begin
            str_sql:='select emp_003,emp_014 from empresas where emp_001=:emp';
            qraux1:=tuniquery.Create(self);
            qraux1.Connection:=frmMenu.conexao;
            qrAux1.Close;
            qrAux1.SQL.Clear;
            qrAux1.SQL.Add(str_sql);
            qraux1.ParamByName('emp').AsInteger:=RecProj.iEmp;
            qrAux1.Open;
            nome_fantasia:=qraux1.FieldByName('emp_003').AsString;
            assunto:='O SEU PEDIDO Nº '+qrVendaDelivery.FieldByName('nro_venda').AsString +' JÁ SAIU PARA ENTREGA ';
            mensagem:='LOGO   MAIS SEU PEDIDO ESTARÁ EM SUAS MÃOS.'+sLINEbREAK+
            'VALOR DO PEDIDO:'+'R$ ' + FormatFloat('###,##0.00', qrVendaDelivery.FieldByName('valor_venda').AsFloat)+sLINEbREAK+sLINEbREAK+sLINEbREAK+ nome_fantasia+Slinebreak+'E-mail:'+qraux1.FieldByName('emp_014').AsString+SlineBreak+Slinebreak+'Sistema desenvolvido por RP Sistemas www.sistemalechef.com.br';
            anexos := TStringList.Create;
            EnviaEmailSSL(nome_fantasia, trim(qrvendadelivery.FieldByName('email').AsString),assunto , mensagem,anexos,true);
            qraux1.Close;
          end;
        end;

        qrVendaDelivery.Refresh;
      end
      else
      begin
        Application.MessageBox('Esta venda foi marcada para retirada no balcão!', 'Atenção', MB_ICONINFORMATION);
      end;
    end;
  end;
end;

procedure TfrmControleDelivery.acFinalizarPedidoExecute(Sender: TObject);
var
str_sql,nome_fantasia,assunto,mensagem:string;
qraux1:tuniquery;
anexos : Tstringlist;
begin
if qrVendaDelivery.RecordCount>0 then
  begin
    frmControleDeliveryFinaliza :=  TfrmControleDeliveryFinaliza.Create(self,qrVendaDelivery.FieldByName('id_venda').AsInteger );
    frmControleDeliveryFinaliza.showmodal;
    FreeAndNil(frmControleDeliveryFinaliza);

    if (bUtilizaIFood) and (qrVendaDeliveryvendas_pelo_ifood.AsBoolean) then
    begin
      bEnviouEvento:= False;

      while not bEnviouEvento do
      begin
        GerarToken; //Gerar o token de acesso IFood
        Delivery; //Informa o IFood que o pedido foi entregue
      end;
    end;

    // envia e-mail para o cliente, avisando sobre a saida       Rafael 08/06/2018   2.41
    if b_exige_envio_email then
    begin
      if qrVendaDelivery.FieldByName('email').AsString <>'' then
      begin
        str_sql:='select emp_003,emp_014 from empresas where emp_001=:emp';
        qraux1:=tuniquery.Create(self);
        qraux1.Connection:=frmMenu.conexao;
        qrAux1.Close;
        qrAux1.SQL.Clear;
        qrAux1.SQL.Add(str_sql);
        qraux1.ParamByName('emp').AsInteger:=RecProj.iEmp;
        qrAux1.Open;
        nome_fantasia:=qraux1.FieldByName('emp_003').AsString;
        assunto:='O SEU PEDIDO Nº '+qrVendaDelivery.FieldByName('nro_venda').AsString +' FOI ENTREGUE ';
        mensagem:=qrvendadelivery.FieldByName('nome_cliente').AsString+'  FICAMOS FELIZES EM SABER QUE VOCÊ JÁ RECEBEU SEU PEDIDO. O PEDIDO CHEGOU COMO GOSTARIA? CASO NÃO, POR FAVOR CONTATE-NOS POR TELFONE OU E-MAIL, SUA OPINIÃO É MUITO IMPORTANTE PARA NÓS!'+sLINEbREAK+
        SLINEbREAK+sLINEbREAK+ nome_fantasia+Slinebreak+'E-mail:'+qraux1.FieldByName('emp_014').AsString+SlineBreak+Slinebreak+'Sistema desenvolvido por RP Sistemas www.sistemalechef.com.br';
        anexos := TStringList.Create;
        EnviaEmailSSL(nome_fantasia, trim(qrvendadelivery.FieldByName('email').AsString),assunto , mensagem,anexos,true);
        qraux1.Close;
      end;
    end;
    qrVendaDelivery.Refresh;
  end;
end;

procedure TfrmControleDelivery.acReimprimirExecute(Sender: TObject);
begin
  if qrVendaDelivery.RecordCount>0 then
  begin
    frmControleDeliveryFechamento := TfrmControleDeliveryFechamento.Create(self,qrVendaDelivery.FieldByName('id_venda').AsInteger,false);
    frmControleDeliveryFechamento.ImprimirRelatorio(false, 1);
    FreeAndNil(frmControleDeliveryFechamento);
    qrVendaDelivery.refresh;
  end;
end;

procedure TfrmControleDelivery.Action1Execute(Sender: TObject);
begin
  frmReimpressaoCupom := TfrmReimpressaoCupom.Create(self, 'I');
  frmReimpressaoCupom.ShowModal;
  FreeAndNil(frmReimpressaoCupom);
end;

procedure TfrmControleDelivery.acVizualizarPedidoExecute(Sender: TObject);
begin
  if qrVendaDelivery.RecordCount>0 then
  begin
    frmControleDeliveryDetalheVenda := tfrmControleDeliveryDetalheVenda.Create(self,qrVendaDelivery.FieldByName('id_venda').AsInteger,0,'D', true);
    frmControleDeliveryDetalheVenda.btEditar.Click;
    frmControleDeliveryDetalheVenda.ShowModal;
    FreeAndNil(frmControleDeliveryDetalheVenda);
    qrVendaDelivery.refresh;
  end;
end;

procedure TfrmControleDelivery.btConsultarIFoodClick(Sender: TObject);
begin
  frmControleIFOOD:= TfrmControleIFOOD.Create(self);
  frmControleIFOOD.ShowModal;
  FreeAndNil(frmControleIFOOD);
  btAtualizar.Click;
end;

procedure TfrmControleDelivery.btAlterarClick(Sender: TObject);
begin
if qrVendaDelivery.RecordCount>0 then
  begin
    frmControleDeliveryDetalheVenda := tfrmControleDeliveryDetalheVenda.Create(self,qrVendaDelivery.FieldByName('id_venda').AsInteger,0,'D');
    frmControleDeliveryDetalheVenda.btEditar.Click;
    frmControleDeliveryDetalheVenda.ShowModal;
    FreeAndNil(frmControleDeliveryDetalheVenda);
    qrVendaDelivery.refresh;
  end;
end;

procedure TfrmControleDelivery.btAtualizarClick(Sender: TObject);
begin
 if qrVendaDelivery.Active then qrVendaDelivery.Refresh;
end;

procedure TfrmControleDelivery.btCancelarClick(Sender: TObject);
 var id_usuario_cancelamento : integer;
begin
  if qrVendaDelivery.Active then
  begin
    if qrVendaDelivery.RecordCount>0 then
    begin
      if application.MessageBox('Deseja cancelar esta venda?', 'Atenção', MB_ICONQUESTION + mb_yesno)=mryes then
      begin
        if frmMenu.ConfirmacaoSenha('b_cancelamento_delivery', id_usuario_cancelamento) then
          CancelaVenda(qrVendaDelivery.FieldByName('id_venda').AsInteger, id_usuario_cancelamento, '');
        qrVendaDelivery.Refresh;
      end;
    end;
  end;
end;

procedure TfrmControleDelivery.btEditarClienteClick(Sender: TObject);
begin
  if qrBuscaCliente.Active then
  begin
    if qrBuscaCliente.RecordCount>0 then
    begin
      frmDetalheCliente := TfrmDetalheCliente.Create(self, qrBuscaCliente.FieldByName('cli_001').AsInteger);
      frmDetalheCliente.btEditar.Click;
      frmDetalheCliente.ShowModal;
      FreeAndNil(frmDetalheCliente);
      qrBuscaCliente.Refresh;
    end;
  end;
end;

procedure TfrmControleDelivery.btFinalizarClick(Sender: TObject);
begin
 if qrVendaDelivery.RecordCount>0 then
  begin
    frmControleDeliveryFinaliza :=  TfrmControleDeliveryFinaliza.Create(self,qrVendaDelivery.FieldByName('id_venda').AsInteger );
    frmControleDeliveryFinaliza.showmodal;
    FreeAndNil(frmControleDeliveryFinaliza);
    qrVendaDelivery.Refresh;
  end;
end;

procedure TfrmControleDelivery.btSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmControleDelivery.edFiltrodeliveryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var filtro:string;
begin
  if key=vk_return then
  begin
    rgFiltroVendasClick(nil);
    filtro:=' and (upper(nome_cliente)  like ' + uppercase( QuotedStr('%'+edFiltrodelivery.Text+'%')); //filtro recebe o nome que digitou no edit
    filtro:=filtro+' or telefone1 like ' +(QuotedStr('%'+edFiltrodelivery.Text+'%'));
    filtro:=filtro+' or telefone2 like '+ (QuotedStr('%'+edFiltrodelivery.Text+'%'));
    filtro:=filtro+' or celular1 like ' +(QuotedStr('%'+edFiltrodelivery.Text+'%'));
    filtro:=filtro+' or celular2 like '+ (QuotedStr('%'+edFiltrodelivery.Text+'%'));
    filtro:=filtro+' or celular3 like ' +(QuotedStr('%'+edFiltrodelivery.Text+'%'))+')';
    qrVendaDelivery.Filter:=qrVendaDelivery.Filter+filtro;   // qrvendadelivery .filter recebe ele mesmo + filtro

  end;
end;

procedure TfrmControleDelivery.edFiltroNomeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=vk_return then BuscaCLiente('N', edFiltroNome.Text);

end;

procedure TfrmControleDelivery.edFiltroTelefoneKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=vk_return then BuscaCLiente('T', edFiltroTelefone.Text);
end;

procedure TfrmControleDelivery.FormCreate(Sender: TObject);
begin
  // Verifica se esta marcado opçao de envio automatico de e-mail na mudança da situação do pedido      Rafael 07/06/2018 V 2.42
  b_exige_envio_email := LerBooleanConfig('ckEnviar_email_informando_situacao_pedido', frmmenu.cdsCFG.FileName);
  qrVendaDelivery.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
  qrVendaDelivery.Open;

  qrEmpresa.Close;
  qrEmpresa.SQL.Text:= 'select utiliza_ifood, cliente_id_ifood, cliente_secret_ifood, username_ifood, password_ifood ' +
                       'from empresas where emp_001 = ' + IntToStr(recproj.iEmp);
  qrEmpresa.Open;

  if qrEmpresa.FieldByName('utiliza_ifood').AsBoolean = True then
  begin
    GerarToken;
    btConsultarIFood.Visible:= True;
    tmrIFood.Enabled:= True;
    bUtilizaIFood:= True;
  end
  else
  begin
    btConsultarIFood.Visible:= False;
    tmrIFood.Enabled:= False;
    bUtilizaIFood:= False;
  end;
end;

procedure TfrmControleDelivery.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f2 then edFiltroTelefone.SetFocus
  else if key=vk_f3 then edFiltroNome.SetFocus
  else if key=vk_f5 then btNovoCliente.Click
  else if key=vk_f4 then btEditarCliente.Click
  else if key=vk_f1 then btConsultarFrete.Click
  else if key=vk_f9 then btSair.Click;
end;

function TfrmControleDelivery.Conectado: boolean;
var
  R: Integer;
begin
  R := uSocketPing.Ping(10000, 'www.google.com.br', 80);
  if R = 0 then
    Result := True
  else
    Result := False;
end;

procedure TfrmControleDelivery.GerarToken;
var HTTPClient: TIdHTTP;
    lParamList: TStringList;
    Result: string;
begin
  if Conectado then
  begin
    try
      HTTPClient := TidHTTP.Create;
      HTTPClient.ProtocolVersion := pv1_0;
      HTTPClient.Request.Accept := 'application/json';
      HTTPClient.Request.UserAgent := 'Mozilla/3.0 (compatible; Indy Library)';
      HTTPClient.IOHandler := IdSSLIOHandlerSocketOpenSSL1;

      lParamList := TStringList.Create;

      lParamList.Add('client_id=' + qrEmpresa.FieldByName('cliente_id_ifood').AsString);
      lParamList.Add('client_secret=' + qrEmpresa.FieldByName('cliente_secret_ifood').AsString);
      lParamList.Add('grant_type=password');
      lParamList.Add('username=' + qrEmpresa.FieldByName('username_ifood').AsString);
      lParamList.Add('password=' + qrEmpresa.FieldByName('password_ifood').AsString);

      try
        Result := HTTPClient.Post('https://pos-api.ifood.com.br/oauth/token', lParamList);
      finally
        HTTPClient.Free;
        lParamList.Free;

        sTokenIFood:= copy(Result,18,36);
      end;

    except
      On E: Exception do
      begin
        sTokenIFood:= EmptyStr;

        if (HTTPClient.ResponseCode <> -1) then
          Application.MessageBox(Pchar('Atenção! ocorreu um erro na autenticação do IFood: ' + #13 + e.Message), 'Atenção', MB_ICONERROR);
      end;
    end;
  end;
end;

procedure TfrmControleDelivery.ConsultarPedidos;
var HTTPClient: TIdHTTP;
    Resposta: TStringStream;
    vRoot: TRootClass;
    i: Integer;
    bNotifica: Boolean;
begin
  if Conectado then
  begin
    try
      bNotifica:= False;

      HTTPClient := TidHTTP.Create;
      HTTPClient.ProtocolVersion := pv1_1;
      HTTPClient.Request.Accept := 'application/json';
      HTTPClient.Request.UserAgent := 'Mozilla/3.0 (compatible; Indy Library)';
      HTTPClient.IOHandler := IdSSLIOHandlerSocketOpenSSL1;

      Resposta := TStringStream.Create('');

      HTTPClient.Request.CustomHeaders.FoldLines := False;
      HTTPClient.Request.CustomHeaders.Add('Authorization:Bearer ' + sTokenIFood);

      HTTPClient.Get('https://pos-api.ifood.com.br/v1.0/events%3Apolling', Resposta);
      Resposta.Position := 0;

      Memo1.Lines.Clear;
      Memo1.Lines.LoadFromStream(Resposta);

      Memo1.Text:= '{"dadospedido":{"pedido":' + memo1.Text + '}}';

      vRoot := TRootClass.FromJsonString(Memo1.Text);

      for i := 0 to Length(vRoot.dadospedido.pedido) - 1 do
      begin
        if (vRoot.dadospedido.pedido[i].code = 'PLACED') then
          bNotifica:= True;
      end;

      HTTPClient.Free;
      Resposta.Free;
      vRoot.Free;

      if bNotifica then
        Self.Caption:= 'DISK DELIVERY - SEU NOVO CONCEITO EM DELIVERY - Existe(m) pedido(s) pendente(s) no IFood. Verifique!'
      else
        Self.Caption:= 'DISK DELIVERY - SEU NOVO CONCEITO EM DELIVERY';

    except
      On E: Exception do
      begin
        if (HTTPClient.ResponseCode <> 404) and (HTTPClient.ResponseCode <> 401) and (HTTPClient.ResponseCode <> -1) then
          Application.MessageBox(Pchar('Atenção! ocorreu um erro ao pesquisar pedidos do IFood: ' + #13 + e.Message), 'Atenção', MB_ICONERROR);

        HTTPClient.Free;
        Resposta.Free;
      end;
    end;
  end;
end;

procedure TfrmControleDelivery.Dispatch;
var HTTPClient: TIdHTTP;
    lParamList: TStringList;
    Result: string;
    reference: string;
begin
  if Conectado then
  begin
    try
      HTTPClient := TidHTTP.Create;
      HTTPClient.ProtocolVersion := pv1_0;
      HTTPClient.Request.Accept := 'application/json';
      HTTPClient.Request.UserAgent := 'Mozilla/3.0 (compatible; Indy Library)';
      HTTPClient.IOHandler := IdSSLIOHandlerSocketOpenSSL1;

      HTTPClient.Request.CustomHeaders.FoldLines := False;
      HTTPClient.Request.CustomHeaders.Add('Authorization:Bearer ' + sTokenIFood);

      reference:= qrVendaDeliverycorrelation_id_ifood.AsString;

      try
        Result := HTTPClient.Post('https://pos-api.ifood.com.br/v1.0/orders/' + reference + '/statuses/dispatch', lParamList);

        if HTTPClient.ResponseCode = 202 then
          bEnviouEvento:= True;
      finally
        HTTPClient.Free;
        lParamList.Free;
      end;

    except
      On E: Exception do
      begin
        ShowMessage('Atenção! ocorreu um erro ao despachar o pedido do IFood: ' + #13 + e.Message);
      end;
    end;
  end;
end;

procedure TfrmControleDelivery.Delivery;
var HTTPClient: TIdHTTP;
    lParamList: TStringList;
    Result: string;
    reference: string;
begin
  if Conectado then
  begin
    try
      HTTPClient := TidHTTP.Create;
      HTTPClient.ProtocolVersion := pv1_0;
      HTTPClient.Request.Accept := 'application/json';
      HTTPClient.Request.UserAgent := 'Mozilla/3.0 (compatible; Indy Library)';
      HTTPClient.IOHandler := IdSSLIOHandlerSocketOpenSSL1;

      HTTPClient.Request.CustomHeaders.FoldLines := False;
      HTTPClient.Request.CustomHeaders.Add('Authorization:Bearer ' + sTokenIFood);

      reference:= qrVendaDeliverycorrelation_id_ifood.AsString;

      try
        Result := HTTPClient.Post('https://pos-api.ifood.com.br/v1.0/orders/' + reference + '/statuses/delivery', lParamList);

        if HTTPClient.ResponseCode = 202 then
          bEnviouEvento:= True;
      finally
        HTTPClient.Free;
        lParamList.Free;
      end;

    except
      On E: Exception do
      begin
        ShowMessage('Atenção! ocorreu um erro ao entregar o pedido do IFood: ' + #13 + e.Message);
      end;
    end;
  end;
end;

end.





