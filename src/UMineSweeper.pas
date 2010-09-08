unit UMineSweeper;

interface

uses SysUtils;

type
  EFieldBuilder = class(Exception);

  TMineSweeper = class
  private
    FColumnCount: integer;
    FLineCount: integer;
    procedure SetColumnCount(const Value: integer);
    procedure SetLineCount(const Value: integer);
  public
    property ColumnCount: integer read FColumnCount write SetColumnCount;
    property LineCount: integer read FLineCount write SetLineCount;
    constructor Create(AColumnCount, ALineCount : integer);
end;

implementation

{ TMineSweeper }

constructor TMineSweeper.Create(AColumnCount, ALineCount: integer);
begin
  if(AColumnCount = 0) or (ALineCount = 0) then
    raise EFieldBuilder.Create('What we have got here is failure communication');
  FColumnCount := AColumnCount;
  FLineCount := ALineCount;
end;

procedure TMineSweeper.SetColumnCount(const Value: integer);
begin
  FColumnCount := Value;
end;

procedure TMineSweeper.SetLineCount(const Value: integer);
begin
  FLineCount := Value;
end;

end.
 