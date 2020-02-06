unit uControleMesaUtilitarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  AdvGlowButton, Vcl.StdCtrls, AdvGroupBox, System.Actions, Vcl.ActnList,
  ACBrBase, ACBrSAT, System.ImageList, Vcl.ImgList, cxGraphics, ACBrSATClass, pcnRede;

type
  TfrmControleMesaUtilitarios = class(TfrmModelo)
    imgListMenu40: TcxImageList;
    ACBrSAT: TACBrSAT;
    ActionList1: TActionList;
    acConsultarSat: TAction;
    acReimprimirnaofiscal: TAction;
    acGaveta: TAction;
    acBalanca: TAction;
    acReimpressaosat: TAction;
    acCancelarcupomnaofiscal: TAction;
    acImpressorafiscal: TAction;
    acSangria: TAction;
    acSuprimento: TAction;
    acCancelarsat: TAction;
    acReimpressaonaofiscal: TAction;
    acSair: TAction;
    AdvGroupBox1: TAdvGroupBox;
    AdvGlowButton1: TAdvGlowButton;
    btnSangria: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton10: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    btReimprirmircupomnaofiscal: TAdvGlowButton;
    AdvGlowButton11: TAdvGlowButton;

    procedure GetCodigoAtivacao(var Chave: AnsiString);
    procedure GetAssinatura(var Chave: AnsiString);
    procedure acReimpressaonaofiscalExecute(Sender: TObject);
    procedure acReimpressaosatExecute(Sender: TObject);
    procedure acReimprimirnaofiscalExecute(Sender: TObject);
    procedure acCancelarcupomnaofiscalExecute(Sender: TObject);
    procedure acSangriaExecute(Sender: TObject);
    procedure acSuprimentoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acSairExecute(Sender: TObject);
    procedure acConsultarSatExecute(Sender: TObject);
    procedure acImpressorafiscalExecute(Sender: TObject);
    procedure acGavetaExecute(Sender: TObject);
    procedure acCancelarsatExecute(Sender: TObject);
    procedure acBalancaExecute(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControleMesaUtilitarios: TfrmControleMesaUtilitarios;

implementation

{$R *.dfm}

uses uMenu, uConfiguracao, uReimprimirCancelarCupom, uConsVendaSAT,
  uCaixaLancaMovimento, untConstSAT, uPDVMenuFiscal, uFuncoes,
  uControleMesaUtilitariosBalanca;

procedure TfrmControleMesaUtilitarios.acBalancaExecute(Sender: TObject);
begin
  inherited;
  frmControleMesaUtilitariosBalanca := TfrmControleMesaUtilitariosBalanca.create(self);
  frmControleMesaUtilitariosBalanca.ShowModal;
  frmControleMesaUtilitariosBalanca.free;

end;

procedure TfrmControleMesaUtilitarios.acCancelarcupomnaofiscalExecute(Sender: TObject);
begin
  frmReimpressaoCupom := TfrmReimpressaoCupom.create(self);
  frmReimpressaoCupom.ShowModal;
  frmReimpressaoCupom.Free;
end;

procedure TfrmControleMesaUtilitarios.acCancelarsatExecute(Sender: TObject);
begin
  frmConsVendaSAT := TfrmConsVendaSAT.Create(self);
  frmConsVendaSAT.Showmodal;
  frmConsVendaSAT.free;
end;

procedure TfrmControleMesaUtilitarios.acConsultarSatExecute(Sender: TObject);
begin
  ACBrSAT.DesInicializar;
  ACBrSAT.Inicializar;
  ACBrSAT.InicializaCFe;
  ACBrSAT.CFe.IdentarXML := true;
  ACBrSAT.CFe.TamanhoIdentacao := 3;
  ACBrSAT.ConsultarSAT;

  if ACBrSAT.Resposta.codigoDeRetorno = 8000 then
     ShowMessage(ACBrSAT.Resposta.mensagemRetorno)
  else
     ShowMessage(ACBrSAT.Resposta.mensagemRetorno);
end;

procedure TfrmControleMesaUtilitarios.acGavetaExecute(Sender: TObject);
begin
  frmmenu.AbrirGaveta;
end;

procedure TfrmControleMesaUtilitarios.acImpressorafiscalExecute(Sender: TObject);
begin
  frmPDVMenuFiscalECF := TfrmPDVMenuFiscalECF.Create(self);
  frmPDVMenuFiscalECF.Showmodal;
  frmPDVMenuFiscalECF.Free;
end;

procedure TfrmControleMesaUtilitarios.acReimpressaonaofiscalExecute(Sender: TObject);
begin
  frmReimpressaoCupom := TfrmReimpressaoCupom.create(self, 'I');
  frmReimpressaoCupom.ShowModal;
  frmReimpressaoCupom.Free;

end;

procedure TfrmControleMesaUtilitarios.acReimpressaosatExecute(Sender: TObject);
begin
  frmConsVendaSAT := TfrmConsVendaSAT.Create(self);
  frmConsVendaSAT.Showmodal;
  frmConsVendaSAT.free;
end;


procedure TfrmControleMesaUtilitarios.acReimprimirnaofiscalExecute(Sender: TObject);
begin
  frmReimpressaoCupom := TfrmReimpressaoCupom.create(self, 'I');
  frmReimpressaoCupom.ShowModal;
  frmReimpressaoCupom.Free;
end;


procedure TfrmControleMesaUtilitarios.acSangriaExecute(Sender: TObject);
begin
  frmCaixaLancaMovimento := tfrmCaixaLancaMovimento.Create(Self, 'S');
  frmCaixaLancaMovimento.ShowModal;
  frmCaixaLancaMovimento.free;
end;

procedure TfrmControleMesaUtilitarios.acSuprimentoExecute(Sender: TObject);
begin
 frmCaixaLancaMovimento := tfrmCaixaLancaMovimento.Create(Self, 'E');
  frmCaixaLancaMovimento.ShowModal;
  frmCaixaLancaMovimento.free;
end;

procedure TfrmControleMesaUtilitarios.acSairExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmControleMesaUtilitarios.FormCreate(Sender: TObject);
begin
  acGaveta.Enabled := LerBooleanConfig('CKUTILIZAGAVETA',frmMenu.cdsCFG.FileName);
  acBalanca.Enabled := LerBooleanConfig('CKUTILIZABALANCA',frmMenu.cdsCFG.FileName);

  //carrega as configurações do SAT
  ACBrSat.OnGetcodigoDeAtivacao := GetCodigoAtivacao;
  ACBrSat.OnGetsignAC := GetAssinatura;

  // Caminhos e dados da DLL
  // FACBrSat.PastaCFeVenda        := PATH_CFE_VENDA;
  // FACBrSat.PastaCFeCancelamento := PATH_CFE_CANC;
  ACBrSat.ArqLOG := PATH_LOG_ACBR + 'LogAcbr_' + FormatDateTime('ddmmyyyy',
    Date) + '.log';
  ACBrSat.Modelo := satDinamico_stdcall;
  ACBrSat.NomeDLL := NOME_DLL;

  // Configurações Padrão e Dados da Software House
  ACBrSat.Config.EhUTF8 := True;
  ACBrSat.Config.infCFe_versaoDadosEnt := VERSAO_LAYOUT;
  ACBrSat.Config.ide_CNPJ := CNPJ_SOFTHOUSE;

  ACBrSat.Rede.tipoInter := TTipoInterface(TIPOINTERFACE);
  ACBrSat.Rede.SSID := SSID;
  ACBrSat.Rede.seg := TSegSemFio(seg);
  ACBrSat.Rede.codigo := codigo;
  ACBrSat.Rede.tipoLan := TTipoLan(tipoLan);
  ACBrSat.Rede.lanIP := lanIP;
  ACBrSat.Rede.lanMask := lanMask;
  ACBrSat.Rede.lanGW := lanGW;
  ACBrSat.Rede.lanDNS1 := lanDNS1;
  ACBrSat.Rede.lanDNS2 := lanDNS2;
  ACBrSat.Rede.usuario := usuario;
  ACBrSat.Rede.senha := senha;
  ACBrSat.Rede.proxy := proxy;
  ACBrSat.Rede.proxy_ip := proxy_ip;
  ACBrSat.Rede.proxy_porta := proxy_porta;
  ACBrSat.Rede.proxy_user := proxy_user;
  ACBrSat.Rede.proxy_senha := proxy_senha;
end;


procedure TfrmControleMesaUtilitarios.GetCodigoAtivacao(var Chave: AnsiString);
begin
  Chave := CODIGO_ATIVACAO_SAT;
end;

procedure TfrmControleMesaUtilitarios.GetAssinatura(var Chave: AnsiString);
begin
  Chave := ASSINATURA_AC_SAT;
end;


end.
