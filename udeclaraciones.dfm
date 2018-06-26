inherited fdeclaraciones: Tfdeclaraciones
  Tag = 1
  Caption = 'fdeclaraciones'
  ClientHeight = 198
  ExplicitWidth = 560
  ExplicitHeight = 226
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 124
    ExplicitHeight = 124
  end
  inherited bcerrar: TButton
    Top = 167
    TabOrder = 4
    ExplicitTop = 167
  end
  inherited bimprimir: TButton
    Top = 167
    ExplicitTop = 167
  end
  inherited gboleta: TButton
    Top = 167
    ExplicitTop = 167
  end
  object GroupBox1: TGroupBox [6]
    Left = 15
    Top = 44
    Width = 521
    Height = 99
    Caption = 'Datos'
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
  inherited rutfind: TFDQuery
    Top = 166
  end
  inherited queryNotaria: TFDQuery
    Top = 166
  end
  inherited qrysave: TFDQuery
    Top = 166
  end
end
