@echo off
setlocal
title TACTIX Local Server
echo.
echo   TACTIX is starting at http://localhost:8000
echo   Keep this window open while you play.
echo   Press Ctrl+C to stop the server.
echo.

where py >nul 2>nul
if %errorlevel%==0 (
  start "" http://localhost:8000
  py -m http.server 8000
  goto :end
)

where python >nul 2>nul
if %errorlevel%==0 (
  start "" http://localhost:8000
  python -m http.server 8000
  goto :end
)

echo Python was not found on this computer.
echo Install Python from https://www.python.org/downloads/ then run this file again.
pause

:end
endlocal
