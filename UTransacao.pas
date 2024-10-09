unit UTransacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, FMTBcd, DB, SqlExpr, DBClient, Provider, StdCtrls, Buttons,
  PngBitBtn, pngimage, ExtCtrls, rxToolEdit, RXDBCtrl, Mask, DBCtrls, ComCtrls,
  Menus;

type
  TfrmTransacao = class(TfrmPadrao)
    cdsTabCOD_TRANS: TIntegerField;
    cdsTabDAT_CAD: TDateField;
    cdsTabTP_TRANS: TStringField;
    cdsTabCOD_COMP: TIntegerField;
    cdsTabCOD_VEND: TIntegerField;
    cdsTabVLR_TRANS: TSingleField;
    cdsTabDESCRICAO: TStringField;
    cdsTabMARCA: TStringField;
    cdsTabANO: TStringField;
    cdsTabKM: TStringField;
    cdsTabMODELO: TStringField;
    cdsTabCOR: TStringField;
    cdsTabPLACA: TStringField;
    cdsTabCHASSI: TStringField;
    cdsTabRENAVAN: TStringField;
    cdsTabCOMBUSTIVEL: TStringField;
    cdsTabF_PAG: TStringField;
    cdsTabBASE_CALCULO: TSingleField;
    cdsTabPERCENTUAL: TSingleField;
    cdsTabPRAZO: TIntegerField;
    cdsTabPARCELAS: TIntegerField;
    cdsTabENTRADA: TSingleField;
    cdsTabENTRADA_VEIC: TSingleField;
    cdsTabOBS: TBlobField;
    cdsTabPOSICAO: TStringField;
    cdsTabHORA_REC: TTimeField;
    btImprimir: TPngBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit1: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBMemo1: TDBMemo;
    cdsTabDESC_VEICCOMP: TStringField;
    cdsTabMARCA_COMP: TStringField;
    cdsTabANO_COMP: TStringField;
    cdsTabKM_COMP: TStringField;
    cdsTabMODELO_COMP: TStringField;
    cdsTabCOR_COMP: TStringField;
    cdsTabPLACA_COMP: TStringField;
    cdsTabCHASSI_COMP: TStringField;
    cdsTabRENAVAN_COMP: TStringField;
    cdsTabCOMBUSTIVEL_COMP: TStringField;
    GroupBox3: TGroupBox;
    Label26: TLabel;
    DBEdit19: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit20: TDBEdit;
    Label29: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    Label32: TLabel;
    DBEdit25: TDBEdit;
    Label33: TLabel;
    DBEdit26: TDBEdit;
    Label34: TLabel;
    Menu: TPopupMenu;
    Contrato1: TMenuItem;
    ermodeGarantia1: TMenuItem;
    FaturarVenda1: TMenuItem;
    FaturaTransacao: TSQLStoredProc;
    DBLookupComboBox3: TDBLookupComboBox;
    cdsTabCOD_VEICULO: TIntegerField;
    cdsTabCOD_VEICULOTROCA: TIntegerField;
    DBLookupComboBox4: TDBLookupComboBox;
    procedure btNovoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btImprimirClick(Sender: TObject);
    procedure Contrato1Click(Sender: TObject);
    procedure ermodeGarantia1Click(Sender: TObject);
    procedure FaturarVenda1Click(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTransacao: TfrmTransacao;

implementation

uses UDados, UFuncoes, URContrato, UTermoGarantia;

{$R *.dfm}

procedure TfrmTransacao.btEditarClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TfrmTransacao.btImprimirClick(Sender: TObject);
begin
  Menu.PopUp(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  inherited;
{if application.MessageBox('Deseja Imprimir Transação Agora?', 'Confirmação', mb_yesNo + mb_IconQuestion) = idYes then begin
  Application.CreateForm(TfrmContrato, frmContrato);
  frmContrato.cdsTab.Close;
  frmContrato.sqlTab.Close;
  frmContrato.sqlTab.ParamByName('COD_TRANS').AsInteger := cdsTabCOD_TRANS.AsInteger;
  frmContrato.cdsTab.Open;
if not frmContrato.cdsTab.Eof then begin
 if cdsTabTP_TRANS.AsString <> 'T' then begin
  frmContrato.RLReport1.PreviewModal;
 end else begin
  frmContrato.RLReport2.PreviewModal;
 end;
  frmContrato.cdsTab.Close;
  frmContrato.FreeOnRelease;
end else begin
  Application.MessageBox('Não Há Dados a Serem Impressos', 'Atenção', MB_ICONEXCLAMATION);
  frmContrato.cdsTab.Close;
  frmContrato.FreeOnRelease;
end;
end;}
end;

procedure TfrmTransacao.btNovoClick(Sender: TObject);
begin
  inherited;
  cdsTabCOD_TRANS.AsInteger := PegaSequencia('GEN_TRANSACAO_ID');
  cdsTabDAT_CAD.AsDateTime := Date;
  DBEdit2.SetFocus;
end;

procedure TfrmTransacao.Contrato1Click(Sender: TObject);
begin
  inherited;
if application.MessageBox('Deseja Imprimir Contrato de Compra e Venda?', 'Confirmação', mb_yesNo + mb_IconQuestion) = idYes then begin
  Application.CreateForm(TfrmContrato, frmContrato);
  frmContrato.cdsTab.Close;
  frmContrato.sqlTab.Close;
  frmContrato.sqlTab.ParamByName('COD_TRANS').AsInteger := cdsTabCOD_TRANS.AsInteger;
  frmContrato.cdsTab.Open;
if not frmContrato.cdsTab.Eof then begin
 if cdsTabTP_TRANS.AsString <> 'T' then begin
  frmContrato.RLReport1.PreviewModal;
 end else begin
  frmContrato.RLReport2.PreviewModal;
 end;
  frmContrato.cdsTab.Close;
  frmContrato.FreeOnRelease;
end else begin
  Application.MessageBox('Não Há Dados a Serem Impressos', 'Atenção', MB_ICONEXCLAMATION);
  frmContrato.cdsTab.Close;
  frmContrato.FreeOnRelease;
end;
end;
end;

procedure TfrmTransacao.DBLookupComboBox3Exit(Sender: TObject);
begin
  inherited;
if dsTab.State in [dsInsert, dsEdit] then begin
   dados.sqlBusca.Close;
   dados.sqlBusca.SQL.Clear;
   dados.sqlBusca.SQL.Add('SELECT * FROM VEICULOS WHERE COD_VEICULO = '+QuotedStr(cdsTabCOD_VEICULO.AsString));
   dados.sqlBusca.Open;
   cdsTabPLACA.AsString := Dados.sqlBusca.FieldByName('PLACA').AsString;
   cdsTabCHASSI.AsString := dados.sqlBusca.FieldByName('CHASSI').AsString;
   cdsTabRENAVAN.AsString := Dados.sqlBusca.FieldByName('RENAVAN').AsString;
   cdsTabMARCA.AsString := Dados.sqlBusca.FieldByName('MARCA').AsString;
   cdsTabMODELO.AsString := dados.sqlBusca.FieldByName('MODELO').AsString;
   cdsTabCOR.AsString := Dados.sqlBusca.FieldByName('COR').AsString;
   cdsTabANO.AsString := Dados.sqlBusca.FieldByName('ANO').AsString;
   Dados.sqlBusca.Close;
end;
end;

procedure TfrmTransacao.DBLookupComboBox4Exit(Sender: TObject);
begin
  inherited;
  if dsTab.State in [dsInsert, dsEdit] then begin
   dados.sqlBusca.Close;
   dados.sqlBusca.SQL.Clear;
   dados.sqlBusca.SQL.Add('SELECT * FROM VEICULOS WHERE COD_VEICULO = '+QuotedStr(cdsTabCOD_VEICULOTROCA.AsString));
   dados.sqlBusca.Open;
   cdsTabPLACA_COMP.AsString := Dados.sqlBusca.FieldByName('PLACA').AsString;
   cdsTabCHASSI_COMP.AsString := dados.sqlBusca.FieldByName('CHASSI').AsString;
   cdsTabRENAVAN_COMP.AsString := Dados.sqlBusca.FieldByName('RENAVAN').AsString;
   cdsTabMARCA_COMP.AsString := Dados.sqlBusca.FieldByName('MARCA').AsString;
   cdsTabMODELO_COMP.AsString := dados.sqlBusca.FieldByName('MODELO').AsString;
   cdsTabCOR_COMP.AsString := Dados.sqlBusca.FieldByName('COR').AsString;
   cdsTabANO_COMP.AsString := Dados.sqlBusca.FieldByName('ANO').AsString;
   Dados.sqlBusca.Close;
end;
end;

procedure TfrmTransacao.ermodeGarantia1Click(Sender: TObject);
begin
  inherited;
if application.MessageBox('Deseja Imprimir Termo de Garantia?', 'Confirmação', mb_yesNo + mb_IconQuestion) = idYes then begin
  Application.CreateForm(TfrmTermoGarantia, frmTermoGarantia);
  frmTermoGarantia.RLReport1.PreviewModal;
  frmTermoGarantia.FreeOnRelease;
end else begin
  Application.MessageBox('Não Há Dados a Serem Impressos', 'Atenção', MB_ICONEXCLAMATION);
end;
end;

procedure TfrmTransacao.FaturarVenda1Click(Sender: TObject);
begin
  inherited;
 if cdsTabPOSICAO.AsString = 'F' then begin
    Application.MessageBox('Transação Já Finalizada', 'Atenção', MB_ICONEXCLAMATION);
    Exit;
 end;
 if Application.MessageBox('Deseja Realmente Faturar a Transação Selecionada?', 'Confirmação', mb_YesNo + MB_ICONQUESTION) = idYes then begin
    FaturaTransacao.Close;
    FaturaTransacao.ParamByName('COD_TRANS').AsInteger := cdsTabCOD_TRANS.AsInteger;
    FaturaTransacao.ParamByName('DAT_BASE').AsDate := cdsTabDAT_CAD.AsDateTime;
    FaturaTransacao.ExecProc;
    cdsTab.Refresh;
    Application.MessageBox('Transação Faturada Com Sucesso!!!', 'Sucesso', MB_ICONQUESTION);
 end;
end;

procedure TfrmTransacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dados.cdsComprador.Close;
  dados.cdsVendedor.Close;
  dados.cdsVeiculo.Close;
  inherited;
end;

procedure TfrmTransacao.FormShow(Sender: TObject);
begin
  inherited;
  dados.cdsComprador.Open;
  dados.cdsVendedor.Open;
  DADOS.cdsVeiculo.Open;
end;

end.
