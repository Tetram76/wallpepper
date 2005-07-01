unit UMain;

interface

uses
  UInterfacePlugIn, UInterfaceDessinCalendrier;

type
  TPlugin = class(TInterfacedObject, IPlugin, IConfiguration, IDessinCalendrier, IEvenements)
  private
    FDessineur: IDessineur;

    // interface IPlugin
    function GetName: ShortString; stdcall;
    function GetDescription: ShortString; stdcall;
    function GetAuthor: ShortString; stdcall;
    function GetAuthorContact: ShortString; stdcall;

    // interface IConfiguration
    function Configure(Writer: IOptionsWriter): Boolean; stdcall;
    procedure RelireOptions(Writer: IOptionsWriter); stdcall;

    // interface IDessinCalendrier
    function CouleurTransparence(Couleur: Integer): Boolean; stdcall;
    procedure DessinMois(Mois, Annee: Word; hHandle: THandle; var Largeur, Hauteur: Integer; CouleurTransparence: Integer); stdcall;
    procedure DessinTitreMois(Mois, Annee: Word; hHandle: THandle; var Largeur, Hauteur: Integer; CouleurTransparence: Integer); stdcall;

    // interface IEvenements
    procedure DemarrageWP; stdcall;
    procedure FermetureWP; stdcall;
    procedure DebutRechercheFond; stdcall;
    procedure FinRechercheFond; stdcall;
    procedure DebutDessinFond(Dessineur: IDessineur); stdcall;
    procedure FinDessinFond(Dessineur: IDessineur); stdcall;
    procedure AvantApplicationNouveauFond; stdcall;
    procedure ApresApplicationNouveauFond; stdcall;
  public
    FMainProg: IMainProg;
    constructor Create(MainProg: IMainProg);
    destructor Destroy; override;
  end;

var
  Plugin: IPlugin;

implementation

{ TPlugin }

procedure TPlugin.ApresApplicationNouveauFond;
begin

end;

procedure TPlugin.AvantApplicationNouveauFond;
begin

end;

function TPlugin.Configure(Writer: IOptionsWriter): Boolean;
begin
  //  with TFMain.Create(nil) do try
  //    FWriter := Writer;
  //    Result := ShowModal = mrOk;
  //  finally
  //    Free;
  //  end;
  Result := False;
end;

function TPlugin.CouleurTransparence(Couleur: Integer): Boolean;
begin
  Result := True;
end;

constructor TPlugin.Create(MainProg: IMainProg);
begin
  FMainProg := MainProg;
end;

procedure TPlugin.DebutDessinFond(Dessineur: IDessineur);
begin
  FDessineur := Dessineur;
end;

procedure TPlugin.DebutRechercheFond;
begin

end;

procedure TPlugin.DemarrageWP;
begin

end;

procedure TPlugin.DessinMois(Mois, Annee: Word; hHandle: THandle;
  var Largeur, Hauteur: Integer; CouleurTransparence: Integer);
begin

end;

procedure TPlugin.DessinTitreMois(Mois, Annee: Word; hHandle: THandle;
  var Largeur, Hauteur: Integer; CouleurTransparence: Integer);
begin

end;

destructor TPlugin.Destroy;
begin
  FMainProg := nil;
  inherited;
end;

procedure TPlugin.FermetureWP;
begin

end;

procedure TPlugin.FinDessinFond(Dessineur: IDessineur);
begin
  FDessineur := nil;
end;

procedure TPlugin.FinRechercheFond;
begin

end;

function TPlugin.GetAuthor: ShortString;
begin
  Result := 'Teträm Corp';
end;

function TPlugin.GetAuthorContact: ShortString;
begin
  Result := 'http://www.tetram.info';
end;

function TPlugin.GetDescription: ShortString;
begin
  Result := 'Agenda simplifié: gestion des rendez-vous et des taches.';
end;

function TPlugin.GetName: ShortString;
begin
  Result := 'Agenda.';
end;

procedure TPlugin.RelireOptions(Writer: IOptionsWriter);
begin

end;

initialization
  Plugin := nil;

end.

