unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, ADODB, SkinCaption, WinSkinData,
  CJVCriptografa;

type
  TFrmlogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Image1: TImage;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    SkinData1: TSkinData;
    SkinCaption1: TSkinCaption;
    CJVCriptografa1: TCJVCriptografa;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    vusuario, vnivel:string;    // variavel global para definir nivel de acesso
                                   { Public declarations }
  end;

var
  Frmlogin: TFrmlogin;
    // variavel para discriptografar a senha

implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure TFrmlogin.BitBtn1Click(Sender: TObject);
var vsenha:string;  // variavel para descriptografar as senhas
begin
  with dmlogin.adouser do begin
  close;

   CJVCriptografa1.StrNormal:=Edit1.Text;    //descriptografando as senhas
   vsenha:=CJVCriptografa1.StrEncrypt;

  Sql.clear;
  SQL.Add ('select * from Usuarios where Login_User='+QuotedStr(Edit2.Text));
  Open;
  end;
     if dmlogin.adouser.RecordCount=0 then
     Application.messageBox('Usuário ou Senha Incorreto','Informasi',MB_OK or MB_ICONINFORMATION)
     else begin                                                                                // comunicação com todas as linha do BD Login / LOGIN ENTRAR
     if
     dmlogin.adouser.FieldByName ('Senha_User').AsString<>vsenha then                        // vsenha pra descriptografar
     Application.messageBox('Usuário ou Senha Incorreto','Error', MB_OK or MB_ICONERROR)
     else begin
     vusuario:=dmlogin.adouserLogin_User.value;
     vnivel:=dmlogin.adouserAcesso_User.value;                                            // definindo qual o nível de acesso do usuário / chamando a variavel global
     FrmMenu.Show;
     Frmlogin.Hide;
     end;
     end;
     end;

procedure TFrmlogin.BitBtn2Click(Sender: TObject);
begin
Frmlogin.Close;
end;

end.
