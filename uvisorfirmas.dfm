object ffirmsview: Tffirmsview
  Left = 0
  Top = 0
  ActiveControl = buscar
  BorderStyle = bsDialog
  Caption = 'Firmas Registradas'
  ClientHeight = 642
  ClientWidth = 762
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
  object Label1: TLabel
    Left = 8
    Top = 4
    Width = 153
    Height = 19
    Caption = 'Buscar por nombre'
  end
  object Label2: TLabel
    Left = 547
    Top = 4
    Width = 84
    Height = 19
    Caption = 'Tipo firma'
  end
  object Shape1: TShape
    Left = 433
    Top = 328
    Width = 321
    Height = 193
  end
  object firm: TImage
    Left = 437
    Top = 332
    Width = 313
    Height = 184
    Stretch = True
    OnClick = firmClick
  end
  object Label3: TLabel
    Left = 54
    Top = 354
    Width = 25
    Height = 19
    Caption = 'Rut'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object rut: TLabel
    Left = 84
    Top = 354
    Width = 4
    Height = 19
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 8
    Top = 600
    Width = 746
    Height = 13
    Shape = bsTopLine
  end
  object Label4: TLabel
    Left = 49
    Top = 321
    Width = 30
    Height = 19
    Caption = 'Tipo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object typefirm: TLabel
    Left = 88
    Top = 321
    Width = 4
    Height = 19
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label6: TLabel
    Left = 25
    Top = 387
    Width = 54
    Height = 19
    Caption = 'Nombre'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object name: TLabel
    Left = 84
    Top = 387
    Width = 4
    Height = 19
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label8: TLabel
    Left = 15
    Top = 421
    Width = 64
    Height = 19
    Caption = 'Direcci'#243'n'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object address: TLabel
    Left = 84
    Top = 421
    Width = 4
    Height = 19
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 45
    Top = 454
    Width = 34
    Height = 19
    Caption = 'Telef'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object phone: TLabel
    Left = 84
    Top = 454
    Width = 4
    Height = 19
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label7: TLabel
    Left = 39
    Top = 488
    Width = 40
    Height = 19
    Caption = 'Fecha'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object date: TLabel
    Left = 85
    Top = 488
    Width = 4
    Height = 19
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object obser: TLabel
    Left = 10
    Top = 543
    Width = 744
    Height = 46
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label9: TLabel
    Left = 10
    Top = 518
    Width = 99
    Height = 19
    Caption = 'Observaciones'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object visor: TDBGrid
    Left = 8
    Top = 61
    Width = 746
    Height = 254
    Hint = 'Doble click para editar firma'
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnCellClick = visorCellClick
    OnDblClick = visorDblClick
    OnKeyPress = visorKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'RUT'
        Title.Caption = 'Rut'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAMES'
        Title.Caption = 'Nombres'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADDRESS'
        Title.Caption = 'Direcci'#243'n '
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SIGNA'
        Title.Caption = 'Tipo'
        Width = 120
        Visible = True
      end>
  end
  object buscar: TEdit
    Left = 8
    Top = 29
    Width = 397
    Height = 27
    TabOrder = 1
    OnChange = buscarChange
  end
  object cbtype: TComboBox
    Left = 549
    Top = 29
    Width = 205
    Height = 27
    TabOrder = 2
    Text = 'Todos'
    OnChange = cbtypeChange
    Items.Strings = (
      'Todos'
      'Empresas'
      'Personas Naturales')
  end
  object bnuebo: TButton
    Left = 8
    Top = 608
    Width = 80
    Height = 25
    Caption = 'Nuevo'
    TabOrder = 3
    OnClick = bnueboClick
  end
  object beliminar: TButton
    Left = 89
    Top = 608
    Width = 80
    Height = 25
    Caption = 'Eliminar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = beliminarClick
  end
  object Button3: TButton
    Left = 679
    Top = 608
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 5
    OnClick = Button3Click
  end
  object DataSource1: TDataSource
    DataSet = dm.fdqueryfirm
    Left = 456
    Top = 16
  end
end
