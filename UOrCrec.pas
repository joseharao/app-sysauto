unit UOrCrec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UOrPadrao, ExtCtrls, StdCtrls, Buttons, PngBitBtn, pngimage, DBCtrls,
  Mask, rxToolEdit;

type
  TfrmOrCrec = class(TfrmOrPadrao)
    GroupBox3: TGroupBox;
    Label2: TLabel;
    txtInicio: TDateEdit;
    txtTermino: TDateEdit;
    GroupBox2: TGroupBox;
    txtPosicao: TComboBox;
    Label9: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrCrec: TfrmOrCrec;

implementation

uses UDados, URCrec, UFuncoes, Uerro;

{$R *.dfm}

procedure TfrmOrCrec.btImprimirClick(Sender: TObject);
begin
  inherited;
 if application.MessageBox('Deseja Imprimir Relatórios de Contas a Receber Agora?', 'Confirmação', MB_YesNo + MB_IconQuestion) = idYes then begin
    try
       SQL := ' SELECT ' +
              ' C.COD_REC, C.COD_CLIE || '' - '' || CC.NOME AS NOME, C.VENCIMENTO, CAST(COALESCE(C.VLR_PRINC, 0) AS FLOAT) AS VLR_PRIC, CAST(COALESCE(C.VLR_ACRES, 0) AS FLOAT) AS JUROS, CAST(COALESCE(C.VLR_DESC, 0) AS FLOAT) AS VLR_DESC, ' +
              ' CAST(COALESCE((SELECT SUM(CC.VLR_BAIXA) FROM CREC_BX CC WHERE CC.COD_REC = C.COD_REC), 0) AS FLOAT) AS VLR_PAGO, ' +
              ' CAST(COALESCE(C.SALDO_DEV, 0) AS FLOAT) AS SALDO_DEV, ' +
              ' ''Crédito'' AS FINALIZADORA ' +
              'FROM CREC C, COMPRADOR CC WHERE C.COD_CLIE = CC.COD_COMP';
       if DataValida(txtInicio.Text) and DataValida(txtTermino.Text) then begin
            sql := sql + ' AND C.VENCIMENTO BETWEEN '+#39+ DataToSql(txtInicio.Text) +#39+ ' AND '+#39+ DataToSql(txtTermino.Text) +#39;
       end;
       if not Vazio(DBLookupComboBox2.Text) then begin
            sql := sql + ' AND C.COD_CLIE IN ('+#39+ dados.cdsCompradorCOD_COMP.AsString +#39+ ')';
       end;
         case txtPosicao.ItemIndex of
            0: SQL := SQL + ' AND C.POSICAO IN (''A'', ''V'')';
            1: SQL := SQL + ' AND C.POSICAO IN (''A'')';
            2: SQL := SQL + ' AND C.POSICAO IN (''V'')';
            3: SQL := SQL + ' AND C.POSICAO IN (''C'')';
            4: SQL := SQL + ' AND C.POSICAO IN (''Q'')';
            5: SQL := SQL + ' AND C.POSICAO IN (''D'')';
            6: SQL := SQL + ' AND C.POSICAO IN (''A'', ''V'', ''Q'', ''C'', ''D'')';
         end;
       case txtOrdernado.ItemIndex of
          0: SQL := SQL +  ' ORDER BY C.COD_REC';
          1: SQL := SQL +  ' ORDER BY CC.NOME';
          2: SQL := SQL +  ' ORDER BY C.VENCIMENTO';
       end;
       Application.CreateForm(TfrmRCrec, frmRCrec);
       with frmRCrec do begin
           cdsTab.Close;
           sqlTab.Close;
           sqlTab.SQL.Clear;
           sqlTab.SQL.Add(SQL);
           cdsTab.Open;
           if cdsTab.Eof then begin
              application.MessageBox('Não Há Dados a Serem Impressos.', 'Atenção', MB_IConExclamation);
              cdsTab.Close;
              Close;
           end else begin
              RLReport1.PreviewModal;
              cdsTab.Close;
              Close;
           end;
       end;
    except on E : Exception do begin
          application.CreateForm(TfrmErro, frmErro);
          frmErro.lblClasse.Caption := E.ClassName;
          frmErro.lblErro.Lines.Add(PChar(E.Message));
          frmErro.ShowModal;
        end;
    end;
 end;
end;

procedure TfrmOrCrec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Dados.cdsComprador.Close;
  inherited;
end;

procedure TfrmOrCrec.FormShow(Sender: TObject);
begin
  inherited;
Dados.cdsComprador.Open;
end;

end.
