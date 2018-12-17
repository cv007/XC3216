#!/bin/sh

#OSX and Linux
#should get 2- 'No such file or directory'
#if get 'Permission denied', need to run as sudo

specs="*cc1:+ -mafrlcsj\n\n*cc1plus:+ -mafrlcsj"
for f in /opt/microchip/xc32/v?.??; do echo -e $specs > $f/lib/gcc/specs; done
for f in /Applications/microchip/xc32/v?.??; do echo -e $specs > $f/lib/gcc/specs; done
for f in /opt/microchip/xc16/v?.??; echo -e $specs > $f/lib/xc16-specs; done
for f in /Applications/microchip/xc16/v?.??; do echo -e $specs > $f/lib/xc-16specs; done
exit 0

rem =============================================
rem   FOR WINDOWS, DELETE ALL THE ABOVE LINES
rem =============================================
@echo off
net file >nul 2>&1 || echo need to run batch file as admin && goto :eof
(echo *cc1:+ -mafrlcsj && echo. && echo *cc1plus:+ -mafrlcsj) > specs
for /D %%f in ("%ProgramFiles(x86)%\Microchip\xc32\v?.??") do copy specs "%%f\lib\gcc\specs"
for /D %%f in ("%ProgramFiles(x86)%\Microchip\xc16\v?.??") do copy specs "%%f\lib\xc16-specs"
rem in case you are running 32bit, or xc switches to 64bit
for /D %%f in ("%ProgramFiles%\Microchip\xc32\v?.??") do copy specs "%%f\lib\gcc\specs"
for /D %%f in ("%ProgramFiles%\Microchip\xc16\v?.??") do copy specs "%%f\lib\xc16-specs"
del specs
