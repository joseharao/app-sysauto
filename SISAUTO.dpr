program SISAUTO;

uses
  Forms,
  Midas,
  MidasLib,
  RLConsts,
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  UFuncoes in 'UFuncoes.pas',
  UDados in 'UDados.pas' {Dados: TDataModule},
  ULogin in 'ULogin.pas' {frmLogin},
  UProgresso in 'UProgresso.pas' {frmProgresso},
  UBD in 'UBD.pas' {frmBD},
  UAssistente in 'UAssistente.pas' {frmAssistente},
  ULeberacao in 'ULeberacao.pas' {frmLiberacao},
  USplash in 'USplash.pas' {frmSplash},
  Uerro in 'Uerro.pas' {frmErro},
  USobre in 'USobre.pas' {frmSobre},
  UBackUp in 'UBackUp.pas' {frmBackup},
  USimulador in 'USimulador.pas' {frmSimulador},
  ULVendedor in 'ULVendedor.pas' {frmLVendedor},
  UVendedor in 'UVendedor.pas' {frmVendedor},
  ULComprador in 'ULComprador.pas' {frmLComprador},
  UComprador in 'UComprador.pas' {frmComprador},
  ULUsuario in 'ULUsuario.pas' {frmLUsuario},
  UUsuario in 'UUsuario.pas' {frmUsuarios},
  ULTransacao in 'ULTransacao.pas' {frmLTransacao},
  UTransacao in 'UTransacao.pas' {frmTransacao},
  URContrato in 'URContrato.pas' {frmContrato},
  UTermoGarantia in 'UTermoGarantia.pas' {frmTermoGarantia},
  ULAlienacao in 'ULAlienacao.pas' {frmLAlienacao},
  UlANCA in 'UlANCA.pas' {frmLCCaixa},
  UCCaixa in 'UCCaixa.pas' {frmCCaixa},
  ULHelpDesk in 'ULHelpDesk.pas' {frmLChamados},
  UChamado in 'UChamado.pas' {frmChamados},
  UArquivos in 'UArquivos.pas' {frmArquivos},
  ULVeiculos in 'ULVeiculos.pas' {frmLVeiculos},
  UVeiculo in 'UVeiculo.pas' {frmVeiculo},
  UGeracao in 'UGeracao.pas' {frmGeracao},
  URecibo in 'URecibo.pas' {frmRecibo},
  UOrRecibo in 'UOrRecibo.pas' {frmOrRecibo},
  URCCaixa in 'URCCaixa.pas' {frmRCCaixa},
  UOrCCaixa in 'UOrCCaixa.pas' {frmOrCCaixa},
  ULCP in 'ULCP.pas' {frmLCP},
  UPadrao in 'UPadrao.pas' {frmPadrao},
  UCP in 'UCP.pas' {frmCP},
  ULGenerico in 'ULGenerico.pas' {frmLGenerico},
  UOrPadrao in 'UOrPadrao.pas' {frmOrPadrao},
  UOrCP in 'UOrCP.pas' {frmOrCp},
  URelPadrao in 'URelPadrao.pas' {frmRelPadrao},
  URCp in 'URCp.pas' {frmRCp};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDados, Dados);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  if frmPrincipal.ValidaRegistro then begin
   application.CreateForm(TfrmSplash, frmSplash);
   frmSplash.Update;
   frmSplash.Show;
   frmSplash.Free;
   AbreForm(tfrmBD, frmBD);
   Application.Run;
 end else begin
   Application.Terminate;
 end;
end.
