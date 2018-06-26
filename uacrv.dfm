inherited facrv: Tfacrv
  Caption = 'Autorizaciones'
  ClientHeight = 449
  ExplicitWidth = 560
  ExplicitHeight = 477
  PixelsPerInch = 96
  TextHeight = 19
  inherited Label1: TLabel
    Left = 378
    ExplicitLeft = 378
  end
  inherited Bevel1: TBevel
    Top = 35
    Height = 379
    ExplicitTop = 35
    ExplicitHeight = 379
  end
  inherited bcerrar: TButton
    Top = 418
    TabOrder = 5
    ExplicitTop = 418
  end
  inherited bimprimir: TButton
    Top = 418
    TabOrder = 3
    ExplicitTop = 418
  end
  object GroupBox3: TGroupBox [5]
    Left = 15
    Top = 210
    Width = 521
    Height = 196
    Caption = ' Datos del trasladado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label5: TLabel
      Left = 11
      Top = 27
      Width = 166
      Height = 19
      Caption = 'Nombre del cementerio'
    end
    object Label6: TLabel
      Left = 11
      Top = 91
      Width = 146
      Height = 19
      Caption = 'Nombre del fallecido'
    end
    object erf: TLabel
      Left = 11
      Top = 144
      Width = 132
      Height = 19
      Caption = 'Lugar de sepultura'
    end
    object Label3: TLabel
      Left = 376
      Top = 91
      Width = 134
      Height = 19
      Caption = 'Fecha fallecimiento'
    end
    object cementerio: TEdit
      Left = 11
      Top = 52
      Width = 502
      Height = 27
      TabOrder = 0
    end
    object fallecido: TEdit
      Left = 11
      Top = 110
      Width = 350
      Height = 27
      TabOrder = 1
    end
    object lugarcep: TEdit
      Left = 11
      Top = 163
      Width = 502
      Height = 27
      TabOrder = 3
    end
    object fechafallecido: TDateTimePicker
      Tag = 99
      Left = 375
      Top = 110
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
      TabOrder = 2
    end
  end
  object GroupBox1: TGroupBox [6]
    Left = 15
    Top = 39
    Width = 521
    Height = 172
    Caption = 'Datos de los autorizantes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Nombre: TLabel
      Left = 11
      Top = 22
      Width = 88
      Height = 19
      Caption = 'Autorizantes'
    end
    object direc: TLabel
      Left = 10
      Top = 142
      Width = 65
      Height = 19
      Caption = 'Direcci'#243'n'
    end
    object addressautorizante: TEdit
      Left = 80
      Top = 139
      Width = 432
      Height = 27
      TabOrder = 1
    end
    object nameautorizante: TMemo
      Left = 11
      Top = 44
      Width = 502
      Height = 89
      TabOrder = 0
    end
  end
  inherited gboleta: TButton
    Top = 418
    TabOrder = 4
    ExplicitTop = 418
  end
  inherited rutfind: TFDQuery
    Top = 414
  end
  inherited queryNotaria: TFDQuery
    Top = 406
  end
  inherited qrysave: TFDQuery
    Top = 419
  end
end
