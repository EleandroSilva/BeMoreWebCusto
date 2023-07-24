unit ufrmModeloPesquisa;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.DBCtrls,
  Vcl.ComCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Winapi.UrlMon, System.ImageList, Vcl.ImgList;

type
  TfrmModeloPesquisa = class(TForm)
    pButtons: TPanel;
    Panel4: TPanel;
    lSite: TLabel;
    Navigator: TDBNavigator;
    btnSearch: TBitBtn;
    btnClose: TBitBtn;
    rgActive: TRadioGroup;
    pSearch: TPanel;
    rgChoice: TRadioGroup;
    Panel6: TPanel;
    Label1: TLabel;
    edtSearch: TEdit;
    Panel2: TPanel;
    lTextoEmpresa: TLabel;
    Panel3: TPanel;
    Panel5: TPanel;
    gbBetweenDates: TGroupBox;
    lStart: TLabel;
    lEnd: TLabel;
    StartDate: TDateTimePicker;
    EndDate: TDateTimePicker;
    Panel1: TPanel;
    dbgSearch: TDBGrid;
    DataSource1: TDataSource;
    lfrmExecutando: TLabel;
    ImageList1: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure lSiteClick(Sender: TObject);
    procedure dbgSearchDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgSearchDblClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModeloPesquisa: TfrmModeloPesquisa;

implementation

{$R *.dfm}


procedure TfrmModeloPesquisa.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmModeloPesquisa.dbgSearchDblClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmModeloPesquisa.dbgSearchDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If Odd(TDBGrid(Sender).DATASOURCE.DataSet.RecNo) Then
    TDBGrid(Sender).Canvas.Brush.Color := clActiveCaption
  Else
    TDBGrid(Sender).Canvas.Brush.Color := clInfoBk;

  If (State = [GdSelected]) Or (State = [GdFocused]) Or (State = [GdSelected, GdFocused]) Then
  Begin
    TDBGrid(Sender).Canvas.Brush.Color := cl3DLight;
    TDBGrid(Sender).Canvas.Font.Color := clBlack;
  End;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmModeloPesquisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmModeloPesquisa := nil;
  Action := caFree;
end;

procedure TfrmModeloPesquisa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(CM_Dialogkey, VK_TAB, 0);
  end;
end;

procedure TfrmModeloPesquisa.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Escape:
      Close;
  end;
end;

procedure TfrmModeloPesquisa.FormShow(Sender: TObject);
var
  lDia: String;
begin
  lDia := '01/' + FormatDateTime('MM', Now) + '/' + FormatDateTime('YYYY', Now);
  StartDate.Date := StrToDate(lDia);
  EndDate.Date := Now;

  rgChoice.ItemIndex := 1;
end;

procedure TfrmModeloPesquisa.lSiteClick(Sender: TObject);
begin
  HlinkNavigateString(nil, 'http://bemoreweb.com.br/');
end;

end.
