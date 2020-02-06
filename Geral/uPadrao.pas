unit uPadrao;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, DB, Datasnap.DBClient,
   Vcl.ActnList,
   Vcl.ToolWin, cxGridDBTableView, cxCalendar,
   Vcl.ExtCtrls, MemDS, DBAccess, Uni, Vcl.StdCtrls, cxGraphics, cxControls,
   cxLookAndFeels, cxLookAndFeelPainters,
   cxPCdxBarPopupMenu, cxPC, Vcl.DBActns, AdvGlowButton, cxDBEdit, cxButtonEdit,
   cxDBLabel,
   cxEdit, cxTextEdit, cxGroupBox, cxImageComboBox, cxClasses, System.Actions,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
   TfrmPadrao = class(TForm)
      ActionList1: TActionList;
      pnPadrao: TPanel;
      tBarPadrao: TToolBar;
      cxLookAndFeelController1: TcxLookAndFeelController;
      DataSetFirst1: TDataSetFirst;
      DataSetPrior1: TDataSetPrior;
      DataSetNext1: TDataSetNext;
      DataSetLast1: TDataSetLast;
      DataSetInsert1: TDataSetInsert;
      DataSetDelete1: TDataSetDelete;
      DataSetEdit1: TDataSetEdit;
      DataSetRefresh1: TDataSetRefresh;
      act_confirmar: TAction;
      act_cancelar: TAction;
      CoolBar1: TCoolBar;
      cdsCFG: TClientDataSet;
    cdsCFGTEXTO: TStringField;
    cdsCFGNUMERO: TFloatField;
    cdsCFGLOGICO: TBooleanField;
    cdsCFGDATA: TDateTimeField;
    cdsCFGNOME: TStringField;
      procedure FormKeyPress(Sender: TObject; var Key: Char);
      procedure FormDestroy(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsCFGAfterPost(DataSet: TDataSet);
   private
      fIgnoraEnter: TStrings;
      bCloseF4: Boolean;
      //
      procedure SetIgnoraEnter(const Value: TStrings);
      procedure KeyDown_IncDay(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure setSufix(const Value: String);
      { Private declarations }
   public
      fSufix: String;
      //
      procedure Formatar_String(Campo: TStringField; Mask: String);
      procedure Formatar_Float(Campo: TFloatField; Mask: String = '#,##0.00');
      procedure Formatar_DateTime(Campo: TDateTimeField;
        Mask: String = 'DD/MM/YYYY HH:MM:SS');
      property IgnoraEnter2Tab: TStrings read fIgnoraEnter write SetIgnoraEnter;
      property Sufix: String read fSufix write setSufix;
      procedure Campo_Obrigatorio(Titulos_Campo: array of TLabel);
      procedure Ajusta_Componentes;
      procedure Implementa_Ajusta_Componentes(idx: Integer); Virtual;
      procedure Grid_Imagem_Situacao(Coluna: TcxGridDBColumn; Descricao: String;
        Valor: Variant; idxImagem: Integer);
      Procedure AbreXMLCFG;
      procedure GravaString(sNome, sValor: String);
      Procedure GravaInteger(sNome: String; iValor: Integer);
      Procedure GravaFloat(sNome: String; eValor: Extended);
      Procedure GravaBoolean(sNome: String; bValor: Boolean);
      Procedure GravaDateTime(sNome: String; dtValor: TDateTime);

      //EXEMPLO
//      GravaInteger('ULTORD', cbPesquisa.ItemIndex);
//      GravaString('ULTPESQ', edPesquisa.Text);
//      GravaDateTime('ULTDTINICIO', edDataini.Date);
//      GravaBoolean('ULTATIVO', ckAtivos.Checked);
//
//      LerInteger('ULTORD');
//      LerString('ULTPESQ');
//      LerDateTime('ULTDTINICIO');
//      LerBoolean('ULTATIVO');

      Function LerInteger(sNome: String; Default: Integer = 0): Integer;
      Function LerString(sNome: String; Default: String=''): String;
      function LerFloat(sNome: String; Default: Extended=0.00): Extended;
      Function LerBoolean(sNome: String; Default: Boolean=False): Boolean;
      Function LerDateTime(sNome: String; DefaultNow: Boolean=False): TDateTime;

      { Public declarations }
   end;

var
   frmPadrao: TfrmPadrao;

implementation

{$R *.dfm}

uses uMenu, uFuncoes;

procedure TfrmPadrao.GravaBoolean(sNome: String; bValor: Boolean);
begin
  if FileExists(cdsCFG.FileName) then cdsCFG.Open else cdsCFG.CreateDataSet;
  if (cdsCFG.Locate('NOME', sNome, [])) then begin
    cdsCFG.Edit;
  end else begin
    cdsCFG.Append;
    cdsCFGNOME.AsString:=sNome;
  end;
  cdsCFGLOGICO.AsBoolean:=bValor;
  cdsCFG.Post;
  cdsCFG.Close;
end;

procedure TfrmPadrao.GravaDateTime(sNome: String; dtValor: TDateTime);
begin
   if FileExists(cdsCFG.FileName) then cdsCFG.Open else cdsCFG.CreateDataSet;
   //
   if (cdsCFG.Locate('NOME', sNome, [])) then begin
      cdsCFG.Edit;
   end else begin
      cdsCFG.Append;
      cdsCFGNOME.AsString:=sNome;
   end;
   cdsCFGDATA.AsDateTime:=dtValor;
   cdsCFG.Post;
   //
   cdsCFG.Close;
end;

procedure TfrmPadrao.GravaFloat(sNome: String; eValor: Extended);
begin
   if FileExists(cdsCFG.FileName) then cdsCFG.Open else cdsCFG.CreateDataSet;
   // Quando vazio, exclui;
   if (eValor=0.00) then begin
      if (cdsCFG.Locate('NOME', sNome, [])) then begin
         cdsCFG.Delete;
         cdsCFG.Close;
         Exit;
      end else begin
         cdsCFG.Close;
         Exit;
      end;
   end;
   //
   if (cdsCFG.Locate('NOME', sNome, [])) then begin
      cdsCFG.Edit;
   end else begin
      cdsCFG.Append;
      cdsCFGNOME.AsString:=sNome;
   end;
   cdsCFGNUMERO.AsFloat:=eValor;
   cdsCFG.Post;
   //
   cdsCFG.Close;
end;

procedure TfrmPadrao.GravaInteger(sNome: String; iValor: Integer);
begin
   if FileExists(cdsCFG.FileName) then
      cdsCFG.Open
   else
      cdsCFG.CreateDataSet;
   // Quando vazio, exclui;
   if (iValor = 0) then
   begin
      if (cdsCFG.Locate('NOME', sNome, [])) then
      begin
         cdsCFG.Delete;
         cdsCFG.Close;
         Exit;
      end
      else
      begin
         cdsCFG.Close;
         Exit;
      end;
   end;
   //
   if (cdsCFG.Locate('NOME', sNome, [])) then
   begin
      cdsCFG.Edit;
   end
   else
   begin
      cdsCFG.Append;
      cdsCFGNOME.AsString := sNome;
   end;
   cdsCFGNUMERO.AsInteger := iValor;
   cdsCFG.Post;
   cdsCFG.Close;
end;

procedure TfrmPadrao.GravaString(sNome, sValor: String);
begin
   if FileExists(cdsCFG.FileName) then begin
      // Caso ocorra um problema com a leitura do XML, apenas recria;
      try
         cdsCFG.Open;
      except
         cdsCFG.CreateDataSet;
      end;
   end else begin
      cdsCFG.CreateDataSet;
   end;
   // Quando vazio, exclui;
   if (sValor='') then begin
      if (cdsCFG.Locate('NOME', sNome, [])) then begin
         cdsCFG.Delete;
         cdsCFG.Close;
         Exit;
      end else begin
         cdsCFG.Close;
         Exit;
      end;
   end;

   if (cdsCFG.Locate('NOME', sNome, [])) then begin
      cdsCFG.Edit;
   end else begin
      cdsCFG.Append;
      cdsCFGNOME.AsString:=sNome;
   end;
   cdsCFGTEXTO.AsString:=sValor;
   cdsCFG.Post;
   cdsCFG.Close;
end;

procedure TfrmPadrao.Grid_Imagem_Situacao(Coluna: TcxGridDBColumn;
  Descricao: String; Valor: Variant; idxImagem: Integer);
var
   ComboItem: TcxImageComboBoxItem;
begin
   ComboItem := TcxImageComboBoxProperties(Coluna.Properties).Items.Add;
   ComboItem.Description := Descricao;
   ComboItem.ImageIndex := idxImagem;
   ComboItem.Value := Valor;
end;

procedure TfrmPadrao.KeyDown_IncDay(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if ((Key = VK_ADD) or (Key = VK_SUBTRACT)) and
     (TcxDBDateEdit(Sender).Date = -700000) then
      TcxDBDateEdit(Sender).Date := Now;
   if (Key = VK_ADD) then
      TcxDBDateEdit(Sender).Date := TcxDBDateEdit(Sender).Date + 1;
   if (Key = VK_SUBTRACT) then
      TcxDBDateEdit(Sender).Date := TcxDBDateEdit(Sender).Date - 1;
end;

function TfrmPadrao.LerBoolean(sNome: String; Default: Boolean): Boolean;
begin
   if FileExists(cdsCFG.FileName) then cdsCFG.Open else cdsCFG.CreateDataSet;
   //
   if (cdsCFG.Locate('NOME', sNome, [])) then Result:=cdsCFGLOGICO.AsBoolean else Result:=Default;
   //
   cdsCFG.Close;
end;

function TfrmPadrao.LerDateTime(sNome: String; DefaultNow: Boolean): TDateTime;
begin
   if FileExists(cdsCFG.FileName) then cdsCFG.Open else cdsCFG.CreateDataSet;
   //
   if (cdsCFG.Locate('NOME', sNome, [])) then Result:=cdsCFGDATA.Value else if DefaultNow then Result:=Now;
   //
   cdsCFG.Close;
end;

function TfrmPadrao.LerFloat(sNome: String; Default: Extended): Extended;
begin
   if FileExists(cdsCFG.FileName) then cdsCFG.Open else cdsCFG.CreateDataSet;
   //
   if (cdsCFG.Locate('NOME', sNome, [])) then Result:=cdsCFGNUMERO.AsFloat else Result:=Default;
   //
   cdsCFG.Close;
end;

function TfrmPadrao.LerInteger(sNome: String; Default: Integer): Integer;
begin
   if FileExists(cdsCFG.FileName) then
      cdsCFG.Open
   else
      cdsCFG.CreateDataSet;
   //
   if (cdsCFG.Locate('NOME', sNome, [])) then
      Result := cdsCFGNUMERO.AsInteger
   else
      Result := Default;
   //
   cdsCFG.Close;
end;

function TfrmPadrao.LerString(sNome, Default: String): String;
begin
   if FileExists(cdsCFG.FileName) then cdsCFG.Open else cdsCFG.CreateDataSet;
   if (cdsCFG.Locate('NOME', sNome, [])) then Result:=cdsCFGTEXTO.AsString else Result:=Default;
   cdsCFG.Close;
end;

procedure TfrmPadrao.Implementa_Ajusta_Componentes(idx: Integer);
begin
   // ***********************
end;

procedure TfrmPadrao.AbreXMLCFG;
begin
   if cdsCFG.Active then
      cdsCFG.Close;

   if Not DirectoryExists(ExtractFilePath(Application.ExeName) + 'CONF') then
      ForceDirectories(ExtractFilePath(Application.ExeName) + 'CONF');
   //
//   cdsCFG.FileName := ExtractFilePath(Application.ExeName) + 'CONF\' + fSufix + Self.ClassName + '.XML';
   cdsCFG.FileName := ExtractFilePath(Application.ExeName) + 'CONF\' + fSufix + '.XML';
end;

procedure TfrmPadrao.Ajusta_Componentes;
var
   I: Integer;
begin
   for I := 0 to ComponentCount - 1 do
   begin
      if (Components[I] is TField) then
         with TField(Components[I]) do
         begin
            ReadOnly := False;
            Required := False;
         end;
      //
      if (Components[I] is TPanel) then
         with TPanel(Components[I]) do
         begin
            ParentBackGround := True;
         end;
      //
      if (Components[I] is TLabel) then
         with TLabel(Components[I]) do
         begin
            if Assigned(FocusControl) then
            begin
               Top := FocusControl.Top - 16;
               Left := FocusControl.Left;
            end;
         end;
      //
      if (Components[I] is TDateTimeField) then
         with TDateTimeField(Components[I]) do
         begin
            if EditMask = '' then
            begin
               EditMask := 'DD/MM/YYYY HH:MM:SS';
               DisplayFormat := EditMask;
            end;
         end;
      //
      if (Components[I] is TcxGridDBTableView) then
         with TcxGridDBTableView(Components[I]) do
         begin
            Styles.ContentEven := frmMenu.cxZebra1;
            Styles.ContentOdd := frmMenu.cxZebra2;
            Styles.IncSearch := frmMenu.cxIncSearch;
         end;
      if (Components[I] is TFloatField) then
         with TFloatField(Components[I]) do
         begin
            if EditMask = '' then
            begin
               EditMask := '#,##0';
               DisplayFormat := EditMask;
            end;
         end;
      if (Components[I] is TcxDBDateEdit) then
         with TcxDBDateEdit(Components[I]) do
         begin
            OnKeyDown := KeyDown_IncDay;
            frmMenu.cxImageList1.GetImage(22, Properties.ButtonGlyph);
         end;
      //
      if (Components[I] is TcxDateEdit) then
         with TcxDateEdit(Components[I]) do
         begin
            OnKeyDown := KeyDown_IncDay;
            frmMenu.cxImageList1.GetImage(22, Properties.ButtonGlyph);
         end;
      //
      if (Components[I] is TcxGroupBox) then
         with TcxGroupBox(Components[I]) do
         begin
            Style.TextColor := clBlue;
         end;
      //
    {  if (Components[I] is TRxDBCalcEdit) then
         with TRxDBCalcEdit(Components[I]) do
         begin
            ClickKey := VK_F10;
            FormatOnEditing := True;
            DisplayFormat := DataSource.DataSet.FieldByName(DataField).EditMask;
            DecimalPlaces :=
              Length(Copy(DisplayFormat, Pos('.', DisplayFormat) + 1,
              Length(DisplayFormat)));
         end;  }
      //
  {    if (Components[I] is TRxCalcEdit) then
         with TRxCalcEdit(Components[I]) do
         begin
            ClickKey := VK_F10;
            FormatOnEditing := True;
            DecimalPlaces :=
              Length(Copy(DisplayFormat, Pos('.', DisplayFormat) + 1,
              Length(DisplayFormat)));
         end; }
      //
      if ((Components[I] is TcxDbTextEdit) and
        (TcxDbTextEdit(Components[I]).Style.BorderStyle = ebsNone)) then
         with TcxDbTextEdit(Components[I]) do
         begin
            Style.Font.Color := clMaroon;
            Style.Font.Style := [fsBold];
            ParentColor := False;
            Style.Color := $00E8E8E8;
            Properties.ReadOnly := True;
            TabStop := False;
         end;
      //
      if ((Components[I] is TcxTextEdit) and
        (TcxTextEdit(Components[I]).Style.BorderStyle = ebsNone)) then
         with TcxTextEdit(Components[I]) do
         begin
            Style.Font.Color := clMaroon;
            Style.Font.Style := [fsBold];
            ParentColor := False;
            Style.Color := $00E8E8E8;
            Properties.ReadOnly := True;
            TabStop := False;
         end;
      //
      Implementa_Ajusta_Componentes(I);
   end;
end;

procedure TfrmPadrao.Campo_Obrigatorio(Titulos_Campo: Array of TLabel);
var
   Asterisco: TLabel;
   I: Integer;
begin
   for I := 0 to Length(Titulos_Campo) - 1 do
   begin
      Asterisco := TLabel.Create(Nil);
      Asterisco.Parent := Titulos_Campo[I].Parent;
      Asterisco.Font.Color := clRed;
      Asterisco.Left := Titulos_Campo[I].Left + Titulos_Campo[I].Width;
      Asterisco.Top := Titulos_Campo[I].Top;
      Asterisco.Caption := ' *';
   end;
end;

procedure TfrmPadrao.cdsCFGAfterPost(DataSet: TDataSet);
begin
  cdsCFG.LogChanges := false;
  cdsCFG.MergeChangeLog;
end;

procedure TfrmPadrao.Formatar_DateTime(Campo: TDateTimeField; Mask: String);
begin
   Campo.EditMask := Mask;
   Campo.DisplayFormat := Mask;
end;

procedure TfrmPadrao.Formatar_Float(Campo: TFloatField;
  Mask: String = '#,##0.00');
begin
   Campo.EditMask := Mask;
   Campo.DisplayFormat := Mask;
end;

procedure TfrmPadrao.Formatar_String(Campo: TStringField; Mask: String);
begin
   Campo.EditMask := Mask;
end;

procedure TfrmPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if bCloseF4 then
   begin
      bCloseF4 := False;
      Abort;
   end;
end;

procedure TfrmPadrao.FormCreate(Sender: TObject);
begin
   fIgnoraEnter := TStringList.Create;
   //
   AbreXMLCFG;
end;

procedure TfrmPadrao.FormDestroy(Sender: TObject);
begin
   if Assigned(fIgnoraEnter) then
   begin
      try
         FreeAndNil(fIgnoraEnter);
      except
      end;
   end;
end;

procedure TfrmPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (ssAlt in Shift) and (Key = vk_F4) then
      bCloseF4 := True;
end;

procedure TfrmPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      if Assigned(fIgnoraEnter) then
      begin
         if Assigned(TForm(Sender).ActiveControl) then
         begin
            if (fIgnoraEnter.IndexOf(TForm(Sender).ActiveControl.Name) = -1)
            then
               Perform(WM_NEXTDLGCTL, 0, 0);
         end;
      end
      else
         Perform(WM_NEXTDLGCTL, 0, 0);
   end;
   //
   if Key = #27 then
      Perform(WM_NEXTDLGCTL, 0, 1);
end;

procedure TfrmPadrao.FormShow(Sender: TObject);
begin
   Ajusta_Componentes;
end;

procedure TfrmPadrao.SetIgnoraEnter(const Value: TStrings);
begin
   fIgnoraEnter := Value;
end;



procedure TfrmPadrao.setSufix(const Value: String);
begin
  if (fSufix <> Value) then begin
      fSufix := Value;
      AbreXMLCFG;
   end;
end;

end.
