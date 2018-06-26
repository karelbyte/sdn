inherited fajj: Tfajj
  Tag = 3
  Caption = 'Auto normal Jur'#237'dica a Jur'#237'dica'
  ClientHeight = 676
  ExplicitTop = -247
  ExplicitWidth = 560
  ExplicitHeight = 704
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 602
    ExplicitHeight = 602
  end
  object Label5: TLabel [2]
    Left = 8
    Top = 12
    Width = 89
    Height = 18
    Caption = 'N* Repertorio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited fecha: TDateTimePicker
    TabOrder = 1
  end
  inherited bcerrar: TButton
    Top = 642
    TabOrder = 9
    ExplicitTop = 642
  end
  inherited bimprimir: TButton
    Top = 642
    TabOrder = 7
    ExplicitTop = 642
  end
  inherited gboleta: TButton
    Top = 642
    TabOrder = 8
    ExplicitTop = 642
  end
  object GroupBox1: TGroupBox [7]
    Left = 15
    Top = 38
    Width = 521
    Height = 86
    Caption = ' Datos del vendedor'
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
      Left = 9
      Top = 55
      Width = 65
      Height = 19
      Caption = 'Direcci'#243'n'
    end
    object rutcomodante: TEdit
      Tag = 1
      Left = 37
      Top = 22
      Width = 103
      Height = 27
      TabOrder = 0
      OnEnter = rutcomodanteEnter
      OnExit = rutcomodanteExit
      OnKeyPress = rutcomodanteKeyPress
    end
    object namecomodante: TEdit
      Tag = 1
      Left = 208
      Top = 22
      Width = 305
      Height = 27
      TabOrder = 1
    end
    object addresscomodante: TEdit
      Tag = 1
      Left = 80
      Top = 53
      Width = 432
      Height = 27
      TabOrder = 2
    end
  end
  object GroupBox4: TGroupBox [8]
    Left = 15
    Top = 124
    Width = 521
    Height = 87
    Caption = ' Datos del comprador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label6: TLabel
      Left = 8
      Top = 26
      Width = 24
      Height = 19
      Caption = 'Rut'
    end
    object Label7: TLabel
      Left = 146
      Top = 26
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object TLabel
      Left = 10
      Top = 58
      Width = 65
      Height = 19
      Caption = 'Direcci'#243'n'
    end
    object rutcomodatario: TEdit
      Tag = 2
      Left = 37
      Top = 23
      Width = 103
      Height = 27
      TabOrder = 0
      OnEnter = rutcomodatarioEnter
      OnExit = rutcomodatarioExit
      OnKeyPress = rutcomodatarioKeyPress
    end
    object namecomodatario: TEdit
      Tag = 2
      Left = 209
      Top = 23
      Width = 305
      Height = 27
      TabOrder = 1
    end
    object addresscomodatario: TEdit
      Tag = 2
      Left = 82
      Top = 55
      Width = 432
      Height = 27
      TabOrder = 2
    end
  end
  object grepre: TGroupBox [9]
    Left = 15
    Top = 211
    Width = 521
    Height = 65
    Caption = ' Datos del representante'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 4
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
    object rutautorizado: TEdit
      Tag = 3
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
      Tag = 3
      Left = 208
      Top = 29
      Width = 305
      Height = 27
      TabOrder = 1
    end
  end
  object repertorio: TEdit [10]
    Left = 103
    Top = 8
    Width = 186
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object GroupBox3: TGroupBox [11]
    Left = 15
    Top = 277
    Width = 521
    Height = 228
    Caption = ' Datos del certificaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object tipovehiculo: TLabeledEdit
      Left = 12
      Top = 44
      Width = 237
      Height = 27
      EditLabel.Width = 95
      EditLabel.Height = 19
      EditLabel.Caption = 'Tipo vehiculo'
      TabOrder = 0
    end
    object modelo: TLabeledEdit
      Left = 12
      Top = 93
      Width = 253
      Height = 27
      EditLabel.Width = 51
      EditLabel.Height = 19
      EditLabel.Caption = 'Modelo'
      TabOrder = 3
    end
    object nmotor: TLabeledEdit
      Left = 12
      Top = 143
      Width = 253
      Height = 27
      EditLabel.Width = 66
      EditLabel.Height = 19
      EditLabel.Caption = 'N* Motor'
      TabOrder = 5
    end
    object combustible: TLabeledEdit
      Left = 175
      Top = 194
      Width = 190
      Height = 27
      EditLabel.Width = 88
      EditLabel.Height = 19
      EditLabel.Caption = 'Combustible'
      TabOrder = 8
    end
    object year: TLabeledEdit
      Left = 448
      Top = 44
      Width = 63
      Height = 27
      Alignment = taRightJustify
      EditLabel.Width = 29
      EditLabel.Height = 19
      EditLabel.Caption = 'A'#241'o'
      TabOrder = 2
      OnKeyPress = yearKeyPress
    end
    object chasi: TLabeledEdit
      Left = 271
      Top = 143
      Width = 240
      Height = 27
      EditLabel.Width = 70
      EditLabel.Height = 19
      EditLabel.Caption = 'N* Chasis'
      TabOrder = 6
    end
    object Color: TLabeledEdit
      Left = 12
      Top = 194
      Width = 157
      Height = 27
      EditLabel.Width = 38
      EditLabel.Height = 19
      EditLabel.Caption = 'Color'
      TabOrder = 7
    end
    object Patente: TLabeledEdit
      Left = 271
      Top = 93
      Width = 241
      Height = 27
      EditLabel.Width = 93
      EditLabel.Height = 19
      EditLabel.Caption = 'Placa Patente'
      TabOrder = 4
    end
    object marca: TLabeledEdit
      Left = 255
      Top = 44
      Width = 187
      Height = 27
      EditLabel.Width = 41
      EditLabel.Height = 19
      EditLabel.Caption = 'Marca'
      TabOrder = 1
    end
    object pbv: TLabeledEdit
      Left = 371
      Top = 194
      Width = 141
      Height = 27
      EditLabel.Width = 28
      EditLabel.Height = 19
      EditLabel.Caption = 'PBV'
      TabOrder = 9
    end
  end
  object GroupBox5: TGroupBox [12]
    Left = 14
    Top = 505
    Width = 521
    Height = 129
    Caption = 'Pagos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    object Label8: TLabel
      Left = 8
      Top = 22
      Width = 59
      Height = 19
      Caption = 'Comuna'
    end
    object Label9: TLabel
      Left = 327
      Top = 22
      Width = 108
      Height = 19
      Caption = 'Precio de venta'
    end
    object Label10: TLabel
      Left = 10
      Top = 75
      Width = 107
      Height = 19
      Caption = 'Forma de pago'
    end
    object Label11: TLabel
      Left = 231
      Top = 75
      Width = 109
      Height = 19
      Caption = 'Valor Impuesto'
    end
    object Label12: TLabel
      Left = 369
      Top = 75
      Width = 104
      Height = 19
      Caption = 'Valor Tasaci'#243'n'
    end
    object comuna: TEdit
      Tag = 1
      Left = 9
      Top = 45
      Width = 312
      Height = 27
      TabOrder = 0
    end
    object fpago: TEdit
      Tag = 1
      Left = 9
      Top = 97
      Width = 218
      Height = 27
      TabOrder = 2
    end
    object precioventa: TJvValidateEdit
      Left = 327
      Top = 45
      Width = 186
      Height = 27
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfCurrency
      TabOrder = 1
      ZeroEmpty = True
    end
    object valorimpuesto: TJvValidateEdit
      Left = 231
      Top = 97
      Width = 132
      Height = 27
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfCurrency
      TabOrder = 3
      ZeroEmpty = True
    end
    object valortasacion: TJvValidateEdit
      Left = 368
      Top = 97
      Width = 146
      Height = 27
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfCurrency
      TabOrder = 4
      ZeroEmpty = True
    end
  end
  inherited rutfind: TFDQuery
    Top = 635
  end
  inherited queryNotaria: TFDQuery
    Top = 635
  end
  inherited qrysave: TFDQuery
    Top = 635
  end
end
