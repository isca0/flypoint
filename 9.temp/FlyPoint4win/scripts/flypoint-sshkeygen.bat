@ECHO OFF

REM Make environment variable changes local to this batch file
   SETLOCAL

REM Diret�rio do bin�rio do FlyPoint
   SET FLYPOINT=%PROGRAMFILES%\FLYPOINT

REM Adiciona o FlyPoint ao PATH
   SET PATH=%FLYPOINT%\BIN;%PATH%

REM Seta a variavel HOME para funcionar o ssh
   SET HOME=%HOMEDRIVE%%HOMEPATH%

ssh-keygen -t dsa
