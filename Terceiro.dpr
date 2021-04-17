program Terceiro;

uses
  Vcl.Forms,
  Triangulo in 'Exercícios\3 - Terceiro\Triangulo.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
