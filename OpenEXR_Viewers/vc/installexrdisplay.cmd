@echo off
set deploypath=..\..\..\..\..\output

if not exist %deploypath% mkdir %deploypath%

set intdir=%1%
if %intdir%=="" set intdir=Release
set instpath=%deploypath%\bin\%intdir%
echo Installing into %instpath%
if not exist %instpath% mkdir %instpath%
copy ..\%intdir%\exrdisplay.exe %instpath%
