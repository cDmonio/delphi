unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button3Click(Sender: TObject);
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
ShowMessage('Hola '+Edit1.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
 resp:integer;
begin
  resp:=application.MessageBox('¿Quieres grabar?','Grabando',MB_YESNO+MB_ICONASTERISK);
  if resp=mrYes then
     showmessage('Grabando operacion')
  else
  showmessage('Operacion no grabada');
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
 respuesta:Word;
begin
   respuesta:=MessageDlg('Quieres salir?',mtCustom,mbYesNo,0);
   if respuesta=mrNo then
      canClose:=false;
end;

end.
