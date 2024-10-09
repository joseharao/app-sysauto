unit ULeberacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, rxToolEdit, pngimage, Buttons, PngBitBtn,
  IdCoder, IdCoder3to4, IdCoderMIME, IdBaseComponent, DateUtils, IniFiles, Registry;

type
  TfrmLiberacao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Image1: TImage;
    txtDat_Ativacao: TDateEdit;
    Label1: TLabel;
    txtDat_Expiracao: TDateEdit;
    Label2: TLabel;
    txtRegistrado: TEdit;
    Label3: TLabel;
    txtControle: TEdit;
    Label4: TLabel;
    txtVersao: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    txtChave: TMaskEdit;
    btCancelar: TPngBitBtn;
    btLiberar: TPngBitBtn;
    Cifra: TIdEncoderMIME;
    Decifra: TIdDecoderMIME;
    procedure btCancelarClick(Sender: TObject);
    function ValidaRegistrp():Boolean;
    procedure GravaRegistro;
    procedure btLiberarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
 const
   Avalicao : String = 'Software\Microsoft\Windows\CurrentVersion\Explorer\EPLC\Reg';
   Registro : String = '\Software\Microsoft\Windows\CurrentVersion\Explorer\EPLC\Registro';

var
  frmLiberacao: TfrmLiberacao;
  Arq : TIniFile;
  Reg : TRegistry;

implementation

uses UFuncoes, UPrincipal;

{$R *.dfm}

procedure TfrmLiberacao.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLiberacao.btLiberarClick(Sender: TObject);
begin
  if application.MessageBox('Deseja Realmente Liberar O Sistema Agora?', 'Confirmação', MB_YesNo + MB_IconQuestion) = IdYes then begin
     if ValidaRegistrp then begin
        GravaRegistro;
     end else begin
        application.MessageBox('Chave de Ativação Inválida Verifique os Dados Digitados', 'Atenção', MB_ICONERROR);
        exit;
     end;
  end;
end;

procedure TfrmLiberacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    application.Terminate;
end;

procedure TfrmLiberacao.FormShow(Sender: TObject);
begin
   txtDat_Ativacao.Date := Date;
    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.KeyExists(Registro) then begin
         Reg.OpenKey(Registro, false);
         txtRegistrado.Text := Decifra.DecodeString(reg.ReadString('Registrado')) ;
    end;
    Reg.CloseKey;
    if Length(txtRegistrado.Text) > 0 then begin
      txtRegistrado.Enabled := false;
    end else begin
      txtRegistrado.Enabled := true;
    end;
    txtVersao.Text := VersaoExe;
    txtControle.Text := IntToStr(Length(GetComputerNameFunc) + 135)+'.'+IntToStr(Length(txtRegistrado.Text) + 235)+'.'+IntToStr(Length(txtVersao.Text) + 195)+'.'+IntToStr(Length(txtDat_Ativacao.Text) + 395);
end;

procedure TfrmLiberacao.GravaRegistro;
begin
    //Grava registro no sistema
    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.KeyExists(Registro) then begin
           Reg.OpenKey(Registro, false);
           Reg.WriteString('Expirar', Cifra.EncodeString(txtDat_Expiracao.Text));
           Reg.WriteString('Registrado', Cifra.EncodeString(txtRegistrado.Text));
           Reg.WriteString('AV', Cifra.EncodeString('1'));
           Reg.CloseKey;
    end else begin
           Reg.OpenKey(Registro, true);
           Reg.WriteString('Expirar', Cifra.EncodeString(txtDat_Expiracao.Text));
           Reg.WriteString('Registrado', Cifra.EncodeString(txtRegistrado.Text));
           Reg.WriteString('AV', Cifra.EncodeString('1'));
           Reg.CloseKey;
    end;
    Application.MessageBox('Sistema Ativado Com Sucesso!!!', 'Sucesso', MB_ICONQUESTION);
    Close;
end;

function TfrmLiberacao.ValidaRegistrp: Boolean;
 Var
  Cod1, Cod2, Cod3, Cod4, Cod5, Cod6 :Integer;
  dia, mes, ano : integer;
  Chave : String;
begin
    dia := DayOf(txtDat_Expiracao.Date);
    mes := MonthOf(txtDat_Expiracao.Date);
    Ano := YearOf(txtDat_Expiracao.Date);
    cod1 := ( dia * 7) + 135;
    cod2 := (Length(txtRegistrado.Text) * 11) + 147;
    cod3 := ((ano - 2000) * 12) + 112;
    cod4 := (Length(txtVersao.Text) + 17) * 11;
    cod5 := (Length(txtControle.Text) + 11) * 13;
    cod6 := (mes * 9) + 135;
    Chave := IntToStr(cod1) +'.'+ IntToStr(cod2) +'.'+ IntToStr(cod3) +'.'+ IntToStr(cod5) +'.'+ IntToStr(cod4) +'.'+ IntToStr(cod6);
    if txtChave.Text <> Chave  then begin
       Result := false;
    end else begin
       Result := true;
    end;
end;

end.
