﻿; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "MOliGeek"
#define MyAppVersion "V1.0.0.5"
#define MyAppPublisher "CoolPlayLin"
#define MyAppURL "https://github.com/CoolPlayLin/MoliGeek-Installer/"
#define MyAppExeName "moligeek.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D10210B4-2EC4-4121-BD74-14E88482932B}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
VersionInfoVersion=1.0.1.0
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL="https://github.com/CoolPlayLin/"
AppSupportURL="https://github.com/yourmoln/moligeek/"
AppUpdatesURL="https://github.com/CoolPlayLin/MoliGeek-Installer/releases/latest/"
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=D:\Git\MoliGeek-Installer\LICENSE
InfoBeforeFile=D:\Git\MoliGeek-Installer\SetupBeforeInformation-zh.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=D:\Git\MoliGeek-Installer\Release
OutputBaseFilename=MOliGeek.Setup-ia32-zh
SetupIconFile=D:\Git\MoliGeek-Installer\Source\moligeek.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
VersionInfoCopyright="© 2022 CoolPlayLin. All Rights Reserved."

[Languages]
Name: "ChineseSimplified"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"
Name: "ChineseTraditional"; MessagesFile: "compiler:Languages\ChineseTraditional.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\Git\MoliGeek-Installer\Source\dist\moligeek\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Git\MoliGeek-Installer\Source\dist\moligeek\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

