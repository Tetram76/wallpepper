; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Languages]
Name: fr; MessagesFile: compiler:Languages\French.isl

[Setup]
AppVersion={#GetFileVersion("G:\Programmation\MEDIA.KIT\WallPap 1.0\WPConf.dll")}
AppName=WallPepper {#SetupSetting("AppVersion")}
AppVerName=WallPepper {#SetupSetting("AppVersion")}
AppMutex=TetramCorpWallPepperMutex
AppPublisher=Tetr�m Corp
AppPublisherURL=http://www.tetram.org
AppSupportURL=mailto:dev@tetram.org
AppUpdatesURL=http://www.tetram.org
UninstallDisplayIcon={app}\WallPepper.exe
DefaultDirName={pf}\Tetr�m Corp\WallPepper
DefaultGroupName=Tetr�m Corp\WallPepper
PrivilegesRequired=poweruser
AppCopyright=Tetr�m Corp � 1997-2004
AppID={{5AED0247-C16B-4DFC-B7FD-42CCE72A4F89}
LicenseFile=G:\Programmation\MEDIA.KIT\LicenceFreeWare.rtf
WindowVisible=false
BackColor=$ffbfbf
BackColor2=clBlue
BackColorDirection=toptobottom
WizardImageBackColor=clBlack
OutputBaseFilename=WallPepper-setup-{#SetupSetting("AppVersion")}
MinVersion=4.1.1998,5.0.2195
EnableDirDoesntExistWarning=true
AllowUNCPath=false
AppendDefaultDirName=false
ShowLanguageDialog=auto
InternalCompressLevel=normal
SolidCompression=true
Compression=lzma/normal
VersionInfoVersion={#SetupSetting("AppVersion")}
VersionInfoCompany=Tetr�m Corp
VersionInfoTextVersion={#SetupSetting("AppVersion")}
WizardImageFile=G:\Programmation\MEDIA.KIT\WallPap 1.0\Setup\SetupModern23.bmp
WizardSmallImageFile=SetupModernSmall19.bmp

[Tasks]
Name: desktopicon; Description: Cr�er un raccourci sur le &bureau; GroupDescription: Raccourcis suppl�mentaires:
Name: interneticon; Description: Cr�er un raccourci vers le site de Tetr�m Corp; GroupDescription: Raccourcis suppl�mentaires:

[Files]
Source: G:\Programmation\MEDIA.KIT\LicenceFreeWare.rtf; DestDir: {app}
Source: G:\Programmation\MEDIA.KIT\WallPap 1.0\WallPepper.exe; DestDir: {app}
Source: G:\Programmation\MEDIA.KIT\WallPap 1.0\WPConf.dll; DestDir: {app}
Source: G:\Programmation\MEDIA.KIT\WallPap 1.0\unrar.dll; DestDir: {app}; Flags: ignoreversion
Source: G:\Programmation\MEDIA.KIT\WallPap 1.0\unzDll.dll; DestDir: {app}
Source: What's New.txt; DestDir: {app}; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[INI]
Filename: {app}\WallPepper.url; Section: InternetShortcut; Key: URL; String: http://www.tetram.org; Tasks: interneticon

[Icons]
Name: {group}\WallPepper; Filename: {app}\WallPepper.exe; IconIndex: 0
Name: {group}\WallPepper on the Web; Filename: {app}\WallPepper.url; Tasks: interneticon
Name: {group}\D�sinstaller WallPepper; Filename: {uninstallexe}
Name: {userdesktop}\WallPepper; Filename: {app}\WallPepper.exe; Tasks: desktopicon; IconIndex: 0

[Run]
Filename: {app}\WallPepper.exe; Description: Lancer WallPepper; Flags: nowait postinstall skipifsilent
Filename: {app}\What's New.txt; Flags: nowait shellexec skipifdoesntexist postinstall skipifsilent

[UninstallDelete]
Type: files; Name: {app}\WallPepper.url
Type: files; Name: {app}\WallPepper.ini
Type: files; Name: {app}\WallPepper.except
Type: files; Name: {app}\WallPepper.log

[LangOptions]
LanguageName=French
LanguageID=$040C

[_ISTool]
UseAbsolutePaths=false

[Dirs]
Name: {app}\Plugins; Flags: uninsalwaysuninstall

[CustomMessages]
CustomFormCaption=WallPepper est d�j� install�
CustomFormDescription=Le programme d'installation a d�tect� que WallPepper est d�j� install� sur cet ordinateur.
UninstallRegKey=SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{5AED0247-C16B-4DFC-B7FD-42CCE72A4F89}_is1

[Code]
  var
    CanUpdate, IsUpdate: Boolean;
    Label2: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;

  procedure CustomForm_Activate(Page: TWizardPage);
  begin
  end;

  function CustomForm_ShouldSkipPage(Page: TWizardPage): Boolean;
  begin
    Result := False;
  end;

  function CustomForm_BackButtonClick(Page: TWizardPage): Boolean;
  begin
    Result := True;
  end;

  function CustomForm_NextButtonClick(Page: TWizardPage): Boolean;
  begin
    Result := True;
    IsUpdate := RadioButton2.Checked;
  end;

  procedure CustomForm_CancelButtonClick(Page: TWizardPage; var Cancel, Confirm: Boolean);
  begin
  end;

  function CustomForm_CreatePage(PreviousPageId: Integer): Integer;
  var
    Page: TWizardPage;
  begin
    Page := CreateCustomPage(
      PreviousPageId,
      ExpandConstant('{cm:CustomFormCaption}'),
      ExpandConstant('{cm:CustomFormDescription}')
    );

    { Label2 }
    Label2 := TLabel.Create(Page);
    with Label2 do
    begin
      Parent := Page.Surface;
      Left := ScaleX(24);
      Top := ScaleY(40);
      Width := ScaleX(366);
      Height := ScaleY(58);
      AutoSize := False;
      Caption := 'Selectionnez l''action que vous voulez effectuer et cliquer sur Suivant pour continuer.';
      WordWrap := True;
    end;

    { RadioButton1 }
    RadioButton1 := TRadioButton.Create(Page);
    with RadioButton1 do
    begin
      Parent := Page.Surface;
      Left := ScaleX(120);
      Top := ScaleY(136);
      Width := ScaleX(113);
      Height := ScaleY(17);
      Caption := 'Installer de nouveau';
      TabOrder := 0;
    end;

    { RadioButton2 }
    RadioButton2 := TRadioButton.Create(Page);
    with RadioButton2 do
    begin
      Parent := Page.Surface;
      Left := ScaleX(120);
      Top := ScaleY(112);
      Width := ScaleX(113);
      Height := ScaleY(17);
      Caption := 'Mettre � jour';
      Checked := True;
      TabOrder := 1;
      TabStop := True;
    end;


    with Page do
    begin
      OnActivate := @CustomForm_Activate;
      OnNextButtonClick := @CustomForm_NextButtonClick;
    end;

    Result := Page.ID;
  end;

  procedure InitializeWizard();
  var
    CurVersion: string;
  begin
    IsUpdate := False;
    CanUpdate := RegQueryStringValue(HKLM, ExpandConstant('{cm:UninstallRegKey}'), 'DisplayVersion', CurVersion) and (CurVersion <> '');
    if CanUpdate then
      CustomForm_CreatePage(wpLicense);
  end;

  function ShouldSkipPage(PageID: Integer): Boolean;
  begin
    Result := ((PageID = wpSelectDir) or (PageID = wpSelectProgramGroup)) and CanUpdate and IsUpdate;
  end;
