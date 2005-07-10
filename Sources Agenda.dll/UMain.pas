unit UMain;

interface

uses
  SysUtils, Classes, Forms, UInterfacePlugIn, UInterfaceDessinCalendrier, UInterfacePluginCommandes, dialogs,
  Controls, ComCtrls, StdCtrls;

type
  ROptions = record
    JourneeHeureDebut, JourneeHeureFin: TDateTime;
  end;

  TPlugin = class(TInterfacedObject, IPlugin, IConfiguration, IDessinCalendrier, IEvenements, IInterfacePluginCommandes)
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

    // interface IInterfacePluginCommandes
    procedure GetCommandes(var Count: Integer; var Commandes: array of RInfoCommande); stdcall;
    procedure ExecuteCommande(IdCommande: Integer; Writer: IOptionsWriter); stdcall;
  public
    FMainProg: IMainProg;
    FOptions: ROptions;
    constructor Create(MainProg: IMainProg);
    destructor Destroy; override;
  end;

  TFMain = class(TForm)
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    FWriter: IOptionsWriter;
  end;

var
  Plugin: IPlugin;

implementation

uses UPlanner;

{$R *.dfm}

procedure LoadOptions(Writer: IOptionsWriter; var Options: ROptions);
begin
  with Writer do begin
    Options.JourneeHeureDebut := ReadTime('Options', 'JourneeHeureDebut', EncodeTime(9, 0, 0, 0));
    Options.JourneeHeureFin := ReadTime('Options', 'JourneeHeureFin', EncodeTime(18, 0, 0, 0));

    //    Options.DateFinale  := ReadDate('Options', 'DateFinale', Now);
    //    Options.Description := ReadString('Options', 'Description', '');
    //    Options.Police      := ReadString('Options', 'Police', 'Arial');
    //    Options.DateTaille  := ReadInteger('Options', 'DateTaille', 5);
    //    Options.Date3D      := ReadBool('Options', 'Date3D', True);
    //    Options.DateCouleur := ReadInteger('Options', 'DateCouleur', clRed);
    //    Options.ExclureWE   := ReadBool('Options', 'ExclureWE', False);
    //    Options.ExclureJF   := ReadBool('Options', 'ExclureJF', False);
  end;
end;

procedure SaveOptions(Writer: IOptionsWriter; Options: ROptions);
begin
  with Writer do begin
    //    WriteDate('Options', 'DateFinale', Options.DateFinale);
    //    WriteString('Options', 'Description', Options.Description);
    //    WriteString('Options', 'Police', Options.Police);
    //    WriteInteger('Options', 'DateTaille', Options.DateTaille);
    //    WriteBool('Options', 'Date3D', Options.Date3D);
    //    WriteInteger('Options', 'DateCouleur', Options.DateCouleur);
    //    WriteBool('Options', 'ExclureWE', Options.ExclureWE);
    //    WriteBool('Options', 'ExclureJF', Options.ExclureJF);
  end;
end;

{ TPlugin }

procedure TPlugin.ApresApplicationNouveauFond;
begin

end;

procedure TPlugin.AvantApplicationNouveauFond;
begin

end;

function TPlugin.Configure(Writer: IOptionsWriter): Boolean;
begin
  with TFMain.Create(nil) do try
    FWriter := Writer;
    Result := ShowModal = mrOk;
  finally
    Free;
  end;
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

procedure TPlugin.DessinMois(Mois, Annee: Word; hHandle: THandle; var Largeur, Hauteur: Integer; CouleurTransparence: Integer);
begin

end;

procedure TPlugin.DessinTitreMois(Mois, Annee: Word; hHandle: THandle; var Largeur, Hauteur: Integer; CouleurTransparence: Integer);
begin

end;

destructor TPlugin.Destroy;
begin
  FMainProg := nil;
  inherited;
end;

procedure TPlugin.ExecuteCommande(IdCommande: Integer; Writer: IOptionsWriter);
begin
  case IdCommande of
    // Ouvrir
    0:
      with TFrmPlanner.Create(nil) do try
        LoadOptions(Writer, Options);
        ApplyOptions;
        ShowModal;
      finally
        Free;
      end;
    // Configurer
    1: Configure(Writer);
  end;
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

procedure TPlugin.GetCommandes(var Count: Integer; var Commandes: array of RInfoCommande);
const
  NbCommandes = 2;
begin
  if Count < NbCommandes then
    Count := -NbCommandes
  else begin
    Count := NbCommandes;
    Commandes[0].IdCommande := 0;
    Commandes[0].MenuLabel := 'Ouvrir';
    Commandes[1].IdCommande := 1;
    Commandes[1].MenuLabel := 'Configurer';
  end;
end;

function TPlugin.GetDescription: ShortString;
begin
  Result := 'Agenda simplifié: gestion des rendez-vous et des taches.';
end;

function TPlugin.GetName: ShortString;
begin
  Result := 'Agenda';
end;

procedure TPlugin.RelireOptions(Writer: IOptionsWriter);
begin
  // les options sont relues quand necessaire
end;

procedure TFMain.FormShow(Sender: TObject);
var
  Options: ROptions;
begin
  LoadOptions(FWriter, Options);
  DateTimePicker1.Time := Options.JourneeHeureDebut;
  DateTimePicker2.Time := Options.JourneeHeureFin;
end;

procedure TFMain.Button1Click(Sender: TObject);
var
  Options: ROptions;
begin
  Options.JourneeHeureDebut := DateTimePicker1.Time;
  Options.JourneeHeureFin := DateTimePicker2.Time;
  SaveOptions(FWriter, Options);
end;

initialization
  Plugin := nil;

end.

