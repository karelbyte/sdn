object fupboleta: Tfupboleta
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Actualizar de boleta'
  ClientHeight = 182
  ClientWidth = 318
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 19
  object Label2: TLabel
    Left = 32
    Top = 34
    Width = 39
    Height = 19
    Caption = 'Folio'
  end
  object cap: TLabel
    Left = 25
    Top = 83
    Width = 46
    Height = 19
    Caption = 'Costo'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 130
    Width = 301
    Height = 9
    Shape = bsTopLine
  end
  object folio: TEdit
    Left = 79
    Top = 31
    Width = 149
    Height = 27
    Alignment = taRightJustify
    TabOrder = 0
  end
  object costo: TJvValidateEdit
    Left = 77
    Top = 80
    Width = 149
    Height = 27
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfCurrency
    TabOrder = 1
    ZeroEmpty = True
  end
  object Button1: TButton
    Left = 32
    Top = 140
    Width = 57
    Height = 28
    Caption = 'Si'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 215
    Top = 140
    Width = 59
    Height = 28
    Caption = 'No'
    TabOrder = 3
    OnClick = Button2Click
  end
  object qgticket: TFDQuery
    Connection = dm.conect
    SQL.Strings = (
      
        'update tickets set ticket = :tick , price = :pric where id = :id' +
        's')
    Left = 256
    Top = 80
    ParamData = <
      item
        Name = 'TICK'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PRIC'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDS'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
