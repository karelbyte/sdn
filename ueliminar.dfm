object feliminar: Tfeliminar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Eliminar'
  ClientHeight = 95
  ClientWidth = 330
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  object texteliminar: TLabel
    Left = 8
    Top = 24
    Width = 4
    Height = 16
  end
  object Button1: TButton
    Left = 200
    Top = 61
    Width = 57
    Height = 28
    Caption = 'Si'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 263
    Top = 61
    Width = 59
    Height = 28
    Caption = 'No'
    TabOrder = 1
    OnClick = Button2Click
  end
end
