object ffirmas: Tffirmas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Registro de firmas'
  ClientHeight = 441
  ClientWidth = 673
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
  object Label3: TLabel
    Left = 8
    Top = 144
    Width = 75
    Height = 19
    Caption = 'Direcci'#243'n'
  end
  object Label4: TLabel
    Left = 8
    Top = 208
    Width = 72
    Height = 19
    Caption = 'Telefono'
  end
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 84
    Height = 19
    Caption = 'Tipo firma'
  end
  object Label5: TLabel
    Left = 208
    Top = 16
    Width = 29
    Height = 19
    Caption = 'Rut'
  end
  object Label2: TLabel
    Left = 8
    Top = 81
    Width = 156
    Height = 19
    Caption = 'Nombre y apellidos'
  end
  object Observaciones: TLabel
    Left = 8
    Top = 271
    Width = 117
    Height = 19
    Caption = 'Observaciones'
  end
  object Shape1: TShape
    Left = 344
    Top = 39
    Width = 321
    Height = 193
  end
  object firm: TImage
    Left = 350
    Top = 43
    Width = 308
    Height = 184
    Stretch = True
    OnClick = firmClick
  end
  object Bevel1: TBevel
    Left = 9
    Top = 392
    Width = 658
    Height = 17
    Shape = bsTopLine
  end
  object Label6: TLabel
    Left = 188
    Top = 208
    Width = 47
    Height = 19
    Caption = 'Fecha'
  end
  object address: TEdit
    Left = 8
    Top = 168
    Width = 321
    Height = 27
    TabOrder = 3
  end
  object rutmask: TMaskEdit
    Left = 432
    Top = 8
    Width = 116
    Height = 27
    EditMask = '00\.000\.000->A;'
    MaxLength = 12
    TabOrder = 1
    Text = '  .   .   - '
    Visible = False
    OnChange = rutmaskChange
    OnKeyPress = rutmaskKeyPress
  end
  object names: TEdit
    Left = 8
    Top = 106
    Width = 321
    Height = 27
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object phone: TEdit
    Left = 8
    Top = 232
    Width = 160
    Height = 27
    Alignment = taRightJustify
    TabOrder = 4
    OnKeyPress = phoneKeyPress
  end
  object bsave: TButton
    Left = 8
    Top = 408
    Width = 83
    Height = 25
    Caption = 'Guardar'
    TabOrder = 5
    OnClick = bsaveClick
  end
  object Button2: TButton
    Left = 585
    Top = 408
    Width = 83
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 6
    OnClick = Button2Click
  end
  object cbtype: TComboBox
    Left = 8
    Top = 41
    Width = 194
    Height = 27
    ItemIndex = 0
    TabOrder = 0
    Text = 'Empresas'
    Items.Strings = (
      'Empresas'
      'Personas Naturales')
  end
  object obser: TRichEdit
    Left = 8
    Top = 296
    Width = 657
    Height = 89
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Zoom = 100
  end
  object datefirm: TDateTimePicker
    Tag = 99
    Left = 187
    Top = 232
    Width = 142
    Height = 27
    Date = 42987.787904942130000000
    Time = 42987.787904942130000000
    TabOrder = 8
  end
  object rutedit: TEdit
    Left = 208
    Top = 41
    Width = 121
    Height = 27
    Alignment = taRightJustify
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnEnter = ruteditEnter
    OnExit = ruteditExit
    OnKeyPress = ruteditKeyPress
  end
  object Button1: TButton
    Left = 590
    Top = 238
    Width = 75
    Height = 25
    Caption = 'Limpiar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = Button1Click
  end
  object openlogo: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp|Jpj/Jpeg(*.jpg, *.jpeg)|*.jpg;*.jpeg'
    Left = 344
    Top = 136
  end
end
