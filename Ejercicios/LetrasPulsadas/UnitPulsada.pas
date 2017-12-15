unit UnitPulsada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ascii: TLabel;
    letra: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of
  vk_tab:letra.Caption:='Tabulador';
  VK_RETURN:letra.Caption:='Return';
  vk_shift:letra.Caption:='Mayus';
  vk_menu:letra.Caption:='ALT';
  else
  ascii.Caption:='Otro caracter';
end;
ascii.Caption:=inttostr(Key);
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
var
 let:integer;
begin
letra.Caption:=Key;
 let:=ord(Key);
 ascii.Caption:=inttostr(let);
end;

end.
