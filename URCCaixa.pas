unit URCCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, URelPadrao, FMTBcd, RLFilters, RLPDFFilter, DB, SqlExpr, DBClient,
  Provider, RLReport, RLXLSFilter, RLParser;

type
  TfrmRCCaixa = class(TfrmRelPadrao)
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLGroup1: TRLGroup;
    cdsTabCOD_LANCA: TIntegerField;
    cdsTabDATA: TDateField;
    cdsTabHISTORICO: TStringField;
    cdsTabOP: TStringField;
    RLBand3: TRLBand;
    txtCab: TRLDBText;
    RLLabel10: TRLLabel;
    RLBand4: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand5: TRLBand;
    RLLabel11: TRLLabel;
    cdsTabVLR_OPE: TSingleField;
    RLDBResult1: TRLDBResult;
    RLBand6: TRLBand;
    txtSaldo: TRLLabel;
    RLLabel12: TRLLabel;
    txtEntrada: TRLLabel;
    txtSaida: TRLLabel;
    RLReport2: TRLReport;
    RLBand7: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLBand8: TRLBand;
    RLLabel21: TRLLabel;
    RLBand12: TRLBand;
    RLLabel24: TRLLabel;
    txtSaldo2: TRLLabel;
    txtEntrada2: TRLLabel;
    txtSaida2: TRLLabel;
    RLBand10: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    dsRes: TDataSource;
    dspRes: TDataSetProvider;
    cdsRes: TClientDataSet;
    sqlRes: TSQLQuery;
    cdsResCOD_TURNO: TIntegerField;
    cdsResNUM_CAIXA: TIntegerField;
    cdsResDATA: TDateField;
    cdsResOP: TStringField;
    cdsResHISTORICO: TStringField;
    RLReport3: TRLReport;
    RLBand9: TRLBand;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel25: TRLLabel;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLBand11: TRLBand;
    RLLabel31: TRLLabel;
    RLBand13: TRLBand;
    RLLabel32: TRLLabel;
    RLBand14: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLLabel36: TRLLabel;
    txtEntrada3: TRLDBResult;
    txtSaida3: TRLDBResult;
    RLExpressionParser1: TRLExpressionParser;
    RLDBResult2: TRLDBResult;
    cdsResVLR_OPE: TSingleField;
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure txtEntrada3Compute(Sender: TObject; var Value: Variant;
      var Text: string; var ComputeIt: Boolean);
    procedure txtSaida3Compute(Sender: TObject; var Value: Variant;
      var Text: string; var ComputeIt: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRCCaixa: TfrmRCCaixa;
  Entrada, Saida, Saldo :Double;
implementation

{$R *.dfm}

procedure TfrmRCCaixa.FormCreate(Sender: TObject);
begin
  inherited;
  Entrada := 0; Saida := 0;
end;

procedure TfrmRCCaixa.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  inherited;
  if ((cdsTabOP.AsString = 'Entrada') or (cdsTabOP.AsString = 'Recebimento')) then begin
      Entrada := Entrada + cdsTabVLR_OPE.AsFloat;
  end else if cdsTabOP.AsString = 'Saída' then begin
      Saida := Saida + cdsTabVLR_OPE.AsFloat;
  end;
end;

procedure TfrmRCCaixa.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  txtEntrada.Caption := 'Entradas (Recebimentos + Entrada): ' + FormatCurr('R$ #,##0.00', Entrada);
  txtSaida.Caption := 'Saídas: ' + FormatCurr('R$ #,##0.00', Saida);
  txtSaldo.Caption := 'Saldo: ' + FormatCurr('R$ #,##0.00', Entrada - Saida);
  txtEntrada2.Caption := 'Entradas (Recebimentos + Entrada): ' + FormatCurr('R$ #,##0.00', Entrada);
  txtSaida2.Caption := 'Saídas: ' + FormatCurr('R$ #,##0.00', Saida);
  txtSaldo2.Caption := 'Saldo: ' + FormatCurr('R$ #,##0.00', Entrada - Saida);

end;

procedure TfrmRCCaixa.txtEntrada3Compute(Sender: TObject; var Value: Variant;
  var Text: string; var ComputeIt: Boolean);
begin
  inherited;
  if cdsResOP.AsString = 'Entrada' then begin
      ComputeIt := true;
  end else begin
      ComputeIt := false;
  end;
end;

procedure TfrmRCCaixa.txtSaida3Compute(Sender: TObject; var Value: Variant;
  var Text: string; var ComputeIt: Boolean);
begin
  inherited;
  if cdsResOP.AsString = 'Saída' then begin
      ComputeIt := true;
  end else begin
      ComputeIt := false;
  end;
end;

end.

