@echo off

if not "%1"=="admin" (
    powershell "Start-Process '%0' -Verb RunAs -ArgumentList admin"
    exit /b
)

sc config vgk start= disabled
sc stop vgk

sc config vgc start= disabled
sc stop vgc

reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Riot Vanguard" /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\AutorunsDisabled" /v "Riot Vanguard" /t REG_SZ /d "\"C:\Program Files\Riot Vanguard\vgtray.exe\"" /f
