unit Triangulo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    LadoA: TEdit;
    LadoB: TEdit;
    LadoC: TEdit;
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    function Triangulo(LadoA, LadoB, LadoC: integer): string;

  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  Edit1.Text := Triangulo(StrToInt(LadoA.Text), StrToInt(LadoB.Text),
    StrToInt(LadoC.Text));
end;

function TForm3.Triangulo(LadoA, LadoB, LadoC: integer): string;
begin
  if (LadoA > 0) AND (LadoB > 0) AND (LadoC > 0) then
  begin
    if (((LadoB - LadoC) < LadoA) AND (LadoA < (LadoB + LadoC))) AND
      (((LadoA - LadoC) < LadoB) AND (LadoB < (LadoA + LadoC))) AND
      (((LadoA - LadoB) < LadoC) AND (LadoC < (LadoA + LadoB))) then
    begin
      if ((LadoA = LadoB) AND (LadoA <> LadoC)) OR
        ((LadoB = LadoC) AND (LadoB <> LadoA)) OR
        ((LadoC = LadoA) AND (LadoC <> LadoB)) then
      begin
        result := 'Isósceles';
      end
      else if (LadoA <> LadoB) AND (LadoA <> LadoC) then
      begin
        result := 'Escaleno';
      end
      else if (LadoA = LadoB) AND (LadoA = LadoC) then
      begin
        result := 'Equilatéro';
      end
      else
      Begin
        result := 'Não é um triângulo';
      End;
    end
    else
    begin
      result := 'Não é um triângulo';
    end;
  end
  else
  BEGIN
    result := 'Não é um triângulo';
  END;
end;

end.
