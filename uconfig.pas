unit uconfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, WinSkinData, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tfconfig = class(TForm)
    SkinData1: TSkinData;
    Label1: TLabel;
    ip: TEdit;
    Label2: TLabel;
    db: TEdit;
    Label3: TLabel;
    user: TEdit;
    Label4: TLabel;
    pass: TEdit;
    Bevel1: TBevel;
    Button1: TButton;
    save: TButton;
    procedure Button1Click(Sender: TObject);
    procedure saveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
  conectok : Boolean;
    { Public declarations }
  end;

var
  fconfig: Tfconfig;

implementation

{$R *.dfm}

uses udm;

procedure Tfconfig.Button1Click(Sender: TObject);
begin
dm.conect.Connected := false;
with dm.conect.Params do begin
  Clear;
  Add('DriverID=FBDRIVER');
  Add('Server=' + ip.Text);
  Add('Protocol=TCPIP');
  Add('Database=' + db.Text);
  Add('User_Name=' + user.Text);
  Add('Password=' + pass.Text);
  Add('CharacterSet=ISO8859_1');
end;
 try
   dm.conect.Connected := True;
   dm.fdquery.Open();
   fconfig.conectok := true;
   save.Enabled := true;
   Application.MessageBox('Conección satisfactoria, guarde la configuración!!', 'Exelente')
 except
  Application.MessageBox('Los datos proporcionados no son correctos', 'Error')
 end;
end;

procedure Tfconfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (not fconfig.conectok) then Application.Terminate;
end;

procedure Tfconfig.saveClick(Sender: TObject);
var
  F: TextFile;
begin
  AssignFile( F, ExtractFilePath( Application.ExeName ) + 'config.ini' );
  Rewrite( F );
  WriteLn( F, 'FBDRIVER');
  WriteLn( F, ip.Text);
  WriteLn( F, 'Protocol=TCPIP');
  WriteLn( F, db.Text);
  WriteLn( F, user.Text);
  WriteLn( F, pass.Text);
  WriteLn( F, 'CharacterSet=ISO8859_1');
  CloseFile( F );
  Close;
end;

end.
