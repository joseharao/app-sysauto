unit ULVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ULGenerico, FMTBcd, DB, SqlExpr, Provider, DBClient, StdCtrls, Grids,
  DBGrids, Buttons, PngBitBtn, ExtCtrls;

type
  TfrmLVeiculos = class(TfrmLGenerico)
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
    Label1: TLabel;
    txtLocalizar: TEdit;
    txtCampo: TComboBox;
    Label2: TLabel;
    procedure btConsultarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLVeiculos: TfrmLVeiculos;

implementation

uses UFuncoes, UVeiculo;

{$R *.dfm}

procedure TfrmLVeiculos.btConsultarClick(Sender: TObject);
begin
sql := 'SELECT * FROM VEICULOS';
if not Vazio(txtLocalizar.Text) then begin
    case txtCampo.ItemIndex of
        0:
        begin
           sql := sql + ' WHERE COD_VEICULO LIKE '+QuotedStr('%'+txtLocalizar.Text+'%');
        end;
        1:begin
           sql := sql + ' WHERE DESCRICAO LIKE '+QuotedStr('%'+txtLocalizar.Text+'%');
        end;
        2:begin
           sql := sql + ' WHERE PLACA LIKE '+QuotedStr('%'+txtLocalizar.Text+'%');
        end;
    end;
end;
case txtCampo.ItemIndex of
    0: sql := sql + ' ORDER BY COD_VEICULO';
    1: sql := sql + ' ORDER BY DESCRICAO';
    2: sql := sql + ' ORDER BY PLACA';
end;
  inherited;
end;

procedure TfrmLVeiculos.btEditarClick(Sender: TObject);
begin
  application.CreateForm(TfrmVeiculo, frmVeiculo);
  frmVeiculo.sqlTab.Close;
  frmVeiculo.cdsTab.Close;
  frmVeiculo.sqlTab.ParamByName('COD_VEICULO').AsInteger := cdsTabCOD_VEICULO.AsInteger;
  frmVeiculo.cdsTab.Open;
  frmVeiculo.Campo := 'COD_VEICULO';
  frmVeiculo.Cod_Padrao := cdsTabCOD_VEICULO.AsInteger;
  frmVeiculo.ShowModal;
  cdsTab.Refresh;
  inherited;
end;

end.
