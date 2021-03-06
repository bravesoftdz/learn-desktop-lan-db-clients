unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, IBDatabase, IBCustomDataSet, IBTable, Menus,
  ComCtrls, ExtCtrls, StdCtrls, DBConnection, Buttons, Mask, DBCtrls, ReportDM,
  ExtDlgs;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    PageControl1: TPageControl;
    BoatsAccountTabSheet: TTabSheet;
    Splitter1: TSplitter;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Splitter2: TSplitter;
    Panel2: TPanel;
    Splitter3: TSplitter;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox2: TGroupBox;
    ClientsAccountTabSheet: TTabSheet;
    OrdersAccountTabSheet: TTabSheet;
    Panel3: TPanel;
    GroupBox5: TGroupBox;
    Splitter4: TSplitter;
    Splitter5: TSplitter;
    Panel4: TPanel;
    Panel5: TPanel;
    GroupBox7: TGroupBox;
    ClTypeFChB: TCheckBox;
    Panel6: TPanel;
    Panel7: TPanel;
    GroupBox6: TGroupBox;
    Panel8: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Splitter6: TSplitter;
    Splitter7: TSplitter;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    BitBtn5: TBitBtn;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel9: TPanel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Panel10: TPanel;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Panel11: TPanel;
    BitBtn11: TBitBtn;
    Panel12: TPanel;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    Panel13: TPanel;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    Panel14: TPanel;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    DBGrid7: TDBGrid;
    DBGrid8: TDBGrid;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    ClNameLikeFChB: TCheckBox;
    ClNameLikeWordEdit: TEdit;
    Label3: TLabel;
    Panel15: TPanel;
    BTypeF�hB: TCheckBox;
    BLocFChB: TCheckBox;
    DBGrid9: TDBGrid;
    ManagersTabSheet: TTabSheet;
    GroupBox11: TGroupBox;
    Panel16: TPanel;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    DBGrid10: TDBGrid;
    Panel17: TPanel;
    OrderIntervalFChB: TCheckBox;
    Label5: TLabel;
    OrdStartDTPick: TDateTimePicker;
    OrdEndDTPick: TDateTimePicker;
    Label6: TLabel;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    BoatDBImage: TDBImage;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBMemo2: TDBMemo;
    SetImgBtn: TBitBtn;
    ClearImgBtn: TBitBtn;
    BoatOpenPictureDialog: TOpenPictureDialog;
    BitBtn10: TBitBtn;
    BitBtn20: TBitBtn;
    Panel18: TPanel;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    procedure BTypeF�hBClick(Sender: TObject);
    procedure BLocFChBClick(Sender: TObject);
    procedure ClTypeFChBClick(Sender: TObject);
    procedure ClNameLikeFChBClick(Sender: TObject);
    procedure OrderIntervalFChBClick(Sender: TObject);
    procedure OrdNameLikeFChBClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure SetImgBtnClick(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure ManagersTabSheetShow(Sender: TObject);
    procedure BoatsAccountTabSheetShow(Sender: TObject);
    procedure ClientsAccountTabSheetShow(Sender: TObject);
    procedure OrdersAccountTabSheetShow(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ReloadBoats(ResetFilters: Boolean=False);
    procedure ReloadClients(ResetFilters: Boolean=False);
    procedure ReloadOrders(ResetFilters: Boolean=False);
    procedure ReloadBoatTypesDict;
    procedure ReloadLocationsDict;
    procedure ReloadClientTypeDict;
    procedure ReloadManagersDict;
    procedure ReloadBoatsDict;
    procedure ReloadaPersonDict;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.BLocFChBClick(Sender: TObject);
begin
  ReloadBoats;
end;

procedure TMainForm.BoatsAccountTabSheetShow(Sender: TObject);
begin
  Self.ReloadBoats(True);
end;

procedure TMainForm.BTypeF�hBClick(Sender: TObject);
begin
  ReloadBoats;
end;

procedure TMainForm.ClientsAccountTabSheetShow(Sender: TObject);
begin
  Self.ReloadClients(True);
  ConnectionDM.ReloadClientOrders;
end;

procedure TMainForm.ClNameLikeFChBClick(Sender: TObject);
begin
  ReloadClients;
end;

procedure TMainForm.ClTypeFChBClick(Sender: TObject);
begin
  ReloadClients;
end;

procedure TMainForm.DBGrid3DblClick(Sender: TObject);
begin
  if ConnectionDM.PersonOrdersADOT.RecordCount>0 then
    begin
      Self.OrdersAccountTabSheet.Show;
      ConnectionDM.OrdersADODS.First;
      while not ConnectionDM.OrdersADODS.Eof do
      begin
        if (ConnectionDM.OrdersADODS.FieldByName('ORDER_ID').AsInteger=
          ConnectionDM.PersonOrdersADOT.FieldByName('ORDER_ID').AsInteger) then
            Break;
        ConnectionDM.OrdersADODS.Next;
      end;
    end;
end;

procedure TMainForm.N4Click(Sender: TObject);
begin
  ReportDM.ReportDMod.OrdersInIntervalfrxReport.ShowReport;
end;

procedure TMainForm.N5Click(Sender: TObject);
begin
  ReportDM.ReportDMod.ClientOrdersfrxReport.ShowReport;
end;

procedure TMainForm.N7Click(Sender: TObject);
begin
  ReportDM.ReportDMod.ManagerWorksfrxReport.ShowReport;
end;

procedure TMainForm.OrderIntervalFChBClick(Sender: TObject);
begin
  ReloadOrders;
end;

procedure TMainForm.OrdersAccountTabSheetShow(Sender: TObject);
begin
  Self.ReloadOrders(True);
end;

procedure TMainForm.OrdNameLikeFChBClick(Sender: TObject);
begin
  ReloadOrders;
end;

procedure TMainForm.ReloadBoats(ResetFilters: Boolean=False);
var requ_comma: Boolean;
begin
  if ResetFilters then
  begin
    BTypeF�hB.Checked:=False;
    BLocFChB.Checked:=False;
  end;

  requ_comma:=False;
  Self.ReloadBoatTypesDict;
  Self.ReloadLocationsDict;

  try
    ConnectionDM.BoatsADODS.Active:=False;
    ConnectionDM.BoatsADODS.CommandText:='SELECT * FROM BOATS';
    if (BTypeF�hB.Checked and (ConnectionDM.BoatTypesADOT.RecordCount>0)) or
     (BLocFChB.Checked and (ConnectionDM.LocationsADOT.RecordCount>0))  then
     ConnectionDM.BoatsADODS.CommandText:=ConnectionDM.BoatsADODS.CommandText+
     ' WHERE ';
    if (BTypeF�hB.Checked and (ConnectionDM.BoatTypesADOT.RecordCount>0)) then
    begin
     ConnectionDM.BoatsADODS.CommandText:=ConnectionDM.BoatsADODS.CommandText+
     ' BOAT_TYPE_ID='+ConnectionDM.BoatTypesADOT.FieldByName('BOAT_TYPE_ID').AsString;
     requ_comma:=True;
    end;
    if (BLocFChB.Checked and (ConnectionDM.LocationsADOT.RecordCount>0)) then
    begin
     if requ_comma then
       ConnectionDM.BoatsADODS.CommandText:=ConnectionDM.BoatsADODS.CommandText+',';
     ConnectionDM.BoatsADODS.CommandText:=ConnectionDM.BoatsADODS.CommandText+
     ' LOCATION_ID='+ConnectionDM.LocationsADOT.FieldByName('LOCATION_ID').AsString;
     requ_comma:=True;
    end;
    ConnectionDM.BoatsADODS.Active:=True;
  except on E: Exception do
    ShowMessage('������ ������������ ������� �����! ��������: '+E.Message);
  end;
end;

procedure TMainForm.ReloadClients(ResetFilters: Boolean=False);
var requ_comma: Boolean;
begin
  if ResetFilters then
  begin
    Self.ClTypeFChB.Checked:=False;
    Self.ClNameLikeFChB.Checked:=False;
  end;

  requ_comma:=False;
  Self.ReloadClientTypeDict;
  Self.ReloadManagersDict;

  try
    ConnectionDM.PersonsADODS.Active:=False;
    ConnectionDM.PersonsADODS.CommandText:='SELECT * FROM PERSON';
    if (ClTypeFChB.Checked and (ConnectionDM.PersTypesADOT.RecordCount>0)) or
     (ClNameLikeFChB.Checked and (Length(Self.ClNameLikeWordEdit.Text)>0))  then
     ConnectionDM.PersonsADODS.CommandText:=ConnectionDM.PersonsADODS.CommandText+
     ' WHERE ';
    if (ClTypeFChB.Checked and (ConnectionDM.PersTypesADOT.RecordCount>0)) then
    begin
     ConnectionDM.PersonsADODS.CommandText:=ConnectionDM.PersonsADODS.CommandText+
     ' PERSON_TYPE_ID='+ConnectionDM.PersTypesADOT.FieldByName('PERSON_TYPE_ID').AsString;
     requ_comma:=True;
    end;
    if (ClNameLikeFChB.Checked and (Length(Self.ClNameLikeWordEdit.Text)>0)) then
    begin
     if requ_comma then
       ConnectionDM.PersonsADODS.CommandText:=ConnectionDM.PersonsADODS.CommandText+',';
     ConnectionDM.PersonsADODS.CommandText:=ConnectionDM.PersonsADODS.CommandText+
     ' (FAMILY||NAME||SURNAME) LIKE ''%'+ClNameLikeWordEdit.Text+'%''';
     requ_comma:=True;
    end;
    ConnectionDM.PersonsADODS.Active:=True;
  except on E: Exception do
    ShowMessage('������ ������������ ������� ��������! ��������: '+E.Message);
  end;
end;

procedure TMainForm.ReloadOrders(ResetFilters: Boolean=False);
var requ_comma: Boolean;
begin
  if ResetFilters then
  begin
    Self.OrderIntervalFChB.Checked:=False;
  end;

  requ_comma:=False;
  Self.ReloadManagersDict;
  Self.ReloadaPersonDict;
  Self.ReloadBoatsDict;
  Self.ReloadLocationsDict;

  try
    ConnectionDM.OrdersADODS.Active:=False;
    //ConnectionDM.OrdersADODS.CommandText:=
    //  'select *  from ORDERS where (((ORDER_START>=:start_dt) AND '+
    //  '(ORDER_START<=:end_dt)) OR (0=:dt_flag))';
    //ConnectionDM.OrdersADODS.Parameters.Refresh;
    ConnectionDM.OrdersADODS.Parameters.ParamByName('start_dt').Value:=
      Self.OrdStartDTPick.DateTime;
    ConnectionDM.OrdersADODS.Parameters.ParamByName('end_dt').Value:=
      Self.OrdEndDTPick.DateTime;
    if Self.OrderIntervalFChB.Checked then
    begin
      ConnectionDM.OrdersADODS.Parameters.ParamByName('dt_flag').Value:=1;
    end
    else
      ConnectionDM.OrdersADODS.Parameters.ParamByName('dt_flag').Value:=0;
    ConnectionDM.OrdersADODS.Active:=True;
  except on E: Exception do
    ShowMessage('������ ������������ ������� �������! ��������: '+E.Message);
  end;
end;

procedure TMainForm.SetImgBtnClick(Sender: TObject);
begin
  if BoatOpenPictureDialog.Execute then
  begin
    BoatDBImage.Picture.LoadFromFile(BoatOpenPictureDialog.FileName);
    //BoatDBImage.LoadPicture;
    ConnectionDM.BoatsADODS.Edit;
    TBlobField(ConnectionDM.BoatsADODS.FieldByName('BOAT_IMAGE')).LoadFromFile(BoatOpenPictureDialog.FileName);
    ConnectionDM.BoatsADODS.Post;
  end;
end;

procedure TMainForm.ManagersTabSheetShow(Sender: TObject);
begin
  Self.ReloadBoatsDict;
end;

procedure TMainForm.ReloadaPersonDict;
begin
  try
    ConnectionDM.PersonDictADODS.Active:=False;
    ConnectionDM.PersonDictADODS.Active:=True;
  except on E: Exception do
    ShowMessage('������ ������������ ����������� ��������! ��������: '+E.Message);
  end;
end;

procedure TMainForm.ReloadBoatTypesDict;
begin
  try
    ConnectionDM.BTypesDictADOT.Active:=False;
    ConnectionDM.BTypesDictADOT.Active:=True;
  except on E: Exception do
    ShowMessage('������ ������������ ����������� ����� �����! ��������: '+E.Message);
  end;
end;

procedure TMainForm.ReloadLocationsDict;
begin
  try
    ConnectionDM.LocDictADOT.Active:=False;
    ConnectionDM.LocDictADOT.Active:=True;
  except on E: Exception do
    ShowMessage('������ ������������ ����������� �������! ��������: '+E.Message);
  end;
end;

procedure TMainForm.ReloadClientTypeDict;
begin
  try
    ConnectionDM.PersTypesDictADOT.Active:=False;
    ConnectionDM.PersTypesDictADOT.Active:=True;
  except on E: Exception do
    ShowMessage('������ ������������ ����������� ����� ��������! ��������: '+E.Message);
  end;
end;

procedure TMainForm.ReloadManagersDict;
begin
  try
    ConnectionDM.ManDictADODS.Active:=False;
    ConnectionDM.ManDictADODS.Active:=True;
  except on E: Exception do
    ShowMessage('������ ������������ ����������� ����������! ��������: '+E.Message);
  end;
end;

procedure TMainForm.ReloadBoatsDict;
begin
  try
    ConnectionDM.BoatsDictsADODS.Active:=False;
    ConnectionDM.BoatsDictsADODS.Active:=True;
  except on E: Exception do
    ShowMessage('������ ������������ ����������� �����! ��������: '+E.Message);
  end;
end;

end.
