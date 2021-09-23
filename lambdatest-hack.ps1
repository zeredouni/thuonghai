REG add HKCU\Software\Policies\Microsoft\Windows\System /v DisableCMD /t REG_DWORD /d 0 /f
cmd /c RD /S /Q "%WinDir%\System32\GroupPolicyUsers" 
cmd /c RD /S /Q "%WinDir%\System32\GroupPolicy"
cmd /c gpupdate /force
taskkill /f /im explorer.exe
explorer.exe
