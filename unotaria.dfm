object fnotaria: Tfnotaria
  Left = 0
  Top = 0
  ActiveControl = notary
  BorderStyle = bsDialog
  Caption = 'Datos de la notaria'
  ClientHeight = 400
  ClientWidth = 503
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
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 489
    Height = 345
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 61
    Height = 19
    Caption = 'Notario'
  end
  object Label2: TLabel
    Left = 16
    Top = 85
    Width = 48
    Height = 19
    Caption = 'Titulo'
  end
  object Label3: TLabel
    Left = 16
    Top = 144
    Width = 75
    Height = 19
    Caption = 'Direcci'#243'n'
  end
  object Label4: TLabel
    Left = 16
    Top = 208
    Width = 72
    Height = 19
    Caption = 'Telefono'
  end
  object Label5: TLabel
    Left = 280
    Top = 208
    Width = 66
    Height = 19
    Caption = 'Comuna'
  end
  object Label6: TLabel
    Left = 16
    Top = 280
    Width = 34
    Height = 19
    Caption = 'Pais'
  end
  object Label7: TLabel
    Left = 168
    Top = 280
    Width = 243
    Height = 19
    Caption = 'Directorio documentos finales'
  end
  object Shape1: TShape
    Left = 392
    Top = 24
    Width = 89
    Height = 79
    Hint = 'Logo'
    ParentShowHint = False
    ShowHint = True
  end
  object logo: TImage
    Left = 395
    Top = 27
    Width = 82
    Height = 73
    Hint = 'Click para cargar el logo '
    CustomHint = dm.BalloonHint1
    ParentShowHint = False
    ShowHint = True
    Stretch = True
    OnClick = logoClick
  end
  object notary: TEdit
    Left = 16
    Top = 48
    Width = 353
    Height = 27
    TabOrder = 0
  end
  object title: TEdit
    Left = 16
    Top = 109
    Width = 465
    Height = 27
    TabOrder = 1
  end
  object address: TEdit
    Left = 16
    Top = 168
    Width = 465
    Height = 27
    TabOrder = 2
  end
  object phone: TEdit
    Left = 16
    Top = 232
    Width = 233
    Height = 27
    TabOrder = 3
    OnKeyPress = phoneKeyPress
  end
  object comune: TEdit
    Left = 280
    Top = 232
    Width = 201
    Height = 27
    TabOrder = 4
  end
  object country: TEdit
    Left = 16
    Top = 304
    Width = 121
    Height = 27
    TabOrder = 5
  end
  object docdirectory: TEdit
    Left = 168
    Top = 304
    Width = 274
    Height = 27
    TabOrder = 6
  end
  object Button1: TButton
    Left = 448
    Top = 304
    Width = 33
    Height = 27
    Caption = '...'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 364
    Width = 83
    Height = 26
    Caption = 'Guardar'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 408
    Top = 364
    Width = 87
    Height = 26
    Caption = 'Cerrar'
    TabOrder = 9
    OnClick = Button3Click
  end
  object openlogo: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp|Jpg/jpeg(*.jpg, *.jpeg)|*.jpg;*.jpeg'
    Left = 344
    Top = 136
  end
  object opendir: TJvBrowseForFolderDialog
    Left = 312
    Top = 352
  end
end
