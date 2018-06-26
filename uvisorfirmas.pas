unit uvisorfirmas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  Tffirmsview = class(TForm)
    visor: TDBGrid;
    buscar: TEdit;
    Label1: TLabel;
    cbtype: TComboBox;
    Label2: TLabel;
    firm: TImage;
    Shape1: TShape;
    Label3: TLabel;
    rut: TLabel;
    Bevel1: TBevel;
    bnuebo: TButton;
    beliminar: TButton;
    Button3: TButton;
    Label4: TLabel;
    typefirm: TLabel;
    Label6: TLabel;
    name: TLabel;
    Label8: TLabel;
    address: TLabel;
    Label5: TLabel;
    phone: TLabel;
    DataSource1: TDataSource;
    Label7: TLabel;
    date: TLabel;
    obser: TLabel;
    Label9: TLabel;
    procedure bnueboClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure beliminarClick(Sender: TObject);
    procedure visorCellClick(Column: TColumn);
    procedure cbtypeChange(Sender: TObject);
    procedure visorKeyPress(Sender: TObject; var Key: Char);
    procedure buscarChange(Sender: TObject);
    procedure visorDblClick(Sender: TObject);
    procedure firmClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure buscarfirma();
  procedure filldata();
  end;

var
  ffirmsview: Tffirmsview;

implementation

{$R *.dfm}

uses udm, ufirmas, ueliminar, ufirmup;

procedure Tffirmsview.buscarChange(Sender: TObject);
begin
 buscarfirma;
end;

procedure Tffirmsview.buscarfirma;
begin
 dm.fdqueryfirm.close;
 dm.fdqueryfirm.Params[0].Value := cbtype.ItemIndex;
 dm.fdqueryfirm.Params[1].Value := buscar.Text;
 dm.fdqueryfirm.Open();
  ffirmsview.typefirm.Caption := dm.fdqueryfirmSIGNA.AsString;
  ffirmsview.rut.Caption := dm.fdqueryfirmRUT.AsString;
  ffirmsview.name.Caption := dm.fdqueryfirmNAMES.AsString;
  ffirmsview.address.Caption := dm.fdqueryfirmADDRESS.AsString;
  ffirmsview.phone.Caption := dm.fdqueryfirmPHONE.AsString;
  ffirmsview.obser.caption := '';
  ffirmsview.obser.caption := dm.fdqueryfirmOBESER.AsString;
  if not dm.fdqueryfirmFIRM.IsNull then firm.Picture.Assign(dm.fdqueryfirmFIRM) else  firm.Picture.Graphic := nil;
end;

procedure Tffirmsview.bnueboClick(Sender: TObject);
begin
 ffirmas.action := 1;
 ffirmas.cbtype.ItemIndex := 0;
 ffirmas.rutmask.Clear;
 ffirmas.names.Text := '';
 ffirmas.address.Text := '';
 ffirmas.phone.Text := '';
 ffirmas.obser.Text := '';
 ffirmas.firm.picture.graphic := nil;
 ffirmas.ShowModal;
 dm.fdqueryfirm.close;
 dm.fdqueryfirm.Params[0].Value := cbtype.ItemIndex;
 dm.fdqueryfirm.Params[1].Value := buscar.Text;
 dm.fdqueryfirm.Open();
 filldata;
end;

procedure Tffirmsview.beliminarClick(Sender: TObject);
begin
 if dm.fdqueryfirm.RecordCount > 0 then
  begin
    feliminar.texteliminar.Caption := 'Eliminará esta firma?';
     feliminar.ShowModal;
     if (feliminar.action) then
     begin
       dm.killfirm.Close;
       dm.killfirm.ParamByName('id').Value := dm.fdqueryfirmID.AsLargeInt;
       dm.killfirm.Execute();
       dm.fdqueryfirm.Refresh;
       filldata;
     end;
  end;
end;

procedure Tffirmsview.Button3Click(Sender: TObject);
begin
 close;
end;

procedure Tffirmsview.cbtypeChange(Sender: TObject);
begin
   buscarfirma;
end;

procedure Tffirmsview.filldata;
begin
 typefirm.Caption := dm.fdqueryfirmSIGNA.AsString;
 rut.Caption := dm.fdqueryfirmRUT.AsString;
 name.Caption := dm.fdqueryfirmNAMES.AsString;
 address.Caption := dm.fdqueryfirmADDRESS.AsString;
 phone.Caption := dm.fdqueryfirmPHONE.AsString;
 obser.caption := '';
 obser.caption := dm.fdqueryfirmOBESER.AsString;
 // if not dm.fdqueryfirmFIRM.IsNull then firm.Picture.Assign(dm.fdqueryfirmFIRM) else  firm.Picture.Graphic := nil;
 firm.Picture.Assign(dm.fdqueryfirmFIRM);
 date.Caption := dm.fdqueryfirmDATE.AsString;
end;

procedure Tffirmsview.firmClick(Sender: TObject);
begin
 if not dm.fdqueryfirmFIRM.IsNull then
 begin
  ffirmup.imgup.Picture.Assign(dm.fdqueryfirmFIRM);
  ffirmup.ShowModal;
 end
end;

procedure Tffirmsview.visorCellClick(Column: TColumn);
begin
 filldata;
end;

procedure Tffirmsview.visorDblClick(Sender: TObject);
begin
 ffirmas.action := 0;
 ffirmas.cbtype.ItemIndex := dm.fdqueryfirmTYPE_ID.Value;
 ffirmas.rutedit.Text := dm.fdqueryfirmRUT.AsString;
 ffirmas.names.Text := dm.fdqueryfirmNAMES.AsString;
 ffirmas.address.Text := dm.fdqueryfirmADDRESS.AsString;
 ffirmas.phone.Text := dm.fdqueryfirmPHONE.AsString;
 ffirmas.obser.Text := dm.fdqueryfirmOBESER.AsString;
 ffirmas.firm.Picture.Assign(dm.fdqueryfirmFIRM);
 ffirmas.datefirm.Date := dm.fdqueryfirmDATE.AsDateTime;
 ffirmas.ShowModal;
 dm.fdqueryfirm.close;
 dm.fdqueryfirm.Params[0].Value := cbtype.ItemIndex;
 dm.fdqueryfirm.Params[1].Value := buscar.Text;
 dm.fdqueryfirm.Open();
end;

procedure Tffirmsview.visorKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13  then
 begin
   typefirm.Caption := dm.fdqueryfirmSIGNA.AsString;
   rut.Caption := dm.fdqueryfirmRUT.AsString;
   name.Caption := dm.fdqueryfirmNAMES.AsString;
   address.Caption := dm.fdqueryfirmADDRESS.AsString;
   phone.Caption := dm.fdqueryfirmPHONE.AsString;
   date.Caption := dm.fdqueryfirmDATE.AsString;
   obser.caption := '';
   obser.caption := dm.fdqueryfirmOBESER.AsString;
   if not dm.fdqueryfirmFIRM.IsNull then firm.Picture.Assign(dm.fdqueryfirmFIRM) else  firm.Picture.Graphic := nil;
 end;
end;

end.
