// Uncomment the following directive to create a console application
// or leave commented to create a GUI application... 
//{$APPTYPE CONSOLE}

program MineSweeperTests;

uses
  TestFramework {$IFDEF LINUX},
  QForms,
  QGUITestRunner {$ELSE},
  Forms,
  GUITestRunner {$ENDIF},
  TextTestRunner,
  UMineSweeperFieldBuilderTest in 'UMineSweeperFieldBuilderTest.pas',
  UMineSweeper in '..\src\UMineSweeper.pas';

{$R *.RES}
                  
begin
  Application.Initialize;

{$IFDEF LINUX}
  QGUITestRunner.RunRegisteredTests;
{$ELSE}
  if System.IsConsole then
    TextTestRunner.RunRegisteredTests
  else
    GUITestRunner.RunRegisteredTests;
{$ENDIF}

end.

 