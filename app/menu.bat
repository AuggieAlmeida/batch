@echo off
title trabalho 001
mode 80, 30
color 0e
:inicio
cls
echo.
echo =================================
echo    M E N U   P R I N C I P A L
echo =================================
echo  [P]acote OFFICE
echo  [S]ervicos de Rede
echo  [A]plicativos Windows
echo  [G]erenciamento Maquina
echo  [E]ncerrar Sessao
echo  [F]inalizar Programa
echo =================================
set /p op=Escolha uma opcao: 
if %op% == p (call office.bat)
if %op% == s (call rede.bat)
if %op% == a (call app.bat)
if %op% == g (call geren.bat)
if %op% == e (call login.bat)
if %op% == f (exit) else (
	echo.
	echo =================================
	echo    O P C A O   I N V A L I D A
	echo =================================
	pause > nul
	goto inicio)
