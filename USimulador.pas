unit USimulador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, ExtCtrls;

type
  TfrmSimulador = class(TForm)
    txtBase: TCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    txtJuros: TCurrencyEdit;
    Label3: TLabel;
    txtParcelas: TCurrencyEdit;
    pnTotal: TPanel;
    pnParcela: TPanel;
    btCalcular: TButton;
    procedure btCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSimulador: TfrmSimulador;

implementation

{$R *.dfm}

procedure TfrmSimulador.btCalcularClick(Sender: TObject);
var
  Juros : Real;
begin
   Juros := (txtBase.Value * txtJuros.Value) / 100;
   pnTotal.Caption := FormatCurr('R$ #,##0.00', txtBase.Value + (txtParcelas.Value * Juros));
   pnParcela.Caption := txtParcelas.Text + ' X ' + FormatCurr('R$ #,##0.00', (txtBase.Value + (txtParcelas.Value * Juros)) / txtParcelas.Value);
end;

end.
