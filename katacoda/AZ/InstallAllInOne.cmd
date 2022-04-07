@ECHO OFF
@cls
Color 3f
mode con:cols=69 lines=7
@echo    //////////////////////////////////////////////////////////////
@echo    /                                                            /
@echo    /                       Please wait...                       /
@echo    /                  Dont close this window                    /
@echo    /                                                            /
@echo    //////////////////////////////////////////////////////////////
@echo off
start /wait BraveBrowserSetup.exe 7z2107-x64_silent.exe
start /wait Internet.Download.Manager.6.40.8.exe
start /wait MyLanViewer-setup_silent.exe
start /wait npp.8.3.3.Installer.x64_silent.exe
start /wait peazip-8.3.0.WIN64_silent.exe
start /wait PowerISO.exe
start /wait qbittorrent_4.4.2_x64_setup_silent.exe
start /wait vlc-3.0.16-win64_silent.exe
start /wait WinRAR.6.02.en.Silent.Install.exe
start /wait MEGAsyncSetup64_silent.exe
start /wait BraveBrowserSetup.exe
