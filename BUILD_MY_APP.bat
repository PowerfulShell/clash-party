@echo off
setlocal
cd /d "%~dp0"

echo ============================================================
echo  Build My Clash Party - Windows
echo ============================================================
echo  Folder: %CD%
echo.

where pnpm >nul 2>nul
if errorlevel 1 (
  echo ERROR: pnpm was not found.
  echo Install Node.js and enable pnpm, then run this file again.
  goto :failed
)

echo [1/2] Installing or refreshing dependencies...
call pnpm install --frozen-lockfile
if errorlevel 1 goto :failed

echo.
echo [2/2] Building the Windows application...
call pnpm run build:win
if errorlevel 1 goto :failed

echo.
echo ============================================================
echo  BUILD COMPLETED
echo  Look for the installer/package in:
echo  %CD%\dist
echo ============================================================
pause
exit /b 0

:failed
echo.
echo ============================================================
echo  BUILD FAILED - read the error shown above.
echo ============================================================
pause
exit /b 1
