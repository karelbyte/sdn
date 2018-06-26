unit ueliminar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfeliminar = class(TForm)
    Button1: TButton;
    Button2: TButton;
    texteliminar: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
  action : Boolean
    { Public declarations }
  end;

var
  feliminar: Tfeliminar;

implementation

{$R *.dfm}

procedure Tfeliminar.Button1Click(Sender: TObject);
begin
  action := true;
  close;
end;

procedure Tfeliminar.Button2Click(Sender: TObject);
begin
  action := false;
  close;
end;

end.
