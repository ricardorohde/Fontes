unit uLancamentocontasinclusao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.StdCtrls, Vcl.DBCtrls,
  AdvGlowButton, JvExStdCtrls, JvEdit, JvValidateEdit, Vcl.ComCtrls,
  AdvGroupBox, Vcl.ExtCtrls, AdvPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxCheckBox, Data.DB, MemDS,
  DBAccess, Uni, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TfrmLancamentocontasinclusao = class(TfrmModelo)
    AdvGroupBox3: TAdvGroupBox;
    Label1: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    dtDataDocumento: TDateTimePicker;
    edDocumento: TEdit;
    edObservacao: TEdit;
    edValor: TJvValidateEdit;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    cbTipomovimento: TComboBox;
    Label2: TLabel;
    ckCompensado: TcxCheckBox;
    ckAutocompensar: TcxCheckBox;
    qrAux1: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btConfirmaClick(Sender: TObject);
    procedure ckCompensadoClick(Sender: TObject);
    procedure ckAutocompensarClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
  private
   numero_conta_corrente:integer;
  public
    compensado,id_usuario_lancamento:integer;
    flag_tipo: string;
    id_movimento_alteracao: integer;
  end;

var
  frmLancamentocontasinclusao: TfrmLancamentocontasinclusao;

implementation

{$R *.dfm}

uses uMenu, uFuncoes, uLancamentocontas, Funcao_DB;

procedure TfrmLancamentocontasinclusao.btCancelaClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmLancamentocontasinclusao.btConfirmaClick(Sender: TObject);
var
str_sql:string;
tipo_movimento:integer;
saldo_atual_contacorrente:double;
begin
  inherited;
  if (cbTipomovimento.ItemIndex <>0)and (cbTipomovimento.ItemIndex<>1)then
  begin
    Application.MessageBox('SELECIONE O TIPO DE MOVIMENTO','ALERTA',+MB_ICONEXCLAMATION+MB_OK);
    cbTipomovimento.SetFocus;
    abort;
  end;

  if dtDataDocumento.Date=Null then
  begin
    Application.MessageBox('SELECIONE UMA DATA PARA O CRÉDITO OU DÉBITO','ALERTA',+MB_ICONEXCLAMATION+MB_OK);
    dtDataDocumento.SetFocus;
    abort;
  end;

  if edValor.Value<=0 then
  begin
    Application.MessageBox('VALOR DE DOCUMENTO INVÁLIDO','ALERTA',+MB_ICONEXCLAMATION+MB_OK);
    edValor.SetFocus;
    abort;
  end;

  if edDocumento.Text='' then
  begin
    Application.MessageBox('PREENCHA O CAMPO DOCUMENTO','ALERTA',+MB_ICONEXCLAMATION+MB_OK);
    edDocumento.SetFocus;
    abort;
  end;

  tipo_movimento:=cbTipomovimento.ItemIndex;

 {------------------------------------------------------------------------------------------------------------------
            No tabela tipo_movimento, existe uma coluna chamado tipo  na tabela tipo_movimento
            Se for tipo=0  é entrada
            Se for tipo=1  é Saida
 ------------------------------------------------------------------------------------------------------------------
           ckCompensado -Quer dizer que já foi compensado   ele recebera 0
           ckAutocompensa Quer dizer que não foi compensado, então ele recebera 1
           Foi Declarado uma variável compensado, que recebe os valores descrito acima, esse valor eu coloco na coluna
           compensado da tabela tipo_movimento
 ------------------------------------------------------------------------------------------------------------------}

  str_sql:= 'select id_contacorrente,id_empresa,saldo from contacorrente where id_contacorrente=:id_contacorrente and id_empresa=:id_empresa';
  qraux1:=tuniquery.Create(self);
  qraux1.Connection:=frmmenu.conexao;
  qraux1.SQL.Add(str_sql);
  qraux1.ParamByName('id_contacorrente').AsInteger:=numero_conta_corrente;
  qraux1.ParamByName('id_empresa').AsInteger:=RecProj.iEmp;
  qraux1.Open;

  if (compensado=0) and (dtDataDocumento.Date>date) then
  begin
    Application.MessageBox('A DATA DO LANÇAMENTO COMPENSADO NÃO PODE SER MAIOR QUE A DATA ATUAL','ALERTA',MB_ICONEXCLAMATION+MB_OK);
    abort;
  end;

  if dtDataDocumento.Date<=date then
  begin
  if tipo_movimento=0 then
    saldo_atual_contacorrente:=qraux1.FieldByName('saldo').AsFloat+edValor.Value
  else
    saldo_atual_contacorrente:=qraux1.FieldByName('saldo').AsFloat-edValor.Value;
  end;

  qraux1.close;

  if (compensado=1) and (dtDataDocumento.Date<=date) then
    compensado:=0;

  //Se for alteração, apaga o lançamento atual para inserir abaixo         Rafael
  if flag_tipo = 'A' then
  begin
    str_sql:= 'delete from tipo_movimento where id_movimento=:id_movimento and id_empresa=:id_empresa and id_contacorrente=:id_contacorrente';

    ExecutaComandoSQL(str_sql, vararrayof([id_movimento_alteracao, RecProj.iemp, numero_conta_corrente]));
  end;

  //Tudo OK, realiza o lançamento
  str_sql := ' insert into tipo_movimento '+
             '(id_empresa,tipo,data_emissao,valor,documento,observacao,compensado,id_usuario_lancamento,  '+
             ' id_contacorrente,id_situacao)  '+
             ' values(:emp, :tipo, :data_emissao, :valor, :documento, :observacao, :compensado, :id_usuario_lancamento, '+
             ' :id_contacorrente, 4);';

  ExecutaComandoSQL(str_sql, vararrayof([RecProj.iemp, tipo_movimento, dtDataDocumento.Date, edvalor.Value,
  edDocumento.Text, edObservacao.Text,compensado,id_usuario_lancamento, numero_conta_corrente]));

  if dtDataDocumento.Date<=date then
  begin
    str_sql:= 'update contacorrente set saldo=:saldo where id_empresa=:id_empresa and id_contacorrente=:id_contacorrente';
    ExecutaComandoSQL(str_sql, vararrayof([saldo_atual_contacorrente, RecProj.iemp ,numero_conta_corrente]));
  end;

  Application.MessageBox('LANÇAMENTO GRAVADO COM SUCESSO','ALERTA',+MB_ICONINFORMATION+MB_OK);

  Close;
end;

procedure TfrmLancamentocontasinclusao.ckAutocompensarClick(Sender: TObject);
begin
  inherited;
  if ckAutocompensar.Checked then
   begin
    ckCompensado.Checked:=false;
    compensado:=1;
  end;
end;

procedure TfrmLancamentocontasinclusao.ckCompensadoClick(Sender: TObject);
begin
  inherited;
  if ckCompensado.Checked then
  begin
    ckAutocompensar.checked:=false;
    compensado:=0;
  end;
end;

procedure TfrmLancamentocontasinclusao.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key= vk_return then
  Perform(WM_NEXTDLGCTL,0,0)
end;

procedure TfrmLancamentocontasinclusao.FormShow(Sender: TObject);
begin
  inherited;
  dtDataDocumento.Date:=date;
  cbTipomovimento.ItemIndex:=0;

  if flag_tipo = 'I' then //INCLUSÃO
  begin
    numero_conta_corrente:= frmLancamentocontas.id_contacorrente; // Captura o numero da conta corrente
    id_usuario_lancamento:= frmLancamentocontas.id_usuario_lancamento_contas;  // Captura o id  do operador
    ckCompensado.Checked := true;

    self.Caption:= 'INCLUSÃO';
  end
  else if flag_tipo = 'A' then //ALTERAÇÃO
  begin
    id_movimento_alteracao:= frmLancamentocontas.qrListaid_movimento.AsInteger;
    numero_conta_corrente := frmLancamentocontas.qrListaid_contacorrente.AsInteger;
    id_usuario_lancamento := frmLancamentocontas.id_usuario_lancamento_contas;
    cbTipomovimento.ItemIndex:= frmLancamentocontas.qrListatipo.AsInteger;
    dtDataDocumento.Date  := frmLancamentocontas.qrListadata_emissao.AsDateTime;
    edValor.Value         := frmLancamentocontas.qrListavalor.AsFloat;
    edDocumento.Text      := frmLancamentocontas.qrListadocumento.AsString;
    edObservacao.Text     := frmLancamentocontas.qrListaobservacao.AsString;
    ckAutocompensar.Checked := true;

    self.Caption:= 'ALTERAÇÃO';
  end;
end;

end.
