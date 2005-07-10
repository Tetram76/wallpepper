library Agenda;

uses
  UInterfacePlugIn in '..\SDK\UInterfacePlugIn.pas',
  UInterfaceDessinCalendrier in '..\SDK\UInterfaceDessinCalendrier.pas',
  UMain in 'UMain.pas' {FMain},
  UInterfacePluginCommandes in '..\SDK\UInterfacePluginCommandes.pas',
  UPlanner in 'UPlanner.pas' {FrmPlanner};

{$R *.res}

// point d'entrée du plugin
function GetPlugin2(MainProg: IMainProg): IPlugIn; stdcall;
begin
  if not Assigned(Plugin) then Plugin := TPlugin.Create(MainProg);
  Result := Plugin;
end;

exports
  GetPlugin2;

begin
end.
