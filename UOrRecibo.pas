unit UOrRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, Buttons;

type
  TfrmOrRecibo = class(TForm)
    txtNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    txtValor: TCurrencyEdit;
    BitBtn1: TBitBtn;
    txtMotivo: TEdit;
    Label3: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrRecibo: TfrmOrRecibo;

implementation

uses URecibo;

{$R *.dfm}

procedure TfrmOrRecibo.BitBtn1Click(Sender: TObject);
begin
  if application.MessageBox('Deseja Imprimir Recibo?', 'Confirmação', mb_YesNo + MB_ICONQUESTION) = idYes then begin
     Application.CreateForm(TfrmRecibo, frmRecibo);
     frmRecibo.txtNome.Caption := txtNome.Text;
     frmRecibo.vParc := txtValor.Value;
     frmRecibo.Parcelas := txtMotivo.Text;
     frmRecibo.cdsTab.Open;
     frmRecibo.RLReport1.PreviewModal;
     frmRecibo.cdsTab.Close;
  end;
end;

end.
