inherited fasvp: Tfasvp
  Tag = 2
  Caption = 'Autorizaci'#243'n Sacar Vehiculo del Pais '
  ClientHeight = 544
  ExplicitWidth = 560
  ExplicitHeight = 572
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 468
    ExplicitHeight = 468
  end
  inherited bcerrar: TButton
    Top = 511
    TabOrder = 6
    ExplicitTop = 511
  end
  inherited bimprimir: TButton
    Top = 511
    TabOrder = 4
    ExplicitTop = 511
  end
  object GroupBox1: TGroupBox [5]
    Left = 15
    Top = 48
    Width = 521
    Height = 85
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
      Top = 25
      Width = 24
      Height = 19
      Caption = 'Rut'
    end
    object Nombre: TLabel
      Left = 146
      Top = 25
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object TLabel
      Left = 10
      Top = 56
      Width = 65
      Height = 19
      Caption = 'Direcci'#243'n'
    end
    object rutautorizante: TEdit
      Tag = 1
      Left = 37
      Top = 23
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
      Top = 22
      Width = 305
      Height = 27
      TabOrder = 1
    end
    object addressautorizante: TEdit
      Tag = 1
      Left = 80
      Top = 53
      Width = 432
      Height = 27
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox [6]
    Left = 15
    Top = 133
    Width = 521
    Height = 56
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
      Top = 25
      Width = 24
      Height = 19
      Caption = 'Rut'
    end
    object Label4: TLabel
      Left = 145
      Top = 25
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object rutautorizado: TEdit
      Tag = 2
      Left = 38
      Top = 22
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
      Top = 22
      Width = 305
      Height = 27
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox [7]
    Left = 15
    Top = 188
    Width = 521
    Height = 309
    Caption = ' Datos del vehiculo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label5: TLabel
      Left = 376
      Top = 248
      Width = 85
      Height = 19
      Caption = 'Fecha salida'
    end
    object tipovehiculo: TLabeledEdit
      Left = 12
      Top = 50
      Width = 430
      Height = 27
      EditLabel.Width = 95
      EditLabel.Height = 19
      EditLabel.Caption = 'Tipo vehiculo'
      TabOrder = 0
    end
    object marca: TLabeledEdit
      Left = 12
      Top = 104
      Width = 253
      Height = 27
      EditLabel.Width = 41
      EditLabel.Height = 19
      EditLabel.Caption = 'Marca'
      TabOrder = 2
    end
    object nmotor: TLabeledEdit
      Left = 12
      Top = 157
      Width = 253
      Height = 27
      EditLabel.Width = 66
      EditLabel.Height = 19
      EditLabel.Caption = 'N* Motor'
      TabOrder = 4
    end
    object chasi: TLabeledEdit
      Left = 12
      Top = 217
      Width = 253
      Height = 27
      EditLabel.Width = 70
      EditLabel.Height = 19
      EditLabel.Caption = 'N* Chasis'
      TabOrder = 6
    end
    object year: TLabeledEdit
      Left = 448
      Top = 50
      Width = 63
      Height = 27
      Alignment = taRightJustify
      EditLabel.Width = 29
      EditLabel.Height = 19
      EditLabel.Caption = 'A'#241'o'
      TabOrder = 1
      OnKeyPress = yearKeyPress
    end
    object Modelo: TLabeledEdit
      Left = 271
      Top = 157
      Width = 240
      Height = 27
      EditLabel.Width = 51
      EditLabel.Height = 19
      EditLabel.Caption = 'Modelo'
      TabOrder = 5
    end
    object Color: TLabeledEdit
      Left = 271
      Top = 217
      Width = 242
      Height = 27
      EditLabel.Width = 38
      EditLabel.Height = 19
      EditLabel.Caption = 'Color'
      TabOrder = 7
    end
    object Patente: TLabeledEdit
      Left = 271
      Top = 104
      Width = 241
      Height = 27
      EditLabel.Width = 77
      EditLabel.Height = 19
      EditLabel.Caption = 'N* Patente'
      TabOrder = 3
    end
    object Pais: TLabeledEdit
      Left = 12
      Top = 272
      Width = 253
      Height = 27
      EditLabel.Width = 28
      EditLabel.Height = 19
      EditLabel.Caption = 'Pais'
      TabOrder = 8
    end
    object fechasalida: TDateTimePicker
      Tag = 99
      Left = 376
      Top = 272
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
      TabOrder = 10
    end
    object dias: TLabeledEdit
      Left = 271
      Top = 272
      Width = 98
      Height = 27
      Alignment = taRightJustify
      EditLabel.Width = 58
      EditLabel.Height = 19
      EditLabel.Caption = 'N* dias '
      TabOrder = 9
      OnKeyPress = diasKeyPress
    end
  end
  inherited gboleta: TButton
    Top = 511
    TabOrder = 5
    TabStop = False
    ExplicitTop = 511
  end
  inherited rutfind: TFDQuery
    Top = 507
  end
  inherited queryNotaria: TFDQuery
    Top = 499
  end
end
