unit uSettingConnection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2010Blue, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, StdCtrls, cxButtons, ExtCtrls,
  cxGroupBox, cxRadioGroup, cxLabel, cxTextEdit, dxSkinsForm;

type
  TSettingConnectionForm = class(TForm)
    cxRadioGroup1: TcxRadioGroup;
    cxGroupBox1: TcxGroupBox;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    dxSkinController1: TdxSkinController;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    lblServer: TcxLabel;
    lblUser: TcxLabel;
    lblPassword: TcxLabel;
    lblPort: TcxLabel;
    edPort: TcxTextEdit;
    edPassword: TcxTextEdit;
    edUser: TcxTextEdit;
    edServer: TcxTextEdit;
    edDatabase: TcxTextEdit;
    edProvider: TcxTextEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxRadioGroup1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SettingConnectionForm: TSettingConnectionForm;

implementation

{$R *.dfm}
//  with uniconnection1 do
//  begin
//    ProviderName := 'MySQL';
//    database:= 'bitpost';
//    SpecificOptions.Values['Embedded'] := 'True';
//    SpecificOptions.Values['EmbeddedParams'] := '--basedir=./embedded'#13#10'--datadir=/data';
//    connect;
//  end;
procedure TSettingConnectionForm.cxButton1Click(Sender: TObject);
begin
  if messagedlg('Apakah anda akan keluar dari aplikasi ?',(mtConfirmation),[mbYes, mbNo],0) = mrYes then
  begin
    Application.Terminate
  end;
end;

procedure TSettingConnectionForm.cxRadioGroup1PropertiesChange(Sender: TObject);
begin
  if cxRadioGroup1.ItemIndex = 1 then
  begin
    edServer.Show;
    edUser.Show;
    edPassword.Show;
    edPort.Show;
    lblServer.Show;
    lblUser.Show;
    lblPassword.Show;
    lblPort.Show;
    self.Height := 332
  end else
  begin
    edServer.Hide;
    edUser.Hide;
    edPassword.Hide;
    edPort.Hide;
    lblServer.Hide;
    lblUser.Hide;
    lblPassword.Hide;
    lblPort.Hide;
    self.Height := 235;
  end;
end;

procedure TSettingConnectionForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:= cafree;
end;

procedure TSettingConnectionForm.FormCreate(Sender: TObject);
begin
  cxRadioGroup1.ItemIndex := 0;
  // Default setting database mysql embedded
  if cxRadioGroup1.ItemIndex = 0 then
  begin
    edServer.Clear;
    edUser.Clear;
    edPassword.Clear;
    edPort.Clear;
    edServer.Hide;
    edUser.Hide;
    edPassword.Hide;
    edPort.Hide;
    lblServer.Hide;
    lblUser.Hide;
    lblPassword.Hide;
    lblPort.Hide;
    self.Height := 235;
  end;
  edDatabase.Clear;
  //-----------------------------------------
  dxSkinController1.UseSkins := true;
end;

end.
