unit ULAlienacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ULGenerico, FMTBcd, DB, SqlExpr, Provider, DBClient, StdCtrls, Grids,
  DBGrids, Buttons, PngBitBtn, ExtCtrls;

type
  TfrmLAlienacao = class(TfrmLGenerico)
    Label1: TLabel;
    txtLocaliza: TEdit;
    cdsTabALIENACAO: TStringField;
    procedure MontaSQL;
    procedure btConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLAlienacao: TfrmLAlienacao;

implementation

uses UFuncoes;

{$R *.dfm}

{ TfrmLGenerico1 }

procedure TfrmLAlienacao.btConsultarClick(Sender: TObject);
begin
MontaSQL;
  inherited;
end;

procedure TfrmLAlienacao.MontaSQL;
begin
sql := 'SELECT * FROM ALIENACAO';
  if not Vazio(txtLocaliza.Text) then begin
      sql := sql + ' WHERE ALIENACAO LIKE %' +QuotedStr(txtLocaliza.Text)+'%';
  end;
  sql := sql + ' ORDER BY ALIENACAO';
end;

end.
