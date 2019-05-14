unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, ComCtrls;

type
  TFrmMenu = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    Novo1: TMenuItem;
    OrdemdeServio1: TMenuItem;
    Usurios1: TMenuItem;
    Produtividade1: TMenuItem;
    Sair1: TMenuItem;
    Image1: TImage;
    bar: TStatusBar;
    Timer1: TTimer;
    Label1: TLabel;
    Label3: TLabel;
    speedchamado: TSpeedButton;
    speeduser: TSpeedButton;
    speedprodu: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    CLIENTES1: TMenuItem;
    cnicos1: TMenuItem;
    procedure BitBtn2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure speeduserClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure speedchamadoClick(Sender: TObject);
    procedure OrdemdeServio1Click(Sender: TObject);
    procedure speedproduClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

uses chamado, Login, UnitChamado, UnitProdutividade;

{$R *.dfm}

procedure TFrmMenu.BitBtn2Click(Sender: TObject);
begin
frmusuario.show;
end;

procedure TFrmMenu.Timer1Timer(Sender: TObject);
begin
   bar.panels[0].Text := 'Hora:  ' +timetostr (now);   // colocando a hora no panel
end;

procedure TFrmMenu.FormActivate(Sender: TObject);
begin
  bar.Panels [3] .Text := 'Usuário:   ' + frmlogin.vusuario;  // mostrando o usuário na barra
  bar.Panels [1] .Text := 'Data:   ' + formatdatetime ('dddddd', date);   // colocando a data no panel
end;

procedure TFrmMenu.BitBtn3Click(Sender: TObject);
begin
ShowMessage('FUNÇÃO NÃO LIBERADA PARA ESTA VERSÃO DO SISTEMA');
end;

procedure TFrmMenu.Usurios1Click(Sender: TObject);
begin
frmusuario.show;
end;

procedure TFrmMenu.Sair1Click(Sender: TObject);
begin
FrmMenu.Close;
end;

procedure TFrmMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Application.Terminate;
end;

procedure TFrmMenu.speeduserClick(Sender: TObject);
begin
Frmusuario.Show;
end;

procedure TFrmMenu.SpeedButton1Click(Sender: TObject);
begin
  ShowMessage('Função não liberada para esta versão do sistema!!!'+#13 +'Operação cancelada...');
end;

procedure TFrmMenu.SpeedButton2Click(Sender: TObject);
begin
ShowMessage('Click Softwares!!!'+#13 +'Wellygton Feitosa (81) 99784-5455');
end;

procedure TFrmMenu.FormShow(Sender: TObject);
begin
    if Frmlogin.vnivel='1' then
    begin
        speeduser.Enabled:=true;
        speedprodu.Enabled:=true;             // desabilitando os botões dependendo do nível de acesso do usuário
    end
    else
    begin
        speeduser.Enabled:=false;
        speedprodu.Enabled:=false;
    end;
end;

procedure TFrmMenu.SpeedButton3Click(Sender: TObject);
begin
Close;
end;

procedure TFrmMenu.speedchamadoClick(Sender: TObject);
begin
frmChamado.Show;
end;

procedure TFrmMenu.OrdemdeServio1Click(Sender: TObject);
begin
frmChamado.Show;
end;

procedure TFrmMenu.speedproduClick(Sender: TObject);
begin
frmprodutividade.Show;

end;

end.

