program Calculadora;

uses
  Vcl.Forms,
  Calc in 'Calc.pas',
  FormCalc in 'FormCalc.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
