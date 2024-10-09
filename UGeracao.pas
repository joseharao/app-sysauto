unit UGeracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, PngBitBtn, ComCtrls, ExtCtrls, DBCtrls, Mask,
  rxToolEdit, rxCurrEdit, DateUtils, FMTBcd, DB, SqlExpr, DBClient, Provider;

type
  TfrmGeracao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    btCopia: TPngBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label9: TLabel;
    txtValor: TCurrencyEdit;
    Label2: TLabel;
    txtNumParc: TEdit;
    Label3: TLabel;
    txtPrazo: TEdit;
    Label4: TLabel;
    dsTab: TDataSource;
    dspTab: TDataSetProvider;
    cdsTab: TClientDataSet;
    sqlTab: TSQLQuery;
    txtDat_Venda: TDateEdit;
    Label12: TLabel;
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
    procedure btCopiaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGeracao: TfrmGeracao;

implementation

uses UDados, UFuncoes;

{$R *.dfm}

procedure TfrmGeracao.btCopiaClick(Sender: TObject);
var
  i, pr: integer;
begin
if Vazio(DBLookupComboBox2.Text) then begin
   Application.MessageBox('Informe o Cliente do Documento.', 'Atenção', MB_ICONQUESTION);
   DBLookupComboBox2.SetFocus;
   Exit;
end;
if Vazio(txtNumParc.Text) then begin
   Application.MessageBox('Informe o Número do Parcelas.', 'Atenção', MB_ICONQUESTION);
   txtNumParc.SetFocus;
   Exit;
end;
if Vazio(txtPrazo.Text) then begin
   Application.MessageBox('Informe o Prazo Padrão', 'Atenção', MB_ICONQUESTION);
   txtPrazo.SetFocus;
   Exit;
end;
if not DataValida(txtDat_Venda.Text) then begin
   Application.MessageBox('Informe a Data da Venda', 'Atenção', MB_ICONQUESTION);
   txtDat_Venda.SetFocus;
   Exit;
end;
  if application.MessageBox('Deseja Parcelas A Receber Agora?', 'Confirmação', mB_YesNO + MB_IconQuestion) = idYes then begin
       i := 0; pr:=0;
       cdsTab.Open;
      for I := 0 to StrToInt(txtNumParc.Text) - 1 do begin
            pr := pr + StrToInt(txtPrazo.Text);
            cdsTab.Append;
            cdsTabCOD_REC.AsInteger := PegaSequencia('GEN_CREC_ID');
            cdsTabDAT_LANC.AsString := txtDat_Venda.Text;
            cdsTabCOD_CLIE.AsInteger := Dados.cdsCompradorCOD_COMP.AsInteger;
            cdsTabPARCELA.AsString := IntToStr(i + 1) + ' / ' + txtNumParc.Text;
            cdsTabHISTORICO.AsString := 'COMPRAS DO DIA ' + txtDat_Venda.Text;
            cdsTabVLR_PRINC.AsFloat := txtValor.Value;
            cdsTabVENCIMENTO.AsDateTime := IncDay(txtDat_Venda.Date, pr);
            cdsTabVLR_ACRES.AsFloat := 0;
            cdsTabVLR_DESC.AsFloat := 0;
            cdsTabSALDO_DEV.AsFloat := txtValor.Value;
            cdsTabPOSICAO.AsString := 'A';
            cdsTab.Post;
            cdsTab.ApplyUpdates(-1);
      end;
      cdsTab.Close;
      application.MessageBox('Processo Finalizado Com Sucesso...', 'Sucesso', MB_ICONQUESTION);
      txtValor.Value := 0;
      txtNumParc.Text := '';
      txtDat_Venda.Clear;
  end;
end;

procedure TfrmGeracao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 dados.cdsComprador.Close;
  release;
end;

procedure TfrmGeracao.FormShow(Sender: TObject);
begin
dados.cdsComprador.Open;
end;

end.
