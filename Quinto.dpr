program Quinto;

uses
  Vcl.Forms,
  Cadastro in 'Exercícios\5 - Quinto\Cadastro.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
