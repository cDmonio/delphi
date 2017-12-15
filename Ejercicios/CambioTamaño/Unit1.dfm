object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Ancho y Alto'
  ClientHeight = 257
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
  object bcambio: TButton
    Left = 48
    Top = 24
    Width = 75
    Height = 25
    Caption = '25,75'
    TabOrder = 0
  end
  object Button2: TButton
    Left = 368
    Top = 112
    Width = 75
    Height = 25
    Caption = '- Alto'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 296
    Top = 168
    Width = 75
    Height = 25
    Caption = '- Ancho'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 440
    Top = 168
    Width = 75
    Height = 25
    Caption = '+ Ancho'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 368
    Top = 224
    Width = 75
    Height = 25
    Caption = '+ Alto'
    TabOrder = 4
    OnClick = Button5Click
  end
end
