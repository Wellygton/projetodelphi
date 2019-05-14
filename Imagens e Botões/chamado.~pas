unit chamado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, Mask, DBCtrls, Grids, DBGrids,
  CJVCriptografa;

type
  TFrmusuario = class(TForm)
    GroupBox2: TGroupBox;
    btnInserir: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    btnSalvar: TBitBtn;
    btnEditar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnrela: TBitBtn;
    btnsair: TBitBtn;
    DBRadioGroup1: TDBRadioGroup;
    DBNavigator2: TDBNavigator;
    GroupBox4: TGroupBox;
    Edit1: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit2: TEdit;
    btnimprimir: TBitBtn;
    CJVCriptografa1: TCJVCriptografa;
    procedure btnInserirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure btnsairClick(Sender: TObject);
    procedure btnrelaClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmusuario: TFrmusuario;
  



implementation

uses Unit2, UnitRelatorioUsuario, Unit3;

{$R *.dfm}

procedure TFrmusuario.btnInserirClick(Sender: TObject);
begin
btnInserir.Enabled:= false;
btnEditar.Enabled:= false;       // desabilitando e habilitando alguns botões ao inserir
btnSalvar.Enabled:= true;
btnCancelar.Enabled:= true;


DataModuleUsuario.ADOTable1.Insert;  // inserindo através do Data Module

DataModuleUsuario.ADOTable1Acesso_User.Value:='2';
end;

procedure TFrmusuario.btnSalvarClick(Sender: TObject);
begin

  if (DBEdit2.Text='') or (DBEdit3.Text='') or (DBEdit4.Text='') or (DBEdit5.Text='')  then
  begin
       ShowMessage('Todos os campos deverão ser prenenchidos!!!'+#13 +'Operação cancelada...');
       DBEdit2.SetFocus;
       DBEdit2.SelectAll;
       abort;

  end;


btnInserir.Enabled:= true;
btnEditar.Enabled:= true;       // desabilitando e habilitando alguns botões ao salvar
btnSalvar.Enabled:= false;
btnCancelar.Enabled:= false;

     // criptografando a senha via CJV CRIPTOGRAFIA

    CJVCriptografa1.StrNormal:= DBEdit5.Text;
    DataModuleUsuario.ADOTable1Senha_User.Value:=CJVCriptografa1.StrEncrypt;



DataModuleUsuario.ADOTable1.Post;  // ligando Data Modulo com Formulario e Salvando
end;

procedure TFrmusuario.btnEditarClick(Sender: TObject);
begin

btnInserir.Enabled:= false;
btnEditar.Enabled:= false;       // desabilitando e habilitando alguns botões ao Editar
btnSalvar.Enabled:= true;
btnCancelar.Enabled:= true;


DataModuleUsuario.ADOTable1.Edit; // ligando Data Modulo e Editando
end;

procedure TFrmusuario.btnExcluirClick(Sender: TObject);
begin
     if Application.MessageBox (('Deseja excluir o Usuário?'),
     'Atenção', MB_USEGLYPHCHARS + MB_DEFBUTTON2) = mrYes then     // Mensagem de Exclusão de Usuário
     DataModuleUsuario.ADOTable1.Delete                           // Exlusão de Usuário
     else
      Exit;
end;

procedure TFrmusuario.btnCancelarClick(Sender: TObject);
begin

btnInserir.Enabled:= true;
btnEditar.Enabled:= true;       // desabilitando e habilitando alguns botões ao Cancelar
btnSalvar.Enabled:= false;
btnCancelar.Enabled:= false;

DataModuleUsuario.ADOTable1.Cancel;  // ligando Data Modulo e Cancelando
end;

procedure TFrmusuario.Edit1Change(Sender: TObject);
begin
  DataModuleUsuario.ADOTable1.Locate('Nome_User',Edit1.Text, [loPartialKey, loCaseInsensitive]); // pesquisando por parte do nome
end;

procedure TFrmusuario.Edit2Change(Sender: TObject);
begin
DataModuleUsuario.ADOTable1.Locate('Cod_User',Edit2.Text, [loPartialKey, loCaseInsensitive]); // pesquisando por parte do Codigo
end;

procedure TFrmusuario.FormShow(Sender: TObject);
begin
    RadioButton1.Checked:=true;
    RadioButton2.Checked:=false;

    Edit1.SetFocus;

end;

procedure TFrmusuario.RadioButton2Click(Sender: TObject);
begin
edit2.SetFocus;
end;

procedure TFrmusuario.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
{  If not( key in['0'..'9',#08] ) then  // só aceita números
  begin
    key:=#0;
  end;
}
  if key=#13 then
  begin
       DataModuleUsuario.ADOTable1.Locate('Cod_User',Edit2.Text, [loPartialKey, loCaseInsensitive]); // pesquisando por parte do Codigo
  end;

end;

procedure TFrmusuario.btnsairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmusuario.btnrelaClick(Sender: TObject);
begin
FrmRelatorio.QuickRep1.Preview;
end;

procedure TFrmusuario.btnimprimirClick(Sender: TObject);
begin
FrmRelatorio.QuickRepimprim.Preview;
end;

end.
