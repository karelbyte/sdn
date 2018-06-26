inherited fcpn: Tfcpn
  Tag = 2
  ClientHeight = 620
  ClientWidth = 552
  ExplicitTop = -42
  ExplicitWidth = 558
  ExplicitHeight = 648
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 546
    ExplicitHeight = 546
  end
  inherited bcerrar: TButton
    Top = 589
    TabOrder = 7
    ExplicitTop = 589
  end
  inherited bimprimir: TButton
    Top = 589
    TabOrder = 5
    ExplicitTop = 589
  end
  inherited gboleta: TButton
    Top = 589
    TabOrder = 6
    ExplicitTop = 589
  end
  object GroupBox1: TGroupBox [6]
    Left = 15
    Top = 40
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
    Top = 125
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
  object GroupBox3: TGroupBox [8]
    Left = 15
    Top = 212
    Width = 521
    Height = 279
    Caption = ' Datos del inmueble'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object direcInmueble: TLabeledEdit
      Left = 12
      Top = 43
      Width = 499
      Height = 27
      EditLabel.Width = 65
      EditLabel.Height = 19
      EditLabel.Caption = 'Direcci'#243'n'
      TabOrder = 0
    end
    object deslindenorte: TLabeledEdit
      Left = 12
      Top = 93
      Width = 253
      Height = 27
      EditLabel.Width = 102
      EditLabel.Height = 19
      EditLabel.Caption = 'Deslinde norte'
      TabOrder = 1
    end
    object deslindeoriente: TLabeledEdit
      Left = 12
      Top = 144
      Width = 253
      Height = 27
      EditLabel.Width = 112
      EditLabel.Height = 19
      EditLabel.Caption = 'Seslinde oriente'
      TabOrder = 3
    end
    object fojas: TLabeledEdit
      Left = 12
      Top = 195
      Width = 253
      Height = 27
      EditLabel.Width = 37
      EditLabel.Height = 19
      EditLabel.Caption = 'Fojas'
      TabOrder = 5
    end
    object deslindeponiente: TLabeledEdit
      Left = 271
      Top = 144
      Width = 240
      Height = 27
      EditLabel.Width = 126
      EditLabel.Height = 19
      EditLabel.Caption = 'Deslinde poniente'
      TabOrder = 4
    end
    object numero: TLabeledEdit
      Left = 271
      Top = 195
      Width = 242
      Height = 27
      EditLabel.Width = 57
      EditLabel.Height = 19
      EditLabel.Caption = 'Numero'
      TabOrder = 6
    end
    object deslindesur: TLabeledEdit
      Left = 271
      Top = 93
      Width = 241
      Height = 27
      EditLabel.Width = 87
      EditLabel.Height = 19
      EditLabel.Caption = 'Deslinde sur'
      TabOrder = 2
    end
    object registro: TLabeledEdit
      Left = 12
      Top = 246
      Width = 117
      Height = 27
      EditLabel.Width = 110
      EditLabel.Height = 19
      EditLabel.Caption = 'A'#241'o de registro'
      TabOrder = 7
    end
    object concervador: TLabeledEdit
      Left = 271
      Top = 246
      Width = 242
      Height = 27
      EditLabel.Width = 89
      EditLabel.Height = 19
      EditLabel.Caption = 'Concervador'
      TabOrder = 8
    end
  end
  object GroupBox2: TGroupBox [9]
    Left = 14
    Top = 492
    Width = 521
    Height = 82
    Caption = 'Plazo del comodato'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label3: TLabel
      Left = 8
      Top = 22
      Width = 122
      Height = 19
      Caption = 'Cantidad de a'#241'os'
    end
    object Label4: TLabel
      Left = 184
      Top = 20
      Width = 82
      Height = 19
      Caption = 'Fecha inicio'
    end
    object Label5: TLabel
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
      OnKeyPress = canyearsKeyPress
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
    Top = 588
  end
  inherited queryNotaria: TFDQuery
    Top = 588
  end
  inherited qrysave: TFDQuery
    Top = 588
  end
end
