unit URELATORIOSAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, Data.DB, cxDBData, AdvPageControl, Vcl.ComCtrls,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, JvExControls, JvLabel, AdvGlowButton,
  cxGroupBox, cxRadioGroup, Vcl.StdCtrls, Vcl.ExtCtrls, AdvPanel, Vcl.Menus;

type
  TForm1 = class(TForm)
    AdvPanel1: TAdvPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    cxRadioGroup1: TcxRadioGroup;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    JvLabel2: TJvLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    AdvPageControl1: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    pmacoes: TPopupMenu;
    RANSMITIRCUPOM1: TMenuItem;
    CONSULTARPROTOCOLOCUPOM1: TMenuItem;
    CANCELARCUPOMLIMPARNUMERO1: TMenuItem;
    IMPRIMIRCUPOM1: TMenuItem;
    ENVIAREMAILDOCUPOM1: TMenuItem;
    MANUTENOCUPOM1: TMenuItem;
    GERARNOBLOCODENOTA1: TMenuItem;
    JvLabel1: TJvLabel;
    JvLabel3: TJvLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uMenu;

end.
