inherited famspap: Tfamspap
  Tag = 2
  Caption = 'Autoriza menor a salir del pais ambos padres'
  ClientHeight = 560
  ExplicitTop = -4
  ExplicitWidth = 560
  ExplicitHeight = 588
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 487
    ExplicitHeight = 487
  end
  inherited bcerrar: TButton
    Top = 530
    TabOrder = 6
    ExplicitTop = 530
  end
  inherited bimprimir: TButton
    Top = 530
    TabOrder = 4
    ExplicitTop = 530
  end
  object GroupBox1: TGroupBox [5]
    Left = 15
    Top = 44
    Width = 521
    Height = 86
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
      Top = 28
      Width = 24
      Height = 19
      Caption = 'Rut'
    end
    object Nombre: TLabel
      Left = 146
      Top = 28
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object TLabel
      Left = 9
      Top = 58
      Width = 65
      Height = 19
      Caption = 'Direcci'#243'n'
    end
    object rutpadre: TEdit
      Tag = 1
      Left = 37
      Top = 25
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
      Top = 25
      Width = 305
      Height = 27
      TabOrder = 1
    end
    object addresspadre: TEdit
      Tag = 1
      Left = 80
      Top = 55
      Width = 432
      Height = 27
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox [6]
    Left = 15
    Top = 129
    Width = 521
    Height = 91
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
      Top = 62
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
      Top = 29
      Width = 305
      Height = 27
      TabOrder = 1
    end
    object addressmadre: TEdit
      Tag = 2
      Left = 80
      Top = 59
      Width = 432
      Height = 27
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox [7]
    Left = 15
    Top = 218
    Width = 521
    Height = 298
    Caption = 'Datos de autorizaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label5: TLabel
      Left = 11
      Top = 21
      Width = 36
      Height = 19
      Caption = 'Hijos'
    end
    object direc: TLabel
      Left = 11
      Top = 114
      Width = 110
      Height = 19
      Caption = 'Pais Autorizado'
    end
    object Label6: TLabel
      Left = 11
      Top = 170
      Width = 114
      Height = 19
      Caption = 'Periodo de viaje'
    end
    object Label7: TLabel
      Left = 376
      Top = 170
      Width = 107
      Height = 19
      Caption = 'Fecha de salida'
    end
    object pais: TEdit
      Left = 11
      Top = 139
      Width = 501
      Height = 27
      TabOrder = 1
    end
    object hijos: TMemo
      Left = 11
      Top = 47
      Width = 502
      Height = 63
      TabOrder = 0
    end
    object periodo: TEdit
      Left = 11
      Top = 195
      Width = 359
      Height = 27
      TabOrder = 2
    end
    object fechasalida: TDateTimePicker
      Tag = 99
      Left = 376
      Top = 195
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
      TabOrder = 3
    end
    object GroupBox4: TGroupBox
      Left = 10
      Top = 225
      Width = 503
      Height = 68
      Caption = ' Datos persona a cargo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object Label8: TLabel
        Left = 8
        Top = 37
        Width = 24
        Height = 19
        Caption = 'Rut'
      end
      object Label9: TLabel
        Left = 145
        Top = 37
        Width = 57
        Height = 19
        Caption = 'Nombre'
      end
      object rutacargo: TEdit
        Left = 37
        Top = 34
        Width = 102
        Height = 27
        TabOrder = 0
        OnEnter = rutacargoEnter
        OnExit = rutacargoExit
        OnKeyPress = rutacargoKeyPress
      end
      object nameacargo: TEdit
        Left = 208
        Top = 34
        Width = 286
        Height = 27
        TabOrder = 1
      end
    end
  end
  inherited gboleta: TButton
    Top = 530
    TabOrder = 5
    ExplicitTop = 530
  end
  inherited rutfind: TFDQuery
    Top = 501
  end
  inherited queryNotaria: TFDQuery
    Top = 583
  end
end
