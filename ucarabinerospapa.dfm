inherited fcarabinerospapa: Tfcarabinerospapa
  Tag = 2
  Caption = 'fcarabinerospapa'
  ClientHeight = 343
  ExplicitWidth = 560
  ExplicitHeight = 371
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 268
    ExplicitHeight = 268
  end
  inherited bcerrar: TButton
    Top = 311
    TabOrder = 5
    ExplicitTop = 311
  end
  inherited bimprimir: TButton
    Top = 311
    TabOrder = 3
    ExplicitTop = 311
  end
  inherited gboleta: TButton
    Top = 311
    TabOrder = 4
    ExplicitTop = 311
  end
  object GroupBox1: TGroupBox [6]
    Left = 15
    Top = 44
    Width = 521
    Height = 99
    Caption = 'Datos Padre'
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
      Left = 73
      Top = 63
      Width = 440
      Height = 26
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox [7]
    Left = 15
    Top = 149
    Width = 521
    Height = 140
    Caption = 'Datos Hijo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Top = 31
      Width = 22
      Height = 18
      Caption = 'Rut'
    end
    object Label4: TLabel
      Left = 146
      Top = 31
      Width = 52
      Height = 18
      Caption = 'Nombre'
    end
    object TLabel
      Left = 8
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
    object Label5: TLabel
      Left = 8
      Top = 104
      Width = 70
      Height = 18
      Caption = 'Estado civil'
    end
    object ruthijo: TEdit
      Tag = 2
      Left = 37
      Top = 28
      Width = 103
      Height = 26
      TabOrder = 0
      OnEnter = ruthijoEnter
      OnExit = ruthijoExit
      OnKeyPress = ruthijoKeyPress
    end
    object namehijo: TEdit
      Tag = 2
      Left = 204
      Top = 28
      Width = 309
      Height = 26
      TabOrder = 1
    end
    object addresshijo: TEdit
      Tag = 2
      Left = 71
      Top = 63
      Width = 442
      Height = 26
      TabOrder = 2
    end
    object estadocivil: TEdit
      Left = 85
      Top = 100
      Width = 322
      Height = 26
      TabOrder = 3
    end
  end
  inherited rutfind: TFDQuery
    Top = 310
  end
  inherited queryNotaria: TFDQuery
    Top = 310
  end
  inherited qrysave: TFDQuery
    Top = 310
  end
end
