
unit UImpressaoCupom;

interface

uses
  Windows, Messages, System.SysUtils, Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Printers , System.StrUtils, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls;

type
  TFImpressaoCupom = class(TForm)
    RichEdit1: TRichEdit;
    Button2: TButton;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Imprimir;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    quemChamou, dataFechamento, dataAbertura, operador, trnCancel :String;
    confirmaImpressaoFP,imprimiu : boolean;
    valorTotalSuprimento : currency;
    qdtVias : integer;
  end;

var
  FImpressaoCupom: TFImpressaoCupom;

implementation
{$R *.dfm}

uses UPDVFechamento, UFuncoes, uMenu, uControleMesaFechamento, uControleDeliveryFinaliza;

procedure TFImpressaoCupom.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TFImpressaoCupom.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    key := #0;
    Perform(WM_NEXTDLGCTL,1, 0);
    Button1Click(sender);
  end
end;

procedure TFImpressaoCupom.FormShow(Sender: TObject);
begin
  if quemChamou = 'transacaoCOmTef' then
  begin
    if Assigned(frmPDVFechamento) then
    begin
      RichEdit1.Lines.Add(frmPDVFechamento.MemoCupomTEF1.text+
                          frmPDVFechamento.MemoCupomTEF2.text+
                          frmPDVFechamento.MemoCupomTEF3.text);
    end
    else if Assigned(frmControleMesaFechamento) then
    begin
      RichEdit1.Lines.Add(frmControleMesaFechamento.MemoCupomTEF1.text+
                          frmControleMesaFechamento.MemoCupomTEF2.text+
                          frmControleMesaFechamento.MemoCupomTEF3.text);
    end
    else if Assigned(frmControleDeliveryFinaliza) then
    begin
      RichEdit1.Lines.Add(frmControleDeliveryFinaliza.MemoCupomTEF1.text+
                          frmControleDeliveryFinaliza.MemoCupomTEF2.text+
                          frmControleDeliveryFinaliza.MemoCupomTEF3.text);
    end;

    Imprimir;
  end;

end;

procedure TFImpressaoCupom.Imprimir;
var
 txt : TextFile;
 i : Integer;
begin
  Printer.Title := LerStringConfig('CAMIMPCAIXA',frmMenu.cdsCFG.FileName);
  begin
   assignPrn(txt);
   rewrite(txt);
   printer.canvas.Font := RichEdit1.font;
   for i := 0 to RichEdit1.lines.count do
     Writeln(txt,RichEdit1.Lines[i]);
   imprimiu := true;
   closeFile(txt);
  end;
end;

procedure TFImpressaoCupom.Timer1Timer(Sender: TObject);
begin
  if imprimiu then
  begin
    Timer1.Enabled := false;
    close;
  end;
end;

end.
