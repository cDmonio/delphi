unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.TabNotBk,
  Vcl.Grids;

type
  TForm1 = class(TForm)
    contenedor: TTabbedNotebook;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    tabla: TStringGrid;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Memo2: TMemo;
    Memo3: TMemo;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  empleado=record
    Nombre:String;
    Sueldo:integer;
  end;
var
  Form1: TForm1;
  datos:array[1..100]of empleado;
  pos:integer;
implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.Button10Click(Sender: TObject);
Var
  Fichero : TextFile;
  Linea,cadena : String;
  caracter:Char;
  I: Integer;
begin
  cadena:='';
  If FileExists ('Archivo.txt') Then
  begin
     AssignFile(Fichero,'archivo.txt');
     Reset(Fichero);
     While Eof(Fichero) = False Do
      Begin
         Readln(Fichero,Linea);
         for I := 0 to Linea.Length do
            begin
              caracter:=Linea.Chars[I];
              dec(caracter);
              cadena:=cadena+caracter;
            end;
      End;
      Memo3.Text:=cadena;
      CloseFile(Fichero);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
MiFichero : TextFile;
Nombre : String;
begin
  Nombre := Memo1.Text;
  AssignFile (MiFichero,'nombre.txt');
  Rewrite (MiFichero);
  writeln(MiFichero,Nombre);
  CloseFile (mifichero);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 try
  Memo1.Lines.LoadFromFile('nombre.txt');
 except
    On Exception do
      showmessage('No existe el fichero');
 end;
end;

procedure TForm1.Button3Click(Sender: TObject);
Var
MiFichero : TextFile;
Nombre : String;
begin
    If FileExists ('Nombre.txt') Then
    begin
       AssignFile (MiFichero,'nombre.txt');
       Reset (MiFichero);
       Read(MiFichero,Nombre);
       CloseFile (mifichero);
       Memo1.text:=Nombre;
    end
    else
     showmessage('el fichero no existe');
end;

procedure TForm1.Button4Click(Sender: TObject);
var
 Fichero : TextFile;
 Linea : String;

begin
 try
  AssignFile (Fichero,'nombre.txt');
  Reset (Fichero);
  While Eof(Fichero) = False Do
  Begin
    Readln(Fichero,Linea);
    Memo1.Lines.add(Linea);
  End;
  CloseFile(Fichero);
  except
   on Exception do
    Showmessage('Fichero inexistente');
 end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
datos[pos].Nombre:=Edit1.text;
datos[pos].Sueldo:=strtoint(Edit2.text);
tabla.cells[0,pos]:=edit1.text;
tabla.cells[1,pos]:=edit2.text;
edit1.Clear;
edit2.Clear;
inc(Pos);
tabla.rowcount:=Pos+1;
end;

procedure TForm1.Button6Click(Sender: TObject);
Var
MiFichero : TextFile;
Linea : String;
  I: Integer;
begin
    AssignFile (MiFichero,'empleados.txt');
    Rewrite (MiFichero);
    writeln(MiFichero,'LISTADO DE EMPLEADOS');
    writeln(MiFichero,'====================');
    for I := 1 to pos-1 do
    begin
      Linea:=datos[I].Nombre+' '+inttostr(datos[I].Sueldo);
      writeln(MiFichero,Linea);
    end;
    writeln(MiFichero,' ');
    writeln(MiFichero,'TOTAL:'+inttostr(pos-1));
    CloseFile(MiFichero);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
Form2.Memo1.lines.loadfromFile('empleados.txt');
Form2.showmodal();
end;

procedure TForm1.Button8Click(Sender: TObject);
 Var
  Fichero : TextFile;
  Linea,cadena : String;
  caracter:Char;
  I: Integer;
begin
    AssignFile(Fichero,'archivo.txt');
    Rewrite (Fichero);
    Linea:=Memo2.text;
    cadena:='';
    for I := 0 to Linea.length do
       begin
         caracter:=Linea.Chars[I];
         inc(caracter);
         cadena:=cadena+caracter;
       end;
    writeln(Fichero,cadena);
    closeFile(Fichero);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
Memo3.lines.LoadFromFile('archivo.txt');
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
tabla.cells[0,0]:='Nombre';
tabla.cells[1,0]:='Sueldo';
pos:=1;
end;

end.
