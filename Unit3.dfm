object dmlogin: Tdmlogin
  OldCreateOrder = False
  Left = 192
  Top = 117
  Height = 150
  Width = 215
  object adologin: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\FACULDADE\SOFTWA' +
      'RE ORDEM DE SERVI'#199'O\bd\Cadastro.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 64
    Top = 24
  end
  object adouser: TADOQuery
    Active = True
    Connection = adologin
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Usuarios')
    Left = 128
    Top = 40
    object adouserCod_User: TAutoIncField
      FieldName = 'Cod_User'
      ReadOnly = True
    end
    object adouserNome_User: TWideStringField
      FieldName = 'Nome_User'
      Size = 50
    end
    object adouserCpf_User: TWideStringField
      FieldName = 'Cpf_User'
      Size = 15
    end
    object adouserLogin_User: TWideStringField
      FieldName = 'Login_User'
    end
    object adouserSenha_User: TWideStringField
      FieldName = 'Senha_User'
    end
    object adouserAcesso_User: TWideStringField
      FieldName = 'Acesso_User'
      Size = 255
    end
  end
end
