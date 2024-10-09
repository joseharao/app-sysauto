unit UProgresso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  TfrmProgresso = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    P: TProgressBar;
    lblStatus: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProgresso: TfrmProgresso;

implementation

{$R *.dfm}

procedure TfrmProgresso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  release;
end;

end.
