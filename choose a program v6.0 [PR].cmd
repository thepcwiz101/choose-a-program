:start
@echo off
cls
color 17
echo Choose a Program (or action) v6.0 [PR]
echo.
echo Specify a program or action...
set /p choice=(Notepad, Internet, Paint, Shutdown, or Restart) choose one-
if '%choice%'=='notepad' goto :notepad
if '%choice%'=='wordpad' goto :wordpad
if '%choice%'=='paint' goto :paint
if '%choice%'=='shutdown' goto :shutdown
if '%choice%'=='internet' goto :internet
if '%choice%'=='restart' goto :check

:check
cls
echo Are you sure you want to restart your computer?
set /p choice=(Yes, No) choose one-
if '%choice%'=='yes' goto :restart
if '%choice%'=='no' goto :start

:restart
cls
shutdown -r -t 0
exit

:internet
cls
set /p choice=What browser?(chrome, firefox, edge, opera, other, return)choose one-
if '%choice%'=='chrome' goto :chrome
if '%choice%'=='firefox' goto :firefox
if '%choice%'=='edge' goto :edge
if '%choice%'=='opera' goto :opera
if '%choice%'=='other' goto :other
if '%choice%'=='return' goto :start

:opera
cls
cd C:\Program Files\opera\
start launcher.exe
exit

:other
cls
echo Unable to search for less known browsers due to limitations in Command Prompt and DOS sorry.
pause
goto :internet

:edge
cls
cd C:\Program Files(x86)\Microsoft\Edge\Application
start msedge.exe
exit

:chrome
cls
start chrome.exe
exit

:firefox
cls
start firefox.exe
exit

:notepad
cls
start notepad.exe
exit

:wordpad
cls
start wordpad.exe
exit

:paint
cls
start mspaint.exe
exit

:shutdown
cls
echo are you sure you want to shutdown your pc?
set /p choice=(yes or no) choose-
if '%choice%'=='yes' goto :yes
if '%choice%'=='no' goto :no

:yes
cls
start shutdown.exe -s -t 0
exit

:no
cls
goto :start
