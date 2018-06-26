unit uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Phys.FBDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, Data.DB, FireDAC.Comp.Client, FireDAC.Phys.IBBase,
  WinSkinData, WinSkinStore, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Menus, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, Vcl.ImgList,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, System.ImageList;

type
  tcredenciales = record
    id : Largeint;
    rut: string;
    nick: string;
    names : string;
    roll_id : integer;
    docdirectory: string;
  end;

  Tfprincipal = class(TForm)
    skin: TSkinData;
    bstado: TStatusBar;
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    mUsuarios: TMenuItem;
    mPlantillas: TMenuItem;
    N1: TMenuItem;
    Salir1: TMenuItem;
    arbol: TTreeView;
    http: TIdHTTP;
    Timer1: TTimer;
    ToolBar1: TToolBar;
    imgindex: TImageList;
    busuarios: TSpeedButton;
    sbfirmas: TSpeedButton;
    bnotaria: TSpeedButton;
    bplantillas: TSpeedButton;
    mnotaria: TMenuItem;
    Firmas1: TMenuItem;
    imgselect: TImageList;
    Ayuda1: TMenuItem;
    Manual1: TMenuItem;
    SobreSDN1: TMenuItem;
    N2: TMenuItem;
    Image1: TImage;
    btickets: TSpeedButton;
    Expandir1: TMenuItem;
    N3: TMenuItem;
    querydoc: TFDQuery;
    querydocID: TSmallintField;
    querydocNAME: TStringField;
    querydocDOC: TBlobField;
    mBoletas: TMenuItem;
    pieles: TSkinStore;
    Piel1: TMenuItem;
    N4: TMenuItem;
    Cinder1: TMenuItem;
    Coconut1: TMenuItem;
    Solarios1: TMenuItem;
    bruts: TSpeedButton;
    Datos1: TMenuItem;
    procedure Salir1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure mUsuariosClick(Sender: TObject);
    procedure busuariosClick(Sender: TObject);
    procedure mnotariaClick(Sender: TObject);
    procedure bnotariaClick(Sender: TObject);
    procedure Firmas1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure arbolCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure arbolDblClick(Sender: TObject);
    procedure Expandir1Click(Sender: TObject);
    procedure mPlantillasClick(Sender: TObject);
    procedure Cinder1Click(Sender: TObject);
    procedure Coconut1Click(Sender: TObject);
    procedure Solarios1Click(Sender: TObject);
    procedure mBoletasClick(Sender: TObject);
    procedure Datos1Click(Sender: TObject);
  private
    { Private declarations }
  public
   credenciales : tcredenciales;
   procedure header(plantilla:integer);
    { Public declarations }
  end;

var
  fprincipal: Tfprincipal;

implementation

{$R *.dfm}

uses udm, uusuarios, unotaria, ufirmas, uvisorfirmas, ubase, udoc, uaicp, uacrs,
  uacrv, uacts, uactv, uadp, uaolc, uae, uama, uats, uat, uamspap, uamsps,
  uasvp, uasvps, ugboletas, uamsps2, ucfa, ucsolteria, uctrabajo, urecidencia,
  ucpn, ucvj, ubmuebles, uajj, ucjj, uagricola, uagricolann, uhabitacional,
  uhnja, uhpna, uctj, uctn, udeclaraciones, ucarabinerospapa, uextravios,
  uprovisorio, ualzamiento, uarrastre, uexpensas, upropiedad, upoderabierto,
  usiij, usii, uavenimiento, uletracambio, upagare, urenuncia, uadminboletas,
  udatos;

procedure Tfprincipal.arbolCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Node.SelectedIndex <> 0 then
  begin
   Sender.Canvas.Font.Size := 12;
   Sender.Canvas.Font.Style := [];
  end;

end;

procedure Tfprincipal.Solarios1Click(Sender: TObject);
begin
 Solarios1.Checked := true;
 Cinder1.Checked := false;
 Coconut1.Checked := false;
 skin.LoadFromCollection(pieles, 2);
end;

procedure Tfprincipal.header(plantilla : integer);
var camino : string;
begin
  if not DirectoryExists('tempdoc') then createdir('tempdoc');
  querydoc.Close;
  querydoc.Params[0].Value := plantilla;
  querydoc.Open();
  camino := ExtractFilePath(Application.ExeName) + '\tempdoc\' + querydocNAME.AsString + '.doc';
  if FileExists(camino) then DeleteFile(camino);
  querydocDOC.SaveToFile(camino);
end;

procedure Tfprincipal.arbolDblClick(Sender: TObject);
var
 root :  TTreeView;
 locale, c: string;
begin
  root := sender as  TTreeView;
  locale := ExtractFilePath(Application.ExeName) + 'tempdoc\';
  // ajustes fajj
  fajj.grepre.Visible:= true;
  fajj.GroupBox3.Top := 277;
  fajj.GroupBox5.Top := 505;
  fajj.Bevel1.Height := 602;
  fajj.bimprimir.Top := 642;
  fajj.gboleta.Top :=  642;
  fajj.bcerrar.Top :=  642;
  fajj.Height :=  704;
 // ajustes fajj
  fcjj.grepre.Visible:= true;
  fcjj.GroupBox3.Top := 277;
  fcjj.GroupBox5.Top := 505;
  fcjj.Bevel1.Height := 602;
  fcjj.bimprimir.Top := 642;
  fcjj.gboleta.Top :=  642;
  fcjj.bcerrar.Top :=  642;
  fcjj.Height :=  704;
  //-------------------
  case root.Selected.StateIndex of
    1: begin  // Autorizacion carcel menor de edad
         // buscando plantilla
          header(1);
         //********************
         faicp.Caption := 'Autorización Ingresar Centro Penitenciario';
         faicp.doc := querydocNAME.AsString;
         faicp.pathdoc := locale + querydocNAME.AsString + '.doc';
         faicp.ShowModal;
       end;
    2: begin  // Autorizacion Cementerio para Reducir (Simple)
         // buscando plantilla
         header(2);
         //********************
         facrs.Caption :=  'Autorización Cementerio para Reducir (Simple)';
         facrs.doc := querydocNAME.AsString;
         facrs.pathdoc := locale + querydocNAME.AsString + '.doc';
         facrs.ShowModal;
       end;
    3: begin  // Autorizacion Cementerio para Reducir (Varios)
         // buscando plantilla
          header(3);
         //********************
         facrv.Caption :=  'Autorización Cementerio para Reducir (Varios)';
         facrv.doc := querydocNAME.AsString;
         facrv.pathdoc := locale + querydocNAME.AsString + '.doc';
         facrv.ShowModal;
       end;
    4: begin  // Autorizacion Cementerio para Trasladar (Simple)
         // buscando plantilla
          header(4);
         //********************
         facts.Caption := 'Autorizacion Cementerio para Trasladar (Simple)';
         facts.doc := querydocNAME.AsString;
         facts.pathdoc := locale + querydocNAME.AsString + '.doc';
         facts.ShowModal;
       end;
    5: begin  // Autorizacion Cementerio para Trasladar (Varios)
         // buscando plantilla
          header(5);
         //********************
         factv.Caption := 'Autorizacion Cementerio para Trasladar (Varios)';
         factv.doc := querydocNAME.AsString;
         factv.pathdoc := locale + querydocNAME.AsString + '.doc';
         factv.ShowModal;
       end;
    6: begin  // Autoriza Domicilio Postal
         // buscando plantilla
          header(6);
         //********************
         fadp.doc := querydocNAME.AsString;
         fadp.pathdoc := locale + querydocNAME.AsString + '.doc';
         fadp.ShowModal;
       end;
    7: begin  // Autoriza Domicilio Postal
         // buscando plantilla
          header(7);
         //********************
         faolc.doc := querydocNAME.AsString;
         faolc.pathdoc := locale + querydocNAME.AsString + '.doc';
         faolc.ShowModal;
       end;
    8: begin  // Autorización Empalme
         // buscando plantilla
          header(8);
         //********************
         fae.doc := querydocNAME.AsString;
         fae.pathdoc := locale + querydocNAME.AsString + '.doc';
         fae.ShowModal;
       end;
    9: begin  // Autorización Medidor Agua
         // buscando plantilla
          header(9);
         //********************
         fama.doc := querydocNAME.AsString;
         fama.pathdoc := locale + querydocNAME.AsString + '.doc';
         fama.ShowModal;
       end;
    10: begin  // Autorización de Trabajo Supermercado
         // buscando plantilla
          header(10);
         //********************
         fats.doc := querydocNAME.AsString;
         fats.pathdoc := locale + querydocNAME.AsString + '.doc';
         fats.ShowModal;
       end;
    11: begin  // Autorización de Trabajo
         // buscando plantilla
          header(11);
         //********************
         fat.doc := querydocNAME.AsString;
         fat.pathdoc := locale + querydocNAME.AsString + '.doc';
         fat.ShowModal;
       end;
    12: begin  // Autoriza Menor a Salir del Pais Ambos Padres
         // buscando plantilla
          header(12);
         //********************
         famspap.doc := querydocNAME.AsString;
         famspap.pathdoc := locale + querydocNAME.AsString + '.doc';
         famspap.ShowModal;
       end;
    13: begin  // Autoriza Menor a Salir del Pais Simple
         // buscando plantilla
          header(13);
         //********************
         famsps2.doc:= querydocNAME.AsString;
         famsps2.pathdoc := locale + querydocNAME.AsString + '.doc';
         famsps2.ShowModal;
       end;
    14: begin  // Autorización Sacar Vehiculo del Pais
         // buscando plantilla
          header(14);
         //********************
         fasvps.doc := querydocNAME.AsString;
         fasvps.pathdoc := locale + querydocNAME.AsString + '.doc';
         fasvps.ShowModal;
       end;
    15: begin  // Autorización Sacar Vehiculo del Pais
         // buscando plantilla
          header(15);
         //********************
         fasvp.doc := querydocNAME.AsString;
         fasvp.pathdoc := locale + querydocNAME.AsString + '.doc';
         fasvp.ShowModal;
       end;
    16: begin  // Certificación de foto abierta
          header(16);
         //********************
         fcfa.doc := querydocNAME.AsString;
         fcfa.pathdoc := locale + querydocNAME.AsString + '.doc';
         fcfa.ShowModal;
       end;
    17: begin  // Certificado de Solteria
          header(17);
         //********************
         fcsolteria.doc := querydocNAME.AsString;
         fcsolteria.pathdoc := locale + querydocNAME.AsString + '.doc';
         fcsolteria.ShowModal;
       end;
    18: begin  // Certificado de trabajo
          header(18);
         //********************
         fctrabajo.doc := querydocNAME.AsString;
         fctrabajo.pathdoc := locale + querydocNAME.AsString + '.doc';
         fctrabajo.ShowModal;
       end;
    19: begin  // Recidencia
          header(19);
         //********************
         frecidencia.doc := querydocNAME.AsString;
         frecidencia.pathdoc := locale + querydocNAME.AsString + '.doc';
         frecidencia.ShowModal;
       end;
    20: begin  // Recidencia
          header(20);
         //********************
         fcpn.doc := querydocNAME.AsString;
         fcpn.pathdoc := locale + querydocNAME.AsString + '.doc';
         fcpn.ShowModal;
       end;
    21: begin  // Comodato vehiculo juridica
          header(21);
         //********************
         fcvj.Caption := 'Comodato vehiculo jurídica';
         fcvj.comodatario := '<RUT COMODATARIO>';
         fcvj.doc := querydocNAME.AsString;
         fcvj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fcvj.ShowModal;
       end;
    22: begin  // Comodato vehiculo natural
          header(22);
         //********************
         fcvj.Caption := 'Comodato vehiculo natural';
         fcvj.comodatario := '<RUN COMODATARIO>';
         fcvj.doc := querydocNAME.AsString;
         fcvj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fcvj.ShowModal;
       end;
    23: begin  // Comodato vehiculo natural
         header(23);
         fbmueble.doc := querydocNAME.AsString;
         fbmueble.pathdoc := locale + querydocNAME.AsString + '.doc';
         fbmueble.ShowModal;
       end;
    24: begin  // Auto normal Jurídica a Jurídica
         header(24);
         fajj.Caption := 'Auto normal Jurídica a Jurídica';
         fajj.doc := querydocNAME.AsString;
         fajj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fajj.ShowModal;
       end;
    25: begin  // Auto normal Jurídica a Jurídica
         header(25);
         fajj.Caption := 'Auto normal Jurídica a Natural';
         fajj.doc := querydocNAME.AsString;
         fajj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fajj.ShowModal;
       end;
    26: begin  // Auto normal Jurídica a Jurídica
         header(26);
         fajj.Caption := 'Auto normal Natural a Jurídica';
         fajj.doc := querydocNAME.AsString;
         fajj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fajj.ShowModal;
       end;
    27: begin  // Auto normal Naturales
         header(27);
         // ajustes
         fajj.grepre.Visible:= false;
         fajj.GroupBox3.Top :=  fajj.GroupBox3.Top - 65;
         fajj.GroupBox5.Top :=  fajj.GroupBox5.Top - 65;
         fajj.Bevel1.Height := fajj.Bevel1.Height - 65;
         fajj.bimprimir.Top :=  fajj.bimprimir.Top - 65;
         fajj.gboleta.Top :=  fajj.gboleta.Top - 65;
         fajj.bcerrar.Top :=  fajj.bcerrar.Top - 65;
         fajj.Height :=   fajj.Height - 65;
         //-------------------
         fajj.Caption := 'Auto normal Naturales';
         fajj.doc := querydocNAME.AsString;
         fajj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fajj.ShowModal;
       end;
    28: begin  // 'Camion con aviso Jurídica a Jurídica
         header(28);
         fcjj.Caption := 'Camión con aviso Jurídica a Jurídica';
         fcjj.doc := querydocNAME.AsString;
         fcjj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fcjj.ShowModal;
       end;
    29: begin  // 'Camion con aviso Jurídica a Jurídica
         header(29);
         fcjj.Caption := 'Camión con aviso Jurídica a Natural';
         fcjj.doc := querydocNAME.AsString;
         fcjj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fcjj.ShowModal;
       end;
    30: begin  // 'Camion con aviso Jurídica a Jurídica
         header(30);
         fcjj.Caption := 'Camión con aviso Natural a Jurídica';
         fcjj.doc := querydocNAME.AsString;
         fcjj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fcjj.ShowModal;
       end;
    31: begin  // Camión con aviso Naturales
         header(31);
         // ajustes
         fcjj.grepre.Visible:= false;
         fcjj.GroupBox3.Top :=  fajj.GroupBox3.Top - 65;
         fcjj.GroupBox5.Top :=  fajj.GroupBox5.Top - 65;
         fcjj.Bevel1.Height := fajj.Bevel1.Height - 65;
         fcjj.bimprimir.Top :=  fajj.bimprimir.Top - 65;
         fcjj.gboleta.Top :=  fajj.gboleta.Top - 65;
         fcjj.bcerrar.Top :=  fajj.bcerrar.Top - 65;
         fcjj.Height :=   fajj.Height - 65;
         //-------------------
         fcjj.Caption := 'Camión con aviso Naturales';
         fcjj.doc := querydocNAME.AsString;
         fcjj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fcjj.ShowModal;
       end;
    32: begin  // 'Camion con aviso Jurídica a Jurídica
         header(32);
         fcjj.grepre.Enabled := true;
         fcjj.Caption := 'Camión sin aviso por no tener Iniciación Jurídico a Jurídico';
         fcjj.doc := querydocNAME.AsString;
         fcjj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fcjj.ShowModal;
       end;
    33: begin  // 'Camion con aviso Jurídica a Jurídica
         header(33);
         fcjj.Caption := 'Camión sin aviso por no tener Iniciación Jurídico a Natural';
         fcjj.doc := querydocNAME.AsString;
         fcjj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fcjj.ShowModal;
       end;
    34: begin  // 'Camion con aviso Jurídica a Jurídica
         header(34);
         fcjj.Caption := 'Camión sin aviso por no tener Iniciación Natural a Jurídico';
         fcjj.doc := querydocNAME.AsString;
         fcjj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fcjj.ShowModal;
       end;
    35: begin  // Camión con aviso Naturales
         header(35);
         // ajustes
         fcjj.grepre.Visible:= false;
         fcjj.GroupBox3.Top :=  fajj.GroupBox3.Top - 65;
         fcjj.GroupBox5.Top :=  fajj.GroupBox5.Top - 65;
         fcjj.Bevel1.Height := fajj.Bevel1.Height - 65;
         fcjj.bimprimir.Top :=  fajj.bimprimir.Top - 65;
         fcjj.gboleta.Top :=  fajj.gboleta.Top - 65;
         fcjj.bcerrar.Top :=  fajj.bcerrar.Top - 65;
         fcjj.Height :=   fajj.Height - 65;
         //-------------------
         fcjj.Caption := 'Camión sin aviso por no tener Iniciación';
         fcjj.doc := querydocNAME.AsString;
         fcjj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fcjj.ShowModal;
       end;
    36: begin  // 'Camion con aviso Jurídica a Jurídica
         header(36);
         fajj.Caption := 'Colectivo Jurídico a Jurídico';
         fajj.doc := querydocNAME.AsString;
         fajj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fajj.ShowModal;
       end;
    37: begin  // 'Camion con aviso Jurídica a Jurídica
         header(37);
         fajj.Caption := 'Colectivo Jurídico a Natural';
         fajj.doc := querydocNAME.AsString;
         fajj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fajj.ShowModal;
       end;
    38: begin  // 'Camion con aviso Jurídica a Jurídica
         header(38);
         fajj.Caption := 'Colectivo Natural a Jurídico';
         fajj.doc := querydocNAME.AsString;
         fajj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fajj.ShowModal;
       end;
    39: begin  // Auto normal Naturales
         header(39);
         // ajustes
         fajj.grepre.Visible:= false;
         fajj.GroupBox3.Top :=  fajj.GroupBox3.Top - 65;
         fajj.GroupBox5.Top :=  fajj.GroupBox5.Top - 65;
         fajj.Bevel1.Height := fajj.Bevel1.Height - 65;
         fajj.bimprimir.Top :=  fajj.bimprimir.Top - 65;
         fajj.gboleta.Top :=  fajj.gboleta.Top - 65;
         fajj.bcerrar.Top :=  fajj.bcerrar.Top - 65;
         fajj.Height :=   fajj.Height - 65;
         //-------------------
         fajj.Caption := 'Colectivo Naturales';
         fajj.doc := querydocNAME.AsString;
         fajj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fajj.ShowModal;
       end;
    40: begin  // 'Camion con aviso Jurídica a Jurídica
         header(40);
         fajj.Caption := 'Colectivo prohibición Jurídico a Jurídico';
         fajj.doc := querydocNAME.AsString;
         fajj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fajj.ShowModal;
       end;
    41: begin  // 'Camion con aviso Jurídica a Jurídica
         header(41);
         fajj.Caption := 'Colectivo prohibición Jurídico a Natural';
         fajj.doc := querydocNAME.AsString;
         fajj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fajj.ShowModal;
       end;
    42: begin  // 'Camion con aviso Jurídica a Jurídica
         header(42);
         fajj.Caption := 'Colectivo prohibición Natural a Jurídico';
         fajj.doc := querydocNAME.AsString;
         fajj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fajj.ShowModal;
       end;
    43: begin  // Colectivo prohibición Naturales
         header(43);
         // ajustes
         fajj.grepre.Visible:= false;
         fajj.GroupBox3.Top :=  fajj.GroupBox3.Top - 65;
         fajj.GroupBox5.Top :=  fajj.GroupBox5.Top - 65;
         fajj.Bevel1.Height := fajj.Bevel1.Height - 65;
         fajj.bimprimir.Top :=  fajj.bimprimir.Top - 65;
         fajj.gboleta.Top :=  fajj.gboleta.Top - 65;
         fajj.bcerrar.Top :=  fajj.bcerrar.Top - 65;
         fajj.Height :=   fajj.Height - 65;
         //-------------------
         fajj.Caption := 'Colectivo prohibición Naturales';
         fajj.doc := querydocNAME.AsString;
         fajj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fajj.ShowModal;
       end;
    44: begin  // 'Agrícola Jurídica a Natural
         header(44);
         fagricola.Caption := 'Agrícola Jurídica a Natural';
         fagricola.doc := querydocNAME.AsString;
         fagricola.pathdoc := locale + querydocNAME.AsString + '.doc';
         fagricola.ShowModal;
       end;
    45: begin  // 'Agrícola Natural a Jurídica
         header(45);
         fagricola.Caption := 'Agrícola Natural a Jurídica';
         fagricola.doc := querydocNAME.AsString;
         fagricola.pathdoc := locale + querydocNAME.AsString + '.doc';
         fagricola.ShowModal;
       end;
    46: begin  // 'Agrícola Natural a Jurídica
         header(46);
         fagricolann.Caption := 'Agrícola Natural a Natural';
         fagricolann.doc := querydocNAME.AsString;
         fagricolann.pathdoc := locale + querydocNAME.AsString + '.doc';
         fagricolann.ShowModal;
       end;
    47: begin  // Habitacional Jurídica a Natural sin aval
         header(47);
         fhabitacional.Caption := 'Habitacional Jurídica a Natural sin aval';
         fhabitacional.doc := querydocNAME.AsString;
         fhabitacional.pathdoc := locale + querydocNAME.AsString + '.doc';
         fhabitacional.ShowModal;
       end;
    48: begin  // Habitacional Natural a Jurídica sin aval
         header(48);
         fhnja.Caption := 'Habitacional Natural a Jurídica sin aval';
         fhnja.doc := querydocNAME.AsString;
         fhnja.pathdoc := locale + querydocNAME.AsString + '.doc';
         fhnja.ShowModal;
       end;
    49: begin  // Habitacional Persona Naturales sin aval
         header(49);
         fhpna.Caption := 'Habitacional Persona Naturales sin aval';
         fhpna.doc := querydocNAME.AsString;
         fhpna.pathdoc := locale + querydocNAME.AsString + '.doc';
         fhpna.ShowModal;
       end;
    50: begin  // Contrato de Trabajo Jurídica
         header(50);
         fctj.Caption := 'Contrato de Trabajo Jurídica';
         fctj.doc := querydocNAME.AsString;
         fctj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fctj.ShowModal;
       end;
    51: begin  // Contrato de Trabajo Jurídica cláusula de Viaje
         header(51);
         fctj.Caption := 'Contrato de Trabajo Jurídica cláusula de Viaje';
         fctj.doc := querydocNAME.AsString;
         fctj.pathdoc := locale + querydocNAME.AsString + '.doc';
         fctj.ShowModal;
       end;
    52: begin  //Contrato de Trabajo Natural
         header(52);
         fctn.Caption := 'Contrato de Trabajo Natural';
         fctn.doc := querydocNAME.AsString;
         fctn.pathdoc := locale + querydocNAME.AsString + '.doc';
         fctn.ShowModal;
       end;
    53: begin  //Contrato de Trabajo Natural cláusula de Viaje
         header(53);
         fctn.Caption := 'Contrato de Trabajo Natural cláusula de Viaje';
         fctn.doc := querydocNAME.AsString;
         fctn.pathdoc := locale + querydocNAME.AsString + '.doc';
         fctn.ShowModal;
       end;
    54: begin  //18.575
         header(54);
         fdeclaraciones.Caption := '18.575';
         fdeclaraciones.doc := querydocNAME.AsString;
         fdeclaraciones.pathdoc := locale + querydocNAME.AsString + '.doc';
         fdeclaraciones.ShowModal;
       end;
    55: begin  //18.575
         header(55);
         fdeclaraciones.Caption := '18.833';
         fdeclaraciones.doc := querydocNAME.AsString;
         fdeclaraciones.pathdoc := locale + querydocNAME.AsString + '.doc';
         fdeclaraciones.ShowModal;
       end;
    56: begin  //Carabineros (Papa Autoriza)
         header(56);
         fcarabinerospapa.Caption := 'Carabineros (Papa Autoriza)';
         fcarabinerospapa.doc := querydocNAME.AsString;
         fcarabinerospapa.pathdoc := locale + querydocNAME.AsString + '.doc';
         fcarabinerospapa.ShowModal;
       end;
    57: begin  //Carabineros
         header(57);
         fdeclaraciones.Caption := 'Carabineros';
         fdeclaraciones.doc := querydocNAME.AsString;
         fdeclaraciones.pathdoc := locale + querydocNAME.AsString + '.doc';
         fdeclaraciones.ShowModal;
       end;
    58: begin  //Docente
         header(58);
         fdeclaraciones.Caption := 'Docente';
         fdeclaraciones.doc := querydocNAME.AsString;
         fdeclaraciones.pathdoc := locale + querydocNAME.AsString + '.doc';
         fdeclaraciones.ShowModal;
       end;
    59: begin  //Drogas
         header(59);
         fdeclaraciones.Caption := 'Drogas';
         fdeclaraciones.doc := querydocNAME.AsString;
         fdeclaraciones.pathdoc := locale + querydocNAME.AsString + '.doc';
         fdeclaraciones.ShowModal;
       end;
    60: begin  //Ejercito
         header(60);
         fdeclaraciones.Caption := 'Ejercito';
         fdeclaraciones.doc := querydocNAME.AsString;
         fdeclaraciones.pathdoc := locale + querydocNAME.AsString + '.doc';
         fdeclaraciones.ShowModal;
       end;
    61: begin  //Estatuto docente
         header(61);
         fdeclaraciones.Caption := 'Estatuto docente';
         fdeclaraciones.doc := querydocNAME.AsString;
         fdeclaraciones.pathdoc := locale + querydocNAME.AsString + '.doc';
         fdeclaraciones.ShowModal;
       end;
    62: begin  //Partido Politico
         header(62);
         fdeclaraciones.Caption := 'Partido Politico';
         fdeclaraciones.doc := querydocNAME.AsString;
         fdeclaraciones.pathdoc := locale + querydocNAME.AsString + '.doc';
         fdeclaraciones.ShowModal;
       end;
    63: begin  //Boleta de Citación
         header(63);
         fextravios.Caption := 'Boleta de Citación';
         fextravios.doc := querydocNAME.AsString;
         fextravios.pathdoc := locale + querydocNAME.AsString + '.doc';
         fextravios.find := '<NUMERO>';
         fextravios.datos.EditLabel.Caption := 'Numero boleta de citación';
         fextravios.ShowModal;
       end;
    64: begin  //Cartolas de Recorrido
         header(64);
         fextravios.Caption := 'Cartolas de Recorrido';
         fextravios.doc := querydocNAME.AsString;
         fextravios.pathdoc := locale + querydocNAME.AsString + '.doc';
         fextravios.find := '<NUMERO>';
         fextravios.datos.EditLabel.Caption := 'PLACA PATENTE';
         fextravios.ShowModal;
       end;
    65: begin  //Cartolas de Recorrido
         header(65);
         fextravios.Caption := 'Licencia de Conducir';
         fextravios.doc := querydocNAME.AsString;
         fextravios.pathdoc := locale + querydocNAME.AsString + '.doc';
         fextravios.find := '<COMUNA>';
         fextravios.datos.EditLabel.Caption := 'Comuna';
         fextravios.ShowModal;
       end;
    66: begin  //Permiso Provisorio
         header(66);
         fprovisorio.Caption := 'Permiso Provisorio';
         fprovisorio.doc := querydocNAME.AsString;
         fprovisorio.pathdoc := locale + querydocNAME.AsString + '.doc';
         fprovisorio.ShowModal;
       end;
    67: begin  //Placa Patente
          header(67);
         fextravios.Caption := 'Placa Patente';
         fextravios.doc := querydocNAME.AsString;
         fextravios.pathdoc := locale + querydocNAME.AsString + '.doc';
         fextravios.find := '<Numero>';
         fextravios.datos.EditLabel.Caption := 'Placa Patente';
         fextravios.ShowModal;
       end;
    68: begin  //Placa Patente
          header(68);
         fextravios.Caption := 'Revisión Técnica';
         fextravios.doc := querydocNAME.AsString;
         fextravios.pathdoc := locale + querydocNAME.AsString + '.doc';
         fextravios.find := '<Numero patente>';
         fextravios.datos.EditLabel.Caption := 'Placa Patente';
         fextravios.ShowModal;
       end;
    69: begin  //Placa Patente
          header(69);
         fextravios.Caption := 'Sello Verde';
         fextravios.doc := querydocNAME.AsString;
         fextravios.pathdoc := locale + querydocNAME.AsString + '.doc';
         fextravios.find := '<Numero patente>';
         fextravios.datos.EditLabel.Caption := 'Placa Patente';
         fextravios.ShowModal;
       end;
    70: begin  //Alcoholes Nº 4  19.925
         header(70);
         fdeclaraciones.Caption := 'Alcoholes Nº 4  19.925';
         fdeclaraciones.doc := querydocNAME.AsString;
         fdeclaraciones.pathdoc := locale + querydocNAME.AsString + '.doc';
         fdeclaraciones.ShowModal;
       end;
    71: begin  //Alzamiento
         header(71);
         falzamiento.Caption := 'Alzamiento';
         falzamiento.doc := querydocNAME.AsString;
         falzamiento.pathdoc := locale + querydocNAME.AsString + '.doc';
         falzamiento.ShowModal;
       end;
    72: begin  //Carro de Arrastre
         header(72);
         farrastre.Caption := 'Carro de Arrastre';
         farrastre.doc := querydocNAME.AsString;
         farrastre.pathdoc := locale + querydocNAME.AsString + '.doc';
         farrastre.ShowModal;
       end;
    73: begin  //Expensas
         header(73);
         fexpensas.Caption := 'Expensas';      //Arreglar nombre en el doc
         fexpensas.doc := querydocNAME.AsString;
         fexpensas.pathdoc := locale + querydocNAME.AsString + '.doc';
         fexpensas.ShowModal;
       end;
    74: begin  //Administrar Propiedad
         header(74);
         fpropiedad.Caption := 'Administrar Propiedad';
         fpropiedad.doc := querydocNAME.AsString;
         fpropiedad.pathdoc := locale + querydocNAME.AsString + '.doc';
         fpropiedad.ShowModal;
       end;
    75: begin  //Poder Abierto
         header(75);
         fpoderabierto.Caption := 'Poder Abierto';
         fpoderabierto.doc := querydocNAME.AsString;
         fpoderabierto.pathdoc := locale + querydocNAME.AsString + '.doc';
         fpoderabierto.ShowModal;
       end;
    76: begin  //SII Jurídica
         header(76);
         fsiij.Caption := 'SII Jurídica';
         fsiij.doc := querydocNAME.AsString;
         fsiij.pathdoc := locale + querydocNAME.AsString + '.doc';
         fsiij.ShowModal;
       end;
    77: begin  //SII
         header(77);
         fsii.Caption := 'SII';
         fsii.doc := querydocNAME.AsString;
         fsii.pathdoc := locale + querydocNAME.AsString + '.doc';
         fsii.ShowModal;
       end;
    78: begin  //Avenimiento
         header(78);
         favenimiento.Caption := 'Avenimiento';
         favenimiento.doc := querydocNAME.AsString;
         favenimiento.pathdoc := locale + querydocNAME.AsString + '.doc';
         favenimiento.ShowModal;
       end;
    79: begin  //Letra de cambio
         if not DirectoryExists('tempdoc') then createdir('tempdoc');
         querydoc.Close;
         querydoc.Params[0].Value := 79;
         querydoc.Open();
         c := ExtractFilePath(Application.ExeName) + '\tempdoc\' + querydocNAME.AsString + '.xls';
         if FileExists(c) then DeleteFile(c);
         querydocDOC.SaveToFile(c);
         fletradecambio.Caption := 'Letra de cambio';
         fletradecambio.doc := querydocNAME.AsString;
         fletradecambio.pathdoc := locale + querydocNAME.AsString + '.xls';
         fletradecambio.ShowModal;
       end;
    80: begin  //Pagare
         header(80);
         fpagare.Caption := 'Pagare';
         fpagare.doc := querydocNAME.AsString;
         fpagare.pathdoc := locale + querydocNAME.AsString + '.doc';
         fpagare.ShowModal;
       end;
    81: begin  //Renuncia nueva fuero
         header(81);
         frenuncia.Caption := 'Renuncia nueva fuero';
         frenuncia.doc := querydocNAME.AsString;
         frenuncia.pathdoc := locale + querydocNAME.AsString + '.doc';
         frenuncia.ShowModal;
       end;
    82: begin  //Renuncia nueva
         header(82);
         frenuncia.Caption := 'Renuncia nueva';
         frenuncia.doc := querydocNAME.AsString;
         frenuncia.pathdoc := locale + querydocNAME.AsString + '.doc';
         frenuncia.ShowModal;
       end;
    83: begin  // AÑADIR BOLETA
        fgboleta.td := 'Emitida directo';
        fgboleta.doc := '';
        fgboleta.label1.Caption := 'Boleta emitida directo';
        fgboleta.emit := Date;
        fgboleta.ShowModal;
       end;
  end;
end;


procedure Tfprincipal.Expandir1Click(Sender: TObject);
begin
 Expandir1.Checked := not Expandir1.Checked;
 if expandir1.Checked then
  begin
   arbol.FullExpand;
  end else  arbol.FullCollapse;
end;

procedure Tfprincipal.Firmas1Click(Sender: TObject);
begin
 ffirmsview.cbtype.ItemIndex := 0;
 dm.fdqueryfirm.close;
 dm.fdqueryfirm.Params[0].Value := 0;
 dm.fdqueryfirm.Params[1].Value := '';
 dm.fdqueryfirm.Open();
  ffirmsview.typefirm.Caption := dm.fdqueryfirmSIGNA.AsString;
  ffirmsview.rut.Caption := dm.fdqueryfirmRUT.AsString;
  ffirmsview.name.Caption := dm.fdqueryfirmNAMES.AsString;
  ffirmsview.address.Caption := dm.fdqueryfirmADDRESS.AsString;
  ffirmsview.phone.Caption := dm.fdqueryfirmPHONE.AsString;
  ffirmsview.obser.caption := '';
  ffirmsview.obser.caption := dm.fdqueryfirmOBESER.AsString;
  ffirmsview.firm.Picture.Assign(dm.fdqueryfirmFIRM);
 ffirmsview.ShowModal;
end;

procedure Tfprincipal.FormActivate(Sender: TObject);
begin
  // validando perfil
 if fprincipal.credenciales.roll_id = 2 then
 begin
    // usuarios
    mUsuarios.Visible := false;
    busuarios.Visible := false;
    // plantillas
    mPlantillas.Visible := false;
    bplantillas.Visible := false;
    // notaria
    mnotaria.Visible := false;
    bnotaria.Visible := false;
    // firmas visor
    ffirmsview.beliminar.Visible := false;
    // ruts
    bruts.Visible := false;
    Datos1.Visible := false;

 end
end;

procedure Tfprincipal.FormCreate(Sender: TObject);
var
 uf, utm : string;
 i : Integer;
begin
 // arbol.FullExpand;
 // conectado con api de finanzas chilenas
 uf := http.get('http://mindicador.cl/api/uf/' + FormatDateTime('dd-mm-yyyy', date()));
 utm := http.get('http://mindicador.cl/api/utm/' + FormatDateTime('dd-mm-yyyy', date()));
 i := AnsiPos('valor":', uf);
 bstado.Panels[1].text := 'UF: ' +  copy(uf, i+7, (length(uf)-(i+7)-2));
 i := AnsiPos('valor":', utm);
 bstado.Panels[1].text := bstado.Panels[1].text + ' --- UTM: ' +  copy(utm, i+7, (length(utm)-(i+7)-2));
 top := 2;
 Height := Screen.Height - 70;
 Left:= (Screen.Width div 2) - (Width div 2);
end;

procedure Tfprincipal.FormShow(Sender: TObject);
begin
 bstado.Panels[0].Text := 'USUARIO: ' + fprincipal.credenciales.nick;
end;

procedure Tfprincipal.mBoletasClick(Sender: TObject);
begin
 fadminboleta.fechaini.Date := Date;
 fadminboleta.fechafin.Date := Date;
 fadminboleta.usuarios.KeyValue := credenciales.id;
 // boletas
 fadminboleta.qryboletas.Close;
 fadminboleta.qryboletas.Params[0].Value := credenciales.id;
 fadminboleta.qryboletas.Params[1].Value := Date;
 fadminboleta.qryboletas.Params[2].Value := Date;
 fadminboleta.qryboletas.Open();
 // cantidades
 fadminboleta.qrydatos.Close;
 fadminboleta.qrydatos.Params[0].Value := credenciales.id;
 fadminboleta.qrydatos.Params[1].Value := Date;
 fadminboleta.qrydatos.Params[2].Value := Date;
 fadminboleta.qrydatos.Open();
 fadminboleta.qryusers.Open();
 if (credenciales.roll_id = 2) then
 begin
   fadminboleta.usuarios.Enabled := false;
   fadminboleta.all.Enabled := false;
   fadminboleta.bEliminar.visible := false;
 end;
 fadminboleta.ShowModal;
end;

procedure Tfprincipal.mnotariaClick(Sender: TObject);
begin
 dm.fdqueryNotary.Close;
 dm.fdqueryNotary.Open();
 fnotaria.docdirectory.Text := credenciales.docdirectory;
 if (dm.fdqueryNotary.RecordCount > 0) then
 begin
  fnotaria.notary.Text :=  dm.fdqueryNotaryNOTARY.AsString;
  fnotaria.title.Text :=  dm.fdqueryNotaryTITLE.AsString;
  fnotaria.address.Text :=  dm.fdqueryNotaryADDRESS.AsString;
  fnotaria.phone.Text :=  dm.fdqueryNotaryPHONE.AsString;
  fnotaria.comune.Text :=  dm.fdqueryNotaryCOMUNE.AsString;
  fnotaria.country.Text :=  dm.fdqueryNotaryCOUNTRY.AsString;
  fnotaria.logo.Picture.Assign(dm.fdqueryNotaryLOGO);
 end;
 fnotaria.ShowModal;
end;

procedure Tfprincipal.mPlantillasClick(Sender: TObject);
begin
 fdoc.ShowModal;
end;

procedure Tfprincipal.Salir1Click(Sender: TObject);
begin
 Application.Terminate;
end;

procedure Tfprincipal.busuariosClick(Sender: TObject);
begin
  mUsuariosClick(sender);
end;


procedure Tfprincipal.Cinder1Click(Sender: TObject);
begin
 Cinder1.Checked := true;
 Coconut1.Checked := false;
 Solarios1.Checked:= false;
 skin.LoadFromCollection(pieles, 0);
end;

procedure Tfprincipal.Coconut1Click(Sender: TObject);
begin
 Solarios1.Checked:= false;
 Cinder1.Checked := false;
 Coconut1.Checked := true;
 skin.LoadFromCollection(pieles, 1);
end;

procedure Tfprincipal.Datos1Click(Sender: TObject);
begin
 fdatos.qryrutall.Open();
 fdatos.dsruts.DataSet := nil;
 fdatos.dsruts.DataSet := fdatos.qryrutall;
 fdatos.ShowModal;
end;

procedure Tfprincipal.bnotariaClick(Sender: TObject);
begin
  mnotariaClick(sender);
end;

procedure Tfprincipal.Timer1Timer(Sender: TObject);
begin
 bstado.Panels[2].Text :=  datetimetostr(now());
end;

procedure Tfprincipal.mUsuariosClick(Sender: TObject);
begin
  dm.fdqueryAllUser.Close;
  dm.fdqueryAllUser.Open();
  fusurios.ShowModal;
end;

end.
