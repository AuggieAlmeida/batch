@echo off
title trabalho 001
mode 80, 30
color 0e
:inicio
cls
echo.
echo =================================
echo   S E R V I Ç O S  D E  R E D E
echo =================================
echo  [T]estar Conexao Rede
echo  [O]btem IP da Maquina
echo  [I]nternet
echo  [R]etornar ao Menu
echo =================================
set /p op=Escolha uma opcao: 
if %op% == t (goto:teste)
if %op% == o (goto:ip)
if %op% == i (goto:web)
if %op% == r (call menu.bat) else (
	echo.
	echo =================================
	echo    O P C A O   I N V A L I D A
	echo =================================
	pause > nul
	goto inicio)


:web
    set /p site=Digite o endereco da pagina:
    start %site%
    goto inicio

:teste
    set /p teste=Digite o IP da maquina ou endereco da pagina:
    ping %teste% -t
    goto inicio

:ip
    ipconfig | findstr IPv4
    pause
    goto inicio 