unit uModeloCadastroSimples;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, AdvGlowButton, Data.DB,
  MemDS, DBAccess, Uni, Vcl.ExtCtrls, AdvPanel, JvDataSource, JvValidateEdit;

type
  TfrmModeloCadastroSimples = class(TfrmModelo)
    dsCadastro: TDataSource;
    qrCadastro: TUniQuery;
    btCancelar: TAdvGlowButton;
    btSalvar: TAdvGlowButton;
    btExcluir: TAdvGlowButton;
    btEditar: TAdvGlowButton;
    btNovo: TAdvGlowButton;
    jvdsCadastro: TJvDataSource;
    procedure btCancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure  ValidaBotoes;
    procedure  ValidaCamposTJValidate;
    procedure dsCadastroStateChange(Sender: TObject);
    procedure qrCadastroBeforePost(DataSet: TDataSet);
    constructor Create(sender : TComponent ; nome_campo_chave, nome_campo_status : string;
                       id_tabela : integer = 0;
                       permite_novo : boolean = true;
                       permite_editar : boolean = true;
                       permite_excluir : boolean = true;
                       nome_campo_chave2 : string ='';
                       id_tabela2 : integer = 0);  reintroduce;

  private
    { Private declarations }
    permite_novo, permite_editar, permite_excluir : boolean;
  public
    { Public declarations }
    campo_chave, campo_chave2, campo_status : string;
  end;

var
  frmModeloCadastroSimples: TfrmModeloCadastroSimples;

implementation

{$R *.dfm}

uses Funcao_DB, uMenu;

procedure  TfrmModeloCadastroSimples.ValidaCamposTJValidate;
var
  I: Integer;
  habilita : boolean;
begin
  habilita := qrCadastro.State in [dsEdit, dsInsert];
  for I := 0 to self.ComponentCount-1 do
  begin
    if self.Components[i] is TJvValidateEdit then
      TJvValidateEdit(self.Components[i]).Enabled := habilita;
  end;
end;

constructor TfrmModeloCadastroSimples.Create(sender : TComponent ; nome_campo_chave, nome_campo_status : string;
                       id_tabela : integer = 0;
                       permite_novo : boolean = true;
                       permite_editar : boolean = true;
                       permite_excluir : boolean = true;
                       nome_campo_chave2 : string ='';
                       id_tabela2 : integer = 0);
begin
  inherited Create(sender);
  qrCadastro.ParamByName(nome_campo_chave).AsInteger := id_tabela;
  if nome_campo_chave2<>'' then
    qrCadastro.ParamByName(nome_campo_chave2).AsInteger := id_tabela2;

  qrCadastro.ParamByName('id_empresa').AsInteger := recproj.iemp;

  qrCadastro.Open;

  campo_chave :=  nome_campo_chave;
  campo_chave2 := nome_campo_chave2;
  campo_status := nome_campo_status;

  self.permite_novo   := permite_novo;
  self.permite_editar := permite_editar;
  self.permite_excluir:= permite_excluir;

  btNovo.Visible    := permite_novo;
  btExcluir.visible := permite_excluir;
  btEditar.Visible  := permite_editar;

  if id_tabela=0 then  qrCadastro.Append;
  ValidaBotoes;
end;


procedure  TfrmModeloCadastroSimples.ValidaBotoes;
begin
  if qrCadastro.Active then
  begin
    //aberto, nao editando...
    if qrCadastro.State = dsBrowse then
    begin
      btNovo.Enabled:=permite_novo;
      btEditar.Enabled:=permite_editar;
      btExcluir.Enabled:=permite_excluir;
      btSalvar.Enabled:=false;
      btCancelar.Enabled:=false;
      if qrCadastro.RecordCount<=0 then
      begin
        btEditar.Enabled:=false;
        btExcluir.Enabled:=false;
      end;
    end
    else if qrCadastro.State in [dsInsert, dsEdit]  then
    begin
      btNovo.Enabled:=false;
      btEditar.Enabled:=false;
      btExcluir.Enabled:=false;
      btSalvar.Enabled:=true;
      btCancelar.Enabled:=true;
    end;
  end
  else
  begin
    btNovo.Enabled:=permite_novo;
    btEditar.Enabled:=false;
    btExcluir.Enabled:=false;
    btSalvar.Enabled:=false;
    btCancelar.Enabled:=false;
  end;
end;

procedure TfrmModeloCadastroSimples.btCancelarClick(Sender: TObject);
begin
  inherited;
  btcancelar.SetFocus;
  qrCadastro.Cancel;
  qrCadastro.Refresh;
end;

procedure TfrmModeloCadastroSimples.btEditarClick(Sender: TObject);
begin
  inherited;
  if not btEditar.Enabled then abort;

  qrCadastro.Edit;
end;

procedure TfrmModeloCadastroSimples.btExcluirClick(Sender: TObject);
var ret, id, id2 : integer;
begin
  inherited;
  if not btExcluir.Enabled then abort;
  Application.NormalizeAllTopMosts;
  //if Application.MessageBox('Confirma a exclusão do registro? Esta ação não pode ser desfeita', 'Atenção', MB_APPLMODAL + MB_ICONQUESTION + MB_YESNO)=mryes then
  if  Application.MessageBox( 'Confirma a exclusão do registro? Esta ação não pode ser desfeita', 'Atenção', MB_TOPMOST  + MB_ICONQUESTION + MB_YESNO)=mryes then
  begin
    try
      id:= qrCadastro.FieldByName(campo_chave).AsInteger;
      if campo_chave2<>'' then
        id2:=qrCadastro.FieldByName(campo_chave2).AsInteger;

      qrCadastro.Delete;
      qrCadastro.close;
    except
      on E : Exception do
      begin
        ret :=
        Application.MessageBox(pchar('Erro ao excluir o registro. A exclusão não é possível caso o item já tenha sido usado no sistema.' +
        ' Gostaria de inativar o item?'), 'Atenção', MB_ICONERROR + MB_YESNO);
        if ret=mryes then
        begin
          qrCadastro.edit;
          qrCadastro.FieldByName(campo_status).AsInteger:=3;
          qrCadastro.post;
        end
        else if ret=mrClose  then
        begin
          Application.MessageBox(pchar(E.Message),'Detalhes do erro' );
        end;
      end;
    end;
  end;
end;

procedure TfrmModeloCadastroSimples.btNovoClick(Sender: TObject);
begin
  inherited;
  if not btNovo.Enabled then abort;

  if not qrCadastro.Active then qrCadastro.Open;
  qrCadastro.Append;
end;

procedure TfrmModeloCadastroSimples.btSalvarClick(Sender: TObject);
begin
  inherited;
  btSalvar.SetFocus;
  qrCadastro.Post;
  qrCadastro.ParamByName(campo_chave).AsInteger:= qrCadastro.FieldByName(campo_chave).AsInteger;
  if campo_chave2<>'' then
    qrCadastro.ParamByName(campo_chave2).AsInteger:= qrCadastro.FieldByName(campo_chave2).AsInteger;
  qrCadastro.Refresh;
end;

procedure TfrmModeloCadastroSimples.dsCadastroStateChange(Sender: TObject);
begin
  inherited;
  ValidaBotoes;
  ValidaCamposTJValidate;
end;

procedure TfrmModeloCadastroSimples.qrCadastroBeforePost(DataSet: TDataSet);
var i : integer;
begin
  inherited;
  for I := 0 to qrCadastro.FieldCount-1 do
  begin
    if qrCadastro.Fields[i].Required and  qrCadastro.Fields[i].IsNull then
    begin
      Application.MessageBox(pchar( 'O campo obrigatório ' +  qrCadastro.Fields[i].DisplayLabel+
                                    ' não foi preenchido!' ), 'Atenção', MB_ICONWARNING);
      abort;
    end;
  end;
end;

end.
