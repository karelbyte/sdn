inherited fats: Tfats
  Tag = 2
  Caption = 'Autorizaci'#243'n de Trabajo Supermercado'
  ClientHeight = 357
  ExplicitWidth = 560
  ExplicitHeight = 385
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 276
    ExplicitHeight = 276
  end
  object cm: TLabel [2]
    Left = 23
    Top = 239
    Width = 164
    Height = 19
    Caption = 'Nombre Supermercado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited bcerrar: TButton
    Top = 321
    TabOrder = 6
    ExplicitTop = 321
  end
  inherited bimprimir: TButton
    Top = 321
    TabOrder = 4
    ExplicitTop = 321
  end
  object GroupBox1: TGroupBox [6]
    Left = 15
    Top = 48
    Width = 521
    Height = 105
    Caption = ' Datos del autorizante '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 24
      Height = 19
      Caption = 'Rut'
    end
    object Nombre: TLabel
      Left = 146
      Top = 32
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object TLabel
      Left = 10
      Top = 69
      Width = 65
      Height = 19
      Caption = 'Direcci'#243'n'
    end
    object rutautorizante: TEdit
      Tag = 1
      Left = 37
      Top = 29
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
      Top = 29
      Width = 305
      Height = 27
      TabOrder = 1
    end
    object addressautorizante: TEdit
      Tag = 1
      Left = 80
      Top = 66
      Width = 432
      Height = 27
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox [7]
    Left = 15
    Top = 155
    Width = 521
    Height = 78
    Caption = ' Datos del autorizado '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Top = 37
      Width = 24
      Height = 19
      Caption = 'Rut'
    end
    object Label4: TLabel
      Left = 145
      Top = 37
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object rutautorizado: TEdit
      Tag = 2
      Left = 38
      Top = 34
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
      Top = 34
      Width = 305
      Height = 27
      TabOrder = 1
    end
  end
  object supermercado: TEdit [8]
    Left = 23
    Top = 266
    Width = 343
    Height = 27
    TabOrder = 3
  end
  inherited gboleta: TButton
    Top = 321
    TabOrder = 5
    ExplicitTop = 321
  end
  inherited rutfind: TFDQuery
    Top = 317
  end
  inherited queryNotaria: TFDQuery
    Top = 309
  end
  inherited qrysave: TFDQuery
    Left = 304
    Top = 304
  end
end
