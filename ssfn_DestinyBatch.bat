@echo off
title Perry and MrAdhit's Destiny Batch
cls
echo Select Launcher
echo (1) Galactic Tools
echo (2) Arcade
echo (3) CB Launcher
choice /c 123 /n /m ""
set launcher=%ERRORLEVEL%
cls
echo Starting...
timeout 2 /nobreak > nul
%SystemRoot%\System32\Wbem\WMIC PROCESS where name="steam.exe" delete
cls
cd "C:\Users\kiosk\AppData\Local\NVIDIA Corporation"
ren "GfnRuntimeSdk" "GTISGUD"
cls
IF exist "E:\msqrd" set path=E
IF exist "F:\msqrd" set path=F
IF exist "G:\msqrd" set path=G
IF exist "H:\msqrd" set path=H
IF exist "D:\msqrd" set path=D
cls
echo Starting Steam...
%path%:
cd %path%:\msqrd\temp\_temp_*\programfilesx86\steam
ren GfnRuntimeSdk.dll GfnRuntimeSdk.dll.old
start "" steam.exe
cls
echo Downloading ShareX...
start "" "steam.exe" steam://rungameid/400040
:lp
IF not exist "steamapps\common\ShareX\Updates\sharex.exe" goto :lp
IF exist "steamapps\common\ShareX\Updates\sharex.exe" goto :res
:res
cls
echo Starting ShareX...
cd steamapps\common\ShareX\Updates\
start "" "sharex.exe" -p
%SystemRoot%\System32\timeout 4 /nobreak > nul
:: Galactic Tools
IF %launcher% EQU 1 call sharex.exe "https://mradhit.com/GalacticToolsV3.exe"
:: Arcade
IF %launcher% EQU 2 call sharex.exe "https://picteon.dev/files/Arcade.exe"
:: CB Launcher
IF %launcher% EQU 3 call sharex.exe "https://github.com/devporter007/binarybuildscb/releases/download/1.0/CB.Launcher.exe"
cd sharex\Screenshots\20*
:lp1
cls
:: Galactic Tools
IF %launcher% EQU 1 (
echo Launching Galactic Tools
IF not exist "galactictoolsv3.exe" goto :lp1
IF %launcher% EQU 1 start "" galactictoolsv3.exe
)
:: Arcade
IF %launcher% EQU 2 (
echo Launching Arcade
IF not exist "galactictoolsv3.exe" goto :lp1
IF %launcher% EQU 2 start "" arcade.exe
)
:: CloudForce
IF %launcher% EQU 3 (
echo Launching CloudForce
IF not exist "galactictoolsv3.exe" goto :lp1
IF %launcher% EQU 3 start "" cloudforceupdater.exe
)
%SystemRoot%\System32\Wbem\WMIC PROCESS where name="ShareX.exe" delete
exit
