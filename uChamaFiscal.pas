unit uChamaFiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExControls, JvLabel, dxGDIPlusClasses,
  Vcl.ExtCtrls, AdvPanel, Vcl.StdCtrls;

type
  TfrmChamaFiscal = class(TForm)
    FlowPanel1: TFlowPanel;
    pnImpressora: TPanel;
    imgNaoFiscal: TImage;
    JvLabel3: TJvLabel;
    pnSAT: TPanel;
    imgSAT: TImage;
    lbSat: TJvLabel;
    pnNFCE: TPanel;
    JvLabel1: TJvLabel;
    imgNFCe: TImage;
    pnECF: TPanel;
    imgECF: TImage;
    JvLabel4: TJvLabel;
    imgMFE: TImage;
    procedure imgSATClick(Sender: TObject);
    procedure imgNFCeClick(sender : TObject);
    procedure imgNaoFiscalClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure imgECFClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    forma_selecionada : string;
  end;

var
  frmChamaFiscal: TfrmChamaFiscal;

implementation

{$R *.dfm}

uses uFuncoes, uMenu;

procedure TfrmChamaFiscal.Button1Click(Sender: TObject);
begin
  pnImpressora.Visible := not pnImpressora.Visible;
end;

procedure TfrmChamaFiscal.Button2Click(Sender: TObject);
begin
  pnSat.Visible := not pnSat.Visible;
end;

procedure TfrmChamaFiscal.Button3Click(Sender: TObject);
begin
 pnnfce.Visible := not pnnfce.Visible;
end;

procedure TfrmChamaFiscal.Button4Click(Sender: TObject);
begin
  pnECF.Visible := not pnECF.Visible;
end;

procedure TfrmChamaFiscal.FormCreate(Sender: TObject);
var visiveis : integer;
begin
  self.Tag := 0;
  forma_selecionada := '';

  visiveis := 1;

  pnSat.Visible := LerBooleanConfig('CKUTILIZASAT', frmMenu.cdsCFG.FileName);
  pnNFCe.Visible := LerBooleanConfig('CKUTILIZANFE', frmMenu.cdsCFG.FileName) and LerBooleanConfig('CKATIVARNFCE', frmMenu.cdsCFG.FileName);
  pnECF.Visible := LerBooleanConfig('CKUTILIZAECF', frmMenu.cdsCFG.FileName);

  if pnSat.Visible  then visiveis := visiveis + 1;
  if pnNFCe.Visible  then visiveis := visiveis + 1;
  if pnECF.Visible  then visiveis := visiveis + 1;

  //define as dimensões da tela de acordo com quantidade de panels visiveis
  if visiveis>1 then
    self.Width := (pnImpressora.Width * 2) + 10
  else
    self.Width := pnImpressora.Width  + 10;

  if visiveis>2 then
     self.height := (pnImpressora.height * 2) + 10
  else
    self.height := pnImpressora.height  + 10;

  //alterna a imagem do sat pela do mfe se este estiver selecionado
  if LerIntegerConfig('RGTIPOSISSAT', frmMenu.cdsCFG.FileName, 0)=1 then
  begin
    lbSAT.Caption :=  'MFE FISCAL (3)';
    imgSAT.Picture := imgMFE.Picture;
  end;


end;

procedure TfrmChamaFiscal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key in [50,98]  then //tecla 2 e tecla 2 do teclado numerico
    imgNaoFiscalClick(self)
  else if (key in [51,99]) and (pnSAT.Visible) then //tecla 3 e tecla 3 do teclado numerico
    imgSATClick(self)
  else if (key in [52,100]) and (pnNFCE.Visible) then //tecla 4 e tecla 4 do teclado numerico
    imgNFCeClick(self)
  else if (key in [53,101]) and (pnECF.Visible) then //tecla 5 e tecla 5 do teclado numerico
    imgECFClick(self)
  else if key = 27 then //ESC
    close;
end;

procedure TfrmChamaFiscal.imgECFClick(Sender: TObject);
begin
  forma_selecionada := 'ECF';
  self.Tag := 1;
  close;
end;

procedure TfrmChamaFiscal.imgNaoFiscalClick(Sender: TObject);
begin
  forma_selecionada := 'IMP';
  self.Tag := 1;
  close;
end;

procedure TfrmChamaFiscal.imgSATClick(Sender: TObject);
begin
  forma_selecionada := 'SAT';
  self.Tag := 1;
  close;
end;

procedure TfrmChamaFiscal.imgNFCeClick(Sender: TObject);
begin
  forma_selecionada := 'NFCE';
  self.Tag := 1;
  close;
end;


end.
