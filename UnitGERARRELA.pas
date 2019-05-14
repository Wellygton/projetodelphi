unit UnitGERARRELA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Buttons;

type
  TfrmRelabusca = class(TForm)
    DBRadioGroup1: TDBRadioGroup;
    GroupBox1: TGroupBox;
    btngerar: TBitBtn;
    procedure btngerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelabusca: TfrmRelabusca;

implementation

uses UnitRELACHAMA, UnitRelatorioUsuario, Unit4;

{$R *.dfm}

procedure TfrmRelabusca.btngerarClick(Sender: TObject);
begin
IF dmChamado.ADOTable1StatusSer.Value=  1 then
    begin
    FrmRelaCHAMA.QRLabel35.Caption:='Aguardando';
    end
    ELSE
    begin
    FrmRelaCHAMA.QRLabel35.Caption:='Finalizado';
    end;





FrmRelaCHAMA.qrrelatorio.Preview;
end;

end.
