unit UVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, FMTBcd, DB, SqlExpr, DBClient, Provider, StdCtrls, Buttons,
  PngBitBtn, pngimage, ExtCtrls, rxToolEdit, RXDBCtrl, Mask, DBCtrls;

type
  TfrmVendedor = class(TfrmPadrao)
    cdsTabCOD_VEND: TIntegerField;
    cdsTabDAT_CAD: TDateField;
    cdsTabNOME: TStringField;
    cdsTabCPF_CNPJ: TStringField;
    cdsTabRG_IE: TStringField;
    cdsTabENDERECO: TStringField;
    cdsTabBAIRRO: TStringField;
    cdsTabCIDADE: TStringField;
    cdsTabUF: TStringField;
    cdsTabCEP: TStringField;
    cdsTabTELEFONE: TStringField;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    lblNome: TLabel;
    lblCPF: TLabel;
    lblRG: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label26: TLabel;
    DBEdit1: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit19: TDBEdit;
    procedure btNovoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendedor: TfrmVendedor;

implementation

uses UFuncoes;

{$R *.dfm}

procedure TfrmVendedor.btEditarClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TfrmVendedor.btNovoClick(Sender: TObject);
begin
  inherited;
  cdsTabCOD_VEND.AsInteger := PegaSequencia('GEN_VENDEDOR_ID');
  cdsTabDAT_CAD.AsDateTime := Date;
  DBEdit2.SetFocus;
end;

end.
