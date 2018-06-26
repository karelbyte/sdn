object fadminboleta: Tfadminboleta
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Administrador de boletas'
  ClientHeight = 444
  ClientWidth = 894
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 7
    Top = 4
    Width = 62
    Height = 19
    Caption = 'Usuario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 279
    Top = 4
    Width = 97
    Height = 19
    Caption = 'Fecha Inicio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 436
    Top = 4
    Width = 91
    Height = 19
    Caption = 'Fecha Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 8
    Top = 351
    Width = 878
    Height = 58
    Shape = bsFrame
  end
  object Label4: TLabel
    Left = 32
    Top = 371
    Width = 80
    Height = 18
    Caption = 'CANTIDAD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 208
    Top = 371
    Width = 49
    Height = 18
    Caption = 'TOTAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 275
    Top = 371
    Width = 232
    Height = 17
    DataField = 'TOTAL'
    DataSource = dsdatos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 118
    Top = 371
    Width = 65
    Height = 17
    DataField = 'CANT'
    DataSource = dsdatos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 264
    Top = 371
    Width = 10
    Height = 18
    Caption = '$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object usuarios: TDBLookupComboBox
    Tag = 99
    Left = 7
    Top = 24
    Width = 257
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'id'
    ListField = 'names'
    ListSource = dsusers
    ParentFont = False
    TabOrder = 0
    OnClick = usuariosClick
  end
  object fechaini: TDateTimePicker
    Tag = 99
    Left = 279
    Top = 24
    Width = 138
    Height = 27
    Date = 43005.828877303240000000
    Time = 43005.828877303240000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnChange = fechainiChange
  end
  object fechafin: TDateTimePicker
    Tag = 99
    Left = 436
    Top = 24
    Width = 141
    Height = 27
    Date = 43005.828877303240000000
    Time = 43005.828877303240000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnChange = fechafinChange
  end
  object all: TCheckBox
    Left = 607
    Top = 24
    Width = 97
    Height = 17
    Caption = 'Todos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = allClick
  end
  object visor: TDBGrid
    Left = 7
    Top = 54
    Width = 878
    Height = 291
    DataSource = dsboletas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'EMIT'
        Title.Caption = 'Fecha'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAMES'
        Title.Caption = 'Usuarios'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TICKET'
        Title.Alignment = taRightJustify
        Title.Caption = 'Boleta'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRICE'
        Title.Alignment = taRightJustify
        Title.Caption = 'Precio'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TYPEDOC'
        Title.Caption = 'Documento'
        Width = 220
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 8
    Top = 415
    Width = 99
    Height = 25
    Caption = 'Modificar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button1Click
  end
  object bEliminar: TButton
    Left = 113
    Top = 415
    Width = 96
    Height = 25
    Caption = 'Eliminar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = bEliminarClick
  end
  object Button3: TButton
    Left = 808
    Top = 415
    Width = 78
    Height = 25
    Caption = 'Cerrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 399
    Top = 415
    Width = 98
    Height = 25
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = Button4Click
  end
  object qryboletas: TFDQuery
    Connection = dm.conect
    SQL.Strings = (
      
        'select t.*, u.names from tickets t inner join users u on t.user_' +
        'id = u.id'
      'where t.user_id = :iduser and emit between :fini and :ffin')
    Left = 710
    Top = 18
    ParamData = <
      item
        Name = 'IDUSER'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FINI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FFIN'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object qryboletasID: TLargeintField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryboletasUSER_ID: TLargeintField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
    end
    object qryboletasTICKET: TIntegerField
      FieldName = 'TICKET'
      Origin = 'TICKET'
    end
    object qryboletasPRICE: TIntegerField
      FieldName = 'PRICE'
      Origin = 'PRICE'
      DisplayFormat = '$##0,000'
    end
    object qryboletasTYPEDOC: TStringField
      FieldName = 'TYPEDOC'
      Origin = 'TYPEDOC'
      Size = 250
    end
    object qryboletasEMIT: TDateField
      FieldName = 'EMIT'
      Origin = 'EMIT'
    end
    object qryboletasNAMES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAMES'
      Origin = '"NAMES"'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
  end
  object dsboletas: TDataSource
    DataSet = qryboletas
    Left = 776
    Top = 24
  end
  object dsusers: TDataSource
    DataSet = qryusers
    Left = 824
    Top = 120
  end
  object qryusers: TFDQuery
    Connection = dm.conect
    SQL.Strings = (
      'select id, names from users')
    Left = 816
    Top = 184
    object qryusersID: TLargeintField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryusersNAMES: TStringField
      FieldName = 'NAMES'
      Origin = '"NAMES"'
      Size = 255
    end
  end
  object qryall: TFDQuery
    Connection = dm.conect
    SQL.Strings = (
      
        'select t.*, u.names from tickets t inner join users u on t.user_' +
        'id = u.id'
      'where emit between :fini and :ffin'
      'order by t.user_id')
    Left = 712
    Top = 88
    ParamData = <
      item
        Name = 'FINI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FFIN'
        DataType = ftDate
        ParamType = ptInput
      end>
    object qryallID: TLargeintField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryallUSER_ID: TLargeintField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
    end
    object qryallTICKET: TIntegerField
      FieldName = 'TICKET'
      Origin = 'TICKET'
      DisplayFormat = '$##0,000'
    end
    object qryallPRICE: TIntegerField
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object qryallTYPEDOC: TStringField
      FieldName = 'TYPEDOC'
      Origin = 'TYPEDOC'
      Size = 250
    end
    object qryallEMIT: TDateField
      FieldName = 'EMIT'
      Origin = 'EMIT'
    end
    object qryallNAMES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAMES'
      Origin = '"NAMES"'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
  end
  object qrydatos: TFDQuery
    Connection = dm.conect
    SQL.Strings = (
      
        'select count(id) as cant, sum(price) as total from TICKETS where' +
        ' user_id = :user'
      'and emit between :fini and :ffin')
    Left = 712
    Top = 184
    ParamData = <
      item
        Name = 'USER'
        DataType = ftInteger
        FDDataType = dtInt32
        ParamType = ptInput
        Value = 0
      end
      item
        Name = 'FINI'
        DataType = ftDate
        FDDataType = dtDate
        ParamType = ptInput
      end
      item
        Name = 'FFIN'
        DataType = ftDate
        FDDataType = dtDate
        ParamType = ptInput
      end>
    object qrydatosCANT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANT'
      Origin = 'CANT'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrydatosTOTAL: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '##0,000'
    end
  end
  object dsdatos: TDataSource
    DataSet = qrydatos
    Left = 664
    Top = 184
  end
  object qdatosall: TFDQuery
    Connection = dm.conect
    SQL.Strings = (
      
        'select count(id) as cant, sum(price) as total from TICKETS where' +
        ' emit between :fini and :ffin')
    Left = 720
    Top = 248
    ParamData = <
      item
        Name = 'FINI'
        DataType = ftDate
        FDDataType = dtDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FFIN'
        DataType = ftDate
        FDDataType = dtDate
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANT'
      Origin = 'CANT'
      ProviderFlags = []
      ReadOnly = True
    end
    object LargeintField1: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '##0,000'
    end
  end
  object dbreporte: TfrxDBDataset
    UserName = 'dbreporte'
    CloseDataSource = False
    DataSet = qryboletas
    BCDToCurrency = False
    Left = 592
    Top = 392
  end
  object reporte: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43070.762452800900000000
    ReportOptions.LastChange = 43070.909219305560000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 392
    Datasets = <
      item
        DataSet = dbdatos
        DataSetName = 'dbdatos'
      end
      item
        DataSet = dbreporte
        DataSetName = 'dbreporte'
      end>
    Variables = <
      item
        Name = ' variable'
        Value = Null
      end
      item
        Name = 'finicio'
        Value = ''
      end
      item
        Name = 'ffinal'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 117.165430000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 8.338590000000000000
          Top = 5.000000000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'BOLETAS EMITIDAS')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 120.944960000000000000
          Top = 98.267780000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Documento')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 8.338590000000000000
          Top = 98.267780000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 385.512060000000000000
          Top = 98.267780000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Boleta')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 563.149970000000000000
          Top = 98.267780000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Precio')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 8.338590000000000000
          Top = 49.133889999999990000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Usuario [dbreporte."NAMES"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 116.385900000000000000
          Width = 744.567410000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 536.693260000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Fecha Inicial: [finicio]')
        end
        object Memo14: TfrxMemoView
          Left = 536.693260000000000000
          Top = 37.795300000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Fecha Final: [ffinal]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 196.535560000000000000
        Width = 740.409927000000000000
        DataSet = dbreporte
        DataSetName = 'dbreporte'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 120.944960000000000000
          Top = 3.000000000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbreporte."TYPEDOC"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 8.338590000000000000
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[dbreporte."EMIT"]')
        end
        object Memo7: TfrxMemoView
          Left = 385.512060000000000000
          Top = 3.779529999999994000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbreporte."TICKET"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 563.149970000000000000
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '$#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbreporte."PRICE"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 279.685220000000000000
        Width = 740.409927000000000000
        object Memo11: TfrxMemoView
          Left = 321.921460000000000000
          Top = 7.779530000000023000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cantidad [dbdatos."CANT"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 527.472790000000000000
          Top = 7.779530000000023000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '$#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total [dbdatos."TOTAL"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Color = 15000804
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 336.378170000000000000
        Width = 740.409927000000000000
        object Memo15: TfrxMemoView
          Left = 642.520100000000000000
          Top = 3.779530000000022000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Pag [Page]')
        end
      end
    end
  end
  object dbdatos: TfrxDBDataset
    UserName = 'dbdatos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CANT=CANT'
      'TOTAL=TOTAL')
    DataSet = qrydatos
    BCDToCurrency = False
    Left = 648
    Top = 392
  end
  object qrykill: TFDQuery
    Connection = dm.conect
    SQL.Strings = (
      'delete from tickets where id = :id')
    Left = 728
    Top = 384
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
