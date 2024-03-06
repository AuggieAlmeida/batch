@echo off
color 0a
mode 52,30

set /a empate=0
set /a ganhou=0
set /a perdeu=0

:login
echo ====================================================
set /p nome=Digite seu nome:
echo ====================================================
if defined nome (goto:inicio) else (cls
goto:login)

:inicio
cls
set /a comp=(%random% %% 5) + 1

echo ====================================================
echo     B E M - V I N D O  A O  J O - K E N - P O
echo ====================================================
echo  [1] PEDRA
echo  [2] PAPEL
echo  [3] TESOURA
echo  [4] LAGARTO
echo  [5] SPOK
echo  [6] REGRAS
echo  [7] SAIR
echo ====================================================
set /p player=Digite sua jogada:
if defined player (goto:jogo) else (goto:inicio)

:jogo
if %player% LSS 1 (goto:erro)
if %player% GTR 7 (goto:erro)
if %player% == 6 (goto:regras)
if %player% == 7 (goto:sair)
if %comp% == 1 (goto:pedra)
if %comp% == 2 (goto:papel)
if %comp% == 3 (goto:tesoura)
if %comp% == 4 (goto:lagarto)
if %comp% == 5 (goto:spok)

:regras
echo ====================================================
echo                         REGRAS
echo ====================================================
echo   PEDRA GANHA DE TESOURA E LAGARTO
echo   PAPEL GANHA DE PEDRA E SPOK
echo   TESOURA GANHA DE PAPEL E LAGARTO
echo   LAGARTO GANHA DE SPOK E PAPEL
echo   SPOK GANHA DE PEDRA E TESOURA
echo ====================================================
pause > nul
goto:inicio

:pedra
if %player% == 4 (
echo ====================================================
echo  COMPUTADOR: PEDRA
echo  %nome%: LAGARTO
goto:perdeu)

if %player% == 3 (
echo ====================================================
echo  COMPUTADOR: PEDRA
echo  %nome%: TESOURA
goto:perdeu)

if %player% == 2 (
echo ====================================================
echo  COMPUTADOR: PEDRA
echo  %nome%: PAPEL
goto:ganhou)

if %player% == 5 (
echo ====================================================
echo  COMPUTADOR: PEDRA
echo  %nome%: SPOK
goto:ganhou)

if %player% == 1 (
echo ====================================================
echo  COMPUTADOR: PEDRA
echo  %nome%: PEDRA
goto:empate)

:papel
if %player% == 1 (
echo ====================================================
echo  COMPUTADOR: PAPEL
echo  %nome%: PEDRA
goto:perdeu)

if %player% == 5 (
echo ====================================================
echo  COMPUTADOR: PAPEL
echo  %nome%: SPOK
goto:perdeu)

if %player% == 4 (
echo ====================================================
echo  COMPUTADOR: PAPEL
echo  %nome%: LAGARTO
goto:ganhou)

if %player% == 3 (
echo ====================================================
echo  COMPUTADOR: PAPEL
echo  %nome%: TESOURA
goto:ganhou)

if %player% == 2 (
echo ====================================================
echo  COMPUTADOR: PAPEL
echo  %nome%: PAPEL
goto:empate)

:tesoura
if %player% == 2 (
echo ====================================================
echo  COMPUTADOR: TESOURA
echo  %nome%: PAPEL
goto:perdeu)

if %player% == 4 (
echo ====================================================
echo  COMPUTADOR: TESOURA
echo  %nome%: LAGARTO
goto:perdeu)

if %player% == 5 (
echo ====================================================
echo  COMPUTADOR: TESOURA
echo  %nome%: SPOK
goto:ganhou)

if %player% == 1 (
echo ====================================================
echo  COMPUTADOR: TESOURA
echo  %nome%: PEDRA
goto:ganhou)

if %player% == 3 (
echo ====================================================
echo  COMPUTADOR: TESOURA
echo  %nome%: TESOURA
goto:empate)

:lagarto
if %player% == 5 (
echo ====================================================
echo  COMPUTADOR: LAGARTO
echo  %nome%: SPOK
goto:perdeu)

if %player% == 2 (
echo ====================================================
echo  COMPUTADOR: LAGARTO
echo  %nome%: PAPEL
goto:perdeu)

if %player% == 3 (
echo ====================================================
echo  COMPUTADOR: LAGARTO
echo  %nome%: TESOURA
goto:ganhou)

if %player% == 1 (
echo ====================================================
echo  COMPUTADOR: LAGARTO
echo  %nome%: PEDRA
goto:ganhou)

if %player% == 4 (
echo ====================================================
echo  COMPUTADOR: LAGARTO
echo  %nome%: LAGARTO
goto:empate)

:spok
if %player% == 3 (
echo ====================================================
echo  COMPUTADOR: SPOK
echo  %nome%: TESOURA
goto:perdeu)

if %player% == 1 (
echo ====================================================
echo  COMPUTADOR: SPOK
echo  %nome%: PEDRA
goto:perdeu)

if %player% == 4 (
echo ====================================================
echo  COMPUTADOR: SPOK
echo  %nome%: LAGARTO
goto:ganhou)

if %player% == 2 (
echo ====================================================
echo  COMPUTADOR: SPOK
echo  %nome%: PAPEL
goto:ganhou)

if %player% == 5 (
echo ====================================================
echo  COMPUTADOR: SPOK
echo  %nome%: SPOK
goto:empate)

:erro
echo ====================================================
echo       D I G I T E  A P E N A S  N U M E R O S
echo             E N T R E  1  E  6  ! ! !
echo ====================================================
pause
goto:inicio

:perdeu
echo ====================================================
echo         N A O  F O I  D E S S A  V E Z :(
echo ====================================================
set /a perdeu = %perdeu% + 1
pause
goto:inicio

:ganhou
echo ====================================================
echo     P A R A B E N S  V O C E  G A N H O U ! ! !
echo ====================================================
set /a ganhou = %ganhou% + 1
pause
goto:inicio

:empate
echo ====================================================
echo                   E M P A T E ! ! !
echo ====================================================
set /a empate = %empate% + 1
pause
goto:inicio


:sair
cls
echo ====================================================
echo                  A T E  M A I S, %nome% ! ! !
echo ====================================================
echo  P L A C A R
echo  GANHOU: %ganhou%
echo  PERDEU: %perdeu%
echo  EMPATE: %empate%
echo ====================================================
pause > nul
exit