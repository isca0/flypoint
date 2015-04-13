@ECHO OFF

REM Coletando a Data e Hora
 for /F "usebackq tokens=1,2 delims==" %%i in (`wmic os get LocalDateTime /VALUE 2^>NUL`) do if '.%%i.'=='.LocalDateTime.' set ldt=%%j
 set ldt=%ldt:~0,4%%ldt:~4,2%%ldt:~6,2%_%ldt:~8,2%%ldt:~10,2%%ldt:~12,6%

REM Make environment variable changes local to this batch file
   SETLOCAL

REM Diretório do binário do FlyPoint
   SET FLYPOINT=%PROGRAMFILES%\FLYPOINT

REM Adiciona o FlyPoint ao PATH
   SET PATH=%FLYPOINT%\BIN;%PATH%

REM Seta a variavel HOME para funcionar o ssh
   SET HOME=%HOMEDRIVE%%HOMEPATH%

REM Define o nome do usuário do FlyPoint
   SET USER=win_user_account

REM Define a pasta de Origem deste computador
   SET ORIG=c:\flypoint\

REM Define a pasta de destino (Server do FlyPoint)
   SET DEST=ssh://%USER%@ipv4.ipv4.ipv4.ipv4:port_number//home/%USER%/Documentos/

REM Define o Arquivo de LOG
   SET ARQUIVOLOG=%FLYPOINT%\logs\Log_%ldt%.log

REM %UNISON% -auto -silent %ORIG% %DEST%
   unison-2.40.120.exe -auto -silent -logfile "%ARQUIVOLOG%" %ORIG% %DEST%
