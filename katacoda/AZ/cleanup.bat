@echo off
:checklimit
call wmic /locale:ms_409 service where (name="nlsvc") get state /value | findstr State=Running
if %ErrorLevel% EQU 0 (
    echo Running
    exit
) else (
    @echo off
    cd "C:\PerfLogs"
    REM curl -L -s -k -O https://raw.githubusercontent.com/kmille36/thuonghai/master/katacoda/AZ/netlimiter.exe
    ping -n 1 localhost
    REM netlimiter.exe /exenoui /qn 
    REM del /f "C:\Users\Public\Desktop\NetLimiter 4 (x64).lnk"   
    rd /s /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Proxifier"
    rd /s /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\NetLimiter 4"
    REM net start nlsvc
    REM net stop nlsvc
    REM cd C:\ProgramData\Locktime\NetLimiter\4
    REM curl -L -s -k -O https://raw.githubusercontent.com/kmille36/thuonghai/master/katacoda/AZ/nl_settings.xml
    REM net start nlsvc
    REMcacls "C:\Program Files\Locktime Software\NetLimiter 4" /e /p azureuser:n 
    REM attrib +h "C:\Program Files\Locktime Software"
)
goto checklimit
  

