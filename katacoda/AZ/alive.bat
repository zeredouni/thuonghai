echo off
:test
curl URLH
ping -n 10 URLH
goto test
