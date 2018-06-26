inherited fprovisorio: Tfprovisorio
  Tag = 1
  Caption = 'fprovisorio'
  ClientHeight = 304
  ExplicitWidth = 560
  ExplicitHeight = 332
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 228
    ExplicitHeight = 228
  end
  inherited bcerrar: TButton
    Top = 271
    TabOrder = 6
    ExplicitTop = 271
  end
  inherited bimprimir: TButton
    Top = 271
    TabOrder = 4
    ExplicitTop = 271
  end
  inherited gboleta: TButton
    Top = 271
    TabOrder = 5
    ExplicitTop = 271
  end
  object GroupBox1: TGroupBox [6]
    Left = 15
    Top = 44
    Width = 521
    Height = 101
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
  object datos: TLabeledEdit [7]
    Left = 23
    Top = 176
    Width = 505
    Height = 26
    EditLabel.Width = 122
    EditLabel.Height = 18
    EditLabel.Caption = 'Permiso provisorio '
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -15
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object comuna: TLabeledEdit [8]
    Left = 23
    Top = 224
    Width = 505
    Height = 26
    EditLabel.Width = 54
    EditLabel.Height = 18
    EditLabel.Caption = 'Comuna'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -15
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  inherited rutfind: TFDQuery
    Top = 270
  end
  inherited queryNotaria: TFDQuery
    Top = 270
  end
  inherited qrysave: TFDQuery
    Top = 270
  end
end
