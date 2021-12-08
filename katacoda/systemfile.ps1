[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
cd C:\Windows\System32
iwr https://raw.githubusercontent.com/kmille36/thuonghai/master/curl.exe -OutFile curl.exe
iwr https://raw.githubusercontent.com/kmille36/thuonghai/master/tar.exe -OutFile tar.exe
iwr https://raw.githubusercontent.com/kmille36/thuonghai/master/libiconv-2.dll -OutFile libiconv-2.dll
iwr https://raw.githubusercontent.com/kmille36/thuonghai/master/libintl-2.dll -OutFile libintl-2.dll
