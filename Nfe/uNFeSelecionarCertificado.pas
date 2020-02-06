unit uNFeSelecionarCertificado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, AdvGlowButton, Vcl.Grids,
  Vcl.ExtCtrls, AdvPanel, ACBrNFe, ACbrUtil;

type
  TfrmNFeSelecionarCertificado = class(TfrmModelo)
    StringGrid1: TStringGrid;
    btConfirma: TAdvGlowButton;
    btCancela: TAdvGlowButton;
    procedure btCancelaClick(Sender: TObject);
    constructor create (sender : Tcomponent ; ACBrNFe: TACBrNFe);reintroduce;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNFeSelecionarCertificado: TfrmNFeSelecionarCertificado;

implementation

{$R *.dfm}

procedure TfrmNFeSelecionarCertificado.btCancelaClick(Sender: TObject);
begin
  inherited;
  self.Tag := 0;
end;

constructor TfrmNFeSelecionarCertificado.create (sender : Tcomponent ; ACBrNFe: TACBrNFe);
var  I: Integer;
  ASerie: String;
  AddRow, flag_contem_certificados: Boolean;
begin
  inherited Create(sender);

  try
    ACBrNFe.SSL.LerCertificadosStore;
    AddRow := False;

    with StringGrid1 do
    begin
      ColWidths[0] := 220;
      ColWidths[1] := 250;
      ColWidths[2] := 120;
      ColWidths[3] := 80;
      ColWidths[4] := 150;
      Cells[ 0, 0 ] := 'Num.Série';
      Cells[ 1, 0 ] := 'Razão Social';
      Cells[ 2, 0 ] := 'CNPJ';
      Cells[ 3, 0 ] := 'Validade';
      Cells[ 4, 0 ] := 'Certificadora';
    end;

    flag_contem_certificados :=false;
    For I := 0 to ACBrNFe.SSL.ListaCertificados.Count-1 do
    begin
      with ACBrNFe.SSL.ListaCertificados[I] do
      begin
        ASerie := NumeroSerie;
        if (CNPJ <> '') and (Length(NumeroSerie) >= 16) then
        begin
          with StringGrid1 do
          begin
            if Addrow then
              RowCount := RowCount + 1;

            Cells[ 0, RowCount-1] := NumeroSerie;
            Cells[ 1, RowCount-1] := RazaoSocial;
            Cells[ 2, RowCount-1] := CNPJ;
            Cells[ 3, RowCount-1] := FormatDateBr(DataVenc);
            Cells[ 4, RowCount-1] := Certificadora;
            AddRow := True;
            flag_contem_certificados := true;
          end;
        end;
      end;
    end;
  finally
    btConfirma.Enabled := flag_contem_certificados;
  end;

end;

end.
