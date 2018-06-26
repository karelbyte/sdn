object fdatos: Tfdatos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Administrador de datos'
  ClientHeight = 479
  ClientWidth = 723
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
    Left = 10
    Top = 9
    Width = 38
    Height = 16
    Caption = 'Buscar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 31
    Width = 707
    Height = 353
    Hint = 'Doble click para actualizar'
    ParentCustomHint = False
    DataSource = dsruts
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'RUT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Ruts'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAMES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Nombre'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADDRESS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Direcci'#243'n'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 300
        Visible = True
      end>
  end
  object buscar: TEdit
    Left = 59
    Top = 5
    Width = 238
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = buscarChange
  end
  object nombre: TLabeledEdit
    Left = 136
    Top = 411
    Width = 234
    Height = 24
    EditLabel.Width = 45
    EditLabel.Height = 16
    EditLabel.Caption = 'Nombre'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object direccion: TLabeledEdit
    Left = 375
    Top = 411
    Width = 340
    Height = 24
    EditLabel.Width = 52
    EditLabel.Height = 16
    EditLabel.Caption = 'Direcci'#243'n'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Button1: TButton
    Left = 8
    Top = 448
    Width = 90
    Height = 25
    Caption = 'Actualizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 448
    Width = 113
    Height = 25
    Caption = 'Eliminar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 640
    Top = 448
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button3Click
  end
  object ruts: TLabeledEdit
    Left = 16
    Top = 411
    Width = 114
    Height = 24
    EditLabel.Width = 19
    EditLabel.Height = 16
    EditLabel.Caption = 'Rut'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnEnter = rutsEnter
    OnExit = rutsExit
    OnKeyPress = rutsKeyPress
  end
  object qryruts: TFDQuery
    Connection = dm.conect
    SQL.Strings = (
      'select * from ruts where names CONTAINING :nam ')
    Left = 616
    Top = 56
    ParamData = <
      item
        Name = 'NAM'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object qryrutsRUT: TStringField
      FieldName = 'RUT'
      Origin = 'RUT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryrutsNAMES: TStringField
      FieldName = 'NAMES'
      Origin = '"NAMES"'
      Size = 50
    end
    object qryrutsADDRESS: TStringField
      FieldName = 'ADDRESS'
      Origin = 'ADDRESS'
      Size = 180
    end
  end
  object dsruts: TDataSource
    DataSet = qryruts
    Left = 616
    Top = 120
  end
  object qryupdate: TFDQuery
    Connection = dm.conect
    SQL.Strings = (
      
        'update ruts set rut = :rt , names = :nam, address = :addr where ' +
        'rut = :rts')
    Left = 384
    Top = 424
    ParamData = <
      item
        Name = 'RT'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NAM'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ADDR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'RTS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object qrykill: TFDQuery
    Connection = dm.conect
    SQL.Strings = (
      'delete from ruts where rut = :rt')
    Left = 456
    Top = 432
    ParamData = <
      item
        Name = 'RT'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object qryrutall: TFDQuery
    Connection = dm.conect
    SQL.Strings = (
      'select * from ruts')
    Left = 512
    Top = 112
    object qryrutallRUT: TStringField
      FieldName = 'RUT'
      Origin = 'RUT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryrutallNAMES: TStringField
      FieldName = 'NAMES'
      Origin = '"NAMES"'
      Size = 50
    end
    object qryrutallADDRESS: TStringField
      FieldName = 'ADDRESS'
      Origin = 'ADDRESS'
      Size = 180
    end
  end
end
