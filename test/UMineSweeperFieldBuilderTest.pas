unit UMineSweeperFieldBuilderTest;

interface

uses
  TestFrameWork;

type

  TMineSweeperFieldBuilderTest = class(TTestCase)
  published
    {: Every Test Method should be in a published module}
    procedure TestFieldShouldHaveNumberOfLinesAndAColumns;
  end;

implementation

procedure TMineSweeperFieldBuilderTest.TestFieldShouldHaveNumberOfLinesAndAColumns;
begin
  CheckTrue(1<>2,'One should not be igual to Two');
end;

initialization
 TestFramework.RegisterTest(TMineSweeperFieldBuilderTest.Suite);
end.
