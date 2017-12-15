object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cuadros de dialogos'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 40
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Saludo'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 40
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button2: TButton
    Left = 352
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Salir'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 352
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Grabar'
    TabOrder = 3
    OnClick = Button3Click
  end
end
