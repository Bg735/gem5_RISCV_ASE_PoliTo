@echo off
setlocal

REM Nome del container
set "CONTAINER_NAME=gem5_polito"

REM Comando da eseguire all'interno del container
set COMMAND=/bin/bash -c "cd ~; exec /bin/bash"


REM Controlla se il container esiste
set "EXISTS="
for /f "delims=" %%i in ('docker ps -aq --filter "name=%CONTAINER_NAME%"') do set "EXISTS=%%i"

if not defined EXISTS (
    echo Il container "%CONTAINER_NAME%" non esiste.
    echo Premi Enter per chiudere...
    pause >nul
    goto :eof
)

REM Controlla se il container è in esecuzione
set "RUNNING="
for /f "delims=" %%i in ('docker ps -q --filter "name=%CONTAINER_NAME%"') do set "RUNNING=%%i"

if not defined RUNNING (
    docker start %CONTAINER_NAME%
)

REM Avvia il terminale interattivo; alla chiusura, stoppa il container
start cmd /c "docker exec -it %CONTAINER_NAME% %COMMAND% & docker stop %CONTAINER_NAME%"

endlocal
