unit uae;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  Tfae = class(Tfbase)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Nombre: TLabel;
    rutautorizante: TEdit;
    nameautorizante: TEdit;
    addressautorizante: TEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    rutautorizado: TEdit;
    nameautorizado: TEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label5: TLabel;
    address: TEdit;
    rol: TEdit;
    procedure bimprimirClick(Sender: TObject);
    procedure rutautorizanteExit(Sender: TObject);
    procedure rutautorizanteEnter(Sender: TObject);
    procedure rutautorizanteKeyPress(Sender: TObject; var Key: Char);
    procedure rutautorizadoExit(Sender: TObject);
    procedure rutautorizadoEnter(Sender: TObject);
    procedure rutautorizadoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fae: Tfae;

implementation

{$R *.dfm}

procedure Tfae.bimprimirClick(Sender: TObject);
begin
  inherited;

  findandremplace('<NOMBRE AUTORIZANTE>', nameautorizante.Text);
  findandremplace('<RUT AUTORIZANTE>', rutautorizante.Text);
  findandremplace('<DIRECCION AUTORIZANTE>', addressautorizante.Text);

  findandremplace('<NOMBRE AUTORIZADO>', nameautorizado.Text);
  findandremplace('<RUT AUTORIZADO>', rutautorizado.Text);
  findandremplace('<DIRECCION PROPIEDAD>', address.Text);

  findandremplace('<ROL PROPIEDAD>', rol.Text);

  footerdoc;
end;

procedure Tfae.rutautorizadoEnter(Sender: TObject);
begin
  inherited;
   rutenter_g(rutautorizado);
end;

procedure Tfae.rutautorizadoExit(Sender: TObject);
begin
  inherited;
   rutexit_g(rutautorizado, nameautorizado, nil);
end;

procedure Tfae.rutautorizadoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizado, key);
end;

procedure Tfae.rutautorizanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutautorizante);
end;

procedure Tfae.rutautorizanteExit(Sender: TObject);
begin
  inherited;
    rutexit_g(rutautorizante, nameautorizante, addressautorizante);
end;

procedure Tfae.rutautorizanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizante, key);
end;

end.
