unit ULVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ULGenerico, FMTBcd, DB, SqlExpr, Provider, DBClient, StdCtrls, Grids,
  DBGrids, Buttons, PngBitBtn, ExtCtrls;

type
  TfrmLVendedor = class(TfrmLGenerico)
    cdsTabCOD_VEND: TIntegerField;
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
    txtLocalizar: TEdit;
    Label1: TLabel;
    txtCampo: TComboBox;
    Label2: TLabel;
    procedure MontaSQL;
    procedure AbreVendedor;
    procedure btConsultarClick(Sender: TObject);
    procedure grdDadosDblClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure grdDadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLVendedor: TfrmLVendedor;

implementation

uses UFuncoes, UVendedor;

{$R *.dfm}

{ TfrmLGenerico1 }

procedure TfrmLVendedor.AbreVendedor;
begin
  application.CreateForm(TfrmVendedor, frmVendedor);
  frmVendedor.AbreTabela('COD_VEND', cdsTabCOD_VEND.AsInteger);
  frmVendedor.ShowModal;
  cdsTab.Refresh;
end;

procedure TfrmLVendedor.btConsultarClick(Sender: TObject);
begin
MontaSQL;
  inherited;
end;

procedure TfrmLVendedor.btEditarClick(Sender: TObject);
begin
  inherited;
  AbreVendedor;
end;

procedure TfrmLVendedor.grdDadosDblClick(Sender: TObject);
begin
  inherited;
  btEditarClick(sender);
end;

procedure TfrmLVendedor.grdDadosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key = 13 then
  btEditarClick(sender);
end;

procedure TfrmLVendedor.MontaSQL;
begin
  sql := 'SELECT * FROM VENDEDOR';
 if not Vazio(txtLocalizar.Text) then begin
  case txtCampo.ItemIndex of
      0: sql := sql + ' WHERE COD_VEND = '+QuotedStr(txtLocalizar.Text);
      1: sql := sql + ' WHERE NOME LIKE '+QuotedStr('%'+txtLocalizar.Text+'%');
  end;
 end;
  case txtCampo.ItemIndex of
      0: sql := sql + ' ORDER BY COD_VEND';
      1: sql := sql + ' ORDER BY NOME';
  end;
end;

end.
