unit uflogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, WinSkinData;

type
  Tflogin = class(TForm)
    Label1: TLabel;
    user: TEdit;
    Label2: TLabel;
    pass: TEdit;
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    SkinData1: TSkinData;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
  logingok : Boolean;
    { Public declarations }
  end;

var
  flogin: Tflogin;

implementation

{$R *.dfm}

uses udm;

procedure Tflogin.Button1Click(Sender: TObject);
begin
 // consultando el usuario y el password
 flogin.logingok := false;
 dm.fdqueryUser.Close;
 dm.fdqueryUser.Params[0].Value := user.Text;
 dm.fdqueryUser.Params[1].Value := pass.Text;
 dm.fdqueryUser.Open();
 if dm.fdqueryUser.RecordCount > 0 then
 begin
  flogin.logingok := true;
  close
 end else Application.MessageBox('Usuario o clave incorrectos!', 'Error')

end;

procedure Tflogin.Button2Click(Sender: TObject);
begin
 close;
end;

procedure Tflogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if (not flogin.logingok) then Application.Terminate;
end;

end.
