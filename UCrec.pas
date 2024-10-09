unit UCrec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, FMTBcd, DB, SqlExpr, DBClient, Provider, StdCtrls, Buttons,
  PngBitBtn, pngimage, ExtCtrls, rxToolEdit, RXDBCtrl, Mask, DBCtrls, Grids,
  DBGrids;

type
  TfrmCrec = class(TfrmPadrao)
    GroupBox2: TGroupBox;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBDateEdit3: TDBDateEdit;
    Label29: TLabel;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Label9: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    Label14: TLabel;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    dsBaixa: TDataSource;
    dspBaixas: TDataSetProvider;
    cdsBaixa: TClientDataSet;
    sqlBaixa: TSQLQuery;
    AtualizaCrec: TSQLStoredProc;
    btBaixar: TPngBitBtn;
    Baixar: TSQLStoredProc;
    Estornar: TSQLStoredProc;
    cdsTabCOD_REC: TIntegerField;
    cdsTabDAT_LANC: TDateField;
    cdsTabCOD_TRANSACAO: TIntegerField;
    cdsTabCOD_CLIE: TIntegerField;
    cdsTabHISTORICO: TStringField;
    cdsTabPARCELA: TStringField;
    cdsTabVENCIMENTO: TDateField;
    cdsTabVLR_PRINC: TSingleField;
    cdsTabVLR_DESC: TSingleField;
    cdsTabVLR_ACRES: TSingleField;
    cdsTabVLR_CREDITO: TSingleField;
    cdsTabSALDO_DEV: TSingleField;
    cdsTabPOSICAO: TStringField;
    cdsBaixaCOD_REC: TIntegerField;
    cdsBaixaDAT_BAIXA: TDateField;
    cdsBaixaVLR_BAIXA: TSingleField;
    procedure btNovoClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PegaBaixa;
    procedure btBaixarClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCrec: TfrmCrec;

implementation

uses UDados, UFuncoes;

{$R *.dfm}

procedure TfrmCrec.btBaixarClick(Sender: TObject);
var
  Str, Data : String;
begin
  inherited;
     str := InputBox('Informe o Valor da Baixa', 'Valor da Baixa (Ex: 10,00)', cdsTabSALDO_DEV.AsString);
     Data := InputBox('Informe a Data da Baixa', 'Data da Baixa (Ex: 00/00/0000)', DateToStr(Date));
  if application.MessageBox('Deseja Efetuar Baixa Da Conta Agora?', 'Confirmação', mB_YesNO + MB_IconQuestion) = idYes then begin
     Baixar.Close;
     Baixar.ParamByName('COD_REC').AsInteger := cdsTabCOD_REC.AsInteger;
     Baixar.ParamByName('VALOR').AsFloat := StrToFloat(Str);
     Baixar.ParamByName('DAT_BAIXA').AsDate := StrToDate(Data);
     Baixar.ExecProc;
     cdsTab.Refresh;
     PegaBaixa;
  end;
end;

procedure TfrmCrec.btGravarClick(Sender: TObject);
begin
if not DataValida(cdsTabVENCIMENTO.AsString) then begin
   Application.MessageBox('Informe Uma Data Válida', 'Atenção', MB_ICONQUESTION);
   DBDateEdit1.SetFocus;
   Exit;
end;
if Vazio(DBEdit4.Text) then begin
   Application.MessageBox('Informe o Valor Principal do Documento.', 'Atenção', MB_ICONQUESTION);
   DBEdit4.SetFocus;
   Exit;
end;
if Vazio(DBLookupComboBox2.Text) then begin
   Application.MessageBox('Informe o Cliente do Documento.', 'Atenção', MB_ICONQUESTION);
   DBLookupComboBox2.SetFocus;
   Exit;
end;
  inherited;
  PegaBaixa;
  cdsTab.Refresh;
end;

procedure TfrmCrec.btNovoClick(Sender: TObject);
begin
  inherited;
  cdsTabCOD_REC.AsInteger := PegaSequencia('GEN_CREC_ID');
  cdsTabDAT_LANC.AsDateTime := Date;
  cdsTabPOSICAO.AsString := 'A';
  cdsTabPARCELA.AsString := '1 / 1';
  DBEdit3.SetFocus;
  PegaBaixa;
end;

procedure TfrmCrec.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if Key = VK_F10 then begin
  if application.MessageBox('Deseja Efetuar Estorno Da Baixa Da Conta Agora?', 'Confirmação', mB_YesNO + MB_IconQuestion) = idYes then begin
{    Estornar.Close;
    Estornar.ParamByName('COD_REC').AsInteger := cdsTabCOD_REC.AsInteger;
    Estornar.ParamByName('TRANSACAO').AsInteger := cdsBaixaNUM_TRANS.AsInteger;
    Estornar.ExecProc;
    PegaBaixa;
    cdsTab.Refresh;}
  end;
 end;
end;

procedure TfrmCrec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dados.cdsComprador.Close;
  inherited;
end;

procedure TfrmCrec.FormShow(Sender: TObject);
begin
  inherited;
  dados.cdsComprador.Open;
  PegaBaixa;
end;

procedure TfrmCrec.PegaBaixa;
begin
  cdsBaixa.Close;
  sqlBaixa.Close;
  sqlBaixa.ParamByName('COD_REC').AsInteger := cdsTabCOD_REC.AsInteger;
  cdsBaixa.Open;
end;

end.
