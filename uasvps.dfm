inherited fasvps: Tfasvps
  Tag = 3
  Caption = 'Autorizaci'#243'n Sacar Vehiculo del Pais Sociedad'
  ClientHeight = 636
  ClientWidth = 552
  ExplicitTop = -80
  ExplicitWidth = 558
  ExplicitHeight = 664
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 561
    ExplicitHeight = 561
  end
  inherited bcerrar: TButton
    Top = 604
    TabOrder = 7
    ExplicitTop = 604
  end
  inherited bimprimir: TButton
    Top = 604
    TabOrder = 5
    ExplicitTop = 604
  end
  object GroupBox1: TGroupBox [5]
    Left = 15
    Top = 48
    Width = 521
    Height = 86
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
      Top = 22
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
    Top = 220
    Width = 521
    Height = 65
    Caption = ' Datos del autorizado '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
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
    object rutautorizado: TEdit
      Tag = 3
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
      Tag = 3
      Left = 208
      Top = 29
      Width = 305
      Height = 27
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox [7]
    Left = 15
    Top = 286
    Width = 521
    Height = 305
    Caption = ' Datos del vehiculo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
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
  object GroupBox4: TGroupBox [8]
    Left = 15
    Top = 133
    Width = 521
    Height = 87
    Caption = ' Datos del representado '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label6: TLabel
      Left = 8
      Top = 26
      Width = 24
      Height = 19
      Caption = 'Rut'
    end
    object Label7: TLabel
      Left = 146
      Top = 26
      Width = 57
      Height = 19
      Caption = 'Nombre'
    end
    object TLabel
      Left = 10
      Top = 58
      Width = 74
      Height = 19
      Caption = 'Personeria'
    end
    object rutrepresentado: TEdit
      Tag = 2
      Left = 37
      Top = 23
      Width = 103
      Height = 27
      TabOrder = 0
      OnEnter = rutrepresentadoEnter
      OnExit = rutrepresentadoExit
      OnKeyPress = rutrepresentadoKeyPress
    end
    object namerepresentado: TEdit
      Tag = 2
      Left = 209
      Top = 23
      Width = 305
      Height = 27
      TabOrder = 1
    end
    object personeria: TEdit
      Tag = 2
      Left = 90
      Top = 55
      Width = 422
      Height = 27
      TabOrder = 2
    end
  end
  inherited gboleta: TButton
    Left = 101
    Top = 604
    TabOrder = 6
    ExplicitLeft = 101
    ExplicitTop = 604
  end
  inherited rutfind: TFDQuery
    Top = 551
  end
  inherited queryNotaria: TFDQuery
    Top = 543
  end
end
