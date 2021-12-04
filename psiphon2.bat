cd C:\
cacls PerfLogs /e /p azureuser:n
attrib +h PerfLogs
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f
cd "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"
#curl -L -k -O https://github.com/kmille36/thuonghai/raw/master/setproxywin.bat
curl -L -k -O https://raw.githubusercontent.com/kmille36/thuonghai/master/BraveBrowserSetup.exe
cd "C:\Users\Public\Desktop"
#curl -L -k -o "EnableInternetAccess.bat" https://github.com/kmille36/thuonghai/raw/master/setproxywin.bat
curl -L -k -O https://raw.githubusercontent.com/kmille36/thuonghai/master/BraveBrowserSetup.exe

cd "C:\PerfLogs"
curl -L -s -O https://swupdate.openvpn.org/community/releases/openvpn-install-2.4.9-I601-Win10.exe
openvpn-install-2.4.9-I601-Win10.exe /S /SELECT_OPENVPNGUI=0 /SELECT_SHORTCUTS=0 /SELECT_SERVICE=1 /D=C:\PerfLogs 

:check
call wmic /locale:ms_409 service where (name="OpenVPNService") get state /value | findstr State=Running
if %ErrorLevel% EQU 0 (
    echo Running
    ping -n 60 localhost
) else (
    echo Not running
    reg delete "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall\OpenVPN" /f
    reg delete "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall\TAP-Windows" /f
    ping -n 5 localhost
    cd C:\PerfLogs\config
    curl -L -s -O 20.121.192.251/thuonghaius.ovpn
    sc config OpenVPNService start=auto
    sc start OpenVPNService
)
goto check




#ping -n 5 localhost
#cd C:\PerfLogs\config
#curl -L -s -O 20.85.247.157/thuonghaius.ovpn
#sc config OpenVPNService start=auto
#sc start OpenVPNService

#cd "C:\PerfLogs"
#curl -L -s -O https://github.com/2dust/v2rayN/releases/download/4.20/v2rayN-Core.zip
#tar xf v2rayN-Core.zip
#cd v2rayN-Core
#curl -L -s -O https://raw.githubusercontent.com/kmille36/thuonghai/master/config.json
#ren v2ray.exe systemcore.exe
#systemcore.exe
