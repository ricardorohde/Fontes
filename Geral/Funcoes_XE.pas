unit Funcoes_XE;

interface

uses
   Forms, Controls, ComCtrls, SysUtils, Graphics, Windows, Messages, DateUtils, Math, StdCtrls, WinSock,
   ExtCtrls, Classes, DB, cxGrid, cxGridBandedTableView, Variants, XMLDoc, XMLIntf, IPHLPAPI, TypInfo, StrUtils, DBGrids,
   DBClient, Dialogs, SQLExpr, Uni, {RpRave, RpDefine, RpCon, RpConDS,} VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart;
   //
   ////////////////////////////////////////////////////////////////////////////////////////////////////////
   //                                                                                                    //
   // As units referentes à  IPHelper e IPHLPAPI estão na pasta Geral e devem ser adicionadas ao projeto //
   //                                                                                                    //
   ////////////////////////////////////////////////////////////////////////////////////////////////////////
   //
   function vpis(Dado: String; bMostraMenasgem: Boolean=True):boolean;
   function ChecaBarra(Diretorio: String; Tipo: Integer=1): String;
   function MostraProcessa(Caption: String = 'Aguarde! Processando...'; FileName: String = 'Process.avi'): TForm;
   procedure FechaProcessa(TempForm: TForm);
   procedure ChecaTamCaption(var TempForm: TForm; Animate1: TAnimate);
   function Confirma(Msg, Titulo: String; Som: Boolean=True; NaoDefault: Boolean=False): Boolean;
   function Teclas(Componente: TControl; Tipo: Word): Word;  overload;
   function Teclas(Componente: TcxGrid; Tipo: Word): Word; overload;
   function AjustaData(dtDATA: TDateTime; iTipo: Integer=1): TDateTime;
   function Arredonda(Valor: Extended; Inteiros: Integer=20; Decimais: Integer=2): Extended;
   function ExpandeVersao(sVersao: String): String;
   function Piece(Texto: String; Item: Integer; Separador: String): String;
   function LengthPiece(Texto:String; Separador: String='/'): Integer;
   function ChecaCNPJCPF(DOC: String; Tipo: Integer=0): Boolean;
   function BinToInt(Value: String): LongInt;
   function FileNameCFGDB(sExeName: string; sSufixo: string = ''; sPrefixo: string = 'CFGDB_'): string;
   function GetLocalIP: string;
   function BoolToInt(b: Boolean): Integer;
   function Puro(Text : string) : string;
   function limpaSTR(Text :String; sLimpar: String = #160) :String;
   function FullPuro(Text : string) : string;
   function DataServer(dbSQL: TUniConnection): TDateTime; overload;
   procedure MudaCorRadioGroup(RG: TCustomRadioGroup; Cor: TColor; Item: Integer=-1);
   function StrZero(Num : Extended ; Zeros,Deci: integer): string;
   function Font_Pitch1( Pitch : TFontPitch ):string;
   function Font_Pitch2( Pitch : string ): TFontPitch;
   function Font_Style1( Style : TFontStyles ):string;
   function Font_Style2( Style : String ):TFontStyles;
   procedure DoBleep (Freq : Word; MSecs : LongInt); { Duration of -1 means bleep until the next bleep sent, or ShutUp is called }
   function GetNodeByText(ATree : TTreeView; AValue:String; AVisible: Boolean): TTreeNode;
   function Pad(AValue: string; Const ALength: integer; Const ASide: TAlignment): string;
   function PadL(AValue: string; Const ALength: integer): string;
   function PadR(AValue: string; Const ALength: integer): string;
   function PadC(AValue: string; Const ALength: integer): string;
   function Executa(Comando: PChar; Modo: Integer; var PI: TProcessInformation): Boolean;
   function Alltrim(Text : string) : string;
   procedure RegBlock(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
   procedure RegDup(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
   function NumeroSerie(Drive: String): String;
   function WinExit(flags: integer): boolean;
   function SetPrivilege(privilegeName: string; enable: boolean): boolean;
   function TiraPonto(Text : string; Virgula: boolean=True) : string;
   function TiraCaracter(Texto: String; Caracter: String=#255): String;
   procedure WindowsBeep(Liga: Boolean=False);
   function FileVerInfo(const FileName: string;var FileInfo: TStringList): Boolean;
   function PuroExcel(Text : string) : string;
   function ENumero(Num: String) : Boolean;
   function AnoBiSexto(Ayear: Integer): Boolean;
   function FmtCIC_CGC(Valor: String; Tipo: Integer): String;
   function MesExtenso(Data: TDateTime) : String;
   function SohLetrasENumeros(Texto: String): String;
   procedure HabilitaItemRadioGroup(RG: TCustomRadioGroup; bEnabled: Boolean; Item: Integer=-1);
   procedure MudaFonteRadioGroup(RG: TCustomRadioGroup; Fonte: TFont=nil; Item: Integer=-1);
   function SoNumero(Text: string; Result0: Boolean = True): string;
   function Idade(dtNasc: TDateTime; dtHoje: TDateTime): Integer;
   function LongToShortPath(Long: string): string;
   function ValidaEmail(Email: string): Boolean;            //Validar o Email
   procedure ForcaFoco(CampoDest: TWinControl; ActiveCtrl: TWinControl);   //Força o Focus, quando ele ta com o Focu mas o Cursor nao pisca
   function GeraTagVisualizacaoCxGridBand(band: TcxGridBand):String;
   function Digito(Senha: Real): String;
   procedure ConfiguraParametro(DataType: TFieldType; Param: TParam);
   // Jaqueline - 05/08/2010
   function ObterTamArquivo(sFileName: string): Extended;
   // Piubello - 27/08/2010
   function VarToBoolDef(const V: Variant; const ADefault: Boolean): Boolean;
   // Fernando - 22/11/2010
   function NumAno(Data: TDateTime) : Integer;
   // Ismael - 10/01/2011
   Procedure EntreDatas(DataFinal, DataInicial: TDate; var Anos, Meses, Dias: Integer);
   Function FormataCPF(CPF: string): string;
   function ExportDatasetToXML(sNomeArq, sXML_Root, sXML_Record: String; cdsDADOS: TDataset): boolean;
   function ImportXMLToDataset(sNomeArq, sXML_Root, sXML_Record: String; cdsDADOS: TDataset): boolean;
   // Fernando - 15/06/2011
   function verificaUF(UF: string): boolean;
   // Piubello 11/07/2011
//   function getMAC: TStrings;
   function getNomeMaquina : String;
   function ListProperties(Sender: TObject): TStrings;
   // Piubello - 08/09/2011
   function GeraListaTXT(DataSet: TDataSet; aListaCampos: Array of String; sNomeArq: String; sSeparador: String=';'):boolean;
   function GridColumn(Const Colunas: TDBGridColumns; Atual, Fator: Shortint): TColumn;
   //
//   function getMACFromSQL(dbCONN: TUniConnection): String;
   // Paulo - 14/12/2011
   function PesquisaBarra (dbSQL: TUniConnection; sBarra:String; iEmp:Integer; iGrupo: Integer=1):String;
   function Idade_Extenso(dtInicio: TDateTime; dtFim: TDateTime): String;
   function TotalizaCampo(sCampo: String; cds: TClientDataset):  Currency;
   function Modulo11_banco(sNumero: String): Integer;
   function Modulo10_banco(sNumero: String): Integer;
   function Calcula_Barra(sLinha:String):String;
   function Calcula_LinhaDigitavel(barra: String): String;
   //Matheus - 07/08/2012
   function TrocaVirgPPto(Valor: string): String;
   function ConvertLatitude(sLatitude: String): Double;
   function ConvertLongitude(sLongitude: String): Double;
   //
   // Piubello - 11/09/2012
   function FirstDay(dtData: TDateTime): TDateTime;
   function LastDay(dtData: TDateTime): TDateTime;
   function MudaTexto(Texto: String; Procura: String='/'; Troca: String='\'): String;
   //
   // Piubello - 24/09/2012
   //procedure WriteChartData(Connection: TRvCustomConnection; Chart: TCustomChart);
   //Matheus 23/10/2012
   function ExecuteAndWait(const Path:  Pchar; const Visibility:  Word = SW_SHOWNORMAL; const Wait:  Boolean = False):  Boolean;
   //Matheus
   // This function converts a string to a PAnsiChar
   // If the output is not the same, an exception is raised
   // Author: nogabel@hotmail.com
   function StringToPAnsiChar(stringVar : string) : PAnsiChar;
implementation


function vpis(Dado: String; bMostraMenasgem: Boolean=True): Boolean;
var
   i,wsoma,wm11,wdv,wdigito: integer;
begin
   Result:=False;
   if Trim(Dado) <> '' then begin
      wdv := StrToInt(copy(Dado,11,1));
      wsoma := 0;
      wm11 := 2;
      for i := 1 to 10 do begin
         wsoma := wsoma + (wm11 * StrToInt(Copy(Dado,11 -i, 1)));
         if wm11 < 9 then wm11 := wm11+1 else wm11 := 2;
      end;
      wdigito := 11 - (wsoma mod 11);
      if wdigito > 9 then wdigito := 0;
      if wdv = wdigito then begin
         //Application.MessageBox('Valor válido!','Aviso !', mb_IconStop+mb_ok);
         Result := True;
      end else begin
         if bMostraMenasgem then
            Application.MessageBox('Valor informado não é válido!', 'Atenção!', mb_IconStop+mb_ok);
         Result := false;
      end;
   end;
end;


function BinToInt(Value: String): LongInt;
var
  i, Size: Integer;
begin
  Result := 0;
  Size := Length(Value);

  if Size > 63 then
    Size := 63;
  Size := Size - 1;
  for i := Size downto 0 do
    begin
      if Value[i + 1] = '1' then
        Result := Result + (1 shl (Size - i));
    end;
end;

function ChecaBarra(Diretorio: String; Tipo: Integer=1): String;
begin
   if Tipo=1 then begin   // Se tipo igual a 1, vai verificar e colocar uma \ no final do diretório
      if Copy(Diretorio, Length(Diretorio), 1)<>'\' then
         Result:=Diretorio + '\'
      else
         Result:=Diretorio;
   end else begin         // Se tipo igual a 2, vai verificar e retirar uma \ no final do diretório
      if Copy(Diretorio, Length(Diretorio), 1)='\' then
         Result:=Copy(Diretorio, Length(Diretorio), Length(Diretorio)-1)
      else
         Result:=Diretorio;
   end;
end;

function MostraProcessa(Caption: String = 'Aguarde! Processando...'; FileName: String = 'Process.avi'): TForm;
var
   TempForm: TForm;
   Animate1: TAnimate;
begin
   // Criando formulário e Animação;
   TempForm:=TForm.Create(Nil);
   TempForm.Position:=poScreenCenter;
   Animate1:=TAnimate.Create(Nil);
   Animate1.Parent:=TempForm;
   Animate1.AutoSize:=True;
   if FileExists(ExtractFilePath(Application.ExeName)+FileName) then
      Animate1.FileName:=ExtractFilePath(Application.ExeName)+FileName
   else
      Animate1.CommonAVI:=aviCopyFiles;
   Animate1.Open:=True;
   // Altura do Formulário
   Animate1.Reset;
   Animate1.Invalidate;
   ChecaTamCaption(TempForm, Animate1);
   Animate1.Align:=alClient;
   Animate1.Center:=True;
   Animate1.Active:=True;
   TempForm.BorderIcons:=[];
   TempForm.Caption:=Caption;
   Animate1.BringToFront;
   Animate1.Visible:=True;
   Animate1.Active:=True;
   Animate1.Reset;
   Animate1.Active:=True;
   TempForm.Show;
   Result:=TempForm;
end;

procedure FechaProcessa(TempForm: TForm);
begin
   TempForm.Close;
   PostMessage(TempForm.Handle, WM_CLOSE, 0, 0);
   FreeAndNil(TempForm);
end;

procedure ChecaTamCaption(var TempForm: TForm; Animate1: TAnimate);
var
   Canvas: TCanvas;
begin
   Canvas := TCanvas.Create;
   Canvas.Handle := GetWindowDC(TempForm.Handle);
   if Animate1.Height>Trunc(Canvas.TextHeight(TempForm.Caption)*1.50) then
      TempForm.ClientHeight:=Animate1.Height
   else
      TempForm.ClientHeight:=Trunc(Canvas.TextHeight(TempForm.Caption)*1.50);

   // Largura do formulário
   if Animate1.Width>Trunc(Canvas.TextWidth(TempForm.Caption)*1.50) then
      TempForm.ClientWidth:=Animate1.Width
   else
      TempForm.ClientWidth:=Trunc(Canvas.TextWidth(TempForm.Caption)*1.50);

   Canvas.Destroy;
end;

function Confirma(Msg, Titulo: String; Som: Boolean=True; NaoDefault: Boolean=False): Boolean;
begin
   Result:=False;
   if Som then begin
      Beep(698, 200);
      Beep(494, 200);
   end;
   if NaoDefault=False then Result:=(Application.MessageBox(PChar(Msg), PChar(Titulo), MB_YesNo+MB_ICONQUESTION)=idYes);
   if NaoDefault=True then Result:=(Application.MessageBox(PChar(Msg), PChar(Titulo), MB_YesNo+MB_ICONQUESTION+MB_DEFBUTTON2)=idYes);
end;

function Teclas(Componente: TControl; Tipo: Word): Word;
begin
   // Tipo = vk_Prior então PageUp
   // Tipo = vk_Next então PageDown
   // Tipo = vk_Up então Seta para cima
   // Tipo = vk_Down então Sete para baixo
   //
   Result:=Tipo;
   //
   try
      if Tipo in [vk_Prior, vk_Next, vk_Up, vk_Down] then begin
         Componente.Perform(WM_KEYDOWN, Tipo, 0);
         Componente.Perform(WM_KEYUP, Tipo, 0);
         Result:=0;
      end;
   except
   end;
end;

function Teclas(Componente: TcxGrid; Tipo: Word): Word;
begin
   // Tipo = vk_Prior então PageUp
   // Tipo = vk_Next então PageDown
   // Tipo = vk_Up então Seta para cima
   // Tipo = vk_Down então Sete para baixo
   //
   Result:=Tipo;
   //
   try
      if Tipo in [vk_Prior, vk_Next, vk_Up, vk_Down] then begin
         Componente.Perform(WM_KEYDOWN, Tipo, 0);
         Componente.Perform(WM_KEYUP, Tipo, 0);
         Result:=0;
      end;
   except
   end;
end;

function AjustaData(dtDATA: TDateTime; iTipo: Integer=1): TDateTime;
begin
   case iTipo of
      1: Result:=StartOfTheDay(dtDATA);
      2: Result:=EndOfTheDay(dtDATA)-0.00000002;
   end;
end;

function Arredonda(Valor: Extended; Inteiros: Integer=20; Decimais: Integer=2): Extended;
var
   sFormat: String;
   eFator:  Extended;
begin
   //Result:=RoundTo(Valor, Decimais*-1);
   eFator:=(5/(Power(10.0, Decimais+1)));
   if (Valor<0) then
      eFator:=eFator*-1;
   Result:=Trunc((Valor+eFator) * Power(10, Decimais)) / Power(10, Decimais);
   //sFormat:='%.'+IntToStr(Decimais)+'f';
   //Result:=StrToFloat(Format(sFormat, [Result]));
end;

function ExpandeVersao(sVersao: String): String;
begin
   Result:=FormatFloat('0000', StrToIntDef(Piece(sVersao, 1, '.'), 0))+'.'+
           FormatFloat('0000', StrToIntDef(Piece(sVersao, 2, '.'), 0))+'.'+
           FormatFloat('0000', StrToIntDef(Piece(sVersao, 3, '.'), 0))+'.'+
           FormatFloat('0000', StrToIntDef(Piece(sVersao, 4, '.'), 0));
end;

function Piece(Texto: String; Item: Integer; Separador: String): String;
var
   Resultado: String;
   Tot, i: Integer;
begin
   Tot:=0;
   Texto:=Texto+Separador;
   for i:=1 to Length(Texto) do if Texto[i]=Separador then Inc(Tot);
   if Item>Tot then begin
      Result:='';
      Exit;
   end;
   if Texto='' then begin
      Result:='';
      Exit;
   end;
   i:=0; Resultado:='';
   while Pos(Separador,Texto)<>0 do begin
      inc(i);
      Resultado:=Copy(Texto,1,Pos(Separador,Texto)-1);
      if i=Item then Break;
      Delete(Texto,1,Pos(Separador,Texto));
   end;
   Result:= Resultado;
end;

function LengthPiece(Texto:String; Separador: String='/'): Integer;
var
   i: Integer;
begin
   Result := 0;
   for i:=1 to Length(Texto) do if Texto[i]=Separador then Inc(Result);
end;

function ChecaCNPJCPF(DOC: String; Tipo: Integer=0): Boolean;
var
   D: Array[0..15] of integer;
   i: Integer;
   dv1, dv2, soma: Integer;
   Resto: Integer;
   Doc1, Doc2: Boolean;
   T: TForm;
   BtnCNPJ, BtnCPF, BtnOutros: TButton;
   Tam: Integer;
   ncpf, nDoc: String;
   Peso: String;
begin
   //Tipo=1=CNPJ
   //Tipo=2=CPF
   //Tipo=3=OUTROS
   if Tipo=3 then begin
      Result:=True;
      Exit;
   end;

   // Testando o Formato do documento
   Doc1:=False;
   if ((Copy(DOC,3,1)='.') and (Copy(DOC,7,1)='.') and (Copy(DOC,11,1)='/') and (Copy(DOC,16,1)='-')) then Doc1:=True;
   // Documento é do tipo CNPJ
   if Doc1 then begin
      if Length(FullPuro(DOC))<14 then begin
         Application.MessageBox('Formato do CNPJ: 99.999.999/9999-99', 'ATENÇÃO',0+64);
         Result:=False;
         Exit;
      end;
      // Movendo is digitos para a matriz
      for i:=1 to 15 do begin
         D[i]:=StrToIntDef(DOC[i],0);
      end;
      // Testando  o primeiro digito.
      Soma:=(5*D[1])+(4*D[2])+(3*D[4])+(2*D[5])+(9*D[6])+(8*D[8])+(7*D[9])+(6*D[10])+
          (5*D[12])+(4*D[13])+(3*D[14])+(2*D[15]);

      Resto:=Soma mod 11;
      if (Resto=0) or (Resto=1) then dv1:=0 else dv1:=11-Resto;

      // Testando  o segundo digito.
      Soma:=(6*D[1])+(5*D[2])+(4*D[4])+(3*D[5])+(2*D[6])+(9*D[8])+(8*D[9])+(7*D[10])+
          (6*D[12])+(5*D[13])+(4*D[14])+(3*D[15])+(2*dv1);

      Resto:=Soma mod 11;
      if (Resto=0) or (Resto=1) then dv2:=0 else dv2:=11-Resto;

      // Comparando os Dígitos encontrados e os digitados.
      if (dv1<>StrToIntDef(Copy(DOC,17,1),0)) or (dv2<>StrToIntDef(Copy(DOC,18,1),0)) then begin
         Application.MessageBox('CNPJ inválido!','ATENÇÃO',0+64);
         Result:=False;
         Exit;
      end;
      Result:=True;
      Exit;
   end;
   if Tipo=1 then begin     //Tipo=1=CNPJ
      if not Doc1 then begin
         Application.MessageBox('Formato do CNPJ: 99.999.999/9999-99','ATENÇÃO',0+64);
         Result:=False;
         Exit;
      end;
   end;
   // Testando se é CPF
   Doc2:=False;
   if ((Copy(DOC,4,1)='.') and (Copy(DOC,8,1)='.') and (Copy(DOC,12,1)='-')) then Doc2:=True;

   if Doc2 then begin
      if Length(FullPuro(DOC))<11 then begin
         Application.MessageBox('CPF inválido!','ATENÇÃO',0+64);
         Result:=False;
         Exit;
      end;
      nDoc:=copy(Doc,1,3)+copy(Doc,5,3)+copy(Doc,9,3);
      ncpf:=Copy(nDoc,1,9);
      Tam:=length(ncpf);
      Peso:='098765432';
      soma:=0;
      for i:=1 to tam do begin
         if (i=1) and (copy(Peso,i,1)='0') then soma:=soma+(StrToIntDef(Copy(ncpf,i,1),0)*10)
         else soma:=soma+(StrToIntDef(Copy(ncpf,i,1),0)*StrToIntDef(Copy(Peso,i,1),0));
      end;
      resto := soma mod 11;
      dv1 := 11-resto;
      if (resto=0) or (resto=1) then dv1:=0;
      ncpf:=ncpf+IntToStr(dv1);
      Tam:=length(ncpf);
      Peso:='1098765432';
      soma:=0;
      for i:=1 to tam do begin
         if (i=1) and (copy(Peso,i,1)='1') then soma:=soma+(StrToIntDef(Copy(ncpf,i,1),0)*11)
         else if (i=2) and (copy(Peso,i,1)='0') then soma:=soma+(StrToIntDef(Copy(ncpf,i,1),0)*10)
         else soma:=soma+(StrToIntDef(Copy(ncpf,i,1),0)*StrToIntDef(Copy(Peso,i,1),0));
      end;
      resto := soma mod 11;
      dv2 := 11-resto;
      if (resto=0) or (resto=1) then dv2:=0;
      ncpf:=ncpf+intToStr(dv2);
      if ncpf='000000000-00' then begin
         dv1:=9; dv2:=9;
      end;
      if copy(Doc,13,2)<>intToStr(dv1)+intToStr(dv2) then begin
         Application.MessageBox('CPF inválido!','ATENÇÃO',0+64);
         Result:=False;
         Exit;
      end;
      Result:=True;
   end;

   if Tipo=2 then begin     //Tipo=2=CPF
      if not Doc2 then begin
         Application.MessageBox('Formato do CPF: 999.999.999-99','ATENÇÃO',0+64);
         Result:=False;
         Exit;
      end;
   end;

   if (Doc1=False) and (Doc2=False) then begin
      T:=TForm.Create(nil);
      //
      with T do begin
         Left := 391;
         Top := 103;
         BorderStyle := bsToolWindow;
         Caption := 'Selecione o tipo de documento';
         ClientHeight := 35;
         ClientWidth := 262;
         Color := clBtnFace;
         Font.Charset := DEFAULT_CHARSET;
         Font.Color := clWindowText;
         Font.Height := -11;
         Font.Name := 'MS Sans Serif';
         Font.Style := [];
         OldCreateOrder := False;
         Position := poScreenCenter;
         PixelsPerInch := 96;
      end;
      BtnCNPJ:=TButton.Create(nil);
      with BtnCNPJ do begin
         Parent:=T;
         Left := 6;
         Top := 6;
         Width := 75;
         Height := 25;
         Caption := '&1 - CNPJ';
         ModalResult := 15;
         TabOrder := 0;
      end;
      BtnCPF:=TButton.Create(nil);
      with BtnCPF do begin
         Parent:=T;
         Left := 95;
         Top := 6;
         Width := 75;
         Height := 25;
         Caption := '&2 - CPF';
         ModalResult := 16;
         TabOrder := 1;
      end;
      BtnOutros:=TButton.Create(nil);
      with BtnOutros do begin
         Parent:=T;
         Left := 181;
         Top := 6;
         Width := 75;
         Height := 25;
         Caption := '&3 - Outros';
         ModalResult := 17;
         TabOrder := 2;
      end;
      //
      case T.ShowModal of
        15: begin
               Application.MessageBox('Formato do CNPJ: 99.999.999/9999-99','ATENÇÃO',0+64);
               Result:=False;
               T.Destroy;
               Exit;
            end;
        16: begin
               Application.MessageBox('Formato do CPF: 999.999.999-99','ATENÇÃO',0+64);
               Result:=False;
               T.Destroy;
               Exit;
            end;
        17: begin
               Result:=True;
               T.Destroy;
               Exit;
            end;
      end;
   end;
end;

function FileNameCFGDB(sExeName: string; sSufixo: string = ''; sPrefixo: string = 'CFGDB_'): string;
begin
   Result := sPrefixo+ChangeFileExt(ExtractFileName(sExeName), '') + sSufixo + '.xml';
end;

function GetLocalIP: string;
type
   TaPInAddr = array [0..10] of PInAddr;
   PaPInAddr = ^TaPInAddr;
var
   phe: PHostEnt;
   pptr: PaPInAddr;
   Buffer: array [0..63] of AnsiChar;
   i: Integer;
   GInitData: TWSADATA;
begin
   WSAStartup($101, GInitData);
   Result := '';
   GetHostName(Buffer, SizeOf(Buffer));
   phe :=GetHostByName(buffer);
   if phe = nil then Exit;
   pptr := PaPInAddr(Phe^.h_addr_list);
   i := 0;
   while pptr^[i] <> nil do begin
      result:=StrPas(inet_ntoa(pptr^[i]^));
      Inc(i);
   end;
   WSACleanup;
end;

function BoolToInt(b: Boolean): Integer;
begin
   if (b) then Result := 1 else Result := 0;
end;

function Puro(Text : string) : string;
var
   sCarac: String;
   i: Byte;
begin
   sCarac:='(),./-:;';
   for i:=1 to Length(sCarac) do
      while Pos(sCarac[i],Text) > 0 do
         Delete(Text,Pos(sCarac[i],Text),1);
   Result := Text;
end;

function limpaSTR(Text :String; sLimpar: String = #160) :String;
var
   i: Byte;
begin
   for i:=1 to Length(sLimpar) do
      while Pos(sLimpar[i],Text) > 0 do
         Delete(Text,Pos(sLimpar[i],Text),1);
   Result := Text;
end;

function FullPuro(Text : string) : string;
var
   sCarac: String;
   i: Byte;
begin
   sCarac:='(),./-:; ';
   for i:=1 to Length(sCarac) do
      while Pos(sCarac[i],Text) > 0 do
         Delete(Text,Pos(sCarac[i],Text),1);
   Result := Text;
end;

function DataServer(dbSQL: TUniConnection): TDateTime; overload;
var
   zqr: TUniQuery;
begin
   zqr := TUniQuery.Create(nil);
   with zqr, SQL do begin
      Connection:=dbSQL;
      Text:='SELECT CURRENT_TIMESTAMP AS DTSRV';
      Open;
      Result:=FieldByName('DTSRV').AsDateTime;
      Close;
   end;
   FreeAndNil(zqr);
end;

procedure MudaCorRadioGroup(RG: TCustomRadioGroup; Cor: TColor; Item: Integer=-1);
var
   i: Integer;
begin
   if RG is TCustomRadioGroup then begin
      if Item=-1 then begin
         for i:=0 to Pred(RG.ComponentCount) do begin
             TRadioButton(RG.Components[i]).Font.Color:=cor;
         end;
      end else begin
         if (Item>=0) and (Item<=Pred(RG.ComponentCount)) then
            TRadioButton(RG.Components[Item]).Font.Color:=cor;
      end;
   end;
end;

function StrZero(Num : Extended ; Zeros,Deci: integer): string;
var tam,z : integer;
    res,zer,Resultado : string;
begin
   Str(Num:Zeros:Deci, res);
   res :=Trim(res);
   tam := length(res);
   zer := '';
   for z := 1 to (Zeros-tam) do
       zer := zer + '0';
   Resultado := zer+res;
   for z:=1 to Length(Resultado) do begin
      if (Resultado[z] in ['.',',']) then Resultado[z]:= FormatSettings.DecimalSeparator;
   end;
   Result:=Resultado;
end;

Function Font_Pitch1( Pitch : TFontPitch):string;
begin
   if Pitch = fpDefault      then Font_Pitch1 := 'fpDefault'
   else if Pitch = fpDefault then Font_Pitch1 := 'fpDefault'
   else if Pitch = fpDefault then Font_Pitch1 := 'fpDefault';
end;

{ Função que configura a string em Pitch }
function Font_Pitch2( Pitch : string):TFontPitch;
begin
   if Pitch = 'fpDefault'      then Font_Pitch2 := fpDefault
   else if Pitch = 'fpDefault' then Font_Pitch2 := fpDefault
   else Font_Pitch2 := fpDefault;
end;

{ Função que retorna os dados do Style em string }
function Font_Style1( Style: TFontStyles ):string;
begin
   if Style = [fsBold]                        then Font_Style1 := 'fsBold'
   else if Style = [fsBold..fsItalic]         then Font_Style1 := 'fsBold..fsItalic'
   else if Style = [fsBold..fsUnderline]      then Font_Style1 := 'fsBold..fsUnderlin'
   else if Style = [fsBold..fsStrikeOut]      then Font_Style1 := 'fsBold..fsStrikeOut'
   else if Style = [fsItalic]                 then Font_Style1 := 'fsItalic'
   else if Style = [fsItalic..fsUnderline]    then Font_Style1 := 'fsItalic..fsUnderlin'
   else if Style = [fsItalic..fsStrikeOut]    then Font_Style1 := 'fsItalic..fsStrikeOut'
   else if Style = [fsUnderline]              then Font_Style1 := 'fsUnderlin'
   else if Style = [fsUnderline..fsStrikeOut] then Font_Style1 := 'fsUnderline..fsStrikeOut'
   else if Style = [fsStrikeOut]              then Font_Style1 := 'fsStrikeOut'
   else Font_Style1 := '' ;
end;

{ Função que configura os dados da string em Style }
function Font_Style2( Style: string): TFontStyles;
begin
   if Style = 'fsBold'                        then Font_Style2 := [fsBold]
   else if Style = 'fsBold..fsItalic'         then Font_Style2 := [fsBold..fsItalic]
   else if Style = 'fsBold..fsUnderline'      then Font_Style2 := [fsBold..fsUnderline]
   else if Style = 'fsBold..fsStrikeOut'      then Font_Style2 := [fsBold..fsStrikeOut]
   else if Style = 'fsItalic'                 then Font_Style2 := [fsItalic]
   else if Style = 'fsItalic..fsUnderline'    then Font_Style2 := [fsItalic..fsUnderline]
   else if Style = 'fsItalic..fsStrikeOut'    then Font_Style2 := [fsItalic..fsStrikeOut]
   else if Style = 'fsUnderline'              then Font_Style2 := [fsUnderline]
   else if Style = 'fsUnderline..fsStrikeOut' then Font_Style2 := [fsUnderline..fsStrikeOut]
   else if Style = 'fsStrikeOut'              then Font_Style2 := [fsStrikeOut]
   else Font_Style2 := [] ;
end;

procedure DoBleep (Freq : Word; MSecs : LongInt);
Begin
  If MSecs < -1 Then MSecs := 0;
  Windows.Beep (Freq, MSecs);
End;

function GetNodeByText(ATree : TTreeView; AValue:String; AVisible: Boolean): TTreeNode;
var
   Node: TTreeNode;
begin
   Result := nil;
   if ATree.Items.Count = 0 then Exit;
   Node := ATree.Items[0];
   while Node <> nil do
   begin
      if (Pos(UpperCase(AValue), UpperCase(Node.Text)) > 0)  then begin
         Result := Node;
         if AVisible then
            Result.MakeVisible;
         Break;
      end;
      Node := Node.GetNext;
   end;
end;

function Pad(AValue: string; Const ALength: integer; Const ASide: TAlignment): string;
begin
   AValue := Trim(AValue);
   if Length(AValue) > ALength then AValue := copy(AValue,1,ALength);
   case ASide of
      taLeftJustify: while length(AValue) < Alength do AValue := AValue + ' ';
      taRightJustify: while length(AValue) < Alength do AValue := ' ' + AValue;
      taCenter: while length(AValue) < ALength do
                if (length(AValue) mod 2)=0 then
                   AValue := AValue + ' '
                else
                   AValue := ' ' + AValue;
   end;
   Result := AValue;
end;

function PadL(AValue: string; Const ALength: integer): string;
begin
  Result := Pad(AValue,ALength,taLeftJustify);
end;

function PadR(AValue: string; Const ALength: integer): string;
begin
  Result := Pad(AValue,ALength,taRightJustify);
end;

function PadC(AValue: string; Const ALength: integer): string;
begin
  Result := Pad(AValue,ALength,taCenter);
end;

function Executa(Comando: PChar; Modo: Integer; var PI: TProcessInformation): Boolean;
var
   SI: TStartupInfo;
begin
   FillChar(SI, sizeof(SI),0);
   with SI do begin
      cb := sizeof(SI);
      dwFlags := STARTF_USESHOWWINDOW;
      wShowWindow := Modo;
   end;
   Executa := CreateProcess(nil, Comando, nil, nil, false, 0, nil, nil, SI, PI);
end;

function Alltrim(Text : string) : string;
begin
   while Pos(' ',Text) > 0 do
         Delete(Text,Pos(' ',Text),1);
   Result := Text;
end;

procedure RegBlock(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
var
   Tam,P: Integer;
   S,U: String;
begin
   Tam:=Length('Record locked by another user.');
   if Copy(E.Message,1,Tam)='Record locked by another user.' then begin
      Action:=daAbort;
      P:=Pos('User:',E.Message)+5;
      U:=Copy(E.Message,P,Length(E.Message));
      S:=Format('Registro já esta sendo editado.' + #13 + #13 + 'Usuário: %s',[U]);
      Application.MessageBox(PChar(S), 'Registro bloqueado', MB_Ok+MB_ICONERROR);
   end;
   if E.Message='Record/Key deleted.' then begin
      Action:=daAbort;
      Application.MessageBox('Registro excluído por outro usuário.', 'Registro excluído', MB_Ok+MB_ICONERROR);
      DataSet.Refresh;
   end;
end;

procedure RegDup(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
begin
   if E.Message='Key violation.' then begin
      Action:=daAbort;
      Application.MessageBox('Código já cadastrado','Registro duplicado',
                 MB_Ok+MB_ICONERROR);
   end;
end;

function NumeroSerie(Drive: String): String;
var
   Serial: DWord;
   DirLen, Flags: DWord;
   DLabel: Array[0..11] of char;
begin
   try
      GetVolumeInformation(PChar(Drive+'\'),DLabel,12,@Serial,DirLen,Flags,nil,0);
      Result:=IntToHex(Serial,8);
   except
      Result:='';
   end;
end;

function WinExit(flags: integer): boolean;
begin
  Result := True;
  SetPrivilege('SeShutdownPrivilege', true);
  if not ExitWindowsEx(flags, 0) then
      Result := False;
  SetPrivilege('SeShutdownPrivilege', False);
end;

function SetPrivilege(privilegeName: string; enable: boolean): boolean;
var
  tpPrev,
  tp         : TTokenPrivileges;
  token      : THandle;
  dwRetLen   : DWord;
begin
  result := False;

  OpenProcessToken(GetCurrentProcess, TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY, token);

  tp.PrivilegeCount := 1;
  if LookupPrivilegeValue(nil, pchar(privilegeName), tp.Privileges[0].LUID) then
  begin
    if enable then
      tp.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED
    else
      tp.Privileges[0].Attributes := 0;

    dwRetLen := 0;
    result := AdjustTokenPrivileges(token, False, tp, SizeOf(tpPrev), tpPrev, dwRetLen);
  end;
  CloseHandle(token);
end;

function TiraPonto(Text : string; Virgula: boolean=True) : string;
begin
   while Pos('.',Text) > 0 do
      Delete(Text,Pos('.',Text),1);
   if Virgula=True then begin
      while Pos(',',Text) > 0 do
         Delete(Text,Pos(',',Text),1);
   end;

   Result:=Text;
end;

function TiraCaracter(Texto: String; Caracter: String=#255): String;
begin
   while Pos(Caracter, Texto)>0 do Delete(Texto, Pos(Caracter, Texto), 1);
   Result:=Texto;
end;

procedure WindowsBeep(Liga: Boolean=False);
begin
   if Liga then SystemParametersInfo(SPI_SETBEEP,0, nil, 1)
   else SystemParametersInfo(SPI_SETBEEP, 0, nil, 0);
end;

function FileVerInfo(const FileName: string;var FileInfo: TStringList): Boolean;
//
// Obtem diversas informações de um arquivo executável
//
// Requer um StringList criado antes de executar a função
// deve ser declarado na clausula Var no inicio da Unit
// StrLst := TStringList.Create;
//
//
const

Key: array[1..9] of string =('CompanyName',
                             'FileDescription',
                             'FileVersion',
                             'InternalName',
                             'LegalCopyright',
                             'OriginalFilename',
                             'ProductName',
                             'ProductVersion',
                             'Comments');

KeyBr: array [1..9] of string = ('Empresa..........................',
                                 'Descricao........................',
                                 'Versao do Arquivo...........',
                                 'Nome Interno...................',
                                 'Copyright..........................',
                                 'Nome Original do Arquivo.',
                                 'Produto.............................',
                                 'Versao do Produto............',
                                 'Comentarios...............:');
var
   Dummy : Cardinal;
   BufferSize, Len : Integer;
   Buffer : PAnsiChar;
   LoCharSet, HiCharSet : Word;
   Translate, Return : Pointer;
   StrFileInfo, Flags : string;
   TargetOS, TypeArq : string;
   FixedFileInfo : Pointer;
   i : Byte;
begin
   Result := False;
   if not FileExists(FileName) then begin
      Application.MessageBox('Arquivo não encontrado', 'ATENÇÃO', 0);
      Result := False;
      exit;
   end;
   BufferSize := GetFileVersionInfoSize(PWideChar(FileName), Dummy);
   if BufferSize <> 0 then begin
      GetMem(Buffer, Succ(BufferSize));
      try
      if GetFileVersionInfo(PChar(FileName), 0, BufferSize,Buffer) then begin
         if VerQueryValue(Buffer, '\VarFileInfo\Translation', Translate, UINT(Len)) then begin
            LoCharSet := LoWord(Longint(Translate^));
            HiCharSet := HiWord(Longint(Translate^));
            for i := 1 to 9 do begin
               StrFileInfo := Format('\StringFileInfo\0%x0%x\%s',[LoCharSet, HiCharSet, Key[i]]);
               if VerQueryValue(Buffer,PChar(StrFileInfo), Return,UINT(Len)) then begin
                  FileInfo.Add(KeyBr[i] + ': ' + PChar(Return));
               end;
            end;
            if VerQueryValue(Buffer,'\',FixedFileInfo, UINT(Len)) then
               with TVSFixedFileInfo(FixedFileInfo^) do begin
                  Flags := '';
                  if (dwFileFlags and VS_FF_DEBUG) = VS_FF_DEBUG then begin
                     Flags := Concat(Flags,'*Debug* ');
                  end;
                  if (dwFileFlags and VS_FF_SPECIALBUILD) = VS_FF_SPECIALBUILD then begin
                     Flags := Concat(Flags, '*Special Build* ');
                  end;
                  if (dwFileFlags and VS_FF_PRIVATEBUILD) = VS_FF_PRIVATEBUILD then begin
                     Flags := Concat(Flags, '*Private Build* ');
                  end;
                  if (dwFileFlags and VS_FF_PRERELEASE) = VS_FF_PRERELEASE then begin
                     Flags := Concat(Flags, '*Pre-Release Build* ');
                  end;
                  if (dwFileFlags and VS_FF_PATCHED) = VS_FF_PATCHED then begin
                     Flags := Concat(Flags, '*Patched* ');
                  end;
                  if Flags <> '' then begin
                     FileInfo.Add('Atributos: ' + Flags);
                  end;
                  TargetOS := 'Plataforma (OS): ';
                  case dwFileOS of
                     VOS_UNKNOWN : TargetOS := Concat(TargetOS, 'Desconhecido');
                     VOS_DOS : TargetOS := Concat(TargetOS, 'MS-DOS');
                     VOS_OS216 : TargetOS := Concat(TargetOS, '16-bit OS/2');
                     VOS_OS232 : TargetOS := Concat(TargetOS, '32-bit OS/2');
                     VOS_NT : TargetOS := Concat(TargetOS, 'Windows NT');
                     VOS_NT_WINDOWS32, 4: TargetOS := Concat(TargetOS, 'Win32 API');
                     VOS_DOS_WINDOWS16: TargetOS := Concat(TargetOS, '16-bit Windows ','sob MS-DOS');
                  else
                     TargetOS := Concat(TargetOS, 'Fora do Padrão. Código: ', IntToStr(dwFileOS));
                  end;
                  FileInfo.Add(TargetOS);
                  TypeArq := 'Tipo de Arquivo: ';
                  case dwFileType of
                     VFT_UNKNOWN : TypeArq := Concat(TypeArq,'Desconhecido');
                     VFT_APP : TypeArq := Concat(TypeArq,'Aplicacao');
                     VFT_DLL : TypeArq := Concat(TypeArq,'Dynamic-Link Lib.');
                     VFT_DRV : begin
                        TypeArq := Concat(TypeArq,'Device driver - Driver ');
                        case dwFileSubtype of
                           VFT2_UNKNOWN : TypeArq := Concat(TypeArq,'Desconhecido');
                           VFT2_DRV_PRINTER : TypeArq := Concat(TypeArq,'de Impressao');
                           VFT2_DRV_KEYBOARD : TypeArq := Concat(TypeArq,'de Teclado');
                           VFT2_DRV_LANGUAGE : TypeArq := Concat(TypeArq,'de Idioma');
                           VFT2_DRV_DISPLAY : TypeArq := Concat(TypeArq,'de Vídeo');
                           VFT2_DRV_MOUSE : TypeArq := Concat(TypeArq,'de Mouse');
                           VFT2_DRV_NETWORK : TypeArq := Concat(TypeArq,'de Rede');
                           VFT2_DRV_SYSTEM : TypeArq := Concat(TypeArq,'de Sistema');
                           VFT2_DRV_INSTALLABLE : TypeArq := Concat(TypeArq,'Instalavel');
                           VFT2_DRV_SOUND : TypeArq := Concat(TypeArq,'Multimida');
                        end;
                     end;
                  VFT_FONT : begin
                     TypeArq := Concat(TypeArq,'Fonte - Fonte ');
                     case dwFileSubtype of
                        VFT2_UNKNOWN : TypeArq := Concat(TypeArq, 'Desconhecida');
                        VFT2_FONT_RASTER : TypeArq := Concat(TypeArq,'Raster');
                        VFT2_FONT_VECTOR : TypeArq := Concat(TypeArq,'Vetorial');
                        VFT2_FONT_TRUETYPE : TypeArq := Concat(TypeArq,'TrueType');
                     end;
                  end;
                  VFT_VXD : TypeArq := Concat(TypeArq,'Virtual Device');
   VFT_STATIC_LIB: TypeArq := Concat(TypeArq,'Static-Link Lib.');
   end;
   FileInfo.Add(TypeArq);
   end;
   end;
   end;
   finally
   FreeMem(Buffer, Succ(BufferSize));
   Result := FileInfo.Text <> '';
   end;
   end;
end;

function PuroExcel(Text : string) : string;
var
   sCarac: String;
   i: Byte;
begin
   sCarac:=':/?*[]';
   for i:=1 to Length(sCarac)-1 do
      while Pos(sCarac[i],Text) > 0 do
         Delete(Text,Pos(sCarac[i],Text),1);
   Result := Text;
end;

function ENumero(Num: String) : Boolean;
Begin
   Try
      StrToInt(Num);
      Result:=True;
   Except
      Result:=False
   end;
end;

function AnoBiSexto(Ayear: Integer): Boolean;
begin
   Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or(AYear mod 400 = 0));
end;

function FmtCIC_CGC(Valor: String; Tipo: Integer): String;
begin
   if Tipo<>0 then Valor:=Puro(Valor);
   if Tipo=1 then begin   // CGC
      Valor:=Copy(Valor,1,2)+'.'+
             Copy(Valor,3,3)+'.'+
             Copy(Valor,6,3)+'/'+
             Copy(Valor,9,4)+'-'+
             Copy(Valor,13,2);
   end;
   if Tipo=2 then begin   // CIC
      Valor:=Copy(Valor,1,3)+'.'+
             Copy(Valor,4,3)+'.'+
             Copy(Valor,7,3)+'-'+
             Copy(Valor,10,2);
   end;
   if Tipo=3 then begin   // INSCR
      Valor:=Copy(Valor,1,3)+'.'+
             Copy(Valor,4,3)+'.'+
             Copy(Valor,7,3)+'-'+
             Copy(Valor,10,3);
   end;

   Result:=Valor;
end;

function MesExtenso(Data: TDateTime) : String;
begin
   Result:=FormatSettings.LongMonthNames[MonthOf(Data)];
end;

function SohLetrasENumeros(Texto: String): String;
var
   sAux: String;
   i: Integer;
begin
   Texto:=AnsiUpperCase(Texto);
   sAux:='';
   for i:=1 to Length( Texto ) do begin
      if Texto[i] in [' ', 'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','X','W','Y', 'Z'] then
         sAux:= sAux + Texto[i]
      else if Texto[i] in ['0','1','2','3','4','5','6','7','8','9'] then
         sAux:= sAux + Texto[i]
      else if Texto[i] in ['Â','Ã','Á','À'] then
         sAux:= sAux + 'A'
      else if Texto[i] in ['Ê','É','È'] then
         sAux:= sAux + 'E'
      else if Texto[i] in ['Î','Ì','Í'] then
         sAux:= sAux + 'I'
      else if Texto[i] in ['Ô','Õ','Ò','Ó'] then
         sAux:= sAux + 'O'
      else if Texto[i] in ['Û','Ù','Ú'] then
         sAux:= sAux + 'U'
      else if Texto[i] in ['Ç'] then
         sAux:= sAux + 'C';
   end;

   Texto:= sAux;
   sAux:= '';

   while pos('  ', Texto)>0 do Delete(Texto, pos('  ', Texto), 1); {Retira espaços duplos}

   Result:=Trim(Texto);

{   for i:= 1 to Length(Texto)-1 do begin
      if not ((Texto[i] = #32) and (Texto[i+1] = #32)) then
         sAux:= sAux + (Texto[i]);
   end;
   Result:= Trim(sAux);}
end;

procedure HabilitaItemRadioGroup(RG: TCustomRadioGroup; bEnabled: Boolean; Item: Integer=-1);
var
   i: Integer;
begin
   if RG is TCustomRadioGroup then begin
      if Item=-1 then begin
         for i:=0 to Pred(RG.ComponentCount) do begin
             TRadioButton(RG.Components[i]).Enabled:=bEnabled;
         end;
      end else begin
         if (Item>=0) and (Item<=Pred(RG.ComponentCount)) then
            TRadioButton(RG.Components[Item]).Enabled:=bEnabled;
      end;
   end;
end;

procedure MudaFonteRadioGroup(RG: TCustomRadioGroup; Fonte: TFont=nil; Item: Integer=-1);
var
   i: Integer;
begin
   if Fonte=nil then begin
      if RG is TCustomRadioGroup then begin
         if Item=-1 then begin
            for i:=0 to Pred(RG.ComponentCount) do begin
                TRadioButton(RG.Components[i]).Font.Size:=7;
            end;
         end else begin
            if (Item>=0) and (Item<=Pred(RG.ComponentCount)) then
               TRadioButton(RG.Components[Item]).Font.Size:=7;
         end;
      end;
   end else begin
      if RG is TCustomRadioGroup then begin
         if Item=-1 then begin
            for i:=0 to Pred(RG.ComponentCount) do begin
                TRadioButton(RG.Components[i]).Font.Assign(Fonte);
            end;
         end else begin
            if (Item>=0) and (Item<=Pred(RG.ComponentCount)) then
               TRadioButton(RG.Components[i]).Font.Assign(Fonte);
         end;
      end;
   end;
end;

function SoNumero(Text: string; Result0: Boolean = True): string;
var
	I: Integer;
begin
   Result := '';
	for I := 1 to Length(Text) do
   	if StrToIntDef(Text[I], -1) in [0..9] then
         Result := Result + Text[I];
   if (Result0) and (Result = '') then
		Result := '0';
end;

function NumAno(Data: TDateTime) : Integer;
begin
   Result:= StrToInt(FormatDateTime('yyyy',Data));
end;

function Idade(dtNasc: TDateTime; dtHoje: TDateTime): Integer;
begin
   Result:=YearOf(dtHoje)-YearOf(dtNasc);
   if MonthOf(dtHoje)<MonthOf(dtNasc) then Inc(Result, -1);
   if MonthOf(dtHoje)=MonthOf(dtNasc) then begin
      if DayOf(dtHoje)<DayOf(dtNasc) then Inc(Result, -1);
   end;
end;

function LongToShortPath(Long: string): string;
//
// Retorna um Path em formato de nome curto (8 Caracteres)
//
// Requer a filectrl declarada na clausula uses da unit
//
var
   ActualLength: Longint;
begin
   if directoryexists(Long) then
   begin
      SetLength(Result, Length(Long) + 1);
      ActualLength := GetShortPathName(PChar(Long), PChar(Result), Length(Result));
      SetLength(Result, ActualLength);
   end
   else
   begin
      result :=  Long;
   end;
end;

function ValidaEmail(Email: string): Boolean;
const
  	//Valida characters em um "atom"
	atom_chars = [#33..#255] - ['(', ')', '<', '>', '@', ',', ';', ':',
                              '\', '/', '"', '.', '[', ']', #127];
  	//Valida characters em um "quoted-string"
  	quoted_string_chars = [#0..#255] - ['"', #13, '\'];
  	//Valida characters em um subdomain
  	letters = ['A'..'Z', 'a'..'z'];
  	letters_digits = ['0'..'9', 'A'..'Z', 'a'..'z'];
  	subdomain_chars = ['-', '0'..'9', 'A'..'Z', 'a'..'z'];
type
  	States = (STATE_BEGIN, STATE_ATOM, STATE_QTEXT, STATE_QCHAR,
   	  		 STATE_QUOTE, STATE_LOCAL_PERIOD, STATE_EXPECTING_SUBDOMAIN,
    			 STATE_SUBDOMAIN, STATE_HYPHEN);
var
	State: States;
	i, n, subdomains: integer;
  	c: char;
begin
   State := STATE_BEGIN;
   n := Length(Email);
   i := 1;
   subdomains := 1;
   while (i <= n) do
   begin
    	c := email[i];
    	case State of
      STATE_BEGIN:
         if c in atom_chars then
            State := STATE_ATOM
         else if c = '"' then
            State := STATE_QTEXT
         else
            break;
	   STATE_ATOM:
         if c = '@' then
         	State := STATE_EXPECTING_SUBDOMAIN
         else if c = '.' then
           	State := STATE_LOCAL_PERIOD
         else if not (c in atom_chars) then
           	break;
    	STATE_QTEXT:
      	if c = '\' then
        		State := STATE_QCHAR
         else if c = '"' then
        		State := STATE_QUOTE
         else
         if not (c in quoted_string_chars) then
        		break;
    	STATE_QCHAR:
      	State := STATE_QTEXT;
    	STATE_QUOTE:
      	if c = '@' then
        		State := STATE_EXPECTING_SUBDOMAIN
      	else if c = '.' then
        		State := STATE_LOCAL_PERIOD
      	else
        		break;
    	STATE_LOCAL_PERIOD:
      	if c in atom_chars then
        		State := STATE_ATOM
      	else if c = '"' then
        		State := STATE_QTEXT
      	else
        		break;
    	STATE_EXPECTING_SUBDOMAIN:
      	if c in letters then
        		State := STATE_SUBDOMAIN
      	else
        		break;
    	STATE_SUBDOMAIN:
      	if c = '.' then begin
        		inc(subdomains);
        		State := STATE_EXPECTING_SUBDOMAIN
         end else if c = '-' then
        		State := STATE_HYPHEN
         else if not (c in letters_digits) then
        		break;
    	STATE_HYPHEN:
      	if c in letters_digits then
        		State := STATE_SUBDOMAIN
      	else if c <> '-' then
        		break;
    	end;
    	inc(i);
   end;
   if i <= n then
   	Result := False
   else
    	Result := (State = STATE_SUBDOMAIN) and (subdomains >= 2);
end;

procedure ForcaFoco(CampoDest: TWinControl; ActiveCtrl: TWinControl);
begin
   CampoDest := ActiveCtrl;
   ActiveCtrl := nil;
   PostMessage(TWinControl(CampoDest).Handle, WM_SETFOCUS, 0, 0);
   TWinControl(CampoDest).SetFocus;
end;

function GeraTagVisualizacaoCxGridBand(band: TcxGridBand):String;
begin
   Result := '';
   //
   if (band <> nil) then begin
      Result := band.Caption;
      //
      if (band.ParentBand <> nil) then begin
         Result := band.ParentBand.Caption + '_' + Result;
      end;
   end;
   //
   Result := 'BAND_' + Result;
end;

function Digito(Senha: Real): String;
var
   R: Integer;
   D: String;
begin
   R:=Trunc(Senha-((trunc(Senha) div 11)*11));
   D:='X';
   if R=10 then Result:='X' else Result:=IntToStr(R);
end;

procedure ConfiguraParametro(DataType: TFieldType; Param: TParam);
begin
   Param.ParamType:=ptInput;
   Param.DataType:=DataType;
end;

function ObterTamArquivo(sFileName: string): Extended;
var eSize: Extended;
    fArq: TSearchRec;
begin
   // Obter o tamanho do arquivo
   eSize := 0.00;
   if FindFirst(sFileName, faAnyFile, fArq) = 0 then
   begin
      eSize := (fArq.Size / 1024);
      SysUtils.FindClose(fArq);
   end
   else
   begin
      // Caso dê erro ao tentar validar o arquivo, retornar -1
      eSize := -1;
      SysUtils.FindClose(fArq);
   end;
   //
   Result := eSize;
end;

// Piubello  - 27/08/2010
function VarToBoolDef(const V: Variant; const ADefault: Boolean): Boolean;
begin
   if VarIsNull(v) then Result:=ADefault
   else Result:=v;
end;

// Ismael - 10/01/2011
Procedure EntreDatas(DataFinal, DataInicial: TDate; var Anos, Meses, Dias: Integer);
//
// Retorna a diferença em Dias,Meses e Anos entre 2 datas
//
  Function Calcula(Periodo : Integer) : Integer ;
  var
     intCont : Integer ;
  begin
    intCont := 1 ;
    Repeat
      Inc(intCont) ;
      DataFinal := IncMonth(DataFinal,Periodo * -1) ;
    Until DataFinal < DataInicial;
    DataFinal := IncMonth(DataFinal,Periodo) ;
    Inc(intCont, -1) ;
    Result := intCont ;
  End;
begin
  if DataFinal <= DataInicial then begin
    Anos := 0 ;
    Meses := 0 ;
    Dias := 0 ;
    exit ;
  end;
  Anos := Calcula(12) ;
  Meses := Calcula(1) ;
  Dias := Round(DataFinal - DataInicial) ;
end;

Function FormataCPF(CPF: string): string;
begin
   Result := Copy(CPF,1,3)+'.'+Copy(CPF,4,3)+'.'+Copy(CPF,7,3)+'-'+Copy(CPF,10,2);
end;

function ExportDatasetToXML(sNomeArq, sXML_Root, sXML_Record: String; cdsDADOS: TDataset): boolean;
var
   F: TextFile;
   i: Integer;
begin
   Result:=False;
   try
      AssignFile(F, sNomeArq);
      Rewrite(F);
   except
      Exit;
   end;
   //
   cdsDADOS.First;
   Writeln(F, '<?xml version="1.0" encoding="iso-8859-1"?>');
   Writeln(F, '<'+sXML_Root+'>');
   while not cdsDADOS.Eof do begin
      Writeln(F, '   <'+sXML_Record+'>');
      //
      for i := 0 to cdsDADOS.FieldCount - 1 do begin
         Writeln(F, '      <'+cdsDADOS.Fields[i].FieldName+'><![CDATA['+cdsDADOS.Fields[i].AsString+']]></'+cdsDADOS.Fields[i].FieldName+'>');
      end;
      //
      Writeln(F, '   </'+sXML_Record+'>');
      //
      cdsDADOS.Next;
   end;
   Writeln(F, '</'+sXML_Root+'>');
   CloseFile(F);
   Result:=True;
end;

function ImportXMLToDataset(sNomeArq, sXML_Root, sXML_Record: String; cdsDADOS: TDataset): boolean;
var
   F: IXMLDocument;
   i: Integer;
begin
   F.LoadFromFile(sNomeArq);
//   F.ChildNodes.Count
end;
//

//function getMAC: TStrings;
//var
//   lst:  TStringList;
//   mst:  TMIBIfArray;
//   i  :  Integer;
//begin
//   lst:=TStringList.Create;
//   lst.Duplicates:=dupIgnore;
//   lst.Sorted:=True;
//   Get_IfTableMIB(mst);
//   for i := 0 to High(mst) - 1 do begin
//      lst.Add(IntToHex(mst[i].bPhysAddr[1], 2)+
//              IntToHex(mst[i].bPhysAddr[2], 2)+
//              IntToHex(mst[i].bPhysAddr[3], 2)+
//              IntToHex(mst[i].bPhysAddr[4], 2)+
//              IntToHex(mst[i].bPhysAddr[5], 2)+
//              IntToHex(mst[i].bPhysAddr[6], 2));
//   end;
//   //
//   i:=lst.IndexOf('000000000000');
//   if i>-1 then lst.Delete(i);
//   //
//   Result:=lst;
//end;
//

function verificaUF(UF: string): boolean;
const
  aUF: array[1..28] of string =
  ('AC', 'AL', 'AM', 'AP', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MG', 'MS', 'MT',
   'PA', 'PB', 'PE', 'PI', 'PR', 'RJ', 'RN', 'RO', 'RR', 'RS', 'SC', 'SE', 'SP',
   'TO', 'EX');
var
  I: Integer;
begin
  Result := False;
  for I := Low(aUF) to High(aUF) do
    if aUF[I] = UF then
    begin
      Result := True;
      Break;
    end;
end;

function getNomeMaquina : String;
// Retorna o nome do computador
var
  lpBuffer : PChar;
  nSize    : DWord;
const Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
  begin
  try
    nSize    := Buff_Size;
    lpBuffer := StrAlloc(Buff_Size);
    GetComputerName(lpBuffer,nSize);
    Result   := String(lpBuffer);
    StrDispose(lpBuffer);
  except
    Result := '';
  end;
end;

function ListProperties(Sender: TObject): TStrings;
var
  PT  : PTypeData;
  PI  : PTypeInfo;
  I   : Longint;
  PP  : PPropList;
  prI : PPropInfo;
  ppT : PPTypeInfo;
begin
  Result:=TStrings.Create;
  PI:=Sender.ClassInfo;
  PT:=GetTypeData(PI);
  Result.Add('Property Count: '+ IntToStr(PT^.PropCount));
  GetMem (PP, PT^.PropCount*SizeOf(Pointer));
  GetPropInfos(PI, PP);
  For I:=0 to PT^.PropCount-1 do
    begin
    With PP^[i]^ do
      begin
      if True then
      prI := GetPropInfo(Sender, name);
      ppT := prI^.PropType;
      try
         Result.Add('Property: '+IntToStr(i+1)+' '+name+' = '+ VarToStr(GetPropValue(Sender, name)));
      except
         on E: Exception do begin
            Result.Add('Property: '+IntToStr(i+1)+' '+name+' = ERRO: '+E.Message);
         end;
      end;
      end;
    end;
  FreeMem(PP);
end;

// Piubello - 08/09/2011
function GeraListaTXT(DataSet: TDataSet; aListaCampos: Array of String; sNomeArq: String; sSeparador: String=';'):boolean;
var
   i: Integer;
   fTXT: TextFile;
   sLin: String;
   bPos: TBookmark;
begin
   try
      AssignFile(fTXT, sNomeArq);
      Rewrite(fTXT);
   except
      CloseFile(fTXT);
      Result:=False;
      Exit;
   end;
   bPos:=DataSet.GetBookmark;
   DataSet.DisableControls;
   DataSet.First;
   while not DataSet.Eof do begin
      sLin:='';
      for i:=0 to High(aListaCampos) do begin
         sLin:=sLin+DataSet.FieldByName(aListaCampos[i]).AsString+IfThen(i=System.High(aListaCampos), '', sSeparador);
      end;
      Writeln(fTXT, sLin);
      DataSet.Next;
   end;
   if DataSet.BookmarkValid(bPos) then DataSet.GotoBookmark(bPos);
   DataSet.FreeBookmark(bPos);
   DataSet.EnableControls;
   CloseFile(fTXT);
   Result:=True;
end;

function GridColumn(Const Colunas: TDBGridColumns; Atual, Fator: Shortint): TColumn;
var
   i: Shortint;
begin
   i:=Atual;
   repeat
      i:=i+Fator;
      if i=Atual then begin
         Result:=nil;
         Break;
      end;
      if (Fator < 0) and (i<0) then i:=Colunas.Count-1;
      if (Fator > 0) and (i>Colunas.Count-1) then i:=0;
      if fsBold in Colunas.Items[i].Title.Font.Style then begin
         Result:=Colunas.Items[i];
         Break;
      end;
   until (False);
end;

//function getMACFromSQL(dbCONN: TUniConnection): String;
//var
//   qr:  TUniQuery;
//   lst: TStrings;
//   i:   Integer;
//   S:   String;
//begin
//   lst:=getMAC;
//   for i := 0 to lst.Count - 1 do S:=S+QuotedStr(lst[i])+IfThen(i<(lst.Count - 1), ', ', '');
//   qr := TUniQuery.Create(nil);
//   with qr, SQL do begin
//      Clear;
//      Connection:=dbCONN;
//      Add('SELECT NET_ADDRESS ');
//      // Piubello - 30/07/2012
//      // Alteração devido ao não acesso ao database MASTER
//      //  Add('FROM MASTER..SYSPROCESSES');
//      Add('FROM SYS.SYSPROCESSES');
//      Add('WHERE (PROGRAM_NAME = '+QuotedStr(ExtractFileName(Application.ExeName))+')');
//      Add('  AND (NET_ADDRESS IN ('+S+'));');
//      //ShowMessage(Text);
//      try
//         Open;
//         Result:=FieldByName('NET_ADDRESS').AsString;
//      except
//         Result:='';
//      end;
//      Close;
//   end;
//   FreeAndNil(qr);
//end;

// Diego - 03/01/2013
// Parâmetro iGrupo - (Grupo de Projeto), default é o grupo do TopEng.
function PesquisaBarra (dbSQL: TUniConnection; sBarra:String; iEmp:Integer; iGrupo: Integer = 1):String;
var sTipo, sTra, sMat:String;
    qr: TUniQuery;
    i:Integer;
begin
   // Jaqueline - 24/07/2012
   // **********************************************
   // Tipos de Identificadores de Documento:
   //   01 - Material
   //   02 - Requisição de Almoxarifado - RA
   //   03 - Ordem de Compra - OC
   //   04 - Romaneio de Almoxarifado - RO
   //   05 - Requisição de Patrimônio - RP
   //   06 - Romaneio de Patrimônio - RT
   //   07 - Transferência de Almoxarifado - TR
   // **********************************************
   //
   // Diego - 03/01/2013 - PCP
   // **********************************************
   // Tipos de Identificadores de Documento:
   //   05 - Requisição de Material - RM
   //   04 - Romaneio de Galvanização/Pintura/tercerização   -RO
   // **********************************************
   //
   // ******************************************************************************
   // Composição do Código de Barras:
   //    Exemplo:   03050010000125     - Ordem de Compra
   //
   //  '03'  = Identificador do tipo de Documento
   //  '050' = Identificador da Empresa que pertence o Documento
   //  '01'  = Identificar do ID da Filial (utilizado apenas por tabelas que tenham a filial na PK,
   //                                       como a Ordem de Compra. As demais tabelas tem que passar '00' (Zero))
   //  '0000125' = Identificador interno do Documento na Tabela (ID interno)
   // ******************************************************************************
   //
   // **********************************************
   // Tipos de Retorno da Função:
   //   - '01': Empresa do Código de barras é diferente da Empresa Logada
   //   - Demais retornos, retornará o Identificador do Documento na Tabela.
   // **********************************************
   //
   // Verificar se a Empresa do Código de Barras é diferente da Empresa Logada
   if (iEmp <> StrToInt(copy(sBarra, 3, 3))) then begin
      Result:='01';
      exit;
   end;
   //
   // Obter o Identificador do Tipo de Documento
   sTipo := copy(sBarra, 1, 2);
   //
   // Validar o Código de Barras
   case StrToIntDef(sTipo, 0) of
      1: begin
            // Diego OS: 1565 28/03/2013
            case iGrupo of
               1: begin
                  // Código de Barras do Material
                  sMat := copy(sBarra, 6, 9);
                  for i:=1 to 9 do begin
                     if copy(sMat, i, 1) <> '0' then Break;
                  end;
                  //
                  Result := copy(sMat, i);

                  end;

               5: begin
                     Result := Copy(sBarra, 9, 6);
                  end;
            end;
         end;
      2: begin

            case iGrupo of
               // Código de Barras da Requisição de Almoxarifado - RA
               1: begin
                     Result := 'RA' + copy(sBarra, 9, 6);
                  end;
               // Código de Barras da Requisição de Material - RM
               5: begin
                     Result := Copy(sBarra, 9, 6);
                  end;
            end;


         end;
      3: begin
            case iGrupo of
               1: begin
                     // Código de Barras da Ordem de Compra - OC
                     qr := TUniQuery.Create(nil);
                     qr.Connection := dbSQL;
                     with qr, SQL do begin
                        Clear;
                        Add('SELECT FIL_002        ');
                        Add('  FROM FILIAL         ');
                        Add(' WHERE EMP_001 = :emp ');
                        Add('   AND FIL_001 = :fil ');
                        ParamByName('emp').AsInteger := StrToInt(copy(sBarra, 3, 3));
                        ParamByName('fil').AsInteger := StrToInt(copy(sBarra, 6, 2));
                        Open;
                     end;
                     if (not qr.Eof) then begin
                        Result := qr.FieldByName('FIL_002').AsString + copy(sBarra, 9, 6);
                     end;
                     qr.Close;
                     FreeAndNil(qr);
                  end;
                  // Romaneio de Embarque PCP
               5: begin
                     Result := 'RE' + copy(sBarra, 9, 6);
                  end;
            end;
         end;
         //Diego 24/07/2012 - OS: 1528
      4: begin
            // Código de Barras do Romaneio de Almoxarifado - RO
               case iGrupo of
               // Código de Barras da Requisição de Patrimônio - RP
               1: begin
                     Result := 'RO' + copy(sBarra, 9, 6);
                  end;
               // Código de Barras da Romaneio de Galvanização/Pintura/Tercerização - RM
               5: begin
                     Result := copy(sBarra, 9, 6);
                  end;
            end;
         end;
      5: begin
            case iGrupo of
               // Código de Barras da Requisição de Patrimônio - RP
               1: begin
                     Result := 'RP' + copy(sBarra, 9, 6);
                  end;
               // Código de Barras da Requisição de Material - RM
               5: begin
                     Result := 'RM' + copy(sBarra, 9, 6);
                  end;
            end;
         end;
      6: begin
            // Código de Barras da Romaneio de Patrimônio - RT
            Result := 'RT' + copy(sBarra, 9, 6);
         end;
      7: begin
            // Código de Barras da Transferência de Almoxarifado - TR
            sTra := copy(sBarra, 6, 9);
            for i:=1 to 9 do begin
               if copy(sTra, i, 1) <> '0' then Break;
            end;
            //
            Result := copy(sTra, i);
         end;
      8: begin
            // Código de Barras da Lista de Separação de Embarque
            Result := 'LE' + copy(sBarra, 9, 6);
         end;
   end;
end;

function Idade_Extenso(dtInicio: TDateTime; dtFim: TDateTime): String;
var
   iA1, iM1, iD1: Word;
   iA2, iM2, iD2: Word;
   Ano, Mes, Dia: Word;
   sAno, sMes: String;
begin
   DecodeDate(dtInicio, iA1, iM1, iD1);
   DecodeDate(dtFim, iA2, iM2, iD2);
   //
   Ano:=(iA2-iA1);
   //
   if (iM1<=iM2) then begin
      Mes:=iM2-iM1
   end else begin
     Mes:=12+(iM2-iM1);
     Ano:=Ano-1;
   end;
   //
   if (iD1<=iD2) then
      Dia:=iD2-iD1
   else
     Dia:=30+(iD2-iD1);
   //
   sAno:='';
   if (Ano>0) then sAno:=Format('%d ano(s), ', [Ano]);
   //
   sMes:='';
   if (Mes>0) then sMes:=Format('%d mes(es) e ', [Mes]);
   //
   Result:=Format('%s%s%d dia(s)', [sAno, sMes, Dia]);
end;

// Piubello - 31/01/2012
// Retorna a somatória de uma coluna do ClientDataset
function TotalizaCampo(sCampo: String; cds: TClientDataset):  Currency;
var
   b: TBookmark;
begin
   b:=cds.GetBookmark;
   //
   Result:=0.00;
   //
   cds.Last;
   while not cds.Bof do begin
      Result:=Result+cds.FieldByName(sCampo).AsCurrency;
      cds.Prior;
   end;
   //
   if cds.BookmarkValid(b) then cds.GotoBookmark(b);
   cds.FreeBookmark(b);
end;

function Modulo11_banco(sNumero: String): Integer;
var
   iSoma, iFator, iBase, iResto, iContador, i, iDigito: Integer;
   sParcial: String;
begin
    iBase := 9;
    iResto:= 0;
    iSoma := 0;
    iFator := 2;
    //
    sNumero:=SoNumero(sNumero);
    //
    for i:=length(sNumero) downto 1 do begin
       //
       iSoma:=iSoma+(StrToInt(sNumero[i]) * iFator);
       //
       if iFator=iBase then iFator:=1;
       //
       iFator:=iFator+1;
    end;
     //iSoma := iSoma * 10;
     iDigito := 11 - (iSoma mod 11);
     if (iDigito > 9) then iDigito := 0;
     //
     if (iDigito = 0) then iDigito := 1;

     Result:=iDigito;
end;

function Modulo10_banco(sNumero: String): Integer;
var
   iSoma, iFator, iContador, i: Integer;
   sParcial: String;
begin
   sNumero := SoNumero(sNumero);
	iSoma  := 0;
	iFator := 2;
	iContador:=Length(sNumero);
	while (iContador >= 1) do begin
		i := StrToInt(Copy(sNumero, iContador, 1)) * iFator;
      //
		if (i >= 10) then i := (1 + (i - 10));
      //
      iSoma := (iSoma + i);
      //
      if (iFator = 2) then iFator:=1 else iFator:=2;
      //
		iContador := iContador - 1;
   end;
   //
   Result := (10 - (iSoma mod 10));
   //
   if (Result = 10) then Result := 0;
end;

function Calcula_Barra(sLinha:String):String;
var
 sbarra, sMsg1, sMsg2: String;
begin
   sbarra:='';
   sMsg1 :='';
   sMsg2 :='';
   sbarra:=SoNumero(slinha);
   ///
   {if (modulo11_banco(sbarra) <> 1) then begin
       ShowMessage('Código de Barras Invalido!');
   end;}
   ///
   if (Length(sbarra) < 47 ) then
       sbarra:= sbarra + Copy('00000000000',1,47 - length(sbarra));
   ///
  { if (Length(sbarra) <> 47 ) then begin
      ShowMessage('A linha do Código de Barras está incompleta!');
   end; }
   ///
   sbarra:=  copy(sbarra,1,4)
           + copy(sbarra,33,15)
           + copy(sbarra,5,5)
           + copy(sbarra,11,10)
           + copy(sbarra,22,10);
   //
   sMsg1:= IntToStr(Modulo11_banco(copy(sbarra,1,4) + copy(sbarra,6,39)));
   sMsg2:= Copy(sbarra,5,1);
   {if sMsg1 <> sMsg2 then
      ShowMessage('Digito verificador ' + copy(sbarra,4,1)+', o correto é '+IntToStr(modulo11_banco(copy(sbarra,0,4)+copy(sbarra,5,39)))+ ' \no sistema não altera automaticamente o dígito correto na quinta casa!');}
   //
   Result:= sbarra;
end;

function Calcula_LinhaDigitavel(barra: String): String;
var
   sCampo: Array[1..5] of String;
begin
	Result := SoNumero(barra);
   //
	if (Length(Result) <> 44) then begin
      ShowMessage('A linha do código de barras está incompleta!');
      Result:='';
      Exit;
   end;
   //
   sCampo[1]:=Copy(Result, 1, 4)+Copy(Result, 20, 1)+'.'+Copy(Result, 21, 4);
   sCampo[2]:=Copy(Result, 25, 5)+'.'+Copy(Result, 25+5, 5);
   sCampo[3]:=Copy(Result, 35, 5)+'.'+Copy(Result, 35+5, 5);
   sCampo[4]:=Copy(Result, 5, 1);
   sCampo[5]:=Copy(Result, 6, 14);
	//
	if (modulo11_banco( Copy(Result, 1, 4) + Copy(Result, 6, 99)) <> StrToIntDef(sCampo[4], -1) ) then begin
	   ShowMessage('Digito verificador '+sCampo[4]+', o correto é '+IntToStr(modulo11_banco(Copy(Result, 1, 4)+Copy(Result, 6, 99)))+#13'O sistema não altera automaticamente o dígito correto na quinta casa!');
      Result:='';
      Exit;
   end;
	//
	if (sCampo[5] = '0') then sCampo[5] := '000';
	//
   Result:=SoNumero(sCampo[1]+IntToStr(modulo10_banco(sCampo[1]))
           + sCampo[2] + IntToStr(modulo10_banco(sCampo[2]))
           + sCampo[3] + IntToStr(modulo10_banco(sCampo[3]))
           + sCampo[4]
           + sCampo[5]);
end;

function TrocaVirgPPto(Valor: string): String;
   var i:integer;
begin
    if Valor <>'' then begin
        for i := 0 to Length(Valor) do begin
            if Valor[i]=',' then Valor[i]:='.';
        end;
     end;
     Result := valor;
end;

function ConvertLatitude(sLatitude: String): Double;
var
  iFator   : Integer;
  iGraus   : Integer;
  iMinutos : Integer;
  fSegundos: Real;
  fLatitude: Double;
begin
   //LATITUDE
   if (Pos('S', sLatitude)>0) then begin
      iFator:=-1;
      iGraus:=StrToInt(Copy(sLatitude, 1, Pos('S', sLatitude)-1));
      iMinutos:=StrToInt(Copy(sLatitude, Pos('S', sLatitude)+1, 2));
      fSegundos:=StrToFloat(Copy(sLatitude, Pos('S', sLatitude)+3, 2) + ',' + Copy(sLatitude, Pos('S', sLatitude)+5, 2));
   end else begin
      iFator:=-1;
      iGraus:=StrToInt(Copy(sLatitude, 1, Pos('N', sLatitude)-1));
      iMinutos:=StrToInt(Copy(sLatitude, Pos('N', sLatitude)+1, 2));
      fSegundos:=StrToFloat(Copy(sLatitude, Pos('N', sLatitude)+3, 2) + ',' + Copy(sLatitude, Pos('N', sLatitude)+5, 2));
   end;
   fLatitude := (iGraus + (iMinutos/60) + (fSegundos/3600)) * iFator;
   //
   Result := 0;
   Result := fLatitude;
end;

function ConvertLongitude(sLongitude: String): Double;
var
  iFator   : Integer;
  iGraus   : Integer;
  iMinutos : Integer;
  fSegundos: Real;
  fLongitude: Double;
begin
  //Longitude
   if (Pos('W', sLongitude)>0) then begin
      iFator:=-1;
      iGraus:=StrToInt(Copy(sLongitude, 1, Pos('W', sLongitude)-1));
      iMinutos:=StrToInt(Copy(sLongitude, Pos('W', sLongitude)+1, 2));
      fSegundos:=StrToFloat(Copy(sLongitude, Pos('W', sLongitude)+3, 2) + ',' + Copy(sLongitude, Pos('W', sLongitude)+5, 2));
   end else begin
      iFator:=-1;
      iGraus:=StrToInt(Copy(sLongitude, 1, Pos('E', sLongitude)-1));
      iMinutos:=StrToInt(Copy(sLongitude, Pos('E', sLongitude)+1, 2));
      fSegundos:=StrToFloat(Copy(sLongitude, Pos('E', sLongitude)+3, 2) + ',' + Copy(sLongitude, Pos('E', sLongitude)+5, 2));
   end;
   fLongitude := (iGraus + (iMinutos/60) + (fSegundos/3600)) * iFator;
   //
   Result := 0;
   Result := fLongitude;
end;
    //
   // Piubello - 11/09/2012
function FirstDay(dtData: TDateTime): TDateTime;
begin
   Result:=StartOfTheMonth(dtData);
end;

function LastDay(dtData: TDateTime): TDateTime;
begin
   Result:=AjustaData(EndOfTheMonth(dtData) , 2);
end;

function MudaTexto(Texto: String; Procura: String='/'; Troca: String='\'): String;
begin
   Result:=ReplaceStr(Texto, Procura, Troca);
end;

{procedure WriteChartData(Connection: TRvCustomConnection; Chart: TCustomChart);
var
   MetaFile: TMetaFile;
   Stream: TMemoryStream;
begin
   MetaFile := Chart.TeeCreateMetafile(false,Chart.GetRectangle);
   Stream := TMemoryStream.Create;
   try
      MetaFile.SaveToStream(Stream);
      Connection.WriteBlobData(Stream.Memory^,Stream.Size);
   finally
      FreeAndNil(Stream);
      FreeAndNil(MetaFile);
   end;
end; }

function ExecuteAndWait(const Path:  Pchar; const Visibility:  Word = SW_SHOWNORMAL; const Wait:  Boolean = False):  Boolean;
var
  ProcessInformation:  TProcessInformation;
  StartupInfo:  TStartupInfo;
begin
  FillChar(StartupInfo, SizeOf(TStartupInfo), 0);
  with StartupInfo do
  begin
    cb          := SizeOf(TStartupInfo);
    lpReserved  := NIL;
    lpDesktop   := NIL;
    lpTitle     := NIL;
    dwFlags     := STARTF_USESHOWWINDOW;
    wShowWindow := Visibility;
    cbReserved2 := 0;
    lpReserved2 := NIL
  end;

  result := CreateProcess(NIL,                     {address of module name}
                          Path,                    {address of command line}
                          NIL,                     {address of process security attributes}
                          NIL,                     {address of thread security attributes}
                          FALSE,                   {new process inherits handle}
                          NORMAL_PRIORITY_CLASS,   {creation flags}
                          NIL,                     {address of new environment block}
                          NIL,                     {address of current directory name}
                          StartupInfo,
                          ProcessInformation);
  if Result then
  begin
    with ProcessInformation do
    begin
      if Wait then
      WaitForSingleObject(hProcess, INFINITE);
      CloseHandle(hThread);
      CloseHandle(hProcess)
    end;
   end;
end;

// This function converts a string to a PAnsiChar
// If the output is not the same, an exception is raised
// Author: nogabel@hotmail.com

function StringToPAnsiChar(stringVar : String) : PAnsiChar;
var
   AnsString : AnsiString;
   InternalError : Boolean;
begin
   InternalError := false;
   Result := '';
   try
      if stringVar <> '' then begin
         AnsString := AnsiString(StringVar);
         Result := PAnsiChar(PAnsiString(AnsString));
      end;
   except
      InternalError := true;
   end;
   if InternalError or (String(Result) <> stringVar) then begin
      Raise Exception.Create('Conversion from string to PAnsiChar failed!');
   end;
end;

end.



