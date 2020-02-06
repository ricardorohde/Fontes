unit uControleDevolucaoConsultaVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.StdCtrls, AdvGlowButton,
  Vcl.ComCtrls, Vcl.ExtCtrls, AdvPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, MemDS, DBAccess, Uni;

type
  TfrmControleDevolucaoConsultaVenda = class(TfrmModelo)
    edTermoBusca: TEdit;
    Label2: TLabel;
    dtpDataInicial: TDateTimePicker;
    Label5: TLabel;
    dtpDataFinal: TDateTimePicker;
    btPesquisar: TAdvGlowButton;
    Label1: TLabel;
    Label3: TLabel;
    cbCampoFiltro: TComboBox;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    dsVendasCliente: TDataSource;
    qrVendasCliente: TUniQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qrVendasClientenro_venda: TIntegerField;
    qrVendasClientenumero_cupom: TIntegerField;
    qrVendasClientedata_venda: TDateTimeField;
    qrVendasClientenome_cliente: TWideStringField;
    qrVendasClienteid_cliente: TIntegerField;
    qrVendasClientevalor_venda: TFloatField;
    qrVendasClientetipo_venda: TWideStringField;
    qrVendasClienteid_venda: TIntegerField;
    cxGrid1DBTableView1nro_venda: TcxGridDBColumn;
    cxGrid1DBTableView1numero_cupom: TcxGridDBColumn;
    cxGrid1DBTableView1data_venda: TcxGridDBColumn;
    cxGrid1DBTableView1nome_cliente: TcxGridDBColumn;
    cxGrid1DBTableView1id_cliente: TcxGridDBColumn;
    cxGrid1DBTableView1valor_venda: TcxGridDBColumn;
    cxGrid1DBTableView1tipo_venda: TcxGridDBColumn;
    cxGrid1DBTableView1id_venda: TcxGridDBColumn;
    qrVendasClienteresponsavel: TWideStringField;
    cxGrid1DBTableView1responsavel: TcxGridDBColumn;
    procedure btCancelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    constructor Create (sender : Tcomponent; modo_devolucao_pdv : boolean = false); reintroduce;
    procedure edTermoBuscaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    i_filtro, id_usuario_dev : integer;
    modo_devolucao_pdv : boolean;
  public
    { Public declarations }
    valor_devolucao_cliente : double;
    id_cliente_devolucao : integer;
  end;

var
  frmControleDevolucaoConsultaVenda: TfrmControleDevolucaoConsultaVenda;

implementation

{$R *.dfm}

uses uMenu, uControleDevolucaoDevolucaoItens;

constructor TfrmControleDevolucaoConsultaVenda.Create (sender : Tcomponent; modo_devolucao_pdv : boolean = false);
begin
  inherited Create(sender);
  if not frmMenu.ConfirmacaoSenha('b_acesso_devolucao', id_usuario_dev) then abort;
  qrVendasCliente.ParamByName('id_empresa').AsInteger := recproj.iemp;
  i_filtro := qrVendasCliente.SQL.Count - 3;
  self.modo_devolucao_pdv := modo_devolucao_pdv;
  self.Tag := 0;
end;

procedure TfrmControleDevolucaoConsultaVenda.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  btConfirma.Click;
end;

procedure TfrmControleDevolucaoConsultaVenda.edTermoBuscaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_return then btPesquisar.Click;

end;

procedure TfrmControleDevolucaoConsultaVenda.btCancelaClick(Sender: TObject);
begin
  inherited;
  self.Tag := 0;
  self.close;
end;

procedure TfrmControleDevolucaoConsultaVenda.btConfirmaClick(Sender: TObject);
begin
  inherited;
  if qrVendasCliente.RecordCount<=0 then
  begin
    Application.MessageBox('Nenhuma venda foi informada!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  frmControleDevolucaoDevolucaoItens := TfrmControleDevolucaoDevolucaoItens.Create(self,id_usuario_dev, qrVendasCliente.FieldByName('id_venda').AsInteger );
  frmControleDevolucaoDevolucaoItens.ShowModal;
  if frmControleDevolucaoDevolucaoItens.tag=1 then
  begin
    qrVendasCliente.Refresh;
    if frmControleDevolucaoDevolucaoItens.credito_cliente then
      valor_devolucao_cliente := frmControleDevolucaoDevolucaoItens.valor_devolucao
    else
      valor_devolucao_cliente:=0;

    id_cliente_devolucao := frmControleDevolucaoDevolucaoItens.id_cliente_selecionado;
    self.Tag := 1;
    if modo_devolucao_pdv then self.Close;
  end;

  frmControleDevolucaoDevolucaoItens.Free;


end;

procedure TfrmControleDevolucaoConsultaVenda.btPesquisarClick(Sender: TObject);
var str_filtro : string;
    termo_busca : Variant;
    int_aux : integer;
begin
  inherited;
  qrVendasCliente.close;

  case cbCampoFiltro.ItemIndex of
    0 : //Cliente
      begin
        str_filtro := ' and upper(coalesce(c.cli_002, '''')) like upper(:busca) ' ;
        termo_busca := '%'+edTermoBusca.Text+'%';
      end;
    1 :
      begin  //Número da venda
        if trim(edTermoBusca.Text) = EmptyStr then
          str_filtro := ' and v.ven_029 > :busca '
        else
          str_filtro := ' and v.ven_029 = :busca ' ;

        try
          if trim(edTermoBusca.Text) = EmptyStr then
            int_aux := 0
          else
            int_aux := strtoint(trim(edTermoBusca.Text));

          termo_busca:=int_aux;
        except
          termo_busca := 0;
        end;
      end;
    else //Cupom
      begin
        if trim(edTermoBusca.Text) = EmptyStr then
          str_filtro := ' and v.numero_cupom > :busca '
        else
          str_filtro := ' and v.numero_cupom = :busca ' ;

        try
          if trim(edTermoBusca.Text) = EmptyStr then
            int_aux := 0
          else
            int_aux := strtoint(trim(edTermoBusca.Text));

          termo_busca:=int_aux;
        except
          termo_busca := 0;
        end;
      end;

  end;

  qrVendasCliente.SQL[i_filtro] := str_filtro;
  qrVendasCliente.ParamByName('data_1').AsDate := dtpDataInicial.Date;
  qrVendasCliente.ParamByName('data_2').AsDate := dtpDataFinal.Date+1;
  qrVendasCliente.ParamByName('busca').Value := termo_busca;
  qrVendasCliente.open;
end;

procedure TfrmControleDevolucaoConsultaVenda.FormShow(Sender: TObject);
var dia, mes, ano : word;
begin
  inherited;
  //preenche os filtros de data com o primeiro dia do mes e com o dia atual
  DecodeDate(date, ano, mes, dia);
  dtpDataInicial.Date:= EncodeDate(ano, mes, 1);
  dtpDataFinal.Date:=EncodeDate(ano, mes, dia);
end;

end.
