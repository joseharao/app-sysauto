unit ULUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ULGenerico, FMTBcd, DB, SqlExpr, Provider, DBClient, Grids, DBGrids,
  StdCtrls, Buttons, PngBitBtn, ExtCtrls;

type
  TfrmLUsuario = class(TfrmLGenerico)
    txtLocaliza: TEdit;
    Label1: TLabel;
    txtCampo: TComboBox;
    Label2: TLabel;
    cdsTabCOD_USU: TIntegerField;
    cdsTabDAT_CAD: TDateField;
    cdsTabNOME: TStringField;
    cdsTabLOGIN: TStringField;
    cdsTabSENHA: TStringField;
    cdsTabPOSICAO: TStringField;
    procedure MontaSql;
    procedure btConsultarClick(Sender: TObject);
    procedure AbreUsuario;
    procedure btEditarClick(Sender: TObject);
    procedure grdDadosDblClick(Sender: TObject);
    procedure grdDadosKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLUsuario: TfrmLUsuario;

implementation

uses UFuncoes, UUsuario;

{$R *.dfm}

{ TfrmLUsuario }

procedure TfrmLUsuario.AbreUsuario;
begin
   Application.CreateForm(TfrmUsuarios, frmUsuarios);
   frmUsuarios.sqlTab.Close;
   frmUsuarios.cdsTab.Close;
   frmUsuarios.sqlTab.ParamByName('COD_USU').AsInteger := cdsTabCOD_USU.AsInteger;
   frmUsuarios.Campo := 'COD_USU';
   frmUsuarios.cdsTab.Open;
   frmUsuarios.ShowModal;
  if cdsTab.Active then begin
   cdsTab.Refresh;
  end;
end;

procedure TfrmLUsuario.btConsultarClick(Sender: TObject);
begin
MontaSql;
  inherited;
end;

procedure TfrmLUsuario.btEditarClick(Sender: TObject);
begin
  inherited;
  AbreUsuario;
end;

procedure TfrmLUsuario.grdDadosDblClick(Sender: TObject);
begin
  inherited;
 AbreUsuario;
end;

procedure TfrmLUsuario.grdDadosKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key = #13 then begin
  AbreUsuario;
end;
end;

procedure TfrmLUsuario.MontaSql;
begin
  sql := 'SELECT * FROM USUARIO';
if not Vazio(txtLocaliza.Text) then begin
  case txtCampo.ItemIndex of
    0: sql := sql + ' WHERE COD_USU LIKE '+#39+txtLocaliza.Text+'%'+#39;
    1: sql := sql + ' WHERE LOGIN LIKE '+#39+txtLocaliza.Text+'%'+#39;
  end;
end;
  case txtCampo.ItemIndex of
      0: sql := sql +  ' ORDER BY COD_USU';
      1: sql := sql +  ' ORDER BY LOGIN';
  end;
end;

end.
