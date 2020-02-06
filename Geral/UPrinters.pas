(***************************************************************************
  Exemplo:
    with WPrinter do
      begin
        begindoc;
        PageHeight := 66;
        PageWidth :=  90;
        Escape(g_PrnReset);
        Escape(g_PrnDraftCond);
        Escape(g_Prn12cpi);
        Escape(g_Prn6Linhas);

        for I := 1 to 5 do
          begin
            Put(1,16,'AUTORIZAÇÃO DE PAGAMENTO');
            Put(2,01,f_Repl('-',120));
            Put(3,01,'GRUPO               CLASSIFICAÇÃO            VALOR          M.O.        COMPLEMENTO');inc(L);
            Put(4,01,f_Repl('-',120));
            l:=5;
            Put(L,10,'RESPONSÁVEL');
            Put(L,70'AUTORIZANTE');
            put(g_PrnEject);
          end;
        endDoc;
      end;
***************************************************************************)

unit UPrinters;

{$R-}

interface

uses
  Windows, WinSpool, SysUtils, Classes, Graphics,
  Forms, printers;

type

  TWPrinter = class(TObject)
  private
    FHPrinter, FHDevMode: THandle;
    FTitle: string;
    FPrinting: Boolean;
    FAborted: Boolean;
    FBuf: AnsiString;
    FRow, FCol, FPageNumber, FPageHeight, FPageWidth: Integer;
    FADevice, FADriver, FAPort: array[0..256] of char;
    FPrinter: TPrinter;
    FVirtualPrinter: Boolean;
    procedure CheckPrinting(Value: Boolean);
    function GetHandle: THandle;
    function GetPageHeight: Integer;
    function GetPageWidth: Integer;
    procedure SetPageHeight(val: integer);
    procedure SetPageWidth(val: integer);
    function GetCol: Integer;
    function GetRow: Integer;
    procedure SetVirtualPrinter(const Value: Boolean);
  public
    property Title: string read FTitle write FTitle;
    property Handle: THandle read GetHandle;
    property PageHeight: Integer read GetPageHeight write SetPageHeight;
    property PageWidth: Integer read GetPageWidth write SetPageWidth;
    property Printer: TPrinter read FPrinter write Fprinter;
    property PRow: Integer read GetRow;
    property VirtualPrinter: Boolean read FVirtualPrinter write SetVirtualPrinter;
    property PCol: Integer read GetCol;
    constructor Create;
    destructor Destroy; override;
    procedure Abort;
    procedure BeginDoc;
    procedure EndDoc;
    procedure NewPage;
    procedure NewLine;
    procedure GotoLC(l, c: integer);
    procedure Put(w: Variant); overload;
    procedure Put(l, c: Integer; w: Variant); overload;
    procedure PutText(L, C, Linhas, Colunas: Integer; w: string);
    // Função para adicionar itens a um TStringList;
    function AddText(Linhas, Colunas: Integer; w: string): TStringList;
    function CheckText(Linhas, Colunas: Integer; w: string): Integer;
    procedure PutCheckText(L, C, Linhas, LinhaInicio, Colunas: Integer; w: string);
    procedure PutCheckTextSc(L, C, Linhas, LinhaInicio, Colunas: Integer; w: string);
    procedure Escape(w: Variant);
    procedure Flush;
  end;

  // Inicializa o objeto TWPrinter. Semelhante ao TPrint
function WPrinter: TWPrinter;

// Funções de acentuação
function FilterChar(c: char): char;
procedure FilterCopy(var dest: string; orig: string);
function FilterStr(orig: string): string;
function FilterStr850(orig: string): string;
function FilterUStr(orig: string): string;

//***************************************************************
// Funções Extras
//***************************************************************
function f_IniciaRelatorio(pchave, pTitulo: string): Boolean;
function f_ExtractTexto(var Coluna: Integer; W: string; Largura: Integer): string;
procedure f_Justify(var A: string; Tam: Integer; UsaTrim: Boolean);

const
  BufLimit = 65536;

  // Página 1252 sem os acentos
  // 0    1    2    3    4    5    6    7    8    9    A    B    C    D    E    F
const AccentCharTable: array[0..255] of char = (
    char($00), char($01), char($02), char($03), char($04), char($05), char($06), char($07),
    char($08), char($09), char($0A), char($0B), char($0C), char($0D), char($0E), char($0F),
    char($10), char($11), char($12), char($13), char($14), char($15), char($16), char($17),
    char($18), char($19), char($1A), char($1B), char($1C), char($1D), char($1E), char($1F),
    char($20), char($21), char($22), char($23), char($24), char($25), char($26), char($27),
    char($28), char($29), char($2A), char($2B), char($2C), char($2D), char($2E), char($2F),
    char($30), char($31), char($32), char($33), char($34), char($35), char($36), char($37),
    char($38), char($39), char($3A), char($3B), char($3C), char($3D), char($3E), char($3F),
    char($40), char($41), char($42), char($43), char($44), char($45), char($46), char($47),
    char($48), char($49), char($4A), char($4B), char($4C), char($4D), char($4E), char($4F),
    char($50), char($51), char($52), char($53), char($54), char($55), char($56), char($57),
    char($58), char($59), char($5A), char($5B), char($5C), char($5D), char($5E), char($5F),
    char($60), char($61), char($62), char($63), char($64), char($65), char($66), char($67),
    char($68), char($69), char($6A), char($6B), char($6C), char($6D), char($6E), char($6F),
    char($70), char($71), char($72), char($73), char($74), char($75), char($76), char($77),
    char($78), char($79), char($7A), char($7B), char($7C), char($7D), char($7E), char($7F),
    char($43), char($75), char($65), char($61), char($61), char($61), char($61), char($63),
    char($65), char($65), char($65), char($69), char($69), char($69), char($41), char($41),
    char($45), char($4F), char($6F), char($6F), char($6F), char($6F), char($75), char($75),
    char($79), char($4F), char($55), char($9B), char($9C), char($9D), char($9E), char($9F),
    char($61), char($69), char($6F), char($75), char($A4), char($A5), char($61), char($6F),
    char($A8), char($A9), 'a', char($AB), char($AC), char($AD), char($AE), char($AF),
    char($B0), char($B1), char($B2), char($B3), char($B4), char($B5), char($B6), char($B7),
    char($B8), char($B9), 'o', char($BB), char($BC), char($BD), char($BE), char($BF),
    'A', 'A', 'A', 'A', 'A', 'A', 'A', 'C',
    'E', 'E', 'E', 'E', 'I', 'I', 'I', 'I',
    'D', 'N', 'O', 'O', 'O', 'O', 'O', 'x',
    'O', 'U', 'U', 'U', 'U', 'Y', char($DE), char($DF),
    'a', 'a', 'a', 'a', 'a', 'a', 'a', 'c',
    'e', 'e', 'e', 'e', 'i', 'i', 'i', 'i',
    'd', 'n', 'o', 'o', 'o', 'o', 'o', char($F7),
    'o', 'u', 'u', 'u', 'u', 'y', char($FE), 'y'
    );


const CharTable850_1252: array[128..255] of char = (
    char(199), char(252), char(253), char(226), char(228), char(224), char(229), char(231), //135
    char(234), char(235), char(232), char(239), char(238), char(236), char(196), char(197), //143
    char(201), char(145), char(146), char(244), char(246), char(242), char(251), char(249), //151
    char(152), char(214), char(220), char(155), char(156), char(157), char(158), char(159), //159
    char(225), char(237), char(243), char(250), char(241), char(209), char(170), char(186), //167
    char(191), char(174), char(172), char(189), char(188), char(161), char(171), char(187), //175
    char(176), char(177), char(178), char(179), char(180), char(193), char(194), char(192), //183
    char(169), char(185), char(186), char(187), char(188), char(189), char(190), char(191), //191
    char(192), char(193), char(194), char(195), char(196), char(197), char(227), char(195), //199
    char(200), char(201), char(202), char(203), char(204), char(205), char(206), char(207), //207
    char(208), char(209), char(202), char(203), char(200), char(213), char(205), char(206), //215
    char(207), char(217), char(218), char(219), char(220), char(221), char(204), char(223), //223
    char(211), char(223), char(212), char(210), char(245), char(213), char(181), char(222), //231
    char(254), char(218), char(219), char(217), char(253), char(221), char(175), char(146), //239
    char(173), char(241), char(242), char(190), char(244), char(245), char(246), char(247), //247
    char(176), char(168), char(250), char(251), char(179), char(178), char(254), char(255) //223
    );

  //Tamanho da fonte
  c10cpi = #27#80;
  c12cpi = #27#77;
  c17cpi = #15;
  c20cpi = #27#77#15;
  c8linhas = #27#48; // - chr(27)+'0';
  c6linhas = #27#50; // - chr(27)+'2';
  c72linhas = #27#49; // - 7/72 LINHAS
  cIExpandido = #27#87#1; // Incializa Expandido
  cFExpandido = #27#87#0; // Finaliza Expandido
  cICondensado = #27#15; // Inicializa Condensado
  cFCondensado = #18#27#18; // Finaliza Condensado


  c10cpiT = #18#27#80; // P
  c12cpiT = #18#27#77; // M
  c17cpiT = #18#27#80#15;
  c20cpiT = #18#27#77#15;
  c8linhasT = #27#48; // - chr(27)+'0';
  c6linhasT = #27#50; // - chr(27)+'2';
  c72linhasT = #27#49; // - 7/72 LINHAS
  cIExpandidoT = #27#87#1; // Incializa Expandido
  cFExpandidoT = #27#87#0; // Finaliza Expandido
  cICondensadoT = #27#15; // Inicializa Condensado
  cFCondensadoT = #27#18; // Finaliza Condensado


  //Formatação da fonte
  cINegrito = #27#71; // Inicializa Negrito
  cFNegrito = #27#72; // Finaliza Negrito
  cIItalico = #27#52; // Incializa Italico
  cFItalico = #27#53; // Finaliza Italico
  cDraft = #27#120#0;

  //Outros Comandos
  cEject = chr(12);
  cReset = #27#64#27 + 'x' + Chr(0); // reset  -  Draft

  cPrnBrasc = chr(27) + 't' + Chr(0) + chr(27) + '(t' + chr(3) + chr(0) + chr(0) + chr(25) + chr(0);
  cPrnPc437 = chr(27) + 't' + Chr(0) + chr(27) + '(t' + chr(3) + chr(0) + chr(0) + chr(1) + chr(0);


  //CITIZEN
  //Tamanho da fonte
  {c10cpi       = chr(27)+'~30';
  c12cpi       = chr(27)+'~31';
  c15cpi       = chr(27)+'~36';
  c17cpi       = chr(27)+'~32';
  c20cpi       = chr(27)+'~37';

  c8linhas     = #27#48;  // - chr(27)+'0';
  c6linhas     = #27#50;  // - chr(27)+'2';
  c72linhas    = #27#49;  // - 7/72 LINHAS
  cIExpandido  = #27#87#1;
  cFExpandido  = #27#87#0;
  cICondensado = #27#15;
  cFCondensado = #27#18;

  //Formatação da fonte

  cINegrito    = chr(27)+'~13';
  cFNegrito    = chr(27)+'~10';
  cIItalico    = '';//#27#52;
  cFItalico    = '';//#27#53;
  cDraft       = '';//#27#120#0;

  //Outros Comandos
  cEject       = '';//chr(12);
  cReset       = chr(27)+'@';

  cPrnBrasc        = '';//chr(27)+'t'+Chr(0)+chr(27)+'(t'+chr(3)+chr(0)+chr(0)+chr(25)+chr(0);
  cPrnPc437        = '';//chr(27)+'t'+Chr(0)+chr(27)+'(t'+chr(3)+chr(0)+chr(0)+chr(1)+chr(0);
   }

var
  FWPrinter: TWPrinter;

implementation

uses
  Consts, Ufuncoes;

function FilterChar(c: char): char; // Filtra um caracter
begin
  Result := AccentCharTable[Ord(c)];
end;

// Copia uma string para outra, transformando os caracteres acentuados
// em seus respectivos caracteres sem acento.

procedure FilterCopy(var dest: string; orig: string);
var
  i: integer;
begin
  dest := '';
  for i := 1 to Length(orig) do
    dest := dest + AccentCharTable[Ord(orig[i])];
end;

function FilterStr850(orig: string): string;
var
  i: integer;
begin
  Result := '';
  for i := 1 to Length(orig) do begin
      if Ord(orig[i]) > 127 then
        Result := Result + CharTable850_1252[Ord(orig[i])]
      else
        Result := Result + Orig[i];
    end
end;

function FilterStr(orig: string): string;
var
  i: integer;
begin
  Result := '';
  for i := 1 to Length(orig) do
    Result := Result + AccentCharTable[Ord(orig[i])];
end;

function FilterUStr(orig: string): string;
var
  i: integer;
begin
  Result := '';
  for i := 1 to Length(orig) do
    Result := Result + UpperCase(AccentCharTable[Ord(orig[i])]);
end;

//***************************************************************
// Funções Extras
//***************************************************************

function f_IniciaRelatorio(pchave, pTitulo: string): Boolean;
var
  lCorte, densidade: Integer;
  lPrinter, lTipos, lRede, lStatus, lPorta: string;
  lVirtualPrinter: Boolean;
begin
  Result := true;
  {
  try
    if not f_UserPrinter(pChave, lStatus, lPorta, lRede, lPrinter, lCorte, lVirtualPrinter) then
      result := false
    else
      with WPrinter do
        begin
          VirtualPrinter := lVirtualPrinter;
          title := pTitulo;
          BeginDoc;
          Escape(CReset);
          Escape(cDraft);
          Escape(cFCondensado);
          Escape(cFExpandido);
        end;
  except
    result := false;
  end;
  }
end;

function f_ExtractTexto(var Coluna: Integer; W: string; Largura: Integer): string;
var
  i, Tamanho: Integer;
  UsaTrim: Boolean;
begin
  Tamanho := Length(W);
  result := '';
  i := Coluna;
  while (Length(Result) < Largura) and (i <= Tamanho) do begin
      if Coluna <> 1 then
        while (Result = '') and ((W[i] <= #32)) do inc(i);
      case W[i] of
        #32..#255: Result := Result + W[i];
        #1..#12, #14..#31: Result := Result + ' ';
        #13: begin
            while (W[i] <= #32) do inc(i);
            break;
          end;
      end;
      inc(i);
    end;

  // Voltando
  while (i <= Tamanho) and (w[i] in [#33..#255]) do begin
      Dec(i);
      if i <= Coluna then begin
          i := Coluna + Largura - 1;
          break;
        end;
    end;

  i := (I - Coluna);
  if i < largura then Result := Copy(Result, 1, i);

  if Coluna = 1 then
    UsaTrim := False
  else
    UsaTrim := True;
  Coluna := Coluna + i;


  if (Coluna + 1 < Tamanho) then
    f_Justify(Result, Largura, UsaTrim);

end;

procedure f_Justify(var A: string; Tam: Integer; UsaTrim: Boolean);
var
  Brancos, pos: Integer;
begin
  // Justificacao

  if UsaTrim then
    A := Trim(A);

  Brancos := (Tam - Length(A));
  if (System.pos(#32, A) < 1) then Exit; // Sem intervalo para colocar os brancos.

  // Weber - Controle de Espaços em Brancos.
  if Brancos >= (Trunc(Tam / 5)) then Exit;

  pos := 1;
  while (Brancos > 0) do begin
      if (pos < Length(A)) and (A[pos] = #32) and (A[pos + 1] <> #32) then begin
          insert(' ', A, pos);
          Dec(brancos);
          Inc(Pos);
        end;
      Inc(Pos);
      if (pos = Length(A)) and (Brancos > 0) then pos := 1;
    end;
end;


// WPrinter *************************************

function WPrinter: TWPrinter;
begin
  if FWPrinter = nil then
    FWPrinter := TWPrinter.Create;
  Result := FWPrinter;
end;


constructor TWPrinter.Create;
begin
  inherited Create;
  // Caracteristicas default de um formulário padão.
  FPageNumber := 1; FPageHeight := 66; FPageWidth := 256;
  FTitle := 'Sectra Sistemas';
  fVirtualPrinter := False;
end;

destructor TWPrinter.Destroy;
begin
  if FPrinting then EndDoc;
  if FHPrinter <> 0 then ClosePrinter(FHPrinter);
  inherited Destroy;
end;

procedure TWPrinter.CheckPrinting(Value: Boolean);
begin
  if FPrinting <> Value then
    if Value then raise Exception.Create('Erro: função não permitida se a impressora não está imprimindo.')
    else Exception.Create('Erro: função não permitida enquanto a impressora está imprimindo.'); ;
end;

procedure TWPrinter.Abort;
begin
  CheckPrinting(True);
  AbortPrinter(FHPrinter);
  FAborted := True;
  EndDoc;
end;

procedure TWPrinter.BeginDoc;
var
  JobId: DWORD;
  FDocInfo: TDocInfo1;
  CTitle: array[0..128] of Char;
  CDataType: array[0..3] of char;
begin
  if not fVirtualPrinter then
    begin
      CheckPrinting(False);
      StrPLCopy(CTitle, FTitle, SizeOf(CTitle) - 1);
      StrPLCopy(CDataType, 'RAW', Sizeof(CDataType) - 1);
      FillChar(FDocInfo, SizeOf(FDocInfo), 0);

      JobId := 0;

      if FPrinter = nil then
        FPrinter := Printers.Printer;
      FPrinter.GetPrinter(FADevice, FADriver, FAPort, FHDevMode);

      if OpenPrinter(FADevice, FHPrinter, nil) then
        begin
          FDocInfo.pDocName := CTitle;
          FDocInfo.pDatatype := CDataType;
          JobId := StartDocPrinter(FHPrinter, 1, @FDocInfo);
        end;

      FPrinting := True;
      FAborted := False;

      if JobId = 0 then
        raise Exception.Create('Falha no spool. Código = ' + IntToStr(GetLastError));
      Frow := 0; FCol := 0;
    end;
end;

procedure TWPrinter.EndDoc;
begin
  if not fVirtualPrinter then
    begin
      CheckPrinting(True);
      if not FAborted then begin
          //NewPage;
          Flush;
          if FHPrinter <> 0 then begin
              EndDocPrinter(FHPrinter);
              ClosePrinter(FHPrinter);
            end;
          FHPrinter := 0;
        end;
      FPrinting := False;
      FAborted := False;
      FPageNumber := 0;
    end;
end;

procedure TWPrinter.NewPage;
begin
  if not fVirtualPrinter then
    begin
      CheckPrinting(True);
      while (FPageHeight - FRow) > 1 do NewLine;
      NewLine;
      FRow := 0;
      FCol := 0;
    end;
end;

procedure TWPrinter.NewLine;
begin
  if not fVirtualPrinter then
    begin
      CheckPrinting(True);
      FBuf := FBuf + #10;
      Inc(FRow);
      if FRow >= FPageHeight then begin
          Inc(FPageNumber);
          Frow := 0;
        end;
    end;
end;

function TWPrinter.GetHandle: THandle;
begin
  Result := FHPrinter;
end;

function TWPrinter.GetPageHeight: Integer;
begin
  Result := FPageHeight;
end;

function TWPrinter.GetPageWidth: Integer;
begin
  Result := FPageWidth;
end;

procedure TWPrinter.SetPageHeight(val: integer);
begin
  Flush;
  if (FRow > 0) or (FCol > 0) then
    NewPage;
  FPageHeight := val;
end;

procedure TWPrinter.SetPageWidth(val: integer);
begin
  Flush;
  if (FRow > 0) or (FCol > 0) then
    NewPage;
  FPageWidth := val;
end;

procedure TWPrinter.Flush;
var
  BWrt: DWORD;
begin
  if not fVirtualPrinter then
    begin
      if Length(FBuf) > 0 then begin
          if WritePrinter(FHPrinter, PCHAR(FBuf), Length(FBuf), BWrt) then
            FBuf := '';
        end;
    end;
end;

procedure TWPrinter.GotoLC(l, c: integer);
var
  delta: integer;
begin
  if not fVirtualPrinter then
    begin
      CheckPrinting(true);

      //Linha menor que a atual Avançar página
      delta := l - FRow - 1;
      if delta < 0 then begin
          NewPage;
          delta := l - FRow - 1;
        end;

      while delta > 0 do begin
          NewLine;
          Dec(delta);
          FCol := 0;
        end;

      delta := c - FCol - 1;
      if delta < 0 then begin
          FBuf := FBuf + #13;
          FCol := 0;
          delta := c - 1;
        end;

      while delta > 0 do begin
          FBuf := FBuf + ' ';
          Dec(Delta);
          Inc(FCol);
          if FCol >= FPageWidth then begin
              FBuf := FBuf + #13;
              FCol := 0;
            end;
        end;

      if Length(FBuf) > BufLimit then
        Flush;
    end;
end;

procedure TWPrinter.Escape(w: Variant);
begin
  if not fVirtualPrinter then
    FBuf := FBuf + w;
end;

procedure TWPrinter.Put(w: Variant);
var
  what: ansistring;
  i: integer;
begin
  if not fVirtualPrinter then
    begin
      CheckPrinting(true);
      what := FilterStr(w); // Tirando os acentos
      for i := 1 to length(what) do begin
          case what[i] of

            #13: begin
                FCol := 0;
                FBuf := FBuf + #13;
              end;

            #10: NewLine;

            #12: NewPage;

            else if FCol < FPageWidth then
              begin
                FBuf := FBuf + what[i];
                Inc(FCol);
              end;
          end;
        end;
      if Length(FBuf) > BufLimit then
        Flush;
    end;
end;

procedure TWPrinter.PutText(L, C, Linhas, Colunas: Integer; w: string);
var
  linhaAtual, colunaAtual: Integer;
  Texto: string;
begin
  if not fVirtualPrinter then
    begin
      linhaAtual := 1; ColunaAtual := 1;
      if (linhas < 1) or (Colunas < 1) then begin
          Linhas := 4; Colunas := 30;
        end;
      GotoLc(l, c);
      while (linhaAtual <= Linhas) do begin
          Texto := f_ExtractTexto(ColunaAtual, W, Colunas);
          if Texto = '' then break;

          Put(PRow + 1, c, Texto);
          inc(linhaAtual);
        end;
    end;
end;

function TWPrinter.AddText(Linhas, Colunas: Integer; w: string): TStringList;
var
  xx, LinhaBranca, linhaAtual, colunaAtual: Integer;
  Texto: string;
  Aux: TStringList;
begin
  Result := TStringList.Create;
  Aux := TStringList.Create;
  if not fVirtualPrinter then
    begin
      LinhaBranca := 0;
      linhaAtual := 1; ColunaAtual := 1;
      if (linhas < 1) or (Colunas < 1) then begin
          Linhas := 4; Colunas := 30;
        end;
      //GotoLc(l,c);
      while (linhaAtual <= Linhas) do begin
          Texto := f_ExtractTexto(ColunaAtual, W, Colunas);
          if Texto = '' then
            Inc(LinhaBranca)
          else
            if Texto <> '' then
            LinhaBranca := 0;
          Aux.Add(Texto);
          // Put(PRow+1,c,Texto);
          inc(linhaAtual);
        end;
      LinhaAtual := LinhaAtual - (LinhaBranca + 1);
    end;
  for xx := 0 to LinhaAtual - 1 do
    Result.Add(Aux.Strings[xx]);
  Aux.Free;
end;

procedure TWPrinter.PutCheckText(L, C, Linhas, LinhaInicio, Colunas: Integer; w: string);
var
  linhaAtual, colunaAtual: Integer;
  Texto: string;
begin
  if not fVirtualPrinter then
    begin
      linhaAtual := 1; ColunaAtual := 1;
      if (linhas < 1) or (Colunas < 1) then begin
          Linhas := 4; Colunas := 30;
        end;
      GotoLc(l, c);
      while (linhaAtual <= Linhas) do
        begin
          Texto := f_ExtractTexto(ColunaAtual, W, Colunas);
          if linhaAtual >= LinhaInicio then
            Put(PRow + 1, c, Texto);
          inc(linhaAtual);
        end;
    end;
end;

// FUNCAO RETIRA O +1 EXISTENTE NO PUT(PROW+1,C, TEXTO) DA FUNCAO PUTCHECKTEXT NORMAL

procedure TWPrinter.PutCheckTextSc(L, C, Linhas, LinhaInicio, Colunas: Integer; w: string);
var
  linhaAtual, colunaAtual: Integer;
  Texto: string;
begin
  if not fVirtualPrinter then
    begin
      linhaAtual := 1; ColunaAtual := 1;
      if (linhas < 1) or (Colunas < 1) then begin
          Linhas := 4; Colunas := 30;
        end;
      GotoLc(l, c);
      while (linhaAtual <= Linhas) do
        begin
          Texto := f_ExtractTexto(ColunaAtual, W, Colunas);
          if linhaAtual >= LinhaInicio then
            Put(PRow, c, Texto);
          NewLine;
          inc(linhaAtual);
        end;
    end;
end;

function TWPrinter.CheckText(Linhas, Colunas: Integer; w: string): Integer;
var
  I, LinhaBranca, linhaAtual, colunaAtual: Integer;
  CkBranca: Boolean;
  Texto: string;
begin
  linhaAtual := 0;
  if not fVirtualPrinter then
    begin
      ColunaAtual := 1;
      LinhaBranca := 0;
      CkBranca := False;
      for I := 1 to Linhas do begin
          Texto := f_ExtractTexto(ColunaAtual, W, Colunas);
          if not Empty(Texto) then
            begin
              if ckBranca then
                begin
                  linhaAtual := linhaAtual + LinhaBranca;
                  linhaBranca := 0;
                  ckBranca := False;
                end;
              inc(linhaAtual);
            end
          else
            begin
              CkBranca := true;
              Inc(LinhaBranca);
            end;
        end;
    end;
  Result := LinhaAtual;
end;

procedure TWPrinter.Put(L, C: Integer; w: Variant);
begin
  if not fVirtualPrinter then
    begin
      GotoLc(L, C);
      Put(W);
    end;
end;

function TWPrinter.GetCol: Integer;
begin
  Result := FCol + 1;
end;

function TWPrinter.GetRow: Integer;
begin
  Result := FRow + 1;
end;

procedure TWPrinter.SetVirtualPrinter(const Value: Boolean);
begin
  FVirtualPrinter := Value;
end;

initialization
  FWPrinter := nil;

finalization
  FWPrinter.Free;

end.
