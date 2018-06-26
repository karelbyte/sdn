inherited fbmueble: Tfbmueble
  Tag = 2
  Caption = 'Bienes Muebles'
  ClientHeight = 399
  ExplicitWidth = 560
  ExplicitHeight = 427
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 324
    ExplicitHeight = 324
  end
  inherited bcerrar: TButton
    Top = 367
    TabOrder = 6
    ExplicitTop = 367
  end
  inherited bimprimir: TButton
    Top = 367
    TabOrder = 4
    ExplicitTop = 367
  end
  inherited gboleta: TButton
    Top = 367
    TabOrder = 5
    ExplicitTop = 367
  end
  object GroupBox1: TGroupBox [6]
    Left = 15
    Top = 38
    Width = 521
    Height = 86
    Caption = ' Datos de vendedor'
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
  object GroupBox4: TGroupBox [7]
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
    TabOrder = 2
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
      Left = 80
      Top = 55
      Width = 432
      Height = 27
      TabOrder = 2
    end
  end
  object GroupBox5: TGroupBox [8]
    Left = 15
    Top = 217
    Width = 521
    Height = 136
    Caption = 'Plazo de la venta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label5: TLabel
      Left = 190
      Top = 104
      Width = 53
      Height = 19
      Caption = 'F. Pago'
    end
    object Label3: TLabel
      Left = 10
      Top = 104
      Width = 43
      Height = 19
      Caption = 'Precio'
    end
    object fpago: TEdit
      Tag = 1
      Left = 249
      Top = 101
      Width = 264
      Height = 27
      TabOrder = 2
    end
    object costo: TJvValidateEdit
      Left = 57
      Top = 101
      Width = 112
      Height = 27
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfCurrency
      TabOrder = 1
      ZeroEmpty = True
    end
    object datos: TMemo
      Left = 10
      Top = 24
      Width = 503
      Height = 71
      TabOrder = 0
    end
  end
  inherited rutfind: TFDQuery
    Top = 366
  end
  inherited queryNotaria: TFDQuery
    Top = 366
  end
  inherited qrysave: TFDQuery
    Top = 366
  end
end
