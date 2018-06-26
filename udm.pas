unit udm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Comp.Client, Data.DB, FireDAC.Phys.IBBase,
  FireDAC.VCLUI.Login, FireDAC.Comp.UI, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.VCLUI.Async,
  FireDAC.VCLUI.Wait, Vcl.Controls;

type
  Tdm = class(TDataModule)
    conect: TFDConnection;
    fdtransac: TFDTransaction;
    fdlinck: TFDPhysFBDriverLink;
    fdquery: TFDQuery;
    fddialog: TFDGUIxAsyncExecuteDialog;
    fdcursor: TFDGUIxWaitCursor;
    fdqueryUser: TFDQuery;
    fdqueryAllUser: TFDQuery;
    FDConnection1: TFDConnection;
    fdqueryAddUser: TFDQuery;
    fdqueryAllUserID: TLargeintField;
    fdqueryAllUserRUT: TStringField;
    fdqueryAllUserNAMES: TStringField;
    fdqueryAllUserNICK: TStringField;
    fdqueryAllUserPASSWORD: TStringField;
    fdqueryAllUserROLL_ID: TSmallintField;
    fdqueryEditUser: TFDQuery;
    fdqueryKillUser: TFDQuery;
    fdqueryNotary: TFDQuery;
    fdqueryNotaryNOTARY: TStringField;
    fdqueryNotaryTITLE: TStringField;
    fdqueryNotaryADDRESS: TStringField;
    fdqueryNotaryPHONE: TStringField;
    fdqueryNotaryCOMUNE: TStringField;
    fdqueryNotaryCOUNTRY: TStringField;
    fdspnotary: TFDQuery;
    fdqueryNotaryLOGO: TBlobField;
    fdqueryfirm: TFDQuery;
    fdfirms: TFDQuery;
    fdqueryfirmID: TIntegerField;
    fdqueryfirmTYPE_ID: TSmallintField;
    fdqueryfirmRUT: TStringField;
    fdqueryfirmNAMES: TStringField;
    fdqueryfirmADDRESS: TStringField;
    fdqueryfirmPHONE: TStringField;
    fdqueryfirmOBESER: TStringField;
    fdqueryfirmFIRM: TBlobField;
    fdqueryfirmSIGNA: TStringField;
    killfirm: TFDQuery;
    BalloonHint1: TBalloonHint;
    fdqueryfirmDATE: TDateField;
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
