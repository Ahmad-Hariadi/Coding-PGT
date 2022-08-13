@echo off

set filename=java

set searchPath=%~dp0

set foundFilePath=

FOR /R "%searchPath%" %%a  in (%filename%) DO (
    IF EXIST "%%~fa" (
        echo "%%~fa" 
        SET foundFilePath=%%~fa
    )
)

IF EXIST "%foundFilePath%" (
    echo Ada file .java >> '%foundFilePath%'
) else (
    echo Ada file '%filename%' pada direktori '%searchPath%' 
)

pause