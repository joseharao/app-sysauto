unit UlANCA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ULGenerico, FMTBcd, DB, SqlExpr, Provider, DBClient, Grids, DBGrids,
  StdCtrls, Buttons, PngBitBtn, ExtCtrls, Mask, rxToolEdit, rxCurrEdit;

type
  TfrmLCCaixa = class(TfrmLGenerico)
    GroupBox3: TGroupBox;
    txtInicio: TDateEdit;
    Label1: TLabel;
    txtTermino: TDateEdit;
    Label30: TLabel;
    txtAReceber: TCurrencyEdit;
    txtVencida: TCurrencyEdit;
    Label31: TLabel;
    Label34: TLabel;
    txtGeral: TCurrencyEdit;
    txtSaldo: TCurrencyEdit;
    Label2: TLabel;
    Shape1: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Shape2: TShape;
    Label5: TLabel;
    Shape3: TShape;
    cdsTabCOD_LANCA: TIntegerField;
    cdsTabDAT_LANCA: TDateField;
    cdsTabCOD_TRANSACAO: TIntegerField;
    cdsTabHISTORICO: TStringField;
    cdsTabOPERACAO: TStringField;
    cdsTabVLR_LANCA: TSingleField;
    procedure MontaSql;
    procedure grdDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btConsultarClick(Sender: TObject);
    procedure AbreLanca;
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
  frmLCCaixa: TfrmLCCaixa;

implementation

uses UFuncoes, UDados, UCCaixa;

{$R *.dfm}

procedure TfrmLCCaixa.AbreLanca;
begin
   Application.CreateForm(TfrmCCaixa, frmCCaixa);
   frmCCaixa.sqlTab.Close;
   frmCCaixa.cdsTab.Close;
   frmCCaixa.sqlTab.ParamByName('COD_LANCA').AsInteger := cdsTabCOD_LANCA.AsInteger;
   frmCCaixa.Campo := 'COD_LANCA';
   frmCCaixa.cdsTab.Open;
   frmCCaixa.ShowModal;
end;

procedure TfrmLCCaixa.btConsultarClick(Sender: TObject);
begin
 MontaSql;
  inherited;
end;

procedure TfrmLCCaixa.btEditarClick(Sender: TObject);
begin
  inherited;
  AbreLanca;
  btConsultarClick(sender);
end;

procedure TfrmLCCaixa.grdDadosDblClick(Sender: TObject);
begin
  inherited;
  AbreLanca;
end;

procedure TfrmLCCaixa.grdDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
If cdsTabOPERACAO.AsString = 'E' then begin
   grdDados.Canvas.Brush.Color:= clBlue;
   grdDados.Canvas.Font.Color := clWhite;
end else If cdsTabOPERACAO.AsString = 'S' then begin
   grdDados.Canvas.Brush.Color:= clRed;
   grdDados.Canvas.Font.Color := clWhite;
end else If cdsTabOPERACAO.AsString = 'R' then begin
   grdDados.Canvas.Brush.Color:= $00408000;
   grdDados.Canvas.Font.Color := clWhite;
end;
    grdDados.Canvas.FillRect(Rect);
    grdDados.DefaultDrawColumnCell(Rect,grdDados.Columns[DataCol].Index,Column,State);
end;

procedure TfrmLCCaixa.grdDadosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key = 13 then
  AbreLanca;
end;

procedure TfrmLCCaixa.MontaSql;
var
  E, S, R : Double;
begin
  sql := 'SELECT * FROM LANCA';
  if DataValida(txtInicio.Text) and DataValida(txtTermino.Text) then begin
     sql := sql + ' WHERE DAT_LANCA BETWEEN '+#39+ DataToSql(txtInicio.Text) +#39+ ' AND '+#39+ DataToSql(txtTermino.Text) +#39;
  end;
  sql := sql + ' ORDER BY DAT_LANCA';
  with dados do begin
     sqlBusca.Close;
     sqlBusca.SQL.Clear;
     sqlBusca.SQL.Add(sql);
     sqlBusca.Open;
  end;
  dados.sqlBusca.First;
  while not dados.sqlBusca.Eof do begin
      if dados.sqlBusca.FieldByName('OPERACAO').AsString = 'E' then begin
         E := E + dados.sqlBusca.FieldByName('VLR_LANCA').AsFloat;
      end else if dados.sqlBusca.FieldByName('OPERACAO').AsString = 'S' then begin
         S := S + dados.sqlBusca.FieldByName('VLR_LANCA').AsFloat;
      end else  if dados.sqlBusca.FieldByName('OPERACAO').AsString = 'R' then begin
         R := R + dados.sqlBusca.FieldByName('VLR_LANCA').AsFloat;
      end;
    dados.sqlBusca.Next;
  end;
  dados.sqlBusca.Close;
  txtAReceber.Value := E; txtVencida.Value := S; txtGeral.Value := R; txtSaldo.Value := E + R - S;
end;

end.
