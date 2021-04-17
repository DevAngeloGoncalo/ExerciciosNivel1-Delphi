program Segundo;

uses
  Vcl.Forms,
  ASCII in 'Exercícios\2 -Segundo\ASCII.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
