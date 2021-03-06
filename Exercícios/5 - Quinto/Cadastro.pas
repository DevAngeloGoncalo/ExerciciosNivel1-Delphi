unit Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  var

    aluno: array of string;
    nome: string;
    idade: integer;
    tamanho: integer;

  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin

  nome := Edit1.Text;
  idade := StrToInt(Edit2.Text);

  INC(tamanho);
  SetLength(aluno, tamanho);

  aluno[tamanho - 1] := nome + ' | ' + IntToStr(idade) + ' anos.';

  Memo1.Clear;
  Memo1.Lines.Add(nome + ' Cadastrado!');

end;

procedure TForm5.Button2Click(Sender: TObject);
var
  I: integer;
begin

  Memo1.clear;
  for I := 0 to tamanho - 1 do
  begin
    Memo1.Lines.Add(aluno[I]);
  end;
end;

procedure TForm5.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
  begin
     key := #0;
  end;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  Memo1.Clear;
  tamanho := 0;
end;
end.
