inherited fctn: Tfctn
  Tag = 1
  Caption = 'fctn'
  ClientHeight = 445
  ExplicitWidth = 560
  ExplicitHeight = 473
  PixelsPerInch = 96
  TextHeight = 19
  inherited Bevel1: TBevel
    Height = 369
    ExplicitHeight = 369
  end
  inherited bcerrar: TButton
    Top = 412
    TabOrder = 5
    ExplicitTop = 412
  end
  inherited bimprimir: TButton
    Top = 412
    TabOrder = 3
    ExplicitTop = 412
  end
  inherited gboleta: TButton
    Top = 412
    TabOrder = 4
    ExplicitTop = 412
  end
  object GroupBox2: TGroupBox [6]
    Left = 16
    Top = 38
    Width = 521
    Height = 83
    Caption = 'Datos Empleador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TLabel
      Left = 9
      Top = 53
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
    object Label5: TLabel
      Left = 8
      Top = 24
      Width = 22
      Height = 18
      Caption = 'Rut'
    end
    object Label8: TLabel
      Left = 146
      Top = 24
      Width = 52
      Height = 18
      Caption = 'Nombre'
    end
    object addressarrendador: TEdit
      Tag = 1
      Left = 72
      Top = 50
      Width = 441
      Height = 26
      TabOrder = 2
    end
    object rutarrendador: TEdit
      Tag = 1
      Left = 37
      Top = 21
      Width = 103
      Height = 26
      TabOrder = 0
      OnEnter = rutarrendadorEnter
      OnExit = rutarrendadorExit
      OnKeyPress = rutarrendadorKeyPress
    end
    object namearrendador: TEdit
      Tag = 1
      Left = 208
      Top = 21
      Width = 305
      Height = 26
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox [7]
    Left = 15
    Top = 121
    Width = 520
    Height = 274
    Caption = 'Datos de trabajador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 353
      Top = 71
      Width = 113
      Height = 18
      Caption = 'Fecha nacimiento'
    end
    object nombre: TLabeledEdit
      Left = 7
      Top = 40
      Width = 339
      Height = 26
      EditLabel.Width = 52
      EditLabel.Height = 18
      EditLabel.Caption = 'Nombre'
      TabOrder = 0
    end
    object nacionalidad: TLabeledEdit
      Left = 352
      Top = 40
      Width = 162
      Height = 26
      EditLabel.Width = 79
      EditLabel.Height = 18
      EditLabel.Caption = 'Nacionalidad'
      TabOrder = 1
    end
    object domicilio: TLabeledEdit
      Left = 8
      Top = 90
      Width = 338
      Height = 26
      EditLabel.Width = 54
      EditLabel.Height = 18
      EditLabel.Caption = 'Domicilio'
      TabOrder = 2
    end
    object fnacimiento: TDateTimePicker
      Tag = 99
      Left = 352
      Top = 90
      Width = 161
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
    object passaporte: TLabeledEdit
      Left = 8
      Top = 139
      Width = 274
      Height = 26
      EditLabel.Width = 65
      EditLabel.Height = 18
      EditLabel.Caption = 'Pasaporte'
      TabOrder = 4
    end
    object estadocivil: TLabeledEdit
      Left = 288
      Top = 139
      Width = 225
      Height = 26
      EditLabel.Width = 70
      EditLabel.Height = 18
      EditLabel.Caption = 'Estado civil'
      TabOrder = 5
    end
    object trabajodes: TLabeledEdit
      Left = 8
      Top = 189
      Width = 274
      Height = 26
      EditLabel.Width = 150
      EditLabel.Height = 18
      EditLabel.Caption = 'Trabajo a desempe'#241'ar'
      TabOrder = 6
    end
    object domiciliot: TLabeledEdit
      Left = 288
      Top = 189
      Width = 225
      Height = 26
      EditLabel.Width = 105
      EditLabel.Height = 18
      EditLabel.Caption = 'Domicilio trabajo'
      TabOrder = 7
    end
    object sueldo: TLabeledEdit
      Left = 9
      Top = 237
      Width = 161
      Height = 26
      EditLabel.Width = 42
      EditLabel.Height = 18
      EditLabel.Caption = 'Sueldo'
      TabOrder = 8
    end
    object diapago: TLabeledEdit
      Left = 176
      Top = 237
      Width = 170
      Height = 26
      EditLabel.Width = 78
      EditLabel.Height = 18
      EditLabel.Caption = 'Dia de pago'
      TabOrder = 9
    end
    object periodo: TLabeledEdit
      Left = 352
      Top = 237
      Width = 161
      Height = 26
      EditLabel.Width = 47
      EditLabel.Height = 18
      EditLabel.Caption = 'Periodo'
      TabOrder = 10
    end
  end
  inherited rutfind: TFDQuery
    Top = 411
  end
  inherited queryNotaria: TFDQuery
    Top = 411
  end
  inherited qrysave: TFDQuery
    Top = 411
  end
end
