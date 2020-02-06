unit uVisualizaRelatorioTexto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.StdCtrls, AdvGlowButton,
  Vcl.ExtCtrls, AdvPanel;

type
  TfrmVisualizaRelatorioTexto = class(TfrmModelo)
    btConfirma: TAdvGlowButton;
    btCancelar: TAdvGlowButton;
    Memo1: TMemo;
    procedure btCancelarClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    constructor Create(sender : tcomponent; impressora, str_impressao : string) ; reintroduce;
    function removeTagsACBR(str_imp : string) : string;

  private
    { Private declarations }
    str_impressao : string;
    impressora : string;
    numero_colunas : integer;
  public
    { Public declarations }
  end;

var
  frmVisualizaRelatorioTexto: TfrmVisualizaRelatorioTexto;

implementation

{$R *.dfm}

uses uMenu, uFuncoes;

function TfrmVisualizaRelatorioTexto.removeTagsACBR(str_imp : string) : string;
var i : integer;
    in_tag, pula  : boolean;
begin
  inherited;
  //teste
  in_tag := false;
  pula := false;
  result := '';
  i := 1;

  str_imp := StringReplace(str_imp, '</linha_simples>', ReplicarCaracter('-', numero_colunas), [rfReplaceAll, rfIgnoreCase]);
  str_imp := StringReplace(str_imp, '</linha_dupla>', ReplicarCaracter('=', numero_colunas), [rfReplaceAll, rfIgnoreCase]);

  while i<= length(str_imp) do
  begin
    //verifica se está na tag e então ignora
    if not in_tag then
    begin
      in_tag:= str_imp[i]='<'
    end
    else
    begin
      in_tag:= str_imp[i]<>'>';
      //ao encontrar o final, pula 1 caractere
      if not in_tag then pula := true;
    end;
    if pula then
      pula := false
    else
      if not in_tag then
        result := result + str_imp[i];

    i:=i+1;
  end;
end;

constructor TfrmVisualizaRelatorioTexto.Create (sender : tcomponent; impressora, str_impressao : string);
var config_imp : string;
begin
  inherited Create(sender);
  self.impressora := uppercase(impressora);
  self.str_impressao := str_impressao;

  config_imp := ExtractFilePath(Application.ExeName) + 'CONF\IMP_'+ self.impressora  +'.xml';

  if FileExists(config_imp) then
    numero_colunas := LerIntegerConfig('COLUNAS', config_imp)
  else
    numero_colunas := 48;

  //remove as tags de formatação do acbr para visualização
  memo1.Text := removeTagsACBR(str_impressao);
end;

procedure TfrmVisualizaRelatorioTexto.btCancelarClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TfrmVisualizaRelatorioTexto.btConfirmaClick(Sender: TObject);
begin
  inherited;
  if  frmMenu.ConfiguraImpressoraPOS(impressora) then
    frmMenu.ACBrPosPrinter1.Imprimir(str_impressao);
  self.close;
end;

end.
