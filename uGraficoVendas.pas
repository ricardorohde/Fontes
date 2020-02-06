unit uGraficoVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxGroupBox, cxRadioGroup, Vcl.StdCtrls, Vcl.ComCtrls, AdvGroupBox,
  Data.DB, MemDS, DBAccess, Uni, AdvGlowButton, VCLTee.TeEngine, VCLTee.Series,
  VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, VCLTee.TeeEdiGene, VCLTee.EditChar,
  VclTee.TeeGDIPlus, cxCheckBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc,
  cxDBEdit, Vcl.DBCtrls, DateUtils;
type
  TfrmGraficoVendas = class(TfrmModelo)
    qrItensVenda: TUniQuery;
    AdvGroupBox3: TAdvGroupBox;
    lblInicio: TLabel;
    lblFim: TLabel;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    cbRelatorio: TComboBox;
    grFiltrar: TAdvGroupBox;
    rgFiltro: TcxRadioGroup;
    qrItensVendamat_004: TWideStringField;
    grAnalisar: TAdvGroupBox;
    rgFiltroTipo: TcxRadioGroup;
    grGrafico: TAdvGroupBox;
    Label7: TLabel;
    DBChart1: TDBChart;
    Series1: TPieSeries;
    btCancelar: TAdvGlowButton;
    qrItensVendadescricao: TWideStringField;
    btAbrirRegistro: TAdvGlowButton;
    edNroRec: TEdit;
    UpDown1: TUpDown;
    Label3: TLabel;
    qrItensVendaqtdevenda: TFloatField;
    btImprimir: TAdvGlowButton;
    grOpcoes: TAdvGroupBox;
    ckMostraLegenda: TcxCheckBox;
    rgFiltroGraficoTipoValor: TcxRadioGroup;
    dsItensVenda: TDataSource;
    grPeriodo: TAdvGroupBox;
    Label4: TLabel;
    cbMesInicial: TComboBox;
    Label5: TLabel;
    cbAnoInicial: TComboBox;
    Label6: TLabel;
    cbMesFinal: TComboBox;
    Label8: TLabel;
    cbAnoFinal: TComboBox;
    qrLista: TUniQuery;
    qrListasaldo_acumulado: TFloatField;
    DBChart2: TDBChart;
    PieSeries1: TPieSeries;
    qrListaemissao: TWideStringField;
    procedure btCancelarClick(Sender: TObject);
    procedure btAbrirRegistroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    constructor Create(sender : Tcomponent ;  i_grafico : integer = 0);
    procedure btImprimirClick(Sender: TObject);
    procedure cbRelatorioChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGraficoVendas: TfrmGraficoVendas;

implementation

{$R *.dfm}

uses uMenu;

constructor TfrmGraficoVendas.Create(sender : Tcomponent ;  i_grafico : integer = 0);
begin
  inherited Create(sender);
  cbRelatorio.ItemIndex := i_grafico;
end;

procedure TfrmGraficoVendas.btAbrirRegistroClick(Sender: TObject);
var str_sql, filtro_mesa, campo_soma: string;
    mes_inicial, mes_final: integer;
    sDataTemp: string;
    dDataInicial, dDataFinal: TDate;
    iMeses: integer;
begin
  inherited;

  DBChart1.Visible:= False;
  DBChart2.Visible:= False;

  //Gráfico Financeiro Acumulado - Bruno 14-03-2018
  if cbRelatorio.ItemIndex = 5 then
  begin
    case cbMesInicial.ItemIndex of
      0: mes_inicial:=1;
      1: mes_inicial:=2;
      2: mes_inicial:=3;
      3: mes_inicial:=4;
      4: mes_inicial:=5;
      5: mes_inicial:=6;
      6: mes_inicial:=7;
      7: mes_inicial:=8;
      8: mes_inicial:=9;
      9: mes_inicial:=10;
     10: mes_inicial:=11;
     11: mes_inicial:=12;
    end;

    case cbMesFinal.ItemIndex of
      0: mes_final:=1;
      1: mes_final:=2;
      2: mes_final:=3;
      3: mes_final:=4;
      4: mes_final:=5;
      5: mes_final:=6;
      6: mes_final:=7;
      7: mes_final:=8;
      8: mes_final:=9;
      9: mes_final:=10;
     10: mes_final:=11;
     11: mes_final:=12;
    end;

    if cbMesInicial.ItemIndex = -1 then
    begin
      Application.MessageBox('INFORME UM MÊS VÁLIDO','ALERTA',MB_ICONQUESTION+MB_OK);
      cbMesInicial.SetFocus;
      Abort;
    end;

    if cbAnoInicial.Text = '' then
    begin
      Application.MessageBox('INFORME UM ANO VÁLIDO','ALERTA',MB_ICONQUESTION+MB_OK);
      cbAnoInicial.SetFocus;
      Abort;
    end;

    if cbMesFinal.ItemIndex = -1 then
    begin
      Application.MessageBox('INFORME UM MÊS VÁLIDO','ALERTA',MB_ICONQUESTION+MB_OK);
      cbMesFinal.SetFocus;
      Abort;
    end;

    if cbAnoFinal.Text = '' then
    begin
      Application.MessageBox('INFORME UM ANO VÁLIDO','ALERTA',MB_ICONQUESTION+MB_OK);
      cbAnoFinal.SetFocus;
      Abort;
    end;

    //Monta Data Inicial
    sDataTemp:= '01/' + IntToStr(mes_inicial) + '/' + cbAnoInicial.Text;
    dDataInicial:= StrToDate(sDataTemp);

    //Monta Data Final
    sDataTemp:= '01/' + IntToStr(mes_final) + '/' + cbAnofinal.Text;
    dDataFinal:= StrToDate(sDataTemp);
    dDataFinal:= EndOfTheMonth(dDataFinal);

    iMeses:= MonthsBetween(dDataInicial, dDataFinal);

    if iMeses > 13 then
    begin
      Application.MessageBox('INFORME UM PERÍODO MÁXIMO DE 13 MESES','ALERTA',MB_ICONQUESTION+MB_OK);
      Abort;
    end;

    qrLista.Close;
    qrLista.ParamByName('emp').AsInteger  := RecProj.iEmp;
    qrLista.ParamByName('inicial').AsDate := dDataInicial;
    qrLista.ParamByName('final').AsDate   := dDataFinal;
    qrLista.Open;

    if qrLista.RecordCount < 1 then
    begin
      Application.MessageBox('Sem dados para exibir com estes critérios de pesquisa!', 'Atenção', MB_ICONINFORMATION);
      Abort;
    end;

    qrLista.First;
    while not qrLista.Eof do
    begin
      if Length(qrListaemissao.AsString) = 6 then
      begin
        qrLista.Edit;
        qrListaemissao.AsString:= '0' + qrListaemissao.AsString;
        qrLista.Post;
      end;

      qrLista.Next;
    end;
    qrLista.First;

    DBChart2.Visible:= True;

    DBChart2.Legend.Visible := ckMostraLegenda.Checked;
    if rgFiltroGraficoTipoValor.ItemIndex = 0 then
    begin
      DBChart2.Legend.TextStyle := ltsRightPercent;
      if rgFiltroTipo.ItemIndex = 0 then
        DBChart2.Series[0].ValueFormat := '0.###'
      else
        DBChart2.Series[0].ValueFormat := 'R$ #,##0.00';
    end
    else
    begin
      DBChart2.Legend.TextStyle := ltsRightValue;
      if rgFiltroTipo.ItemIndex = 0 then
        DBChart2.Series[0].ValueFormat := '0.###'
      else
        DBChart2.Series[0].ValueFormat := 'R$ #,##0.00';
    end;

    Exit;
  end;

  //Demais Gráficos
  case rgFiltro.ItemIndex of
    1: filtro_mesa := ' and v.ven_024 = ''M''';
    2: filtro_mesa := ' and v.ven_024 = ''D''';
    3: filtro_mesa := ' and v.ven_024 = ''B''';
    4: filtro_mesa := ' and v.ven_024 = ''C''';
    5: filtro_mesa := ' and v.ven_024 = ''P''';
  else
    filtro_mesa:='';
  end;

  case cbRelatorio.ItemIndex of
    0..1 :
    begin  //Relatório de produtos mais e menos vendidos

      if rgFiltroTipo.ItemIndex=0 then
        campo_soma:= ' sum(vi.ite_002 )  as QTDEVENDA  '
      else
        campo_soma:= ' sum(vi.ite_005 )  as QTDEVENDA ';

      str_sql :=' select mat.mat_004,  '+
                ' cast(concat(mat.mat_003) as varchar(25)) as descricao,  '+
                campo_soma  +
                ' from (select id_caixa, id_venda, id_empresa from caixaitem  '+
                ' group by  id_caixa, id_venda, id_empresa  '+
                ' order by 1) civ  '+
                ' join vendaitem vi on vi.ven_001=civ.id_venda and vi.emp_001=civ.id_empresa and not vi.sit_001  in (0,1,2,3)  '+
                ' join materiais mat on (mat.emp_001 = vi.emp_001) and (mat.mat_001 = vi.mat_001)  '+
                ' join caixa c on c.id_caixa=civ.id_caixa and civ.id_empresa=c.id_empresa  '+
                ' join venda v on v.ven_001=civ.id_venda and v.emp_001=civ.id_empresa  '+
                ' where v.sit_001=1 and c.id_empresa=:EMP and v.ven_004>=:DTINI and v.ven_004<=:DTFIM '+
                filtro_mesa +
                ' group by  mat.mat_004, mat.mat_003   ';

      if cbRelatorio.ItemIndex = 0 then //Relatório de produtos mais vendidos
        str_sql := str_sql + ' order by 3 desc, mat.mat_004 '
      else //Relatório de produtos menos vendidos
        str_sql := str_sql + ' order by 3, mat.mat_004 ';

      str_sql := str_sql + ' limit ' +  edNroRec.Text;
    end;
    2 :
    begin  //Relatório de clientes mais frequentes
      if rgFiltroTipo.ItemIndex=0 then
        campo_soma:= ' cast(count(1) as decimal(15,2))  as QTDEVENDA  '
      else
        campo_soma:= ' sum(v.Ven_009) as QTDEVENDA ';

      str_sql :=' select cast('''' as varchar(10)) as mat_004, cast(concat(cl.cli_001,'' '' , cl.cli_002 )as varchar(20)) as descricao, '+
                campo_soma +
                ' from (select id_caixa, id_venda, id_empresa from caixaitem  '+
                ' group by  id_caixa, id_venda, id_empresa  '+
                ' order by 1) civ  '+
                ' join caixa c on c.id_caixa=civ.id_caixa and civ.id_empresa=c.id_empresa  '+
                ' join venda v on v.ven_001=civ.id_venda and v.emp_001=civ.id_empresa '+
                ' join  clientes cl on cl.cli_001=v.cli_001 and cl.emp_001=v.emp_001 '+
                ' where v.sit_001=1 and c.id_empresa=:EMP and v.ven_004>=:DTINI and v.ven_004<=:DTFIM '+
                filtro_mesa +
                ' group by cl.cli_002, cl.cli_001 '+
                ' order by 3 desc ';

       str_sql := str_sql + ' limit ' +  edNroRec.Text;
    end;
    3 :
    begin  //Relatório de lucro de venda
      if rgFiltroTipo.ItemIndex=0 then
        campo_soma:= ' sum(vi.ite_002 )  as QTDEVENDA  '
      else
        campo_soma:= ' sum ( (vi.ite_005 ) ' +
                     ' - ((coalesce(mat.mat_012,0.0)+ coalesce(mat.mat_006,0.0))* vi.ite_002))  as QTDEVENDA ';  //lucro venda (valor)

      str_sql :=' select mat.mat_004,  '+
                ' cast(concat(mat.mat_003) as varchar(25)) as descricao,  '+
                campo_soma  +
                ' from (select id_caixa, id_venda, id_empresa from caixaitem  '+
                ' group by  id_caixa, id_venda, id_empresa  '+
                ' order by 1) civ  '+
                ' join vendaitem vi on vi.ven_001=civ.id_venda and vi.emp_001=civ.id_empresa and not vi.sit_001  in (0,1,2,3)  '+
                ' join materiais mat on (mat.emp_001 = vi.emp_001) and (mat.mat_001 = vi.mat_001)  '+
                ' join caixa c on c.id_caixa=civ.id_caixa and civ.id_empresa=c.id_empresa  '+
                ' join venda v on v.ven_001=civ.id_venda and v.emp_001=civ.id_empresa  '+
                ' where v.sit_001=1 and c.id_empresa=:EMP and v.ven_004>=:DTINI and v.ven_004<=:DTFIM '+
                filtro_mesa +
                ' group by  mat.mat_004, mat.mat_003   ';

      str_sql := str_sql + ' order by 3 desc, mat.mat_004 ' ;

      str_sql := str_sql + ' limit ' +  edNroRec.Text;
    end;

    4 :
    begin // Taxas e Serviços
      if rgFiltroTipo.ItemIndex=0 then
        campo_soma:= ' cast(count(1) as decimal(15,2))  as QTDEVENDA  '
      else
        campo_soma:= ' sum(v.ven_008) as QTDEVENDA ';

      str_sql :=' select cast('''' as varchar(10)) as mat_004, descricao, sum(qtdevenda) as qtdevenda from (' +
                ' select coalesce(ent.usu_002, gar.usu_002) as descricao,'+
                campo_soma +
                ' from  '+
                ' (select id_caixa, id_venda, id_empresa from caixaitem '+
                ' group by  id_caixa, id_venda, id_empresa '+
                ' order by 1) cv  '+
                ' join caixa c on c.id_caixa=cv.id_caixa and cv.id_empresa=c.id_empresa '+
                ' join venda v on v.ven_001=cv.id_venda and v.emp_001=cv.id_empresa '+
                ' left join vendaitem vi on vi.emp_001=cv.id_empresa and vi.ven_001=cv.id_venda  and vi.ite_001=1   '+
                ' left join usuarios ent on ent.usu_001=v.id_entregador '+
                ' left join usuarios gar on vi.gar_001=gar.usu_001 '+
                ' where v.ven_008>0 and v.sit_001=1 '+
                ' and c.id_empresa=:EMP and v.ven_004>=:DTINI and v.ven_004<=:DTFIM '+
                filtro_mesa +
                ' group by  ent.usu_002, gar.usu_002'+
                ' order by 1 ) subt group by descricao ';

      str_sql := str_sql + ' limit ' +  edNroRec.Text;
    end;
  end;

  qrItensVenda.Close;
  qrItensVenda.SQL.Clear;
  qrItensVenda.SQL.Add(str_sql);
  qrItensVenda.ParamByName('EMP').AsInteger    := RecProj.iEmp;
  qrItensVenda.ParamByName('DTINI').AsDateTime := dtpDataInicial.Date;
  qrItensVenda.ParamByName('DTFIM').AsDateTime := dtpDataFinal.Date+1;
  qrItensVenda.open;

  if qrItensVenda.RecordCount<1 then
    Application.MessageBox('Sem dados para exibir com estes critérios de pesquisa!', 'Atenção', MB_ICONINFORMATION);

  DBChart1.Visible:= True;

  DBChart1.Legend.Visible := ckMostraLegenda.Checked;
  if rgFiltroGraficoTipoValor.ItemIndex = 0 then
  begin
    DBChart1.Legend.TextStyle := ltsRightPercent;
    if rgFiltroTipo.ItemIndex = 0 then
      DBChart1.Series[0].ValueFormat := '0.###'
    else
      DBChart1.Series[0].ValueFormat := 'R$ #,##0.00';
  end
  else
  begin
    DBChart1.Legend.TextStyle := ltsRightValue;
    if rgFiltroTipo.ItemIndex = 0 then
      DBChart1.Series[0].ValueFormat := '0.###'
    else
      DBChart1.Series[0].ValueFormat := 'R$ #,##0.00';
  end;
end;

procedure TfrmGraficoVendas.btCancelarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmGraficoVendas.btImprimirClick(Sender: TObject);
begin
  inherited;
  if cbRelatorio.ItemIndex = 5 then //Financeiro Acumulado
  begin
    if qrLista.RecordCount > 0 then
      ChartPreview(Self,DBChart2);
  end
  else
  begin //Demais
    if qrItensVenda.RecordCount > 0 then
      ChartPreview(Self,DBChart1);
  end;
end;

procedure TfrmGraficoVendas.cbRelatorioChange(Sender: TObject);
begin
  inherited;
  lblInicio.Visible      := True;
  lblFim.Visible         := True;
  dtpDataInicial.Visible := True;
  dtpDataFinal.Visible   := True;
  grFiltrar.Visible      := True;
  grAnalisar.Visible     := True;
  rgFiltroTipo.Enabled   := True;
  grPeriodo.Visible      := False;

  grOpcoes.Top  := 303;
  grPeriodo.Top := 398;

  if cbRelatorio.ItemIndex = 3 then
  begin
    rgFiltroTipo.Enabled   := False;
    rgFiltroTipo.ItemIndex := 1;
  end;

  if cbRelatorio.ItemIndex = 5 then //Financeiro Acumulado
  begin
    lblInicio.Visible      := False;
    lblFim.Visible         := False;
    dtpDataInicial.Visible := False;
    dtpDataFinal.Visible   := False;
    grFiltrar.Visible      := False;
    grAnalisar.Visible     := False;
    rgFiltroTipo.Enabled   := False;
    grPeriodo.Visible      := True;
    rgFiltroTipo.ItemIndex := 1;

    grOpcoes.Top  := 118;
    grPeriodo.Top := 211;
  end;

  Self.Refresh;
end;

procedure TfrmGraficoVendas.FormCreate(Sender: TObject);
begin
  inherited;
  cbMesInicial.ItemIndex:= 0;
  cbanoInicial.Text:= IntToStr(yearof(date));

  cbMesFinal.ItemIndex:= monthof(date)-1;
  cbanoFinal.Text:= IntToStr(yearof(date));
end;

procedure TfrmGraficoVendas.FormShow(Sender: TObject);
var dia, mes, ano : word;
begin
  inherited;
  //Preenche os filtros de data com o primeiro dia do mes e com o dia atual
  DecodeDate(date, ano, mes, dia);

  dtpDataInicial.Date := EncodeDate(ano, mes, 1);
  dtpDataFinal.Date   := EncodeDate(ano, mes, dia);

  cbRelatorioChange(nil);

  btAbrirRegistro.Click;
end;

end.
