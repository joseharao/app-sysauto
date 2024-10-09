unit URCp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, URelPadrao, FMTBcd, RLFilters, RLPDFFilter, DB, SqlExpr, DBClient,
  Provider, RLReport, RLXLSFilter;

type
  TfrmRCp = class(TfrmRelPadrao)
    RLBand4: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand5: TRLBand;
    RLLabel11: TRLLabel;
    RLDBResult1: TRLDBResult;
    cdsTabCOD_REC: TIntegerField;
    cdsTabVENCIMENTO: TDateField;
    cdsTabVLR_PRIC: TSingleField;
    cdsTabJUROS: TSingleField;
    cdsTabVLR_DESC: TSingleField;
    cdsTabVLR_PAGO: TSingleField;
    cdsTabSALDO_DEV: TSingleField;
    cdsTabFINALIZADORA: TStringField;
    cdsTabNOME: TStringField;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRCp: TfrmRCp;

implementation

{$R *.dfm}

end.
