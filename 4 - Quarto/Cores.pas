unit Cores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure ButtonMouseEnter(Sender: TObject);
    procedure ButtonMouseLeave(Sender: TObject);
    procedure EditMouseLeave(Sender: TObject);
    procedure EditMouseEnter(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.ButtonMouseEnter(Sender: TObject);
begin
   Panel1.Color := $0000FF80
end;

procedure TForm4.ButtonMouseLeave(Sender: TObject);
begin
  Panel1.Color := clRed
end;

procedure TForm4.EditMouseEnter(Sender: TObject);
begin
  Panel1.Color := $0080FFFF
end;

procedure TForm4.EditMouseLeave(Sender: TObject);
begin
  Panel1.Color := clRed
end;

end.
