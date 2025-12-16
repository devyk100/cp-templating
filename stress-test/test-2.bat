@echo off
setlocal enabledelayedexpansion
set i=1
:loop
echo %i%
gen.exe %i% > in
a < in > out
slow-sol < in > correct_out
fc out correct_out > nul
if errorlevel 1 goto :end
set /a i+=1
goto loop
:end
echo Test failed at iteration %i%
test