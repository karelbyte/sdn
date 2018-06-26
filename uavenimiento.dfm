inherited favenimiento: Tfavenimiento
  Tag = 2
  Caption = 'favenimiento'
  ClientHeight = 571
  ExplicitTop = -142
  ExplicitHeight = 599
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 495
    ExplicitHeight = 495
  end
  inherited bcerrar: TButton
    Top = 538
    TabOrder = 6
    ExplicitTop = 538
  end
  inherited bimprimir: TButton
    Top = 538
    TabOrder = 4
    ExplicitTop = 538
  end
  inherited gboleta: TButton
    Top = 538
    TabOrder = 5
    ExplicitTop = 538
  end
  object GroupBox1: TGroupBox [6]
    Left = 15
    Top = 48
    Width = 521
    Height = 119
    Caption = ' Datos del afectado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
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
      Left = 21
      Top = 91
      Width = 52
      Height = 19
      Caption = 'Patente'
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
    object patenteafectado: TEdit
      Left = 80
      Top = 88
      Width = 217
      Height = 27
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox [7]
    Left = 15
    Top = 168
    Width = 521
    Height = 121
    Caption = ' Datos del deudor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
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
    object Label6: TLabel
      Left = 22
      Top = 92
      Width = 52
      Height = 19
      Caption = 'Patente'
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
    object patentedeudor: TEdit
      Left = 81
      Top = 89
      Width = 217
      Height = 27
      TabOrder = 3
    end
  end
  object GroupBox3: TGroupBox [8]
    Left = 17
    Top = 289
    Width = 521
    Height = 237
    Caption = 'Datos de acuerdo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label7: TLabel
      Left = 255
      Top = 131
      Width = 120
      Height = 19
      Caption = 'Comuna juzgado'
    end
    object Label8: TLabel
      Left = 10
      Top = 185
      Width = 64
      Height = 19
      Caption = 'No causa'
    end
    object Label9: TLabel
      Left = 10
      Top = 131
      Width = 107
      Height = 19
      Caption = 'Forma de pago'
    end
    object Label10: TLabel
      Left = 10
      Top = 76
      Width = 37
      Height = 19
      Caption = 'Valor'
    end
    object Label11: TLabel
      Left = 167
      Top = 76
      Width = 102
      Height = 19
      Caption = 'Valor en letras'
    end
    object Label12: TLabel
      Left = 10
      Top = 21
      Width = 40
      Height = 19
      Caption = 'Fecha'
    end
    object Label13: TLabel
      Left = 136
      Top = 21
      Width = 34
      Height = 19
      Caption = 'Hora'
    end
    object Label14: TLabel
      Left = 266
      Top = 21
      Width = 117
      Height = 19
      Caption = 'Comuna colision'
    end
    object comunajuz: TEdit
      Left = 255
      Top = 156
      Width = 256
      Height = 27
      TabOrder = 6
    end
    object causa: TEdit
      Left = 10
      Top = 205
      Width = 231
      Height = 27
      TabOrder = 7
    end
    object fpago: TEdit
      Left = 10
      Top = 156
      Width = 240
      Height = 27
      TabOrder = 5
    end
    object valor: TEdit
      Left = 10
      Top = 97
      Width = 151
      Height = 27
      TabOrder = 3
    end
    object letras: TEdit
      Left = 167
      Top = 97
      Width = 344
      Height = 27
      TabOrder = 4
    end
    object fdatos: TDateTimePicker
      Tag = 99
      Left = 10
      Top = 41
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
      TabOrder = 0
    end
    object DateTimePicker1: TDateTimePicker
      Tag = 99
      Left = 138
      Top = 41
      Width = 122
      Height = 27
      Date = 43005.828877303240000000
      Time = 43005.828877303240000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 1
    end
    object comunacoli: TEdit
      Left = 266
      Top = 41
      Width = 244
      Height = 27
      TabOrder = 2
    end
  end
  inherited rutfind: TFDQuery
    Top = 537
  end
  inherited queryNotaria: TFDQuery
    Top = 537
  end
  inherited qrysave: TFDQuery
    Top = 537
  end
end
