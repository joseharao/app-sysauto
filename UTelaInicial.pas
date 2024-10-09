unit UTelaInicial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TfrmTelaInicial = class(TForm)
    logo: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaInicial: TfrmTelaInicial;

implementation

uses UFuncoes, UBD;

{$R *.dfm}

procedure TfrmTelaInicial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmTelaInicial.FormCreate(Sender: TObject);
begin
  if FileExists(ExtractFilePath(Application.ExeName) + 'Fundo Inicial.bmp') then begin
     logo.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Fundo Inicial.bmp');
     logo.Stretch := true;
  end;
end;

procedure TfrmTelaInicial.FormResize(Sender: TObject);
begin
   AbreForm(TfrmBD, frmBD);
end;

end.
