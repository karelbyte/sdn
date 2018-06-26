program sdn;

uses
  Vcl.Forms,
  System.SysUtils,
  Vcl.StdCtrls,
  System.Classes,
  uprincipal in 'uprincipal.pas' {fprincipal},
  udm in 'udm.pas' {dm: TDataModule},
  uconfig in 'uconfig.pas' {fconfig},
  uflogin in 'uflogin.pas' {flogin},
  uusuarios in 'uusuarios.pas' {fusurios},
  ueliminar in 'ueliminar.pas' {feliminar},
  unotaria in 'unotaria.pas' {fnotaria},
  ufirmas in 'ufirmas.pas' {ffirmas},
  uvisorfirmas in 'uvisorfirmas.pas' {ffirmsview},
  ubase in 'ubase.pas' {fbase},
  udoc in 'udoc.pas' {fdoc},
  usaveplantilla in 'usaveplantilla.pas' {fsaveplantilla},
  uaicp in 'uaicp.pas' {faicp},
  ugboletas in 'ugboletas.pas' {fgboleta},
  uacrs in 'uacrs.pas' {facrs},
  uacrv in 'uacrv.pas' {facrv},
  uacts in 'uacts.pas' {facts},
  uactv in 'uactv.pas' {factv},
  uadp in 'uadp.pas' {fadp},
  uaolc in 'uaolc.pas' {faolc},
  uae in 'uae.pas' {fae},
  uama in 'uama.pas' {fama},
  uats in 'uats.pas' {fats},
  uat in 'uat.pas' {fat},
  uamspap in 'uamspap.pas' {famspap},
  uasvp in 'uasvp.pas' {fasvp},
  uasvps in 'uasvps.pas' {fasvps},
  ufirmup in 'ufirmup.pas' {ffirmup},
  uamsps2 in 'uamsps2.pas' {famsps2},
  ucfa in 'ucfa.pas' {fcfa},
  ucsolteria in 'ucsolteria.pas' {fcsolteria},
  uctrabajo in 'uctrabajo.pas' {fctrabajo},
  urecidencia in 'urecidencia.pas' {frecidencia},
  ucpn in 'ucpn.pas' {fcpn},
  ucvj in 'ucvj.pas' {fcvj},
  ubmuebles in 'ubmuebles.pas' {fbmueble},
  uajj in 'uajj.pas' {fajj},
  ucjj in 'ucjj.pas' {fcjj},
  uagricola in 'uagricola.pas' {fagricola},
  uagricolann in 'uagricolann.pas' {fagricolann},
  uhabitacional in 'uhabitacional.pas' {fhabitacional},
  uhnja in 'uhnja.pas' {fhnja},
  uhpna in 'uhpna.pas' {fhpna},
  uctj in 'uctj.pas' {fctj},
  uctn in 'uctn.pas' {fctn},
  udeclaraciones in 'udeclaraciones.pas' {fdeclaraciones},
  ucarabinerospapa in 'ucarabinerospapa.pas' {fcarabinerospapa},
  uextravios in 'uextravios.pas' {fextravios},
  uprovisorio in 'uprovisorio.pas' {fprovisorio},
  ualzamiento in 'ualzamiento.pas' {falzamiento},
  uarrastre in 'uarrastre.pas' {farrastre},
  uexpensas in 'uexpensas.pas' {fexpensas},
  upropiedad in 'upropiedad.pas' {fpropiedad},
  upoderabierto in 'upoderabierto.pas' {fpoderabierto},
  usiij in 'usiij.pas' {fsiij},
  usii in 'usii.pas' {fsii},
  uavenimiento in 'uavenimiento.pas' {favenimiento},
  uletracambio in 'uletracambio.pas' {fletradecambio},
  upagare in 'upagare.pas' {fpagare},
  urenuncia in 'urenuncia.pas' {frenuncia},
  uadminboletas in 'uadminboletas.pas' {fadminboleta},
  udatos in 'udatos.pas' {fdatos},
  uupdateboleta in 'uupdateboleta.pas' {fupboleta};

{$R *.res}
var
 inifile: string;
 linesconfig : TStrings;  int : integer;

procedure login();
begin
     Application.MainFormOnTaskbar := True;
     linesconfig.LoadFromFile(inifile);
     int := linesconfig.Count;
     // coneccion
     dm.conect.Connected := false;
     with dm.conect.Params do begin
       Clear;
       Add('DriverID='+  linesconfig.strings[0]);
       Add('Server=' + linesconfig.strings[1]);
       Add('Protocol=' + linesconfig.strings[2]);
       Add('Database=' + linesconfig.strings[3]);
       Add('User_Name=' + linesconfig.strings[4]);
       Add('Password=' + linesconfig.strings[5]);
       Add('CharacterSet=ISO8859_1');
      end;
     try
        dm.conect.Connected := True;
        flogin := Tflogin.Create(application);
        flogin.logingok := false;
        flogin.ShowModal();
      except
       Application.MessageBox('No se puede establecer comunicación con el servidor', 'Error') ;
       halt;
      end;

     if (flogin.logingok) then
     begin
     Application.CreateForm(Tfprincipal, fprincipal);
  Application.CreateForm(Tfusurios, fusurios);
  Application.CreateForm(Tfeliminar, feliminar);
  Application.CreateForm(Tfnotaria, fnotaria);
  Application.CreateForm(Tffirmas, ffirmas);
  Application.CreateForm(Tffirmsview, ffirmsview);
  Application.CreateForm(Tfbase, fbase);
  Application.CreateForm(Tfdoc, fdoc);
  Application.CreateForm(Tfsaveplantilla, fsaveplantilla);
  Application.CreateForm(Tfaicp, faicp);
  Application.CreateForm(Tfgboleta, fgboleta);
  Application.CreateForm(Tfacrs, facrs);
  Application.CreateForm(Tfacrv, facrv);
  Application.CreateForm(Tfacts, facts);
  Application.CreateForm(Tfactv, factv);
  Application.CreateForm(Tfadp, fadp);
  Application.CreateForm(Tfaolc, faolc);
  Application.CreateForm(Tfae, fae);
  Application.CreateForm(Tfama, fama);
  Application.CreateForm(Tfats, fats);
  Application.CreateForm(Tfat, fat);
  Application.CreateForm(Tfamspap, famspap);
  Application.CreateForm(Tfasvp, fasvp);
  Application.CreateForm(Tfasvps, fasvps);
  Application.CreateForm(Tffirmup, ffirmup);
  Application.CreateForm(Tfamsps2, famsps2);
  Application.CreateForm(Tfcfa, fcfa);
  Application.CreateForm(Tfcsolteria, fcsolteria);
  Application.CreateForm(Tfctrabajo, fctrabajo);
  Application.CreateForm(Tfrecidencia, frecidencia);
  Application.CreateForm(Tfcpn, fcpn);
  Application.CreateForm(Tfcvj, fcvj);
  Application.CreateForm(Tfbmueble, fbmueble);
  Application.CreateForm(Tfajj, fajj);
  Application.CreateForm(Tfcjj, fcjj);
  Application.CreateForm(Tfagricola, fagricola);
  Application.CreateForm(Tfagricolann, fagricolann);
  Application.CreateForm(Tfhabitacional, fhabitacional);
  Application.CreateForm(Tfhnja, fhnja);
  Application.CreateForm(Tfhpna, fhpna);
  Application.CreateForm(Tfctj, fctj);
  Application.CreateForm(Tfctn, fctn);
  Application.CreateForm(Tfdeclaraciones, fdeclaraciones);
  Application.CreateForm(Tfcarabinerospapa, fcarabinerospapa);
  Application.CreateForm(Tfextravios, fextravios);
  Application.CreateForm(Tfprovisorio, fprovisorio);
  Application.CreateForm(Tfalzamiento, falzamiento);
  Application.CreateForm(Tfarrastre, farrastre);
  Application.CreateForm(Tfexpensas, fexpensas);
  Application.CreateForm(Tfpropiedad, fpropiedad);
  Application.CreateForm(Tfpoderabierto, fpoderabierto);
  Application.CreateForm(Tfsiij, fsiij);
  Application.CreateForm(Tfsii, fsii);
  Application.CreateForm(Tfavenimiento, favenimiento);
  Application.CreateForm(Tfletradecambio, fletradecambio);
  Application.CreateForm(Tfpagare, fpagare);
  Application.CreateForm(Tfrenuncia, frenuncia);
  Application.CreateForm(Tfadminboleta, fadminboleta);
  Application.CreateForm(Tfdatos, fdatos);
  Application.CreateForm(Tfupboleta, fupboleta);
  fprincipal.credenciales.id := dm.fdqueryUser.FieldByName('ID').AsLargeInt;
       fprincipal.credenciales.rut := dm.fdqueryUser.FieldByName('RUT').AsString;
       fprincipal.credenciales.nick := dm.fdqueryUser.FieldByName('NICK').AsString;
       fprincipal.credenciales.names := dm.fdqueryUser.FieldByName('NAMES').AsString;
       fprincipal.credenciales.roll_id := dm.fdqueryUser.FieldByName('ROLL_ID').AsInteger;
       if (linesconfig.Count > 7) then  fprincipal.credenciales.docdirectory := linesconfig.strings[7] else fprincipal.credenciales.docdirectory := 'C:\sdndoc';
       Application.Run
     end;
end;

begin
  linesconfig := TStringList.Create();
  Application.Initialize;
  Application.CreateForm(Tdm, dm);

  inifile := ExtractFilePath(Application.ExeName) + 'config.ini';
  if FileExists(inifile) then login
  else
  begin
    fconfig := Tfconfig.Create(application);
    fconfig.ShowModal();
    if (fconfig.conectok) then login
  end;
end.
