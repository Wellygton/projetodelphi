unit Unit4;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmChamado = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable1NumeroOs: TAutoIncField;
    ADOTable1TecRes: TIntegerField;
    ADOTable1NomeCli: TWideStringField;
    ADOTable1FoneCli: TIntegerField;
    ADOTable1Equipam: TWideStringField;
    ADOTable1StatusSer: TIntegerField;
    ADOTable1ProbleInfor: TWideStringField;
    ADOTable1ProbleConst: TWideStringField;
    ADOTable1ServExe: TWideStringField;
    ADOTable1ValorServ: TIntegerField;
    ADOTable1Desconto: TIntegerField;
    ADOTable1Total: TIntegerField;
    ADOTable1DataEntra: TDateTimeField;
    ADOTable1PrevEntre: TDateTimeField;
    ADOTable1nomeTec: TWideStringField;
    ADOTable1novofone: TWideStringField;
    ADOTable1novovalor: TBCDField;
    ADOTable1novodesconto: TBCDField;
    ADOTable1novototal: TBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmChamado: TdmChamado;

implementation

{$R *.dfm}

end.
