#define MyAppName "SharkWrite"
#define MyAppVersion "3"
#define MyAppPublisher "Sharkbyteprojects"
#define MyAppURL "https://sharkbyteprojects.github.io/SharkWrite/"
#define MyAppExeName "start.bat"

[Setup]
AppId={{31159ACE-4823-4A40-AA2C-51B23E8C07E6}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=.\SharkWrite\LICENSE
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=.
OutputBaseFilename=SharkWrite installer
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "ifstart"; Description: "StartMenu"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: ".\SharkWrite\start.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\SharkWrite\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: ifstart
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: shellexec postinstall skipifsilent

