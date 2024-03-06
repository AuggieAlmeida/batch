@echo off
title trabalho 001
mode 80, 30
color 0e
:inicio
cls
echo.
echo =================================
echo    G E R E N C I A M E N T O
echo       D E   M A Q U I N A
echo =================================
echo  [RM] Reiniciar a Maquina
echo  [D]esligar a Maquina
echo  [H]ibernar a Maquina
echo  [R]etornar ao Menu
echo =================================
set /p op=Escolha uma opcao: 
if %op% == rm (goto:reiniciar)
if %op% == d (goto:desligar)
if %op% == h (goto:hibernar)
if %op% == r (call menu.bat) else (
	echo.
	echo =================================
	echo    O P C A O   I N V A L I D A
	echo =================================
	pause > nul
	goto inicio)

:reiniciar
    set /p t=Digite o tempo: 
    shutdown -r -t %t% -c "Seu computador sera reiniciado em %t% segs" -f
    goto inicio

:desligar
    set /p t=Digite o tempo: 
    shutdown -s -t %t% -c "Seu computador sera desligado em %t% segs" -f
    goto inicio


:hibernar
    set /p t=Digite o tempo: 
    timeout /t %t% /nobreak & shutdown /h
    goto:inicio
