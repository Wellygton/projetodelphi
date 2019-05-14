unit UnitChamado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons, DB;

type
  TfrmChamado = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox3: TGroupBox;
    Panel2: TPanel;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    Label10: TLabel;
    GroupBox5: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    DBGrid1: TDBGrid;
    GroupBox6: TGroupBox;
    RadioButton3: TRadioButton;
    Edit6: TEdit;
    RadioButton4: TRadioButton;
    Edit7: TEdit;
    BitBtn1: TBitBtn;
    btnnovoch: TBitBtn;
    btnsalvarch: TBitBtn;
    btneditch: TBitBtn;
    btnexcluirch: TBitBtn;
    btncancelch: TBitBtn;
    btnrelach: TBitBtn;
    btnprintch: TBitBtn;
    btnsairch: TBitBtn;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBRadioGroup1: TDBRadioGroup;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DataSourcetecnico: TDataSource;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    procedure btnnovochClick(Sender: TObject);
    procedure btnsalvarchClick(Sender: TObject);
    procedure btneditchClick(Sender: TObject);
    procedure btnexcluirchClick(Sender: TObject);
    procedure btncancelchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure btnsairchClick(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6Change(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure btnprintchClick(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure btnrelachClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChamado: TfrmChamado;

implementation

uses Unit4, Unit5, UnitRelatorioUsuario, UnitRELACHAMA, UnitGERARRELA;

{$R *.dfm}

procedure TfrmChamado.btnnovochClick(Sender: TObject);
begin
btnnovoch.Enabled:= false;
btneditch.Enabled:= false;          // desabilitando e habilitando botões
btnsalvarch.Enabled:=True;
btncancelch.Enabled:=True;

dmChamado.ADOTable1.Insert;

dmChamado.ADOTable1StatusSer.Value:=1;          // ligando o botão aguardando ao clicar em novo
dmChamado.ADOTable1DataEntra.Value:= (Date());  // colocando data automatica ao clicar em novo
end;

procedure TfrmChamado.btnsalvarchClick(Sender: TObject);
begin

 if (DBEdit4.Text='') or (DBLookupComboBox1.Text='') or (DBEdit2.Text='') or (DBEdit6.Text='') or
     (DBEdit3.Text='') or (DBEdit8.Text='') or (DBMemo1.Text='') then
  begin
       ShowMessage('Todos os campos deverão ser prenenchidos!!!'+#13 +'Operação cancelada...');
         abort;

  end;



btnnovoch.Enabled:= true;
btneditch.Enabled:= True;         // desabilitando e habilitando botões
btnsalvarch.Enabled:=False;
btncancelch.Enabled:=False;

dmChamado.ADOTable1.Post;
end;

procedure TfrmChamado.btneditchClick(Sender: TObject);
begin
btnnovoch.Enabled:= false;
btneditch.Enabled:= false;
btnsalvarch.Enabled:=True;     // desabilitando e habilitando botões
btncancelch.Enabled:=True;

dmChamado.ADOTable1.Edit;
end;

procedure TfrmChamado.btnexcluirchClick(Sender: TObject);


begin
     if Application.MessageBox (('Deseja excluir a Ordem de Serviço?'),
     'Atenção', MB_USEGLYPHCHARS + MB_DEFBUTTON2) = mrYes then     // Mensagem de Exclusão de OS
     dmChamado.ADOTable1.Delete                                    // Exlusão de OS
     else
      Exit;
end;

procedure TfrmChamado.btncancelchClick(Sender: TObject);
begin
btnnovoch.Enabled:= true;
btneditch.Enabled:= True;      // desabilitando e habilitando botões
btnsalvarch.Enabled:=False;
btncancelch.Enabled:=False;

dmChamado.ADOTable1.Cancel;
end;

procedure TfrmChamado.FormShow(Sender: TObject);
begin
    RadioButton3.Checked:=true;
    RadioButton4.Checked:=false;

    Edit7.SetFocus;
end;

procedure TfrmChamado.RadioButton3Click(Sender: TObject);
begin
edit7.SetFocus;
end;

procedure TfrmChamado.RadioButton4Click(Sender: TObject);
begin
edit6.SetFocus;
end;

procedure TfrmChamado.Edit7Change(Sender: TObject);
begin


dmChamado.ADOTable1.Locate('NomeCli',Edit7.Text, [loPartialKey, loCaseInsensitive]); // pesquisando por parte do nome
end;

procedure TfrmChamado.btnsairchClick(Sender: TObject);
begin
frmChamado.Close;
end;

procedure TfrmChamado.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
{  If not( key in['0'..'9',#08] ) then  // só aceita números
  begin
    key:=#0;
  end;
}
  if key=#13 then
end;

procedure TfrmChamado.Edit6Change(Sender: TObject);
begin
dmChamado.ADOTable1.Locate('NumeroOs', Edit6.Text,[loPartialKey, loCaseInsensitive]); // pesquisando por parte do Codigo
//DataModuleUsuario.ADOTable1.Locate('Cod_User',Edit2.Text, [loPartialKey, loCaseInsensitive]); // pesquisando por parte do Codigo
end;

procedure TfrmChamado.DBRadioGroup1Click(Sender: TObject);
begin
  if DBRadioGroup1.ItemIndex=1 then
  begin
    dmChamado.ADOTable1PrevEntre.Value:=Date;
  end;
end;

procedure TfrmChamado.btnprintchClick(Sender: TObject);
begin
    IF dmChamado.ADOTable1StatusSer.Value=  1 then
    begin
       FrmRelaCHAMA.QRLabel12.Caption:='Aguardando';
    end
    ELSE
    begin
    FrmRelaCHAMA.QRLabel12.Caption:='Finalizado';
    end;
FrmRelaCHAMA.QuickRepIMPRIMIR.Preview;



end;

procedure TfrmChamado.DBEdit7Exit(Sender: TObject);
begin
   if btneditch.Enabled= False then             //  desabilitando calcular o valor se ele não tiver em modo de edição
   begin
           dmChamado.ADOTable1novototal.AsCurrency:=(dmChamado.ADOTable1novovalor.AsCurrency)-(dmChamado.ADOTable1novodesconto.AsCurrency);
   end;

end;

procedure TfrmChamado.btnrelachClick(Sender: TObject);
begin
frmRelabusca.Show;
end;

end.
