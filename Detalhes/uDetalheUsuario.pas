unit uDetalheUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvPanel, AdvGlowButton, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxCheckBox, cxDBEdit, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxTextEdit,
  AdvGroupBox, Data.DB, MemDS, DBAccess, Uni, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue;

type
  TfrmDetalheUsuario = class(TForm)
    pnBotoes: TFlowPanel;
    btCancelar: TAdvGlowButton;
    btSalvar: TAdvGlowButton;
    btExcluir: TAdvGlowButton;
    btEditar: TAdvGlowButton;
    btNovo: TAdvGlowButton;
    AdvPanel1: TAdvPanel;
    qrUsuario: TUniQuery;
    qrUsuariousu_003: TWideStringField;
    qrUsuariousu_004: TWideStringField;
    qrUsuariousu_005: TBlobField;
    qrUsuariosit_001: TIntegerField;
    qrUsuariousu_001_1: TIntegerField;
    qrUsuariousu_001_2: TIntegerField;
    qrUsuariousu_001_3: TIntegerField;
    qrUsuariodat_001_1: TDateTimeField;
    qrUsuariodat_001_2: TDateTimeField;
    qrUsuariodat_001_3: TDateTimeField;
    qrUsuariob_acesso_caixa: TBooleanField;
    qrUsuariob_alteracao_estoque: TBooleanField;
    qrUsuariob_cancelamento_mesa: TBooleanField;
    qrUsuariob_transferencia_mesa: TBooleanField;
    qrUsuariob_acesso_produtos: TBooleanField;
    qrUsuariob_acesso_clientes: TBooleanField;
    qrUsuariob_acesso_cpagar_creceber: TBooleanField;
    qrUsuariob_acesso_mov_caixa: TBooleanField;
    qrUsuariob_acesso_abertura_caixa: TBooleanField;
    qrUsuariousu_001: TIntegerField;
    qrUsuariousu_002: TWideStringField;
    dsUsuario: TDataSource;
    AdvGroupBox1: TAdvGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edNome: TcxDBTextEdit;
    Label3: TLabel;
    edLogin: TcxDBTextEdit;
    Label4: TLabel;
    edSenha: TcxDBTextEdit;
    DBEdit1: TDBEdit;
    qrUsuariob_alteracao_precou_venda: TBooleanField;
    AdvGroupBox3: TAdvGroupBox;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBCheckBox12: TcxDBCheckBox;
    cxDBCheckBox13: TcxDBCheckBox;
    cxDBCheckBox14: TcxDBCheckBox;
    cxDBCheckBox15: TcxDBCheckBox;
    qrUsuariob_acesso_venda_touch: TBooleanField;
    qrUsuariob_acesso_venda_balcao: TBooleanField;
    qrUsuariob_acesso_venda_mesa: TBooleanField;
    qrUsuariob_acesso_venda_comanda: TBooleanField;
    qrUsuariob_acesso_venda_delivery: TBooleanField;
    AdvGroupBox4: TAdvGroupBox;
    cxDBCheckBox16: TcxDBCheckBox;
    cxDBCheckBox17: TcxDBCheckBox;
    qrUsuariob_funcao_entregador: TBooleanField;
    qrUsuariob_funcao_garcom: TBooleanField;
    qrUsuariob_acesso_usuarios: TBooleanField;
    qrUsuariob_acesso_configuracao: TBooleanField;
    qrUsuariob_cancelamento_delivery: TBooleanField;
    qrUsuariob_acesso_venda_pdv: TBooleanField;
    qrUsuariob_cancelamento_pdv: TBooleanField;
    qrUsuariob_cancelamento_balcao: TBooleanField;
    qrUsuariob_reabrir_mesa_comanda: TBooleanField;
    cxDBCheckBox24: TcxDBCheckBox;
    qrUsuariob_acesso_devolucao: TBooleanField;
    qrUsuariob_acesso_promocao: TBooleanField;
    qrUsuariob_libera_venda_conta_atraso: TBooleanField;
    qrUsuariob_permite_transferencia_item: TBooleanField;
    qrUsuariob_permite_fechamento_mesa_comanda: TBooleanField;
    qrUsuariob_permite_prefechamento_mesa_comanda: TBooleanField;
    qrUsuariob_acesso_nfe: TBooleanField;
    qrUsuariob_permite_pag_antecipado_mesa_comanda: TBooleanField;
    qrUsuariob_permite_juntar_mesa_comanda: TBooleanField;
    AdvGroupBox7: TAdvGroupBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox18: TcxDBCheckBox;
    cxDBCheckBox19: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox9: TcxDBCheckBox;
    cxDBCheckBox10: TcxDBCheckBox;
    cxDBCheckBox25: TcxDBCheckBox;
    cxDBCheckBox27: TcxDBCheckBox;
    cxDBCheckBox30: TcxDBCheckBox;
    AdvGroupBox5: TAdvGroupBox;
    cxDBCheckBox23: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox29: TcxDBCheckBox;
    cxDBCheckBox32: TcxDBCheckBox;
    cxDBCheckBox33: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox34: TcxDBCheckBox;
    AdvGroupBox6: TAdvGroupBox;
    cxDBCheckBox20: TcxDBCheckBox;
    cxDBCheckBox21: TcxDBCheckBox;
    cxDBCheckBox22: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox28: TcxDBCheckBox;
    btCopiarPermissoes: TAdvGlowButton;
    cxDBCheckBox35: TcxDBCheckBox;
    qrUsuariob_permite_quantidade_mesa_comanda: TBooleanField;
    cxDBCheckBox36: TcxDBCheckBox;
    cxDBCheckBox37: TcxDBCheckBox;
    qrUsuariob_permite_desconto_item_mesa_comanda: TBooleanField;
    qrUsuariob_acesso_venda_cnoturna: TBooleanField;
    cxDBCheckBox38: TcxDBCheckBox;
    cxDBCheckBox39: TcxDBCheckBox;
    qrUsuariob_permite_transferencia_estoque: TBooleanField;
    qrUsuariob_permite_visualizar_todos_caixas: TBooleanField;
    cxDBCheckBox26: TcxDBCheckBox;
    cxDBCheckBox31: TcxDBCheckBox;
    qrUsuariob_permite_reimpressao_mesa_comanda: TBooleanField;
    constructor Create(sender : Tcomponent; id_usuario : integer =0 );
    procedure btNovoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure qrUsuarioNewRecord(DataSet: TDataSet);
    procedure qrUsuarioBeforePost(DataSet: TDataSet);
    procedure  ValidaBotoes;
    procedure dsUsuarioStateChange(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure qrUsuarioAfterPost(DataSet: TDataSet);
    procedure btCopiarPermissoesClick(Sender: TObject);
    function TemEsseCampoAi(campo:string) : boolean;
  private
    { Private declarations }
    id_usuario_alteracao : integer;
  public
    { Public declarations }
  end;

var
  frmDetalheUsuario: TfrmDetalheUsuario;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uBuscaRegistro, uFuncoes;

function TfrmDetalheUsuario.TemEsseCampoAi(campo:string) : boolean;
var
  I: Integer;
begin
  result := false;
  campo := uppercase(campo);
  for I := 0 to qrUsuario.FieldCount-1 do
  begin
    result:= uppercase(qrUsuario.Fields[i].FieldName) = campo;
    if result then exit;
  end;
end;


constructor  TfrmDetalheUsuario.Create(sender: TComponent; id_usuario: Integer = 0);
begin
  inherited Create(sender);

  //frmMenu.VerificaPermissaoAcesso(RecProj.bAcessoUsuarios);
  if not frmMenu.ConfirmacaoSenha('b_acesso_usuarios', id_usuario_alteracao) then abort;

  qrUsuario.ParamByName('id_usuario').AsInteger:=id_usuario;
  qrUsuario.Open;

  if id_usuario = 0 then qrUsuario.Append;

end;


procedure  TfrmDetalheUsuario.ValidaBotoes;
begin
  if qrusuario.Active then
  begin
    //aberto, nao editando...
    if qrusuario.State = dsBrowse then
    begin
      btNovo.Enabled:=true;
      btEditar.Enabled:=true;
      btExcluir.Enabled:=true;
      btSalvar.Enabled:=false;
      btCancelar.Enabled:=false;
      btCopiarPermissoes.Enabled := false;
      if qrusuario.RecordCount<=0 then
      begin
        btEditar.Enabled:=false;
        btExcluir.Enabled:=false;
      end;
    end
    else if qrusuario.State in [dsInsert, dsEdit]  then
    begin
      btNovo.Enabled:=false;
      btEditar.Enabled:=false;
      btExcluir.Enabled:=false;
      btSalvar.Enabled:=true;
      btCancelar.Enabled:=true;
      btCopiarPermissoes.Enabled := true;
    end;
  end
  else
  begin
    btNovo.Enabled:=true;
    btEditar.Enabled:=false;
    btExcluir.Enabled:=false;
    btSalvar.Enabled:=false;
    btCancelar.Enabled:=false;
    btCopiarPermissoes.Enabled := false;
  end;
end;


procedure TfrmDetalheUsuario.btCancelarClick(Sender: TObject);
begin
  qrUsuario.Cancel;
  qrUsuario.Refresh;
end;

procedure TfrmDetalheUsuario.btCopiarPermissoesClick(Sender: TObject);
var str_sql, filtro, msg : string;
  qraux : Tuniquery;
  int_aux : integer;
  I: Integer;
begin
  if not (qrUsuario.State in [dsEdit, dsInsert]) then  exit;

  str_sql := 'select usu_001, usu_002, usu_003 from usuarios ';
  filtro :=  format('sit_001=4 and usu_001<>%d', [qrUsuario.FieldByName('usu_001').AsInteger]);

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
    str_sql,
    CriaIntegerArray([0,1,2]) ,
    CriaStringArray(['Código', 'Usuário', 'Login' ]),
    0, 1, filtro);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
  begin
    int_aux := frmBuscaRegistro.valor_retorno;
    qraux := CriaUniQuery(self, frmmenu.conexao);
    str_sql := format('select * from usuarios where usu_001=%d', [int_aux]);
    ExecutaConsultaSQL(qraux, str_sql);
    msg:=format('Deseja copiar as permissões do usuário %s?',[qraux.FieldByName('usu_002').AsString]);
    if Application.MessageBox(pchar(msg), 'Atenção', MB_ICONQUESTION + MB_YESNO)=mryes then
    begin
      for I := 0 to qraux.FieldCount-1 do
      begin
        if qraux.Fields[i] is TBooleanField then
        begin
          if TemEsseCampoAi(qraux.Fields[i].FieldName) then
            qrUsuario.FieldByName(qraux.Fields[i].FieldName).AsBoolean := qraux.Fields[i].AsBoolean;
        end;
      end;
    end;

    qraux.Free;
  end;
  frmBuscaRegistro.Free;
end;

procedure TfrmDetalheUsuario.btEditarClick(Sender: TObject);
begin
  if qrUsuario.Active then qrUsuario.Edit;
end;

procedure TfrmDetalheUsuario.btExcluirClick(Sender: TObject);
var ret, id_usuario : integer;
begin
  if Application.MessageBox('Confirma a exclusão do registro? Esta ação não pode ser desfeita', 'Atenção', MB_ICONQUESTION + MB_YESNO)=mryes then
  begin
    try
      id_usuario:= qrUsuario.FieldByName('usu_001').AsInteger;
      qrUsuario.Delete;
    except
      on E : Exception do
      begin
        ret :=
        Application.MessageBox(pchar('Erro ao excluir o registro. A exclusão não é possível caso o item já tenha sido usado no sistema.' +
        ' Gostaria de inativar o item?'), 'Atenção', MB_ICONERROR + MB_YESNO);
        if ret=mryes then
        begin
          ExecutaComandoSQL('update usuarios set sit_001=3 where usu_001='+
                             IntToStr(id_usuario));
        end
        else if ret=mrClose  then
        begin
          Application.MessageBox(pchar(E.Message),'Detalhes do erro' );
        end;
      end;
    end;
  end;
  qrUsuario.close;
end;

procedure TfrmDetalheUsuario.btNovoClick(Sender: TObject);
begin
  if not qrUsuario.Active then qrUsuario.Open;

  qrUsuario.Append;
  edNome.SetFocus;
end;

procedure TfrmDetalheUsuario.btSalvarClick(Sender: TObject);
begin
  if qrUsuario.State in [dsEdit, dsInsert] then
  begin
    qrUsuario.Post;
    qrUsuario.Refresh;
  end;
end;

procedure TfrmDetalheUsuario.dsUsuarioStateChange(Sender: TObject);
begin
  ValidaBotoes;
end;

procedure TfrmDetalheUsuario.qrUsuarioAfterPost(DataSet: TDataSet);
begin
  qrUsuario.ParamByName('id_usuario').AsInteger:=qrUsuario.FieldByName('usu_001').AsInteger;
end;

procedure TfrmDetalheUsuario.qrUsuarioBeforePost(DataSet: TDataSet);
var str_sql : string;
    query_aux : TUniQuery;
begin
  //valida campos login e senha
  if qrUsuario.FieldByName('usu_004').IsNull or  (qrUsuario.FieldByName('usu_004').AsString = '') then
  begin
    Application.MessageBox('O campo senha deve ser preenchido!', 'Atenção', MB_ICONINFORMATION);
    edSenha.SetFocus;
    abort;
  end;

  if qrUsuario.FieldByName('usu_003').IsNull or  (trim(qrUsuario.FieldByName('usu_003').AsString) = '') then
  begin
    Application.MessageBox('O campo login deve ser preenchido!', 'Atenção', MB_ICONINFORMATION);
    edLogin.SetFocus;
    abort;
  end
  else
  begin
    //verifica se ja existe login cadastrado
    str_sql := 'select 1 from usuarios where upper(usu_003)=upper('+
                  QuotedStr(trim(qrUsuario.FieldByName('usu_003').AsString)) +')';
    if qrUsuario.State = dsEdit then
      str_sql := str_sql + ' and usu_001<>'+qrUsuario.FieldByName('usu_001').AsString;
    query_aux := TUniQuery.Create(self);
    query_aux.Connection := frmMenu.conexao;
    ExecutaConsultaSQL(query_aux, str_sql);
    if query_aux.RecordCount>0 then
    begin
      Application.MessageBox('Já existe usuário com o login informado!', 'Atenção', MB_ICONINFORMATION);
      edLogin.SetFocus;
      abort;
    end;
  end;

end;

procedure TfrmDetalheUsuario.qrUsuarioNewRecord(DataSet: TDataSet);
var i : integer;
begin
  qrUsuario.FieldByName('usu_001').AsInteger := NovoId('usuarios', 'usu_001', 1, '1') ;

  for I := 0 to qrUsuario.FieldCount-1 do
  begin
    if qrUsuario.Fields[i] is TBooleanField then qrUsuario.Fields[i].AsBoolean :=false;
  end;

end;

end.
