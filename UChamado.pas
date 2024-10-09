unit UChamado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, FMTBcd, DB, SqlExpr, DBClient, Provider, StdCtrls, Buttons,
  PngBitBtn, pngimage, ExtCtrls, DBCtrls, rxToolEdit, RXDBCtrl, Mask;

type
  TfrmChamados = class(TfrmPadrao)
    cdsTabCOD_CHAMADO: TIntegerField;
    cdsTabDAT_CHAMADO: TDateField;
    cdsTabCOD_CLIE: TIntegerField;
    cdsTabVEICULO: TStringField;
    cdsTabASSUNTO_ALEGADO: TStringField;
    cdsTabSOLUCAO: TStringField;
    cdsTabSTATUS_CHAMADO: TStringField;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label29: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBDateEdit3: TDBDateEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Label7: TLabel;
    DBMemo2: TDBMemo;
    Label8: TLabel;
    procedure btNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChamados: TfrmChamados;

implementation

uses UFuncoes, UDados;

{$R *.dfm}

procedure TfrmChamados.btNovoClick(Sender: TObject);
begin
  inherited;
  cdsTabCOD_CHAMADO.AsInteger := PegaSequencia('GEN_CHAMADOS_ID');
  cdsTabDAT_CHAMADO.AsDateTime := Date;
  DBLookupComboBox2.SetFocus;
end;

procedure TfrmChamados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dados.cdsComprador.Close;
  inherited;
end;

procedure TfrmChamados.FormShow(Sender: TObject);
begin
  inherited;
  Dados.cdsComprador.Open;
end;

end.
