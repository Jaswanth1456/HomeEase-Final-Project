@echo off
cd /d "%~dp0"
echo ======================================
echo        HOME EASE - REACT APP
 echo ======================================
where npm >nul 2>nul
if errorlevel 1 (
  echo ERROR: Node.js and npm are not installed.
  echo Install the LTS version from https://nodejs.org/ and reopen this file.
  pause
  exit /b 1
)
if not exist node_modules (
  echo Installing project dependencies. Please wait...
  call npm install
  if errorlevel 1 (
    echo Dependency installation failed. Check your internet connection.
    pause
    exit /b 1
  )
)
echo Starting HomeEase...
echo Keep this window open while using the website.
call npm run dev
pause
