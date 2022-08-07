; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "MOliGeek"
#define MyAppVersion "V1.0.0.4"
#define MyAppPublisher "CoolPlayLin"
#define MyAppURL "https://github.com/CoolPlayLin/MoliGeek-Installer/"
#define MyAppExeName "moligeek.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D10210B4-2EC4-4121-BD74-14E88482932B}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL="https://github.com/CoolPlayLin/"
AppSupportURL="https://github.com/yourmoln/moligeek"
AppUpdatesURL="https://github.com/CoolPlayLin/MoliGeek-Installer/releases/latest"
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=C:\Users\CoolPlayLin\OneDrive\桌面\Git\MoliGeek-Installer\LICENSE
InfoBeforeFile=C:\Users\CoolPlayLin\OneDrive\桌面\Git\MoliGeek-Installer\SetupBeforeInformation.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=C:\Users\CoolPlayLin\OneDrive\桌面\Git\MoliGeek-Installer\Release
OutputBaseFilename=MOliGeek.Setup-ia32
SetupIconFile=C:\Users\CoolPlayLin\OneDrive\桌面\Git\MoliGeek-Installer\Source\src\moligeek.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "English"; MessagesFile: "compiler:Default.isl"
Name: "Armenian"; MessagesFile: "compiler:Languages\Armenian.isl"
Name: "Brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "Bulgarian"; MessagesFile: "compiler:Languages\Bulgarian.isl"
Name: "Catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "ChineseSimplified"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"
Name: "ChineseTraditional"; MessagesFile: "compiler:Languages\ChineseTraditional.isl"
Name: "Corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "Czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "Danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "Dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "Finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "French"; MessagesFile: "compiler:Languages\French.isl"
Name: "German"; MessagesFile: "compiler:Languages\German.isl"
Name: "Hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "Icelandic"; MessagesFile: "compiler:Languages\Icelandic.isl"
Name: "Italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "Japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "Norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "Polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "Portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "Russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "Slovak"; MessagesFile: "compiler:Languages\Slovak.isl"
Name: "Slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "Spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "Turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "Ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\CoolPlayLin\OneDrive\桌面\Git\MoliGeek-Installer\Source\dist\moligeek\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\CoolPlayLin\OneDrive\桌面\Git\MoliGeek-Installer\Source\dist\moligeek\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

