unit ULHelpDesk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ULGenerico, FMTBcd, DB, SqlExpr, Provider, DBClient, StdCtrls, Grids,
  DBGrids, Buttons, PngBitBtn, ExtCtrls;

type
  TfrmLChamados = class(TfrmLGenerico)
    cdsTabCOD_CHAMADO: TIntegerField;
    cdsTabDAT_CHAMADO: TDateField;
    cdsTabCOD_CLIE: TIntegerField;
    cdsTabVEICULO: TStringField;
    cdsTabASSUNTO_ALEGADO: TStringField;
    cdsTabSOLUCAO: TStringField;
    cdsTabSTATUS_CHAMADO: TStringField;
    cdsTabNOME: TStringField;
    txtConsulta: TEdit;
    Label1: TLabel;
    procedure btConsultarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLChamados: TfrmLChamados;

implementation

uses UFuncoes, UChamado;

{$R *.dfm}

procedure TfrmLChamados.btConsultarClick(Sender: TObject);
begin
 sql := 'SELECT * FROM CHAMADOS C, COMPRADOR CC WHERE C.COD_CLIE = CC.COD_COMP';
 if not Vazio(txtConsulta.Text) then begin
    sql := sql + ' AND CC.NOME LIKE ' +QuotedStr('%'+txtConsulta.Text+'%');
 end;
  inherited;
end;

procedure TfrmLChamados.btEditarClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmChamados, frmChamados);
  frmChamados.cdsTab.Close;
  frmChamados.sqlTab.Close;
  frmChamados.sqlTab.ParamByName('COD_CHAMADO').AsInteger := cdsTabCOD_CHAMADO.AsInteger;
  frmChamados.cdsTab.Open;
  frmChamados.Cod_Padrao := cdsTabCOD_CHAMADO.AsInteger;
  frmChamados.Campo := 'COD_CHAMADO';
  frmChamados.ShowModal;
end;

end.
