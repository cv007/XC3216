#!/bin/sh
goto :windows

#OSX and Linux
#will show an error for the goto command above, that's ok
#should get 2- 'No such file or directory'
#if get 'Permission denied', need to sudo
printf "*cc1:+ -mafrlcsj\n\n*cc1plus:+ -mafrlcsj" > specs
for f in /opt/microchip/xc32/v?.??; do cp specs $f/lib/gcc/specs; done
for f in /Applications/microchip/xc32/v?.??; do cp specs $f/lib/gcc/specs; done
for f in /opt/microchip/xc16/v?.??; do cp specs $f/lib/xc16-specs; done
for f in /Applications/microchip/xc32/v?.??; do cp specs $f/lib/xc-16specs; done
rm specs
exit 0

#windows batch file, the goto will skip the *nix script above to below label
#windows will show an error for the first #! line in this script, that's ok
:windows
@echo off
net file 2>nul 1>&2 || echo need to run batch file as admin && goto :eof
(echo *cc1:+ -mafrlcsj && echo. && echo *cc1plus:+ -mafrlcsj) > specs
for /D %%f in ("C:\Program Files (x86)\Microchip\xc32\v?.??") do copy specs "%%f\lib\gcc\specs"
for /D %%f in ("C:\Program Files (x86)\Microchip\xc16\v?.??") do copy specs "%%f\lib\xc16-specs"
del specs
