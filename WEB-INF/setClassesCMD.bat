@echo off
setlocal enabledelayedexpansion
set classes=classes
for /f %%i in ('dir /b /a:-d lib') do (
	set classes=!classes!;lib\%%i
)
::----------------
::----------------
for /f %%i in ('dir /b /a:d lib') do (
	for /f %%j in ('dir /b /a:-d lib\%%i') do (
		set classes=!classes!;lib\%%i\%%j
	)
)
setlocal disabledelayedexpansion
cmd