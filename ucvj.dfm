inherited fcvj: Tfcvj
  Tag = 3
  Caption = 'Comodato vehiculo natural'
  ClientHeight = 654
  ClientWidth = 551
  ExplicitTop = -76
  ExplicitWidth = 557
  ExplicitHeight = 682
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 581
    ExplicitHeight = 581
  end
  inherited bcerrar: TButton
    Top = 623
    TabOrder = 8
    ExplicitTop = 623
  end
  inherited bimprimir: TButton
    Top = 623
    TabOrder = 6
    ExplicitTop = 623
  end
  inherited gboleta: TButton
    Top = 623
    TabOrder = 7
    ExplicitTop = 623
  end
  object GroupBox1: TGroupBox [6]
    Left = 15
    Top = 38
    Width = 521
    Height = 86
    Caption = ' Datos del comodante'
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
      Left = 9
      Top = 55
      Width = 65
      Height = 19
      Caption = 'Direcci'#243'n'
    end
    object rutcomodante: TEdit
      Tag = 1
      Left = 37
      Top = 22
      Width = 103
      Height = 27
      TabOrder = 0
      OnEnter = rutcomodanteEnter
      OnExit = rutcomodanteExit
      OnKeyPress = rutcomodanteKeyPress
    end
    object namecomodante: TEdit
      Tag = 1
      Left = 208
      Top = 22
      Width = 305
      Height = 27
      TabOrder = 1
    end
    object addresscomodante: TEdit
      Tag = 1
      Left = 80
      Top = 53
      Width = 432
      Height = 27
      TabOrder = 2
    end
  end
  object GroupBox4: TGroupBox [7]
    Left = 15
    Top = 124
    Width = 521
    Height = 87
    Caption = ' Datos del comodatario'
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
      Width = 65
      Height = 19
      Caption = 'Direcci'#243'n'
    end
    object rutcomodatario: TEdit
      Tag = 2
      Left = 37
      Top = 23
      Width = 103
      Height = 27
      TabOrder = 0
      OnEnter = rutcomodatarioEnter
      OnExit = rutcomodatarioExit
      OnKeyPress = rutcomodatarioKeyPress
    end
    object namecomodatario: TEdit
      Tag = 2
      Left = 209
      Top = 23
      Width = 305
      Height = 27
      TabOrder = 1
    end
    object addresscomodatario: TEdit
      Tag = 2
      Left = 80
      Top = 55
      Width = 432
      Height = 27
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox [8]
    Left = 15
    Top = 211
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
  object GroupBox3: TGroupBox [9]
    Left = 15
    Top = 277
    Width = 521
    Height = 252
    Caption = ' Datos del vehiculo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
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
      EditLabel.Width = 102
      EditLabel.Height = 19
      EditLabel.Caption = 'N* Inscripci'#243'n'
      TabOrder = 3
    end
  end
  object GroupBox5: TGroupBox [10]
    Left = 14
    Top = 528
    Width = 521
    Height = 82
    Caption = 'Plazo del comodato'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object Label5: TLabel
      Left = 8
      Top = 22
      Width = 95
      Height = 19
      Caption = 'Renovar cada'
    end
    object Label8: TLabel
      Left = 184
      Top = 20
      Width = 82
      Height = 19
      Caption = 'Fecha inicio'
    end
    object Label9: TLabel
      Left = 352
      Top = 20
      Width = 100
      Height = 19
      Caption = 'Fecha termino'
    end
    object canyears: TEdit
      Tag = 1
      Left = 9
      Top = 45
      Width = 132
      Height = 27
      TabOrder = 0
    end
    object finicio: TDateTimePicker
      Tag = 99
      Left = 184
      Top = 45
      Width = 147
      Height = 27
      Date = 43005.828877303240000000
      Time = 43005.828877303240000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object ftermino: TDateTimePicker
      Tag = 99
      Left = 352
      Top = 45
      Width = 138
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
  end
  inherited rutfind: TFDQuery
    Top = 622
  end
  inherited queryNotaria: TFDQuery
    Top = 622
  end
  inherited qrysave: TFDQuery
    Top = 622
  end
end
