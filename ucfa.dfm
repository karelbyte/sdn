inherited fcfa: Tfcfa
  Tag = 1
  Caption = 'Certificaci'#243'n de foto abierta'
  ClientHeight = 408
  ExplicitWidth = 560
  ExplicitHeight = 436
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 332
    ExplicitHeight = 332
  end
  inherited bcerrar: TButton
    Top = 375
    TabOrder = 5
    ExplicitTop = 375
  end
  inherited bimprimir: TButton
    Top = 375
    TabOrder = 3
    ExplicitTop = 375
  end
  inherited gboleta: TButton
    Top = 375
    TabOrder = 4
    ExplicitTop = 375
  end
  object GroupBox2: TGroupBox [6]
    Left = 16
    Top = 45
    Width = 521
    Height = 65
    Caption = ' Datos del requiriente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
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
  end
  object GroupBox3: TGroupBox [7]
    Left = 16
    Top = 109
    Width = 521
    Height = 244
    Caption = ' Datos de certificaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label5: TLabel
      Left = 471
      Top = 27
      Width = 41
      Height = 19
      Caption = 'Horas'
    end
    object domicilio: TLabeledEdit
      Left = 12
      Top = 50
      Width = 262
      Height = 27
      EditLabel.Width = 66
      EditLabel.Height = 19
      EditLabel.Caption = 'Domicilio'
      TabOrder = 0
    end
    object marca: TLabeledEdit
      Left = 12
      Top = 152
      Width = 262
      Height = 27
      EditLabel.Width = 41
      EditLabel.Height = 19
      EditLabel.Caption = 'Marca'
      TabOrder = 6
    end
    object nmotor: TLabeledEdit
      Left = 12
      Top = 205
      Width = 262
      Height = 27
      EditLabel.Width = 66
      EditLabel.Height = 19
      EditLabel.Caption = 'N* Motor'
      TabOrder = 8
    end
    object year: TLabeledEdit
      Left = 424
      Top = 101
      Width = 86
      Height = 27
      Alignment = taRightJustify
      EditLabel.Width = 29
      EditLabel.Height = 19
      EditLabel.Caption = 'A'#241'o'
      TabOrder = 5
      OnKeyPress = yearKeyPress
    end
    object Modelo: TLabeledEdit
      Left = 280
      Top = 205
      Width = 231
      Height = 27
      EditLabel.Width = 51
      EditLabel.Height = 19
      EditLabel.Caption = 'Modelo'
      TabOrder = 9
    end
    object Color: TLabeledEdit
      Left = 280
      Top = 101
      Width = 138
      Height = 27
      EditLabel.Width = 38
      EditLabel.Height = 19
      EditLabel.Caption = 'Color'
      TabOrder = 4
    end
    object Patente: TLabeledEdit
      Left = 280
      Top = 152
      Width = 232
      Height = 27
      EditLabel.Width = 77
      EditLabel.Height = 19
      EditLabel.Caption = 'N* Patente'
      TabOrder = 7
    end
    object tvehiculo: TLabeledEdit
      Left = 12
      Top = 101
      Width = 262
      Height = 27
      EditLabel.Width = 97
      EditLabel.Height = 19
      EditLabel.Caption = 'Tipo Vehiculo'
      TabOrder = 3
    end
    object horas: TDateTimePicker
      Tag = 99
      Left = 384
      Top = 50
      Width = 128
      Height = 27
      Date = 43005.828877303240000000
      Time = 43005.828877303240000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 2
    end
    object cfotos: TLabeledEdit
      Left = 280
      Top = 50
      Width = 98
      Height = 27
      Alignment = taRightJustify
      EditLabel.Width = 80
      EditLabel.Height = 19
      EditLabel.Caption = 'Cant. Fotos'
      TabOrder = 1
      OnKeyPress = cfotosKeyPress
    end
  end
  inherited rutfind: TFDQuery
    Top = 374
  end
  inherited queryNotaria: TFDQuery
    Top = 374
  end
  inherited qrysave: TFDQuery
    Top = 374
  end
end
