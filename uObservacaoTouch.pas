unit uObservacaoTouch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.StdCtrls,
  AdvGroupBox, Vcl.ExtCtrls;

type
  TfrmObservacaoTouch = class(TForm)
    pnObs: TPanel;
    Label2: TLabel;
    edObservacaoItem: TMemo;
    grKeyboard3: TAdvGroupBox;
    btKb3_LIMPAR: TAdvGlowButton;
    btKb3_X: TAdvGlowButton;
    btKb3_Z: TAdvGlowButton;
    btKb3_C: TAdvGlowButton;
    btKb3_A: TAdvGlowButton;
    btKb3_S: TAdvGlowButton;
    btKb3_D: TAdvGlowButton;
    btKb3_Q: TAdvGlowButton;
    btKb3_W: TAdvGlowButton;
    btKb3_E: TAdvGlowButton;
    btKb3_BackSpace: TAdvGlowButton;
    btKb3_R: TAdvGlowButton;
    btKb3_T: TAdvGlowButton;
    btKb3_Y: TAdvGlowButton;
    btKb3_U: TAdvGlowButton;
    btKb3_I: TAdvGlowButton;
    btKb3_O: TAdvGlowButton;
    btKb3_P: TAdvGlowButton;
    btKb3_F: TAdvGlowButton;
    btKb3_G: TAdvGlowButton;
    btKb3_H: TAdvGlowButton;
    btKb3_J: TAdvGlowButton;
    btKb3_K: TAdvGlowButton;
    btKb3_L: TAdvGlowButton;
    btKb3_CEDILH: TAdvGlowButton;
    btKb3_V: TAdvGlowButton;
    btKb3_B: TAdvGlowButton;
    btKb3_N: TAdvGlowButton;
    btKb3_M: TAdvGlowButton;
    btKb3_VIRG: TAdvGlowButton;
    btKb3_PONTO: TAdvGlowButton;
    btKb3_PONTVIRG: TAdvGlowButton;
    btKb3_ESPACO: TAdvGlowButton;
    Panel1: TPanel;
    btConfirma: TAdvGlowButton;
    btCancela: TAdvGlowButton;
    constructor Create (sender : Tcomponent ; observacao_item : string); reintroduce;
    procedure btCancelaClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);

    procedure btKb1_0Click(Sender: TObject);
    procedure btKb1_1Click(Sender: TObject);
    procedure btKb1_2Click(Sender: TObject);
    procedure btKb1_3Click(Sender: TObject);
    procedure btKb1_4Click(Sender: TObject);
    procedure btKb1_5Click(Sender: TObject);
    procedure btKb1_6Click(Sender: TObject);
    procedure btKb1_7Click(Sender: TObject);
    procedure btKb1_8Click(Sender: TObject);
    procedure btKb1_9Click(Sender: TObject);
    procedure btKb3_AClick(Sender: TObject);
    procedure btKb3_BackSpaceClick(Sender: TObject);
    procedure btKb3_BClick(Sender: TObject);
    procedure btKb3_CClick(Sender: TObject);
    procedure btKb3_CEDILHClick(Sender: TObject);
    procedure btKb3_DClick(Sender: TObject);
    procedure btKb3_EClick(Sender: TObject);
    procedure btKb3_EnterClick(Sender: TObject);
    procedure btKb3_ESPACOClick(Sender: TObject);
    procedure btKb3_FClick(Sender: TObject);
    procedure btKb3_GClick(Sender: TObject);
    procedure btKb3_HClick(Sender: TObject);
    procedure btKb3_IClick(Sender: TObject);
    procedure btKb3_JClick(Sender: TObject);
    procedure btKb3_KClick(Sender: TObject);
    procedure btKb3_LClick(Sender: TObject);
    procedure btKb3_LIMPARClick(Sender: TObject);
    procedure btKb3_MClick(Sender: TObject);
    procedure btKb3_NClick(Sender: TObject);
    procedure btKb3_OClick(Sender: TObject);
    procedure btKb3_PClick(Sender: TObject);
    procedure btKb3_PONTOClick(Sender: TObject);
    procedure btKb3_PONTVIRGClick(Sender: TObject);
    procedure btKb3_QClick(Sender: TObject);
    procedure btKb3_RClick(Sender: TObject);
    procedure btKb3_SClick(Sender: TObject);
    procedure btKb3_TClick(Sender: TObject);
    procedure btKb3_UClick(Sender: TObject);
    procedure btKb3_VClick(Sender: TObject);
    procedure btKb3_VIRGClick(Sender: TObject);
    procedure btKb3_WClick(Sender: TObject);
    procedure btKb3_XClick(Sender: TObject);
    procedure btKb3_YClick(Sender: TObject);
    procedure btKb3_ZClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    const KEYEVENTF_KEYDOWN = 0;
  public
    { Public declarations }
  end;

var
  frmObservacaoTouch: TfrmObservacaoTouch;

implementation

{$R *.dfm}

procedure TfrmObservacaoTouch.btCancelaClick(Sender: TObject);
begin
  self.Tag :=0;
  self.close;
end;

procedure TfrmObservacaoTouch.btConfirmaClick(Sender: TObject);
begin
  self.Tag :=1;
  self.close;
end;

constructor TfrmObservacaoTouch.Create (sender : Tcomponent ; observacao_item : string);
begin
  inherited Create (sender);
  edObservacaoItem.Text := observacao_item;
end;


procedure TfrmObservacaoTouch.FormShow(Sender: TObject);
begin
  if edObservacaoItem.canfocus then edObservacaoItem.SetFocus;
end;

procedure TfrmObservacaoTouch.btKb1_0Click(Sender: TObject);
begin
  keybd_event(48, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(48, 0, KEYEVENTF_KEYUP, 0);
end;



procedure TfrmObservacaoTouch.btKb1_1Click(Sender: TObject);
begin
  keybd_event(49, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(49, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb1_2Click(Sender: TObject);
begin
  keybd_event(50, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(50, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb1_3Click(Sender: TObject);
begin
  keybd_event(51, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(51, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb1_4Click(Sender: TObject);
begin
  keybd_event(52, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(52, 0, KEYEVENTF_KEYUP, 0);
end;



procedure TfrmObservacaoTouch.btKb1_5Click(Sender: TObject);
begin
  keybd_event(53, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(53, 0, KEYEVENTF_KEYUP, 0);
end;



procedure TfrmObservacaoTouch.btKb1_6Click(Sender: TObject);
begin
  keybd_event(54, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(54, 0, KEYEVENTF_KEYUP, 0);
end;



procedure TfrmObservacaoTouch.btKb1_7Click(Sender: TObject);
begin
  keybd_event(55, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(55, 0, KEYEVENTF_KEYUP, 0);
end;



procedure TfrmObservacaoTouch.btKb1_8Click(Sender: TObject);
begin
  keybd_event(56, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(56, 0, KEYEVENTF_KEYUP, 0);
end;


procedure TfrmObservacaoTouch.btKb1_9Click(Sender: TObject);
begin
  keybd_event(57, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(57, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_AClick(Sender: TObject);
begin
  keybd_event(65, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(65, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_BackSpaceClick(Sender: TObject);
begin
  keybd_event(vk_back, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(vk_back, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_BClick(Sender: TObject);
begin
  keybd_event(66, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(66, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_CClick(Sender: TObject);
begin
  keybd_event(67, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(67, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_CEDILHClick(Sender: TObject);
begin
  keybd_event(186, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(186, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_DClick(Sender: TObject);
begin
  keybd_event(68, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(68, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_EClick(Sender: TObject);
begin
  keybd_event(69, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(69, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_EnterClick(Sender: TObject);
begin
  keybd_event(VK_RETURN, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(VK_RETURN, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_ESPACOClick(Sender: TObject);
begin
  keybd_event(vk_space, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(vk_space, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_FClick(Sender: TObject);
begin
  keybd_event(70, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(70, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_GClick(Sender: TObject);
begin
  keybd_event(71, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(71, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_HClick(Sender: TObject);
begin
  keybd_event(72, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(72, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_IClick(Sender: TObject);
begin
  keybd_event(73, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(73, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_JClick(Sender: TObject);
begin
  keybd_event(74, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(74, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_KClick(Sender: TObject);
begin
  keybd_event(75, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(75, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_LClick(Sender: TObject);
begin
  keybd_event(76, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(76, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_LIMPARClick(Sender: TObject);
begin
  if activecontrol is TEdit then TEdit(activecontrol).Clear;
  if activecontrol is TMemo then TMemo(activecontrol).Clear;
end;

procedure TfrmObservacaoTouch.btKb3_MClick(Sender: TObject);
begin
  keybd_event(77, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(77, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_NClick(Sender: TObject);
begin
  keybd_event(78, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(78, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_OClick(Sender: TObject);
begin
  keybd_event(79, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(79, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_PClick(Sender: TObject);
begin
  keybd_event(80, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(80, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_PONTOClick(Sender: TObject);
begin
  keybd_event(190, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(190, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_PONTVIRGClick(Sender: TObject);
begin
  keybd_event(191, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(191, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_QClick(Sender: TObject);
begin
  keybd_event(81, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(81, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_RClick(Sender: TObject);
begin
  keybd_event(82, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(82, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_SClick(Sender: TObject);
begin
  keybd_event(83, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(83, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_TClick(Sender: TObject);
begin
  keybd_event(84, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(84, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_UClick(Sender: TObject);
begin
  keybd_event(85, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(85, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_VClick(Sender: TObject);
begin
  keybd_event(86, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(86, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_VIRGClick(Sender: TObject);
begin
  keybd_event(110, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(110, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_WClick(Sender: TObject);
begin
  keybd_event(87, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(87, 0, KEYEVENTF_KEYUP, 0);
end;


procedure TfrmObservacaoTouch.btKb3_XClick(Sender: TObject);
begin
  keybd_event(88, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(88, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_YClick(Sender: TObject);
begin
  keybd_event(89, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(89, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TfrmObservacaoTouch.btKb3_ZClick(Sender: TObject);
begin
  keybd_event(90, 0, KEYEVENTF_KEYDOWN, 0);
  keybd_event(90, 0, KEYEVENTF_KEYUP, 0);
end;




end.
