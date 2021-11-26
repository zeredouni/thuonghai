REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f
cd "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"
curl -L -k -O https://github.com/kmille36/thuonghai/raw/master/setproxywin.bat
curl -L -k -O https://raw.githubusercontent.com/kmille36/thuonghai/master/BraveBrowserSetup.exe
cd "C:\Users\Public\Desktop"
curl -L -k -o "EnableInternetAccess.bat" https://github.com/kmille36/thuonghai/raw/master/setproxywin.bat
curl -L -k -O https://raw.githubusercontent.com/kmille36/thuonghai/master/BraveBrowserSetup.exe
cd "C:\PerfLogs"
curl -L -k -O https://raw.githubusercontent.com/thuonghaivn/Developer/main/plink.exe
echo y | plink.exe hai@20.205.11.115 -pw 12341234 -P 443 -2 -4 -C -D 127.0.0.1:8080 -T while true; do echo running; sleep 30s; done 



#echo cd "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup" > start.bat
#echo curl -L -k -O https://raw.githubusercontent.com/kmille36/thuonghai/master/Psiphon3.zip  >> start.bat
#echo tar xf Psiphon3.zip >> start.bat
#echo cd Psiphon3 >> start.bat
#echo vpn.bat >> start.bat
#start.bat
