unit uDetalheTara;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, AdvGlowButton, cxCurrencyEdit, cxDBEdit, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, cxTextEdit, Data.DB, MemDS, DBAccess, Uni,
  Vcl.ExtCtrls, AdvPanel, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  TfrmDetalheTara = class(TfrmModelo)
    dsTara: TDataSource;
    qrTara: TUniQuery;
    qrTaratar_001: TIntegerField;
    qrTaraemp_001: TIntegerField;
    qrTaradescricao: TWideStringField;
    qrTarapeso: TFloatField;
    qrTarasit_001: TIntegerField;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edDescricao: TcxDBTextEdit;
    DBEdit1: TDBEdit;
    edPeso: TcxDBCurrencyEdit;
    btNovo: TAdvGlowButton;
    btEditar: TAdvGlowButton;
    btExcluir: TAdvGlowButton;
    btSalvar: TAdvGlowButton;
    btCancelar: TAdvGlowButton;
    constructor Create (sender : tcomponent; id_tara : integer=0);
    procedure dsTaraDataChange(Sender: TObject; Field: TField);
    procedure edPesoKeyPress(Sender: TObject; var Key: Char);
    procedure qrTaraBeforePost(DataSet: TDataSet);
    procedure qrTaraNewRecord(DataSet: TDataSet);
    procedure ValidaBotoes;
    procedure btCancelarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalheTara: TfrmDetalheTara;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB;

procedure TfrmDetalheTara.btCancelarClick(Sender: TObject);
begin
  inherited;
  qrTara.Cancel;
  qrTara.Refresh;
end;

procedure TfrmDetalheTara.btEditarClick(Sender: TObject);
begin
  inherited;

  qrTara.Edit;
  edDescricao.SetFocus;
end;

procedure TfrmDetalheTara.btExcluirClick(Sender: TObject);
var ret, id : integer;
begin
  inherited;
  if Application.MessageBox('Confirma a exclusão do registro? Esta ação não pode ser desfeita!', 'Atenção', MB_ICONQUESTION + MB_YESNO)=mryes then
  begin
    try
      id:= qrTara.FieldByName('tar_001').AsInteger;
      qrTara.Delete;
      Close;
    except
      on E : Exception do
      begin
        ret :=
        Application.MessageBox(pchar('Erro ao excluir o registro. A exclusão não é possível caso o item já tenha sido usado no sistema.' +
        ' Gostaria de inativar o item?'), 'Atenção', MB_ICONERROR + MB_YESNO);
        if ret=mryes then
        begin
          ExecutaComandoSQL('update tara set sit_001=3 where tar_001='+
                             IntToStr(id) + ' and emp_001=' +IntToStr(RecProj.iEmp))
        end
        else if ret=mrClose  then
        begin
          Application.MessageBox(pchar(E.Message),'Detalhes do erro' );
        end;
      end;
    end;
  end;
end;

procedure TfrmDetalheTara.btNovoClick(Sender: TObject);
begin
  inherited;
  if not qrTara.Active then qrTara.Open;

  qrTara.Append;
  edDescricao.SetFocus;
end;

procedure TfrmDetalheTara.btSalvarClick(Sender: TObject);
begin
  inherited;
  qrTara.Post;
  qrTara.ParamByName('id_tara').AsInteger:= qrTara.FieldByName('tar_001').AsInteger;
  qrTara.Refresh;
end;

constructor TfrmDetalheTara.Create (sender : tcomponent; id_tara : integer=0);
begin
  inherited Create(sender);
  qrTara.Close;
  qrTara.ParamByName('id_tara').AsInteger    := id_tara;
  qrTara.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
  qrTara.open;

  if id_tara=0 then
    qrTara.append;
end;

procedure TfrmDetalheTara.dsTaraDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  ValidaBotoes;
end;

procedure TfrmDetalheTara.edPesoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key in ['-'] then key:= #0;
end;

procedure TfrmDetalheTara.qrTaraBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrTara.FieldByName('descricao').AsString = EmptyStr then
  begin
    Application.MessageBox(pchar('Descrição não informada!'), 'Atenção', MB_ICONINFORMATION);
    edDescricao.SetFocus;
    abort;
  end;
  if qrTara.FieldByName('peso').IsNull then
  begin
    Application.MessageBox(pchar('Tara (Peso) não informada!'), 'Atenção', MB_ICONINFORMATION);
    if edPeso.canFocus then
      edPeso.SetFocus;
    abort;
  end;
end;

procedure TfrmDetalheTara.qrTaraNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrTara.FieldByName('tar_001').AsInteger := novoId('tara','tar_001',recProj.Iemp,'emp_001');
  qrTara.FieldByName('emp_001').AsInteger := RecProj.iEmp;
  qrTara.FieldByName('sit_001').AsInteger := 4;
end;

procedure TfrmDetalheTara.ValidaBotoes;
begin
  if qrTara.Active then
  begin
    //aberto, nao editando...
    if qrTara.State = dsBrowse then
    begin
      btNovo.Enabled:=true;
      btEditar.Enabled:=true;
      btExcluir.Enabled:=true;
      btSalvar.Enabled:=false;
      btCancelar.Enabled:=false;
      if qrTara.RecordCount<=0 then
      begin
        btEditar.Enabled:=false;
        btExcluir.Enabled:=false;
      end;
    end
    else if qrTara.State in [dsInsert, dsEdit]  then
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

end.
