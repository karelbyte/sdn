unit ufirmup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  Tffirmup = class(TForm)
    imgup: TImage;
    Shape1: TShape;
    procedure imgupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ffirmup: Tffirmup;

implementation

{$R *.dfm}

procedure Tffirmup.imgupClick(Sender: TObject);
begin
  close;
end;

end.
