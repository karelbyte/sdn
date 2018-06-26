unit usii;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, StrUtils;

type
  Tfsii = class(Tfbase)
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    rutautorizado: TEdit;
    nameautorizado: TEdit;
    addressautorizado: TEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label5: TLabel;
    nameafavor: TEdit;
    rutafavor: TEdit;
    procedure bimprimirClick(Sender: TObject);
    procedure rutafavorEnter(Sender: TObject);
    procedure rutafavorExit(Sender: TObject);
    procedure rutafavorKeyPress(Sender: TObject; var Key: Char);
    procedure rutautorizadoExit(Sender: TObject);
    procedure rutautorizadoEnter(Sender: TObject);
    procedure rutautorizadoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fsii: Tfsii;

implementation

{$R *.dfm}

procedure Tfsii.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<FECHA>', ReplaceStr(formatdatetime('dd mmmm yyyy', fecha.Date), ' ', ' de '));

  findandremplace('<NOMBRE>', nameautorizado.Text);
  findandremplace('<CEDULA DE IDENTIDAD>', rutautorizado.Text);
  findandremplace('<DOMICILIO>', addressautorizado.Text);

  findandremplace('<NOMBRE A FAVOR>', nameafavor.Text);
  findandremplace('<CEDULA DE IDENTIDAD A FAVOR>', rutafavor.Text);

  footerdoc;
end;

procedure Tfsii.rutafavorEnter(Sender: TObject);
begin
  inherited;
   rutenter_g(rutafavor);
end;

procedure Tfsii.rutafavorExit(Sender: TObject);
begin
  inherited;
   rutexit_g(rutafavor, nameafavor, nil);
end;

procedure Tfsii.rutafavorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   rutkeyp_g(rutafavor, key);
end;

procedure Tfsii.rutautorizadoEnter(Sender: TObject);
begin
  inherited;
   rutenter_g(rutautorizado);
end;

procedure Tfsii.rutautorizadoExit(Sender: TObject);
begin
  inherited;
   rutexit_g(rutautorizado, nameautorizado, addressautorizado);
end;

procedure Tfsii.rutautorizadoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizado, key);
end;

end.
