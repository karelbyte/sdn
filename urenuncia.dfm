inherited frenuncia: Tfrenuncia
  Tag = 2
  Caption = 'frenuncia'
  ClientHeight = 295
  ExplicitHeight = 323
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 220
    ExplicitHeight = 220
  end
  inherited bcerrar: TButton
    Top = 263
    TabOrder = 5
    ExplicitTop = 263
  end
  inherited bimprimir: TButton
    Top = 263
    TabOrder = 3
    ExplicitTop = 263
  end
  inherited gboleta: TButton
    Top = 263
    TabOrder = 4
    ExplicitTop = 263
  end
  object GroupBox2: TGroupBox [6]
    Left = 15
    Top = 39
    Width = 521
    Height = 88
    Caption = ' Datos del empresa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label3: TLabel
      Left = 9
      Top = 26
      Width = 24
      Height = 19
      Caption = 'Rut'
    end
    object Label4: TLabel
      Left = 145
      Top = 26
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object TLabel
      Left = 9
      Top = 58
      Width = 65
      Height = 19
      Caption = 'Direcci'#243'n'
    end
    object rutautorizado: TEdit
      Tag = 2
      Left = 38
      Top = 23
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
      Top = 23
      Width = 305
      Height = 27
      TabOrder = 1
    end
    object addressautorizado: TEdit
      Tag = 2
      Left = 81
      Top = 55
      Width = 432
      Height = 27
      TabOrder = 2
    end
  end
  object GroupBox1: TGroupBox [7]
    Left = 15
    Top = 126
    Width = 521
    Height = 125
    Caption = ' Datos del renunciante'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 8
      Top = 25
      Width = 24
      Height = 19
      Caption = 'Rut'
    end
    object Nombre: TLabel
      Left = 146
      Top = 25
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object TLabel
      Left = 8
      Top = 57
      Width = 65
      Height = 19
      Caption = 'Direcci'#243'n'
    end
    object Label5: TLabel
      Left = 8
      Top = 96
      Width = 82
      Height = 19
      Caption = 'F. Renuncia'
    end
    object rutautorizante: TEdit
      Tag = 1
      Left = 37
      Top = 22
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
      Top = 22
      Width = 305
      Height = 27
      TabOrder = 1
    end
    object addressautorizante: TEdit
      Tag = 1
      Left = 80
      Top = 54
      Width = 432
      Height = 27
      TabOrder = 2
    end
    object frenuncia: TDateTimePicker
      Tag = 99
      Left = 96
      Top = 92
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
      TabOrder = 3
    end
  end
  inherited rutfind: TFDQuery
    Top = 262
  end
  inherited queryNotaria: TFDQuery
    Top = 262
  end
  inherited qrysave: TFDQuery
    Top = 262
  end
end
