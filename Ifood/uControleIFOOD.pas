unit uControleIFOOD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, AdvGlowButton, IPPeerClient,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent, REST.Types,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  Vcl.StdCtrls, XMLDoc, Data.DBXJSONReflect, MemDS, DBAccess, Uni,
  Datasnap.DBClient, Json, JvExStdCtrls, JvCombobox, JvDBCombobox, Vcl.DBCtrls,
  cxCheckBox, JvExControls, JvLabel, cxImageComboBox, cxGridCardView,
  cxGridDBCardView, cxGridCustomLayoutView, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  TfrmControleIFOOD = class(TfrmModelo)
    Label1: TLabel;
    lblToken: TLabel;
    btToken: TAdvGlowButton;
    btVerificarPed: TAdvGlowButton;
    Memo1: TMemo;
    btConfirmaPed: TAdvGlowButton;
    btRejeitarPed: TAdvGlowButton;
    cdsPedidos: TClientDataSet;
    cdsPedidosid: TStringField;
    cdsPedidoscode: TStringField;
    cdsPedidoscorrelationId: TStringField;
    cdsPedidosdata: TDateField;
    cdsPedidoshora: TTimeField;
    dsPedidos: TUniDataSource;
    cxgrPedidos: TcxGrid;
    cxgrPedidosDBTableView1: TcxGridDBTableView;
    cxgrPedidosLevel1: TcxGridLevel;
    cxgrPedidosDBTableView1data: TcxGridDBColumn;
    cxgrPedidosDBTableView1hora: TcxGridDBColumn;
    cdsEventos: TClientDataSet;
    cdsEventosid: TStringField;
    cdsEventoscode: TStringField;
    cdsEventoscorrelationId: TStringField;
    cdsEventosdata: TDateField;
    cdsEventoshora: TTimeField;
    cdsPedidosshortReference: TIntegerField;
    cdsPedidoscliente: TStringField;
    cdsPedidostelefone: TStringField;
    cdsPedidosbairro: TStringField;
    cxgrPedidosDBTableView1shortReference: TcxGridDBColumn;
    cxgrPedidosDBTableView1cliente: TcxGridDBColumn;
    cxgrPedidosDBTableView1telefone: TcxGridDBColumn;
    cxgrPedidosDBTableView1total: TcxGridDBColumn;
    qrBuscaCliente: TUniQuery;
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
    qrBuscaClientecomplemento: TWideStringField;
    qrBuscaClientestatus: TIntegerField;
    qrBuscaClienteobs_bloqueio: TWideStringField;
    cdsPedidosendereco: TStringField;
    cdsPedidosnrendereco: TStringField;
    cdsPedidoscep: TStringField;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cdsPedidosidcliente: TIntegerField;
    cdsProdutosMestre: TClientDataSet;
    dsProdutosMestre: TUniDataSource;
    cdsProdutosMestrecorrelationId: TStringField;
    cdsProdutosMestreexternalCode: TIntegerField;
    cdsProdutosMestredescricao: TStringField;
    cdsProdutosMestrequantidade: TFloatField;
    cdsProdutosMestrevalor_unitario: TFloatField;
    cdsProdutosMestrevalor_total: TFloatField;
    cdsProdutosMestrevalor_acrescimo: TFloatField;
    cdsPedidostotal: TFloatField;
    cdsProdutosMestreflag_encontrado: TBooleanField;
    qrBuscaProdutos: TUniQuery;
    qrBuscaProdutosmat_003: TWideStringField;
    cdsPedidosdelivery: TFloatField;
    cdsProdutosMestreidproduto: TIntegerField;
    qrBuscaProdutosmat_001: TIntegerField;
    qrBuscaProdutosmat_021: TIntegerField;
    cdsProdutosMestreimpressora: TIntegerField;
    cxgrPedidosDBTableView1delivery: TcxGridDBColumn;
    cdsOpcionais: TClientDataSet;
    qrBuscaProdutossit_001: TIntegerField;
    cdsProdutosMestresituacao: TIntegerField;
    btDespacharPed: TAdvGlowButton;
    cdsProdutosOpc: TClientDataSet;
    cdsProdutosOpccorrelationId: TStringField;
    cdsProdutosOpcexternalCodeMestre: TIntegerField;
    cdsProdutosOpcdescricao: TStringField;
    cdsProdutosOpcidlista: TIntegerField;
    dsProdutosOpc: TUniDataSource;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBCardView1: TcxGridDBCardView;
    cxGrid1DBCardView1descricao: TcxGridDBCardViewRow;
    cdsProdutosOpcexternalCodeOpc: TIntegerField;
    qrBuscaOpc: TUniQuery;
    qrBuscaOpcdescricao: TWideStringField;
    cdsProdutosOpcflag_encontrado: TBooleanField;
    cdsProdutosOpcvalor: TFloatField;
    cdsProdutosOpcdescricaoabrev: TStringField;
    cdsPedidosforma: TStringField;
    qrBuscaForma: TUniQuery;
    qrBuscaFormadescricaoforma: TWideStringField;
    cxgrPedidosDBTableView1forma: TcxGridDBColumn;
    cxGrid1DBTableView1flag_encontrado: TcxGridDBColumn;
    cxGrid1DBTableView1externalCode: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1quantidade: TcxGridDBColumn;
    cxGrid1DBTableView1valor_unitario: TcxGridDBColumn;
    cxGrid1DBTableView1valor_acrescimo: TcxGridDBColumn;
    cxGrid1DBTableView1valor_total: TcxGridDBColumn;
    function Conectado: boolean;
    procedure btTokenClick(Sender: TObject);
    procedure btVerificarPedClick(Sender: TObject);
    procedure GerarToken;
    procedure ConsultarPedidos;
    procedure DetalhesPedido;
    procedure FormShow(Sender: TObject);
    procedure Integration;
    procedure Confirmation;
    procedure Rejection;
    procedure Acknowledgment;
    procedure btConfirmaPedClick(Sender: TObject);
    procedure btIntregrarPedClick(Sender: TObject);
    procedure btRejeitarPedClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscaCLiente(filtro :string);
    procedure FormDestroy(Sender: TObject);
    procedure cdsPedidosAfterScroll(DataSet: TDataSet);
    procedure VerificaProdutos;
    procedure VerificaOpcionais;
    procedure CriaVendaDelivery;
  private
    { Private declarations }
  public
    { Public declarations }
    IdSSLIOHandlerSocketOpenSSL1: tIdSSLIOHandlerSocketOpenSSL;
  end;

var
  frmControleIFOOD: TfrmControleIFOOD;
  s: string;

implementation

uses uSocketPing, uMenu, uControleDelivery, uConsultaIFood, uDetalheIFood,
  Funcao_DB, uFuncoes, uDetalheCliente;

{$R *.dfm}

procedure TfrmControleIFOOD.btConfirmaPedClick(Sender: TObject);
begin
  inherited;
  if cdsPedidos.RecordCount = 0 then
    Exit;

  //Pesquisa o telefone do cliente
  BuscaCLiente(cdsPedidostelefone.AsString);

  //Verifica se os produtos estão referenciados SISTEMA/IFOOD, senão cadastra
  VerificaProdutos;

  //Verifica se os opcionais estão referenciados SISTEMA/IFOOD, senão cadastra
  VerificaOpcionais;

  GerarToken;
  Integration;  //Faz a integração
  Confirmation; //Faz a confirmação
end;

procedure TfrmControleIFOOD.btIntregrarPedClick(Sender: TObject);
begin
  inherited;
  GerarToken;
  Integration;
end;

procedure TfrmControleIFOOD.BuscaCLiente(filtro :string);
var i_where : Integer;
    msg, campo_busca :string;
begin
  qrBuscaCliente.Close;
  i_where := qrBuscaCliente.SQL.Count-2;

  qrBuscaCliente.SQL[i_where]:= ' and  ('+
                                ' upper(replace(replace(replace(replace(cli_012, ''-'', ''''), '' '', ''''), ''('', ''''), '')'', '''')) like upper(:filtro)' +
                                ' OR upper(replace(replace(replace(replace(cli_013, ''-'', ''''), '' '', ''''), ''('', ''''), '')'', '''')) like upper(:filtro) '+
                                ' OR upper(replace(replace(replace(replace(cli_014, ''-'', ''''), '' '', ''''), ''('', ''''), '')'', '''')) like upper(:filtro) '+
                                ' OR upper(replace(replace(replace(replace(celular1, ''-'', ''''), '' '', ''''), ''('', ''''), '')'', '''')) like upper(:filtro) '+
                                ' OR upper(replace(replace(replace(replace(celular2, ''-'', ''''), '' '', ''''), ''('', ''''), '')'', '''')) like upper(:filtro) '+
                                ' ) ';
  campo_busca := 'Telefone';

  filtro:= StringReplace(filtro, '-', '', [rfReplaceAll]);
  filtro:= StringReplace(filtro, ' ', '', [rfReplaceAll]);
  filtro:= StringReplace(filtro, '(', '', [rfReplaceAll]);
  filtro:= StringReplace(filtro, ')', '', [rfReplaceAll]);

  qrBuscaCliente.ParamByName('filtro').AsString := '%'+filtro+'%';
  qrBuscaCliente.open;

  if qrBuscaCliente.RecordCount > 0 then
  begin
    cdsPedidos.Edit;
    cdsPedidosidcliente.AsInteger := qrBuscaClientecli_001.AsInteger;
    cdsPedidoscliente.AsString    := qrBuscaClientenome.AsString;
    cdsPedidoscep.AsString;
    cdsPedidos.Post;
  end
  else
  begin
    msg := format('%s não encontrado, gostaria de cadastrar?',[campo_busca]);
    if Application.MessageBox(pchar(msg), 'Atenção', MB_ICONQUESTION + MB_YESNO)=mrYes then
    begin
      frmDetalheCliente := TfrmDetalheCliente.Create(self);

      if frmDetalheCliente.qrDetalhe.State in [dsInsert, dsEdit] then
      begin
        frmDetalheCliente.qrDetalhe.FieldByName('cli_012').AsString := cdsPedidostelefone.AsString;
        frmDetalheCliente.qrDetalhe.FieldByName('cli_002').AsString := cdsPedidoscliente.AsString;
        frmDetalheCliente.qrDetalhe.FieldByName('cep_004').AsString := cdsPedidosendereco.AsString;
        frmDetalheCliente.qrDetalhe.FieldByName('cli_008').AsString := cdsPedidosnrendereco.AsString;
        frmDetalheCliente.qrDetalhe.FieldByName('cep_002').AsString := cdsPedidoscep.AsString;
      end;

      frmDetalheCliente.ShowModal;

      if frmDetalheCliente.qrDetalhe.FieldByName('cli_001').AsInteger = 0 then
      begin
        Application.MessageBox('O Cliente não foi cadastrado. Importação cancelada!', 'Atenção', MB_ICONEXCLAMATION);
        Abort;
      end
      else
      begin
        cdsPedidos.Edit;
        cdsPedidosidcliente.AsInteger := frmDetalheCliente.qrDetalhe.FieldByName('cli_001').AsInteger;
        cdsPedidoscliente.AsString    := frmDetalheCliente.qrDetalhe.FieldByName('cli_002').AsString;
        cdsPedidoscep.AsString;
        cdsPedidos.Post;
      end;
      frmDetalheCliente.Free;
    end
    else
    begin
      Application.MessageBox('O Cliente não foi cadastrado. Importação cancelada!', 'Atenção', MB_ICONEXCLAMATION);
      Abort;
    end;
  end;
end;

procedure TfrmControleIFOOD.VerificaProdutos;
var str_sql: string;
    id_material: integer;
    bVerifica: Boolean;
    sProduto: string;
begin
  cdsProdutosMestre.DisableControls;

  //Verifica se os produtos encontrados estão ativos
  cdsProdutosMestre.First;
  while not cdsProdutosMestre.Eof do
  begin
    if (cdsProdutosMestreflag_encontrado.AsBoolean = True) and (cdsProdutosMestresituacao.AsInteger <> 4) then
    begin
      Application.MessageBox(PChar('O Produto: ' + cdsProdutosMestredescricao.AsString + ' está inativo.' +  #13 +
                                   'Importação cancelada!'), 'Atenção', MB_ICONEXCLAMATION);

      cdsProdutosMestre.EnableControls;
      Abort;
    end;

    cdsProdutosMestre.Next;
  end;

  cdsProdutosMestre.First;
  while not cdsProdutosMestre.Eof do
  begin
    //Se o produto está com flag de não encontrado
    if cdsProdutosMestreflag_encontrado.AsBoolean = False then
    begin
      //busca o último id
      str_sql := format( 'select coalesce(max(mat_001),0)+1 from materiais where emp_001=%d', [recproj.iEmp]);
      BuscaCampo(id_material, str_sql, '', false);

      str_sql :=  ' INSERT INTO materiais'+
                  '  (mat_001, emp_001, mat_003, mat_004, uni_001, mat_008, '+
                  '   mtp_001, mat_009, usu_001_1, usu_001_2, dat_001_1, dat_001_2, mat_006, mat_012, '+
                  '   cat_001, mat_021, tipo_producao, valor_tabela2, sit_001, id_setor)'+
                  ' VALUES'+
                  '  (:mat_001, :id_empresa, :descricao, :cod_ref, 1, :valor_venda, '+
                  '   1, 1, :id_usuario, null, localtimestamp, null, 0.00, :valor_custo, '+
                  '   1, 0, ''P'', :valor_tabela, 4, 1)';

      ExecutaComandoSQL(str_sql, vararrayof([
                        id_material,
                        recproj.iEmp,
                        copy(cdsProdutosMestredescricao.AsString, 0, 100),
                        trim(cdsProdutosMestreexternalCode.AsString),
                        cdsProdutosMestrevalor_unitario.AsFloat,
                        RecProj.iUsuario,
                        cdsProdutosMestrevalor_unitario.AsFloat,
                        cdsProdutosMestrevalor_unitario.AsFloat]));
    end;

    cdsProdutosMestre.Next;
  end;

  bVerifica := False;
  sProduto  := '';

  cdsProdutosMestre.First;
  while not cdsProdutosMestre.Eof do
  begin
    qrBuscaProdutos.Close;
    qrBuscaProdutos.ParamByName('mat_004').AsString:= Trim(cdsProdutosMestreexternalCode.AsString);
    qrBuscaProdutos.Open;

    if (qrBuscaProdutos.RecordCount > 0) then
    begin
      if (cdsProdutosMestreflag_encontrado.AsBoolean = False) then
      begin
        cdsProdutosMestre.Edit;
        cdsProdutosMestreidproduto.AsInteger       := qrBuscaProdutosmat_001.AsInteger;
        cdsProdutosMestreflag_encontrado.AsBoolean := True;
        cdsProdutosMestre.Post;
      end;
    end
    else
    begin
      bVerifica := True;
      sProduto  := cdsProdutosMestredescricao.AsString;
    end;

    cdsProdutosMestre.Next;
  end;
  cdsProdutosMestre.First;

  cdsProdutosMestre.EnableControls;

  if bVerifica then
  begin
    Application.MessageBox(PChar('O Produto: ' + sProduto + ' não foi cadastrado.' +  #13 +
                                 'Importação cancelada!'), 'Atenção', MB_ICONEXCLAMATION);
    Abort;
  end;
end;

procedure TfrmControleIFOOD.VerificaOpcionais;
var str_sql: string;
    bVerifica: Boolean;
    sOpcional: string;
begin
  cdsProdutosOpc.Filtered:= False;

  cdsProdutosOpc.DisableControls;

  cdsProdutosOpc.First;
  while not cdsProdutosOpc.Eof do
  begin
    //Se o opcional está com flag de não encontrado
    if (cdsProdutosOpcflag_encontrado.AsBoolean = False) and
       (cdsProdutosOpccorrelationId.AsString = cdsProdutosMestrecorrelationId.AsString) and
       (cdsProdutosOpcexternalCodeOpc.AsInteger > 0) then
    begin
      str_sql :=  ' INSERT INTO opcional '+
                  '  (id_opcional, id_empresa, descricao, valor, id_situacao)'+
                  ' VALUES'+
                  '  (:id_opcional, :id_empresa, :descricao, :valor, 4)';

      ExecutaComandoSQL(str_sql, vararrayof([
                        cdsProdutosOpcexternalCodeOpc.AsInteger,
                        recproj.iEmp,
                        copy(cdsProdutosOpcdescricaoabrev.AsString, 0, 100),
                        cdsProdutosOpcvalor.AsFloat]));
    end;

    cdsProdutosOpc.Next;
  end;

  bVerifica := False;
  sOpcional  := '';

  cdsProdutosOpc.First;
  while not cdsProdutosOpc.Eof do
  begin
    if (cdsProdutosOpccorrelationId.AsString = cdsProdutosMestrecorrelationId.AsString) then
    begin
      qrBuscaOpc.Close;
      qrBuscaOpc.ParamByName('id_opcional').AsInteger:= cdsProdutosOpcexternalCodeOpc.AsInteger;
      qrBuscaOpc.Open;

      if (qrBuscaOpc.RecordCount > 0) then
      begin
        if (cdsProdutosOpcflag_encontrado.AsBoolean = False) then
        begin
          cdsProdutosOpc.Edit;
          cdsProdutosOpcflag_encontrado.AsBoolean := True;
          cdsProdutosOpc.Post;
        end;
      end
      else
      begin
        if cdsProdutosOpcexternalCodeOpc.AsInteger > 0 then
        begin
          bVerifica := True;
          sOpcional := cdsProdutosOpcdescricaoabrev.AsString;
        end;
      end;
    end;

    cdsProdutosOpc.Next;
  end;
  cdsProdutosOpc.First;

  cdsProdutosOpc.EnableControls;

  if bVerifica then
  begin
    Application.MessageBox(PChar('O Opcional: ' + sOpcional + ' não foi cadastrado.' +  #13 +
                                 'Importação cancelada!'), 'Atenção', MB_ICONEXCLAMATION);
    Abort;
  end;
end;

procedure TfrmControleIFOOD.cdsPedidosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  //Filtro para mostrar apenas os produtos do pedido selecionado
  cdsProdutosMestre.Filtered:= False;
  cdsProdutosMestre.Filter  := 'correlationId = ' + QuotedStr(cdsPedidoscorrelationId.AsString);
  cdsProdutosMestre.Filtered:= True;

  cxGrid1DBTableView1.ViewData.Expand(True);
end;

procedure TfrmControleIFOOD.btRejeitarPedClick(Sender: TObject);
begin
  inherited;
  GerarToken;
  Rejection;  //Faz a rejeição
end;

procedure TfrmControleIFOOD.btTokenClick(Sender: TObject);
begin
  inherited;
  GerarToken;
end;

procedure TfrmControleIFOOD.btVerificarPedClick(Sender: TObject);
begin
  inherited;
  GerarToken;
  ConsultarPedidos;
end;

function TfrmControleIFOOD.Conectado: boolean;
var
  R: Integer;
begin
  R := uSocketPing.Ping(10000, 'www.google.com.br', 80);
  if R = 0 then
    Result := True
  else
    Result := False;
end;

procedure TfrmControleIFOOD.GerarToken;
var HTTPClient: TIdHTTP;
    lParamList: TStringList;
    Result: string;
    qrEmpresa: TUniQuery;
begin
  if Conectado then
  begin
    try
      qrEmpresa:= TUniQuery.Create(nil);
      qrEmpresa.Connection:= frmMenu.conexao;
      qrEmpresa.Close;
      qrEmpresa.SQL.Text:= 'select cliente_id_ifood, cliente_secret_ifood, username_ifood, password_ifood ' +
                           'from empresas where emp_001 = ' + IntToStr(recproj.iEmp);
      qrEmpresa.Open;

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

      qrEmpresa.Close;
      FreeAndNil(qrEmpresa);

      try
        Result := HTTPClient.Post('https://pos-api.ifood.com.br/oauth/token', lParamList);
      finally
        HTTPClient.Free;
        lParamList.Free;

        lblToken.Caption:= copy(Result,18,36);
        frmControleDelivery.sTokenIFood:= copy(Result,18,36);
      end;

    except
      On E: Exception do
      begin
        Application.MessageBox(Pchar('Atenção! ocorreu um erro na autenticação do IFood: ' + #13 + e.Message), 'Atenção', MB_ICONERROR);
        lblToken.Caption:= EmptyStr;
        frmControleDelivery.sTokenIFood:= EmptyStr;
      end;
    end;
  end
  else
  begin
    lblToken.Caption:= EmptyStr;
    frmControleDelivery.sTokenIFood:= EmptyStr;
    Application.MessageBox('Verifique a conexão com a internet!', 'Atenção', MB_ICONEXCLAMATION);
  end;
end;

procedure TfrmControleIFOOD.ConsultarPedidos;
var HTTPClient: TIdHTTP;
    Resposta: TStringStream;
    sAuxiliar, resp: string;
    vRoot: TRootClass;
    lParamList: TStringList;
    i: Integer;
    qrEmpresa: TUniQuery;
begin
  if Conectado then
  begin
    try
      {HTTPClient := TidHTTP.Create;

      HTTPClient.ProtocolVersion := pv1_1;
      HTTPClient.Request.Accept := 'application/json';
      HTTPClient.Request.UserAgent := 'Mozilla/3.0 (compatible; Indy Library)';
      HTTPClient.IOHandler := IdSSLIOHandlerSocketOpenSSL1;

      Resposta := TStringStream.Create('');

      HTTPClient.Request.CustomHeaders.FoldLines := False;
      HTTPClient.Request.CustomHeaders.Add('Authorization:Bearer ' + lblToken.Caption);

      HTTPClient.Get('https://pos-api.ifood.com.br/v1.0/events%3Apolling', Resposta);
      Resposta.Position := 0;     }
        Resposta := TStringStream.Create('',TEncoding.UTF8);
        HTTPClient := TidHTTP.Create;
        HTTPClient.IOHandler :=IdSSLIOHandlerSocketOpenSSL1;
        HTTPClient.Request.ContentType := 'application/json';
        HTTPClient.Request.Charset := 'UTF-8';
        HTTPClient.Request.Clear;
        HTTPClient.Request.BasicAuthentication := false;
        HTTPClient.Request.Clear;
        HTTPClient.Request.CustomHeaders.Clear;
        HTTPClient.Request.ContentType := 'application/json';
        HTTPClient.Request.CharSet := 'utf-8';
        HTTPClient.Request.CustomHeaders.AddValue('cache-control', 'no-cache');
        HTTPClient.Request.CustomHeaders.AddValue('Content-Type','application/json');
        HTTPClient.Request.CustomHeaders.AddValue('Accept','application/json');
        HTTPClient.Request.CustomHeaders.AddValue('Authorization' ,'bearer '+lblToken.Caption); ////aqui entra a autorização
        HTTPClient.Response.CharSet := 'UTF-8';
        try
          HTTPClient.get('https://pos-api.ifood.com.br/v1.0/events%3Apolling', Resposta);
        except
        on E:EIdHTTPProtocolException do
          begin
              Memo1.Lines.clear;
              Memo1.Lines.Add(inttostr(e.ErrorCode)+e.ErrorMessage);
              Memo1.Lines.SaveToFile(ExtractFilePath(application.exename)+'\log\ifood\erro_polling_ifod.jos');
              ShowMessage('Atenção ocorreu um erro no polling '+e.ErrorMessage);
          end;
        end;

      Memo1.Lines.Clear;
      Memo1.Lines.LoadFromStream(Resposta);

      Memo1.Text:= '{"dadospedido":{"pedido":' + memo1.Text + '}}';

      vRoot := TRootClass.FromJsonString(Memo1.Text);

      cdsPedidos.DisableControls;
      for i := 0 to Length(vRoot.dadospedido.pedido) - 1 do
      begin
        cdsEventos.Append;
        cdsEventosid.AsString            := vRoot.dadospedido.pedido[i].id;
        cdsEventoscode.AsString          := vRoot.dadospedido.pedido[i].code;
        cdsEventoscorrelationId.AsString := vRoot.dadospedido.pedido[i].correlationId;

        sAuxiliar:= '';
        sAuxiliar:= copy(vRoot.dadospedido.pedido[i].createdAt, 9, 2) + '/';
        sAuxiliar:= sAuxiliar + copy(vRoot.dadospedido.pedido[i].createdAt, 6, 2) + '/';
        sAuxiliar:= sAuxiliar + copy(vRoot.dadospedido.pedido[i].createdAt, 1, 4);

        cdsEventosdata.AsDateTime:= StrToDate(sAuxiliar);

        sAuxiliar:= '';
        sAuxiliar:= copy(vRoot.dadospedido.pedido[i].createdAt, 12, 2) + ':';
        sAuxiliar:= sAuxiliar + copy(vRoot.dadospedido.pedido[i].createdAt, 15, 2) + ':';
        sAuxiliar:= sAuxiliar + copy(vRoot.dadospedido.pedido[i].createdAt, 18, 2);

        cdsEventoshora.AsDateTime:= StrToTime(sAuxiliar);
        cdsEventos.Post;

        if (vRoot.dadospedido.pedido[i].code = 'PLACED') and (not cdspedidos.locate('correlationId', vRoot.dadospedido.pedido[i].correlationId, [])) then
        begin
          cdsPedidos.Append;
          cdsPedidosid.AsString            := vRoot.dadospedido.pedido[i].id;
          cdsPedidoscode.AsString          := vRoot.dadospedido.pedido[i].code;
          cdsPedidoscorrelationId.AsString := vRoot.dadospedido.pedido[i].correlationId;

          sAuxiliar:= '';
          sAuxiliar:= copy(vRoot.dadospedido.pedido[i].createdAt, 9, 2) + '/';
          sAuxiliar:= sAuxiliar + copy(vRoot.dadospedido.pedido[i].createdAt, 6, 2) + '/';
          sAuxiliar:= sAuxiliar + copy(vRoot.dadospedido.pedido[i].createdAt, 1, 4);

          cdsPedidosdata.AsDateTime:= StrToDate(sAuxiliar);

          sAuxiliar:= '';
          sAuxiliar:= copy(vRoot.dadospedido.pedido[i].createdAt, 12, 2) + ':';
          sAuxiliar:= sAuxiliar + copy(vRoot.dadospedido.pedido[i].createdAt, 15, 2) + ':';
          sAuxiliar:= sAuxiliar + copy(vRoot.dadospedido.pedido[i].createdAt, 18, 2);

          cdsPedidoshora.AsDateTime:= StrToTime(sAuxiliar);

          DetalhesPedido; //Buscar Detalhes

          cdsPedidos.Post;
        end;
      end;
      cdsPedidos.First;
      cdsPedidos.EnableControls;

      HTTPClient.Free;
      Resposta.Free;
      vRoot.Free;

    except
      On E: Exception do
      begin
        if HTTPClient.ResponseCode = 404 then
          Application.MessageBox('Não há pedidos disponíveis!', 'Atenção', MB_ICONINFORMATION)
        else
          Application.MessageBox(Pchar('Atenção! ocorreu um erro ao pesquisar pedidos do IFood: ' + #13 + e.Message), 'Atenção', MB_ICONERROR);

        HTTPClient.Free;
        Resposta.Free;
        vRoot.Free;
      end;
    end;
  end
  else
    Application.MessageBox('Verifique a conexão com a internet!', 'Atenção', MB_ICONEXCLAMATION);
end;

procedure TfrmControleIFOOD.DetalhesPedido;
var HTTPClient: TIdHTTP;
    Resposta: TStringStream;
    reference: string;
    vRoot: TDetClass;
    i, j: Integer;
begin
  if Conectado then
  begin
    try
      HTTPClient := TidHTTP.Create;
      HTTPClient.ProtocolVersion := pv1_1;
      HTTPClient.Request.Accept := 'application/json';
      HTTPClient.Request.UserAgent := 'Mozilla/3.0 (compatible; Indy Library)';
      HTTPClient.IOHandler := IdSSLIOHandlerSocketOpenSSL1;

      HTTPClient.Request.CustomHeaders.FoldLines := False;
      HTTPClient.Request.CustomHeaders.Add('Authorization:Bearer ' + lblToken.Caption);

      Resposta := TStringStream.Create;

      reference:= cdsPedidoscorrelationId.AsString;

      HTTPClient.Get('https://pos-api.ifood.com.br/v1.0/orders/' + reference, Resposta);
      Resposta.Position := 0;

      Memo1.Lines.Clear;
      memo1.Lines.LoadFromStream(Resposta);

      vRoot := TDetClass.FromJsonString(Memo1.Text);

      cdsPedidosshortReference.AsInteger := StrToInt(vRoot.shortReference);
      cdsPedidoscliente.AsString         := vRoot.customer.name;
      cdsPedidostelefone.AsString        := vRoot.customer.phone;
      cdsPedidosendereco.AsString        := vRoot.deliveryAddress.streetName;
      cdsPedidosnrendereco.AsString      := vRoot.deliveryAddress.streetNumber;
      cdsPedidosbairro.AsString          := vRoot.deliveryAddress.neighborhood;
      cdsPedidoscep.AsString             := vRoot.deliveryAddress.postalCode;
      cdsPedidostotal.AsExtended         := vRoot.totalPrice;
      cdsPedidosdelivery.AsExtended      := vRoot.deliveryFee;

      //Forma de Pagamento
      if IsNumeric(Trim(vRoot.payments[0].code)) then
      begin
        qrBuscaForma.Close;
        qrBuscaForma.ParamByName('for_001').AsInteger:= StrToInt(Trim(vRoot.payments[0].code));
        qrBuscaForma.Open;

        if qrBuscaForma.RecordCount > 0 then
          cdsPedidosforma.AsString       := qrBuscaFormadescricaoforma.AsString
        else
          cdsPedidosforma.AsString       := 'N/C';
      end
      else
        cdsPedidosforma.AsString         := 'N/C';

      cdsProdutosMestre.DisableControls;

      for I := 0 to Length(vRoot.items) -1 do
      begin
        cdsProdutosMestre.Append;
        cdsProdutosMestrecorrelationId.AsString     := cdsPedidoscorrelationId.AsString;
        cdsProdutosMestreexternalCode.AsInteger     := StrToInt(vRoot.items[i].externalCode);
        cdsProdutosMestrequantidade.AsExtended      := vRoot.items[i].quantity;
        cdsProdutosMestrevalor_unitario.AsExtended  := vRoot.items[i].price;
        cdsProdutosMestrevalor_acrescimo.AsExtended := vRoot.items[i].subItemsPrice;
        cdsProdutosMestrevalor_total.AsExtended     := vRoot.items[i].totalPrice;

        qrBuscaProdutos.Close;
        qrBuscaProdutos.ParamByName('mat_004').AsString:= Trim(vRoot.items[i].externalCode);
        qrBuscaProdutos.Open;

        if qrBuscaProdutos.RecordCount > 0 then
        begin
          cdsProdutosMestreidproduto.AsInteger       := qrBuscaProdutosmat_001.AsInteger;
          cdsProdutosMestredescricao.AsString        := qrBuscaProdutosmat_003.AsString;
          cdsProdutosMestreimpressora.AsInteger      := qrBuscaProdutosmat_021.AsInteger;
          cdsProdutosMestresituacao.AsInteger        := qrBuscaProdutossit_001.AsInteger;
          cdsProdutosMestreflag_encontrado.AsBoolean := True;
        end
        else
        begin
          cdsProdutosMestreidproduto.AsInteger       := 0;
          cdsProdutosMestredescricao.AsString        := vRoot.items[i].name;
          cdsProdutosMestreimpressora.AsInteger      := 0;
          cdsProdutosMestresituacao.AsInteger        := 0;
          cdsProdutosMestreflag_encontrado.AsBoolean := False;
        end;

        cdsProdutosMestre.Post;

        //Opcionais
        for j := 0 to Length(vRoot.items[i].subitems) -1 do
        begin
          cdsProdutosOpc.Append;
          cdsProdutosOpccorrelationId.AsString        := cdsPedidoscorrelationId.AsString;
          cdsProdutosOpcexternalCodeMestre.AsInteger  := StrToInt(vRoot.items[i].externalCode);
          cdsProdutosOpcidlista.AsInteger             := cdsProdutosMestre.RecNo;
          cdsProdutosOpcexternalCodeOpc.AsInteger     := StrToInt(vRoot.items[i].subitems[j].externalCode);
          cdsProdutosOpcvalor.AsExtended              := vRoot.items[i].subitems[j].price;

          qrBuscaOpc.Close;
          qrBuscaOpc.ParamByName('id_opcional').AsInteger:= StrToInt(vRoot.items[i].subitems[j].externalCode);
          qrBuscaOpc.Open;

          if qrBuscaOpc.RecordCount > 0 then
          begin
            cdsProdutosOpcdescricao.AsString        := 'Opcional: ' + qrBuscaOpcdescricao.AsString;
            cdsProdutosOpcdescricaoabrev.AsString   := qrBuscaOpcdescricao.AsString;
            cdsProdutosOpcflag_encontrado.AsBoolean := True;
          end
          else
          begin
            cdsProdutosOpcdescricao.AsString        := 'Opcional: ' + vRoot.items[i].subitems[j].name;
            cdsProdutosOpcdescricaoabrev.AsString   := vRoot.items[i].subitems[j].name;
            cdsProdutosOpcflag_encontrado.AsBoolean := False;
          end;

          cdsProdutosOpc.Post;
        end;


        //Sem opcionais
        if Length(vRoot.items[i].subitems) = 0 then
        begin
          cdsProdutosOpc.Append;
          cdsProdutosOpccorrelationId.AsString        := cdsPedidoscorrelationId.AsString;
          cdsProdutosOpcexternalCodeMestre.AsInteger  := StrToInt(vRoot.items[i].externalCode);
          cdsProdutosOpcdescricao.AsString            := 'Sem opcionais';
          cdsProdutosOpcdescricaoabrev.AsString       := 'Sem opcionais';
          cdsProdutosOpcidlista.AsInteger             := cdsProdutosMestre.RecNo;
          cdsProdutosOpcexternalCodeOpc.AsInteger     := 0;
          cdsProdutosOpcvalor.AsExtended              := 0;
          cdsProdutosOpcflag_encontrado.AsBoolean     := True;
          cdsProdutosOpc.Post;
        end;
      end;
      cdsProdutosMestre.First;

      cdsProdutosMestre.EnableControls;

      HTTPClient.Free;
      Resposta.Free;
      vRoot.Free;

    except
      On E: Exception do
      begin
        Application.MessageBox(Pchar('Atenção! ocorreu um erro ao pesquisar pedidos (detalhes) do IFood: ' + #13 + e.Message), 'Atenção', MB_ICONERROR);
        HTTPClient.Free;
        Resposta.Free;
      end;
    end;
  end
  else
    Application.MessageBox('Verifique a conexão com a internet!', 'Atenção', MB_ICONEXCLAMATION);
end;

procedure TfrmControleIFOOD.FormCreate(Sender: TObject);
begin
  inherited;
  cdsEventos.CreateDataSet;
  cdsPedidos.CreateDataSet;
  cdsProdutosMestre.CreateDataSet;
  cdsProdutosOpc.CreateDataSet;
end;

procedure TfrmControleIFOOD.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(cdsPedidos);
  FreeAndNil(cdsEventos);
  FreeAndNil(cdsProdutosMestre);
  FreeAndNil(cdsProdutosOpc);
end;

procedure TfrmControleIFOOD.FormShow(Sender: TObject);
begin
  inherited;
  lblToken.Caption:= frmControleDelivery.sTokenIFood;
  btVerificarPedClick(nil);
end;

procedure TfrmControleIFOOD.Integration;
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
      HTTPClient.Request.CustomHeaders.Add('Authorization:Bearer ' + lblToken.Caption);

      reference:= cdsPedidoscorrelationId.AsString;

      try
        Result := HTTPClient.Post('https://pos-api.ifood.com.br/v1.0/orders/' + reference + '/statuses/integration', lParamList);
      finally
        HTTPClient.Free;
        lParamList.Free;
      end;

    except
      On E: Exception do
      begin
        Application.MessageBox(Pchar('Atenção! ocorreu um erro na integração (pedido) do IFood: ' + #13 + e.Message), 'Atenção', MB_ICONERROR);

        HTTPClient.Free;
        lParamList.Free;
      end;
    end;
  end
  else
    Application.MessageBox('Verifique a conexão com a internet!', 'Atenção', MB_ICONEXCLAMATION);
end;

procedure TfrmControleIFOOD.Confirmation;
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
      HTTPClient.Request.CustomHeaders.Add('Authorization:Bearer ' + lblToken.Caption);

      reference:= cdsPedidoscorrelationId.AsString;

      try
        Result := HTTPClient.Post('https://pos-api.ifood.com.br/v1.0/orders/' + reference + '/statuses/confirmation', lParamList);

        if HTTPClient.ResponseCode = 202 then
        begin
          CriaVendaDelivery; //Criar Delivery
          Acknowledgment; //Faz a liberação dos eventos ACK

          //Filtro para mostrar apenas os opcionais do pedido selecionado
          cdsProdutosOpc.Filtered:= False;
          cdsProdutosOpc.Filter  := 'correlationId = ' + QuotedStr(cdsPedidoscorrelationId.AsString);
          cdsProdutosOpc.Filtered:= True;

          //Apaga os opcionais do pedido selecionado
          cdsProdutosOpc.First;
          while not cdsProdutosOpc.Eof do
          begin
            cdsProdutosOpc.Delete;
          end;

          //Filtro para mostrar apenas os produtos do pedido selecionado
          cdsProdutosMestre.Filtered:= False;
          cdsProdutosMestre.Filter  := 'correlationId = ' + QuotedStr(cdsPedidoscorrelationId.AsString);
          cdsProdutosMestre.Filtered:= True;

          //Apaga os produtos do pedido selecionado
          cdsProdutosMestre.First;
          while not cdsProdutosMestre.Eof do
          begin
            cdsProdutosMestre.Delete;
          end;

          cdsProdutosOpc.Filtered:= False;
          cdsProdutosMestre.Filtered:= False;

          //Apaga o pedido da lista
          cdsPedidos.Delete;

          Application.MessageBox('O pedido foi confirmado!', 'IFood', MB_ICONINFORMATION);
        end;
      finally
        HTTPClient.Free;
        lParamList.Free;
      end;

    except
      On E: Exception do
      begin
        Application.MessageBox(Pchar('Atenção! ocorreu um erro na confirmação (pedido) do IFood: ' + #13 + e.Message), 'Atenção', MB_ICONERROR);

        HTTPClient.Free;
        lParamList.Free;
      end;
    end;
  end
  else
    Application.MessageBox('Verifique a conexão com a internet!', 'Atenção', MB_ICONEXCLAMATION);
end;

procedure TfrmControleIFOOD.Rejection;
var HTTPClient: TIdHTTP;
    lParamList: TStream;
    Result: string;
    reference: string;
begin
  if Conectado then
  begin
    try
      HTTPClient := TidHTTP.Create;
      HTTPClient.ProtocolVersion := pv1_0;
      HTTPClient.Request.Accept := 'application/json';
      HTTPClient.Request.ContentType := 'application/json';
      HTTPClient.Request.ContentEncoding := 'utf-8';
      HTTPClient.Request.UserAgent := 'Mozilla/3.0 (compatible; Indy Library)';
      HTTPClient.IOHandler := IdSSLIOHandlerSocketOpenSSL1;

      HTTPClient.Request.CustomHeaders.FoldLines := False;
      HTTPClient.Request.CustomHeaders.Add('Authorization:Bearer ' + lblToken.Caption);

      lParamList := TStringStream.Create('{"details":"Não foi possível confirmar o pedido."}', TEncoding.UTF8);

      reference:= cdsPedidoscorrelationId.AsString;

      try
        Result := HTTPClient.Post('https://pos-api.ifood.com.br/v1.0/orders/' + reference + '/statuses/rejection', lParamList);

        if HTTPClient.ResponseCode = 202 then
        begin
          Acknowledgment; //Faz a liberação dos eventos ACK

          //Filtro para mostrar apenas os opcionais do pedido selecionado
          cdsProdutosOpc.Filtered:= False;
          cdsProdutosOpc.Filter  := 'correlationId = ' + QuotedStr(cdsPedidoscorrelationId.AsString);
          cdsProdutosOpc.Filtered:= True;

          //Apaga os opcionais do pedido selecionado
          cdsProdutosOpc.First;
          while not cdsProdutosOpc.Eof do
          begin
            cdsProdutosOpc.Delete;
          end;

          //Filtro para mostrar apenas os produtos do pedido selecionado
          cdsProdutosMestre.Filtered:= False;
          cdsProdutosMestre.Filter  := 'correlationId = ' + QuotedStr(cdsPedidoscorrelationId.AsString);
          cdsProdutosMestre.Filtered:= True;

          //Apaga os produtos do pedido selecionado
          cdsProdutosMestre.First;
          while not cdsProdutosMestre.Eof do
          begin
            cdsProdutosMestre.Delete;
          end;

          cdsProdutosOpc.Filtered:= False;
          cdsProdutosMestre.Filtered:= False;

          //Apaga o pedido da lista
          cdsPedidos.Delete;

          Application.MessageBox('O pedido foi rejeitado!', 'Atenção', MB_ICONINFORMATION);
        end;
      finally
        HTTPClient.Free;
        lParamList.Free;
      end;

    except
      On E: Exception do
      begin
        Application.MessageBox(Pchar('Atenção! ocorreu um erro ao rejeitar o pedido do IFood: ' + #13 + e.Message), 'Atenção', MB_ICONERROR);
      end;
    end;
  end
  else
    Application.MessageBox('Verifique a conexão com a internet!', 'Atenção', MB_ICONEXCLAMATION);
end;

procedure TfrmControleIFOOD.Acknowledgment;
var HTTPClient: TIdHTTP;
    lParamList: TStream;
    Result: string;
    cod_eventos: string;
begin
  if Conectado then
  begin
    try
      HTTPClient := TidHTTP.Create;
      HTTPClient.ProtocolVersion := pv1_0;
      HTTPClient.Request.Accept := 'application/json';
      HTTPClient.Request.ContentType := 'application/json';
      HTTPClient.Request.ContentEncoding := 'utf-8';
      HTTPClient.Request.UserAgent := 'Mozilla/3.0 (compatible; Indy Library)';
      HTTPClient.IOHandler := IdSSLIOHandlerSocketOpenSSL1;

      HTTPClient.Request.CustomHeaders.FoldLines := False;
      HTTPClient.Request.CustomHeaders.Add('Authorization:Bearer ' + lblToken.Caption);
      HTTPClient.Request.CustomHeaders.Add('Cache-Control: no-cache');
      HTTPClient.Request.CustomHeaders.Add('Content-Type: application/json');

      //Filtro para enviar o ACK apenas do pedido selecionado
      cdsEventos.Filtered:= False;
      cdsEventos.Filter  := 'correlationId = ' + QuotedStr(cdsPedidoscorrelationId.AsString);
      cdsEventos.Filtered:= True;

      cod_eventos:= '';

      cdsEventos.First;
      while not cdsEventos.Eof do
      begin
        cod_eventos:= cod_eventos + '{"id":"' + cdsEventosid.AsString + '"},';
        cdsEventos.Next;
      end;

      //Para retirar a ultima virgula
      cod_eventos:= copy(cod_eventos, 1, length(cod_eventos)-1);

      cod_eventos:= '[' + cod_eventos + ']';

      //Array com o id dos eventos
      lParamList := TStringStream.Create(cod_eventos, TEncoding.UTF8);

      try
        Result := HTTPClient.Post('https://pos-api.ifood.com.br/v1.0/events/acknowledgment', lParamList);

        //Apaga os eventos enviados
        cdsEventos.First;
        while not cdsEventos.Eof do
        begin
          cdsEventos.Delete;
        end;

        cdsEventos.Filtered:= False;
      finally
        HTTPClient.Free;
        lParamList.Free;
      end;

    except
      On E: Exception do
      begin
        Application.MessageBox(Pchar('Atenção! ocorreu um erro ao liberar os eventos do IFood: ' + #13 + e.Message), 'Atenção', MB_ICONERROR);
      end;
    end;
  end
  else
    Application.MessageBox('Verifique a conexão com a internet!', 'Atenção', MB_ICONEXCLAMATION);
end;

procedure TfrmControleIFOOD.CriaVendaDelivery;
var str_sql, str_sql_mestre, str_sql_item, str_sql_opc: string;
    idvenda, nrvenda: integer;
begin
  //busca o último id venda
  str_sql := format( 'select coalesce(max(ven_001),0)+1 from venda where emp_001=%d', [recproj.iEmp]);
  BuscaCampo(idvenda, str_sql, '', false);

  //busca o último número venda
  str_sql := format( 'select coalesce(max(ven_029),0)+1 from venda where (ven_024 = ''D'') and (emp_001=%d)', [recproj.iEmp]);
  BuscaCampo(nrvenda, str_sql, '', false);

  //Adiciona registro na tabela venda
  str_sql_mestre :=  ' INSERT INTO venda'+
                     '  (ven_001, emp_001, ven_002, ven_004, ven_007, cli_001, sit_001, usu_001_1, '+
                     '   dat_001_1, ven_008, ven_009, ven_024, ven_023, ven_029, id_caixa_abertura, b_taxa_entrega, '+
                     '   terminal_abertura, vendas_pelo_ifood, correlation_id_ifood)'+
                     ' VALUES'+
                     '  (:ven_001, :emp_001, 0, localtimestamp, 0, :cli_001, 8, :usu_001_1, '+
                     '   localtimestamp, :ven_008, :ven_009, ''D'', ''S'', :ven_029, :id_caixa_abertura, :b_taxa_entrega, '+
                     '   :terminal_abertura, :vendas_pelo_ifood, :correlation_id_ifood)';

  ExecutaComandoSQL(str_sql_mestre, vararrayof([
                    idvenda,
                    recproj.iEmp,
                    cdsPedidosidcliente.AsInteger,
                    RecProj.iUsuario,
                    cdsPedidosdelivery.AsFloat,
                    cdsPedidostotal.AsFloat,
                    nrvenda,
                    RecProj.iIDCaixa,
                    True,
                    NomeDoTerminal,
                    True,
                    cdsPedidoscorrelationId.AsString
                    ]));

  //Adiciona registro na tabela vendaitem
  str_sql_item :=  ' INSERT INTO vendaitem'+
                   '  (ven_001, emp_001, ite_001, mat_001, ite_002, ite_003, '+
                   '   ite_005, ite_008, sit_001, ite_011, ite_012, ite_013, data_hora_lancamento)'+
                   ' VALUES'+
                   '  (:ven_001, :emp_001, :ite_001, :mat_001, :ite_002, :ite_003, '+
                   '   :ite_005, ''S'', 4, ''N'', ''N'', :ite_013, localtimestamp)';

  cdsProdutosMestre.DisableControls;
  cdsProdutosMestre.First;
  while not cdsProdutosMestre.Eof do
  begin
    ExecutaComandoSQL(str_sql_item, vararrayof([
                      idvenda,
                      recproj.iEmp,
                      cdsProdutosMestre.RecNo,
                      cdsProdutosMestreidproduto.AsInteger,
                      cdsProdutosMestrequantidade.AsFloat,
                      cdsProdutosMestrevalor_unitario.AsFloat,
                      cdsProdutosMestrevalor_total.AsFloat,
                      cdsProdutosMestreimpressora.AsInteger
                      ]));

    //Adiciona registro na tabela vendaitemopcional
    str_sql_opc :=  ' INSERT INTO vendaitemopcional'+
                    '  (id_venda, id_empresa, id_vendaitem, id_opcional)'+
                    ' VALUES'+
                    '  (:id_venda, :id_empresa, :id_vendaitem, :id_opcional)';

    //Filtro para mostrar apenas os opcionais do pedido/produto atual
    cdsProdutosOpc.Filtered:= False;
    cdsProdutosOpc.Filter  := '(correlationId = ' + QuotedStr(cdsProdutosMestrecorrelationId.AsString) + ') and (externalCodeMestre = ' + cdsProdutosMestreexternalCode.AsString + ')';
    cdsProdutosOpc.Filtered:= True;

    cdsProdutosOpc.First;
    while not cdsProdutosOpc.Eof do
    begin
      if (cdsProdutosOpcexternalCodeOpc.AsInteger > 0) then
      begin
         ExecutaComandoSQL(str_sql_opc, vararrayof([
                           idvenda,
                           recproj.iEmp,
                           cdsProdutosMestre.RecNo,
                           cdsProdutosOpcexternalCodeOpc.AsInteger
                           ]));
      end;

      cdsProdutosOpc.Next;
    end;

    cdsProdutosMestre.Next;
  end;
  cdsProdutosMestre.First;
  cdsProdutosMestre.EnableControls;
end;

end.
