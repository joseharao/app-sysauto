unit ULComprador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ULGenerico, FMTBcd, StdCtrls, DB, SqlExpr, Provider, DBClient, Grids,
  DBGrids, Buttons, PngBitBtn, ExtCtrls;

type
  TfrmLComprador = class(TfrmLGenerico)
    Label1: TLabel;
    txtLocalizar: TEdit;
    txtCampo: TComboBox;
    Label2: TLabel;
    cdsTabCOD_COMP: TIntegerField;
    cdsTabDAT_CAD: TDateField;
    cdsTabNOME: TStringField;
    cdsTabAPELIDO: TStringField;
    cdsTabCPF_CNPJ: TStringField;
    cdsTabRG_IE: TStringField;
    cdsTabENDERECO: TStringField;
    cdsTabBAIRRO: TStringField;
    cdsTabCIDADE: TStringField;
    cdsTabUF: TStringField;
    cdsTabCEP: TStringField;
    cdsTabTELEFONE: TStringField;
    procedure MontaSQL;
    procedure btConsultarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure grdDadosDblClick(Sender: TObject);
    procedure grdDadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLComprador: TfrmLComprador;

implementation

uses UFuncoes, UComprador;

{$R *.dfm}

{ TfrmLGenerico1 }

procedure TfrmLComprador.btConsultarClick(Sender: TObject);
begin
MontaSQL;
  inherited;
end;

procedure TfrmLComprador.btEditarClick(Sender: TObject);
begin
  inherited;
  application.CreateForm(TfrmComprador, frmComprador);
  frmComprador.AbreTabela('COD_COMP', cdsTabCOD_COMP.AsInteger);
  frmComprador.ShowModal;
  cdsTab.Refresh;
end;

procedure TfrmLComprador.grdDadosDblClick(Sender: TObject);
begin
  inherited;
  btEditarClick(sender);
end;

procedure TfrmLComprador.grdDadosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key = 13 then
    btEditarClick(sender);
end;

procedure TfrmLComprador.MontaSQL;
begin
  sql := 'SELECT * FROM COMPRADOR';
 if not Vazio(txtLocalizar.Text) then begin
  case txtCampo.ItemIndex of
      0: sql := sql + ' WHERE COD_COMP = '+QuotedStr(txtLocalizar.Text);
      1: sql := sql + ' WHERE NOME LIKE '+QuotedStr('%'+txtLocalizar.Text+'%');
  end;
 end;
  case txtCampo.ItemIndex of
      0: sql := sql + ' ORDER BY COD_COMP';
      1: sql := sql + ' ORDER BY NOME';
  end;
end;

end.
