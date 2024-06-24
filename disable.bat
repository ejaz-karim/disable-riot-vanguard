
if not "%1"=="admin" (
    powershell "Start-Process '%0' -Verb RunAs -ArgumentList admin"
    exit /b
)

sc config vgk start= disabled
sc stop vgk

pause
