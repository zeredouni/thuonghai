cd "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"
echo curl -L -k -O https://psiphon3.com/psiphon3.exe  > start.bat
echo start psiphon3.exe >> start.bat
echo exit >> start.bat
