unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    bcambio: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
bcambio.Height:=bcambio.Height-5;
bcambio.Caption:=inttostr(bcambio.Height)+','+inttostr(bcambio.Width);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
bcambio.Width:=bcambio.Width-5;
bcambio.Caption:=inttostr(bcambio.Height)+','+inttostr(bcambio.Width);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
bcambio.Width:=bcambio.Width+5;
bcambio.Caption:=inttostr(bcambio.Height)+','+inttostr(bcambio.Width);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
bcambio.Height:=bcambio.Height+5;
bcambio.Caption:=inttostr(bcambio.Height)+','+inttostr(bcambio.Width);
end;

end.
