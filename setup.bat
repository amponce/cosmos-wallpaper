@echo off
echo ============================================
echo   COSMOS WALLPAPER - SETUP
echo ============================================
echo.

cd "%~dp0wallpaper-engine"

REM Check if Wallpaper Engine is installed
set "WE_PATH="
if exist "C:\Program Files (x86)\Steam\steamapps\common\wallpaper_engine" (
    set "WE_PATH=C:\Program Files (x86)\Steam\steamapps\common\wallpaper_engine"
)
if exist "C:\Program Files\Steam\steamapps\common\wallpaper_engine" (
    set "WE_PATH=C:\Program Files\Steam\steamapps\common\wallpaper_engine"
)

if "%WE_PATH%"=="" (
    echo [!] Wallpaper Engine not found!
    echo.
    echo Please install Wallpaper Engine from Steam:
    echo https://store.steampowered.com/app/431960/
    echo.
    pause
    start https://store.steampowered.com/app/431960/
    exit /b 1
)

echo [+] Found Wallpaper Engine!
echo.

REM Create wallpapers directory
set "WALLPAPER_DIR=%USERPROFILE%\Documents\Wallpaper Engine\wallpapers\cosmos-stars"
echo [+] Creating wallpaper directory...
if not exist "%WALLPAPER_DIR%" mkdir "%WALLPAPER_DIR%"

REM Copy files
echo [+] Copying files...
copy /Y cosmos-wallpaper.html "%WALLPAPER_DIR%\index.html"
copy /Y project.json "%WALLPAPER_DIR%\project.json"

echo.
echo [+] Launching Wallpaper Engine...
start "" "%WE_PATH%\wallpaper32.exe"

echo.
echo ============================================
echo   SETUP COMPLETE!
echo ============================================
echo.
echo Wallpaper files installed to:
echo %WALLPAPER_DIR%
echo.
echo Next: Open Wallpaper Engine and apply your wallpaper!
echo.
pause
