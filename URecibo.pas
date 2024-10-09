unit URecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, FMTBcd, RLFilters, RLPDFFilter, DB, Provider, DBClient,
  SqlExpr;

type
  TfrmRecibo = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    sqlTab: TSQLQuery;
    cdsTab: TClientDataSet;
    dspTab: TDataSetProvider;
    dsTab: TDataSource;
    RLPDFFilter1: TRLPDFFilter;
    RLDBText2: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    txtQuantia: TRLLabel;
    txtQuantiaExtenso: TRLLabel;
    txtParcelas: TRLLabel;
    RLLogo: TRLImage;
    cdsTabCOD_LOJA: TSmallintField;
    cdsTabRAZAO_SOCIAL: TStringField;
    cdsTabNOME_FANTASIA: TStringField;
    cdsTabCNPJ: TStringField;
    cdsTabINSC_ESTADUAL: TStringField;
    cdsTabENDERECO: TStringField;
    cdsTabCOMPLEMENTO: TStringField;
    cdsTabBAIRRO: TStringField;
    cdsTabPROCESSO_BANCO: TStringField;
    cdsTabUSA_TERMOGARANTIA: TStringField;
    cdsTabUSA_RECIBO: TStringField;
    cdsTabUSA_SENHAESPECIAL: TStringField;
    cdsTabCIDADE: TStringField;
    cdsTabESTADO: TStringField;
    cdsTabTELEFONE: TStringField;
    cdsTabFAX: TStringField;
    cdsTabEMAIL: TStringField;
    cdsTabUSA_ALTERAPRECOPA: TStringField;
    cdsTabUSA_CARNE: TStringField;
    cdsTabWEB_PAGE: TStringField;
    cdsTabUSA_ALTERAPRECOPDV: TStringField;
    cdsTabUSA_IMPRIMIRPV: TStringField;
    cdsTabLOGOTIPO: TBlobField;
    cdsTabTX_RECCT: TStringField;
    cdsTabUSA_CONTRATO: TStringField;
    cdsTabTX_CHEQUE: TStringField;
    cdsTabUSA_ALTERACREC: TStringField;
    cdsTabPRZ_PADRAO: TIntegerField;
    cdsTabUSA_REGRELATORIO: TFMTBCDField;
    cdsTabPRZ_PD_CHEQUE: TSmallintField;
    cdsTabDESC_MAXIMO: TStringField;
    cdsTabMSG_VENDA: TStringField;
    cdsTabCOMP_VENDA: TSmallintField;
    cdsTabDIAS_CAR: TFMTBCDField;
    cdsTabTP_CARNE: TSmallintField;
    cdsTabDIAS_ORCAMENTO: TIntegerField;
    cdsTabPROCESSO: TStringField;
    cdsTabNR_CAIXA: TIntegerField;
    cdsTabNCAIXA: TIntegerField;
    cdsTabU_ACESSO: TDateField;
    cdsTabIMP_COMP: TStringField;
    cdsTabBASE: TStringField;
    cdsTabP_EXCLUSAO: TStringField;
    cdsTabSA: TStringField;
    cdsTabSU: TStringField;
    cdsTabDIAS_REL: TIntegerField;
    cdsTabCLASSE_A: TStringField;
    cdsTabCLASSE_B: TStringField;
    cdsTabCLASSE_C: TStringField;
    cdsTabEXEC: TStringField;
    cdsTabMENSAL: TDateField;
    cdsTabSEMANAL: TDateField;
    cdsTabACAIXA: TStringField;
    cdsTabULT_REDU: TDateField;
    cdsTabHORA_REDU: TTimeField;
    cdsTabCEP: TStringField;
    cdsTabCONTA_ANA: TIntegerField;
    cdsTabBAIXA_ESTOQUE_TA: TStringField;
    cdsTabUSAR_EMBALAGEM: TStringField;
    cdsTabUSA_AVISO_C_COBRANCAO: TStringField;
    cdsTabUSA_ATUALIZA_ESTOQUE_CADASTRO: TStringField;
    cdsTabUSA_TRAVA_MUDAR_CLIENTE_PDV: TStringField;
    cdsTabCONTA_CAIXA_LOCAL: TIntegerField;
    cdsTabUSA_IMP_CLIENTE_COMP: TStringField;
    cdsTabUSA_PERNOITE: TStringField;
    cdsTabUSA_CONT_QUANTIDADE: TStringField;
    cdsTabCOD_GPRS_PRC: TStringField;
    txtNome: TRLLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Parcelas : String;
    vParc : Double;
  end;

var
  frmRecibo: TfrmRecibo;

implementation

uses UFuncoes, UDados;

{$R *.dfm}

procedure TfrmRecibo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsTab.Close;
  Release;
end;

procedure TfrmRecibo.FormCreate(Sender: TObject);
begin
  Dados.cdsParam.Open;
end;

procedure TfrmRecibo.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   if ((dados.cdsParamLOGOTIPO.IsNull) or (Dados.cdsParamLOGOTIPO.BlobSize > 0)) then begin
      ObtemFotoRel(dados.cdsParamLOGOTIPO, RLLogo);
   end;
end;

procedure TfrmRecibo.RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   txtQuantia.Caption := FormatCurr('R$ #,##0.00', vParc);
   txtQuantiaExtenso.Caption := UpperCase(ValorPorExtenso(vParc));
   txtParcelas.Caption := Parcelas;
end;

end.
