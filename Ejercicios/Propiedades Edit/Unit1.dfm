object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Propiedades Edit'
  ClientHeight = 345
  ClientWidth = 535
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 24
    Width = 160
    Height = 19
    Caption = 'Clave 10 caracteres'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 352
    Top = 24
    Width = 64
    Height = 19
    Caption = 'Numero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 56
    Top = 136
    Width = 119
    Height = 19
    Caption = 'Cortar y Pegar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 56
    Top = 216
    Width = 185
    Height = 19
    Caption = 'Numero de caracteres:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cantidad: TLabel
    Left = 264
    Top = 221
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 56
    Top = 64
    Width = 121
    Height = 21
    MaxLength = 10
    PasswordChar = '*'
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 352
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 56
    Top = 176
    Width = 417
    Height = 21
    TabOrder = 2
    OnChange = Edit3Change
  end
  object Button1: TButton
    Left = 56
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Cortar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 168
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Copiar'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 272
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Borrar'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 398
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Pegar'
    TabOrder = 6
    OnClick = Button4Click
  end
end
