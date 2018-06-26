object fsaveplantilla: Tfsaveplantilla
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Guardar plantilla'
  ClientHeight = 94
  ClientWidth = 362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 74
    Height = 13
    Caption = 'Nombre del doc'
  end
  object docname: TEdit
    Left = 8
    Top = 32
    Width = 345
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Cargar doc'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 89
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Guardar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 278
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 3
    OnClick = Button3Click
  end
  object open: TOpenDialog
    Filter = '*.doc|*.doc|*.docx|*.docx|*.xls|*.xls|*.xlsx|*.xlsx'
    Left = 208
    Top = 64
  end
  object qry: TFDQuery
    Connection = dm.conect
    SQL.Strings = (
      'insert into docword (name, doc) values (:name, :doc)')
    Left = 216
    Top = 8
    ParamData = <
      item
        Name = 'NAME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DOC'
        DataType = ftBlob
        ParamType = ptInput
        Value = Null
      end>
  end
  object update: TFDQuery
    Connection = dm.conect
    SQL.Strings = (
      'update docword set doc = :doc where id = :ids')
    Left = 264
    Top = 8
    ParamData = <
      item
        Name = 'DOC'
        DataType = ftBlob
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
