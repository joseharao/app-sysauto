unit UUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, FMTBcd, DB, SqlExpr, DBClient, Provider, StdCtrls, Buttons,
  PngBitBtn, pngimage, ExtCtrls, Mask, DBCtrls;

type
  TfrmUsuarios = class(TfrmPadrao)
    GroupBox2: TGroupBox;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    cdsTabCOD_USU: TIntegerField;
    cdsTabDAT_CAD: TDateField;
    cdsTabNOME: TStringField;
    cdsTabLOGIN: TStringField;
    cdsTabSENHA: TStringField;
    cdsTabPOSICAO: TStringField;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    procedure btNovoClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure AbreDados;
    procedure btEditarClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

uses UDados, UFuncoes;

{$R *.dfm}

procedure TfrmUsuarios.AbreDados;
begin
    cdsTab.Close;
    sqlTab.Close;
    sqlTab.ParamByName('CODIGO').AsInteger := Cod_Padrao;
    cdsTab.Open;
end;

procedure TfrmUsuarios.btEditarClick(Sender: TObject);
begin
Cod_Padrao := cdsTabCOD_USU.AsInteger;
  inherited;
end;

procedure TfrmUsuarios.btGravarClick(Sender: TObject);
begin
if DBRadioGroup1.ItemIndex = -1 then begin
   application.MessageBox('Informe a Posição do Usuário.', 'Atenção', MB_IconQuestion);
   DBRadioGroup1.SetFocus;
   Exit;
end;
if Vazio(DBEdit2.Text) then begin
   application.MessageBox('Informe o Nome do Usuário.', 'Atenção', MB_IconQuestion);
   DBEdit2.SetFocus;
   Exit;
end;
if Vazio(DBEdit3.Text) then begin
   application.MessageBox('Informe a Senha do Usuário.', 'Atenção', MB_IconQuestion);
   DBEdit3.SetFocus;
   Exit;
end;
  inherited;
  AbreDados;
end;

procedure TfrmUsuarios.btNovoClick(Sender: TObject);
begin
  inherited;
  cdsTabCOD_USU.AsInteger := PegaSequencia('GEN_USUARIO_ID');
  cdsTabPOSICAO.AsString := 'S';
  Cod_Padrao := cdsTabCOD_USU.AsInteger;
  DBEdit2.SetFocus;
end;

procedure TfrmUsuarios.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if Key = #13 then begin
  Key := #0;
  Perform(WM_NEXTDLGCTL, 0, 0)
end;
end;

procedure TfrmUsuarios.DBEdit3Exit(Sender: TObject);
begin
  inherited;
if dsTab.State in [dsEdit, dsInsert] then begin
  cdsTabSENHA.AsString := MD5(cdsTabSENHA.AsString);
end;
end;

end.
