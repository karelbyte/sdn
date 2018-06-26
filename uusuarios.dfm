object fusurios: Tfusurios
  Left = 0
  Top = 0
  ActiveControl = rutedit
  BorderStyle = bsDialog
  Caption = 'Usuarios del sistema'
  ClientHeight = 387
  ClientWidth = 511
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Bevel1: TBevel
    Left = 8
    Top = 200
    Width = 497
    Height = 145
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 16
    Top = 281
    Width = 156
    Height = 19
    Caption = 'Nombre y apellidos'
  end
  object Label2: TLabel
    Left = 352
    Top = 216
    Width = 35
    Height = 19
    Caption = 'Nick'
  end
  object Label3: TLabel
    Left = 352
    Top = 281
    Width = 45
    Height = 19
    Caption = 'Clave'
  end
  object Label4: TLabel
    Left = 16
    Top = 216
    Width = 27
    Height = 19
    Caption = 'Rol'
  end
  object Label5: TLabel
    Left = 208
    Top = 216
    Width = 29
    Height = 19
    Caption = 'Rut'
  end
  object grid: TDBGrid
    Left = 8
    Top = 8
    Width = 497
    Height = 186
    Hint = 'Doble click para editar usuario'
    DataSource = DataSource1
    DragCursor = crArrow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = gridDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'RUT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Rut'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NICK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Nick'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAMES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Nombre y apellidos'
        Width = 240
        Visible = True
      end>
  end
  object names: TEdit
    Left = 16
    Top = 306
    Width = 312
    Height = 27
    CharCase = ecUpperCase
    TabOrder = 4
  end
  object nick: TEdit
    Left = 352
    Top = 241
    Width = 145
    Height = 27
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object password: TEdit
    Left = 352
    Top = 306
    Width = 145
    Height = 27
    CharCase = ecUpperCase
    PasswordChar = '*'
    TabOrder = 5
  end
  object roles: TComboBox
    Left = 16
    Top = 241
    Width = 161
    Height = 27
    ItemIndex = 0
    TabOrder = 1
    Text = 'Administador'
    Items.Strings = (
      'Administador'
      'Operador')
  end
  object nuevo: TButton
    Left = 8
    Top = 351
    Width = 79
    Height = 28
    Caption = 'Nuevo'
    TabOrder = 6
    OnClick = nuevoClick
  end
  object save: TButton
    Left = 89
    Top = 351
    Width = 79
    Height = 28
    Caption = 'Guardar'
    TabOrder = 7
    OnClick = saveClick
  end
  object Cerrar: TButton
    Left = 430
    Top = 351
    Width = 75
    Height = 28
    Caption = 'Cerrar'
    TabOrder = 9
    OnClick = CerrarClick
  end
  object rutmask: TMaskEdit
    Left = 80
    Top = 185
    Width = 116
    Height = 27
    EditMask = '00\.000\.000->A;'
    MaxLength = 12
    TabOrder = 2
    Text = '  .   .   - '
    Visible = False
    OnChange = rutmaskChange
    OnKeyPress = rutmaskKeyPress
  end
  object eliminar: TButton
    Left = 174
    Top = 351
    Width = 79
    Height = 28
    Caption = 'Eliminar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = eliminarClick
  end
  object rutedit: TEdit
    Left = 208
    Top = 241
    Width = 121
    Height = 27
    Alignment = taRightJustify
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnEnter = ruteditEnter
    OnExit = ruteditExit
    OnKeyPress = ruteditKeyPress
  end
  object DataSource1: TDataSource
    DataSet = dm.fdqueryAllUser
    Left = 376
    Top = 104
  end
end
