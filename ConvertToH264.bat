��&cls
@echo off
setlocal

:: Get path of this script
set "SCRIPT_DIR=%~dp0"

:: Path to ffmpeg (assume it's in the same folder)
set "FFMPEG=%SCRIPT_DIR%ffmpeg.exe"

:: Input file (from context menu / drag & drop)
set "INPUT=%~1"

:: Check if file exists
if not exist "%INPUT%" (
    echo Input file not found!
    pause
    exit /b
)

:: Get file size in bytes
for %%I in ("%INPUT%") do set "FILESIZE=%%~zI"

:: Set maximum allowed size in bytes (500 MB)
set /a MAXSIZE=500*1024*1024

:: Check file size
if %FILESIZE% gtr %MAXSIZE% (
    echo File is larger than 500 MB. Get Paid version
    pause
    exit /b
)

:: Output file (same folder as input, with _h264_gpu.mp4 suffix)
set "OUTPUT=%~dpn1_h264_gpu.mp4"

:: Run conversion
"%FFMPEG%" -i "%INPUT%" -c:v h264_nvenc -preset fast -cq 23 -c:a aac -b:a 128k "%OUTPUT%"

echo Conversion finished!
pause
