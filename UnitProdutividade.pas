unit UnitProdutividade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DbChart, ADODB;

type
  Tfrmprodutividade = class(TForm)
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    DBChart1: TDBChart;
    ADOTable1NumeroOs: TAutoIncField;
    ADOTable1TecRes: TIntegerField;
    ADOTable1DataEntra: TDateTimeField;
    ADOTable1PrevEntre: TDateTimeField;
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
    ADOTable1nomeTec: TWideStringField;
    ADOTable1novofone: TWideStringField;
    ADOTable1novovalor: TBCDField;
    ADOTable1novodesconto: TBCDField;
    ADOTable1novototal: TBCDField;
    Series1: THorizBarSeries;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprodutividade: Tfrmprodutividade;

implementation

{$R *.dfm}

end.
