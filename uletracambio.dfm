inherited fletradecambio: Tfletradecambio
  Tag = 2
  Caption = 'Latra de cambio'
  ClientHeight = 433
  ExplicitHeight = 461
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 356
    ExplicitHeight = 356
  end
  inherited bcerrar: TButton
    Top = 399
    TabOrder = 6
    ExplicitTop = 399
  end
  inherited bimprimir: TButton
    Top = 399
    TabOrder = 4
    ExplicitTop = 399
  end
  inherited gboleta: TButton
    Top = 399
    TabOrder = 5
    ExplicitTop = 399
  end
  object GroupBox1: TGroupBox [6]
    Left = 15
    Top = 48
    Width = 521
    Height = 87
    Caption = ' Datos del acreedor'
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
  end
  object GroupBox2: TGroupBox [7]
    Left = 15
    Top = 135
    Width = 521
    Height = 88
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
  object GroupBox3: TGroupBox [8]
    Left = 17
    Top = 226
    Width = 521
    Height = 151
    Caption = 'Datos de acuerdo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label6: TLabel
      Left = 86
      Top = 29
      Width = 20
      Height = 19
      Caption = 'No'
    end
    object Label5: TLabel
      Left = 13
      Top = 29
      Width = 42
      Height = 19
      Caption = 'No de'
    end
    object Label7: TLabel
      Left = 149
      Top = 29
      Width = 105
      Height = 19
      Caption = 'F. Vencimiento'
    end
    object Label8: TLabel
      Left = 288
      Top = 29
      Width = 104
      Height = 19
      Caption = 'Valor en pesos'
    end
    object Label9: TLabel
      Left = 13
      Top = 93
      Width = 49
      Height = 19
      Caption = 'Ciudad'
    end
    object Label10: TLabel
      Left = 288
      Top = 93
      Width = 59
      Height = 19
      Caption = 'Comuna'
    end
    object no: TEdit
      Left = 86
      Top = 49
      Width = 57
      Height = 27
      TabOrder = 1
    end
    object nden: TEdit
      Left = 13
      Top = 49
      Width = 67
      Height = 27
      TabOrder = 0
    end
    object fvencimiento: TDateTimePicker
      Tag = 99
      Left = 149
      Top = 48
      Width = 133
      Height = 27
      Date = 43005.828877303240000000
      Time = 43005.828877303240000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object valorpesos: TEdit
      Left = 288
      Top = 48
      Width = 222
      Height = 27
      TabOrder = 3
    end
    object ciudad: TEdit
      Left = 13
      Top = 112
      Width = 269
      Height = 27
      TabOrder = 4
    end
    object comuna: TEdit
      Left = 288
      Top = 112
      Width = 222
      Height = 27
      TabOrder = 5
    end
  end
  inherited rutfind: TFDQuery
    Top = 398
  end
  inherited queryNotaria: TFDQuery
    Top = 398
  end
  inherited qrysave: TFDQuery
    Top = 398
  end
end
