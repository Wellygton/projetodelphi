object DataModuleUsuario: TDataModuleUsuario
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
    Left = 32
    Top = 32
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Usuarios'
    Left = 120
    Top = 32
    object ADOTable1Cod_User: TAutoIncField
      FieldName = 'Cod_User'
      ReadOnly = True
      DisplayFormat = '0000'
    end
    object ADOTable1Nome_User: TWideStringField
      FieldName = 'Nome_User'
      Size = 50
    end
    object ADOTable1Cpf_User: TWideStringField
      FieldName = 'Cpf_User'
      EditMask = '999.999.999-99'
      Size = 15
    end
    object ADOTable1Login_User: TWideStringField
      FieldName = 'Login_User'
    end
    object ADOTable1Senha_User: TWideStringField
      FieldName = 'Senha_User'
    end
    object ADOTable1Acesso_User: TWideStringField
      FieldName = 'Acesso_User'
      Size = 10
    end
  end
end
