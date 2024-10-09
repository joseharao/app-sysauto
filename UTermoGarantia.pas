unit UTermoGarantia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfrmTermoGarantia = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    Logo: TRLImage;
    RLBand2: TRLBand;
    lblTexto: TRLLabel;
    Linhas: TRLMemo;
    RLBand3: TRLBand;
    RLMemo1: TRLMemo;
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTermoGarantia: TfrmTermoGarantia;

implementation

uses UTransacao, UDados, UFuncoes;

{$R *.dfm}

procedure TfrmTermoGarantia.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  dados.cdsParam.Open;
   if not Dados.cdsParamLOGOTIPO.IsNull then begin
    ObtemFotoRel(dados.cdsParamLOGOTIPO, Logo);
   end;
  dados.cdsParam.Close;
end;

procedure TfrmTermoGarantia.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    Linhas.Lines.Clear;
    AbreTabela('SELECT C.NOME, C.ENDERECO FROM COMPRADOR C WHERE C.COD_COMP = '+QuotedStr(frmTransacao.cdsTabCOD_COMP.AsString), dados.sqlBusca);
    with Linhas do begin
        Lines.Add('NOME: ' + Dados.sqlBusca.FieldByName('NOME').AsString);
        Lines.Add('ENDERECO: ' + Dados.sqlBusca.FieldByName('ENDERECO').AsString);
        Lines.Add('MODELO: ' + frmTransacao.cdsTabMODELO.AsString);
        Lines.Add('PLACA: ' + frmTransacao.cdsTabPLACA.AsString);
        Lines.Add('ANO: ' + frmTransacao.cdsTabANO.AsString);
        Lines.Add('DATA DA VENDA: ' + frmTransacao.cdsTabDAT_CAD.AsString);
    end;
    dados.sqlBusca.Close;
end;

end.
