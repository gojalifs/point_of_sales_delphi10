object DM: TDM
  OldCreateOrder = False
  Height = 302
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'SERVER=DESKTOP-PFO3J3K\SQLEXPRESS'
      'User_Name=Fajar'
      'Password=123'
      'ApplicationName=Architect'
      'Workstation=DESKTOP-PFO3J3K'
      'MARS=yes'
      'OSAuthent=No'
      'DATABASE=POS'
      'DriverID=mssQL')
    Connected = True
    LoginPrompt = False
    Left = 104
    Top = 72
  end
  object FDStoredProcPO: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'POS.dbo.GetNumberSequence'
    Left = 248
    Top = 72
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@Param'
        DataType = ftString
        ParamType = ptInput
        Size = 60
      end>
  end
  object FDStoredProcSO: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'POS.dbo.GetNumberSequence'
    Left = 368
    Top = 72
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@Param'
        DataType = ftString
        ParamType = ptInput
        Size = 60
      end>
  end
  object FDQueryGetRecordId: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from getrecordid')
    Left = 104
    Top = 184
  end
  object FDQuGlobal: TFDQuery
    Connection = FDConnection1
    Left = 224
    Top = 176
  end
  object FDQuGlobal2: TFDQuery
    Connection = FDConnection1
    Left = 352
    Top = 176
  end
end
