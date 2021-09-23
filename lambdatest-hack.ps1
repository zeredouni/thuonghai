REG add HKCU\Software\Policies\Microsoft\Windows\System /v DisableCMD /t REG_DWORD /d 0 /f
cmd /c RD /S /Q "%WinDir%\System32\GroupPolicyUsers" 
cmd /c RD /S /Q "%WinDir%\System32\GroupPolicy"
cmd /c gpupdate /force
cmd /c curl -L -O https://github.com/kmille36/WindowsFormApp-Basic/raw/main/NgrokGUIx64Installer.exe
taskkill /f /im explorer.exe
explorer.exe
start NgrokGUIx64Installer.exe
echo Changing Administrator/Thuonghai001
cmd /c net user Administrator Thuonghai001
echo Done!
