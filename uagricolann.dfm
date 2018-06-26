inherited fagricolann: Tfagricolann
  Tag = 4
  Caption = 'fagricolann'
  ClientHeight = 585
  ExplicitTop = -78
  ExplicitWidth = 560
  ExplicitHeight = 613
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 514
    ExplicitHeight = 514
  end
  inherited bcerrar: TButton
    Top = 554
    TabOrder = 8
    ExplicitTop = 554
  end
  inherited bimprimir: TButton
    Top = 554
    TabOrder = 6
    ExplicitTop = 554
  end
  inherited gboleta: TButton
    Top = 554
    TabOrder = 7
    ExplicitTop = 554
  end
  object GroupBox1: TGroupBox [6]
    Left = 15
    Top = 38
    Width = 521
    Height = 81
    Caption = 'Datos del arrendador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 25
      Width = 22
      Height = 18
      Caption = 'Rut'
    end
    object Nombre: TLabel
      Left = 146
      Top = 25
      Width = 52
      Height = 18
      Caption = 'Nombre'
    end
    object TLabel
      Left = 10
      Top = 53
      Width = 57
      Height = 18
      Caption = 'Direcci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object rutcomodante: TEdit
      Tag = 1
      Left = 37
      Top = 22
      Width = 103
      Height = 26
      TabOrder = 0
      OnEnter = rutcomodanteEnter
      OnExit = rutcomodanteExit
      OnKeyPress = rutcomodanteKeyPress
    end
    object namecomodante: TEdit
      Tag = 1
      Left = 204
      Top = 22
      Width = 309
      Height = 26
      TabOrder = 1
    end
    object addresscomodante: TEdit
      Tag = 1
      Left = 81
      Top = 51
      Width = 432
      Height = 26
      TabOrder = 2
    end
  end
  object GroupBox4: TGroupBox [7]
    Left = 15
    Top = 119
    Width = 521
    Height = 83
    Caption = ' Datos del arrendatario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label6: TLabel
      Left = 8
      Top = 26
      Width = 22
      Height = 18
      Caption = 'Rut'
    end
    object Label7: TLabel
      Left = 146
      Top = 26
      Width = 52
      Height = 18
      Caption = 'Nombre'
    end
    object TLabel
      Left = 10
      Top = 55
      Width = 57
      Height = 18
      Caption = 'Direcci'#243'n'
    end
    object rutcomodatario: TEdit
      Tag = 2
      Left = 37
      Top = 23
      Width = 103
      Height = 26
      TabOrder = 0
      OnEnter = rutcomodatarioEnter
      OnExit = rutcomodatarioExit
      OnKeyPress = rutcomodatarioKeyPress
    end
    object namecomodatario: TEdit
      Tag = 2
      Left = 207
      Top = 23
      Width = 305
      Height = 26
      TabOrder = 1
    end
    object addresscomodatario: TEdit
      Tag = 2
      Left = 80
      Top = 52
      Width = 432
      Height = 26
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox [8]
    Left = 15
    Top = 203
    Width = 521
    Height = 82
    Caption = ' Datos del Testigo 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label5: TLabel
      Left = 8
      Top = 24
      Width = 22
      Height = 18
      Caption = 'Rut'
    end
    object Label8: TLabel
      Left = 146
      Top = 24
      Width = 52
      Height = 18
      Caption = 'Nombre'
    end
    object TLabel
      Left = 10
      Top = 53
      Width = 57
      Height = 18
      Caption = 'Direcci'#243'n'
    end
    object ruttestigo1: TEdit
      Tag = 3
      Left = 37
      Top = 21
      Width = 103
      Height = 26
      TabOrder = 0
      OnEnter = ruttestigo1Enter
      OnExit = ruttestigo1Exit
      OnKeyPress = ruttestigo1KeyPress
    end
    object nametestigo1: TEdit
      Tag = 3
      Left = 208
      Top = 21
      Width = 305
      Height = 26
      TabOrder = 1
    end
    object addresstestigo1: TEdit
      Tag = 3
      Left = 81
      Top = 50
      Width = 432
      Height = 26
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox [9]
    Left = 15
    Top = 286
    Width = 521
    Height = 84
    Caption = ' Datos del Testigo 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label9: TLabel
      Left = 8
      Top = 26
      Width = 22
      Height = 18
      Caption = 'Rut'
    end
    object Label10: TLabel
      Left = 145
      Top = 26
      Width = 52
      Height = 18
      Caption = 'Nombre'
    end
    object TLabel
      Left = 10
      Top = 56
      Width = 57
      Height = 18
      Caption = 'Direcci'#243'n'
    end
    object ruttestigo2: TEdit
      Tag = 4
      Left = 38
      Top = 23
      Width = 102
      Height = 26
      TabOrder = 0
      OnEnter = ruttestigo2Enter
      OnExit = ruttestigo2Exit
      OnKeyPress = ruttestigo2KeyPress
    end
    object nametestigo2: TEdit
      Tag = 4
      Left = 208
      Top = 21
      Width = 305
      Height = 26
      TabOrder = 1
    end
    object addresstestigo2: TEdit
      Tag = 4
      Left = 81
      Top = 53
      Width = 432
      Height = 26
      TabOrder = 2
    end
  end
  object GroupBox5: TGroupBox [10]
    Left = 15
    Top = 370
    Width = 521
    Height = 177
    Caption = 'Datos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object Label11: TLabel
      Left = 8
      Top = 19
      Width = 125
      Height = 18
      Caption = 'Domicilio arrendado'
    end
    object Label12: TLabel
      Left = 327
      Top = 19
      Width = 104
      Height = 18
      Caption = 'Cant. hectareas'
    end
    object Label13: TLabel
      Left = 8
      Top = 67
      Width = 66
      Height = 18
      Caption = 'Hectareas'
    end
    object Label14: TLabel
      Left = 327
      Top = 67
      Width = 19
      Height = 18
      Caption = 'Rol'
    end
    object Label15: TLabel
      Left = 135
      Top = 67
      Width = 100
      Height = 18
      Caption = 'Forma de pago'
    end
    object Label16: TLabel
      Left = 135
      Top = 125
      Width = 32
      Height = 18
      Caption = 'Valor'
    end
    object Label17: TLabel
      Left = 8
      Top = 125
      Width = 57
      Height = 18
      Caption = 'Presunta'
    end
    object Label18: TLabel
      Left = 263
      Top = 124
      Width = 73
      Height = 18
      Caption = 'Fecha inicio'
    end
    object Label19: TLabel
      Left = 391
      Top = 124
      Width = 93
      Height = 18
      Caption = 'Fecha termino'
    end
    object domicilio: TEdit
      Left = 9
      Top = 42
      Width = 312
      Height = 26
      TabOrder = 0
    end
    object valor: TJvValidateEdit
      Left = 134
      Top = 144
      Width = 123
      Height = 26
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfCurrency
      TabOrder = 6
      ZeroEmpty = True
    end
    object canthectareas: TEdit
      Left = 327
      Top = 42
      Width = 186
      Height = 26
      TabOrder = 1
    end
    object hectareas: TEdit
      Left = 9
      Top = 90
      Width = 121
      Height = 26
      TabOrder = 2
    end
    object fpago: TEdit
      Tag = 1
      Left = 134
      Top = 89
      Width = 187
      Height = 26
      TabOrder = 3
    end
    object rol: TEdit
      Left = 327
      Top = 89
      Width = 186
      Height = 26
      TabOrder = 4
    end
    object presunta: TEdit
      Left = 8
      Top = 144
      Width = 121
      Height = 26
      TabOrder = 5
    end
    object finicio: TDateTimePicker
      Tag = 99
      Left = 263
      Top = 143
      Width = 122
      Height = 27
      Date = 43047.832603645830000000
      Time = 43047.832603645830000000
      TabOrder = 7
    end
    object fechatermino: TDateTimePicker
      Tag = 99
      Left = 391
      Top = 143
      Width = 122
      Height = 27
      Date = 43047.832603645830000000
      Time = 43047.832603645830000000
      TabOrder = 8
    end
  end
  inherited rutfind: TFDQuery
    Top = 553
  end
  inherited queryNotaria: TFDQuery
    Top = 553
  end
  inherited qrysave: TFDQuery
    Top = 553
  end
end
