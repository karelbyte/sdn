inherited fsii: Tfsii
  Tag = 1
  Caption = 'fsii'
  ClientHeight = 283
  ExplicitWidth = 560
  ExplicitHeight = 311
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 207
    ExplicitHeight = 207
  end
  inherited bcerrar: TButton
    Top = 250
    TabOrder = 5
    ExplicitTop = 250
  end
  inherited bimprimir: TButton
    Top = 250
    TabOrder = 3
    ExplicitTop = 250
  end
  inherited gboleta: TButton
    Top = 250
    TabOrder = 4
    ExplicitTop = 250
  end
  object GroupBox2: TGroupBox [6]
    Left = 15
    Top = 43
    Width = 521
    Height = 102
    Caption = ' Datos compareciente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label3: TLabel
      Left = 9
      Top = 32
      Width = 24
      Height = 19
      Caption = 'Rut'
    end
    object Label4: TLabel
      Left = 145
      Top = 32
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object TLabel
      Left = 9
      Top = 69
      Width = 65
      Height = 19
      Caption = 'Direcci'#243'n'
    end
    object rutautorizado: TEdit
      Tag = 1
      Left = 38
      Top = 29
      Width = 102
      Height = 27
      TabOrder = 0
      OnEnter = rutautorizadoEnter
      OnExit = rutautorizadoExit
      OnKeyPress = rutautorizadoKeyPress
    end
    object nameautorizado: TEdit
      Tag = 1
      Left = 208
      Top = 29
      Width = 305
      Height = 27
      TabOrder = 1
    end
    object addressautorizado: TEdit
      Tag = 1
      Left = 81
      Top = 66
      Width = 432
      Height = 27
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox [7]
    Left = 17
    Top = 145
    Width = 521
    Height = 91
    Caption = 'Datos '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label6: TLabel
      Left = 147
      Top = 29
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object Label5: TLabel
      Left = 13
      Top = 29
      Width = 23
      Height = 19
      Caption = 'Rol'
    end
    object nameafavor: TEdit
      Left = 147
      Top = 49
      Width = 363
      Height = 27
      TabOrder = 1
    end
    object rutafavor: TEdit
      Left = 13
      Top = 49
      Width = 128
      Height = 27
      TabOrder = 0
      OnEnter = rutafavorEnter
      OnExit = rutafavorExit
      OnKeyPress = rutafavorKeyPress
    end
  end
  inherited rutfind: TFDQuery
    Top = 249
  end
  inherited queryNotaria: TFDQuery
    Top = 249
  end
  inherited qrysave: TFDQuery
    Top = 249
  end
end
