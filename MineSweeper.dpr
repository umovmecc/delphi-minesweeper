program MineSweeper;

uses
  Forms,
  UFrmMineSweeper in 'src\UFrmMineSweeper.pas' {Form1},
  UMineSweeper in 'src\UMineSweeper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
