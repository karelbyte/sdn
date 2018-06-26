inherited fpropiedad: Tfpropiedad
  Tag = 1
  Caption = 'fpropiedad'
  ClientHeight = 392
  ExplicitWidth = 560
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 316
    ExplicitHeight = 316
  end
  inherited bcerrar: TButton
    Top = 359
    TabOrder = 5
    ExplicitTop = 359
  end
  inherited bimprimir: TButton
    Top = 359
    TabOrder = 3
    ExplicitTop = 359
  end
  inherited gboleta: TButton
    Top = 359
    TabOrder = 4
    ExplicitTop = 359
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
    Height = 197
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
      Width = 140
      Height = 19
      Caption = 'Nombre Mandatario'
    end
    object Label6: TLabel
      Left = 375
      Top = 27
      Width = 120
      Height = 19
      Caption = 'Cedula Identidad'
    end
    object erf: TLabel
      Left = 11
      Top = 86
      Width = 66
      Height = 19
      Caption = 'Domicilio'
    end
    object Label4: TLabel
      Left = 350
      Top = 86
      Width = 23
      Height = 19
      Caption = 'Rol'
    end
    object Label3: TLabel
      Left = 11
      Top = 139
      Width = 130
      Height = 19
      Caption = 'Tipo de propiedad'
    end
    object nombred: TEdit
      Left = 11
      Top = 51
      Width = 358
      Height = 27
      TabOrder = 0
    end
    object cedula: TEdit
      Left = 375
      Top = 51
      Width = 138
      Height = 27
      TabOrder = 1
      OnEnter = cedulaEnter
      OnExit = cedulaExit
      OnKeyPress = cedulaKeyPress
    end
    object domicilio: TEdit
      Left = 11
      Top = 105
      Width = 333
      Height = 27
      TabOrder = 2
    end
    object rol: TEdit
      Left = 350
      Top = 105
      Width = 164
      Height = 27
      TabOrder = 3
    end
    object tpropiedad: TEdit
      Left = 11
      Top = 158
      Width = 333
      Height = 27
      TabOrder = 4
    end
  end
  inherited rutfind: TFDQuery
    Top = 358
  end
  inherited queryNotaria: TFDQuery
    Top = 358
  end
  inherited qrysave: TFDQuery
    Top = 358
  end
end
