unit UnitProdutividade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, DB, ADODB, ExtCtrls, TeeProcs, Chart, DbChart;

type
  TFrmProdu = class(TForm)
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
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
    DBChart2: TDBChart;
    BarTECNICO: TPieSeries;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProdu: TFrmProdu;

implementation

{$R *.dfm}

end.
