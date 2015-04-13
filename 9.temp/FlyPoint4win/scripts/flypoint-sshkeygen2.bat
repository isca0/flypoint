@ECHO OFF

REM Make environment variable changes local to this batch file
   SETLOCAL

REM Diretório do binário do FlyPoint
   SET FLYPOINT=%PROGRAMFILES%\FLYPOINT

REM Adiciona o FlyPoint ao PATH
   SET PATH=%FLYPOINT%\BIN;%PATH%

REM Seta a variavel HOME para funcionar o ssh
   SET HOME=%HOMEDRIVE%%HOMEPATH%

ssh-keygen -N "" -t dsa -f %HOME%\.ssh\flypoint
rem ssh-keygen --help

copy  %HOME%\.ssh\authorized_keys

SET ORIG=%HOME%\.ssh\flypoint.pub

SET DEST=ssh://%USER%@ip4.ipv4.ipv4.ipv4:port_number//home/%USER%/.ssh/authorized_keys

unison-2.40.120.exe -auto -silent -logfile "%ARQUIVOLOG%" %ORIG% %DEST%



pause
