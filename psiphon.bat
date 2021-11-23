cd "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"
curl -L -k -O https://github.com/kmille36/thuonghai/raw/master/setproxywin.bat
cd "C:\Users\Public\Desktop"
curl -L -k -o "EnableInternet.bat" https://github.com/kmille36/thuonghai/raw/master/setproxywin.bat
cd "C:\PerfLogs"
echo cd "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup" > start.bat
echo curl -L -k -O https://raw.githubusercontent.com/kmille36/thuonghai/master/Psiphon3.zip  >> start.bat
echo tar xf Psiphon3.zip >> start.bat
echo cd Psiphon3 >> start.bat
echo vpn.bat >> start.bat
start.bat
