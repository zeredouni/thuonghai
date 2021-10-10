#!/bin/bash
#
#Vars
trap "./exit.sh" SIGINT

vtx=$(egrep -i '^flags.*(vmx|svm)' /proc/cpuinfo | wc -l)
if [ $vtx = 0 ] ; then echo "[Error] Environment Checking Error!!! Please Reload Page!!!"&& shutdown now
fi

clear
echo Install Gdrive...
wget -O /usr/src/gdrive https://raw.githubusercontent.com/kmille36/Linux-to-Windows-with-QEMU/master/gdrive-linux-x64 >/dev/null 2>&1
chmod +x /usr/src/gdrive >/dev/null 2>&1
sudo install /usr/src/gdrive /usr/local/bin/gdrive >/dev/null 2>&1
echo Install Ngrok ...
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip >/dev/null 2>&1 && unzip -o *.zip >/dev/null 2>&1
echo Preparing Ubuntu Environment...
sudo apt-get update -y > /dev/null 2>&1
echo "Installing QEMU! Please Wait..."
sudo apt-get install -y qemu-kvm > /dev/null 2>&1
echo "You're all set !!!" > done.txt

