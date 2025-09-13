@echo off
setlocal

echo Removing "Convert to H.264 (GPU)" context menu entries...
echo.

:: Remove for .mp4
reg delete "HKCR\SystemFileAssociations\.mp4\shell\ConvertToH264_GPU" /f

:: Remove for .mkv
reg delete "HKCR\SystemFileAssociations\.mkv\shell\ConvertToH264_GPU" /f

:: Remove for .webm
reg delete "HKCR\SystemFileAssociations\.webm\shell\ConvertToH264_GPU" /f

echo.
echo Uninstall complete! The context menu option has been removed.
pause
