@echo off
echo.
echo Building Project...
echo ---------------------------------------------

rem Change directory to the location of this BAT file
cd /d "%~dp0"

rem Add MinGW bin folder to PATH (relative to this script)
set "PATH=%PATH%;%~dp0Dependencies\mingw64\bin"

rem Run the build
mingw32-make rebuild

rem Check if the build succeeded
if %errorlevel% neq 0 (
    echo Build failed!
    pause
    exit /b %errorlevel%
)

echo.
echo Build completed successfully!
echo ---------------------------------------------

Main.exe
pause