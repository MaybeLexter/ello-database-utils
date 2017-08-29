; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Ello Database Utils"
#define MyAppVersion "0.1"
#define MyAppPublisher "Ello tecnologia"
#define MyAppURL "http://www.ellotecnologia.com/"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{0BC704D4-2089-40F1-A07A-8BCAEE52A99B}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableDirPage=yes
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputBaseFilename=Ello-Database-Utils
SetupIconFile=C:\dev\ello-database-utils\Icons\database.ico
Compression=lzma
SolidCompression=yes
ChangesEnvironment=yes
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Files]
Source: "C:\dev\ello-database-utils\README.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\dev\ello-database-utils\bin\gbak.exe"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "C:\dev\ello-database-utils\bin\isql.exe"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "C:\dev\ello-database-utils\bin\fbclient.dll"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "C:\dev\ello-database-utils\bin\7za.exe"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "C:\dev\ello-database-utils\gerar-backup.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\dev\ello-database-utils\restaura-ebk.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\dev\ello-database-utils\restaura-fbk.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\dev\ello-database-utils\usar_banco.py"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\dev\ello-database-utils\versao_banco.py"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\dev\ello-database-utils\firebird.msg"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\dev\ello-database-utils\Icons\database.ico"; DestDir: "{app}\Icons"; Flags: ignoreversion
Source: "C:\dev\ello-database-utils\Icons\database_fbk.ico"; DestDir: "{app}\Icons"; Flags: ignoreversion
Source: "C:\dev\ello-database-utils\Icons\ello_backup.ico"; DestDir: "{app}\Icons"; Flags: ignoreversion
Source: "C:\dev\ello-database-utils\Installers\*"; DestDir: "{app}\Installers"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Ello.AbrirISQL"; ValueType: string; ValueData: "Abrir iSQL"
Root: HKLM64; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Ello.AbrirISQL"; ValueType: string; ValueData: "Abrir iSQL"; Check: IsWin64

Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Ello.AbrirISQL\command"; Flags: uninsdeletekey; ValueType: string; ValueData: "{app}\bin\isql.exe ""%1"""
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Ello.Backup"; Flags: uninsdeletekey; ValueType: string; ValueData: "Gerar Backup"
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Ello.Backup\command"; Flags: uninsdeletekey; ValueType: string; ValueData: "{app}\gerar-backup.bat ""%1"""
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Ello.BackupEnviar"; Flags: uninsdeletekey; ValueType: string; ValueData: "Enviar Backup"

Root: HKCR; Subkey: ".fbk"; Flags: uninsdeletekey; ValueType: string; ValueData: "Ello.Firebird.Backup"
Root: HKCR; Subkey: ".ebk"; Flags: uninsdeletekey; ValueType: string; ValueData: "Ello.Database.Backup"
Root: HKCR; Subkey: ".ello"; Flags: uninsdeletekey; ValueType: string; ValueData: "Ello.Database"

Root: HKCR; Subkey: "Ello.Database"; Flags: uninsdeletekey; ValueType: string; ValueData: "Banco de Dados Ello"
Root: HKCR; Subkey: "Ello.Database\DefaultIcon"; Flags: uninsdeletekey; ValueType: string; ValueData: "{app}\Icons\database.ico"

Root: HKCR; Subkey: "Ello.Database\shell"; Flags: uninsdeletekey;
Root: HKCR; Subkey: "Ello.Database\shell\manutencao"; Flags: uninsdeletekey; ValueType: string; ValueName: "MUIVerb"; ValueData: "&Manuten��o"
Root: HKCR; Subkey: "Ello.Database\shell\manutencao"; Flags: uninsdeletekey; ValueType: string; ValueName: "SubCommands"; ValueData: "Ello.Backup;Ello.BackupEnviar;Ello.AbrirISQL"
Root: HKCR; Subkey: "Ello.Database\shell\manutencao"; Flags: uninsdeletekey; ValueType: string; ValueName: "Position"; ValueData: "Bottom"
Root: HKCR; Subkey: "Ello.Database\shell\manutencao"; Flags: uninsdeletekey; ValueType: string; ValueName: "Icon"; ValueData: "{app}\Icons\database.ico"

Root: HKCR; Subkey: "Ello.Database\shell\open"; Flags: uninsdeletekey; ValueType: string; ValueName: "Icon"; ValueData: "{app}\Icons\database.ico"
Root: HKCR; Subkey: "Ello.Database\shell\open\command"; Flags: uninsdeletekey; ValueType: string; ValueData: "{app}\bin\isql.exe ""%1"""

Root: HKCR; Subkey: "Ello.Database\shell\usarbanco"; Flags: uninsdeletekey; ValueType: string; ValueData: "&Usar este banco"
Root: HKCR; Subkey: "Ello.Database\shell\usarbanco"; Flags: uninsdeletekey; ValueType: string; ValueName: "Icon"; ValueData: "{app}\Icons\database.ico"
Root: HKCR; Subkey: "Ello.Database\shell\usarbanco\command"; Flags: uninsdeletekey; ValueType: string; ValueData: "C:\Python27\pythonw.exe ""{app}\usar_banco.py"" ""%1"""

Root: HKCR; Subkey: "Ello.Database\shell\versaobanco"; Flags: uninsdeletekey; ValueType: string; ValueData: "Vers�o do banco"
Root: HKCR; Subkey: "Ello.Database\shell\versaobanco"; Flags: uninsdeletekey; ValueType: string; ValueName: "Icon"; ValueData: "{app}\Icons\database.ico"
Root: HKCR; Subkey: "Ello.Database\shell\versaobanco\command"; Flags: uninsdeletekey; ValueType: string; ValueData: "C:\Python27\pythonw.exe ""{app}\versao_banco.py"" ""%1"""

Root: HKCR; Subkey: "Ello.Database.Backup"; Flags: uninsdeletekey; ValueType: string; ValueData: "Backup Ello"
Root: HKCR; Subkey: "Ello.Database.Backup\DefaultIcon"; Flags: uninsdeletekey; ValueType: string; ValueData: "{app}\Icons\ello_backup.ico"
Root: HKCR; Subkey: "Ello.Database.Backup\shell\restaurar"; Flags: uninsdeletekey; ValueType: string; ValueData: "&Restaurar"
Root: HKCR; Subkey: "Ello.Database.Backup\shell\restaurar"; Flags: uninsdeletekey; ValueType: string; ValueName: "Icon"; ValueData: "{app}\Icons\database.ico"
Root: HKCR; Subkey: "Ello.Database.Backup\shell\restaurar\command"; Flags: uninsdeletekey; ValueType: string; ValueData: "{app}\restaura-ebk.bat ""%1"""

Root: HKCR; Subkey: "Ello.Firebird.Backup"; Flags: uninsdeletekey; ValueType: string; ValueData: "Backup Firebird"
Root: HKCR; Subkey: "Ello.Firebird.Backup\DefaultIcon"; Flags: uninsdeletekey; ValueType: string; ValueData: "{app}\Icons\database_fbk.ico"
Root: HKCR; Subkey: "Ello.Firebird.Backup\shell\restaurar"; Flags: uninsdeletekey; ValueType: string; ValueData: "&Restaurar"
Root: HKCR; Subkey: "Ello.Firebird.Backup\shell\restaurar"; Flags: uninsdeletekey; ValueType: string; ValueName: "Icon"; ValueData: "{app}\Icons\database.ico"
Root: HKCR; Subkey: "Ello.Firebird.Backup\shell\restaurar\command"; Flags: uninsdeletekey; ValueType: string; ValueData: "{app}\restaura-fbk.bat ""%1"""

Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; ValueType: expandsz; ValueName: "Path"; ValueData: "{olddata};{app}\bin"; Check: NeedsAddPath('{app}\bin')
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; ValueType: expandsz; ValueName: "ISC_USER"; ValueData: "sysdba"
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; ValueType: expandsz; ValueName: "ISC_PASSWORD"; ValueData: "masterkey"

[Run]
Filename: "msiexec"; Parameters: "/quiet /i ""{app}\Installers\python-2.7.13.msi"""; Description: "Python 2.7.13"
Filename: "C:\Python27\Scripts\pip"; Parameters: "install ""{app}\Installers\fdb-1.6.1.tar.gz"""; Description: "fdb Library"

[Code]
function NeedsAddPath(Param: string): boolean;
var
  OrigPath: string;
  ParamExpanded: string;
begin
  //expand the setup constants like {app} from Param
  ParamExpanded := ExpandConstant(Param);
  if not RegQueryStringValue(HKEY_LOCAL_MACHINE,
    'SYSTEM\CurrentControlSet\Control\Session Manager\Environment',
    'Path', OrigPath)
  then begin
    Result := True;
    exit;
  end;
  // look for the path with leading and trailing semicolon and with or without \ ending
  // Pos() returns 0 if not found
  Result := Pos(';' + UpperCase(ParamExpanded) + ';', ';' + UpperCase(OrigPath) + ';') = 0;  
  if Result = True then
     Result := Pos(';' + UpperCase(ParamExpanded) + '\;', ';' + UpperCase(OrigPath) + ';') = 0; 
end;
