echo off
:test
curl URL
ping -n 10 URL
goto test
