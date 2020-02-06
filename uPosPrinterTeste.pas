unit uPosPrinterTeste;

interface

uses
  Classes, SysUtils, ACBrPosPrinter, ACBrBase, Forms, StdCtrls, Buttons,
  Spin, Controls, ComCtrls, ExtCtrls, Data.DB, Datasnap.DBClient, AdvGlowButton,
  Winapi.Windows;
type

  { TFrPosPrinterTeste }

  TFrmPosPrinterConfig = class(TForm)
    ACBrPosPrinter1: TACBrPosPrinter;
    bImprimir: TBitBtn;
    bImpTagsValidas: TButton;
    bLerInfo: TButton;
    bLimpar: TBitBtn;
    bTagFormtacaoCaracter: TButton;
    bTagQRCode: TButton;
    bLerStatus: TButton;
    bTagLogo: TButton;
    bTagsAlinhamento: TButton;
    bTagsCodBarras: TButton;
    bTagsTesteInvalidas: TButton;
    bTagsTestePagCodigo: TButton;
    bImpLinhaALinha: TButton;
    cbHRI: TCheckBox;
    cbxModelo: TComboBox;
    cbxPagCodigo: TComboBox;
    cbxPorta: TComboBox;
    cbIgnorarTags: TCheckBox;
    cbTraduzirTags: TCheckBox;
    cbControlePorta: TCheckBox;
    edLog: TEdit;
    gbCodBarrasConfig1: TGroupBox;
    gbCodBarrasConfig2: TGroupBox;
    gbConfiguracao: TGroupBox;
    gbCodBarrasConfig: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    mImp: TMemo;
    mLog: TMemo;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    SbArqLog: TSpeedButton;
    seLogoFatorX: TSpinEdit;
    seLogoFatorY: TSpinEdit;
    seQRCodeLarguraModulo: TSpinEdit;
    seQRCodeErrorLevel: TSpinEdit;
    seLogoKC2: TSpinEdit;
    seQRCodeTipo: TSpinEdit;
    seColunas: TSpinEdit;
    seBarrasLargura: TSpinEdit;
    seEspLinhas: TSpinEdit;
    seBarrasAltura: TSpinEdit;
    seLinhasBuffer: TSpinEdit;
    seLinhasPular: TSpinEdit;
    seLogoKC1: TSpinEdit;
    tsImprimir: TTabSheet;
    tsLog: TTabSheet;
    cdsCFGImpressora: TClientDataSet;
    cdsCFGImpressoraNOME: TStringField;
    cdsCFGImpressoraNUMERO: TFloatField;
    cdsCFGImpressoraTEXTO: TStringField;
    cdsCFGImpressoraLOGICO: TBooleanField;
    cdsCFGImpressoraDATA: TDateTimeField;
    btAbrirGaveta: TButton;
    btConfiguraPorta: TAdvGlowButton;
    btAtivar: TAdvGlowButton;
    Label50: TLabel;
    Label49: TLabel;
    constructor Create (sender : Tcomponent; nome_impressora : string) ; reintroduce;
    procedure ACBrPosPrinter1GravarLog(const ALogLine: String;
      var Tratado: Boolean);
    procedure btAtivarClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bImpTagsValidasClick(Sender: TObject);
    procedure bLerInfoClick(Sender: TObject);
    procedure bLerStatusClick(Sender: TObject);
    procedure bLimparClick(Sender: TObject);
    procedure bTagFormtacaoCaracterClick(Sender: TObject);
    procedure bTagLogoClick(Sender: TObject);
    procedure bTagQRCodeClick(Sender: TObject);
    procedure bTagsAlinhamentoClick(Sender: TObject);
    procedure bTagsTesteInvalidasClick(Sender: TObject);
    procedure bTagsCodBarrasClick(Sender: TObject);
    procedure bTagsTestePagCodigoClick(Sender: TObject);
    procedure bImpLinhaALinhaClick(Sender: TObject);
    procedure cbControlePortaChange(Sender: TObject);
    procedure cbHRIChange(Sender: TObject);
    procedure cbIgnorarTagsChange(Sender: TObject);
    procedure cbTraduzirTagsChange(Sender: TObject);
    procedure cbxModeloChange(Sender: TObject);
    procedure cbxPagCodigoChange(Sender: TObject);
    procedure cbxPortaChange(Sender: TObject);
    procedure SbArqLogClick(Sender: TObject);
    procedure seBarrasAlturaChange(Sender: TObject);
    procedure seBarrasLarguraChange(Sender: TObject);
    procedure seEspLinhasChange(Sender: TObject);
    procedure seColunasChange(Sender: TObject);
    procedure seLinhasBufferChange(Sender: TObject);
    procedure seLinhasPularChange(Sender: TObject);
    procedure seLogoFatorXChange(Sender: TObject);
    procedure seLogoFatorYChange(Sender: TObject);
    procedure seLogoKC1Change(Sender: TObject);
    procedure seLogoKC2Change(Sender: TObject);
    procedure seQRCodeErrorLevelChange(Sender: TObject);
    procedure seQRCodeLarguraModuloChange(Sender: TObject);
    procedure seQRCodeTipoChange(Sender: TObject);
    procedure btAbrirGavetaClick(Sender: TObject);
    procedure AbreXMLCFG;
    procedure btConfiguraPortaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    nome_impressora : string;
    Procedure GravarConfig ;
    Procedure LerConfig ;
  public

  end;

var
  FrmPosPrinterConfig: TFrmPosPrinterConfig;

implementation

Uses 
  typinfo, IniFiles, uPosPrinterConfiguraSerial, ACBrUtil, uFuncoes;

{$R *.dfm}

{ TFrPosPrinterTeste }


procedure TFrmPosPrinterConfig.AbreXMLCFG;
begin
   if cdsCFGImpressora.Active then cdsCFGImpressora.Close;

   if Not DirectoryExists(ExtractFilePath(Application.ExeName) + 'CONF') then
      ForceDirectories(ExtractFilePath(Application.ExeName) + 'CONF');
   cdsCFGImpressora.FileName := ExtractFilePath(Application.ExeName) + 'CONF\IMP_'+ nome_impressora +'.xml';

   if not FilesExists(cdsCFGImpressora.FileName) then cdsCFGImpressora.CreateDataSet;

  cdsCFGImpressora.open;
  cdsCFGImpressora.close;

end;

constructor TFrmPosPrinterConfig.Create (sender : Tcomponent; nome_impressora : string) ;
var
  I: TACBrPosPrinterModelo;
  J: TACBrPosPaginaCodigo;
begin
  inherited Create(sender);
  if trim(nome_impressora) ='' then abort;

  self.nome_impressora := nome_impressora;
  self.Caption := self.Caption + ' - ' + nome_impressora;
  AbreXMLCFG;

  cbxModelo.Items.Clear ;
  For I := Low(TACBrPosPrinterModelo) to High(TACBrPosPrinterModelo) do
     cbxModelo.Items.Add( GetEnumName(TypeInfo(TACBrPosPrinterModelo), integer(I) ) ) ;

  cbxPagCodigo.Items.Clear ;
  For J := Low(TACBrPosPaginaCodigo) to High(TACBrPosPaginaCodigo) do
     cbxPagCodigo.Items.Add( GetEnumName(TypeInfo(TACBrPosPaginaCodigo), integer(J) ) ) ;

  cbxPorta.Items.Clear;
  ACBrPosPrinter1.Device.AcharPortasSeriais( cbxPorta.Items );
  cbxPorta.Items.Add('') ;
  cbxPorta.Items.Add('LPT1') ;
  cbxPorta.Items.Add('LPT2') ;
  cbxPorta.Items.Add('COM1') ;
  cbxPorta.Items.Add('COM2') ;
  cbxPorta.Items.Add('COM3') ;
  cbxPorta.Items.Add('COM4') ;
  cbxPorta.Items.Add('COM5') ;

  PageControl1.ActivePageIndex := 0;

  LerConfig;
  cbxPorta.Items[0] := LerStringConfig('PORTA',cdsCFGImpressora.FileName) ;
end;


procedure TFrmPosPrinterConfig.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  GravarConfig;
end;

procedure TFrmPosPrinterConfig.bLimparClick(Sender: TObject);
begin
  mImp.Clear;
end;

procedure TFrmPosPrinterConfig.bTagFormtacaoCaracterClick(Sender: TObject);
begin
  mImp.Lines.Add('</zera>');
  mImp.Lines.Add('</linha_dupla>');
  mImp.Lines.Add('FONTE NORMAL: '+IntToStr(ACBrPosPrinter1.ColunasFonteNormal)+' Colunas');
  mImp.Lines.Add(PadLeft('....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8', ACBrPosPrinter1.ColunasFonteNormal));
  mImp.Lines.Add('<e>EXPANDIDO: '+IntToStr(ACBrPosPrinter1.ColunasFonteExpandida)+' Colunas');
  mImp.Lines.Add(PadLeft('....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8', ACBrPosPrinter1.ColunasFonteExpandida));
  mImp.Lines.Add('</e><c>CONDENSADO: '+IntToStr(ACBrPosPrinter1.ColunasFonteCondensada)+' Colunas');
  mImp.Lines.Add(PadLeft('....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8', ACBrPosPrinter1.ColunasFonteCondensada));

  mImp.Lines.Add('<e><c>EXPANDIDO + CONDENSADO: '+IntToStr(32)+' Colunas');
  mImp.Lines.Add(PadLeft('....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8', 32));

  mImp.Lines.Add('</c></e><n>FONTE NEGRITO</N>');
  mImp.Lines.Add('<in>FONTE INVERTIDA</in>');
  mImp.Lines.Add('<S>FONTE SUBLINHADA</s>');
  mImp.Lines.Add('<i>FONTE ITALICO</i>');
  mImp.Lines.Add('FONTE NORMAL');
  mImp.Lines.Add('</linha_simples>');
  mImp.Lines.Add('<n>LIGA NEGRITO');
  mImp.Lines.Add('<i>LIGA ITALICO');
  mImp.Lines.Add('<S>LIGA SUBLINHADA');
  mImp.Lines.Add('<c>LIGA CONDENSADA');
  mImp.Lines.Add('<e>LIGA EXPANDIDA');
  mImp.Lines.Add('</fn>FONTE NORMAL');
  mImp.Lines.Add('</linha_simples>');
  mImp.Lines.Add('<e><n>NEGRITO E EXPANDIDA</n></e>');
  mImp.Lines.Add('</fn>FONTE NORMAL');
  mImp.Lines.Add('<in><c>INVERTIDA E CONDENSADA</c></in>');
  mImp.Lines.Add('</fn>FONTE NORMAL');
  mImp.Lines.Add('</linha_simples>');
  mImp.Lines.Add('</FB>FONTE TIPO B');
  mImp.Lines.Add('<n>FONTE NEGRITO</N>');
  mImp.Lines.Add('<e>FONTE EXPANDIDA</e>');
  mImp.Lines.Add('<in>FONTE INVERTIDA</in>');
  mImp.Lines.Add('<S>FONTE SUBLINHADA</s>');
  mImp.Lines.Add('<i>FONTE ITALICO</i>');
  mImp.Lines.Add('</FA>FONTE TIPO A');
  mImp.Lines.Add('</FN>FONTE NORMAL');
  mImp.Lines.Add('</corte_total>');
end;

procedure TFrmPosPrinterConfig.bTagLogoClick(Sender: TObject);
begin
  mImp.Lines.Add('</zera>');
  mImp.Lines.Add('</ce>');
  mImp.Lines.Add('Logo: '+chr(ACBrPosPrinter1.ConfigLogo.KeyCode1)+
                          chr(ACBrPosPrinter1.ConfigLogo.KeyCode2) +
                          ' - FatorX: ' + IntToStr(ACBrPosPrinter1.ConfigLogo.FatorX)+
                          ' - FatorY: ' + IntToStr(ACBrPosPrinter1.ConfigLogo.FatorY));
  mImp.Lines.Add('</logo>');
  mImp.Lines.Add('</corte_total>');
end;

procedure TFrmPosPrinterConfig.bTagQRCodeClick(Sender: TObject);
begin
  mImp.Lines.Add('</zera>');
  mImp.Lines.Add('</linha_dupla>');
  mImp.Lines.Add('<qrcode>http://projetoacbr.com.br</qrcode>');
  mImp.Lines.Add('</ce>');
  mImp.Lines.Add('<qrcode>http://www.projetoacbr.com.br/forum/index.php?/page/SAC/sobre_o_sac.html</qrcode>');
  mImp.Lines.Add('</ad>');
  mImp.Lines.Add('<qrcode>http://www.projetoacbr.com.br/forum/index.php?/page/SAC/questoes_importantes.html</qrcode>');
  mImp.Lines.Add('</corte_total>');
end;

procedure TFrmPosPrinterConfig.bTagsAlinhamentoClick(Sender: TObject);
begin
  mImp.Lines.Add('</zera>');
  mImp.Lines.Add('</linha_dupla>');
  mImp.Lines.Add('TEXTO NORMAL');
  mImp.Lines.Add('</ae>ALINHADO A ESQUERDA');
  mImp.Lines.Add('1 2 3 TESTANDO');
  mImp.Lines.Add('<n>FONTE NEGRITO</N>');
  mImp.Lines.Add('<e>FONTE EXPANDIDA</e>');
  mImp.Lines.Add('<c>FONTE CONDENSADA</e>');
  mImp.Lines.Add('<in>FONTE INVERTIDA</in>');
  mImp.Lines.Add('<S>FONTE SUBLINHADA</s>');
  mImp.Lines.Add('<i>FONTE ITALICO</i>');

  mImp.Lines.Add('</fn></ce>ALINHADO NO CENTRO');
  mImp.Lines.Add('1 2 3 TESTANDO');
  mImp.Lines.Add('<n>FONTE NEGRITO</N>');
  mImp.Lines.Add('<e>FONTE EXPANDIDA</e>');
  mImp.Lines.Add('<c>FONTE CONDENSADA</e>');
  mImp.Lines.Add('<in>FONTE INVERTIDA</in>');
  mImp.Lines.Add('<S>FONTE SUBLINHADA</s>');
  mImp.Lines.Add('<i>FONTE ITALICO</i>');

  mImp.Lines.Add('</fn></ad>ALINHADO A DIREITA');
  mImp.Lines.Add('1 2 3 TESTANDO');
  mImp.Lines.Add('<n>FONTE NEGRITO</N>');
  mImp.Lines.Add('<e>FONTE EXPANDIDA</e>');
  mImp.Lines.Add('<c>FONTE CONDENSADA</e>');
  mImp.Lines.Add('<in>FONTE INVERTIDA</in>');
  mImp.Lines.Add('<S>FONTE SUBLINHADA</s>');
  mImp.Lines.Add('<i>FONTE ITALICO</i>');

  mImp.Lines.Add('</ae></fn>TEXTO NORMAL');
  mImp.Lines.Add('</corte_total>');
end;

procedure TFrmPosPrinterConfig.bTagsTesteInvalidasClick(Sender: TObject);
begin
  mImp.Lines.Add('</zera>');
  mImp.Lines.Add('<CE>*** TESTE DE TAGS INVÁLIDAS ***</CE>');
  mImp.Lines.Add('<ce> <>tags inválidas no texto">">><<</CE>');
  mImp.Lines.Add('<AD><da><ec></</A Direita</ad>');
  mImp.Lines.Add('</corte_total>');
end;

procedure TFrmPosPrinterConfig.bTagsCodBarrasClick(Sender: TObject);
begin
  mImp.Lines.Add('</zera>');
  mImp.Lines.Add('</ce>');
  mImp.Lines.Add('</linha_dupla>');
  mImp.Lines.Add('EAN 8: 1234567');
  mImp.Lines.Add('<ean8>1234567</ean8>');
  mImp.Lines.Add('</Linha_Simples>');
  mImp.Lines.Add('EAN13: 123456789012');
  mImp.Lines.Add('<ean13>123456789012</ean13>');
  mImp.Lines.Add('</Linha_Simples>');
  mImp.Lines.Add('std25: 1234567890');
  mImp.Lines.Add('<std>1234567890</std>');
  mImp.Lines.Add('</Linha_Simples>');
  mImp.Lines.Add('INT25: 1234567890');
  mImp.Lines.Add('<inter>1234567890</inter>');
  mImp.Lines.Add('</Linha_Simples>');
  mImp.Lines.Add('CODE11: 1234567890');
  mImp.Lines.Add('<code11>1234567890</code11>');
  mImp.Lines.Add('</Linha_Simples>');
  mImp.Lines.Add('CODE39: ABCDE12345');
  mImp.Lines.Add('<code39>ABCDE12345</code39>');
  mImp.Lines.Add('</Linha_Simples>');
  mImp.Lines.Add('CODE93: ABC123abc');
  mImp.Lines.Add('<code93>ABC123abc</code93>');
  mImp.Lines.Add('</Linha_Simples>');
  mImp.Lines.Add('CODE128: $-=+ABC123abc');
  mImp.Lines.Add('<code128>$-=+ABC123abc</code128>');
  mImp.Lines.Add('</Linha_Simples>');
  mImp.Lines.Add('UPCA: 12345678901');
  mImp.Lines.Add('<upca>12345678901</upca>');
  mImp.Lines.Add('</Linha_Simples>');
  mImp.Lines.Add('CODABAR: A123456789012345A');
  mImp.Lines.Add('<codabar>A123456789012345A</codabar>');
  mImp.Lines.Add('</Linha_Simples>');
  mImp.Lines.Add('MSI: 1234567890');
  mImp.Lines.Add('<msi>1234567890</msi>');
  mImp.Lines.Add('</corte_total>');
end;

procedure TFrmPosPrinterConfig.bTagsTestePagCodigoClick(Sender: TObject);
begin
  mImp.Lines.Add('</zera>');
  mImp.Lines.Add('</linha_dupla>');
  mImp.Lines.Add('ÁÉÍÓÚáéíóúçÇãõÃÕÊêÀà');
  mImp.Lines.Add('</corte_total>');
end;

procedure TFrmPosPrinterConfig.bImpLinhaALinhaClick(Sender: TObject);
begin
  ACBrPosPrinter1.ImprimirLinha('</zera>');
  ACBrPosPrinter1.ImprimirLinha('</linha_dupla>');
  ACBrPosPrinter1.ImprimirLinha('FONTE NORMAL: '+IntToStr(ACBrPosPrinter1.ColunasFonteNormal)+' Colunas');
  ACBrPosPrinter1.ImprimirLinha(PadLeft('....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8', ACBrPosPrinter1.ColunasFonteNormal));
  ACBrPosPrinter1.ImprimirLinha('<e>EXPANDIDO: '+IntToStr(ACBrPosPrinter1.ColunasFonteExpandida)+' Colunas');
  ACBrPosPrinter1.ImprimirLinha(PadLeft('....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8', ACBrPosPrinter1.ColunasFonteExpandida));
  ACBrPosPrinter1.ImprimirLinha('</e><c>CONDENSADO: '+IntToStr(ACBrPosPrinter1.ColunasFonteCondensada)+' Colunas');
  ACBrPosPrinter1.ImprimirLinha(PadLeft('....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8', ACBrPosPrinter1.ColunasFonteCondensada));
  ACBrPosPrinter1.ImprimirLinha('</c><n>FONTE NEGRITO</N>');
  ACBrPosPrinter1.ImprimirLinha('<in>FONTE INVERTIDA</in>');
  ACBrPosPrinter1.ImprimirLinha('<S>FONTE SUBLINHADA</s>');
  ACBrPosPrinter1.ImprimirLinha('<i>FONTE ITALICO</i>');
  ACBrPosPrinter1.ImprimirLinha('FONTE NORMAL');
  ACBrPosPrinter1.ImprimirLinha('</linha_simples>');
  ACBrPosPrinter1.ImprimirLinha('<n>LIGA NEGRITO');
  ACBrPosPrinter1.ImprimirLinha('<i>LIGA ITALICO');
  ACBrPosPrinter1.ImprimirLinha('<S>LIGA SUBLINHADA');
  ACBrPosPrinter1.ImprimirLinha('<c>LIGA CONDENSADA');
  ACBrPosPrinter1.ImprimirLinha('<e>LIGA EXPANDIDA');
  ACBrPosPrinter1.ImprimirLinha('</fn>FONTE NORMAL');
  ACBrPosPrinter1.ImprimirLinha('</linha_simples>');
  ACBrPosPrinter1.ImprimirLinha('<e><n>NEGRITO E EXPANDIDA</n></e>');
  ACBrPosPrinter1.ImprimirLinha('</fn>FONTE NORMAL');
  ACBrPosPrinter1.ImprimirLinha('<in><c>INVERTIDA E CONDENSADA</c></in>');
  ACBrPosPrinter1.ImprimirLinha('</fn>FONTE NORMAL');
  ACBrPosPrinter1.ImprimirLinha('</linha_simples>');
  ACBrPosPrinter1.ImprimirLinha('</FB>FONTE TIPO B');
  ACBrPosPrinter1.ImprimirLinha('<n>FONTE NEGRITO</N>');
  ACBrPosPrinter1.ImprimirLinha('<e>FONTE EXPANDIDA</e>');
  ACBrPosPrinter1.ImprimirLinha('<in>FONTE INVERTIDA</in>');
  ACBrPosPrinter1.ImprimirLinha('<S>FONTE SUBLINHADA</s>');
  ACBrPosPrinter1.ImprimirLinha('<i>FONTE ITALICO</i>');
  ACBrPosPrinter1.ImprimirLinha('</FA>FONTE TIPO A');
  ACBrPosPrinter1.ImprimirLinha('</FN>FONTE NORMAL');
  ACBrPosPrinter1.ImprimirLinha('</corte_total>');
end;

procedure TFrmPosPrinterConfig.cbControlePortaChange(Sender: TObject);
begin
  ACBrPosPrinter1.ControlePorta := cbControlePorta.Checked;
end;

procedure TFrmPosPrinterConfig.cbHRIChange(Sender: TObject);
begin
  ACBrPosPrinter1.ConfigBarras.MostrarCodigo := cbHRI.Checked;
end;

procedure TFrmPosPrinterConfig.cbIgnorarTagsChange(Sender: TObject);
begin
  ACBrPosPrinter1.IgnorarTags := cbIgnorarTags.Checked;
end;

procedure TFrmPosPrinterConfig.cbTraduzirTagsChange(Sender: TObject);
begin
  ACBrPosPrinter1.TraduzirTags := cbTraduzirTags.Checked;
end;

procedure TFrmPosPrinterConfig.cbxModeloChange(Sender: TObject);
begin
  try
     ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo( cbxModelo.ItemIndex ) ;
  except
     cbxModelo.ItemIndex := Integer( ACBrPosPrinter1.Modelo ) ;
     raise ;
  end ;
end;

procedure TFrmPosPrinterConfig.cbxPagCodigoChange(Sender: TObject);
begin
  ACBrPosPrinter1.PaginaDeCodigo := TACBrPosPaginaCodigo(cbxPagCodigo.ItemIndex);
end;

procedure TFrmPosPrinterConfig.cbxPortaChange(Sender: TObject);
begin
  try
    ACBrPosPrinter1.Porta := cbxPorta.Text ;
  finally
    cbxPorta.Text := ACBrPosPrinter1.Porta ;
  end ;
end;

procedure TFrmPosPrinterConfig.SbArqLogClick(Sender: TObject);
var
  AFileLog: String;
begin
  if pos(PathDelim,edLog.Text) = 0 then
    AFileLog := ExtractFilePath( Application.ExeName ) + edLog.Text
  else
    AFileLog := edLog.Text;

  OpenURL( AFileLog );
end;

procedure TFrmPosPrinterConfig.seBarrasAlturaChange(Sender: TObject);
begin
  ACBrPosPrinter1.ConfigBarras.Altura := seBarrasAltura.Value;
end;

procedure TFrmPosPrinterConfig.seBarrasLarguraChange(Sender: TObject);
begin
  ACBrPosPrinter1.ConfigBarras.LarguraLinha := seBarrasLargura.Value;
end;

procedure TFrmPosPrinterConfig.seEspLinhasChange(Sender: TObject);
begin
  ACBrPosPrinter1.EspacoEntreLinhas := seEspLinhas.Value;
end;

procedure TFrmPosPrinterConfig.btConfiguraPortaClick(Sender: TObject);
Var
  frConfiguraSerial : TfrConfiguraSerial ;
begin
  frConfiguraSerial := TfrConfiguraSerial.Create(self);

  try
    frConfiguraSerial.Device.Porta        := ACBrPosPrinter1.Device.Porta ;
    frConfiguraSerial.cmbPortaSerial.Text := cbxPorta.Text ;
    frConfiguraSerial.Device.ParamsString := ACBrPosPrinter1.Device.ParamsString ;

    if frConfiguraSerial.ShowModal = mrOk then
    begin
       cbxPorta.Text                       := frConfiguraSerial.Device.Porta ;
       ACBrPosPrinter1.Device.ParamsString := frConfiguraSerial.Device.ParamsString ;
    end ;
  finally
     FreeAndNil( frConfiguraSerial ) ;
  end ;
end;

procedure TFrmPosPrinterConfig.btAbrirGavetaClick(Sender: TObject);
begin
  ACBrPosPrinter1.AbrirGaveta;
end;

procedure TFrmPosPrinterConfig.seColunasChange(Sender: TObject);
begin
  ACBrPosPrinter1.ColunasFonteNormal := seColunas.Value;
end;

procedure TFrmPosPrinterConfig.seLinhasBufferChange(Sender: TObject);
begin
  ACBrPosPrinter1.LinhasBuffer := seLinhasBuffer.Value;
end;

procedure TFrmPosPrinterConfig.seLinhasPularChange(Sender: TObject);
begin
  ACBrPosPrinter1.LinhasEntreCupons := seLinhasPular.Value;
end;

procedure TFrmPosPrinterConfig.seLogoFatorXChange(Sender: TObject);
begin
  ACBrPosPrinter1.ConfigLogo.FatorX := seLogoFatorX.Value;
end;

procedure TFrmPosPrinterConfig.seLogoFatorYChange(Sender: TObject);
begin
  ACBrPosPrinter1.ConfigLogo.FatorY := seLogoFatorY.Value;
end;

procedure TFrmPosPrinterConfig.seLogoKC1Change(Sender: TObject);
begin
  ACBrPosPrinter1.ConfigLogo.KeyCode1 := seLogoKC1.Value;
end;

procedure TFrmPosPrinterConfig.seLogoKC2Change(Sender: TObject);
begin
  ACBrPosPrinter1.ConfigLogo.KeyCode2 := seLogoKC2.Value;
end;

procedure TFrmPosPrinterConfig.seQRCodeErrorLevelChange(Sender: TObject);
begin
  ACBrPosPrinter1.ConfigQRCode.ErrorLevel := seQRCodeErrorLevel.Value;
end;

procedure TFrmPosPrinterConfig.seQRCodeLarguraModuloChange(Sender: TObject);
begin
  ACBrPosPrinter1.ConfigQRCode.LarguraModulo := seQRCodeLarguraModulo.Value;
end;

procedure TFrmPosPrinterConfig.seQRCodeTipoChange(Sender: TObject);
begin
  ACBrPosPrinter1.ConfigQRCode.Tipo := seQRCodeTipo.Value;
end;

procedure TFrmPosPrinterConfig.GravarConfig;
begin
  GravaIntegerConfig('MODELO', cbxModelo.ItemIndex, cdsCFGImpressora.FileName);
  GravaIntegerConfig('COLUNAS',SECOLUNAS.VALUE, cdsCFGImpressora.FileName);
  GravaIntegerConfig('ESPACOENTRELINHAS',SEESPLINHAS.VALUE, cdsCFGImpressora.FileName);
  GravaIntegerConfig('LINHASBUFFER',SELINHASBUFFER.VALUE, cdsCFGImpressora.FileName);
  GravaIntegerConfig('LINHASPULAR',SELINHASPULAR.VALUE, cdsCFGImpressora.FileName);
  GravaIntegerConfig('PAGINADECODIGO',CBXPAGCODIGO.ITEMINDEX, cdsCFGImpressora.FileName);
  GravaIntegerConfig('LARGURA',SEBARRASLARGURA.VALUE, cdsCFGImpressora.FileName);
  GravaIntegerConfig('ALTURA',SEBARRASALTURA.VALUE, cdsCFGImpressora.FileName);
  GravaIntegerConfig('TIPO',SEQRCODETIPO.VALUE, cdsCFGImpressora.FileName);
  GravaIntegerConfig('LARGURAMODULO',SEQRCODELARGURAMODULO.VALUE, cdsCFGImpressora.FileName);
  GravaIntegerConfig('ERRORLEVEL',SEQRCODEERRORLEVEL.VALUE, cdsCFGImpressora.FileName);
  GravaIntegerConfig('KC1',SELOGOKC1.VALUE, cdsCFGImpressora.FileName);
  GravaIntegerConfig('KC2',SELOGOKC2.VALUE, cdsCFGImpressora.FileName);
  GravaIntegerConfig('FATORX',SELOGOFATORX.VALUE, cdsCFGImpressora.FileName);
  GravaIntegerConfig('FATORY',SELOGOFATORY.VALUE, cdsCFGImpressora.FileName);

  GravaStringConfig('PORTA',CBXPORTA.TEXT, cdsCFGImpressora.FileName);
  GravaStringConfig('ARQLOG',EDLOG.TEXT, cdsCFGImpressora.FileName);

  GravaBooelanConfig('CONTROLEPORTA',CBCONTROLEPORTA.CHECKED, cdsCFGImpressora.FileName);
  GravaBooelanConfig('TRADUZIRTAGS',CBTRADUZIRTAGS.CHECKED, cdsCFGImpressora.FileName);
  GravaBooelanConfig('IGNORARTAGS',CBIGNORARTAGS.CHECKED, cdsCFGImpressora.FileName);
  GravaBooelanConfig('HRI',CBHRI.CHECKED, cdsCFGImpressora.FileName);
end;

procedure TFrmPosPrinterConfig.LerConfig;
begin
  cbxModelo.ItemIndex :=     LerIntegerConfig('MODELO', cdsCFGImpressora.FileName);
  seColunas.Value :=      LerIntegerConfig('COLUNAS',          cdsCFGImpressora.FileName, 48);
  seEspLinhas.Value :=    LerIntegerConfig('ESPACOENTRELINHAS',cdsCFGImpressora.FileName);
  seLinhasBuffer.Value := LerIntegerConfig('LINHASBUFFER'     ,cdsCFGImpressora.FileName);
  seLinhasPular.Value :=  LerIntegerConfig('LINHASPULAR'      ,cdsCFGImpressora.FileName, 5);
  cbxPagCodigo.ItemIndex := LerIntegerConfig('PAGINADECODIGO',cdsCFGImpressora.FileName, 6);
  seBarrasLargura.Value := LerIntegerConfig('LARGURA', cdsCFGImpressora.FileName);
  seBarrasAltura.Value := LerIntegerConfig('ALTURA',cdsCFGImpressora.FileName);
  seQRCodeTipo.Value := LerIntegerConfig('TIPO',cdsCFGImpressora.FileName);
  seQRCodeLarguraModulo.Value := LerIntegerConfig('LARGURAMODULO',cdsCFGImpressora.FileName);
  seQRCodeErrorLevel.Value := LerIntegerConfig('ERRORLEVEL',cdsCFGImpressora.FileName);
  seLogoKC1.Value := LerIntegerConfig('KC1',cdsCFGImpressora.FileName);
  seLogoKC2.Value := LerIntegerConfig('KC2',cdsCFGImpressora.FileName);
  seLogoFatorX.Value := LerIntegerConfig('FATORX',cdsCFGImpressora.FileName);
  seLogoFatorY.Value := LerIntegerConfig('FATORY',cdsCFGImpressora.FileName);

  cbxPorta.Text := LerStringConfig('PORTA',cdsCFGImpressora.FileName);
  edLog.Text := LerStringConfig('ARQLOG', cdsCFGImpressora.FileName);

  cbControlePorta.Checked := LerBooleanConfig('CONTROLEPORTA',cdsCFGImpressora.FileName);
  cbTraduzirTags.Checked := LerBooleanConfig('TRADUZIRTAGS',cdsCFGImpressora.FileName, true);
  cbIgnorarTags.Checked := LerBooleanConfig('IGNORARTAGS',cdsCFGImpressora.FileName);
  cbHRI.Checked := LerBooleanConfig('HRI',cdsCFGImpressora.FileName);
end;

procedure TFrmPosPrinterConfig.bImprimirClick(Sender: TObject);
begin
  if btAtivar.Caption = 'Ativar' then
    btAtivar.Click;

  ACBrPosPrinter1.Imprimir(mImp.Text);
end;

procedure TFrmPosPrinterConfig.bImpTagsValidasClick(Sender: TObject);
begin
  ACBrPosPrinter1.RetornarTags(mImp.Lines);
  //ACBrPosPrinter1.ImprimirTags;
end;

procedure TFrmPosPrinterConfig.bLerInfoClick(Sender: TObject);
begin
  mImp.Lines.Add( ACBrPosPrinter1.LerInfoImpressora );
end;

procedure TFrmPosPrinterConfig.bLerStatusClick(Sender: TObject);
var
  Status: TACBrPosPrinterStatus;
  i: TACBrPosTipoStatus;
  AStr: String;
begin
  Status := ACBrPosPrinter1.LerStatusImpressora;

  if Status = [] then
    mImp.Lines.Add('Nennhum Erro encontrado')
  else
  begin
    AStr := '';
    For i := Low(TACBrPosTipoStatus) to High(TACBrPosTipoStatus) do
    begin
      if i in Status then
        AStr := AStr + GetEnumName(TypeInfo(TACBrPosTipoStatus), integer(i) )+ ', ';
    end;

    mImp.Lines.Add( AStr );
  end;
end;

procedure TFrmPosPrinterConfig.btAtivarClick(Sender: TObject);
begin
  if ACBrPosPrinter1.Ativo then
  begin
     ACBrPosPrinter1.Desativar ;
     btAtivar.Caption := 'Ativar' ;
     btConfiguraporta.Enabled := True ;
  end
  else
  begin
    try
      Self.Enabled := False;
      ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo( cbxModelo.ItemIndex );
      ACBrPosPrinter1.Porta  := cbxPorta.Text;
      ACBrPosPrinter1.ArqLOG := edLog.Text;
      ACBrPosPrinter1.LinhasBuffer := seLinhasBuffer.Value;
      ACBrPosPrinter1.LinhasEntreCupons := seLinhasPular.Value;
      ACBrPosPrinter1.EspacoEntreLinhas := seEspLinhas.Value;
      ACBrPosPrinter1.ColunasFonteNormal := seColunas.Value;
      ACBrPosPrinter1.ControlePorta := cbControlePorta.Checked;
      ACBrPosPrinter1.TraduzirTags := cbTraduzirTags.Checked;
      ACBrPosPrinter1.IgnorarTags := cbIgnorarTags.Checked;
      ACBrPosPrinter1.PaginaDeCodigo := TACBrPosPaginaCodigo( cbxPagCodigo.ItemIndex );
      ACBrPosPrinter1.ConfigBarras.MostrarCodigo := cbHRI.Checked;
      ACBrPosPrinter1.ConfigBarras.LarguraLinha := seBarrasLargura.Value;
      ACBrPosPrinter1.ConfigBarras.Altura := seBarrasAltura.Value;
      ACBrPosPrinter1.ConfigQRCode.Tipo := seQRCodeTipo.Value;
      ACBrPosPrinter1.ConfigQRCode.LarguraModulo := seQRCodeLarguraModulo.Value;
      ACBrPosPrinter1.ConfigQRCode.ErrorLevel := seQRCodeErrorLevel.Value;
      ACBrPosPrinter1.ConfigLogo.KeyCode1 := seLogoKC1.Value;
      ACBrPosPrinter1.ConfigLogo.KeyCode2 := seLogoKC2.Value;
      ACBrPosPrinter1.ConfigLogo.FatorX := seLogoFatorX.Value;
      ACBrPosPrinter1.ConfigLogo.FatorY := seLogoFatorY.Value;

      try
        ACBrPosPrinter1.Ativar ;
        btConfiguraPorta.Enabled := False ;
        btAtivar.Caption := 'Desativar' ;
        GravarConfig ;
      except
        on e:Exception do
        begin
          Application.MessageBox(pchar('Erro ao ativar a porta da impressora, verifique a porta!!! Detalhe do erro:'+slinebreak +e.Message), 'Atenção',MB_ICONERROR);
        end;
      end;

    finally
       Self.Enabled := True;
       cbxModelo.ItemIndex   := Integer(ACBrPosPrinter1.Modelo) ;
       cbxPorta.Text         := ACBrPosPrinter1.Porta ;
    end ;
  end;
end;

procedure TFrmPosPrinterConfig.ACBrPosPrinter1GravarLog(const ALogLine: String;
  var Tratado: Boolean);
begin
  mLog.Lines.Add(ALogLine);
  Tratado := False;
end;

end.

