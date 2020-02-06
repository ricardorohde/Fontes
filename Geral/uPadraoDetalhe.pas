unit uPadraoDetalhe;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadrao, Vcl.ComCtrls, Data.DB, Datasnap.DBClient, Vcl.ActnList,
   Vcl.ToolWin, cxGridDBTableView, cxImage, cxDropDownEdit, cxCalendar,
   Vcl.ExtCtrls, MemDS, DBAccess, Uni, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
   cxPCdxBarPopupMenu, cxPC, Vcl.DBActns, AdvGlowButton, cxDBEdit, cxButtonEdit,   cxDBLabel,
   cxEdit, cxTextEdit, cxClasses, System.Actions, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
   TfrmPadraoDetalhe = class(TfrmPadrao)
      qrDetalhe: TUniQuery;
      dsDetalhe: TDataSource;
      DataSetPost1: TDataSetPost;
      DataSetCancel1: TDataSetCancel;
      btnConf: TToolButton;
      btnCanc: TToolButton;
      btnSep1: TToolButton;
      btnIncluir: TToolButton;
      btnEditar: TToolButton;
      btnExcluir: TToolButton;
      procedure FormCreate(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure qrDetalheBeforePost(DataSet: TDataSet);
      procedure qrDetalheNewRecord(DataSet: TDataSet);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormDestroy(Sender: TObject);
    procedure qrDetalheAfterPost(DataSet: TDataSet);
   private
      fbVisualizar: Boolean;
      fbUsaEmpresa: Boolean;
      fbPostClose: Boolean;
      fKey: Variant;
      fsSQL: String;
      fsSequencia: String;
      fstabela: String;
      //fEventExit: TEventExit;
      //
      procedure SetfbVisualizar(Value: Boolean);
      procedure SetfbUsaEmpresa(Value: Boolean);
      procedure SetfbPostClose(Value: Boolean);
      procedure SetfsSQL(Value: String);
      procedure SetfsSequencia(Value: String);
      procedure Setfstabela(Value: String);
      { Private declarations }
   public
      iVenda, iCliente: Integer;
      sCliente: String;
      property bVisualizar: Boolean read fbVisualizar write SetfbVisualizar;
      property bUsaEmpresa: Boolean read fbUsaEmpresa write SetfbUsaEmpresa;
      property bPostClose: Boolean read fbPostClose write SetfbPostClose;
      property Key: Variant read fKey write fKey;
      property sSQL: String read fsSQL write SetfsSQL;
      property sSequencia: String read fsSequencia write SetfsSequencia;
      property sTabela: String read fstabela write Setfstabela;
      //property EventoExit: TEventExit read fEventExit write fEventExit;

      //
      procedure bfCancel(DataSet: TDataSet);
      procedure bfDelete(DataSet: TDataSet);
      procedure bfEdit(DataSet: TDataSet);
      procedure bfInsert(DataSet: TDataSet);
      procedure Pergunta_Cancel(DataSet: TDataSet);
      procedure Implementa_Ajusta_Componentes(idx: Integer); Override;
      { Public declarations }
   end;

var
   frmPadraoDetalhe: TfrmPadraoDetalhe;

implementation

{$R *.dfm}

uses uMenu, uFuncoes, Funcao_DB, uPadraoCons;

procedure TfrmPadraoDetalhe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   if qrDetalhe.State in [dsEdit, dsInsert] then
      qrDetalhe.Cancel;
   //
   if qrDetalhe.Fields[0].AsInteger > 0 then
      ModalResult := mrOk;
end;

procedure TfrmPadraoDetalhe.FormCreate(Sender: TObject);
var
   I: Integer;
begin
   inherited;
   fsSQL := qrDetalhe.SQL.Text;
   fbUsaEmpresa := True;
   fbPostClose := False;
   //fEventExit := TEventExit.Create;
end;

procedure TfrmPadraoDetalhe.FormDestroy(Sender: TObject);
begin
   inherited;
   //FreeAndNil(fEventExit);
end;

procedure TfrmPadraoDetalhe.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   if ssCtrl in Shift then
   begin
      if (Char(Key) in ['I', 'i']) and (btnIncluir.Visible) and (btnIncluir.Enabled) then
         btnIncluir.Click;
      if (Char(Key) in ['E', 'e']) and (btnEditar.Visible) and (btnEditar.Enabled) then
         btnEditar.Click;
      if (Key = VK_DELETE) and (btnExcluir.Visible) and (btnExcluir.Enabled) then
         btnExcluir.Click;
      if (Char(Key) in ['S', 's']) and (btnConf.Visible) and (btnConf.Enabled) then
         btnConf.Click;
      if (Char(Key) in ['C', 'c']) and (btnCanc.Visible) and (btnCanc.Enabled) then
         btnCanc.Click;
   end;
end;

procedure TfrmPadraoDetalhe.FormShow(Sender: TObject);
begin
   if fbUsaEmpresa then
      qrDetalhe.ParamByName('EMP').AsInteger := RecProj.iEmp;
   qrDetalhe.ParamByName('ID').Value := fKey;
   //
   qrDetalhe.Open;
   //
   inherited;
   //
   if Not fbVisualizar then
   begin
      if (fKey = 0) then
         qrDetalhe.Append
      else
         qrDetalhe.Edit;
   end;
end;

procedure TfrmPadraoDetalhe.bfDelete(DataSet: TDataSet);
begin
   if (fbVisualizar) then
      Abort;
   if (DataSet.Name <> 'qrDetalhe') and ((Not btnExcluir.Visible) or (Not btnExcluir.Enabled)) then
      Abort;
   if Not Confirma('Deseja realmente excluir?', 'Atenção', True) then
      Abort;
end;

procedure TfrmPadraoDetalhe.bfEdit(DataSet: TDataSet);
begin
   if (fbVisualizar) then
      Abort;
   if (DataSet.Name <> 'qrDetalhe') and ((Not btnEditar.Visible) or (Not btnEditar.Enabled)) then
      Abort;
end;

procedure TfrmPadraoDetalhe.bfInsert(DataSet: TDataSet);
begin
   if (fbVisualizar) then
      Abort;
   if (DataSet.Name <> 'qrDetalhe') and ((Not btnIncluir.Visible) or (Not btnIncluir.Enabled)) then
      Abort;
end;

procedure TfrmPadraoDetalhe.Implementa_Ajusta_Componentes(idx: Integer);
begin
   inherited Implementa_Ajusta_Componentes(idx);
   //
   if ((Components[idx] is TcxDbTextEdit) and (TcxDbTextEdit(Components[idx]).Style.BorderStyle = ebsNone)) then
      TcxDbTextEdit(Components[idx]).Properties.ReadOnly := True;
   //
   if ((Components[idx] is TcxTextEdit) and (TcxTextEdit(Components[idx]).Style.BorderStyle = ebsNone)) then
      TcxTextEdit(Components[idx]).Properties.ReadOnly := True;
   //
   if fbVisualizar then
   begin
      if (Components[idx] is TcxDbTextEdit) then
         TcxDbTextEdit(Components[idx]).Properties.ReadOnly := True;
      //
      if (Components[idx] is TcxTextEdit) then
         TcxTextEdit(Components[idx]).Properties.ReadOnly := True;
      //
      if (Components[idx] is TcxDBImage) then
         TcxDBImage(Components[idx]).Properties.ReadOnly := True;
      //
      if (Components[idx] is TcxImage) then
         TcxImage(Components[idx]).Properties.ReadOnly := True;
      //
      if (Components[idx] is TcxDBComboBox) then
         TcxDBComboBox(Components[idx]).Properties.ReadOnly := True;
      //
      if (Components[idx] is TcxComboBox) then
         TcxComboBox(Components[idx]).Properties.ReadOnly := True;
      //
    {  if (Components[idx] is TRxDBComboBox) then
         TRxDBComboBox(Components[idx]).ReadOnly := True;
      //
      if (Components[idx] is TRxDBComboEdit) then
         TRxDBComboEdit(Components[idx]).ReadOnly := True;
      //
      if (Components[idx] is TComboEdit) then
         TComboEdit(Components[idx]).ReadOnly := True;  }
      //
      if (Components[idx] is TcxDBDateEdit) then
         TcxDBDateEdit(Components[idx]).Properties.ReadOnly := True;
      //
      if (Components[idx] is TcxDateEdit) then
         TcxDateEdit(Components[idx]).Properties.ReadOnly := True;
      //
   {   if (Components[idx] is TRxDBCalcEdit) then
         TRxDBCalcEdit(Components[idx]).ReadOnly := True;
      //
      if (Components[idx] is TRxCalcEdit) then
         TRxCalcEdit(Components[idx]).ReadOnly := True;   }
      //
      if (Components[idx] is TcxDBButtonEdit) then
         TcxDBButtonEdit(Components[idx]).Properties.ReadOnly := True;
   end;
   //
   if (Components[idx] is TUniQuery) then
      with TUniQuery(Components[idx]) do
      begin
         if Not Assigned(BeforeInsert) then
            BeforeInsert := bfInsert;
         //
         if Not Assigned(BeforeEdit) then
            BeforeEdit := bfEdit;
         //
         if Not Assigned(BeforeCancel) then
            BeforeCancel := bfCancel;
         //
         if Not Assigned(BeforeDelete) then
            BeforeDelete := bfDelete;
         //
         Options.TrimVarChar := True;
      end;
end;

procedure TfrmPadraoDetalhe.bfCancel(DataSet: TDataSet);
begin
   Pergunta_Cancel(DataSet);
end;

procedure TfrmPadraoDetalhe.Pergunta_Cancel(DataSet: TDataSet);
var
   sMensagem: string;
begin
   if DataSet.State = dsInsert then
      sMensagem := 'Confirma o cancelamento da inclusão deste registro?'
   else
      sMensagem := 'Confirma o cancelamento da edição deste registro?';
   //
   if Confirma(sMensagem, 'ATENÇÃO', True) = False then
      Abort;
end;

procedure TfrmPadraoDetalhe.qrDetalheAfterPost(DataSet: TDataSet);
begin
  inherited;
   if fbPostClose then
      Self.Close;
end;

procedure TfrmPadraoDetalhe.qrDetalheBeforePost(DataSet: TDataSet);
begin
   inherited;
   ActiveControl := Nil;
   //
   if (fKey = 0) then
   begin
      {if Not fbUsaEmpresa then
         fKey := NovoID(frmMenu.Conexao, fstabela, 0)
      else
         fKey := NovoID(frmMenu.Conexao, fstabela, RecProj.iEmp);  }
      qrDetalhe.Fields[0].AsInteger := fKey;
      qrDetalhe.ParamByName('ID').AsInteger := fKey;
      //
   end;
end;

procedure TfrmPadraoDetalhe.qrDetalheNewRecord(DataSet: TDataSet);
begin
   inherited;
    if fbUsaEmpresa then
      qrDetalhe.Fields[1].AsInteger := RecProj.iEmp;
end;

procedure TfrmPadraoDetalhe.SetfbPostClose(Value: Boolean);
begin
   fbPostClose := Value;
end;

procedure TfrmPadraoDetalhe.SetfbUsaEmpresa(Value: Boolean);
begin
   fbUsaEmpresa := Value;
end;

procedure TfrmPadraoDetalhe.SetfbVisualizar(Value: Boolean);
begin
   fbVisualizar := Value;
end;

procedure TfrmPadraoDetalhe.SetfsSequencia(Value: String);
begin
   fsSequencia := Value;
end;

procedure TfrmPadraoDetalhe.SetfsSQL(Value: String);
begin
   fsSQL := Value;
end;

procedure TfrmPadraoDetalhe.Setfstabela(Value: String);
begin
   fstabela := Value;
end;



end.
