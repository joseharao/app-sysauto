unit UComprador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, FMTBcd, DB, SqlExpr, DBClient, Provider, StdCtrls, Buttons,
  PngBitBtn, pngimage, ExtCtrls, rxToolEdit, RXDBCtrl, Mask, DBCtrls, ComCtrls;

type
  TfrmComprador = class(TfrmPadrao)
    cdsTabCOD_COMP: TIntegerField;
    cdsTabDAT_CAD: TDateField;
    cdsTabNOME: TStringField;
    cdsTabAPELIDO: TStringField;
    cdsTabCPF_CNPJ: TStringField;
    cdsTabRG_IE: TStringField;
    cdsTabENDERECO: TStringField;
    cdsTabBAIRRO: TStringField;
    cdsTabCIDADE: TStringField;
    cdsTabUF: TStringField;
    cdsTabCEP: TStringField;
    cdsTabTELEFONE: TStringField;
    cdsTabTELEFONE1: TStringField;
    cdsTabTELEFONE2: TStringField;
    cdsTabOBS: TBlobField;
    cdsTabPOSICAO: TStringField;
    PngBitBtn1: TPngBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    lblNome: TLabel;
    lblCPF: TLabel;
    lblRG: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label26: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit3: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    cdsTabREFERENCIAS: TBlobField;
    DBMemo2: TDBMemo;
    Label11: TLabel;
    procedure btNovoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComprador: TfrmComprador;

implementation

uses UFuncoes, UArquivos;

{$R *.dfm}

procedure TfrmComprador.btEditarClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TfrmComprador.btNovoClick(Sender: TObject);
begin
  inherited;
  cdsTabCOD_COMP.AsInteger := PegaSequencia('GEN_COMPRADOR_ID');
  cdsTabDAT_CAD.AsDateTime := Date;
  DBEdit2.SetFocus;
end;

procedure TfrmComprador.PngBitBtn1Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmArquivos, frmArquivos);
  frmArquivos.cdsTab.Close;
  frmArquivos.sqlTab.Close;
  frmArquivos.sqlTab.ParamByName('COD_CLIE').AsInteger := cdsTabCOD_COMP.AsInteger;
  frmArquivos.cdsTab.Open;
  frmArquivos.ShowModal;
end;

end.
