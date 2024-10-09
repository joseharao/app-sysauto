unit UDados;

interface

uses
  SysUtils, Classes, WideStrings, DBXFirebird, FMTBcd, DB, Provider, DBClient,
  SqlExpr, DBXInterbase;

type
  TDados = class(TDataModule)
    DB: TSQLConnection;
    sqlBusca: TSQLQuery;
    sqlUsuario: TSQLQuery;
    cdsUsuario: TClientDataSet;
    dspUsuario: TDataSetProvider;
    dsUsuario: TDataSource;
    sqlParam: TSQLQuery;
    sqlParamLOGOTIPO: TBlobField;
    cdsParam: TClientDataSet;
    cdsParamLOGOTIPO: TBlobField;
    dspParam: TDataSetProvider;
    dsParam: TDataSource;
    cdsUsuarioCOD_USU: TIntegerField;
    cdsUsuarioDAT_CAD: TDateField;
    cdsUsuarioNOME: TStringField;
    cdsUsuarioLOGIN: TStringField;
    cdsUsuarioSENHA: TStringField;
    cdsUsuarioPOSICAO: TStringField;
    sqlComprador: TSQLQuery;
    cdsComprador: TClientDataSet;
    dspComprador: TDataSetProvider;
    dsComprador: TDataSource;
    cdsVendedor: TClientDataSet;
    dsVendedor: TDataSource;
    dspVendedor: TDataSetProvider;
    sqlVendedor: TSQLQuery;
    cdsVendedorVENDEDOR: TStringField;
    cdsVendedorCOD_VEND: TIntegerField;
    cdsCompradorCOD_COMP: TIntegerField;
    cdsCompradorCOMPRADOR: TStringField;
    cdsVeiculo: TClientDataSet;
    dsVeiculo: TDataSource;
    dspVeiculo: TDataSetProvider;
    sqlVeiculo: TSQLQuery;
    cdsVeiculoCOD_VEICULO: TIntegerField;
    cdsVeiculoVEICULO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dados: TDados;

implementation

{$R *.dfm}

end.
