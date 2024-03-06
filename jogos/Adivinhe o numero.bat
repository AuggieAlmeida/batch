@echo off
color 0a
mode 52,30
:inicio
cls
set /a numero=(%random% %% 50) + 1
set /a cont=5
:restart
if %cont% == 0 (goto:fim)
echo.
echo ====================================================
echo  A D V I N H E  O  N U M E R O  E N T R E  1  E  50
echo ====================================================
echo   T E N T A T I V A S   R E S T A N T E S: %cont%
echo ====================================================
echo.
set /p resp=Digite o numero:
echo.
if %resp% LSS 1 (goto:erro)
if %resp% GTR 50 (goto:erro)
if %resp% LSS %numero% (goto:menor)
if %resp% GTR %numero% (goto:maior)
if %resp% == %numero% (goto:acerto)

:erro
echo ====================================================
echo      D I G I T E   A P E N A S   N U M E R O S
echo 	          E N T R E   1   E   50
echo ====================================================
pause > nul
cls
goto:restart

:menor
echo ====================================================
echo  V O C E  E R R O U - T E N T E  U M  N U M E R O
echo  	              M A I O R
echo ====================================================
set /a cont = %cont% - 1
pause > nul
cls
goto:restart

:maior
echo ====================================================
echo  V O C E  E R R O U - T E N T E  U M  N U M E R O
echo  	                 M E N O R
echo ====================================================
set /a cont = %cont% - 1
pause > nul
cls
goto:restart

:acerto
echo ====================================================
echo    P A R A B E N S  V O C E  A C E R T O U  !!!
echo ====================================================
echo   O  N U M E R O  S O R T E A D O  F O I: %numero%
echo ====================================================
pause > nul
exit

:fim
echo ====================================================
echo            N A O  F O I  D E S S A  V E Z :(
echo                F I M  D E  J O G O !!!
echo     O  N U M E R O  S O R T E A D O  F O I: %numero%
echo        B O A  S O R T E  N A  P R O X I M A!
echo ====================================================
set /p jogo=D E S E J A  J O G A R  N O V A M E N T E? [S/N]
if /I %jogo% == S (goto:inicio) else(exit)

pause > nul
