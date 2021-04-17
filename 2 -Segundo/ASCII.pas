unit ASCII;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    function StrToAscii(Texto: string): string;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);

begin
  Edit2.Text := StrToAscii(Edit1.Text);
end;

function TForm2.StrToAscii(Texto: string): string;
var
  i: integer;
  PalavraHex: String;
begin
  for i := 1 to Length(Texto) do
  begin
    PalavraHex := PalavraHex + IntToStr(Ord(Texto[i]));
  end;
  Result := PalavraHex;
end;

end.
