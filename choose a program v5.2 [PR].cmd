:start
@echo off
cls
color 17
echo Choose a Program (or action) v5.2 [PR]
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
echo Notice: Edge is not supported and if you get an error then you have not installed to the default directory 
echo when installing your browser of choice. I cannot fix this.
echo.
echo Warning: You must use "ie" without quotes to open internet explorer as it is due to a limitation of Windows.
echo.
set /p choice=What browser?(chrome, firefox, internet explorer, opera, other, return)choose one-
if '%choice%'=='chrome' goto :chrome
if '%choice%'=='firefox' goto :firefox
if '%choice%'=='ie' goto :IE
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
timeout /NOBREAK 10
exit

:IE
cls
cd C:\Program Files\Internet Explorer\
start iexplore.exe
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
