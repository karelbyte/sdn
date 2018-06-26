inherited fhpna: Tfhpna
  Tag = 3
  Caption = 'fhpna'
  ClientHeight = 546
  ExplicitTop = -39
  ExplicitWidth = 560
  ExplicitHeight = 574
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 473
    ExplicitHeight = 473
  end
  inherited bcerrar: TButton
    Top = 513
    TabOrder = 7
    ExplicitTop = 513
  end
  inherited bimprimir: TButton
    Top = 513
    TabOrder = 5
    ExplicitTop = 513
  end
  inherited gboleta: TButton
    Top = 513
    TabOrder = 6
    ExplicitTop = 513
  end
  object GroupBox2: TGroupBox [6]
    Left = 16
    Top = 38
    Width = 521
    Height = 83
    Caption = 'Datos del arrendador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TLabel
      Left = 9
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
    object addressarrendador: TEdit
      Tag = 1
      Left = 72
      Top = 50
      Width = 441
      Height = 26
      TabOrder = 2
    end
    object rutarrendador: TEdit
      Tag = 1
      Left = 37
      Top = 21
      Width = 103
      Height = 26
      TabOrder = 0
      OnEnter = rutarrendadorEnter
      OnExit = rutarrendadorExit
      OnKeyPress = rutarrendadorKeyPress
    end
    object namearrendador: TEdit
      Tag = 1
      Left = 208
      Top = 21
      Width = 305
      Height = 26
      TabOrder = 1
    end
  end
  object GroupBox4: TGroupBox [7]
    Left = 16
    Top = 121
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
    object TLabel
      Left = 10
      Top = 54
      Width = 57
      Height = 18
      Caption = 'Direcci'#243'n'
    end
    object Label2: TLabel
      Left = 8
      Top = 25
      Width = 22
      Height = 18
      Caption = 'Rut'
    end
    object Label3: TLabel
      Left = 146
      Top = 25
      Width = 52
      Height = 18
      Caption = 'Nombre'
    end
    object addressarrendatario: TEdit
      Tag = 2
      Left = 73
      Top = 52
      Width = 440
      Height = 26
      TabOrder = 0
    end
    object rutarrendatario: TEdit
      Tag = 2
      Left = 37
      Top = 22
      Width = 103
      Height = 26
      TabOrder = 1
      OnEnter = rutarrendatarioEnter
      OnExit = rutarrendatarioExit
      OnKeyPress = rutarrendatarioKeyPress
    end
    object namearrendatario: TEdit
      Tag = 2
      Left = 208
      Top = 22
      Width = 305
      Height = 26
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox [8]
    Left = 15
    Top = 204
    Width = 521
    Height = 82
    Caption = 'Codeudor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label6: TLabel
      Left = 8
      Top = 24
      Width = 22
      Height = 18
      Caption = 'Rut'
    end
    object Label7: TLabel
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
  object GroupBox5: TGroupBox [9]
    Left = 16
    Top = 286
    Width = 521
    Height = 218
    Caption = 'Datos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label11: TLabel
      Left = 8
      Top = 19
      Width = 216
      Height = 18
      Caption = 'Domicilio de prodiedad a arrendar'
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
      Top = 71
      Width = 129
      Height = 18
      Caption = 'Uso de la propiedad'
    end
    object Label14: TLabel
      Left = 448
      Top = 71
      Width = 27
      Height = 18
      Caption = 'Dias'
    end
    object Label15: TLabel
      Left = 303
      Top = 71
      Width = 100
      Height = 18
      Caption = 'Meses reajuste'
    end
    object Label16: TLabel
      Left = 10
      Top = 118
      Width = 32
      Height = 18
      Caption = 'Valor'
    end
    object Label17: TLabel
      Left = 9
      Top = 167
      Width = 184
      Height = 18
      Caption = 'Estado en que se encuentra'
    end
    object Label18: TLabel
      Left = 263
      Top = 120
      Width = 73
      Height = 18
      Caption = 'Fecha inicio'
    end
    object Label19: TLabel
      Left = 391
      Top = 120
      Width = 93
      Height = 18
      Caption = 'Fecha termino'
    end
    object Label9: TLabel
      Left = 351
      Top = 167
      Width = 89
      Height = 18
      Caption = 'Valor garantia'
    end
    object domicilio: TEdit
      Left = 9
      Top = 42
      Width = 312
      Height = 26
      TabOrder = 0
    end
    object valor: TJvValidateEdit
      Left = 9
      Top = 140
      Width = 247
      Height = 26
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfCurrency
      TabOrder = 5
      ZeroEmpty = True
    end
    object prorroga: TEdit
      Left = 327
      Top = 42
      Width = 186
      Height = 26
      TabOrder = 1
    end
    object uso: TEdit
      Left = 9
      Top = 90
      Width = 288
      Height = 26
      TabOrder = 2
    end
    object reajuste: TEdit
      Tag = 1
      Left = 303
      Top = 90
      Width = 139
      Height = 26
      TabOrder = 3
    end
    object dias: TEdit
      Left = 448
      Top = 89
      Width = 65
      Height = 26
      TabOrder = 4
      OnKeyPress = diasKeyPress
    end
    object estado: TEdit
      Left = 9
      Top = 186
      Width = 336
      Height = 26
      TabOrder = 8
    end
    object finicio: TDateTimePicker
      Tag = 99
      Left = 263
      Top = 139
      Width = 122
      Height = 27
      Date = 43047.832603645830000000
      Time = 43047.832603645830000000
      TabOrder = 6
    end
    object fechatermino: TDateTimePicker
      Tag = 99
      Left = 391
      Top = 139
      Width = 122
      Height = 27
      Date = 43047.832603645830000000
      Time = 43047.832603645830000000
      TabOrder = 7
    end
    object valorgarantia: TJvValidateEdit
      Left = 351
      Top = 186
      Width = 161
      Height = 26
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfCurrency
      TabOrder = 9
      ZeroEmpty = True
    end
  end
  inherited rutfind: TFDQuery
    Top = 512
  end
  inherited queryNotaria: TFDQuery
    Top = 512
  end
  inherited qrysave: TFDQuery
    Top = 512
  end
end
