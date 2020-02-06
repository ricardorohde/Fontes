unit uDetalheBairro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, AdvGlowButton, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxMaskEdit,
  cxDropDownEdit, cxCalc, cxDBEdit, cxTextEdit, Data.DB, MemDS, DBAccess, Uni,
  cxCurrencyEdit;

type
  TfrmDetalheBairro = class(TfrmModelo)
    qrBairro: TUniQuery;
    qrBairrobai_001: TIntegerField;
    qrBairroemp_001: TIntegerField;
    qrBairrobai_002: TWideStringField;
    qrBairrobai_003: TFloatField;
    qrBairrosit_001: TIntegerField;
    qrBairrousu_001_1: TIntegerField;
    qrBairrousu_001_2: TIntegerField;
    qrBairrousu_001_3: TIntegerField;
    qrBairrodat_001_1: TDateTimeField;
    qrBairrodat_001_2: TDateTimeField;
    qrBairrodat_001_3: TDateTimeField;
    dsBairro: TDataSource;
    Label1: TLabel;
    Label3: TLabel;
    edBairro: TcxDBTextEdit;
    Label4: TLabel;
    qrBairrostatus_desc: TWideStringField;
    DBEdit1: TDBEdit;
    btCancelar: TAdvGlowButton;
    btSalvar: TAdvGlowButton;
    btExcluir: TAdvGlowButton;
    btEditar: TAdvGlowButton;
    btNovo: TAdvGlowButton;
    edTaxa: TcxDBCurrencyEdit;
    procedure btCancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    constructor Create (sender : tcomponent ; id_bairro : integer=0);
    procedure  ValidaBotoes;
    procedure dsBairroDataChange(Sender: TObject; Field: TField);
    procedure qrBairroNewRecord(DataSet: TDataSet);
    procedure qrBairroBeforePost(DataSet: TDataSet);
    procedure edTaxaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheBairro: TfrmDetalheBairro;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB;

constructor TfrmDetalheBairro.Create (sender : tcomponent ; id_bairro : integer=0);
begin
  inherited Create(sender);
  qrBairro.Close;
  qrBairro.ParamByName('id_bairro').AsInteger := id_bairro;
  qrBairro.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
  qrBairro.open;

  if id_bairro=0 then qrBairro.append;

end;

procedure TfrmDetalheBairro.dsBairroDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  ValidaBotoes;
end;

procedure TfrmDetalheBairro.edTaxaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if key in ['-']  then key:=#0
end;

procedure TfrmDetalheBairro.qrBairroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrBairro.FieldByName('bai_002').IsNull then
  begin
      Application.MessageBox(pchar('Descrição não informada!'), 'Atenção', MB_ICONINFORMATION);
      abort;
  end;
  if qrBairro.FieldByName('bai_003').IsNull then
  begin
      Application.MessageBox(pchar('Taxa não informada!'), 'Atenção', MB_ICONINFORMATION);
      if edTaxa.canFocus then
        edTaxa.SetFocus;
      abort;
  end;

end;

procedure TfrmDetalheBairro.qrBairroNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrBairro.FieldByName('bai_001').AsInteger := novoId('bairro','bai_001',recProj.Iemp,'emp_001');
  qrBairro.FieldByName('emp_001').AsInteger :=  RecProj.iEmp;
  qrBairro.FieldByName('usu_001_1').AsInteger := RecProj.iUsuario;
  qrBairro.FieldByName('dat_001_1').AsDateTime := Date + time;
end;

procedure  TfrmDetalheBairro.ValidaBotoes;
begin
  if qrBairro.Active then
  begin
    //aberto, nao editando...
    if qrBairro.State = dsBrowse then
    begin
      btNovo.Enabled:=true;
      btEditar.Enabled:=true;
      btExcluir.Enabled:=true;
      btSalvar.Enabled:=false;
      btCancelar.Enabled:=false;
      if qrBairro.RecordCount<=0 then
      begin
        btEditar.Enabled:=false;
        btExcluir.Enabled:=false;
      end;
    end
    else if qrBairro.State in [dsInsert, dsEdit]  then
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
    btNovo.Enabled:=true;
    btEditar.Enabled:=false;
    btExcluir.Enabled:=false;
    btSalvar.Enabled:=false;
    btCancelar.Enabled:=false;
  end;
end;

procedure TfrmDetalheBairro.btCancelarClick(Sender: TObject);
begin
  inherited;
  qrBairro.Cancel;
  qrBairro.Refresh;
end;

procedure TfrmDetalheBairro.btEditarClick(Sender: TObject);
begin
  inherited;
  qrBairro.Edit;
end;

procedure TfrmDetalheBairro.btExcluirClick(Sender: TObject);
var ret, id : integer;
begin
  inherited;
  if Application.MessageBox('Confirma a exclusão do registro? Esta ação não pode ser desfeita', 'Atenção', MB_ICONQUESTION + MB_YESNO)=mryes then
  begin
    try
      id:= qrbairro.FieldByName('bai_001').AsInteger;
      qrbairro.Delete;
    except
      on E : Exception do
      begin
        ret :=
        Application.MessageBox(pchar('Erro ao excluir o registro. A exclusão não é possível caso o item já tenha sido usado no sistema.' +
        ' Gostaria de inativar o item?'), 'Atenção', MB_ICONERROR + MB_YESNO);
        if ret=mryes then
        begin
          ExecutaComandoSQL('update bairro set sit_001=3 where bai_001='+
                             IntToStr(id) + ' and emp_001=' +IntToStr(RecProj.iEmp))
        end
        else if ret=mrClose  then
        begin
          Application.MessageBox(pchar(E.Message),'Detalhes do erro' );
        end;
      end;
    end;
  end;
  qrbairro.close;
end;

procedure TfrmDetalheBairro.btNovoClick(Sender: TObject);
begin
  inherited;
  if not qrBairro.Active then qrBairro.Open;

  qrBairro.Append;
  //pgControl.ActivePageIndex:=0;
  edBairro.SetFocus;
end;

procedure TfrmDetalheBairro.btSalvarClick(Sender: TObject);
begin
  inherited;
  qrBairro.Post;
  qrBairro.ParamByName('id_bairro').AsInteger:= qrBairro.FieldByName('bai_001').AsInteger;
  qrBairro.Refresh;
end;

end.
