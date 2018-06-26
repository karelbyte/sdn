inherited fadp: Tfadp
  Tag = 2
  Caption = 'Autoriza Domicilio Postal'
  ClientHeight = 427
  ExplicitWidth = 560
  ExplicitHeight = 455
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 351
    ExplicitHeight = 351
  end
  inherited bcerrar: TButton
    Top = 394
    TabOrder = 6
    ExplicitTop = 394
  end
  inherited bimprimir: TButton
    Top = 394
    TabOrder = 4
    ExplicitTop = 394
  end
  object GroupBox1: TGroupBox [5]
    Left = 15
    Top = 48
    Width = 521
    Height = 105
    Caption = ' Datos del autorizante '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 24
      Height = 19
      Caption = 'Rut'
    end
    object Nombre: TLabel
      Left = 146
      Top = 32
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object TLabel
      Left = 8
      Top = 69
      Width = 65
      Height = 19
      Caption = 'Direcci'#243'n'
    end
    object rutautorizante: TEdit
      Tag = 1
      Left = 37
      Top = 29
      Width = 103
      Height = 27
      TabOrder = 0
      OnEnter = rutautorizanteEnter
      OnExit = rutautorizanteExit
      OnKeyPress = rutautorizanteKeyPress
    end
    object nameautorizante: TEdit
      Tag = 1
      Left = 208
      Top = 29
      Width = 305
      Height = 27
      TabOrder = 1
    end
    object addressautorizante: TEdit
      Tag = 1
      Left = 80
      Top = 66
      Width = 432
      Height = 27
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox [6]
    Left = 15
    Top = 155
    Width = 521
    Height = 78
    Caption = ' Datos del autorizado '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label3: TLabel
      Left = 9
      Top = 32
      Width = 24
      Height = 19
      Caption = 'Rut'
    end
    object Label4: TLabel
      Left = 145
      Top = 32
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object rutautorizado: TEdit
      Tag = 2
      Left = 38
      Top = 29
      Width = 102
      Height = 27
      TabOrder = 0
      OnEnter = rutautorizadoEnter
      OnExit = rutautorizadoExit
      OnKeyPress = rutautorizadoKeyPress
    end
    object nameautorizado: TEdit
      Tag = 2
      Left = 208
      Top = 29
      Width = 305
      Height = 27
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox [7]
    Left = 15
    Top = 239
    Width = 521
    Height = 138
    Caption = ' Datos de propiedad  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label6: TLabel
      Left = 10
      Top = 24
      Width = 65
      Height = 19
      Caption = 'Direcci'#243'n'
    end
    object TLabel
      Left = 10
      Top = 82
      Width = 64
      Height = 19
      Caption = 'Comuna '
    end
    object Label5: TLabel
      Left = 304
      Top = 82
      Width = 23
      Height = 19
      Caption = 'Rol'
    end
    object address: TEdit
      Left = 10
      Top = 49
      Width = 503
      Height = 27
      TabOrder = 0
    end
    object comuna: TEdit
      Left = 10
      Top = 103
      Width = 288
      Height = 27
      TabOrder = 1
    end
    object rol: TEdit
      Left = 304
      Top = 103
      Width = 208
      Height = 27
      TabOrder = 2
    end
  end
  inherited gboleta: TButton
    Top = 394
    TabOrder = 5
    ExplicitTop = 394
  end
  inherited rutfind: TFDQuery
    Left = 376
    Top = 392
  end
  inherited queryNotaria: TFDQuery
    Left = 328
    Top = 384
  end
  inherited qrysave: TFDQuery
    Left = 416
    Top = 392
  end
end
