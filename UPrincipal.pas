unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, pngimage, ExtCtrls, StdCtrls, IniFiles, Registry, IdCoder,
  IdCoder3to4, IdCoderMIME, IdBaseComponent, DateUtils, AppEvnts;

type
  TfrmPrincipal = class(TForm)
    menu: TMainMenu;
    Cadastros1: TMenuItem;
    Movimentao1: TMenuItem;
    OpesGerais1: TMenuItem;
    Sair1: TMenuItem;
    BackupRestore1: TMenuItem;
    SobreoEmplac1: TMenuItem;
    pnCentral: TPanel;
    Panel5: TPanel;
    Image5: TImage;
    pnBarraStatus: TPanel;
    pnServidor: TPanel;
    lblServidor: TLabel;
    Image3: TImage;
    pnHora: TPanel;
    lblHora: TLabel;
    Image2: TImage;
    pnData: TPanel;
    Image1: TImage;
    lblData: TLabel;
    pnUsuario: TPanel;
    lblUsuario: TLabel;
    Image4: TImage;
    Decifra: TIdDecoderMIME;
    Cifra: TIdEncoderMIME;
    Timer1: TTimer;
    Erro: TApplicationEvents;
    Compradores1: TMenuItem;
    Vendedores1: TMenuItem;
    SimuladorFinanceiro1: TMenuItem;
    Usurios2: TMenuItem;
    ransaes1: TMenuItem;
    HelpDesk1: TMenuItem;
    Financeiro1: TMenuItem;
    ControledeCaixa1: TMenuItem;
    ContasaReceber1: TMenuItem;
    Relatrios1: TMenuItem;
    ControledeCaixa2: TMenuItem;
    ContasaReceber2: TMenuItem;
    Veculos1: TMenuItem;
    GeraodeParcelas1: TMenuItem;
    RecibodePagamento1: TMenuItem;
    ContasaPagar1: TMenuItem;
    ContasaPagar2: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    function ValidaRegistro: Boolean;
    procedure Timer1Timer(Sender: TObject);
    procedure Alienaes1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure SobreoEmplac1Click(Sender: TObject);
    procedure BackupRestore1Click(Sender: TObject);
    procedure Vendedores1Click(Sender: TObject);
    procedure Compradores1Click(Sender: TObject);
    procedure Usurios2Click(Sender: TObject);
    procedure SimuladorFinanceiro1Click(Sender: TObject);
    procedure ransaes1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure ControledeCaixa1Click(Sender: TObject);
    procedure HelpDesk1Click(Sender: TObject);
    procedure Veculos1Click(Sender: TObject);
    procedure GeraodeParcelas1Click(Sender: TObject);
    procedure RecibodePagamento1Click(Sender: TObject);
    procedure ControledeCaixa2Click(Sender: TObject);
    procedure ContasaReceber2Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure ContasaPagar2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sistema, usuario : String;
    logado : Boolean;
  end;

var
  frmPrincipal: TfrmPrincipal;


implementation

uses UFuncoes, UDados, ULogin, UTelaInicial, ULeberacao, ULAlienacao, UBD,
  USobre, UBackUp, ULVendedor, ULComprador, ULUsuario, USimulador, ULTransacao,
  ULCrec, UlANCA, ULHelpDesk, ULVeiculos, UGeracao, UOrRecibo, UOrCCaixa,
  UOrCrec, ULCP, UOrCP;

{$R *.dfm}

function TfrmPrincipal.ValidaRegistro: Boolean;
begin
  result := true;
end;


procedure TfrmPrincipal.Veculos1Click(Sender: TObject);
begin
  AbreForm(TfrmLVeiculos, frmLVeiculos);
end;

procedure TfrmPrincipal.Vendedores1Click(Sender: TObject);
begin
  AbreForm(TfrmLVendedor, frmLVendedor);
end;

procedure TfrmPrincipal.Alienaes1Click(Sender: TObject);
begin
  AbreFormMDI(TfrmLAlienacao, frmLAlienacao);
end;

procedure TfrmPrincipal.BackupRestore1Click(Sender: TObject);
begin
  AbreForm(TfrmBackup, frmBackup);
end;

procedure TfrmPrincipal.Compradores1Click(Sender: TObject);
begin
  AbreForm(TfrmLComprador, frmLComprador);
end;

procedure TfrmPrincipal.ContasaPagar1Click(Sender: TObject);
begin
  AbreForm(TfrmLCP, frmLCP);
end;

procedure TfrmPrincipal.ContasaPagar2Click(Sender: TObject);
begin
  AbreForm(TfrmOrCP, frmOrCP);
end;

procedure TfrmPrincipal.ContasaReceber1Click(Sender: TObject);
begin
  AbreForm(TFrmLCrec, frmLCrec);
end;

procedure TfrmPrincipal.ContasaReceber2Click(Sender: TObject);
begin
  AbreForm(TfrmOrCrec, frmOrCrec);
end;

procedure TfrmPrincipal.ControledeCaixa1Click(Sender: TObject);
begin
  AbreForm(TfrmLCCaixa, frmLCCaixa);
end;

procedure TfrmPrincipal.ControledeCaixa2Click(Sender: TObject);
begin
   AbreForm(TfrmOrCCaixa, frmOrCCaixa);
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if application.MessageBox('Deseja Realmente Sair do Sistema Agora?', 'Confirmação', mb_yesNo + MB_ICONQUESTION) = idYes then begin
      Application.Terminate;
  end else begin
      Application.Run;
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
   lblData.Caption := 'Data do Sistema: ' + DateToStr(date);
   lblServidor.Caption := 'Estação de Trabalho: ' + GetComputerNameFunc;
   CentralizaPainel(pnCentral, Screen.Height, Screen.Width);
   Sistema := 'SISAUTO - Sistema de Gerenciamento de Vendas de Veículos - [Versão: 2.0.0] - [Desenvolvido Por: InforCENTER Sistemas]';
   Logado := false;
end;

procedure TfrmPrincipal.FormResize(Sender: TObject);
begin
   // formatando como aparecer a barra de status personalizada
   pnData.Width := Round(pnBarraStatus.Width / 4);
   pnHora.Width := Round(pnBarraStatus.Width / 4);
   pnUsuario.Width := Round(pnBarraStatus.Width / 4);
   pnServidor.Width := Round(pnBarraStatus.Width / 4);
  //Verifica se o banco de dados esta conectado para tentar logar no sistema
   if dados.DB.Connected then begin
    //se não estiver logado tentar fazer o login no sistema
     if not Logado then begin
        AbreForm(TfrmLogin, frmLogin);
     end;
   end;
end;

procedure TfrmPrincipal.GeraodeParcelas1Click(Sender: TObject);
begin
  AbreForm(TfrmGeracao, frmGeracao);
end;

procedure TfrmPrincipal.HelpDesk1Click(Sender: TObject);
begin
   AbreForm(TfrmLChamados, frmLChamados);
end;

procedure TfrmPrincipal.ransaes1Click(Sender: TObject);
begin
  AbreForm(TfrmLTransacao, frmLTransacao);
end;

procedure TfrmPrincipal.RecibodePagamento1Click(Sender: TObject);
begin
  AbreForm(TfrmOrRecibo, frmOrRecibo);
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.SimuladorFinanceiro1Click(Sender: TObject);
begin
  AbreForm(TfrmSimulador, frmSimulador);
end;

procedure TfrmPrincipal.SobreoEmplac1Click(Sender: TObject);
begin
  AbreForm(TfrmSobre, frmSobre);
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
    lblhora.Caption := 'Hora do Sistema: ' + FormatDateTime('hh:mm:ss', now);
end;

procedure TfrmPrincipal.Usurios2Click(Sender: TObject);
begin
  AbreForm(TfrmLUsuario, frmLUsuario);
end;

end.
