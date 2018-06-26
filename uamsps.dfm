inherited famsps: Tfamsps
  Tag = 2
  Caption = 'Autoriza menor a salir del pais simples'
  ClientHeight = 487
  ExplicitTop = -36
  ExplicitHeight = 515
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Top = 38
    Height = 414
    ExplicitTop = 38
    ExplicitHeight = 414
  end
  inherited bcerrar: TButton
    Top = 455
    TabOrder = 5
    ExplicitTop = 455
  end
  inherited bimprimir: TButton
    Top = 455
    TabOrder = 3
    ExplicitTop = 455
  end
  object GroupBox1: TGroupBox [5]
    Left = 15
    Top = 44
    Width = 521
    Height = 90
    Caption = ' Datos del autorizante'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 10
      Top = 24
      Width = 24
      Height = 19
      Caption = 'Rut'
    end
    object Nombre: TLabel
      Left = 146
      Top = 24
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object TLabel
      Left = 10
      Top = 61
      Width = 65
      Height = 19
      Caption = 'Direcci'#243'n'
    end
    object rutpadre: TEdit
      Tag = 1
      Left = 37
      Top = 21
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
      Top = 21
      Width = 305
      Height = 27
      TabOrder = 1
    end
    object addresspadre: TEdit
      Tag = 1
      Left = 80
      Top = 58
      Width = 432
      Height = 27
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox [6]
    Left = 15
    Top = 135
    Width = 521
    Height = 310
    Caption = 'Datos de autorizaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label5: TLabel
      Left = 11
      Top = 19
      Width = 36
      Height = 19
      Caption = 'Hijos'
    end
    object direc: TLabel
      Left = 11
      Top = 111
      Width = 110
      Height = 19
      Caption = 'Pais Autorizado'
    end
    object Label6: TLabel
      Left = 11
      Top = 173
      Width = 114
      Height = 19
      Caption = 'Periodo de viaje'
    end
    object Label7: TLabel
      Left = 376
      Top = 173
      Width = 107
      Height = 19
      Caption = 'Fecha de salida'
    end
    object pais: TEdit
      Left = 11
      Top = 136
      Width = 501
      Height = 27
      TabOrder = 1
    end
    object hijos: TMemo
      Left = 11
      Top = 45
      Width = 502
      Height = 63
      TabOrder = 0
    end
    object periodo: TEdit
      Left = 11
      Top = 198
      Width = 350
      Height = 27
      TabOrder = 2
    end
    object fechasalida: TDateTimePicker
      Tag = 99
      Left = 376
      Top = 198
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
      Height = 78
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
        Tag = 2
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
        Tag = 2
        Left = 221
        Top = 34
        Width = 273
        Height = 27
        TabOrder = 1
      end
    end
  end
  inherited gboleta: TButton
    Top = 454
    TabOrder = 4
    ExplicitTop = 454
  end
  inherited rutfind: TFDQuery
    Left = 424
    Top = 435
  end
  inherited queryNotaria: TFDQuery
    Top = 427
  end
  inherited qrysave: TFDQuery
    Left = 304
    Top = 432
  end
end
