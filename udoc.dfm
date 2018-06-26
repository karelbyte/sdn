object fdoc: Tfdoc
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Plantillas de documentos'
  ClientHeight = 461
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 19
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 521
    Height = 417
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = 'No'
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Title.Caption = 'Nombre del la plantilla'
        Width = 500
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 454
    Top = 431
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object querydoc: TFDQuery
    Connection = dm.conect
    SQL.Strings = (
      'select * from docword order by id asc')
    Left = 384
    Top = 24
    object querydocID: TSmallintField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object querydocNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 100
    end
    object querydocDOC: TBlobField
      FieldName = 'DOC'
      Origin = 'DOC'
    end
  end
  object DataSource1: TDataSource
    DataSet = querydoc
    Left = 320
    Top = 24
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    object add: TMenuItem
      Caption = 'A'#241'adir..'
      OnClick = addClick
    end
    object update: TMenuItem
      Caption = 'Actualizar..'
      OnClick = updateClick
    end
    object extrac: TMenuItem
      Caption = 'Extraer doc..'
      OnClick = extracClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Eliminar3: TMenuItem
      Caption = 'Eliminar'
    end
  end
end
