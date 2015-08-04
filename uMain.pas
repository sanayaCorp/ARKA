unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, dxRibbon, dxStatusBar,
  dxRibbonStatusBar, cxClasses, dxSkinsdxDockControlPainter, dxDockControl,
  dxDockPanel, dxSkinsForm, ShellAPI, ActnList, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  UniProvider, MySQLUniProvider, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, DBAccess,
  Uni, ImgList, DASQLMonitor, UniSQLMonitor, cxContainer, cxLabel;

type
  TuMainForm = class(TForm)
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxBarManager1: TdxBarManager;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    dxRibbon1Tab2: TdxRibbonTab;
    dxRibbon1Tab3: TdxRibbonTab;
    dxRibbon1Tab4: TdxRibbonTab;
    dxDockPanel1: TdxDockPanel;
    dxDockingManager1: TdxDockingManager;
    dxDockSite1: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxSkinController1: TdxSkinController;
    ActionList1: TActionList;
    Monitoring: TAction;
    conARKA: TUniConnection;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    MySQLUniProvider1: TMySQLUniProvider;
    UniTransaction1: TUniTransaction;
    UniSQLMonitor1: TUniSQLMonitor;
    cxImageList1: TcxImageList;
    Logout: TAction;
    Login: TAction;
    Close: TAction;
    Data_User: TAction;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarManager1Bar3: TdxBar;
    Jenis: TAction;
    Pemilik: TAction;
    Kendaraan: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarManager1Bar4: TdxBar;
    Laporan_jenis: TAction;
    Laporan_Pemilik: TAction;
    Laporan_Kendaraan: TAction;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    Setting: TAction;
    Backup_Restore: TAction;
    dxBarLargeButton13: TdxBarLargeButton;
    cxLabel1: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure MonitoringExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uMainForm: TuMainForm;

implementation

{$R *.dfm}

function IsMDIChildOpen(const AFormName: TForm; const AMDIChildName : string): Boolean;
var
  i: Integer;
begin
  Result := False;
  for i := Pred(AFormName.MDIChildCount) DownTo 0 do
    if (AFormName.MDIChildren[i].Name = AMDIChildName) then
    begin
      Result := True;
      Break;
    end;
end;

procedure TuMainForm.CloseExecute(Sender: TObject);
begin
  if messagedlg('Apakah anda akan keluar dari aplikasi ?',(mtConfirmation),[mbYes, mbNo],0) = mrYes then
  begin
    Application.Terminate
  end;
end;

procedure TuMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:= cafree;
end;

procedure TuMainForm.FormCreate(Sender: TObject);
begin
  dxSkinController1.UseSkins := true;
  dxribbon1.ColorSchemeName:='Office2010Blue';
end;

procedure TuMainForm.MonitoringExecute(Sender: TObject);
begin
  ShellExecute(0, 'open', 'dbmonitor.exe', nil, nil,
                SW_SHOW)
end;

end.
