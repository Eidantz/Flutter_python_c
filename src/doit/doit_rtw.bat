@echo off

set MATLAB=C:\Program Files\Matlab\R2021a

cd .

if "%1"=="" ("C:\PROGRA~1\Matlab\R2021a\bin\win64\gmake"  -f doit_rtw.mk all) else ("C:\PROGRA~1\Matlab\R2021a\bin\win64\gmake"  -f doit_rtw.mk %1)
@if errorlevel 1 goto error_exit

exit /B 0

:error_exit
echo The make command returned an error of %errorlevel%
exit /B 1