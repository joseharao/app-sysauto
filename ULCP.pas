unit ULCP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ULGenerico, FMTBcd, DB, SqlExpr, Provider, DBClient, Grids, DBGrids,
  StdCtrls, Buttons, PngBitBtn, ExtCtrls, Mask, rxToolEdit, DBCtrls, rxCurrEdit;

type
  TfrmLCP = class(TfrmLGenerico)
    GroupBox3: TGroupBox;
    Label1: TLabel;
    txtInicio: TDateEdit;
    txtTermino: TDateEdit;
    Label2: TLabel;
    txtLocaliza: TEdit;
    GroupBox4: TGroupBox;
    txtCampo: TComboBox;
    GroupBox6: TGroupBox;
    txtPosicao: TComboBox;
    txtOrdem: TRadioGroup;
    Label30: TLabel;
    txtAReceber: TCurrencyEdit;
    txtVencida: TCurrencyEdit;
    Label31: TLabel;
    txtJuros: TCurrencyEdit;
    Label32: TLabel;
    txtPago: TCurrencyEdit;
    Label33: TLabel;
    Label34: TLabel;
    txtDevolvido: TCurrencyEdit;
    Label3: TLabel;
    txtGeral: TCurrencyEdit;
    sqlTabCOD_REC: TIntegerField;
    sqlTabDAT_LANC: TDateField;
    sqlTabCOD_CLIE: TIntegerField;
    sqlTabNOME: TStringField;
    sqlTabPARCELA: TStringField;
    sqlTabVENCIMENTO: TDateField;
    sqlTabVLR_PRINC: TSingleField;
    sqlTabVLR_ACRES: TSingleField;
    sqlTabSALDO_DEV: TSingleField;
    sqlTabPOSICAO: TStringField;
    cdsTabCOD_REC: TIntegerField;
    cdsTabDAT_LANC: TDateField;
    cdsTabCOD_CLIE: TIntegerField;
    cdsTabNOME: TStringField;
    cdsTabPARCELA: TStringField;
    cdsTabVENCIMENTO: TDateField;
    cdsTabVLR_PRINC: TSingleField;
    cdsTabVLR_ACRES: TSingleField;
    cdsTabSALDO_DEV: TSingleField;
    cdsTabPOSICAO: TStringField;
    procedure MontaSql;
    procedure AbreCrec;
    procedure btConsultarClick(Sender: TObject);
    procedure grdDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
  frmLCP: TfrmLCP;

implementation

uses UDados, UFuncoes, UCrec, UCP;

{$R *.dfm}

procedure TfrmLCP.AbreCrec;
begin
   Application.CreateForm(TfrmCP, frmCP);
   frmCP.sqlTab.Close;
   frmCP.cdsTab.Close;
   frmCP.sqlTab.ParamByName('COD_REC').AsInteger := cdsTabCOD_REC.AsInteger;
   frmCP.Campo := 'COD_REC';
   frmCP.cdsTab.Open;
   frmCP.ShowModal;
  if cdsTab.Active then begin
   cdsTab.Refresh;
  end;
end;

procedure TfrmLCP.btConsultarClick(Sender: TObject);
begin
MontaSql;
  inherited;
end;

procedure TfrmLCP.btEditarClick(Sender: TObject);
begin
  inherited;
  AbreCrec;
  btConsultarClick(sender);
end;

procedure TfrmLCP.grdDadosDblClick(Sender: TObject);
begin
  inherited;
  AbreCrec;
end;

procedure TfrmLCP.grdDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
If cdsTabPOSICAO.AsString = 'A' then begin
   grdDados.Canvas.Brush.Color:= clBlue;
   grdDados.Canvas.Font.Color := clWhite;
end else If cdsTabPOSICAO.AsString = 'C' then begin
   grdDados.Canvas.Brush.Color:= $000080FF;
   grdDados.Canvas.Font.Color := clWhite;
end else If cdsTabPOSICAO.AsString = 'D' then begin
   grdDados.Canvas.Brush.Color:= clGreen;
   grdDados.Canvas.Font.Color := clWhite;
end else If cdsTabPOSICAO.AsString = 'V' then begin
   grdDados.Canvas.Brush.Color:= clRed;
   grdDados.Canvas.Font.Color := clWhite;
end else If cdsTabPOSICAO.AsString = 'Q' then begin
   grdDados.Canvas.Brush.Color:= clBlack;
   grdDados.Canvas.Font.Color := clWhite;
end;
    grdDados.Canvas.FillRect(Rect);
    grdDados.DefaultDrawColumnCell(Rect,grdDados.Columns[DataCol].Index,Column,State);
end;

procedure TfrmLCP.grdDadosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if key = 13 then begin
    AbreCrec;
 end else if key = VK_F10 then begin
    cdsTab.Edit;
  if cdsTabPOSICAO.AsString = 'C' then begin
    cdsTabPOSICAO.AsString := 'V';
  end else begin
    cdsTabPOSICAO.AsString := 'C';
  end;
    cdsTab.Post;
    cdsTab.ApplyUpdates(-1);
 end;
end;

procedure TfrmLCP.MontaSql;
var
  AVencer, Vencidos, EmAberto, Pagos, Todos, Devolvidos, Caducas : Double;
begin
  sql := 'SELECT ' +
         ' C.COD_REC, C.DAT_LANC, C.COD_CLIE, CC.NOME, C.PARCELA, C.VENCIMENTO, C.VLR_PRINC, C.VLR_ACRES, C.SALDO_DEV, ' +
         ' C.POSICAO ' +
         ' FROM CP C, COMPRADOR CC WHERE C.COD_CLIE = CC.COD_COMP';
 if not Vazio(txtLocaliza.Text) then begin
    case txtCampo.ItemIndex of
        0: sql := sql + ' AND C.COD_REC LIKE '+#39+ txtLocaliza.Text +'%'+#39;
        1: sql := sql + ' AND C.COD_CLIE LIKE '+#39+ txtLocaliza.Text +'%'+#39;
        2: sql := sql + ' AND CC.NOME LIKE '+#39+ txtLocaliza.Text +'%'+#39;
    end;
  end;
    if DataValida(txtInicio.Text) and DataValida(txtTermino.Text) then begin
         sql := sql + ' WHERE C.VENCIMENTO BETWEEN '+#39+ DataToSql(txtInicio.Text) +#39+ ' AND '+#39+ DataToSql(txtTermino.Text) +#39;
    end;
  case txtPosicao.ItemIndex of
    0: sql := sql + ' AND C.POSICAO IN (''A'', ''V'')';
    1: sql := sql + ' AND C.POSICAO IN (''A'')';
    2: sql := sql + ' AND C.POSICAO IN (''V'')';
    3: sql := sql + ' AND C.POSICAO IN (''Q'')';
    4: sql := sql + ' AND C.POSICAO IN (''D'')';
    5: sql := sql + ' AND C.POSICAO IN (''C'')';
    6: sql := sql + ' AND C.POSICAO IN (''A'', ''V'', ''Q'', ''D'', ''C'')';
  end;
  case txtOrdem.ItemIndex of
      0: sql := sql + ' ORDER BY CC.NOME';
      1: sql := sql + ' ORDER BY C.VENCIMENTO';
      2: sql := sql + ' ORDER BY C.DAT_LANC';
      3: sql := sql + ' ORDER BY C.POSICAO';
  end;
     AVencer := 0; Vencidos := 0; EmAberto := 0; Pagos := 0; Todos := 0; Caducas := 0; Devolvidos := 0;
     dados.sqlBusca.Close;
     dados.sqlBusca.SQL.Clear;
     dados.sqlBusca.SQL.Add(sql);
     dados.sqlBusca.Open;
     dados.sqlBusca.First;
     while not dados.sqlBusca.Eof do begin
         if (dados.sqlBusca.FieldByName('POSICAO').AsString = 'A') then begin
            AVencer := AVencer + dados.sqlBusca.FieldByName('SALDO_DEV').AsFloat;
         end;
         if (dados.sqlBusca.FieldByName('POSICAO').AsString = 'V') then begin
            Vencidos := Vencidos + dados.sqlBusca.FieldByName('SALDO_DEV').AsFloat;
         end;
         if (dados.sqlBusca.FieldByName('POSICAO').AsString = 'A') or (dados.sqlBusca.FieldByName('POSICAO').AsString = 'V') then begin
            EmAberto := EmAberto + dados.sqlBusca.FieldByName('SALDO_DEV').AsFloat;
         end;
         if (dados.sqlBusca.FieldByName('POSICAO').AsString = 'D') then begin
            Devolvidos := Devolvidos + dados.sqlBusca.FieldByName('SALDO_DEV').AsFloat;
         end;
         if (dados.sqlBusca.FieldByName('POSICAO').AsString = 'C') then begin
            Caducas := Caducas + dados.sqlBusca.FieldByName('SALDO_DEV').AsFloat;
         end;
         if (dados.sqlBusca.FieldByName('POSICAO').AsString = 'Q') then begin
            Pagos := Pagos + dados.sqlBusca.FieldByName('VLR_PRINC').AsFloat;
         end;
         Todos := Todos + dados.sqlBusca.FieldByName('SALDO_DEV').AsFloat;
         dados.sqlBusca.Next;
     end;
     dados.sqlBusca.Close;
     txtAReceber.Value := AVencer; txtVencida.Value := Vencidos; txtJuros.Value := Caducas; txtPago.Value := Pagos; txtGeral.Value := Todos;
     txtDevolvido.Value := Devolvidos;
end;

end.
