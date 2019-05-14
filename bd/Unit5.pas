unit Unit5;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdmtec = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable1idTec: TAutoIncField;
    ADOTable1nome: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmtec: Tdmtec;

implementation

{$R *.dfm}

end.
