unit uDetalheCidades;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoDetalhe, cxLookAndFeels, Data.DB, MemDS,
   DBAccess, Uni, Vcl.ActnList, AdvGlowButton, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls, cxGraphics, cxControls,
   cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, cxDBLabel, Vcl.StdCtrls, Vcl.DBActns, cxMaskEdit,
   cxButtonEdit,
   cxDBEdit, cxTextEdit, Vcl.Mask, RxToolEdit, RXDBCtrl, Datasnap.DBClient,
  cxClasses, System.Actions;

type
   TfrmDetalheCidades = class(TfrmPadraoDetalhe)
      Label1: TLabel;
      qrDetalhecid_001: TIntegerField;
      qrDetalhecid_002: TWideStringField;
      qrDetalhecid_003: TWideStringField;
      qrDetalheest_001: TIntegerField;
      qrDetalhepai_002: TWideStringField;
      Label2: TLabel;
      cxDBTextEdit1: TcxDBTextEdit;
      Label3: TLabel;
      cxDBTextEdit2: TcxDBTextEdit;
      Label9: TLabel;
      Label10: TLabel;
      qrDetalheest_002: TWideStringField;
      cxDBTextEdit3: TcxDBTextEdit;
      cxDBTextEdit4: TcxDBTextEdit;
      cxDBTextEdit5: TcxDBTextEdit;
    edEstado: TcxDBButtonEdit;
      procedure qrDetalheBeforePost(DataSet: TDataSet);
      procedure FormCreate(Sender: TObject);
      procedure FormShow(Sender: TObject);
    procedure qrDetalhecid_001GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   frmDetalheCidades: TfrmDetalheCidades;

implementation

{$R *.dfm}

uses uMenu, uFuncoes;

procedure TfrmDetalheCidades.FormCreate(Sender: TObject);
begin
   sTabela := 'CIDADES';
   inherited;

end;

procedure TfrmDetalheCidades.FormShow(Sender: TObject);
begin
   inherited;
   Campo_Obrigatorio([Label2, Label9]);
end;

procedure TfrmDetalheCidades.qrDetalheBeforePost(DataSet: TDataSet);
begin
   EventoExit.BtnExit(edEstado);
   //
   if Trim(qrDetalhecid_002.AsString) = '' then
   begin
      Application.MessageBox('Favor informar a Descrição.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalhecid_002);
      Abort;
   end;
   //
   if qrDetalheest_001.IsNull then
   begin
      Application.MessageBox('Favor informar o Estado.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalheest_001);
      Abort;
   end;
   //
   inherited;

end;

procedure TfrmDetalheCidades.qrDetalhecid_001GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
   if qrDetalhecid_001.AsInteger = 0 then
      Text := 'NOVO'
   else
      Text := qrDetalhecid_001.AsString;
end;

end.
