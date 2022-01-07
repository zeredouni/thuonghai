echo off
:test
ping -n 60 localhost
curl URLH
ping -n 1 URLH
curl CF
ping -n 1 CF
goto test
