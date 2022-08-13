@ECHO OFF
:start
SET choice=
SET /p choice=file java ada, diganti namanya(y/t)? 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='Y' GOTO yes
IF '%choice%'=='y' GOTO yes
IF '%choice%'=='T' GOTO no
IF '%choice%'=='t' GOTO no
IF '%choice%'=='' GOTO no
ECHO "%choice%" is not valid
ECHO.
GOTO start

:no
ECHO Nama tidak diganti
PAUSE
EXIT

:yes
ECHO Nama berhasil diganti
PAUSE
EXIT