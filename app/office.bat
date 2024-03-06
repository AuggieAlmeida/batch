@echo off
title trabalho 001
mode 80, 30
color 0e
:inicio
cls
echo.
echo =================================
echo     P A C O T E   O F F I C E
echo =================================
echo  [W]ord
echo  [E]xcel
echo  [P]owerPoint
echo  [A]ccess
echo  [R]etornar ao Menu
echo =================================
set /p op=Escolha uma opcao: 
if %op% == w (goto:word)
if %op% == e (goto:excel)
if %op% == p (goto:power)
if %op% == a (goto:access)
if %op% == r (call menu.bat) else (
	echo.
	echo =================================
	echo    O P C A O   I N V A L I D A
	echo =================================
	pause > nul
	goto inicio)

:word
    start winword.exe
    goto inicio

:excel
    start excel.exe
    goto inicio

:power
    start powerpnt.exe
    goto inicio

:access
    start msaccess.exe
    goto inicio
