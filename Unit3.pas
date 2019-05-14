unit Unit3;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdmlogin = class(TDataModule)
    adologin: TADOConnection;
    adouser: TADOQuery;
    adouserCod_User: TAutoIncField;
    adouserNome_User: TWideStringField;
    adouserCpf_User: TWideStringField;
    adouserLogin_User: TWideStringField;
    adouserSenha_User: TWideStringField;
    adouserAcesso_User: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmlogin: Tdmlogin;

implementation

{$R *.dfm}

end.
