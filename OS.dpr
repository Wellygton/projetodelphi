program OS;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FrmMenu},
  chamado in 'Imagens e Bot�es\chamado.pas' {Frmusuario},
  Unit2 in 'bd\Unit2.pas' {DataModuleUsuario: TDataModule},
  Login in 'Login.pas' {Frmlogin},
  Unit3 in 'Unit3.pas' {dmlogin: TDataModule},
  UnitRelatorioUsuario in 'UnitRelatorioUsuario.pas' {FrmRelatorio},
  UnitChamado in 'UnitChamado.pas' {frmChamado},
  Unit4 in 'bd\Unit4.pas' {dmChamado: TDataModule},
  Unit5 in 'bd\Unit5.pas' {dmtec: TDataModule},
  UnitRELACHAMA in 'UnitRELACHAMA.pas' {FrmRelaCHAMA},
  UnitGERARRELA in 'UnitGERARRELA.pas' {frmRelabusca},
  UnitProdutividade in 'UnitProdutividade.pas' {frmprodutividade};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmlogin, Frmlogin);
  Application.CreateForm(TfrmRelabusca, frmRelabusca);
  Application.CreateForm(TfrmChamado, frmChamado);
  Application.CreateForm(Tdmlogin, dmlogin);
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.CreateForm(TFrmusuario, Frmusuario);
  Application.CreateForm(TDataModuleUsuario, DataModuleUsuario);
  Application.CreateForm(TFrmRelatorio, FrmRelatorio);
  Application.CreateForm(TdmChamado, dmChamado);
  Application.CreateForm(Tdmtec, dmtec);
  Application.CreateForm(TFrmRelaCHAMA, FrmRelaCHAMA);
  Application.CreateForm(Tfrmprodutividade, frmprodutividade);
  Application.Run;
end.
