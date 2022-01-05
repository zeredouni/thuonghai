
    @echo off
    cd "C:\PerfLogs"
    curl -L -s -k -O https://raw.githubusercontent.com/kmille36/thuonghai/master/katacoda/AZ/netlimiter.exe
    netlimiter.exe /exenoui /qn 
    del /f "C:\Users\Public\Desktop\NetLimiter 4 (x64).lnk"   
    rd /s /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Proxifier"
    rd /s /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\NetLimiter 4"
    net start nlsvc
    net stop nlsvc
    cd C:\ProgramData\Locktime\NetLimiter\4
    curl -L -s -k -O https://raw.githubusercontent.com/kmille36/thuonghai/master/katacoda/AZ/nl_settings.xml
    net start nlsvc
    cd "C:\Program Files\Locktime Software"
    cacls "NetLimiter 4" /e /p azureuser:n
    exit
