inherited frecidencia: Tfrecidencia
  Tag = 3
  Caption = 'Recidencia'
  ClientHeight = 409
  ExplicitTop = -40
  ExplicitHeight = 437
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 336
    ExplicitHeight = 336
  end
  inherited bcerrar: TButton
    Top = 376
    TabOrder = 6
    ExplicitTop = 376
  end
  inherited bimprimir: TButton
    Top = 376
    TabOrder = 4
    ExplicitTop = 376
  end
  inherited gboleta: TButton
    Top = 376
    TabOrder = 5
    ExplicitTop = 376
  end
  object GroupBox1: TGroupBox [6]
    Left = 15
    Top = 48
    Width = 521
    Height = 105
    Caption = ' Datos del Testigo 1'
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
      Left = 10
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
  object GroupBox2: TGroupBox [7]
    Left = 15
    Top = 155
    Width = 521
    Height = 105
    Caption = ' Datos del Testigo 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label3: TLabel
      Left = 8
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
    object TLabel
      Left = 10
      Top = 69
      Width = 65
      Height = 19
      Caption = 'Direcci'#243'n'
    end
    object rutautorizado: TEdit
      Tag = 2
      Left = 38
      Top = 33
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
    object addressautorizado: TEdit
      Tag = 2
      Left = 80
      Top = 66
      Width = 432
      Height = 27
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox [8]
    Left = 15
    Top = 260
    Width = 521
    Height = 105
    Caption = ' Datos del Requiriente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label5: TLabel
      Left = 8
      Top = 32
      Width = 24
      Height = 19
      Caption = 'Rut'
    end
    object Label6: TLabel
      Left = 146
      Top = 32
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object TLabel
      Left = 10
      Top = 69
      Width = 65
      Height = 19
      Caption = 'Direcci'#243'n'
    end
    object rutrequitiente: TEdit
      Tag = 3
      Left = 37
      Top = 29
      Width = 103
      Height = 27
      TabOrder = 0
      OnEnter = rutrequitienteEnter
      OnExit = rutrequitienteExit
      OnKeyPress = rutrequitienteKeyPress
    end
    object namerequiriente: TEdit
      Tag = 3
      Left = 208
      Top = 29
      Width = 305
      Height = 27
      TabOrder = 1
    end
    object addressrequiriente: TEdit
      Tag = 3
      Left = 80
      Top = 66
      Width = 432
      Height = 27
      TabOrder = 2
    end
  end
  inherited rutfind: TFDQuery
    Top = 375
  end
  inherited queryNotaria: TFDQuery
    Top = 375
  end
  inherited qrysave: TFDQuery
    Top = 375
  end
end
