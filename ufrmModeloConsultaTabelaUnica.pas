unit ufrmModeloConsultaTabelaUnica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmModeloConsulta, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  MemDS, DBAccess, Uni, Vcl.ExtCtrls, AdvGlowButton, Vcl.StdCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, AdvPanel, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TfrmModeloConsultaTabelaUnica = class(TfrmModeloConsulta)
  constructor Create (sender : TComponent ; sql_consulta : string ;
                    campos_visiveis_grid, campos_filtro :  TArray<integer> ;
                    descricao_campos  : TArray<string>;
                    indice_padrao_filtro : integer=0; filtro_where : string ='';
                    largura_janela: integer = 0; altura_janela : integer = 0);
  procedure MontaConsulta;
  procedure AtualizaCaptionsColunas;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure qrConsultaAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    f_exec1 : boolean;
    sql, filtro : string;
    campos_visiveis, campos_filtro : TArray<Integer> ;
    caption_campos, nomesdb_campos : TArray<string>;
    i_where : integer;
  public
    { Public declarations }
  end;

var
  frmModeloConsultaTabelaUnica: TfrmModeloConsultaTabelaUnica;

implementation

{$R *.dfm}

uses uFuncoes;

procedure TfrmModeloConsultaTabelaUnica.btPesquisarClick(Sender: TObject);
var sql, str_aux, nome_campo : string;
    i, indice_campo : integer;
    num_aux : real;
    parametro_numerico: boolean;
begin
  inherited;
  i:=cbCampoFiltro.ItemIndex;
  indice_campo := campos_filtro[i];

  for I := 0 to length(campos_visiveis) do
  begin
    if campos_visiveis[i] = indice_campo then
    begin
      nome_campo:=nomesdb_campos[i];
      break;
    end;
  end;

  parametro_numerico :=false;
  // analisa o tipo de dados do campo selecionado no combo de filtro
  if qrConsulta.Fields[indice_campo] is TNumericField then
  begin
    //valida se o dado digitado é numero
    parametro_numerico := true;
    try
      num_aux := StrToFloat(edBusca.Text);
    except
      edBusca.SetFocus;
      abort;
    end;
    sql := ' and ' + nome_campo + '= :numero '  ;
  end
  // ou string...
  else if qrConsulta.Fields[indice_campo] is TStringField then
    sql := ' and upper(' + nome_campo + ') like upper(' + QuotedStr('%'+edBusca.Text+'%') +') '
  else
    sql := ' and ' + nome_campo + '=' + QuotedStr(edBusca.Text);

  qrConsulta.Close;

  //verifica se nao foi aplicado filtro ainda
  if qrConsulta.SQL.Count = i_where then
    qrConsulta.SQL.Add(sql)
  else
    qrConsulta.SQL[i_where]:= sql;

  if parametro_numerico then
    qrConsulta.ParamByName('numero').Value:=num_aux;


  qrConsulta.Open;
  AtualizaCaptionsColunas;

  if qrConsulta.RecordCount>0 then
    cxGrid1.SetFocus
  else
    edBusca.SetFocus;
end;

constructor TfrmModeloConsultaTabelaUnica.Create (sender : TComponent ; sql_consulta : string ;
                    campos_visiveis_grid, campos_filtro :  TArray<integer> ;
                    descricao_campos : TArray<string>;
                    indice_padrao_filtro : integer=0; filtro_where : string ='';
                    largura_janela: integer = 0; altura_janela : integer = 0);
var i : integer;
begin
  inherited Create(sender);
  f_exec1 :=true;
  sql := sql_consulta;
  filtro:=filtro_where;

  ClonaArray(campos_visiveis_grid, campos_visiveis);
  ClonaArray(campos_filtro,self.campos_filtro);
  ClonaArray(descricao_campos,caption_campos);

  //monta a consulta
  MontaConsulta;
  //Monta o combo de filtro
  cbCampoFiltro.Items.Clear;
  for I := 0 to length(campos_visiveis)-1 do
  begin
    if i<=length(campos_visiveis)-1 then
    begin
      if  IsNumberInArray(campos_visiveis[i], campos_filtro)  then
        cbCampoFiltro.Items.Add(caption_campos[i]);
    end;
  end;
  cbCampoFiltro.ItemIndex:=indice_padrao_filtro;

  if largura_janela>500 then self.Width:=largura_janela;
  if altura_janela>280 then  self.Height:=altura_janela;
  f_exec1:=false;
end;


procedure TfrmModeloConsultaTabelaUnica.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_return then
  begin
    if IsGridFocused then
    begin
      if qrConsulta.RecordCount>0 then
        btAbrirRegistro.Click
      else
        Perform(WM_NEXTDLGCTL, 0, 0);
    end
    else if ActiveControl.Name='edBusca' then
    begin
      btPesquisar.Click;
      //if qrBusca.RecordCount>0 then  Perform(WM_NEXTDLGCTL, 0, 0);
    end
    else
      Perform(WM_NEXTDLGCTL, 0, 0);
  end
  {else
  if key=VK_ESCAPE then btCancela.Click; }
end;

procedure TfrmModeloConsultaTabelaUnica.FormShow(Sender: TObject);
begin
  inherited;
  edBusca.SetFocus;
end;

procedure TfrmModeloConsultaTabelaUnica.MontaConsulta;
var i : integer;
begin
  qrConsulta.Close;
  qrConsulta.SQL.Clear;
  qrConsulta.SQL.Add(sql);

  if filtro<>'' then
    qrConsulta.SQL.Add('where ' + filtro)
  else
    qrConsulta.SQL.Add('where true');

  i_where := qrConsulta.SQL.Count;

  qrConsulta.SQL.Add(' limit 10000 ');
  qrConsulta.Open;

  //carrega os campos para a grid
  if f_exec1 then
  begin
    cxGrid1DBTableView1.DataController.DataSource:=dsConsulta;
    cxGrid1DBTableView1.DataController.CreateAllItems(true);
    f_exec1:=false;
  end;
  //coloca os captions corretos nos campos visiveis
  AtualizaCaptionsColunas;
end;

procedure TfrmModeloConsultaTabelaUnica.qrConsultaAfterOpen(DataSet: TDataSet);
var i : integer;
begin
  inherited;
  //define os campos visiveis, labels e nomes dos campos para filtro
  SetLength(nomesdb_campos, length(campos_visiveis) );
  for I := 0 to qrConsulta.FieldCount-1 do  qrConsulta.Fields[i].Visible:=false;
  for I := 0 to Length(campos_visiveis)-1 do
  begin
    qrConsulta.Fields[campos_visiveis[i]].Visible:=true;
    //Define os labels dos campos
    if Length(campos_visiveis) = Length(caption_campos)then
      qrConsulta.Fields[campos_visiveis[i]].DisplayLabel:=caption_campos[i];
    //pega o nome dos campos no bd
    nomesdb_campos[i]:= qrConsulta.Fields[campos_visiveis[i]].FieldName;
    //formata campos numericos com duas casas decimais
    if qrConsulta.Fields[campos_visiveis[i]] is TFloatField then
      TFloatField(qrConsulta.Fields[campos_visiveis[i]]).displayFormat := '#,##0.00';
  end;
end;

procedure TfrmModeloConsultaTabelaUnica.AtualizaCaptionsColunas;
var i : integer;
begin
  for I := 0 to Length(nomesdb_campos)-1 do
  begin
    if (i=0) or (i=Length(nomesdb_campos)-1) then
      cxGrid1DBTableView1.GetColumnByFieldName(nomesdb_campos[i]).ApplyBestFit;
    cxGrid1DBTableView1.GetColumnByFieldName(nomesdb_campos[i]).Caption:=caption_campos[i];
  end;
end;

end.
