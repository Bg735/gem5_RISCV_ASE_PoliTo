@echo off
REM Nome del file finale
set OUTPUT=gem5_polito_windows.tar

REM Cancella eventuale file precedente
if exist %OUTPUT% del %OUTPUT%

REM Unisce tutte le parti ordinate in un unico file
copy /b parte_*.tar %OUTPUT%

docker rm -f gem5_polito 2>nul
docker load -i gem5_polito_windows.tar
docker run --name gem5_polito -it -v /run/desktop/mnt/host/wslg/.X11-unix:/tmp/.X11-unix -v /run/desktop/mnt/host/wslg:/mnt/wslg -e DISPLAY=:0 -e WAYLAND_DISPLAY=wayland-0 -e XDG_RUNTIME_DIR=/mnt/wslg/runtime-dir -e PULSE_SERVER=/mnt/wslg/PulseServer gem5_polito:windows