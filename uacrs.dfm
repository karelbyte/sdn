inherited facrs: Tfacrs
  Tag = 1
  Caption = 'Autorizaciones'
  ClientHeight = 363
  ExplicitWidth = 560
  ExplicitHeight = 391
  PixelsPerInch = 96
  TextHeight = 19
  inherited Label1: TLabel
    Left = 378
    Top = 11
    ExplicitLeft = 378
    ExplicitTop = 11
  end
  inherited Bevel1: TBevel
    Height = 291
    ExplicitHeight = 291
  end
  inherited bcerrar: TButton
    Top = 334
    TabOrder = 5
    ExplicitTop = 334
  end
  inherited bimprimir: TButton
    Top = 334
    TabOrder = 3
    ExplicitTop = 334
  end
  object GroupBox1: TGroupBox [5]
    Left = 15
    Top = 39
    Width = 521
    Height = 93
    Caption = ' Datos del autorizante '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 10
      Top = 26
      Width = 24
      Height = 19
      Caption = 'Rut'
    end
    object Nombre: TLabel
      Left = 161
      Top = 26
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object Direc: TLabel
      Left = 10
      Top = 61
      Width = 65
      Height = 19
      Caption = 'Direcci'#243'n'
    end
    object rutautorizante: TEdit
      Tag = 1
      Left = 40
      Top = 23
      Width = 103
      Height = 27
      TabOrder = 0
      OnEnter = rutautorizanteEnter
      OnExit = rutautorizanteExit
      OnKeyPress = rutautorizanteKeyPress
    end
    object nameautorizante: TEdit
      Tag = 1
      Left = 224
      Top = 23
      Width = 289
      Height = 27
      TabOrder = 1
    end
    object addressautorizante: TEdit
      Tag = 1
      Left = 80
      Top = 58
      Width = 432
      Height = 27
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox [6]
    Left = 16
    Top = 132
    Width = 521
    Height = 186
    Caption = ' Datos del trasladado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label5: TLabel
      Left = 11
      Top = 27
      Width = 166
      Height = 19
      Caption = 'Nombre del cementerio'
    end
    object Label6: TLabel
      Left = 11
      Top = 81
      Width = 146
      Height = 19
      Caption = 'Nombre del fallecido'
    end
    object erf: TLabel
      Left = 11
      Top = 131
      Width = 132
      Height = 19
      Caption = 'Lugar de sepultura'
    end
    object Label3: TLabel
      Left = 376
      Top = 81
      Width = 134
      Height = 19
      Caption = 'Fecha fallecimiento'
    end
    object cementerio: TEdit
      Left = 11
      Top = 49
      Width = 502
      Height = 27
      TabOrder = 0
    end
    object fallecido: TEdit
      Left = 11
      Top = 100
      Width = 359
      Height = 27
      TabOrder = 1
    end
    object lugarcep: TEdit
      Left = 11
      Top = 150
      Width = 502
      Height = 27
      TabOrder = 3
    end
    object fechafallecido: TDateTimePicker
      Tag = 99
      Left = 376
      Top = 100
      Width = 137
      Height = 27
      Date = 43047.832603645830000000
      Time = 43047.832603645830000000
      TabOrder = 2
    end
  end
  inherited gboleta: TButton
    Top = 334
    TabOrder = 4
    ExplicitTop = 334
  end
  inherited rutfind: TFDQuery
    Left = 400
    Top = 320
  end
  inherited queryNotaria: TFDQuery
    Top = 317
  end
  inherited qrysave: TFDQuery
    Top = 317
  end
end
