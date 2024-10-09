unit ULGenerico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, PngBitBtn, Grids, DBGrids, FMTBcd, DB,
  SqlExpr, Provider, DBClient, WideStrings, DBXFirebird, Registry, IdCoder,
  IdCoder3to4, IdCoderMIME, IdBaseComponent;

type
  TfrmLGenerico = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    status: TPanel;
    GroupBox1: TGroupBox;
    btConsultar: TPngBitBtn;
    btEditar: TPngBitBtn;
    GroupBox2: TGroupBox;
    grdDados: TDBGrid;
    dsTab: TDataSource;
    cdsTab: TClientDataSet;
    dspTab: TDataSetProvider;
    sqlTab: TSQLQuery;
    Panel3: TPanel;
    lblRegistro: TLabel;
    procedure Consultar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure grdDadosTitleClick(Column: TColumn);
    procedure btConsultarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    sql, Usuario : String;
  end;
  Const
   BancoChave : String = '\Software\Microsoft\Windows\CurrentVersion\Explorer\ITAC\Banco';
var
  frmLGenerico: TfrmLGenerico;
  Reg : TRegistry;
implementation

uses UFuncoes, UDados, UPrincipal;

{$R *.dfm}

procedure TfrmLGenerico.btConsultarClick(Sender: TObject);
begin
  Consultar;
end;

procedure TfrmLGenerico.Consultar;
begin
   //Processo para efetuar consulta padrão
   cdsTab.Close;
   sqlTab.Close;
   sqlTab.SQL.Clear;
   sqlTab.SQL.Add(sql);
   cdsTab.Open;
   if cdsTab.Eof then begin
      lblRegistro.Caption := 'Registro(s) Listado(s): 0';
   end else begin
      lblRegistro.Caption := 'Registro(s) Listado(s): ' + IntToStr(cdsTab.RecordCount);
   end;
end;

procedure TfrmLGenerico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Release;
end;

procedure TfrmLGenerico.FormCreate(Sender: TObject);
begin
  status.Caption := frmPrincipal.sistema;
end;

procedure TfrmLGenerico.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then begin
  Key := #0;
  Perform(WM_NEXTDLGCTL, 0, 0)
end;
end;

procedure TfrmLGenerico.grdDadosTitleClick(Column: TColumn);
var
  i : integer;
begin
 for I := 0 to grdDados.Columns.Count - 1 do begin
      if (grdDados.Columns[i].Title.Font.Style = [fsBold]) then begin
         grdDados.Columns[i].Title.Font.Color := clBlack;
         grdDados.Columns[i].Title.Font.Style := [];
      end;
 end;
   cdsTab.IndexFieldNames := Column.FieldName;
   Column.Title.Font.Style := [fsBold];
 for I := 0 to grdDados.Columns.Count - 1 do begin
      if (grdDados.Columns[i].Title.Font.Style = [fsBold]) then begin
         grdDados.Columns[i].Title.Font.Color := clBlue;
         grdDados.Columns[i].Title.Font.Style := [fsBold];
      end else begin
         grdDados.Columns[i].Title.Font.Color := clBlack;
         grdDados.Columns[i].Title.Font.Style := [];
      end;
   end;
end;

end.
