unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label4: TLabel;
    cantidad: TLabel;
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
edit3.CutToClipboard;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
edit3.CopyToClipboard;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
edit3.Clear;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
edit3.PasteFromClipboard;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if not(Key in ['0'..'9',#8]) then
  Key:=#0;
end;

procedure TForm1.Edit3Change(Sender: TObject);
var
 cadena:String;
begin
  cadena:=edit3.Text;
  cantidad.Caption:=inttostr(cadena.Length);
end;

end.
