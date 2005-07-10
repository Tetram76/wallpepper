unit UPlanner;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Planner, TodoList, ComCtrls, UMain,
  DBPlanner, DB, jvuibdataset, jvuib, ExtCtrls, PlannerMonthView,
  DBPlannerMonthView, DBTodoList;

type
  TFrmPlanner = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TodoList1: TDBTodoList;
    DBPlanner1: TDBPlanner;
    DBDaySource1: TDBDaySource;
    DataSource1: TDataSource;
    JvUIBDataBase1: TJvUIBDataBase;
    JvUIBTransaction1: TJvUIBTransaction;
    JvUIBDataSet1: TJvUIBDataSet;
    TabSheet4: TTabSheet;
    DBPlannerMonthView1: TDBPlannerMonthView;
    DataSource2: TDataSource;
    JvUIBDataSet2: TJvUIBDataSet;
    Panel1: TPanel;
    Button3: TButton;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBPlannerMonthView1YearChange(Sender: TObject; origDate,
      newDate: TDateTime);
    procedure DBDaySource1SetFilter(Sender: TObject);
    procedure DBDaySource1InsertItem(Sender: TObject;
      APlannerItem: TPlannerItem);
    procedure DBDaySource1UpdateItem(Sender: TObject;
      APlannerItem: TPlannerItem);
    procedure DBDaySource1DeleteItem(Sender: TObject;
      APlannerItem: TPlannerItem);
    procedure TodoList1ItemInsert(Sender: TObject; ATodoItem: TTodoItem;
      var Allow: Boolean);
    procedure TodoList1ItemDelete(Sender: TObject; ATodoItem: TTodoItem;
      var Allow: Boolean);
    procedure TodoList1Click(Sender: TObject);
    procedure TodoList1CompleteClick(Sender: TObject; ItemIndex: Integer);
    procedure TodoList1DblClick(Sender: TObject);
    procedure TodoList1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TodoList1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TodoList1EditDone(Sender: TObject);
    procedure TodoList1EditStart(Sender: TObject);
    procedure TodoList1EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure TodoList1Enter(Sender: TObject);
    procedure TodoList1Exit(Sender: TObject);
    procedure TodoList1HeaderClick(Sender: TObject; Column: Integer);
    procedure TodoList1HeaderRightClick(Sender: TObject; Column: Integer);
    procedure TodoList1ItemRightClick(Sender: TObject;
      ATodoItem: TTodoItem);
    procedure TodoList1ItemSelect(Sender: TObject; ATodoItem: TTodoItem);
    procedure TodoList1PriorityToString(Sender: TObject;
      AValue: TTodoPriority; var AString: String);
    procedure TodoList1StartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure TodoList1StatusToString(Sender: TObject; AValue: TTodoStatus;
      var AString: String);
    procedure TodoList1StringToPriority(Sender: TObject; AString: String;
      var AValue: TTodoPriority);
    procedure TodoList1StringToStatus(Sender: TObject; AString: String;
      var AValue: TTodoStatus);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    Options: ROptions;
    procedure ApplyOptions;
  end;

implementation

{$R *.dfm}

uses DateUtils, ComObj;

procedure TFrmPlanner.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBDaySource1.DateFormat := 'dddd'#13#10'dd/mm/yyyy';
  DBDaySource1.Day := StartOfTheWeek(EncodeDate(2001, 5, 7));
  JvUIBDataSet1.Open;
end;

procedure TFrmPlanner.ApplyOptions;
begin
  DBPlanner1.Display.ActiveStart := Trunc(MinuteOfTheDay(Options.JourneeHeureDebut) / DBPlanner1.Display.DisplayUnit);
  DBPlanner1.Display.ActiveEnd := Trunc(MinuteOfTheDay(Options.JourneeHeureFin) / DBPlanner1.Display.DisplayUnit);
  DBPlanner1.Display.DisplayStart := 0;
  DBPlanner1.Display.DisplayEnd := Pred(Trunc(MinsPerDay / DBPlanner1.Display.DisplayUnit));
  DBPlanner1.ActiveDisplay := False;
  DBPlanner1.ActiveDisplay := True;
end;

procedure TFrmPlanner.FormDestroy(Sender: TObject);
begin
  JvUIBDataSet1.Close;
end;

procedure TFrmPlanner.DBPlannerMonthView1YearChange(Sender: TObject; origDate, newDate: TDateTime);
begin
  DBDaySource1.OnSetFilter := nil;
  try
    DBDaySource1.Day := StartOfTheWeek(newDate);
  finally
    DBDaySource1.OnSetFilter := DBDaySource1SetFilter;
  end;
end;

procedure TFrmPlanner.DBDaySource1SetFilter(Sender: TObject);
begin
  DBPlannerMonthView1.Date := DBDaySource1.Day;
end;

procedure TFrmPlanner.DBDaySource1InsertItem(Sender: TObject; APlannerItem: TPlannerItem);
begin
  with TJvUIBQuery.Create(nil) do try
    Transaction := JvUIBTransaction1;
    DataBase := JvUIBDataBase1;

    SQL.Text := 'insert into PLANITEMS (itemend, itembegin, itemdescr, itemkey) values (:itemend, :itembegin, :itemdescr, :itemkey)';
    Params.ByNameAsDateTime['itembegin'] := APlannerItem.ItemStartTime;
    Params.ByNameAsDateTime['itemend'] := APlannerItem.ItemEndTime;
    Params.ByNameAsString['itemdescr'] := APlannerItem.ItemText;
    APlannerItem.DBKey := CreateClassID;
    Params.ByNameAsString['itemkey'] := APlannerItem.DBKey;
    ExecSQL;
    Transaction.CommitRetaining;
  finally
    Free;
  end;
  DBDaySource1.SynchDBItems;
end;

procedure TFrmPlanner.DBDaySource1UpdateItem(Sender: TObject; APlannerItem: TPlannerItem);
begin
  with TJvUIBQuery.Create(nil) do try
    Transaction := JvUIBTransaction1;
    DataBase := JvUIBDataBase1;

    SQL.Text := 'update PLANITEMS set itemend = :itemend, itembegin = :itembegin, itemdescr = :itemdescr where itemkey = :itemkey';
    Params.ByNameAsDateTime['itembegin'] := APlannerItem.ItemStartTime;
    Params.ByNameAsDateTime['itemend'] := APlannerItem.ItemEndTime;
    Params.ByNameAsString['itemdescr'] := APlannerItem.ItemText;
    Params.ByNameAsString['itemkey'] := APlannerItem.DBKey;
    ExecSQL;
    Transaction.CommitRetaining;
  finally
    Free;
  end;
  DBDaySource1.SynchDBItems;
end;

procedure TFrmPlanner.DBDaySource1DeleteItem(Sender: TObject; APlannerItem: TPlannerItem);
begin
  with TJvUIBQuery.Create(nil) do try
    Transaction := JvUIBTransaction1;
    DataBase := JvUIBDataBase1;

    SQL.Text := 'DELETE FROM PLANITEMS where itemkey = :itemkey';
    Params.ByNameAsString['itemkey'] := APlannerItem.DBKey;
    ExecSQL;
    Transaction.CommitRetaining;
  finally
    Free;
  end;
  DBDaySource1.SynchDBItems;
end;

procedure TFrmPlanner.TodoList1ItemInsert(Sender: TObject; ATodoItem: TTodoItem; var Allow: Boolean);
begin
  Memo1.Lines.Insert(0, 'TodoList1ItemInsert');
end;

procedure TFrmPlanner.TodoList1ItemDelete(Sender: TObject; ATodoItem: TTodoItem; var Allow: Boolean);
begin
  Memo1.Lines.Insert(0, 'TodoList1ItemDelete');
end;

procedure TFrmPlanner.TodoList1Click(Sender: TObject);
begin
  Memo1.Lines.Insert(0, 'TodoList1Click');
end;

procedure TFrmPlanner.TodoList1CompleteClick(Sender: TObject; ItemIndex: Integer);
begin
  Memo1.Lines.Insert(0, 'TodoList1CompleteClick');
end;

procedure TFrmPlanner.TodoList1DblClick(Sender: TObject);
begin
  Memo1.Lines.Insert(0, 'TodoList1DblClick');
end;

procedure TFrmPlanner.TodoList1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  Memo1.Lines.Insert(0, 'TodoList1DragDrop');
end;

procedure TFrmPlanner.TodoList1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Memo1.Lines.Insert(0, 'TodoList1DragOver');
end;

procedure TFrmPlanner.TodoList1EditDone(Sender: TObject);
begin
  Memo1.Lines.Insert(0, 'TodoList1EditDone');
end;

procedure TFrmPlanner.TodoList1EditStart(Sender: TObject);
begin
  Memo1.Lines.Insert(0, 'TodoList1EditStart');
end;

procedure TFrmPlanner.TodoList1EndDrag(Sender, Target: TObject; X, Y: Integer);
begin
  Memo1.Lines.Insert(0, 'TodoList1EndDrag');
end;

procedure TFrmPlanner.TodoList1Enter(Sender: TObject);
begin
  Memo1.Lines.Insert(0, 'TodoList1Enter');
end;

procedure TFrmPlanner.TodoList1Exit(Sender: TObject);
begin
  Memo1.Lines.Insert(0, 'TodoList1Exit');
end;

procedure TFrmPlanner.TodoList1HeaderClick(Sender: TObject; Column: Integer);
begin
  Memo1.Lines.Insert(0, 'TodoList1HeaderClick');
end;

procedure TFrmPlanner.TodoList1HeaderRightClick(Sender: TObject; Column: Integer);
begin
  Memo1.Lines.Insert(0, 'TodoList1HeaderRightClick');
end;

procedure TFrmPlanner.TodoList1ItemRightClick(Sender: TObject; ATodoItem: TTodoItem);
begin
  Memo1.Lines.Insert(0, 'TodoList1ItemRightClick');
end;

procedure TFrmPlanner.TodoList1ItemSelect(Sender: TObject; ATodoItem: TTodoItem);
begin
  Memo1.Lines.Insert(0, 'TodoList1ItemSelect');
end;

procedure TFrmPlanner.TodoList1PriorityToString(Sender: TObject; AValue: TTodoPriority; var AString: String);
begin
  Memo1.Lines.Insert(0, 'TodoList1PriorityToString');
end;

procedure TFrmPlanner.TodoList1StartDrag(Sender: TObject; var DragObject: TDragObject);
begin
  Memo1.Lines.Insert(0, 'TodoList1StartDrag');
end;

procedure TFrmPlanner.TodoList1StatusToString(Sender: TObject; AValue: TTodoStatus; var AString: String);
begin
  Memo1.Lines.Insert(0, 'TodoList1StatusToString');
end;

procedure TFrmPlanner.TodoList1StringToPriority(Sender: TObject; AString: String; var AValue: TTodoPriority);
begin
  Memo1.Lines.Insert(0, 'TodoList1StringToPriority');
end;

procedure TFrmPlanner.TodoList1StringToStatus(Sender: TObject; AString: String; var AValue: TTodoStatus);
begin
  Memo1.Lines.Insert(0, 'TodoList1StringToStatus');
end;

end.

