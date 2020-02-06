unit uVendaTouchAbertura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, AdvPanel, Vcl.DBCGrids,
  Data.DB, MemDS, DBAccess, Uni, AdvSmoothTouchKeyBoard, AdvGlowButton,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxLabel, cxDBLabel, Vcl.StdCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, AdvGroupBox, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue;

type
  TfrmVendaTouchAbertura = class(TForm)
    pnPrincipal: TAdvPanel;
    qrGarcom: TUniQuery;
    qrGarcomid_garcom: TIntegerField;
    qrGarcomnome_gacom: TWideStringField;
    AdvSmoothTouchKeyBoard2: TAdvSmoothTouchKeyBoard;
    btConfirma: TAdvGlowButton;
    btCancela: TAdvGlowButton;
    edSenha: TEdit;
    lbSenha: TLabel;
    dsGarcom: TDataSource;
    gbCouvert: TAdvGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    edCouvertF: TEdit;
    edCouvertM: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    gbConsumacao: TAdvGroupBox;
    Label8: TLabel;
    edValorConsumacao: TJvValidateEdit;
    AdvGroupBox3: TAdvGroupBox;
    Label6: TLabel;
    DBCtrlGrid1: TDBCtrlGrid;
    cxDBLabel1: TcxDBLabel;
    qrGarcomsenha: TWideStringField;
    qrGarcomb_acesso_caixa: TBooleanField;
    qrGarcomb_alteracao_estoque: TBooleanField;
    qrGarcomb_cancelamento_mesa: TBooleanField;
    qrGarcomb_transferencia_mesa: TBooleanField;
    qrGarcomb_acesso_produtos: TBooleanField;
    qrGarcomb_acesso_clientes: TBooleanField;
    qrGarcomb_acesso_cpagar_creceber: TBooleanField;
    qrGarcomb_acesso_mov_caixa: TBooleanField;
    qrGarcomb_acesso_abertura_caixa: TBooleanField;
    qrGarcomb_alteracao_precou_venda: TBooleanField;
    qrGarcomb_acesso_venda_balcao: TBooleanField;
    qrGarcomb_acesso_venda_mesa: TBooleanField;
    qrGarcomb_acesso_venda_comanda: TBooleanField;
    qrGarcomb_acesso_venda_delivery: TBooleanField;
    qrGarcomb_acesso_venda_touch: TBooleanField;
    qrGarcomb_funcao_entregador: TBooleanField;
    qrGarcomb_funcao_garcom: TBooleanField;
    qrGarcomb_acesso_configuracao: TBooleanField;
    qrGarcomb_acesso_usuarios: TBooleanField;
    qrGarcomb_cancelamento_delivery: TBooleanField;
    qrGarcomb_acesso_venda_pdv: TBooleanField;
    qrGarcomb_cancelamento_pdv: TBooleanField;
    qrGarcomb_cancelamento_balcao: TBooleanField;
    qrGarcomb_reabrir_mesa_comanda: TBooleanField;
    qrGarcomb_permite_prefechamento_mesa_comanda: TBooleanField;
    qrGarcomb_permite_fechamento_mesa_comanda: TBooleanField;
    qrGarcomb_permite_transferencia_item: TBooleanField;
    procedure btCancelaClick(Sender: TObject);
    procedure edCouvertFEnter(Sender: TObject);
    procedure edCouvertMEnter(Sender: TObject);
    procedure edValorConsumacaoEnter(Sender: TObject);
    constructor Create(sender : Tcomponent ; b_exige_senha_garcom, b_exige_couvert : boolean ;
                       modo_tela : integer =1;  //Modo tela: 1 = abertura de venda ; 2 = confirmação de senha do garcom ; 3 = confirmação de permissao
                       campo_permissao_usuario : string = '' ); Reintroduce;
    procedure btConfirmaClick(Sender: TObject);
    procedure DBCtrlGrid1Click(Sender: TObject);
  private
    { Private declarations }
    b_exige_senha_garcom, b_exige_couvert : boolean;
    modo_tela : integer;
    campo_permissao_usuario : string;
  public
    { Public declarations }
    qtd_couvert_f, qtd_couvert_m, id_garcom, qtd_pessoas : integer;
  end;

var
  frmVendaTouchAbertura: TfrmVendaTouchAbertura;

implementation

{$R *.dfm}

uses uMenu;

procedure TfrmVendaTouchAbertura.btConfirmaClick(Sender: TObject);
begin
  self.Tag := 0;
  try
    if edCouvertF.Text<>'' then
      qtd_couvert_f := StrToInt(edCouvertF.Text)
    else
      qtd_couvert_f :=0;

    if edCouvertm.Text<>'' then
      qtd_couvert_m := StrToInt(edCouvertm.Text)
    else
      qtd_couvert_m :=0;

  except
    qtd_couvert_f := 0;
    qtd_couvert_m := 0;
    qtd_pessoas := 1;
  end;

  if (qtd_couvert_f + qtd_couvert_m > 0) then
    qtd_pessoas := qtd_couvert_f +qtd_couvert_m
  else
    qtd_pessoas := 1;

  if b_exige_senha_garcom or (modo_tela<>1) then
  begin
    if edSenha.Text <> qrGarcom.FieldByName('senha').AsString then
    begin
      Application.MessageBox('Senha inválida!', 'Atenção', MB_ICONINFORMATION + MB_OK);
      id_garcom :=0;
      abort;
    end;
  end;


  case modo_tela of
    1: //Abertura
      begin
      if b_exige_couvert and (qtd_couvert_f +qtd_couvert_m <1) then
      begin
        Application.MessageBox('Quantidade de couvert informada é inválida!', 'Atenção', MB_ICONINFORMATION + MB_OK);
        abort;
      end;

    end;
    2: //Seleção de garcom
      begin

      end;
    3: //Confirmação de pemissao
      begin
        if not qrGarcom.FieldByName(campo_permissao_usuario).asboolean then
        begin
          Application.MessageBox(pchar(format('Usuário %s não possui esta permissão!',
                                         [qrGarcom.FieldByName('nome_gacom').AsString])),
                                 'Atenção', MB_ICONWARNING + MB_OK);
          abort;
        end;
      end;

  end;

  id_garcom := qrGarcom.FieldByName('id_garcom').Asinteger;
  self.Tag :=1;
  self.Close;

end;


constructor TfrmVendaTouchAbertura.Create(sender : Tcomponent ;
              b_exige_senha_garcom, b_exige_couvert : boolean;
              modo_tela : integer = 1; campo_permissao_usuario : string = '' );
begin
  inherited Create(sender);
  self.b_exige_senha_garcom := b_exige_senha_garcom;
  self.b_exige_couvert := b_exige_couvert;
  self.modo_tela := modo_tela;
  self.campo_permissao_usuario := campo_permissao_usuario;

  //Exibe apenas os garcons para abertura(1) e seleção de garcom(3)
  //no modo de confirmação de premissao (3), exibe todos os usuarios
  if modo_tela<>3 then
    qrGarcom.sql.Add(' and b_funcao_garcom ');

  qrGarcom.Open;
  if qrGarcom.RecordCount<1 then
  begin
    Application.MessageBox('Não foi encontrado nenhum garçom!', 'Atenção', MB_ICONINFORMATION + MB_OK);
    abort;
  end;

  lbSenha.Visible := b_exige_senha_garcom;
  edSenha.Visible := b_exige_senha_garcom;

  if modo_tela <>1  then
  begin
    gbCouvert.Visible := false;
    gbConsumacao.Visible := false;
    self.Caption := 'Informe o usuário';
  end;

end;

procedure TfrmVendaTouchAbertura.DBCtrlGrid1Click(Sender: TObject);
begin
  if edSenha.CanFocus then edSenha.SetFocus;

end;

procedure TfrmVendaTouchAbertura.btCancelaClick(Sender: TObject);
begin
  self.Tag := 0;
  self.Close;
end;

procedure TfrmVendaTouchAbertura.edCouvertFEnter(Sender: TObject);
begin
  edCouvertF.SelectAll;
end;

procedure TfrmVendaTouchAbertura.edCouvertMEnter(Sender: TObject);
begin
  edCouvertM.SelectAll;
end;

procedure TfrmVendaTouchAbertura.edValorConsumacaoEnter(Sender: TObject);
begin
  edValorConsumacao.SelectAll;
end;

end.
