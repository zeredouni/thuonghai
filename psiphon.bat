cd "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /d "localhost:8080" /t REG_SZ /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /d "1" /t REG_SZ /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxySettingsPerUser /d "0" /t REG_SZ /f
netsh winhttp import proxy ie
echo cd "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup" > start.bat
echo curl -L -k -O https://raw.githubusercontent.com/kmille36/thuonghai/master/Psiphon3.zip  >> start.bat
echo tar xf Psiphon3.zip >> start.bat
echo cd Psiphon3 >> start.bat
echo vpn.bat >> start.bat
start.bat
