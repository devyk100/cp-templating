@echo off
gen.exe > in
a < in > out
slow-sol < in > correct_out
fc out correct_out
if errorlevel 1 exit
test

@REM MAKE SURE THAT the Gen generates random everytime, without taking seed