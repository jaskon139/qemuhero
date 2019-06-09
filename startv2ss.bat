@echo off
cls
cd D:\tool\v2ray-windows-64
echo This is a loop
curl-7.65.0-win64-mingw\bin\curl.exe https://ipv6ibmcloudone.herokuapp.com/
start kcptun-windows-amd64-20170718\client_windows_amd64.exe  -r "[2001:0:53aa:64c:2858:71c9:c93c:c5bd]:3824" -l ":7388" -mode fast2
start shadowsocks-local-win64-1.1.5\shadowsocks-local.exe -c .\ssclient.json
:start
timeout /T 360 /NOBREAK
curl-7.65.0-win64-mingw\bin\curl.exe https://ipv6ibmcloudone.herokuapp.com/
goto start
