inherited fexpensas: Tfexpensas
  Tag = 1
  Caption = 'fexpensas'
  ClientHeight = 338
  ExplicitWidth = 560
  ExplicitHeight = 366
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 260
    ExplicitHeight = 260
  end
  inherited bcerrar: TButton
    Top = 303
    TabOrder = 5
    ExplicitTop = 303
  end
  inherited bimprimir: TButton
    Top = 303
    TabOrder = 3
    ExplicitTop = 303
  end
  inherited gboleta: TButton
    Top = 303
    TabOrder = 4
    ExplicitTop = 303
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
    Height = 143
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
      Top = 30
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object Label6: TLabel
      Left = 351
      Top = 30
      Width = 28
      Height = 19
      Caption = 'Pais'
    end
    object Label7: TLabel
      Left = 12
      Top = 86
      Width = 69
      Height = 19
      Caption = 'Pasaporte'
    end
    object named: TEdit
      Left = 11
      Top = 52
      Width = 334
      Height = 27
      TabOrder = 0
    end
    object pais: TEdit
      Left = 351
      Top = 52
      Width = 163
      Height = 27
      TabOrder = 1
    end
    object pasaporte: TEdit
      Left = 11
      Top = 108
      Width = 166
      Height = 27
      TabOrder = 2
    end
  end
  inherited rutfind: TFDQuery
    Top = 302
  end
  inherited queryNotaria: TFDQuery
    Top = 302
  end
  inherited qrysave: TFDQuery
    Top = 302
  end
end
