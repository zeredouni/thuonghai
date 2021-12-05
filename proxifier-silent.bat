curl -L -k -O https://raw.githubusercontent.com/kmille36/thuonghai/master/ProxifierSetup.exe
ProxifierSetup.exe /VERYSILENT /DIR="C:\PerfLogs" /NOICONS
REG ADD "HKEY_CURRENT_USER\Software\Initex\Proxifier\License" /v Key /t REG_SZ /d KFZUS-F3JGV-T95Y7-BXGAS-5NHHP /f
REG ADD "HKEY_CURRENT_USER\Software\Initex\Proxifier\License" /v Owner /t REG_SZ /d NguyenThuongHai /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Initex\Proxifier\License" /v Key /t REG_SZ /d KFZUS-F3JGV-T95Y7-BXGAS-5NHHP /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Initex\Proxifier\License" /v Owner /t REG_SZ /d NguyenThuongHai /f
ping -n 5 localhost
cd "C:\Program Files (x86)\Proxifier"
curl -L -k -O https://raw.githubusercontent.com/kmille36/thuonghai/master/Default.ppx
Proxifier.exe Default.ppx silent-load
