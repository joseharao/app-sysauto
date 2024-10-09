unit ULTransacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ULGenerico, FMTBcd, DB, SqlExpr, Provider, DBClient, StdCtrls, Grids,
  DBGrids, Buttons, PngBitBtn, ExtCtrls;

type
  TfrmLTransacao = class(TfrmLGenerico)
    Label1: TLabel;
    txtLocalizar: TEdit;
    txtCampo: TComboBox;
    Label2: TLabel;
    cdsTabVENDEDOR: TStringField;
    cdsTabCOMPRADOR: TStringField;
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
    cdsTabOPERCAO: TStringField;
    procedure MontaSQL;
    procedure btConsultarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure grdDadosDblClick(Sender: TObject);
    procedure grdDadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLTransacao: TfrmLTransacao;
  sql1 : string;
implementation

uses UFuncoes, UTransacao;

{$R *.dfm}

{ TfrmLGenerico1 }

procedure TfrmLTransacao.btConsultarClick(Sender: TObject);
begin
MontaSQL;
  inherited;
end;

procedure TfrmLTransacao.btEditarClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmTransacao, frmTransacao);
  frmTransacao.AbreTabela('COD_TRANS', cdsTabCOD_TRANS.AsInteger);
  frmTransacao.ShowModal;
end;

procedure TfrmLTransacao.grdDadosDblClick(Sender: TObject);
begin
  inherited;
  btEditarClick(sender);
end;

procedure TfrmLTransacao.grdDadosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if key = 13 then
    btEditarClick(sender);
end;

procedure TfrmLTransacao.MontaSQL;
begin
  sql := ' SELECT ' +
         ' T.*, C.NOME AS COMPRADOR,  V.NOME AS VENDEDOR, ' +
         ' CASE T.TP_TRANS ' +
         '     WHEN ''V'' THEN ''Venda'' ' +
         '     WHEN ''T'' THEN ''Troca'' ' +
         '     WHEN ''C'' THEN ''Compra'' ' +
         ' END AS OPERCAO ' +
         ' FROM TRANSACAO T, COMPRADOR C, COMPRADOR V WHERE T.COD_COMP = C.COD_COMP AND T.COD_VEND = V.COD_COMP';
  sql1 := sql;
  if not Vazio(txtLocalizar.Text) then begin
      case txtCampo.ItemIndex of
          0: sql := sql + ' AND T.COD_TRANS = '+QuotedStr(txtLocalizar.Text);
          1: sql := sql + ' AND T.PLACA LIKE '+QuotedStr('%'+txtLocalizar.Text+'%');
          2: sql := sql + ' AND T.CHASSI LIKE  '+QuotedStr('%'+txtLocalizar.Text+'%');
          3: sql := sql + ' AND V.NOME LIKE '+QuotedStr('%'+txtLocalizar.Text+'%');
          4: sql := sql + ' AND C.NOME LIKE '+QuotedStr('%'+txtLocalizar.Text+'%');
      end;
      case txtCampo.ItemIndex of
          0: sql1 := sql1 + ' AND T.COD_TRANS = '+QuotedStr(txtLocalizar.Text);
          1: sql1 := sql1 + ' AND T.PLACA_COMP LIKE '+QuotedStr('%'+txtLocalizar.Text+'%');
          2: sql1 := sql1 + ' AND T.CHASSI_COMP LIKE  '+QuotedStr('%'+txtLocalizar.Text+'%');
          3: sql1 := sql1 + ' AND V.NOME LIKE '+QuotedStr('%'+txtLocalizar.Text+'%');
          4: sql1 := sql1 + ' AND C.NOME LIKE '+QuotedStr('%'+txtLocalizar.Text+'%');
      end;
  end;
  case txtCampo.ItemIndex of
          0: sql1 := sql1 + ' ORDER BY 1';
          1: sql1 := sql1 + ' ORDER BY 13';
          2: sql1 := sql1 + ' ORDER BY 15';
          3: sql1 := sql1 + ' ORDER BY 37';
          4: sql1 := sql1 + ' ORDER BY 36';
  end;
  sql := sql + #13 +' UNION ' +#13+ sql1;
end;

end.
