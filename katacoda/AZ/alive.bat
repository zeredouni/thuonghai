echo off
:test
ping -n 60 localhost
curl URLH
ping -n 1 URLH
goto test
