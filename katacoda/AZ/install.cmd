@ECHO OFF
@cls
Color 3f
@echo off
mkdir Apps
cd "C:\Users\azureuser\Desktop\Apps"
curl -k -L -O https://github.com/zeredouni/thuonghai/releases/download/AllinOne/winrar-x64-611_silent.exe
start /wait winrar-x64-611_silent.exe