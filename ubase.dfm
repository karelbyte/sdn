object fbase: Tfbase
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 485
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDefault
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 382
    Top = 12
    Width = 40
    Height = 19
    Caption = 'Fecha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 8
    Top = 37
    Width = 538
    Height = 406
    Shape = bsFrame
  end
  object fecha: TDateTimePicker
    Tag = 99
    Left = 424
    Top = 8
    Width = 122
    Height = 27
    Date = 43005.828877303240000000
    Time = 43005.828877303240000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object bcerrar: TButton
    Left = 471
    Top = 449
    Width = 75
    Height = 28
    Caption = 'Cerrar'
    TabOrder = 1
    OnClick = bcerrarClick
  end
  object bimprimir: TButton
    Left = 8
    Top = 449
    Width = 89
    Height = 28
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = bimprimirClick
  end
  object gboleta: TButton
    Left = 103
    Top = 449
    Width = 138
    Height = 28
    Caption = 'Generar Boleta'
    TabOrder = 3
    OnClick = gboletaClick
  end
  object rutfind: TFDQuery
    Connection = dm.conect
    SQL.Strings = (
      'select names, address from ruts where rut = :rut')
    Left = 432
    Top = 448
    ParamData = <
      item
        Name = 'RUT'
        DataType = ftString
        ParamType = ptInput
        Value = '23.432.346-6'
      end>
    object rutfindNAMES: TStringField
      FieldName = 'NAMES'
      Origin = '"NAMES"'
      Size = 100
    end
    object rutfindADDRESS: TStringField
      FieldName = 'ADDRESS'
      Origin = 'ADDRESS'
      Size = 200
    end
  end
  object queryNotaria: TFDQuery
    Connection = dm.conect
    SQL.Strings = (
      'select notary as notaria, TITLE,  ADDRESS, PHONE ,'
      '  COMUNE, COUNTRY, LOGO from notarys ')
    Left = 368
    Top = 432
    object queryNotariaNOTARIA: TStringField
      FieldName = 'NOTARIA'
      Origin = 'NOTARY'
      Size = 100
    end
    object queryNotariaTITLE: TStringField
      FieldName = 'TITLE'
      Origin = 'TITLE'
      Size = 100
    end
    object queryNotariaADDRESS: TStringField
      FieldName = 'ADDRESS'
      Origin = 'ADDRESS'
      Size = 100
    end
    object queryNotariaPHONE: TStringField
      FieldName = 'PHONE'
      Origin = 'PHONE'
    end
    object queryNotariaCOMUNE: TStringField
      FieldName = 'COMUNE'
      Origin = 'COMUNE'
    end
    object queryNotariaCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Origin = 'COUNTRY'
    end
    object queryNotariaLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
  end
  object qrysave: TFDQuery
    Connection = dm.conect
    SQL.Strings = (
      'execute procedure ADDUPDATERUT(:rut, :names, :address)')
    Left = 288
    Top = 432
    ParamData = <
      item
        Name = 'RUT'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NAMES'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ADDRESS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
end
