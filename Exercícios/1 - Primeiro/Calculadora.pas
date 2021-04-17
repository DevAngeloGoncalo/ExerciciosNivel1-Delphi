unit Calculadora;

{ Calculadora aritmética: Faça um programa, com interface de usuário utilizando a biblioteca
  VCL, que solicite os seguintes dados: número 1, número 2, operação.  Em seguida,  mostre o
  resultado. }

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label1: TLabel;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);

  private
    { Private declarations }
    function Somar(valor1, valor2: integer): integer;
    function Subtrair(valor1, valor2: integer): integer;
    function Dividir(valor1, valor2: currency): currency;
    function Multiplicar(valor1, valor2: integer): integer;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

var

  numero: integer;

begin

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit3.Text := IntToStr(Somar(StrToInt(Edit1.Text), StrToInt(Edit2.Text)));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit3.Text := IntToStr(Subtrair(StrToInt(Edit1.Text), StrToInt(Edit2.Text)));
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Edit3.Text := CurrToStr(Dividir(StrToCurr(Edit1.Text), StrToCurr(Edit2.Text)));
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Edit3.Text := IntToStr(Multiplicar(StrToInt(Edit1.Text), StrToInt(Edit2.Text)));
end;

function TForm1.Dividir(valor1, valor2: currency): currency;
var

  calculo: integer;
begin
  result := valor1 / valor2;

  Edit3.Text := IntToStr(calculo);
end;

function TForm1.Multiplicar(valor1, valor2: integer): integer;

begin
  result := valor1 * valor2;
end;

function TForm1.Somar(valor1, valor2: integer): integer;
begin
  result := valor1 + valor2;
end;

function TForm1.Subtrair(valor1, valor2: integer): integer;
begin
  result := valor1 - valor2;
end;

end.
