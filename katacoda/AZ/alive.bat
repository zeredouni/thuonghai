echo off
:test
ping -n 120 localhost
curl URLH
ping -n 1 URLH
goto test
