inherited fpagare: Tfpagare
  Tag = 2
  Caption = 'fpagare'
  PixelsPerInch = 96
  TextHeight = 19
  inherited bcerrar: TButton
    TabOrder = 7
  end
  inherited bimprimir: TButton
    TabOrder = 5
  end
  inherited gboleta: TButton
    TabOrder = 6
  end
  object GroupBox1: TGroupBox [6]
    Left = 15
    Top = 126
    Width = 521
    Height = 87
    Caption = ' Datos del acreedor'
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
    Top = 39
    Width = 521
    Height = 88
    Caption = ' Datos del deudor'
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
  object GroupBox3: TGroupBox [8]
    Left = 16
    Top = 213
    Width = 521
    Height = 56
    Caption = ' Datos del suscriptor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label5: TLabel
      Left = 8
      Top = 25
      Width = 24
      Height = 19
      Caption = 'Rut'
    end
    object Label6: TLabel
      Left = 146
      Top = 25
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object rutsuscrip: TEdit
      Tag = 1
      Left = 37
      Top = 22
      Width = 103
      Height = 27
      TabOrder = 0
      OnEnter = rutsuscripEnter
      OnExit = rutsuscripExit
      OnKeyPress = rutsuscripKeyPress
    end
    object namesuscrip: TEdit
      Tag = 1
      Left = 208
      Top = 22
      Width = 305
      Height = 27
      TabOrder = 1
    end
  end
  object GroupBox4: TGroupBox [9]
    Left = 17
    Top = 269
    Width = 521
    Height = 151
    Caption = 'Datos de pagare'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label7: TLabel
      Left = 13
      Top = 29
      Width = 37
      Height = 19
      Caption = 'Valor'
    end
    object Label8: TLabel
      Left = 135
      Top = 93
      Width = 87
      Height = 19
      Caption = 'Valor cuotas'
    end
    object Label9: TLabel
      Left = 378
      Top = 93
      Width = 124
      Height = 19
      Caption = 'F. P. Vencimiento'
    end
    object Label10: TLabel
      Left = 142
      Top = 29
      Width = 104
      Height = 19
      Caption = 'Valor en pesos'
    end
    object Label11: TLabel
      Left = 13
      Top = 93
      Width = 34
      Height = 19
      Caption = 'Folio'
    end
    object Label12: TLabel
      Left = 259
      Top = 93
      Width = 92
      Height = 19
      Caption = 'No de cuotas'
    end
    object valor: TEdit
      Left = 13
      Top = 49
      Width = 123
      Height = 27
      TabOrder = 0
    end
    object valorcuotas: TEdit
      Left = 135
      Top = 114
      Width = 119
      Height = 27
      TabOrder = 3
    end
    object fvencimiento: TDateTimePicker
      Tag = 99
      Left = 378
      Top = 114
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
      TabOrder = 5
    end
    object valorpesos: TEdit
      Left = 142
      Top = 48
      Width = 368
      Height = 27
      TabOrder = 1
    end
    object folio: TEdit
      Left = 13
      Top = 114
      Width = 116
      Height = 27
      TabOrder = 2
    end
    object ncuotas: TEdit
      Left = 258
      Top = 114
      Width = 115
      Height = 27
      TabOrder = 4
    end
  end
end
