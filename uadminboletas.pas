unit uadminboletas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  Data.DB, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet;

type
  Tfadminboleta = class(TForm)
    usuarios: TDBLookupComboBox;
    Label1: TLabel;
    fechaini: TDateTimePicker;
    fechafin: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    all: TCheckBox;
    visor: TDBGrid;
    Bevel1: TBevel;
    Button1: TButton;
    bEliminar: TButton;
    Button3: TButton;
    Button4: TButton;
    qryboletas: TFDQuery;
    dsboletas: TDataSource;
    qryboletasID: TLargeintField;
    qryboletasUSER_ID: TLargeintField;
    qryboletasTICKET: TIntegerField;
    qryboletasPRICE: TIntegerField;
    qryboletasTYPEDOC: TStringField;
    qryboletasEMIT: TDateField;
    qryboletasNAMES: TStringField;
    dsusers: TDataSource;
    qryusers: TFDQuery;
    qryusersID: TLargeintField;
    qryusersNAMES: TStringField;
    qryall: TFDQuery;
    Label4: TLabel;
    Label5: TLabel;
    qrydatos: TFDQuery;
    qrydatosCANT: TIntegerField;
    qrydatosTOTAL: TLargeintField;
    DBText1: TDBText;
    dsdatos: TDataSource;
    DBText2: TDBText;
    qryallID: TLargeintField;
    qryallUSER_ID: TLargeintField;
    qryallTICKET: TIntegerField;
    qryallPRICE: TIntegerField;
    qryallTYPEDOC: TStringField;
    qryallEMIT: TDateField;
    qryallNAMES: TStringField;
    qdatosall: TFDQuery;
    IntegerField1: TIntegerField;
    LargeintField1: TLargeintField;
    Label6: TLabel;
    dbreporte: TfrxDBDataset;
    reporte: TfrxReport;
    dbdatos: TfrxDBDataset;
    qrykill: TFDQuery;
    procedure Button3Click(Sender: TObject);
    procedure usuariosClick(Sender: TObject);
    procedure fechainiChange(Sender: TObject);
    procedure fechafinChange(Sender: TObject);
    procedure allClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bEliminarClick(Sender: TObject);
  private
    { Private declarations }
  public
  procedure tickrefresh();
    { Public declarations }
  end;

var
  fadminboleta: Tfadminboleta;

implementation

{$R *.dfm}

uses udm, ugboletas, uupdateboleta, ueliminar;

procedure Tfadminboleta.allClick(Sender: TObject);
begin
 if all.Checked then
 begin
  usuarios.Enabled := false;
  qryall.Close;
  qryall.Params[0].Value := fechaini.Date;
  qryall.Params[1].Value := fechafin.Date;
  qryall.Open();
  //--------
  qdatosall.Close;
  qdatosall.Params[0].Value := fechaini.Date;
  qdatosall.Params[1].Value := fechafin.Date;
  qdatosall.Open();
  //-----------
  dsboletas.DataSet := nil;
  dsboletas.DataSet := qryall;
  dsdatos.DataSet := nil;
  dsdatos.DataSet := qdatosall;
 end
 else
 begin
  usuarios.Enabled := true;
  dsboletas.DataSet := nil;
  dsboletas.DataSet := qryboletas;
  dsdatos.DataSet := nil;
  dsdatos.DataSet := qrydatos;
 end;
end;

procedure Tfadminboleta.bEliminarClick(Sender: TObject);
begin
 feliminar.texteliminar.Caption := 'Eliminara esta boleta?';
 feliminar.ShowModal;
 if  feliminar.action then
  begin
    qrykill.Close;
    if (dsboletas.DataSet = qryboletas) then qrykill.Params[0].Value := qryboletasID.AsInteger else qrykill.Params[0].Value := qryallID.AsInteger;
    qrykill.Execute();
      if all.Checked then
  begin
  qryall.Close;
  qryall.Params[0].Value := fechaini.Date;
  qryall.Params[1].Value := fechafin.Date;
  qryall.Open();
  //--------
  qdatosall.Close;
  qdatosall.Params[0].Value := fechaini.Date;
  qdatosall.Params[1].Value := fechafin.Date;
  qdatosall.Open();
  //-----------
  dsboletas.DataSet := nil;
  dsboletas.DataSet := qryall;
  dsdatos.DataSet := nil;
  dsdatos.DataSet := qdatosall;
  end
   else
   tickrefresh;
  end;

end;

procedure Tfadminboleta.Button1Click(Sender: TObject);
begin
 if (dsboletas.DataSet = qryboletas) then
  begin
   fupboleta.id := qryboletasID.AsInteger;
   fupboleta.folio.Text := qryboletasTICKET.AsString;
   fupboleta.costo.Text := qryboletasPRICE.AsString;
 end else
 begin
   fupboleta.id := qryallID.AsInteger;
   fupboleta.folio.Text := qryallTICKET.AsString;
   fupboleta.costo.Text := qryallPRICE.AsString;
 end;
 fupboleta.ShowModal;
 if all.Checked then
  begin
  qryall.Close;
  qryall.Params[0].Value := fechaini.Date;
  qryall.Params[1].Value := fechafin.Date;
  qryall.Open();
  //--------
  qdatosall.Close;
  qdatosall.Params[0].Value := fechaini.Date;
  qdatosall.Params[1].Value := fechafin.Date;
  qdatosall.Open();
  //-----------
  dsboletas.DataSet := nil;
  dsboletas.DataSet := qryall;
  dsdatos.DataSet := nil;
  dsdatos.DataSet := qdatosall;
  end
   else
   tickrefresh;
end;

procedure Tfadminboleta.Button3Click(Sender: TObject);
begin
 close;
end;

procedure Tfadminboleta.Button4Click(Sender: TObject);
begin
 reporte.Variables.Variables['finicio']:= QuotedStr(datetostr(fechaini.Date));
 reporte.Variables.Variables['ffinal']:= QuotedStr(datetostr(fechafin.Date));
 reporte.ShowReport();
end;

procedure Tfadminboleta.fechafinChange(Sender: TObject);
begin
 tickrefresh;
end;

procedure Tfadminboleta.fechainiChange(Sender: TObject);
begin
 tickrefresh;
end;

procedure Tfadminboleta.tickrefresh;
begin
 // boletas
 qryboletas.Close;
 qryboletas.Params[0].Value := usuarios.KeyValue;
 qryboletas.Params[1].Value := fechaini.Date;
 qryboletas.Params[2].Value := fechafin.Date;
 qryboletas.Open();
 //- datos
 qrydatos.Close;
 qrydatos.Params[0].Value := usuarios.KeyValue;
 qrydatos.Params[1].Value := fechaini.Date;
 qrydatos.Params[2].Value := fechafin.Date;
 qrydatos.Open();
end;

procedure Tfadminboleta.usuariosClick(Sender: TObject);
begin
   tickrefresh;
end;

end.
