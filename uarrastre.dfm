inherited farrastre: Tfarrastre
  Tag = 1
  Caption = 'farrastre'
  ClientHeight = 357
  ExplicitWidth = 560
  ExplicitHeight = 385
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 276
    ExplicitHeight = 276
  end
  inherited bcerrar: TButton
    Top = 319
    TabOrder = 5
    ExplicitTop = 319
  end
  inherited bimprimir: TButton
    Top = 319
    TabOrder = 3
    ExplicitTop = 319
  end
  inherited gboleta: TButton
    Top = 319
    TabOrder = 4
    ExplicitTop = 319
  end
  object GroupBox1: TGroupBox [6]
    Left = 15
    Top = 44
    Width = 521
    Height = 101
    Caption = 'Datos compareciente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 31
      Width = 22
      Height = 18
      Caption = 'Rut'
    end
    object Nombre: TLabel
      Left = 146
      Top = 31
      Width = 52
      Height = 18
      Caption = 'Nombre'
    end
    object TLabel
      Left = 10
      Top = 65
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
      Top = 28
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
      Top = 28
      Width = 309
      Height = 26
      TabOrder = 1
    end
    object addresscomodante: TEdit
      Tag = 1
      Left = 81
      Top = 63
      Width = 432
      Height = 26
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox [7]
    Left = 14
    Top = 144
    Width = 521
    Height = 153
    Caption = ' Datos'
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
      Width = 29
      Height = 19
      Caption = 'A'#241'o'
    end
    object Label6: TLabel
      Left = 90
      Top = 30
      Width = 75
      Height = 19
      Caption = 'N* de ejes'
    end
    object erf: TLabel
      Left = 11
      Top = 88
      Width = 33
      Height = 19
      Caption = 'Kilos'
    end
    object Label4: TLabel
      Left = 113
      Top = 88
      Width = 45
      Height = 19
      Caption = 'Ancho'
    end
    object Label7: TLabel
      Left = 184
      Top = 30
      Width = 94
      Height = 19
      Caption = 'N* de ruedas'
    end
    object Label8: TLabel
      Left = 290
      Top = 30
      Width = 70
      Height = 19
      Caption = 'N* de aro'
    end
    object Label9: TLabel
      Left = 392
      Top = 30
      Width = 38
      Height = 19
      Caption = 'Color'
    end
    object Label3: TLabel
      Left = 256
      Top = 88
      Width = 40
      Height = 19
      Caption = 'Largo'
    end
    object Label10: TLabel
      Left = 392
      Top = 88
      Width = 43
      Height = 19
      Caption = 'Altura'
    end
    object year: TEdit
      Left = 11
      Top = 52
      Width = 73
      Height = 27
      TabOrder = 0
      OnKeyPress = yearKeyPress
    end
    object ejes: TEdit
      Left = 89
      Top = 52
      Width = 90
      Height = 27
      TabOrder = 1
      OnKeyPress = yearKeyPress
    end
    object kg: TEdit
      Left = 11
      Top = 110
      Width = 98
      Height = 27
      TabOrder = 5
      OnKeyPress = yearKeyPress
    end
    object ancho: TEdit
      Left = 113
      Top = 110
      Width = 137
      Height = 27
      TabOrder = 6
      OnKeyPress = yearKeyPress
    end
    object ruedas: TEdit
      Left = 183
      Top = 52
      Width = 101
      Height = 27
      TabOrder = 2
      OnKeyPress = yearKeyPress
    end
    object aros: TEdit
      Left = 289
      Top = 52
      Width = 99
      Height = 27
      TabOrder = 3
      OnKeyPress = yearKeyPress
    end
    object color: TEdit
      Left = 392
      Top = 52
      Width = 122
      Height = 27
      TabOrder = 4
    end
    object largo: TEdit
      Left = 256
      Top = 110
      Width = 130
      Height = 27
      TabOrder = 7
      OnKeyPress = yearKeyPress
    end
    object altura: TEdit
      Left = 392
      Top = 110
      Width = 122
      Height = 27
      TabOrder = 8
      OnKeyPress = yearKeyPress
    end
  end
  inherited rutfind: TFDQuery
    Top = 318
  end
  inherited queryNotaria: TFDQuery
    Top = 318
  end
  inherited qrysave: TFDQuery
    Top = 318
  end
end
