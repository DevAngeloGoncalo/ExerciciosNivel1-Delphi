program Quarto;

uses
  Vcl.Forms,
  Cores in '4 - Quarto\Cores.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
