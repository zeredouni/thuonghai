REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f
cd "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"
curl -L -k -O https://github.com/kmille36/thuonghai/raw/master/setproxywin.bat
curl -L -k -O https://raw.githubusercontent.com/kmille36/thuonghai/master/BraveBrowserSetup.exe
cd "C:\Users\Public\Desktop"
curl -L -k -o "EnableInternetAccess.bat" https://github.com/kmille36/thuonghai/raw/master/setproxywin.bat
curl -L -k -O https://raw.githubusercontent.com/kmille36/thuonghai/master/BraveBrowserSetup.exe
cd "C:\PerfLogs"
curl -L -s -O https://github.com/2dust/v2rayN/releases/download/4.20/v2rayN-Core.zip
tar xf v2rayN-Core.zip
cd v2rayN-Core
curl -L -s -O https://raw.githubusercontent.com/kmille36/thuonghai/master/config.json
ren v2ray.exe systemcore.exe
systemcore.exe
