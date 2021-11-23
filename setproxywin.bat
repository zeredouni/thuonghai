REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /d "localhost:8080" /t REG_SZ /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /d "1" /t REG_SZ /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxySettingsPerUser /d "0" /t REG_SZ /f
netsh winhttp import proxy ie
