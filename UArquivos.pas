unit UArquivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, FMTBcd, DB, SqlExpr, DBClient, Provider, ExtDlgs,
  StdCtrls, Buttons, PngBitBtn, ShellAPI;

type
  TfrmArquivos = class(TForm)
    Image1: TImage;
    dsTab: TDataSource;
    dspTab: TDataSetProvider;
    cdsTab: TClientDataSet;
    sqlTab: TSQLQuery;
    cdsTabCOD_CLIE: TIntegerField;
    cdsTabDOCUMENTO: TMemoField;
    optFoto: TOpenPictureDialog;
    Salvar: TSaveDialog;
    GroupBox1: TGroupBox;
    btNovo: TPngBitBtn;
    btCancelar: TPngBitBtn;
    btGravar: TPngBitBtn;
    btEditar: TPngBitBtn;
    btExcluir: TPngBitBtn;
    Button1: TButton;
    btPrimeiro: TPngBitBtn;
    btnAnterior: TPngBitBtn;
    btnProximo: TPngBitBtn;
    btnUltimo: TPngBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure cdsTabAfterDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dsTabStateChange(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArquivos: TfrmArquivos;

implementation

uses UFuncoes, UComprador;

{$R *.dfm}

procedure TfrmArquivos.btCancelarClick(Sender: TObject);
begin
  cdsTab.Cancel;
  cdsTab.CancelUpdates;
end;

procedure TfrmArquivos.btEditarClick(Sender: TObject);
begin
  cdsTab.Edit;
  optFoto.Execute();
  if dsTab.State in [dsInsert, dsEdit] then begin
     GravaFoto(cdsTabDOCUMENTO, optFoto.FileName);
  end;
  Image1.Picture.LoadFromFile(optFoto.FileName);
end;

procedure TfrmArquivos.btExcluirClick(Sender: TObject);
begin
if application.MessageBox('Deseja Realmente Excluir Arquivo Selecionado?', 'Atenção', MB_YESNO + MB_ICONEXCLAMATION) = idyes then begin
    cdsTab.Delete;
    cdsTab.ApplyUpdates(-1);
end;
end;

procedure TfrmArquivos.btGravarClick(Sender: TObject);
begin
  cdsTab.Post;
  TClientDataSet(cdsTab).ApplyUpdates(-1);
end;

procedure TfrmArquivos.btnAnteriorClick(Sender: TObject);
begin
   cdsTab.Prior;
   ObtemFoto(cdsTabDOCUMENTO, Image1);
end;

procedure TfrmArquivos.btNovoClick(Sender: TObject);
begin
  cdsTab.Append;
  cdsTabCOD_CLIE.AsInteger := frmComprador.cdsTabCOD_COMP.AsInteger;
  optFoto.Execute();
  if dsTab.State in [dsInsert, dsEdit] then begin
     GravaFoto(cdsTabDOCUMENTO, optFoto.FileName);
  end;
  Image1.Picture.LoadFromFile(optFoto.FileName);
end;

procedure TfrmArquivos.btnProximoClick(Sender: TObject);
begin
   cdsTab.Next;
   ObtemFoto(cdsTabDOCUMENTO, Image1);
end;

procedure TfrmArquivos.btnUltimoClick(Sender: TObject);
begin
   cdsTab.Last;
   ObtemFoto(cdsTabDOCUMENTO, Image1);
end;

procedure TfrmArquivos.btPrimeiroClick(Sender: TObject);
begin
   cdsTab.First;
   ObtemFoto(cdsTabDOCUMENTO, Image1);
end;

procedure TfrmArquivos.Button1Click(Sender: TObject);
begin
  if not (DirectoryExists(ExtractFilePath(Application.ExeName)+'Arquivos')) then begin
      ForceDirectories(ExtractFilePath(Application.ExeName)+'Arquivos');
  end;
  Image1.Picture.SaveToFile(ExtractFilePath(Application.ExeName) + 'Arquivos/'+cdsTabCOD_CLIE.AsString+'.jpeg');
  ShellExecute(0, 'Open', PChar(ExtractFilePath(Application.ExeName) + 'Arquivos/'+cdsTabCOD_CLIE.AsString+'.jpeg'), nil, nil, SW_NORMAL)
end;

procedure TfrmArquivos.cdsTabAfterDelete(DataSet: TDataSet);
begin
  TClientDataSet(cdsTab).ApplyUpdates(-1);
end;

procedure TfrmArquivos.dsTabStateChange(Sender: TObject);
begin
//procedimento para habilitar e desabilitar os botões
  if dsTab.State in [dsBrowse] then begin
     btNovo.Enabled := True;
     btEditar.Enabled := True;
     btExcluir.Enabled := true;
     btCancelar.Enabled := false;
     btGravar.Enabled := false;
  end else if dsTab.State in [dsEdit, dsInsert] then begin
     btNovo.Enabled := false;
     btEditar.Enabled := false;
     btExcluir.Enabled := false;
     btCancelar.Enabled := true;
     btGravar.Enabled := true;
  end;
end;

procedure TfrmArquivos.FormShow(Sender: TObject);
begin
  if not cdsTab.Eof then begin
     ObtemFoto(cdsTabDOCUMENTO, Image1);
  end;
end;

end.
