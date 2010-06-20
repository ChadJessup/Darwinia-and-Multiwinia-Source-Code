; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=Multiwinia (PRELOAD)
AppVerName=Multiwinia (PRELOAD)
AppPublisher=Introversion Software Ltd
Compression=zip/5
DefaultDirName={pf}\Multiwinia
DefaultGroupName=Multiwinia
LicenseFile=..\docs\IntroversionEULA.txt
OutputBaseFilename=setup
SetupIconFile=..\targets\vs2005\darwinia.ico
ShowLanguageDialog=no
;LanguageDetectionMethod=none

[Languages]
Name: en; MessagesFile: "compiler:Default.isl"
Name: fr; MessagesFile: "compiler:Languages\French.isl"
Name: de; MessagesFile: "compiler:Languages\German.isl"
Name: it; MessagesFile: "compiler:Languages\Italian.isl"
Name: es; MessagesFile: "compiler:Languages\Spanish.isl"

[CustomMessages]
en.RepairMultiwinia=Repair Multiwinia
en.MultiwiniaWebsite=Multiwinia Website
en.SupportWebsite=Support Website
en.ManualPDF=Manual (PDF)
en.OpenMultiwiniaProfile=Open Multiwinia Profile

; Test Translations
fr.RepairMultiwinia=R�parer Multiwinia
fr.MultiwiniaWebsite=Site Internet de Multiwinia
fr.SupportWebsite=Site Internet du support technique
fr.ManualPDF=Manuel (PDF)
fr.OpenMultiwiniaProfile=Ouvrir le profil Multiwinia

it.RepairMultiwinia=Ripara Multiwinia
it.MultiwiniaWebsite=Sito Web di Multiwinia
it.SupportWebsite=Sito Web di supporto
it.ManualPDF=Manuale (PDF)
it.OpenMultiwiniaProfile=Apri il profilo di Multiwinia

de.RepairMultiwinia=Multiwinia reparieren
de.MultiwiniaWebsite=Multiwinia-Webseite
de.SupportWebsite=Support-Webseite
de.ManualPDF=Handbuch (PDF)
de.OpenMultiwiniaProfile=Multiwinia-Profil �ffnen

es.RepairMultiwinia=Reparar Multiwinia
es.MultiwiniaWebsite=Sitio Web de Multiwinia
es.SupportWebsite=Sitio Web de Ayuda
es.ManualPDF=Manual (PDF)
es.OpenMultiwiniaProfile=Abrir perfil Multiwinia

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Files]
;Source: "..\build\multiwinia.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\build\init.dat"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\build\language.dat"; DestDir: "{app}"; Flags: ignoreversion
;Source: "..\build\main.dat"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\build\menusounds.dat"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\build\sounds.dat"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\build\sounds2.dat"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\build\dbghelp.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\build\autopatch.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\build\copy_assist.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\build\version"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\build\origin"; DestDir: "{app}"; Flags: ignoreversion onlyifdoesntexist
Source: "..\build\manual.pdf"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\build\MultiwiniaSupport.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\build\MultiwiniaSupport.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\build\ProfileLocator.exe"; DestDir: "{app}"; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\Multiwinia"; Filename: "{app}\autopatch.exe"; WorkingDir: "{app}"
Name: "{group}\{cm:RepairMultiwinia}"; Filename: "{app}\autopatch.exe"; WorkingDir: "{app}"; Parameters: "--repair"
Name: "{group}\{cm:MultiwiniaWebsite}"; Filename: "http://www.multiwinia.co.uk/"
Name: "{group}\{cm:SupportWebsite}"; Filename: "http://www.multiwinia.co.uk/support"
Name: "{group}\{cm:ManualPDF}"; Filename: "{app}\manual.pdf"
Name: "{group}\{cm:OpenMultiwiniaProfile}"; Filename: "{app}\ProfileLocator.exe"; WorkingDir: "{app}"
Name: "{group}\{cm:UninstallProgram,Multiwinia}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\Multiwinia"; Filename: "{app}\autopatch.exe"; WorkingDir: "{app}"; Tasks: desktopicon

[UninstallDelete]
Type: filesandordirs; Name: "{app}\users"
Type: filesandordirs; Name: "{app}\benchmarks"
Type: filesandordirs; Name: "{app}\screenshots"
Type: files; Name: "{app}\preferences.txt"
Type: files; Name: "{app}\authkey"
Type: files; Name: "{app}\debug.txt"
Type: files; Name: "{app}\syncerror-*.txt"
Type: files; Name: "{app}\inputprefs_debug.txt"
Type: files; Name: "{app}\userprefs.txt"
Type: files; Name: "{app}\game-history.txt"
Type: files; Name: "{app}\blackbox.txt"
Type: files; Name: "{app}\dxdiag.txt"
Type: files; Name: "{app}\stdout.txt"
Type: files; Name: "{app}\autopatch_debug.txt"
Type: files; Name: "{app}\copier_stdout.txt"
Type: files; Name: "{app}\copier_debug.txt"
Type: filesandordirs; Name: "{app}\backup_*"
Type: filesandordirs; Name: "{app}\revert_*"
Type: files; Name: "{app}\CRASH.DMP"
Type: files; Name: "{app}\ERRORLOG.TXT"
Type: files; Name: "{app}\dxdiag_info.txt"
Type: files; Name: "{app}\multiwinia.zip"
Type: files; Name: "{app}\multiwinia.zip.*"