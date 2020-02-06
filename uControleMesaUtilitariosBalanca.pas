unit uControleMesaUtilitariosBalanca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  AdvGlowButton, ACBrBase, ACBrBAL, ACBrDevice, dxGDIPlusClasses, Vcl.StdCtrls,
  AdvGroupBox;

type
  TfrmControleMesaUtilitariosBalanca = class(TfrmModelo)
    btCancelar: TAdvGlowButton;
    ACBrBAL1: TACBrBAL;
    AdvGroupBox3: TAdvGroupBox;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    sttPeso: TStaticText;
    sttResposta: TStaticText;
    Memo1: TMemo;
    btBalancaLerPeso: TAdvGlowButton;
    Image1: TImage;
    procedure btCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btBalancaLerPesoClick(Sender: TObject);
  private
    { Private declarations }
    ItimeOutBalanca : integer;
  public
    { Public declarations }
  end;

var
  frmControleMesaUtilitariosBalanca: TfrmControleMesaUtilitariosBalanca;

implementation

{$R *.dfm}

uses uFuncoes, uMenu;

procedure TfrmControleMesaUtilitariosBalanca.btBalancaLerPesoClick(
  Sender: TObject);
begin
  inherited;
  btBalancaLerPeso.Enabled := false;
  try
    // se houver conexão aberta, Fecha a conexão
    if acbrBal1.Ativo then ACBrBAL1.Desativar;

    // Conecta com a balança
    ACBrBAL1.Ativar;

    // lê o peso na balança
    if iTimeOutBalanca<=1000 then  iTimeOutBalanca := 2000 ;

    ACBrBAL1.LePeso( iTimeOutBalanca );
    ACBrBAL1.Desativar;
  except
    on E : Exception do
    begin
    application.MessageBox(pchar('Erro ao executar o teste, verifique as configurações! Detalhes do erro:'+#13#10+
                                  E.Message ),'Atenção', MB_ICONERROR );
    end;
  end;
  btBalancaLerPeso.Enabled := true;
end;

procedure TfrmControleMesaUtilitariosBalanca.btCancelarClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TfrmControleMesaUtilitariosBalanca.FormCreate(Sender: TObject);
begin
  inherited;
  ACBrBAL1.Modelo           := TACBrBALModelo(  LerIntegerConfig('CBBALANCAMODELO', frmMenu.cdsCFG.FileName));
  ACBrBAL1.Device.HandShake := TACBrHandShake(LerIntegerConfig('CBBALANCAHANDSHAKING', frmMenu.cdsCFG.FileName));
  ACBrBAL1.Device.Parity    := TACBrSerialParity(LerIntegerConfig('CBBALANCAPARITY', frmMenu.cdsCFG.FileName));
  ACBrBAL1.Device.Stop      := TACBrSerialStop(LerIntegerConfig('CBBALANCASTOPBITS', frmMenu.cdsCFG.FileName));
  ACBrBAL1.Device.Data      := StrToInt( LerStringConfig('CBBALANCADATABITS', frmMenu.cdsCFG.FileName) );
  ACBrBAL1.Device.Baud      := StrToInt( LerStringConfig('CBBALANCABAUD', frmMenu.cdsCFG.FileName) );
  ACBrBAL1.Device.Porta     := LerStringConfig('CBBALANCAPORTASERIAL', frmMenu.cdsCFG.FileName);
  ACBrBAL1.ArqLOG           := format('%sLog\Balanca\Balanca_%s.log' ,[ExtractFilePath(Application.ExeName) , FormatDateTime('ddmmyyyy', Date)]);
  iTimeOutBalanca := LerIntegerConfig ('EDBALANCATIMEOUT', frmMenu.cdsCFG.FileName);
  //cria o diretório de log
  if Not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Log\Balanca') then
    ForceDirectories(ExtractFilePath(Application.ExeName) + 'Log\Balanca');
  end;

end.
