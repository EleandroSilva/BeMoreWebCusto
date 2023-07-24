unit StringGridHack;

interface

uses
  Vcl.Grids;

type
  TStringGridHack = class(TStringGrid)
  public
    constructor Create;
    destructor Destroy; override;
    procedure DeleteRow(ARow: Longint); reintroduce;
    procedure InsertRow(ARow: Longint);
  end;

implementation

{ TStringGridHack }

constructor TStringGridHack.Create;
begin

end;

procedure TStringGridHack.DeleteRow(ARow: Longint);
var
  GemRow: Integer;
begin
   GemRow := Row;
  if RowCount > FixedRows + 1 then
    inherited DeleteRow(ARow)
  else
    Rows[ARow].Clear;
  if GemRow < RowCount then
    Row := GemRow;
end;

destructor TStringGridHack.Destroy;
begin
  inherited;
end;

procedure TStringGridHack.InsertRow(ARow: Longint);
var
  GemRow: Integer;
begin
  GemRow := Row;
  while ARow < FixedRows do
    Inc(ARow);
  RowCount := RowCount + 1;
  MoveRow(RowCount - 1, ARow);
  Row := GemRow;
end;

end.
