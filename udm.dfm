object dm: Tdm
  OldCreateOrder = False
  Height = 418
  Width = 623
  object conect: TFDConnection
    ConnectionName = 'Firebird2'
    Params.Strings = (
      'DriverID=FBDRIVER')
    LoginPrompt = False
    Left = 40
    Top = 48
  end
  object fdtransac: TFDTransaction
    Connection = conect
    Left = 80
    Top = 48
  end
  object fdlinck: TFDPhysFBDriverLink
    DriverID = 'FBDRIVER'
    VendorLib = 'fbclient.dll'
    Left = 120
    Top = 48
  end
  object fdquery: TFDQuery
    Connection = conect
    Transaction = fdtransac
    SQL.Strings = (
      'select * from users')
    Left = 40
    Top = 136
  end
  object fddialog: TFDGUIxAsyncExecuteDialog
    Provider = 'Forms'
    Left = 232
    Top = 48
  end
  object fdcursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 264
    Top = 48
  end
  object fdqueryUser: TFDQuery
    Connection = conect
    SQL.Strings = (
      'select * from users where nick = :nick and password = :password')
    Left = 96
    Top = 136
    ParamData = <
      item
        Name = 'NICK'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'PASSWORD'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
  end
  object fdqueryAllUser: TFDQuery
    Connection = conect
    SQL.Strings = (
      'select * from users')
    Left = 240
    Top = 144
    object fdqueryAllUserID: TLargeintField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqueryAllUserRUT: TStringField
      FieldName = 'RUT'
      Origin = 'RUT'
    end
    object fdqueryAllUserNAMES: TStringField
      FieldName = 'NAMES'
      Origin = '"NAMES"'
      Size = 255
    end
    object fdqueryAllUserNICK: TStringField
      FieldName = 'NICK'
      Origin = 'NICK'
    end
    object fdqueryAllUserPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Origin = '"PASSWORD"'
    end
    object fdqueryAllUserROLL_ID: TSmallintField
      FieldName = 'ROLL_ID'
      Origin = 'ROLL_ID'
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\sdn\SDN.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FBDRIVER')
    Connected = True
    LoginPrompt = False
    Left = 176
    Top = 360
  end
  object fdqueryAddUser: TFDQuery
    Connection = conect
    SQL.Strings = (
      
        'insert into users (id, rut, names, nick, PASSWORD, roll_id) valu' +
        'es (:id, :rut, :name, :nick, :pass, :rol)')
    Left = 320
    Top = 144
    ParamData = <
      item
        Name = 'ID'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'RUT'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NAME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NICK'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PASS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ROL'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdqueryEditUser: TFDQuery
    Connection = conect
    SQL.Strings = (
      
        'update  users set rut = :rut, names = :name, nick = :nick, PASSW' +
        'ORD = :pass, roll_id = :rol where id = :id')
    Left = 400
    Top = 144
    ParamData = <
      item
        Name = 'RUT'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NAME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NICK'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PASS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ROL'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdqueryKillUser: TFDQuery
    Connection = conect
    SQL.Strings = (
      'delete from users where id = :id')
    Left = 480
    Top = 144
    ParamData = <
      item
        Name = 'ID'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdqueryNotary: TFDQuery
    Connection = conect
    SQL.Strings = (
      'select * from notarys')
    Left = 56
    Top = 280
    object fdqueryNotaryNOTARY: TStringField
      FieldName = 'NOTARY'
      Origin = 'NOTARY'
      Size = 100
    end
    object fdqueryNotaryTITLE: TStringField
      FieldName = 'TITLE'
      Origin = 'TITLE'
      Size = 100
    end
    object fdqueryNotaryADDRESS: TStringField
      FieldName = 'ADDRESS'
      Origin = 'ADDRESS'
      Size = 100
    end
    object fdqueryNotaryPHONE: TStringField
      FieldName = 'PHONE'
      Origin = 'PHONE'
    end
    object fdqueryNotaryCOMUNE: TStringField
      FieldName = 'COMUNE'
      Origin = 'COMUNE'
    end
    object fdqueryNotaryCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Origin = 'COUNTRY'
    end
    object fdqueryNotaryLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
  end
  object fdspnotary: TFDQuery
    Connection = conect
    SQL.Strings = (
      
        'execute procedure PSNOTARY(:OP, :NOTARY, :TITLE, :ADDRESS, :PHON' +
        'E, :COMUNE, :COUNTRY, :LOGO)')
    Left = 120
    Top = 280
    ParamData = <
      item
        Name = 'OP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NOTARY'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TITLE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ADDRESS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PHONE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COMUNE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COUNTRY'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'LOGO'
        DataType = ftBlob
        FDDataType = dtBlob
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdqueryfirm: TFDQuery
    Connection = conect
    SQL.Strings = (
      'select * from VIEWSIGNA (:type, :descrip)')
    Left = 264
    Top = 288
    ParamData = <
      item
        Name = 'TYPE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DESCRIP'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end>
    object fdqueryfirmID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object fdqueryfirmTYPE_ID: TSmallintField
      FieldName = 'TYPE_ID'
      Origin = 'TYPE_ID'
    end
    object fdqueryfirmRUT: TStringField
      FieldName = 'RUT'
      Origin = 'RUT'
    end
    object fdqueryfirmNAMES: TStringField
      DisplayWidth = 200
      FieldName = 'NAMES'
      Origin = '"NAMES"'
      Size = 200
    end
    object fdqueryfirmADDRESS: TStringField
      FieldName = 'ADDRESS'
      Origin = 'ADDRESS'
      Size = 200
    end
    object fdqueryfirmPHONE: TStringField
      FieldName = 'PHONE'
      Origin = 'PHONE'
    end
    object fdqueryfirmOBESER: TStringField
      FieldName = 'OBESER'
      Origin = 'OBESER'
      Size = 500
    end
    object fdqueryfirmFIRM: TBlobField
      FieldName = 'FIRM'
      Origin = 'FIRM'
    end
    object fdqueryfirmSIGNA: TStringField
      FieldName = 'SIGNA'
      Origin = 'SIGNA'
    end
    object fdqueryfirmDATE: TDateField
      FieldName = 'DATE'
      Origin = '"DATE"'
    end
  end
  object fdfirms: TFDQuery
    Connection = conect
    SQL.Strings = (
      
        'execute procedure SPSIGNATURE(:OP, :ID, :TYPE_ID, :RUT, :NAMES, ' +
        ':ADDRESS, :PHONE, :OBESER, :FIRM, :DATE)')
    Left = 320
    Top = 288
    ParamData = <
      item
        Name = 'OP'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TYPE_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'RUT'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NAMES'
        IsCaseSensitive = True
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ADDRESS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PHONE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'OBESER'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FIRM'
        DataType = ftBlob
        FDDataType = dtBlob
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATE'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object killfirm: TFDQuery
    Connection = conect
    SQL.Strings = (
      'delete from signatures where id = :id')
    Left = 376
    Top = 288
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object BalloonHint1: TBalloonHint
    Left = 384
    Top = 56
  end
end
