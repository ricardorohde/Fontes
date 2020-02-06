unit Unit1;

interface

uses
  Classes, SysUtils, db, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ExtCtrls, CheckLst, Spin, ComCtrls, DBGrids,
  ACBrMTer, ACBrSocket, ACBrConsts, blcksock, DBClient, ACBrBase,
  Grids, DBAccess, Uni, Winsock, UniProvider, PostgreSQLUniProvider,
  JvComponentBase, JvTrayIcon, Vcl.Menus, Windows, AdvPanel, MemDS,
  System.Variants, JvExExtCtrls, JvRadioGroup, AdvPageControl, MidasLib, ACBrBAL;

type

  TfrmTerminais = class(TForm)
    ACBrMTer1: TACBrMTer;
    memTerminais: TClientDataSet;
    Conexao: TUniConnection;
    cdsConexao: TClientDataSet;
    cdsConexaoSERVER: TStringField;
    Provider: TPostgreSQLUniProvider;
    JvTrayIcon1: TJvTrayIcon;
    pnPrincipal: TAdvPanel;
    qrConsulta: TUniQuery;
    PopupMenu1: TPopupMenu;
    Finalizar1: TMenuItem;
    qrVendaMesa: TUniQuery;
    qrVendaMesanro_mesa: TIntegerField;
    qrVendaMesaid_mesa: TIntegerField;
    qrVendaMesaid_venda: TIntegerField;
    qrVendaMesavalor_venda: TFloatField;
    qrVendaMesastatus: TIntegerField;
    qrVendaMesadata_abertura: TDateTimeField;
    qrVendaMesatipo_venda: TWideMemoField;
    qrEmpresa: TUniQuery;
    qrEmpresaemp_001: TIntegerField;
    qrCaixa: TUniQuery;
    qrCaixaid_caixa: TIntegerField;
    qrConsultaid_material: TIntegerField;
    qrConsultadescricao: TWideStringField;
    qrConsultavalor_unit: TFloatField;
    qrConsultacodigo: TWideStringField;
    qrConsultacod_impressora: TIntegerField;
    qrInsereItem: TUniQuery;
    qraux1: TUniQuery;
    cdsCFG: TClientDataSet;
    cdsCFGNOME: TStringField;
    cdsCFGNUMERO: TFloatField;
    cdsCFGTEXTO: TStringField;
    cdsCFGLOGICO: TBooleanField;
    cdsCFGDATA: TDateTimeField;
    AdvPageControl1: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    lbPorta: TLabel;
    lbModelo: TLabel;
    Label1: TLabel;
    mOutput: TMemo;
    clbConectados: TCheckListBox;
    edPorta: TEdit;
    cbModelo: TComboBox;
    edTimeout: TEdit;
    AdvTabSheet2: TAdvTabSheet;
    RdMesacomanda: TJvRadioGroup;
    ckLoginSenha: TCheckBox;
    btSalvar: TButton;
    ACBrBAL1: TACBrBAL;
    procedure FormCreate(Sender: TObject);
    procedure ACBrMTer1RecebeDados(const IP: AnsiString;
      var Recebido: AnsiString; var EchoMode: TACBrMTerEchoMode);
    procedure ACBrMTer1Conecta(const IP: AnsiString);
    function AbreDATABASE: Boolean;
    Function GetIP(HostName: String): String;
    function Valida_Usuario(sUsuario, sSenha: String): Boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Ativar;
    procedure Finalizar1Click(Sender: TObject);
    procedure PreparaQuerySQL(var Query: TUniQuery; sql: string);
    function ExecutaConsultaSQL(var Query: TUniQuery; sql: string): Boolean;
    function ExecutaComandoSQLSimples(sql: string): integer;
    function ExecutaComandoSQL(sql: string; Parametros: variant): integer;
    function BuscaCampo(out campo: Boolean; sql, nome_registro: string;
      aviso: Boolean = true): Boolean;
    procedure AcaoMesa(sIP: AnsiString; sMesa: string; out bOK: Boolean);
    procedure AberturaDeMesa(sIP: AnsiString; id_Mesa, comanda: variant);
    procedure ReabrirMesa(sIP: AnsiString; id_Mesa: integer);
    function DataServer(Conexao: TUniConnection): TDateTime;
    function BuscaHappyHour(tipo_venda: string; id_produto: integer;
      out valor: double): Boolean;
    procedure AtualizarConexoes;
    procedure CarregarTerminais;
    procedure IniciarComandos;
    function AlterarEstadoTerminal(aIP: String; aEstado: integer): Boolean;
    procedure AvaliarRespostaTerminal(aIP: AnsiString; var aString: AnsiString);
    procedure GravaInteger(sNome: String; iValor: integer);
    function LerIntegerConfig(campo, CaminhoXML: string;
      default: integer = 0): integer;
    procedure AbreXMLCFG;
    function GetFileVersion(exeName: string): string;
    procedure abre_mesa_comanda;
    procedure GravaBoolean(sNome: String; bValor: Boolean);
    function LerBooleanConfig(campo, CaminhoXML: string; default: Boolean = False): Boolean;
    procedure btSalvarClick(Sender: TObject);
  public
    { Public declarations }
    bFinalizar, bFuncaoGarcom, bLoginSenha: Boolean;
    iEmp, iUsuario, iCaixa, numero_venda, identificador_tipo_venda,
      inicio_comanda, fim_comanda, statusMesa: integer;
    tipo_venda_mesa_comanda, venda: string;
  end;

var
  frmTerminais: TfrmTerminais;

implementation

uses
  strutils, DateUtils;

{$R *.dfm}
{ TForm1 }

// Altera o EchoMode - 23/04/2018
// Tem que adicionar na unit ACBrMTer - linha 513 (wEchoMode  := EchoMode;)
// Embaixo do código:
// if Assigned(fOnRecebeDados) then
// OnRecebeDados(wIP, wRecebido, wEchoMode);
// SE FOR ATUALIZAR O ACBR, INSERIR O CODIGO ACIMA

procedure TfrmTerminais.Ativar;
begin
  // Configura as opções do ACBrMTer e Ativa
  with ACBrMTer1 do
  begin
    Modelo := TACBrMTerModelo(cbModelo.ItemIndex);
    Port := edPorta.Text;
    EchoMode := mdeNormal;
    TimeOut := StrToInt(edTimeout.Text);
    Ativar;
  end;
  mOutput.Lines.Add('Escutando porta: ' + edPorta.Text);
end;

procedure TfrmTerminais.ACBrMTer1Conecta(const IP: AnsiString);
begin
  // Conecta os terminais
  mOutput.Lines.Add('Conectou IP: ' + IP);

  ACBrMTer1.LimparDisplay(IP);
  ACBrMTer1.EnviarTexto(IP, 'RP SISTEMAS');

  // Atualiza a lista de terminais (TCP-IP)
  AtualizarConexoes;
end;

procedure TfrmTerminais.ACBrMTer1RecebeDados(const IP: AnsiString;
  var Recebido: AnsiString; var EchoMode: TACBrMTerEchoMode);
begin
  // Recebe os dados dos terminais
  mOutput.Lines.Add('IP: ' + IP + ' - Recebido : ' + Recebido);

  // Altera o EchoMode - 23/04/2018
  // Tem que adicionar na unit ACBrMTer - linha 513 (wEchoMode  := EchoMode;)
  // Embaixo do código:
  // if Assigned(fOnRecebeDados) then
  // OnRecebeDados(wIP, wRecebido, wEchoMode);
  if memTerminais.Locate('IP_TERMINAL', IP, []) then
  begin
    if (Recebido[1] = #13) then
    begin
      if (memTerminais.FieldByName('STATUS').AsInteger = 1) then
        ACBrMTer1.EchoMode := mdePassword
      else
        ACBrMTer1.EchoMode := mdeNormal;
    end
    else
    begin
      if (memTerminais.FieldByName('STATUS').AsInteger = 2) then
        ACBrMTer1.EchoMode := mdePassword
      else
        ACBrMTer1.EchoMode := mdeNormal;
    end;
  end;

  // Executa as ações
  AvaliarRespostaTerminal(IP, Recebido);
end;

procedure TfrmTerminais.Finalizar1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmTerminais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Destroi a conexão
  cdsConexao.Close;
  Conexao.Close;

  FreeAndNil(cdsConexao);
  FreeAndNil(Conexao);

  // Destroi o client terminais
  memTerminais.Close;
  FreeAndNil(memTerminais);

  // Destroi o ACBrMTer
  if ACBrMTer1.Ativo then
  begin
    bFinalizar := true;
    ACBrMTer1.Desativar;
    ACBrMTer1.Destroy;
  end;

  // Destroi o JvTrayIcon
  JvTrayIcon1.IconVisible := False;
  JvTrayIcon1.Active := False;
  JvTrayIcon1.Destroy;

  Application.ProcessMessages;

  // Finaliza a aplicação
  Application.Terminate;
end;

procedure TfrmTerminais.FormCreate(Sender: TObject);
var
  hwndHandle: THANDLE;
  hMenuHandle: HMENU;
begin
  // Desabilitar botão Fechar (X)
  hwndHandle := FindWindow(nil, 'RP Sistemas - MicroTerminais');

  if (hwndHandle <> 0) then
  begin
    hMenuHandle := GetSystemMenu(hwndHandle, False);
    if (hMenuHandle <> 0) then
      DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
  end;

  // Utilizada na hora de fechar o sistema
  // para não executar algumas ações
  bFinalizar := False;

  // Variáveis utilizadas na venda
  bFuncaoGarcom := False;
  iEmp := 0;
  iUsuario := 0;
  iCaixa := 0;

  // Abrir Banco de Dados
  AbreDATABASE;

  // Abre empresa
  qrEmpresa.Close;
  qrEmpresa.Open;

  if qrEmpresa.RecordCount > 0 then
    iEmp := qrEmpresaemp_001.AsInteger;

  // Seleciona o caixa
  qrCaixa.Close;
  qrCaixa.ParamByName('EMPRESA').AsInteger := iEmp;
  qrCaixa.Open;

  if qrCaixa.RecordCount > 0 then
    iCaixa := qrCaixaid_caixa.AsInteger;

  // Client Terminais
  memTerminais.CreateDataSet;
  memTerminais.Open;

  // Já inicia o sistema minimizado
  Application.ShowMainForm := False;

  AbreXMLCFG;

  RdMesacomanda.ItemIndex := LerIntegerConfig('rdmesacomanda', cdsCFG.FileName);

  if RdMesacomanda.ItemIndex = 0 then
    identificador_tipo_venda := 0 // Mesa
  else
    identificador_tipo_venda := 1; // Comanda

  abre_mesa_comanda;

  ckLoginSenha.Checked:= LerBooleanConfig('LOGINSENHAMICROTER', cdsCFG.FileName);
  bLoginSenha:= LerBooleanConfig('LOGINSENHAMICROTER', cdsCFG.FileName);

  // Ativa o ACBrMTer
  Ativar;
end;

procedure TfrmTerminais.abre_mesa_comanda;
var
  str_sql: string;
  qr_aux1: TUniQuery;

begin
  if identificador_tipo_venda = 0 then // Mesa
  begin
    str_sql :=
      ' select m.mes_003 as nro_mesa, m.mes_001 as id_mesa, v.ven_001 as id_venda, '
      + ' coalesce(v.ven_009,0) as valor_venda, ' +
      ' case when v.sit_001 is null then m.sit_001 when (v.sit_001 =1 and v.ven_015=1) then 15 else v.sit_001 end as status, '
      + ' v.dat_001_1 as data_abertura, ' +
      ' coalesce(v.ven_024, ''M'') as tipo_venda ' + ' from  mesa m ' +
      ' left join venda v on (m.emp_001 = v.emp_001) and (m.mes_001 = v.ven_025) and (v.sit_001 in (8,21) or (v.sit_001 =1 and v.ven_015=1)) '
      + ' where (m.sit_001=4 and (v.sit_001 in (8,21) or (v.sit_001 =1 and v.ven_015=1)) or m.sit_001=19)'
      + ' and m.emp_001 =:emp_001 ' + ' order by nro_mesa ';
  end
  else
  begin
    str_sql :=
      ' select ven_001 as id_venda, ven_026 as nro_mesa,ven_026 as id_mesa, coalesce(ven_009,0) as valor_venda, '
      + ' case when sit_001 is null then sit_001 when (sit_001=1 and ven_015=1) then 15 '
      + ' else sit_001 end as status,  ' + ' dat_001_1 as data_abertura,  ' +
      ' coalesce (ven_024, ''C'' ) as tipo_venda ' + ' from venda ' +
      ' where ven_024=''C'' and sit_001 in (8,21) or sit_001 =1 and ven_015=1 or sit_001=19 and emp_001=:emp_001';
  end;

  qrVendaMesa.Close;
  qrVendaMesa.sql.Clear;
  qrVendaMesa.sql.Add(str_sql);
  qrVendaMesa.ParamByName('emp_001').AsInteger := iEmp;
  qrVendaMesa.Open;

  // Busca as comandas no banco de dados
  str_sql :=
    'select numero_comanda_inicio, numero_comanda_fim from empresas where emp_001=:emp_001';
  qr_aux1 := TUniQuery.Create(self);
  qr_aux1.Connection := Conexao;
  qr_aux1.Close;
  qr_aux1.sql.Clear;
  qr_aux1.sql.Add(str_sql);
  qr_aux1.ParamByName('emp_001').AsInteger := iEmp;
  qr_aux1.Open;
  inicio_comanda := qr_aux1.FieldByName('numero_comanda_inicio').AsInteger;
  fim_comanda := qr_aux1.FieldByName('numero_comanda_fim').AsInteger;

  if identificador_tipo_venda = 0 then // Tipo de venda mesa
  begin
    venda := 'M';
  end
  else
  begin
    venda := 'C';
  end;
end;

function TfrmTerminais.LerBooleanConfig(campo, CaminhoXML: string;
  default: Boolean = False): Boolean;
var
  cd: TClientDataSet;
begin
  campo := uppercase(campo);
  if FileExists(CaminhoXML) then
  begin
    cd := TClientDataSet.Create(nil);
    cd.FileName := CaminhoXML;
    cd.Open;

    if (cd.Locate('NOME', campo, [])) then
      result := cd.FieldByName('LOGICO').AsBoolean
    else
      result := true;
    cd.Free;
  end
  else
    result := true;
end;

procedure TfrmTerminais.GravaInteger(sNome: String; iValor: integer);
begin
  if FileExists(cdsCFG.FileName) then
    cdsCFG.Open
  else
    cdsCFG.CreateDataSet;
  // Quando vazio, exclui;
  if (iValor = 0) then
  begin
    if (cdsCFG.Locate('NOME', sNome, [])) then
    begin
      cdsCFG.Delete;
      cdsCFG.Close;
      Exit;
    end
    else
    begin
      cdsCFG.Close;
      Exit;
    end;
  end;
  //
  if (cdsCFG.Locate('NOME', sNome, [])) then
  begin
    cdsCFG.Edit;
  end
  else
  begin
    cdsCFG.Append;
    cdsCFGNOME.AsString := sNome;
  end;
  cdsCFGNUMERO.AsInteger := iValor;
  cdsCFG.Post;
  cdsCFG.Close;
end;

function TfrmTerminais.LerIntegerConfig(campo, CaminhoXML: string;
  default: integer = 0): integer;
var
  cd: TClientDataSet;
begin
  campo := uppercase(campo);
  if FileExists(CaminhoXML) then
  begin
    cd := TClientDataSet.Create(nil);
    cd.FileName := CaminhoXML;
    cd.Open;

    if (cd.Locate('NOME', campo, [])) then
      result := cd.FieldByName('NUMERO').AsInteger
    else
      result := default;
    cd.Free;
  end
  else
    result := default;
end;

procedure TfrmTerminais.AtualizarConexoes;
var
  I, X: integer;
begin
  // Limpa a lista de terminais
  clbConectados.Clear;

  // Atualiza a lista de terminais (TCP-IP)
  with ACBrMTer1.TCPServer.ThreadList.LockList do
    try
      for I := 0 to Count - 1 do
      begin
        with TACBrTCPServerThread(Items[I]) do
          if Active then
            clbConectados.Items.Add(TCPBlockSocket.GetRemoteSinIP);
      end;
    finally
      ACBrMTer1.TCPServer.ThreadList.UnlockList;
    end;

  Application.ProcessMessages;

  // Seleciona os terminais
  for X := 0 to clbConectados.Count - 1 do
    clbConectados.Checked[X] := true;

  // Adiciona no Client e Inicia (Pede Login)
  if not bFinalizar then
  begin
    CarregarTerminais;
    IniciarComandos;
  end;
end;

procedure TfrmTerminais.CarregarTerminais;
var
  I: integer;
begin
  // Limpa o Client
  memTerminais.EmptyDataSet;

  // Abre o Client
  memTerminais.Open;

  // Adiciona os terminais no Client
  with ACBrMTer1.TCPServer.ThreadList.LockList do
    try
      for I := 0 to Count - 1 do
        with TACBrTCPServerThread(Items[I]) do
          if Active then
          begin
            memTerminais.Insert;
            memTerminais.FieldByName('IP_TERMINAL').AsString := TCPBlockSocket.GetRemoteSinIP;
            memTerminais.FieldByName('USUARIO').AsString := '';
            memTerminais.FieldByName('SENHA').AsString := '';
            memTerminais.FieldByName('MESA').AsString := '';
            memTerminais.FieldByName('PRODUTO').AsString := '';
            memTerminais.FieldByName('QTD').AsString := '';
            memTerminais.FieldByName('RESPOSTA').AsString := '';
            memTerminais.FieldByName('STATUS').AsInteger := 0;
            memTerminais.Post;
          end;
    finally
      ACBrMTer1.TCPServer.ThreadList.UnlockList;
    end;

  Application.ProcessMessages;
end;

procedure TfrmTerminais.IniciarComandos;
begin
  // Verifica se existem terminais
  if memTerminais.IsEmpty then
  begin
    ShowMessage('Nenhum terminal disponível.');
    Exit;
  end;

  // Inicia os comandos (Pede Login) ou vai
  // direto para a mesa/comanda dependendo
  // da configuração
  with memTerminais do
  begin
    DisableControls;
    try
      First;
      while (not EOF) do
      begin
        Edit;

        if AlterarEstadoTerminal(Fields[0].AsString, 1) then
          FieldByName('STATUS').AsInteger := 1
        else
          FieldByName('STATUS').AsInteger := -1;

        Post;

        Next;
      end;
    finally
      EnableControls;
    end;
  end;
end;

function TfrmTerminais.AlterarEstadoTerminal(aIP: String;
  aEstado: integer): Boolean;
begin
  // Função Utilizada para alterar
  // os textos (status) no terminal
  Sleep(270);

  result := true;

  try
    ACBrMTer1.LimparDisplay(aIP);

    case aEstado of
      0:
        Exit;
      1:
        ACBrMTer1.EnviarTexto(aIP, 'Login: ');
      2:
        ACBrMTer1.EnviarTexto(aIP, 'Senha: ');
      3:
        begin
          if identificador_tipo_venda = 0 then
            ACBrMTer1.EnviarTexto(aIP, 'Mesa: ')
          else
            ACBrMTer1.EnviarTexto(aIP, 'Comanda: ');
        end;
      4:
        ACBrMTer1.EnviarTexto(aIP, 'Produto: ');
      5:
        ACBrMTer1.EnviarTexto(aIP, 'Qtde: ');
    end;

  except
    result := False;
  end;
end;

procedure TfrmTerminais.AvaliarRespostaTerminal(aIP: AnsiString;
  var aString: AnsiString);
var
  str_sql: string;
  valor_happy: double;
  bOK: Boolean;
begin
  with memTerminais do
  begin
    DisableControls;
    try
      // Localiza o terminal
      if Locate('IP_TERMINAL', aIP, []) then
      begin
        // Se não for ENTER
        if (aString[1] <> #13) then
        begin
          Edit;

          // Verifica se não é BACKSPACE
          // e vai gravando as respostas do terminal
          if aString <> #8 then
            FieldByName('RESPOSTA').AsString := FieldByName('RESPOSTA')
              .AsString + aString
          else
            FieldByName('RESPOSTA').AsString :=
              Copy(FieldByName('RESPOSTA').AsString, 1,
              length(FieldByName('RESPOSTA').AsString) - 1);

          Post;

          Exit;
        end;

        // Se for ENTER
        // Analisa cada resposta pelo status
        // e executa as funções/validações específicas,
        // alterando o status para o próximo
        aString := '';
        case FieldByName('STATUS').AsInteger of
          1: // USUÁRIO
            begin
              Edit;
              FieldByName('USUARIO').AsString :=
                FieldByName('RESPOSTA').AsString;
              FieldByName('RESPOSTA').AsString := '';

              // Se for vazio pede usuário novamente
              if Trim(FieldByName('USUARIO').AsString) = '' then
              begin
                FieldByName('STATUS').AsInteger := 1;
                Post;
                ACBrMTer1.LimparDisplay(aIP);
                ACBrMTer1.EnviarTexto(aIP, 'Usuario invalido');
                Sleep(1000);
                AlterarEstadoTerminal(aIP, 1);
                Exit;
              end;

              // Valida apenas o usuário
              if not(Valida_Usuario(Trim(FieldByName('USUARIO').AsString), EmptyStr)) then
              begin
                FieldByName('STATUS').AsInteger := 1;
                Post;
                ACBrMTer1.LimparDisplay(aIP);
                ACBrMTer1.EnviarTexto(aIP, 'Nao permitido');
                Sleep(1000);
                AlterarEstadoTerminal(aIP, 1);
                Exit;
              end;

              // Verifica se existe um caixa aberto
              str_sql := 'select id_situacao from caixa where id_empresa=' +
                IntToStr(iEmp) + ' order by id_caixa desc limit 1';
              qraux1 := TUniQuery.Create(self);
              qraux1.Connection := Conexao;
              qraux1.sql.Add(str_sql);
              qraux1.Open;

              if qraux1.FieldByName('id_situacao').AsInteger <> 4 then
              begin
                FieldByName('STATUS').AsInteger := 1;
                Post;
                ACBrMTer1.LimparDisplay(aIP);
                ACBrMTer1.EnviarTexto(aIP, 'NAO EXISTE CAIXA ABERTO');
                Sleep(1000);
                AlterarEstadoTerminal(aIP, 1);
                qraux1.Close;
                FreeAndNil(qraux1);
                Exit;
              end;
              qraux1.Close;
              FreeAndNil(qraux1);

              // Muda o status para senha ou
              // para a mesa/comanda
              // dependendo da configuração
              if bLoginSenha then
              begin
                if AlterarEstadoTerminal(aIP, 2) then
                  FieldByName('STATUS').AsInteger := 2
                else
                  FieldByName('STATUS').AsInteger := -1;
              end
              else
              begin
                if AlterarEstadoTerminal(aIP, 3) then
                  FieldByName('STATUS').AsInteger := 3
                else
                  FieldByName('STATUS').AsInteger := -1;
              end;

              Post;
            end;

          2: // SENHA
            begin
              Edit;
              FieldByName('SENHA').AsString := FieldByName('RESPOSTA').AsString;
              FieldByName('RESPOSTA').AsString := '';

              // Se for vazio pede senha novamente
              if Trim(FieldByName('SENHA').AsString) = '' then
              begin
                Post;
                ACBrMTer1.LimparDisplay(aIP);
                ACBrMTer1.EnviarTexto(aIP, 'Senha invalida');
                Sleep(1000);
                AlterarEstadoTerminal(aIP, 2);
                Exit;
              end;

              // Valida o usuário/senha
              if not(Valida_Usuario(Trim(FieldByName('USUARIO').AsString), Trim(FieldByName('SENHA').AsString))) then
              begin
                FieldByName('STATUS').AsInteger := 1;
                Post;
                ACBrMTer1.LimparDisplay(aIP);
                ACBrMTer1.EnviarTexto(aIP, 'Nao permitido');
                Sleep(1000);
                AlterarEstadoTerminal(aIP, 1);
                Exit;
              end;

              // Muda o status para mesa
              if AlterarEstadoTerminal(aIP, 3) then
                FieldByName('STATUS').AsInteger := 3
              else
                FieldByName('STATUS').AsInteger := -1;
              Post;

            end;

          3: // MESA
            begin
              Edit;
              FieldByName('MESA').AsString := FieldByName('RESPOSTA').AsString;
              FieldByName('RESPOSTA').AsString := '';

              // Se for vazio pede mesa novamente
              if Trim(FieldByName('MESA').AsString) = '' then
              begin
                Post;
                ACBrMTer1.LimparDisplay(aIP);
                ACBrMTer1.EnviarTexto(aIP, 'Mesa invalida');
                Sleep(1000);
                AlterarEstadoTerminal(aIP, 3);
                Exit;
              end;

              // Se for 0 (zero) finaliza e volta para o login
              if Trim(FieldByName('MESA').AsString) = '0' then
              begin
                FieldByName('STATUS').AsInteger := 1;
                Post;
                ACBrMTer1.LimparDisplay(aIP);
                ACBrMTer1.EnviarTexto(aIP, 'Finalizando...');
                Sleep(1000);
                AlterarEstadoTerminal(aIP, 1);
                Exit;
              end;

              // Verifica ação Mesa
              AcaoMesa(aIP, FieldByName('MESA').AsString, bOK);

              if not bOK then
                Exit;

              // Muda o status para produto
              if AlterarEstadoTerminal(aIP, 4) then
              begin
                FieldByName('STATUS').AsInteger := 4;
              end
              else
                FieldByName('STATUS').AsInteger := -1;
              Post;
            end;

          4: // PRODUTO
            begin
              // Verifica se a mesa/comanda está liberada para lançamento
              qrVendaMesa.Refresh;

              if qrVendaMesa.Locate('nro_mesa; tipo_venda', VarArrayOf([FieldByName('MESA').AsString, venda]), []) then
                statusMesa := qrVendaMesa.FieldByName('status').AsInteger;

              if statusMesa <> 8 then
              begin
                Edit;
                FieldByName('STATUS').AsInteger := 3;
                FieldByName('RESPOSTA').AsString := '';
                Post;
                ACBrMTer1.LimparDisplay(aIP);
                ACBrMTer1.EnviarTexto(aIP, 'Lancamento canc.');
                Sleep(1000);
                AlterarEstadoTerminal(aIP, 3);
                Exit;
              end;

              Edit;
              FieldByName('PRODUTO').AsString := FieldByName('RESPOSTA').AsString;
              FieldByName('RESPOSTA').AsString := '';

              // Se for vazio pede produto novamente
              if Trim(FieldByName('PRODUTO').AsString) = '' then
              begin
                Post;
                ACBrMTer1.LimparDisplay(aIP);
                ACBrMTer1.EnviarTexto(aIP, 'Produto invalido');
                Sleep(1000);
                AlterarEstadoTerminal(aIP, 4);
                Exit;
              end;

              // Se for 0 (zero) finaliza e volta para o login
              if Trim(FieldByName('PRODUTO').AsString) = '0' then
              begin
                FieldByName('STATUS').AsInteger := 1;
                Post;
                ACBrMTer1.LimparDisplay(aIP);
                ACBrMTer1.EnviarTexto(aIP, 'Finalizando...');
                Sleep(1000);
                AlterarEstadoTerminal(aIP, 1);
                Exit;
              end;

              // Pesquisa o produto
              qrConsulta.Close;
              qrConsulta.sql.Text :=
                'select m.mat_001 as id_material, m.mat_003 as descricao, m.mat_008 as valor_unit, mat_004 as codigo, '
                + ' coalesce(m.mat_021, 0) as cod_impressora ' +
                ' from materiais m ' +
                ' join unidades u on m.uni_001 = u.uni_001 and m.emp_001 =u.emp_001 '
                + '  and m.mat_004 = ' +
                QuotedStr(FieldByName('PRODUTO').AsString) +
                '  and m.emp_001 = ' + IntToStr(iEmp) + ' where m.sit_001 = 4 ';
              qrConsulta.Open;

              // Se não encontrou o produto pede novamente
              if qrConsulta.RecordCount = 0 then
              begin
                Post;
                ACBrMTer1.LimparDisplay(aIP);
                ACBrMTer1.EnviarTexto(aIP, 'Produto nao encontrado');
                Sleep(1000);
                AlterarEstadoTerminal(aIP, 4);
                Exit;
              end
              else // Senão mostra o produto no terminal
              begin
                ACBrMTer1.LimparDisplay(aIP);
                ACBrMTer1.EnviarTexto(aIP, Copy(qrConsultadescricao.AsString, 1,
                  16)); // Descricao do produto
                Sleep(1000);
              end;

              // Muda o status para quantidade
              if AlterarEstadoTerminal(aIP, 5) then
                FieldByName('STATUS').AsInteger := 5
              else
                FieldByName('STATUS').AsInteger := -1;
              Post;
            end;

          5: // QUANTIDADE
            begin
              // Verifica se a mesa/comanda está liberada para lançamento
              qrVendaMesa.Refresh;

              if qrVendaMesa.Locate('nro_mesa; tipo_venda', VarArrayOf([FieldByName('MESA').AsString, venda]), []) then
                statusMesa := qrVendaMesa.FieldByName('status').AsInteger;

              if statusMesa <> 8 then
              begin
                Edit;
                FieldByName('STATUS').AsInteger := 3;
                FieldByName('RESPOSTA').AsString := '';
                Post;
                ACBrMTer1.LimparDisplay(aIP);
                ACBrMTer1.EnviarTexto(aIP, 'Lancamento canc.');
                Sleep(1000);
                AlterarEstadoTerminal(aIP, 3);
                Exit;
              end;

              Edit;

              FieldByName('QTD').AsString := StringReplace(FieldByName('RESPOSTA').AsString,'.',',',[rfReplaceAll]);
              FieldByName('RESPOSTA').AsString := '';

              // Se for vazio pede quantidade novamente
              if Trim(FieldByName('QTD').AsString) = '' then
              begin
                Post;
                ACBrMTer1.LimparDisplay(aIP);
                ACBrMTer1.EnviarTexto(aIP, 'Qtde invalida');
                Sleep(1000);
                AlterarEstadoTerminal(aIP, 5);
                Exit;
              end;

              if Trim(FieldByName('QTD').AsString) > '999' then
              begin
                Post;
                ACBrMTer1.LimparDisplay(aIP);
                ACBrMTer1.EnviarTexto(aIP, 'Qtde invalida');
                Sleep(1000);
                AlterarEstadoTerminal(aIP, 5);
                Exit;
              end;

              // Se for 0 (zero) finaliza e volta para o login
              if Trim(FieldByName('QTD').AsString) = '0' then
              begin
                FieldByName('STATUS').AsInteger := 1;
                Post;
                ACBrMTer1.LimparDisplay(aIP);
                ACBrMTer1.EnviarTexto(aIP, 'Finalizando...');
                Sleep(1000);
                AlterarEstadoTerminal(aIP, 1);
                Exit;
              end;
              Post;

              qrVendaMesa.Refresh;

              if qrVendaMesa.Locate('nro_mesa; tipo_venda',
                VarArrayOf([FieldByName('MESA').AsString, venda]), []) then
                numero_venda := qrVendaMesa.FieldByName('id_venda').AsInteger
              else
                numero_venda := 0;

              if numero_venda = 0 then
              begin
                Sleep(1000);

                AcaoMesa(aIP, FieldByName('MESA').AsString, bOK);

                qrVendaMesa.Refresh;

                if qrVendaMesa.Locate('nro_mesa; tipo_venda',
                  VarArrayOf([FieldByName('MESA').AsString, venda]), []) then
                  numero_venda := qrVendaMesa.FieldByName('id_venda').AsInteger;
              end;

              if numero_venda > 0 then
              begin
                qrConsulta.Close;
                qrConsulta.sql.Text :=
                  'select m.mat_001 as id_material, m.mat_003 as descricao, m.mat_008 as valor_unit, mat_004 as codigo, '
                  + ' coalesce(m.mat_021, 0) as cod_impressora ' +
                  ' from materiais m ' +
                  ' join unidades u on m.uni_001 = u.uni_001 and m.emp_001 =u.emp_001 '
                  + '  and m.mat_004 = ' +
                  QuotedStr(FieldByName('PRODUTO').AsString) +
                  '  and m.emp_001 = ' + IntToStr(iEmp) +
                  ' where m.sit_001 = 4 ';
                qrConsulta.Open;

                try
                  str_sql :=
                    ' select coalesce (max(ite_001),0)+1 as proximo_item from vendaitem where ven_001=:ven_001 and emp_001=:emp_001';
                  qraux1 := TUniQuery.Create(self);
                  qraux1.Connection := Conexao;
                  qraux1.Close;
                  qraux1.sql.Clear;
                  qraux1.sql.Add(str_sql);
                  qraux1.ParamByName('ven_001').AsInteger := numero_venda;
                  qraux1.ParamByName('emp_001').AsInteger := iEmp;
                  qraux1.Open;
                  qrInsereItem.ParamByName('emp').AsInteger := iEmp;
                  qrInsereItem.ParamByName('ven_001').AsInteger := numero_venda;
                  qrInsereItem.ParamByName('mat_001').AsInteger :=
                    qrConsulta.FieldByName('id_material').AsInteger;
                 qrInsereItem.ParamByName('ite_002').AsFloat :=memTerminais.FieldByName('QTD').AsFloat;

                  if BuscaHappyHour(qrVendaMesa.FieldByName('tipo_venda')
                    .AsString, (qrConsulta.FieldByName('id_material')
                    .AsInteger), valor_happy) then
                  begin
                    qrInsereItem.ParamByName('ite_003').AsFloat := valor_happy;
                    qrInsereItem.ParamByName('ite_005').AsFloat := valor_happy *
                      memTerminais.FieldByName('QTD').AsFloat;
                  end
                  else
                  begin
                    qrInsereItem.ParamByName('ite_003').AsFloat :=
                      qrConsulta.FieldByName('valor_unit').AsFloat;
                    qrInsereItem.ParamByName('ite_005').AsFloat :=
                      qrConsulta.FieldByName('valor_unit').AsFloat *
                      memTerminais.FieldByName('QTD').AsFloat;
                  end;
                  qrInsereItem.ParamByName('ite_001').AsInteger :=
                    qraux1.FieldByName('proximo_item').AsInteger;
                  qrInsereItem.ParamByName('gar_001').AsInteger :=
                    memTerminais.FieldByName('USUARIO').AsInteger;
                  qrInsereItem.ParamByName('ite_013').AsInteger :=
                    qrConsulta.FieldByName('cod_impressora').AsInteger;
                  qrInsereItem.ParamByName('quantidade_impressao').AsFloat:=
                    FieldByName('QTD').AsFloat;
                  qrInsereItem.Execute;

                  // Atualiza o total venda
                  qraux1.Close;
                  qraux1.sql.Text :=
                    'update venda set ven_009 = (coalesce(ven_009, 0) + :valor) where (ven_001 = :ven_001) and (emp_001 = :emp_001)';

                  if BuscaHappyHour(qrVendaMesa.FieldByName('tipo_venda')
                    .AsString, (qrConsulta.FieldByName('id_material')
                    .AsInteger), valor_happy) then
                    qraux1.ParamByName('valor').AsFloat := valor_happy *
                      memTerminais.FieldByName('QTD').AsFloat
                  else
                    qraux1.ParamByName('valor').AsFloat :=
                      qrConsulta.FieldByName('valor_unit').AsFloat *
                      memTerminais.FieldByName('QTD').AsFloat;

                  qraux1.ParamByName('ven_001').AsInteger := numero_venda;
                  qraux1.ParamByName('emp_001').AsInteger := iEmp;
                  qraux1.Execute;
                  qraux1.Close;
                  FreeAndNil(qraux1);
                  Edit;

                  if AlterarEstadoTerminal(aIP, 4) then
                  begin
                    FieldByName('STATUS').AsInteger := 4;
                  end
                  else
                    FieldByName('STATUS').AsInteger := -1;

                  Post;

                except
                  begin
                    ACBrMTer1.LimparDisplay(aIP);
                    ACBrMTer1.EnviarTexto(aIP, 'FALHA AO LANCAR O PRODUTO');
                    Sleep(1000);
                    AlterarEstadoTerminal(aIP, 4);
                    Exit;
                  end;
                end;
              end;
            end;
        end;
      end;
    finally
      EnableControls;
    end;
  end;

end;

procedure TfrmTerminais.btSalvarClick(Sender: TObject);
begin
  if RdMesacomanda.ItemIndex = 0 then
    identificador_tipo_venda := 0 // Mesa
  else
    identificador_tipo_venda := 1; // Comanda

  GravaInteger(uppercase('Rdmesacomanda'), identificador_tipo_venda);

  GravaBoolean('LOGINSENHAMICROTER', ckLoginSenha.Checked);

  ShowMessage('O sistema será finalizado para aplicar as novas configurações. Abra o sistema novamente.');

  Close;
end;

function TfrmTerminais.AbreDATABASE: Boolean;
var
  iRet: integer;
  nome_server, msg: string;
begin
  result := False;

  if Not DirectoryExists(ExtractFilePath(Application.exeName) + 'CONF') then
    ForceDirectories(ExtractFilePath(Application.exeName) + 'CONF');

  cdsConexao.Close;
  cdsConexao.FileName := ExtractFilePath(Application.exeName) +
    'CONF\SERVER.XML';
  try
    try
      cdsConexao.Open;
    except
      cdsConexao.CreateDataSet;
    end;

    nome_server := cdsConexaoSERVER.AsString;

    try
      Conexao.Server := nome_server;
      Conexao.Connect;
    except
      Conexao.Server := GetIP(nome_server);
      Conexao.Connect;
    end;

    result := true;
  except
  end;
end;

function TfrmTerminais.BuscaHappyHour(tipo_venda: string; id_produto: integer;
  out valor: double): Boolean;
var
  qr_aux: TUniQuery;
  str_sql, str_dia, str_tipo: string;
begin
  tipo_venda := uppercase(tipo_venda);
  case DayOfTheWeek(DataServer(Conexao)) of
    1:
      str_dia := 'hh_dia_seg';
    2:
      str_dia := 'hh_dia_ter';
    3:
      str_dia := 'hh_dia_qua';
    4:
      str_dia := 'hh_dia_qui';
    5:
      str_dia := 'hh_dia_sex';
    6:
      str_dia := 'hh_dia_sab';
    7:
      str_dia := 'hh_dia_dom';
  end;

  if tipo_venda = 'M' then
    str_tipo := 'hh_tipo_mesa'
  else if tipo_venda = 'C' then
    str_tipo := 'hh_tipo_comanda'
  else if tipo_venda = 'D' then
    str_tipo := 'hh_tipo_delivery'
  else if tipo_venda = 'B' then
    str_tipo := 'hh_tipo_balcao'
  else
    str_tipo := 'hh_tipo_pdv';

  qr_aux := TUniQuery.Create(nil);
  qr_aux.Connection := Conexao;

  str_sql :=
    format('select hh_valor from materiais where mat_001=%d and %s and %s ' +
    'and emp_001=%d and hh_ativar and %s between hh_inicial and hh_final',
    [id_produto, str_dia, str_tipo, iEmp, QuotedStr(TimeToStr(Time))]);
  result := ExecutaConsultaSQL(qr_aux, str_sql);
  if result then
  begin
    valor := qr_aux.FieldByName('hh_valor').AsFloat;
  end;
  FreeAndNil(qr_aux);
end;

procedure TfrmTerminais.PreparaQuerySQL(var Query: TUniQuery; sql: string);
begin
  Query.Close;
  Query.sql.Clear;
  Query.sql.Add(sql);
end;

function TfrmTerminais.ExecutaConsultaSQL(var Query: TUniQuery;
  sql: string): Boolean;
begin
  PreparaQuerySQL(Query, sql);
  Query.Open;
  result := Query.RecordCount > 0;
end;

Function TfrmTerminais.GetIP(HostName: String): String;
var
  WSAData: TWSAData;
  HostEnt: PHostEnt;
  HostLocal: string;
begin
  WSAStartup(2, WSAData);

  if HostName = 'localhost' then
  begin
    SetLength(HostLocal, 255);
    Gethostname(PAnsiChar(HostLocal), 255);
    SetLength(HostLocal, StrLen(PChar(HostLocal)));
    HostEnt := gethostbyname(PAnsiChar(HostLocal));
  end
  else
    HostEnt := gethostbyname(PAnsiChar(PAnsiString(AnsiString(HostName))));

  with HostEnt^ do
  begin
    result := format('%d.%d.%d.%d', [Byte(h_addr^[0]), Byte(h_addr^[1]),
      Byte(h_addr^[2]), Byte(h_addr^[3])]);
  end;
  WSACleanup;
end;

function TfrmTerminais.DataServer(Conexao: TUniConnection): TDateTime;
var
  qrDATA: TUniQuery;
begin
  qrDATA := TUniQuery.Create(nil);
  //
  with qrDATA, sql do
  begin
    Connection := Conexao;
    Add(' SELECT NOW()::TIMESTAMP(0) AS DATA');
    Open;
    result := FieldByName('DATA').AsDateTime;
  end;
  FreeAndNil(qrDATA);
end;

function TfrmTerminais.Valida_Usuario(sUsuario, sSenha: String): Boolean;
var
  qr: TUniQuery;
begin
  result := False;

  qr := TUniQuery.Create(nil);
  with qr, sql do
  begin
    Connection := Conexao;

    Add(' SELECT USU.USU_001, USU.USU_002, ');
    Add(' B_ACESSO_VENDA_MESA, B_FUNCAO_GARCOM ');
    Add(' FROM USUARIOS USU ');
    Add(' WHERE upper(USU.USU_003) = upper(:USUARIO) ');
    Add(' and USU.SIT_001 = 4 ');

    if (sUsuario <> 'ADMIN') and (sSenha <> EmptyStr) then
      Add('   AND USU.USU_004 = :SENHA ');

    Add('   AND USU.DAT_001_3 IS NULL ');
    ParamByName('USUARIO').AsString := sUsuario;

    if (sUsuario <> 'ADMIN') and (sSenha <> EmptyStr) then
      ParamByName('SENHA').AsString := sSenha;

    Open;

    if RecordCount > 0 then
    begin
      iUsuario := FieldByName('usu_001').AsInteger;
      bFuncaoGarcom := FieldByName('b_funcao_garcom').AsBoolean;

      if FieldByName('b_acesso_venda_mesa').AsBoolean then
        result := true;
    end;
  end;
  FreeAndNil(qr);
end;

procedure TfrmTerminais.AcaoMesa(sIP: AnsiString; sMesa: string;
  out bOK: Boolean);
var
  str_sql: string;
  qrConsulta_Mesa, qr_aux1: TUniQuery;
begin
  qrVendaMesa.Refresh;

  bOK := true;
  if identificador_tipo_venda = 0 then // Mesa
  begin
    if Trim(sMesa) <> EmptyStr then
    begin
      qrVendaMesa.First;

      if qrVendaMesa.Locate('nro_mesa; tipo_venda', VarArrayOf([sMesa, 'M']), [])
      then
      begin
        statusMesa := qrVendaMesa.FieldByName('status').AsInteger;

        // Se a mesa não estiver aberta
        if statusMesa <> 8 then
        begin
          if statusMesa = 4 then
            // Mesa disponível (não aberta) - Faz a abertura automaticamente
            AberturaDeMesa(sIP, StrToInt(sMesa), null)
          else if statusMesa = 19 then
          // Mesa reservada - Não insere e pede mesa novamente
          begin
            ACBrMTer1.LimparDisplay(sIP);
            ACBrMTer1.EnviarTexto(sIP, 'Mesa reservada. ' + 'Lancamento canc.');
            Sleep(1000);
            AlterarEstadoTerminal(sIP, 3);
            bOK := False;
            Exit;
          end
          else if statusMesa = 21 then
          begin
            ACBrMTer1.LimparDisplay(sIP);
            ACBrMTer1.EnviarTexto(sIP, 'Em fechamento.  ' + 'Lancamento canc.');
            Sleep(1000);
            AlterarEstadoTerminal(sIP, 3);
            bOK := False;
            Exit;
          end
          else // Senão reabre a mesa
            ReabrirMesa(sIP, StrToInt(sMesa));
        end;
      end
      else // Não encontrou a mesa
      begin
        str_sql :=
          format('select mes_001 from mesa where mes_003=%d and emp_001=%d and sit_001=4',
          [StrToInt(sMesa), iEmp]);
        qrConsulta_Mesa := TUniQuery.Create(self);
        qrConsulta_Mesa.Connection := Conexao;

        if not ExecutaConsultaSQL(qrConsulta_Mesa, str_sql) then
        // Mesa inexistente - Não insere e pede mesa novamente
        begin
          ACBrMTer1.LimparDisplay(sIP);
          ACBrMTer1.EnviarTexto(sIP, 'Mesa inexistente' + 'Lancamento canc.');
          Sleep(1000);
          AlterarEstadoTerminal(sIP, 3);
          bOK := False;
          Exit;
        end
        else // Senão faz a abertura automaticamente
          AberturaDeMesa(sIP, StrToInt(sMesa), null);
        FreeAndNil(qrConsulta_Mesa);
      end;
    end;
  end
  else // Comanda
  begin
    if Trim(sMesa) <> EmptyStr then
    begin
      if qrVendaMesa.Locate('nro_mesa; tipo_venda', VarArrayOf([sMesa, 'C']), [])
      then
      begin
        statusMesa := qrVendaMesa.FieldByName('status').AsInteger;

        // Se a comanda não estiver aberta
        if statusMesa <> 8 then
        begin
          if (inicio_comanda <= StrToInt(sMesa)) and
            (fim_comanda >= StrToInt(sMesa)) and (statusMesa = 4) then
          begin
            AberturaDeMesa(sIP, null, StrToInt(sMesa));
          end
          else if statusMesa = 21 then
          begin
            ACBrMTer1.LimparDisplay(sIP);
            ACBrMTer1.EnviarTexto(sIP, 'Em fechamento.  ' + 'Lancamento canc.');
            Sleep(1000);
            AlterarEstadoTerminal(sIP, 3);
            bOK := False;
            Exit;
          end
          else // Senão reabre a comanda
            ReabrirMesa(sIP, StrToInt(sMesa));
        end;
      end
      else // Não encontrou a Comanda
      begin
        if (inicio_comanda <= StrToInt(sMesa)) and
          (fim_comanda >= StrToInt(sMesa)) then
        begin
          AberturaDeMesa(sIP, null, StrToInt(sMesa));
        end
        else // Comanda inexistente - Não insere e pede comanda novamente
        begin
          ACBrMTer1.LimparDisplay(sIP);
          ACBrMTer1.EnviarTexto(sIP, 'Comanda inexist.' + 'Lancamento canc.');
          Sleep(1000);
          AlterarEstadoTerminal(sIP, 3);
          bOK := False;
          Exit;

        end;
      end
    end;
  end;
end;

procedure PreparaQuerySQL(var Query: TUniQuery; sql: string);
begin
  Query.Close;
  Query.sql.Clear;
  Query.sql.Add(sql);
end;

function ExecutaConsultaSQL(var Query: TUniQuery; sql: string): Boolean;
begin
  PreparaQuerySQL(Query, sql);
  Query.Open;
  result := Query.RecordCount > 0;
end;

function TfrmTerminais.BuscaCampo(out campo: Boolean;
  sql, nome_registro: string; aviso: Boolean = true): Boolean;
var
  qraux1: TUniQuery;
begin
  qraux1 := TUniQuery.Create(nil);
  qraux1.Connection := Conexao;

  ExecutaConsultaSQL(qraux1, sql);
  result := qraux1.RecordCount > 0;

  if result then
    campo := qraux1.Fields[0].AsBoolean;
  FreeAndNil(qraux1);
end;

function TfrmTerminais.ExecutaComandoSQLSimples(sql: string): integer;
var
  Query: TUniQuery;
begin
  Query := TUniQuery.Create(nil);
  Query.Connection := Conexao;
  Query.sql.Add(sql);
  Query.Execute;
  result := Query.RowsAffected;
  FreeAndNil(Query);
end;

function TfrmTerminais.ExecutaComandoSQL(sql: string;
  Parametros: variant): integer;
var
  Query: TUniQuery;
  I, j: integer;
begin
  Query := TUniQuery.Create(nil);
  Query.Connection := Conexao;
  Query.sql.Add(sql);

  // Se for passado vários parâmetros
  if VarIsArray(Parametros) then
  begin
    I := VarArrayLowBound(Parametros, 1);
    j := VarArrayHighBound(Parametros, 1);
    while I <= j do
    begin
      Query.Params[I].Value := Parametros[I];
      Inc(I);
    end;
  end
  else // ou valor único
    Query.Params[0].Value := Parametros;

  Query.Execute;
  result := Query.RowsAffected;
  FreeAndNil(Query);
end;

procedure TfrmTerminais.AberturaDeMesa(sIP: AnsiString;
  id_Mesa, comanda: variant);
var
  sql: string;
  qr_aux: TUniQuery;
begin
  qr_aux := TUniQuery.Create(self);
  qr_aux.Connection := Conexao;

  // Antes de lançar verifica se não existe venda vinculada a mesa
  sql := ' select 1 from venda where ven_024=:tipo_venda and (ven_025=:id_mesa or ven_026=:comanda) and '
    + ' sit_001 in (8,15,19,21) and emp_001 = :id_empresa';
  PreparaQuerySQL(qr_aux, sql);
  qr_aux.ParamByName('id_mesa').Value := id_Mesa;
  qr_aux.ParamByName('comanda').Value := comanda;
  qr_aux.ParamByName('id_empresa').Value := iEmp;
  qr_aux.ParamByName('tipo_venda').Value := venda;
  // Recebe se é Mesa ou Comanda
  qr_aux.Open;

  if qr_aux.RecordCount > 0 then
  // Mesa vinculada - Não insere e pede mesa novamente
  begin
    ACBrMTer1.LimparDisplay(sIP);

    if venda = 'M' then
      ACBrMTer1.EnviarTexto(sIP, 'Mesa vinculada. ' + 'Lancamento canc.')
    else
      ACBrMTer1.EnviarTexto(sIP, 'Comanda vinc.   ' + 'Lancamento canc.');

    Sleep(1000);
    AlterarEstadoTerminal(sIP, 3);
    Exit;
  end;
  FreeAndNil(qr_aux);

  // Abre a venda para a mesa selecionada
  sql := ' insert into venda (ven_001, ven_002, emp_001, dat_001_1, ven_025, cli_001, '
    + ' sit_001, usu_001_1, ven_024, ven_029, ' +
    ' ven_004, ven_023, id_caixa_abertura, ven_026, terminal_abertura) ' +
    ' values ((select coalesce(max(ven_001) ,0)+1 from venda where emp_001 = :emp), 0, :emp, LOCALTIMESTAMP, :id_mesa, 0, '
    + ' 8, :id_usuario, :tipo_venda, (select coalesce(max(ven_001) ,0)+1 from  venda where emp_001 = :emp), '
    + ' LOCALTIMESTAMP, ''N'', :id_caixa_abertura,:comanda, :terminal_abertura)';
  ExecutaComandoSQL(sql, VarArrayOf([iEmp, id_Mesa, iUsuario, venda, iCaixa,
    comanda, sIP]));

  qrVendaMesa.Refresh;
end;

procedure TfrmTerminais.ReabrirMesa(sIP: AnsiString; id_Mesa: integer);
var
  permissao_reabrir: Boolean;
  id_usuario: integer;
begin
  BuscaCampo(permissao_reabrir,
    'select b_reabrir_mesa_comanda from usuarios where usu_001=' +
    IntToStr(iUsuario), '', False);

  if qrVendaMesa.FieldByName('status').AsInteger = 21 then
  begin
    if permissao_reabrir then
    begin
      ExecutaComandoSQLSimples('update venda set sit_001=8 where emp_001=' +
        IntToStr(iEmp) + ' and ven_001=' + IntToStr(id_Mesa));
      qrVendaMesa.Refresh;
    end
    else
    begin // Mesa fechada (sem acesso a reabertura) - Não insere e pede mesa novamente
      ACBrMTer1.LimparDisplay(sIP);
      if identificador_tipo_venda = 0 then // Mesa
        ACBrMTer1.EnviarTexto(sIP, 'Mesa fechada. ' + 'Lancamento canc.')
      else
        ACBrMTer1.EnviarTexto(sIP, 'Comanda fechada. ' + 'Lancamento canc.');
      Sleep(1000);
      AlterarEstadoTerminal(sIP, 3);
      Exit;
    end;
  end;
end;

procedure TfrmTerminais.AbreXMLCFG;
begin
  if cdsCFG.Active then
    cdsCFG.Close;
  if Not DirectoryExists(ExtractFilePath(Application.exeName) + 'CONF') then
    ForceDirectories(ExtractFilePath(Application.exeName) + 'CONF');
  cdsCFG.FileName := ExtractFilePath(Application.exeName) +
    'CONF\CONFIGURACAO.XML';
  if not FileExists(cdsCFG.FileName) then
  begin
    cdsCFG.CreateDataSet;
    cdsCFG.Append;
    cdsCFG.FieldByName('NOME').AsString := 'VERSAO';
    cdsCFG.FieldByName('TEXTO').AsString := GetFileVersion(ParamStr(0));
    cdsCFG.Post;
    cdsCFG.Close;
  end;
end;

function TfrmTerminais.GetFileVersion(exeName: string): string;
const
  c_StringInfo = 'StringFileInfo\040904E4\FileVersion';
var
  n, Len: cardinal;
  Buf, Value: PChar;
begin
  result := '';
  n := GetFileVersionInfoSize(PChar(exeName), n);
  if n > 0 then
  begin
    Buf := AllocMem(n);
    try
      GetFileVersionInfo(PChar(exeName), 0, n, Buf);
      if VerQueryValue(Buf, PChar(c_StringInfo), Pointer(Value), Len) then
      begin
        result := Trim(Value);
      end;
    finally
      FreeMem(Buf, n);
    end;
  end;
end;

procedure TfrmTerminais.GravaBoolean(sNome: String; bValor: Boolean);
begin
  if FileExists(cdsCFG.FileName) then cdsCFG.Open else cdsCFG.CreateDataSet;
  if (cdsCFG.Locate('NOME', sNome, [])) then
  begin
    cdsCFG.Edit;
  end
  else
  begin
    cdsCFG.Append;
    cdsCFGNOME.AsString:=sNome;
  end;
  cdsCFGLOGICO.AsBoolean:=bValor;
  cdsCFG.Post;
  cdsCFG.Close;
end;

end.
