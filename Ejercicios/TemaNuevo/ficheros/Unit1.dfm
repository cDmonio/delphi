object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'ficheros de texto'
  ClientHeight = 322
  ClientWidth = 548
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object contenedor: TTabbedNotebook
    Left = 0
    Top = 0
    Width = 548
    Height = 322
    Align = alClient
    PageIndex = 2
    TabFont.Charset = DEFAULT_CHARSET
    TabFont.Color = clBtnText
    TabFont.Height = -11
    TabFont.Name = 'Tahoma'
    TabFont.Style = []
    TabOrder = 0
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Primera'
      object Memo1: TMemo
        Left = 32
        Top = 40
        Width = 225
        Height = 209
        Lines.Strings = (
          '')
        TabOrder = 0
      end
      object Button1: TButton
        Left = 336
        Top = 56
        Width = 75
        Height = 25
        Caption = 'guardar'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 448
        Top = 56
        Width = 75
        Height = 25
        Caption = 'Abrir'
        TabOrder = 2
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 336
        Top = 112
        Width = 187
        Height = 25
        Caption = 'Leer linea fichero'
        TabOrder = 3
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 336
        Top = 168
        Width = 75
        Height = 25
        Caption = 'Abrir Fichero'
        TabOrder = 4
        OnClick = Button4Click
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Segunda'
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label2: TLabel
        Left = 30
        Top = 61
        Width = 32
        Height = 13
        Caption = 'Sueldo'
      end
      object Edit1: TEdit
        Left = 96
        Top = 13
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 96
        Top = 58
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object tabla: TStringGrid
        Left = 48
        Top = 129
        Width = 441
        Height = 136
        ColCount = 2
        FixedCols = 0
        RowCount = 2
        TabOrder = 2
        ColWidths = (
          198
          194)
      end
      object Button5: TButton
        Left = 320
        Top = 11
        Width = 75
        Height = 25
        Caption = 'Agregar'
        TabOrder = 3
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 320
        Top = 56
        Width = 75
        Height = 25
        Caption = 'Empleados'
        TabOrder = 4
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 414
        Top = 11
        Width = 59
        Height = 25
        Caption = 'Ver'
        TabOrder = 5
        OnClick = Button7Click
      end
    end
    object TTabPage
      Left = 4
      Top = 24
      Caption = 'Tercera'
      object Memo2: TMemo
        Left = 24
        Top = 13
        Width = 201
        Height = 252
        TabOrder = 0
      end
      object Memo3: TMemo
        Left = 336
        Top = 13
        Width = 201
        Height = 248
        TabOrder = 1
      end
      object Button8: TButton
        Left = 239
        Top = 25
        Width = 75
        Height = 25
        Caption = 'Guardar'
        TabOrder = 2
        OnClick = Button8Click
      end
      object Button9: TButton
        Left = 239
        Top = 72
        Width = 75
        Height = 25
        Caption = 'Ver'
        TabOrder = 3
        OnClick = Button9Click
      end
      object Button10: TButton
        Left = 239
        Top = 112
        Width = 75
        Height = 25
        Caption = 'Abrir'
        TabOrder = 4
        OnClick = Button10Click
      end
    end
  end
end
