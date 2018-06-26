inherited faolc: Tfaolc
  Tag = 3
  Caption = 'Autorizaci'#243'n para Obtener Licencia de Conducir'
  ClientHeight = 407
  ExplicitWidth = 560
  ExplicitHeight = 435
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 330
    ExplicitHeight = 330
  end
  object cm: TLabel [2]
    Left = 23
    Top = 308
    Width = 160
    Height = 19
    Caption = 'Comuna Municipalidad'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited bcerrar: TButton
    Top = 371
    TabOrder = 7
    ExplicitTop = 371
  end
  inherited bimprimir: TButton
    Top = 371
    TabOrder = 5
    ExplicitTop = 371
  end
  object GroupBox1: TGroupBox [6]
    Left = 15
    Top = 44
    Width = 521
    Height = 95
    Caption = ' Datos del padre'
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
      Top = 63
      Width = 65
      Height = 19
      Caption = 'Direcci'#243'n'
    end
    object rutpadre: TEdit
      Tag = 1
      Left = 37
      Top = 29
      Width = 103
      Height = 27
      TabOrder = 0
      OnEnter = rutpadreEnter
      OnExit = rutpadreExit
      OnKeyPress = rutpadreKeyPress
    end
    object namepadre: TEdit
      Tag = 1
      Left = 208
      Top = 29
      Width = 305
      Height = 27
      TabOrder = 1
    end
    object addresspadre: TEdit
      Tag = 1
      Left = 80
      Top = 60
      Width = 432
      Height = 27
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox [7]
    Left = 15
    Top = 140
    Width = 521
    Height = 95
    Caption = ' Datos de la madre '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label3: TLabel
      Left = 8
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
      Left = 10
      Top = 66
      Width = 65
      Height = 19
      Caption = 'Direcci'#243'n'
    end
    object rutmadre: TEdit
      Tag = 2
      Left = 38
      Top = 29
      Width = 102
      Height = 27
      TabOrder = 0
      OnEnter = rutmadreEnter
      OnExit = rutmadreExit
      OnKeyPress = rutmadreKeyPress
    end
    object namemadre: TEdit
      Tag = 2
      Left = 208
      Top = 33
      Width = 305
      Height = 27
      TabOrder = 1
    end
    object addressmadre: TEdit
      Tag = 2
      Left = 80
      Top = 63
      Width = 432
      Height = 27
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox [8]
    Left = 15
    Top = 236
    Width = 521
    Height = 66
    Caption = ' Datos del hijo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label5: TLabel
      Left = 8
      Top = 30
      Width = 24
      Height = 19
      Caption = 'Rut'
    end
    object Label6: TLabel
      Left = 145
      Top = 30
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object ruthijo: TEdit
      Tag = 3
      Left = 38
      Top = 27
      Width = 102
      Height = 27
      TabOrder = 0
    end
    object namehijo: TEdit
      Tag = 3
      Left = 208
      Top = 27
      Width = 305
      Height = 27
      TabOrder = 1
    end
  end
  object municipalidad: TEdit [9]
    Left = 23
    Top = 332
    Width = 343
    Height = 27
    TabOrder = 4
  end
  inherited gboleta: TButton
    Top = 371
    TabOrder = 6
    ExplicitTop = 371
  end
  inherited rutfind: TFDQuery
    Left = 368
    Top = 369
  end
  inherited queryNotaria: TFDQuery
    Left = 336
    Top = 369
  end
  inherited qrysave: TFDQuery
    Top = 396
  end
end
