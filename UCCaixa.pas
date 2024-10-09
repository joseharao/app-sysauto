unit UCCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, FMTBcd, DB, SqlExpr, DBClient, Provider, StdCtrls, Buttons,
  PngBitBtn, pngimage, ExtCtrls, DBCtrls, Mask, rxToolEdit, RXDBCtrl;

type
  TfrmCCaixa = class(TfrmPadrao)
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    cdsTabCOD_LANCA: TIntegerField;
    cdsTabDAT_LANCA: TDateField;
    cdsTabCOD_TRANSACAO: TIntegerField;
    cdsTabHISTORICO: TStringField;
    cdsTabOPERACAO: TStringField;
    cdsTabVLR_LANCA: TSingleField;
    procedure btNovoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCCaixa: TfrmCCaixa;

implementation

uses UFuncoes;

{$R *.dfm}

procedure TfrmCCaixa.btEditarClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TfrmCCaixa.btGravarClick(Sender: TObject);
begin
if not DataValida(cdsTabDAT_LANCA.AsString) then begin
   Application.MessageBox('Informe Uma Data Válida', 'Atenção', MB_ICONQUESTION);
   DBDateEdit1.SetFocus;
   Exit;
end;
if DBRadioGroup1.ItemIndex = -1 then begin
   Application.MessageBox('Informe O Tipo de Operação', 'Atenção', MB_ICONQUESTION);
   DBRadioGroup1.SetFocus;
   Exit;
end;
if Vazio(DBEdit2.Text) then begin
   Application.MessageBox('Informe o Histórico da Operação.', 'Atenção', MB_ICONQUESTION);
   DBEdit2.SetFocus;
   Exit;
end;
if Vazio(DBEdit3.Text) then begin
   Application.MessageBox('Informe o Valor da Operação.', 'Atenção', MB_ICONQUESTION);
   DBEdit3.SetFocus;
   Exit;
end;
  inherited;
end;

procedure TfrmCCaixa.btNovoClick(Sender: TObject);
begin
  inherited;
  cdsTabCOD_LANCA.AsInteger := PegaSequencia('GEN_LANCA_ID');
  cdsTabDAT_LANCA.AsDateTime := Date;
  DBEdit2.SetFocus;
end;

procedure TfrmCCaixa.FormShow(Sender: TObject);
begin
  inherited;
  CaixaAlta(Self);
end;

end.
