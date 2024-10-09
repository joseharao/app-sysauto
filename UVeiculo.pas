unit UVeiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, FMTBcd, DB, SqlExpr, DBClient, Provider, StdCtrls, Buttons,
  PngBitBtn, pngimage, ExtCtrls, DBCtrls, rxToolEdit, RXDBCtrl, Mask;

type
  TfrmVeiculo = class(TfrmPadrao)
    cdsTabCOD_VEICULO: TIntegerField;
    cdsTabDAT_CAD: TDateField;
    cdsTabDESCRICAO: TStringField;
    cdsTabTIPO: TStringField;
    cdsTabPLACA: TStringField;
    cdsTabMARCA: TStringField;
    cdsTabMODELO: TStringField;
    cdsTabANO: TStringField;
    cdsTabCHASSI: TStringField;
    cdsTabRENAVAN: TStringField;
    cdsTabCOR: TStringField;
    cdsTabPRC_VENDA: TSingleField;
    cdsTabPRC_COMPRA: TSingleField;
    cdsTabUNID_ESTOQUE: TSingleField;
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
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVeiculo: TfrmVeiculo;

implementation

uses UFuncoes;

{$R *.dfm}

procedure TfrmVeiculo.btNovoClick(Sender: TObject);
begin
  inherited;
  cdsTabCOD_VEICULO.AsInteger := PegaSequencia('GEN_VEICULOS_ID');
  cdsTabDAT_CAD.AsDateTime := Date;
  cdsTabUNID_ESTOQUE.AsFloat := 0;
  DBEdit2.SetFocus;
end;

end.
