;InnoSetupVersion=5.5.7 (Unicode)

[Setup]
AppName=VapourSynth R45
AppVerName=VapourSynth R45
AppId=VapourSynth
AppVersion=R45
AppPublisher=Fredrik Mellbin
AppPublisherURL=http://www.vapoursynth.com/
AppSupportURL=http://www.vapoursynth.com/
AppUpdatesURL=http://www.vapoursynth.com/
DefaultDirName=C:\Prog\VapourSynth
DefaultGroupName=VapourSynth
OutputBaseFilename=VapourSynth-R45
Compression=lzma2
ArchitecturesAllowed=x86 x64
ArchitecturesInstallIn64BitMode=x64
DisableDirPage=no
SetupIconFile=1.ico
DisableProgramGroupPage=auto
AllowNoIcons=yes
;WizardImageFile=embedded\WizardImage0.bmp
;WizardSmallImageFile=embedded\WizardSmallImage0.bmp

[Registry]
Root: "HKLM64"; Subkey: "SOFTWARE\VapourSynth"; ValueType: String; ValueName: "Version"; ValueData: "R45"; Flags: uninsdeletevalue uninsdeletekeyifempty; MinVersion: 0.0,6.0
Root: "HKLM64"; Subkey: "SOFTWARE\VapourSynth"; ValueType: String; ValueName: "Path"; ValueData: "{app}"; Flags: uninsdeletevalue uninsdeletekeyifempty; MinVersion: 0.0,6.0
Root: "HKLM64"; Subkey: "SOFTWARE\VapourSynth"; ValueType: String; ValueName: "CorePlugins"; ValueData: "{app}\core64\plugins"; Flags: uninsdeletevalue uninsdeletekeyifempty; MinVersion: 0.0,6.0
Root: "HKLM64"; Subkey: "SOFTWARE\VapourSynth"; ValueType: String; ValueName: "Plugins"; ValueData: "{app}\plugins64"; Flags: uninsdeletevalue uninsdeletekeyifempty; MinVersion: 0.0,6.0
Root: "HKLM64"; Subkey: "SOFTWARE\VapourSynth"; ValueType: String; ValueName: "VapourSynthDLL"; ValueData: "{app}\core64\vapoursynth.dll"; Flags: uninsdeletevalue uninsdeletekeyifempty; MinVersion: 0.0,6.0
Root: "HKLM64"; Subkey: "SOFTWARE\VapourSynth"; ValueType: String; ValueName: "VSScriptDLL"; ValueData: "{app}\core64\vsscript.dll"; Flags: uninsdeletevalue uninsdeletekeyifempty; MinVersion: 0.0,6.0
Root: "HKLM64"; Subkey: "SOFTWARE\VapourSynth"; ValueType: String; ValueName: "PythonPath"; ValueData: "{app}\core64\"; Flags: uninsdeletevalue uninsdeletekeyifempty; MinVersion: 0.0,6.0
Root: "HKLM64"; Subkey: "SOFTWARE\Classes\CLSID\{{58F74CA0-BD0E-4664-A49B-8D10E6F0C131}"; ValueType: String; ValueData: "VapourSynth"; Flags: uninsdeletevalue uninsdeletekeyifempty; MinVersion: 0.0,6.0
Root: "HKLM64"; Subkey: "SOFTWARE\Classes\CLSID\{{58F74CA0-BD0E-4664-A49B-8D10E6F0C131}\InProcServer32"; ValueType: String; ValueData: "{app}\core64\vsvfw.dll"; Flags: uninsdeletevalue uninsdeletekeyifempty; MinVersion: 0.0,6.0
Root: "HKLM64"; Subkey: "SOFTWARE\Classes\CLSID\{{58F74CA0-BD0E-4664-A49B-8D10E6F0C131}\InProcServer32"; ValueType: String; ValueName: "ThreadingModel"; ValueData: "Apartment"; Flags: uninsdeletevalue uninsdeletekeyifempty; MinVersion: 0.0,6.0
Root: "HKLM64"; Subkey: "SOFTWARE\Classes\Media Type\Extensions\.vpy"; ValueType: String; Flags: uninsdeletevalue uninsdeletekeyifempty; MinVersion: 0.0,6.0
Root: "HKLM64"; Subkey: "SOFTWARE\Classes\Media Type\Extensions\.vpy"; ValueType: String; ValueName: "Source Filter"; ValueData: "{{D3588AB0-0781-11CE-B03A-0020AF0BA770}"; Flags: uninsdeletevalue uninsdeletekeyifempty; MinVersion: 0.0,6.0
Root: "HKLM64"; Subkey: "SOFTWARE\Classes\.vpy"; ValueType: String; ValueData: "vpyfile"; Flags: uninsdeletevalue uninsdeletekeyifempty; MinVersion: 0.0,6.0
Root: "HKLM64"; Subkey: "SOFTWARE\Classes\vpyfile"; ValueType: String; ValueData: "VapourSynth Python Script"; Flags: uninsdeletevalue uninsdeletekeyifempty; MinVersion: 0.0,6.0
Root: "HKLM64"; Subkey: "SOFTWARE\Classes\vpyfile\DefaultIcon"; ValueType: String; ValueData: "{app}\core64\vsvfw.dll,0"; Flags: uninsdeletevalue uninsdeletekeyifempty; MinVersion: 0.0,6.0
Root: "HKLM64"; Subkey: "SOFTWARE\Classes\AVIFile\Extensions\VPY"; ValueType: String; ValueData: "{{58F74CA0-BD0E-4664-A49B-8D10E6F0C131}"; Flags: uninsdeletevalue uninsdeletekeyifempty; MinVersion: 0.0,6.0

[Run]
Filename: "{app}\pfm-191-vapoursynth-win.exe"; Parameters: "install"; Components: pismo; MinVersion: 0.0,6.0; 
;Filename: "{code:GetPythonExecutableAny}"; Parameters: """{app}\vsrepo\vsrepo.py"" update"; Components: vsrepo; MinVersion: 0.0,6.0; 

[Icons]
Name: "{group}\VapourSynth Website"; Filename: "http://www.vapoursynth.com/"; MinVersion: 0.0,6.0
Name: "{group}\Documentation (Online)"; Filename: "http://www.vapoursynth.com/doc/"; MinVersion: 0.0,6.0
Name: "{group}\Global Autoload Directory (64bit)"; Filename: "{app}\vapoursynth64\plugins"

[Components]
Name: "pismo"; Description: "Pismo PFM Runtime (required for AVFS)"; Types: full; MinVersion: 0.0,6.0
Name: "vsruntimes"; Description: "Visual Studio Runtimes (2013 & 2017)"; Types: full; MinVersion: 0.0,6.0

[UninstallDelete]
Type: files; Name: "{app}\core32\vapoursynth.dll";  
Type: dirifempty; Name: "{app}\core32\";  
Type: files; Name: "{app}\core64\";  
Type: dirifempty; Name: "{app}\core64\";  

[Types]
Name: "full"; Description: "Full installation"; MinVersion: 0.0,6.0; 

[CustomMessages]
en.NameAndVersion=%1 version %2
en.AdditionalIcons=Additional shortcuts:
en.CreateDesktopIcon=Create a &desktop shortcut
en.CreateQuickLaunchIcon=Create a &Quick Launch shortcut
en.ProgramOnTheWeb=%1 on the Web
en.UninstallProgram=Uninstall %1
en.LaunchProgram=Launch %1
en.AssocFileExtension=&Associate %1 with the %2 file extension
en.AssocingFileExtension=Associating %1 with the %2 file extension...
en.AutoStartProgramGroupDescription=Startup:
en.AutoStartProgram=Automatically start %1
en.AddonHostProgramNotFound=%1 could not be located in the folder you selected.%n%nDo you want to continue anyway?
DependenciesDir=MyProgramDependencies
en.lcid=1033
en.depdownload_msg=The following applications are required before setup can continue:%n%n%1%nDownload and install now?
en.depdownload_memo_title=Download dependencies
en.depinstall_memo_title=Install dependencies
en.depinstall_title=Installing dependencies
en.depinstall_description=Please wait while Setup installs dependencies on your computer.
en.depinstall_status=Installing %1...
en.depinstall_missing=%1 must be installed before setup can continue. Please install %1 and run Setup again.
en.depinstall_error=An error occured while installing the dependencies. Please restart the computer and run the setup again or install the following dependencies manually:%n
vcredist2013_title=Visual C++ 2013 Redistributable
vcredist2013_title_x64=Visual C++ 2013 64-Bit Redistributable
vcredist2013_size=6.2 MB
vcredist2013_size_x64=6.9 MB
vcredist2017_title=Visual C++ 2017 Redistributable
vcredist2017_title_x64=Visual C++ 2017 64-Bit Redistributable
vcredist2017_size=13.9 MB
vcredist2017_size_x64=14.5 MB

[Languages]
; These files are stubs
; To achieve better results after recompilation, use the real language files
Name: "en"; MessagesFile: "embedded\en.isl"; 

[Files]
Source: "{app}\*"; DestDir: "{app}"; Flags: ignoreversion
