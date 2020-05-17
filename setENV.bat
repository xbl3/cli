@echo off
rem set system variables on teh fly
rem	thanks to https://hubot.github.com/docs/deploying/windows/
rem	mentioned via grafana

rem	[Environment]::SetEnvironmentVariable("HUBOT_ADAPTER", "Campfire", "Machine")
rem	makes hubxt... return campfire
setlocal enabledelayedexpansion


set input=%1
set output=%2
set target=%3

if not defined input (echo.Please enter an input for you want the varible to be
set /p input="VAR will be?	")
if not defined output (echo.Please enter what you want the varible to resolve to 
set /p output="VAR will equal?	")
if not defined target (set target=Machine)

goto:RUN


:quotesInputs
for %%i in (input output target) do (
	for %%I in (!%%i!) do (
		::	echo:%%i %%I !%%i! !%%I!
			set %%i="%%~I"
			)
echo:!%%i!
)

:run
::	rem	set do=[Environment]::SetEnvironmentVariable("%input%", "%output%", "Machine")

set run=[Environment]::SetEnvironmentVariable("%input%", "%output%", "%target%")


for %%i in ("%run%") do (echo:%%~i)>run.ps1

PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%cd%\run.ps1""' -Verb RunAs}"
echo WORKS

goto:eof
for %%i in ("%run%") do (
echo:%%~i
echo:	powershell "[Environment]::SetEnvironmentVariable("%input%", "%output%", "%target%")"
::	call powershell "[Environment]::SetEnvironmentVariable("%input%", "%output%", "%target%")"
echo 
::PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%~1.ps1""' -Verb RunAs}"
)

goto:eof


:runPSadmin
powershell "Start-Process Powershell -Verb runAs "
goto:eof
:runPS1admin
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%~1.ps1""' -Verb RunAs}"
goto:eof