unit UMineSweeperFieldBuilderTest;

interface

uses
  TestFrameWork,
  UMineSweeper;

type

  TMineSweeperFieldBuilderTest = class(TTestCase)

  protected
    FMineSweeper: TMineSweeper;
    procedure SetUp; override;


  published
    {: Every Test Method should be in a published module}
    procedure TestFieldShouldHaveNumberOfLinesAndAColumns;
  end;

implementation

procedure TMineSweeperFieldBuilderTest.SetUp;
begin
  inherited;
  FMineSweeper := TMineSweeper.Create;
  FMineSweeper.ColumnCount := 4;

end;

procedure TMineSweeperFieldBuilderTest.TestFieldShouldHaveNumberOfLinesAndAColumns;
begin
  CheckEquals(4, FMineSweeper.ColumnCount,'column should be equal to four');
  CheckEquals(4, 4,'line should be equal to four');
end;


initialization
 TestFramework.RegisterTest(TMineSweeperFieldBuilderTest.Suite);
end.
