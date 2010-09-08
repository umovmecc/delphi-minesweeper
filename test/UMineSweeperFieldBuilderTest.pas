unit UMineSweeperFieldBuilderTest;

interface

uses
  TestFrameWork,
  UMineSweeper;

type

  TMineSweeperFieldBuilderTest = class(TTestCase)
  published
    procedure TestFieldShouldHaveNumberOfLinesAndAColumns;
    procedure TestShouldNotCreateFieldWithZeroLinesOrColumns;
  end;

implementation

procedure TMineSweeperFieldBuilderTest.TestFieldShouldHaveNumberOfLinesAndAColumns;
var
    FMineSweeper: TMineSweeper;
begin
  FMineSweeper := TMineSweeper.Create(4,4);
  CheckEquals(4, FMineSweeper.ColumnCount,'columns should be equal to four');
  CheckEquals(4, FMineSweeper.LineCount,'lines should be equal to 4');
end;


procedure TMineSweeperFieldBuilderTest.TestShouldNotCreateFieldWithZeroLinesOrColumns;
var
    FMineSweeper: TMineSweeper;
begin
  try
    FMineSweeper := TMineSweeper.Create(0,0);
    Fail('Deveria ter lançado exceção');
  except
    on EFB:EFieldBuilder do
    else
      raise;
  end;
end;

initialization
 TestFramework.RegisterTest(TMineSweeperFieldBuilderTest.Suite);
end.
