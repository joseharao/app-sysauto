unit UOrCCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UOrPadrao, ExtCtrls, StdCtrls, Buttons, PngBitBtn, pngimage, Mask,
  rxToolEdit;

type
  TfrmOrCCaixa = class(TfrmOrPadrao)
    GroupBox3: TGroupBox;
    Label2: TLabel;
    txtInicio: TDateEdit;
    txtTermino: TDateEdit;
    txtAgrupado: TRadioGroup;
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrCCaixa: TfrmOrCCaixa;

implementation

uses UFuncoes, URCCaixa, Uerro;

{$R *.dfm}

procedure TfrmOrCCaixa.btImprimirClick(Sender: TObject);
begin
  inherited;
 if application.MessageBox('Deseja Imprimir Controle de Caixa Agora?', 'Confirmação', MB_YesNo + MB_IconQuestion) = idYes then begin
    try
       SQL := 'SELECT ' +
              'C.COD_LANCA, C.DAT_LANCA AS DATA, C.HISTORICO, CAST(C.VLR_LANCA AS FLOAT) AS VLR_OPE, ' +
              '    CASE C.OPERACAO ' +
              '        WHEN ''E'' THEN ''Entrada'' ' +
              '        WHEN ''S'' THEN ''Saída'' ' +
              '        WHEN ''R'' THEN ''Recebimento'' ' +
              '    END AS OP, C.OPERACAO ' +
              ' FROM LANCA C';

       if DataValida(txtInicio.Text) and DataValida(txtTermino.Text) then begin
         if (Pos(SQL, 'WHERE') = 0) then begin
            sql := sql + ' WHERE C.DAT_LANCA BETWEEN '+#39+ DataToSql(txtInicio.Text) +#39+ ' AND '+#39+ DataToSql(txtTermino.Text) +#39;
         end else begin
            sql := sql + ' AND C.DAT_LANCA BETWEEN '+#39+ DataToSql(txtInicio.Text) +#39+ ' AND '+#39+ DataToSql(txtTermino.Text) +#39;
         end;
       end;
       case txtOrdernado.ItemIndex of
          0: SQL := SQL +  ' ORDER BY C.DAT_LANCA';
          1: SQL := SQL +  ' ORDER BY C.OPERACAO';
       end;
       Application.CreateForm(TfrmRCCaixa, frmRCCaixa);
       case txtAgrupado.ItemIndex of
          0: begin
              frmRCCaixa.txtCab.DataField := 'DAT_LANCA';
              frmRCCaixa.RLGroup1.DataFields := 'DAT_LANCA';
          end;
          1: begin
              frmRCCaixa.txtCab.DataField := 'OP';
              frmRCCaixa.RLGroup1.DataFields := 'OP';
          end;
       end;
       with frmRCCaixa do begin
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

end.
