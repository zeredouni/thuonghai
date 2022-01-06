echo off
:test
ping -n 300 localhost
curl URLH
ping -n 1 URLH
goto test
