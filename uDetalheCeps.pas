unit uDetalheCeps;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoDetalhe, cxLookAndFeels, Data.DB, MemDS, DBAccess, Uni,
   Vcl.DBActns,
   Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeelPainters,
   cxContainer,
   cxEdit, Vcl.StdCtrls, Vcl.Mask, RxToolEdit, RXDBCtrl, cxTextEdit, cxDBEdit, Vcl.DBCtrls, cxMaskEdit,
  cxButtonEdit;

type
   TfrmDetalheCeps = class(TfrmPadraoDetalhe)
      qrDetalhecep_001: TIntegerField;
      qrDetalhecep_002: TWideStringField;
      qrDetalhecep_003: TWideStringField;
      qrDetalhecep_004: TWideStringField;
      qrDetalhecid_001: TIntegerField;
      qrDetalhecid_002: TWideStringField;
      qrDetalheest_003: TWideStringField;
      qrDetalhepai_002: TWideStringField;
      Label1: TLabel;
      cxDBTextEdit6: TcxDBTextEdit;
      Label2: TLabel;
      Label3: TLabel;
      cxDBTextEdit2: TcxDBTextEdit;
      Label4: TLabel;
      cxDBTextEdit3: TcxDBTextEdit;
      Label20: TLabel;
      Label23: TLabel;
      Label28: TLabel;
      cxDBTextEdit7: TcxDBTextEdit;
      cxDBTextEdit8: TcxDBTextEdit;
      cxDBTextEdit9: TcxDBTextEdit;
      cxDBTextEdit1: TDBEdit;
    edCidade: TcxDBButtonEdit;
      procedure FormShow(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure qrDetalheBeforePost(DataSet: TDataSet);
    procedure qrDetalhecep_001GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   frmDetalheCeps: TfrmDetalheCeps;

implementation

{$R *.dfm}

uses uFuncoes, uMenu, Funcao_DB, uBtnClick;

procedure TfrmDetalheCeps.FormCreate(Sender: TObject);
begin
   sTabela := 'CEPS';
   inherited;

end;

procedure TfrmDetalheCeps.FormShow(Sender: TObject);
begin
   Formatar_String(qrDetalhecep_002, sMskCEP);
   inherited;
   Campo_Obrigatorio([Label2, Label20, Label4]);
end;

procedure TfrmDetalheCeps.qrDetalheBeforePost(DataSet: TDataSet);
begin
   EventoExit.BtnExit(edCidade);
   //
   if Trim(qrDetalhecep_002.AsString) = '' then
   begin
      Application.MessageBox('Favor informar o CEP.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalhecep_002);
      Abort;
   end;
   //
   if Trim(qrDetalhecep_004.AsString) = '' then
   begin
      Application.MessageBox('Favor informar o Endereço.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalhecep_004);
      Abort;
   end;
   //
   if (qrDetalhecid_001.IsNull) then
   begin
      Application.MessageBox('Favor informar uma Cidade.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalhecid_001);
      Abort;
   end;
   //
   inherited;

end;

procedure TfrmDetalheCeps.qrDetalhecep_001GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
   if qrDetalhecep_001.AsInteger = 0 then
      Text := 'NOVO'
   else
      Text := qrDetalhecep_001.AsString;
end;

end.
