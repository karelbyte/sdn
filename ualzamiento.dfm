inherited falzamiento: Tfalzamiento
  Tag = 1
  Caption = 'falzamiento'
  ClientHeight = 344
  ExplicitWidth = 560
  ExplicitHeight = 372
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
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object Label6: TLabel
      Left = 303
      Top = 27
      Width = 48
      Height = 19
      Caption = 'Cedula'
    end
    object erf: TLabel
      Left = 11
      Top = 91
      Width = 52
      Height = 19
      Caption = 'Patente'
    end
    object Label3: TLabel
      Left = 376
      Top = 91
      Width = 40
      Height = 19
      Caption = 'Fecha'
    end
    object Label4: TLabel
      Left = 205
      Top = 91
      Width = 74
      Height = 19
      Caption = 'Repertorio'
    end
    object nombred: TEdit
      Left = 11
      Top = 52
      Width = 286
      Height = 27
      TabOrder = 0
    end
    object cedula: TEdit
      Left = 303
      Top = 52
      Width = 210
      Height = 27
      TabOrder = 1
    end
    object patente: TEdit
      Left = 11
      Top = 110
      Width = 188
      Height = 27
      TabOrder = 2
    end
    object fechad: TDateTimePicker
      Tag = 99
      Left = 375
      Top = 110
      Width = 137
      Height = 27
      Date = 43005.828877303240000000
      Time = 43005.828877303240000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object repertorio: TEdit
      Left = 205
      Top = 110
      Width = 164
      Height = 27
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
