unit uaolc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  Tfaolc = class(Tfbase)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Nombre: TLabel;
    rutpadre: TEdit;
    namepadre: TEdit;
    addresspadre: TEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    rutmadre: TEdit;
    namemadre: TEdit;
    addressmadre: TEdit;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    ruthijo: TEdit;
    namehijo: TEdit;
    municipalidad: TEdit;
    cm: TLabel;
    procedure bimprimirClick(Sender: TObject);
    procedure rutpadreExit(Sender: TObject);
    procedure rutpadreEnter(Sender: TObject);
    procedure rutpadreKeyPress(Sender: TObject; var Key: Char);
    procedure rutmadreKeyPress(Sender: TObject; var Key: Char);
    procedure rutmadreEnter(Sender: TObject);
    procedure rutmadreExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  faolc: Tfaolc;

implementation

{$R *.dfm}

procedure Tfaolc.bimprimirClick(Sender: TObject);
begin
  inherited;

  //********** padre
  findandremplace('<NOMBRE PADRE>', namepadre.Text);
  findandremplace('<RUT PADRE>', rutpadre.Text);
  findandremplace('<DIRECCION PADRE>', addresspadre.Text);
  //--*-  madre
  findandremplace('<NOMBRE MADRE>', namemadre.Text);
  findandremplace('<RUT MADRE>', rutmadre.Text);
  findandremplace('<DIRECCION MADRE>', addressmadre.Text);
  // *********** hijo
  findandremplace('<NOMBRE HIJO>,  ', namehijo.Text);
  findandremplace('<RUT HIJO>', ruthijo.Text);
  findandremplace('<COMUNA MUNICIPALIDAD>', municipalidad.Text);

  footerdoc;
end;

procedure Tfaolc.rutmadreEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutmadre);
end;

procedure Tfaolc.rutmadreExit(Sender: TObject);
begin
  inherited;
   rutexit_g(rutmadre, namemadre, addressmadre);
end;

procedure Tfaolc.rutmadreKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    rutkeyp_g(rutmadre, key);
end;

procedure Tfaolc.rutpadreEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutpadre);
end;

procedure Tfaolc.rutpadreExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutpadre, namepadre, addresspadre);
end;

procedure Tfaolc.rutpadreKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutpadre, key);
end;

end.
