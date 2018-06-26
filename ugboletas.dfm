object fgboleta: Tfgboleta
  Left = 0
  Top = 0
  ActiveControl = folio
  BorderStyle = bsDialog
  Caption = 'Generador de boleta'
  ClientHeight = 176
  ClientWidth = 317
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 25
    Top = 8
    Width = 253
    Height = 19
    Caption = 'Se ha generado bien la boleta?'
  end
  object Label2: TLabel
    Left = 32
    Top = 45
    Width = 39
    Height = 19
    Caption = 'Folio'
  end
  object cap: TLabel
    Left = 25
    Top = 90
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
  object Button1: TButton
    Left = 32
    Top = 140
    Width = 57
    Height = 28
    Caption = 'Si'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 215
    Top = 140
    Width = 59
    Height = 28
    Caption = 'No'
    TabOrder = 1
    OnClick = Button2Click
  end
  object folio: TEdit
    Left = 79
    Top = 42
    Width = 149
    Height = 27
    TabOrder = 2
    OnKeyPress = folioKeyPress
  end
  object costo: TJvValidateEdit
    Left = 77
    Top = 87
    Width = 149
    Height = 27
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfCurrency
    TabOrder = 3
    ZeroEmpty = True
  end
  object qgticket: TFDQuery
    Connection = dm.conect
    SQL.Strings = (
      
        'insert into tickets (user_id, ticket, price, typedoc, emit) valu' +
        'es ( :user_id, :ticket, :price, :typedoc, :emit)')
    Left = 256
    Top = 80
    ParamData = <
      item
        Name = 'USER_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TICKET'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PRICE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TYPEDOC'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'EMIT'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
end
