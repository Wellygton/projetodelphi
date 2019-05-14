unit UnitRelatorioUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, RpCon, RpConDS, RpDefine, RpRave,
  DB, ADODB;

type
  TFrmRelatorio = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QuickRepimprim: TQuickRep;
    PageHeaderBand2: TQRBand;
    TitleBand2: TQRBand;
    ColumnHeaderBand2: TQRBand;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel15: TQRLabel;
    QRExpr1: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorio: TFrmRelatorio;

implementation

uses Unit2, Unit3;

{$R *.dfm}

end.
