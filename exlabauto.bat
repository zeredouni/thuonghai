reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
net user Administrator /active:yes
net user Administrator Thuonghai001
tzutil /s "SE Asia Standard Time"
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
REG ADD HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\CredSSP\Parameters\ /v AllowEncryptionOracle /t REG_DWORD /d 2
certutil -urlcache -split -f https://raw.githubusercontent.com/leopkks/thuonghai/master/curl.exe
certutil -urlcache -split -f https://raw.githubusercontent.com/leopkks/thuonghai/master/7z.dll
certutil -urlcache -split -f https://raw.githubusercontent.com/leopkks/thuonghai/master/7z.exe
certutil -urlcache -split -f https://raw.githubusercontent.com/leopkks/thuonghai/master/nircmd.exe
curl -LJOk https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip
7z x ngrok-stable-windows-amd64.zip
ngrok authtoken UqkqD5EBxWPggw7xGAiQ_77M4D5kjaPNdr9wdb3m9z
start ngrok tcp --region ap 3389
cd C:\Users\Admin\Desktop
curl -LJOk https://raw.githubusercontent.com/leopkks/thuonghai/master/ChromeSetup.exe
curl -LJOk https://raw.githubusercontent.com/kmille36/thuonghai/master/ToolExtend.exe
start ChromeSetup.exe
start anti-close.bat
net start audiosrv
