@ECHO OFF

REM Make environment variable changes local to this batch file
   SETLOCAL

REM Diretório do binário do FlyPoint
   SET FLYPOINT=%PROGRAMFILES%\FLYPOINT

REM Adiciona o FlyPoint ao PATH
   SET PATH=%FLYPOINT%\BIN;%PATH%

REM Seta a variavel HOME para funcionar o ssh
   SET HOME=%HOMEDRIVE%%HOMEPATH%

ssh-keygen -t dsa
