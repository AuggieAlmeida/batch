@echo off
title trabalho 001
mode 80, 30
color 0e
:inicio
cls
echo.
echo =================================
echo      A P L I C A T I V O S
echo =================================
echo  [C]alculadora
echo  [P]aint
echo  [PC] Painel de Controle
echo  [W]indows Explorer
echo  [B]loco de Notas
echo  [T]eclado Virtual
echo  [E]xaminar Arquivos
echo  [R]etornar ao Menu
echo =================================
set /p op=Escolha uma opcao: 
if %op% == c (goto:calc)
if %op% == p (goto:paint)
if %op% == pc (goto:painel)
if %op% == w (goto:explorer)
if %op% == b (goto:bloco)
if %op% == t (goto:teclado)
if %op% == e (goto:examinar)
if %op% == r (call menu.bat) else (
	echo.
	echo =================================
	echo    O P C A O   I N V A L I D A
	echo =================================
	pause > nul
	goto inicio)

:calc
     start calc.exe
     goto inicio

:paint
    start mspaint.exe
    goto inicio

:painel
    start Control.exe
    goto inicio

:explorer
    start explorer.exe
    goto inicio

:bloco
    start notepad.exe
    goto inicio

:teclado
    start osk.exe
    goto inicio

:examinar
    set /p exam=Escolha uma unidade:
    chkdsk %exam%
    pause
    goto inicio