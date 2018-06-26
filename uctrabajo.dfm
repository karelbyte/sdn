inherited fctrabajo: Tfctrabajo
  Tag = 1
  Caption = 'Certificado de trabajo'
  ClientHeight = 360
  ExplicitWidth = 560
  ExplicitHeight = 388
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 284
    ExplicitHeight = 284
  end
  inherited bcerrar: TButton
    Top = 327
    TabOrder = 5
    ExplicitTop = 327
  end
  inherited bimprimir: TButton
    Top = 327
    TabOrder = 3
    ExplicitTop = 327
  end
  inherited gboleta: TButton
    Top = 327
    TabOrder = 4
    ExplicitTop = 327
  end
  object GroupBox1: TGroupBox [6]
    Left = 15
    Top = 48
    Width = 521
    Height = 105
    Caption = ' Datos del Certificante'
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
    Top = 153
    Width = 521
    Height = 152
    Caption = ' Datos del autorizado '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label4: TLabel
      Left = 10
      Top = 36
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object p: TLabel
      Left = 268
      Top = 74
      Width = 54
      Height = 19
      Caption = 'Per'#237'odo'
    end
    object Label3: TLabel
      Left = 335
      Top = 36
      Width = 28
      Height = 19
      Caption = 'Pais'
    end
    object Label5: TLabel
      Left = 27
      Top = 74
      Width = 40
      Height = 19
      Caption = 'Fecha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 30
      Top = 116
      Width = 37
      Height = 19
      Caption = 'Valor'
    end
    object Label7: TLabel
      Left = 253
      Top = 116
      Width = 69
      Height = 19
      Caption = 'Pasaporte'
    end
    object nameautorizado: TEdit
      Left = 73
      Top = 33
      Width = 256
      Height = 27
      TabOrder = 0
    end
    object periodo: TEdit
      Tag = 2
      Left = 328
      Top = 71
      Width = 184
      Height = 27
      TabOrder = 3
    end
    object pais: TEdit
      Left = 369
      Top = 33
      Width = 144
      Height = 27
      TabOrder = 1
    end
    object fechaautorizo: TDateTimePicker
      Tag = 99
      Left = 73
      Top = 71
      Width = 130
      Height = 27
      Date = 43005.828877303240000000
      Time = 43005.828877303240000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object valor: TEdit
      Tag = 2
      Left = 73
      Top = 113
      Width = 168
      Height = 27
      TabOrder = 4
      OnKeyPress = valorKeyPress
    end
    object pasaporte: TEdit
      Tag = 2
      Left = 328
      Top = 113
      Width = 185
      Height = 27
      TabOrder = 5
    end
  end
  inherited rutfind: TFDQuery
    Top = 326
  end
  inherited queryNotaria: TFDQuery
    Top = 326
  end
  inherited qrysave: TFDQuery
    Top = 326
  end
end
