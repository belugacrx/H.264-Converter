@echo off
setlocal

:: Get path of this script
set "SCRIPT_DIR=%~dp0"

:: Path to ffmpeg (assume it's in the same folder, or adjust if needed)
set "FFMPEG=%SCRIPT_DIR%ffmpeg.exe"

:: Input file (from context menu)
set "INPUT=%~1"

:: Output file (same folder as input, with _h264_gpu.mp4 suffix)
set "OUTPUT=%~dpn1_h264_gpu.mp4"

:: Run conversion
"%FFMPEG%" -i "%INPUT%" -c:v h264_nvenc -preset fast -cq 23 -c:a aac -b:a 128k "%OUTPUT%"

echo Conversion finished!
pause
