object dmChamado: TdmChamado
  OldCreateOrder = False
  Left = 192
  Top = 117
  Height = 150
  Width = 215
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\FACULDADE\SOFTWA' +
      'RE ORDEM DE SERVI'#199'O\bd\Cadastro.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 48
    Top = 40
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Os'
    Left = 144
    Top = 48
    object ADOTable1NumeroOs: TAutoIncField
      FieldName = 'NumeroOs'
      ReadOnly = True
      DisplayFormat = '0000'
    end
    object ADOTable1TecRes: TIntegerField
      FieldName = 'TecRes'
    end
    object ADOTable1NomeCli: TWideStringField
      FieldName = 'NomeCli'
      Size = 30
    end
    object ADOTable1FoneCli: TIntegerField
      FieldName = 'FoneCli'
    end
    object ADOTable1Equipam: TWideStringField
      FieldName = 'Equipam'
      Size = 30
    end
    object ADOTable1StatusSer: TIntegerField
      FieldName = 'StatusSer'
    end
    object ADOTable1ProbleInfor: TWideStringField
      FieldName = 'ProbleInfor'
      Size = 50
    end
    object ADOTable1ServExe: TWideStringField
      FieldName = 'ServExe'
      Size = 50
    end
    object ADOTable1ValorServ: TIntegerField
      FieldName = 'ValorServ'
      DisplayFormat = 'R$ ###,###,##0.00'
    end
    object ADOTable1ProbleConst: TWideStringField
      FieldName = 'ProbleConst'
      Size = 50
    end
    object ADOTable1Desconto: TIntegerField
      FieldName = 'Desconto'
      DisplayFormat = 'R$ ###,###,##0.00'
    end
    object ADOTable1Total: TIntegerField
      FieldName = 'Total'
      DisplayFormat = 'R$ ###,###,##0.00'
    end
    object ADOTable1PrevEntre: TDateTimeField
      FieldName = 'PrevEntre'
      EditMask = '99/99/9999'
    end
    object ADOTable1DataEntra: TDateTimeField
      FieldName = 'DataEntra'
      EditMask = '99/99/9999'
    end
    object ADOTable1nomeTec: TWideStringField
      FieldName = 'nomeTec'
      Size = 30
    end
    object ADOTable1novofone: TWideStringField
      FieldName = 'novofone'
      EditMask = '(99)9999-9999;1;_'
    end
    object ADOTable1novodesconto: TBCDField
      FieldName = 'novodesconto'
      DisplayFormat = '#0.00,'
      Precision = 19
    end
    object ADOTable1novovalor: TBCDField
      FieldName = 'novovalor'
      DisplayFormat = '#0.00,'
      Precision = 19
    end
    object ADOTable1novototal: TBCDField
      FieldName = 'novototal'
      DisplayFormat = '#0.00,'
      Precision = 19
    end
  end
end
