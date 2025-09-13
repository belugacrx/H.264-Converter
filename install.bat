@echo off
setlocal

:: Get the directory where this installer is
set "SCRIPT_DIR=%~dp0"
set "BAT_FILE=%SCRIPT_DIR%ConvertToH264.bat"

:: Add registry entries dynamically
reg add "HKCR\SystemFileAssociations\.mp4\shell\ConvertToH264_GPU" /v "MUIVerb" /t REG_SZ /d "Convert to H.264 (GPU)" /f
reg add "HKCR\SystemFileAssociations\.mp4\shell\ConvertToH264_GPU" /v "Extended" /t REG_SZ /d "" /f
reg add "HKCR\SystemFileAssociations\.mp4\shell\ConvertToH264_GPU\command" /ve /t REG_SZ /d "\"%BAT_FILE%\" \"%%1\"" /f

reg add "HKCR\SystemFileAssociations\.mkv\shell\ConvertToH264_GPU" /v "MUIVerb" /t REG_SZ /d "Convert to H.264 (GPU)" /f
reg add "HKCR\SystemFileAssociations\.mkv\shell\ConvertToH264_GPU" /v "Extended" /t REG_SZ /d "" /f
reg add "HKCR\SystemFileAssociations\.mkv\shell\ConvertToH264_GPU\command" /ve /t REG_SZ /d "\"%BAT_FILE%\" \"%%1\"" /f

reg add "HKCR\SystemFileAssociations\.webm\shell\ConvertToH264_GPU" /v "MUIVerb" /t REG_SZ /d "Convert to H.264 (GPU)" /f
reg add "HKCR\SystemFileAssociations\.webm\shell\ConvertToH264_GPU" /v "Extended" /t REG_SZ /d "" /f
reg add "HKCR\SystemFileAssociations\.webm\shell\ConvertToH264_GPU\command" /ve /t REG_SZ /d "\"%BAT_FILE%\" \"%%1\"" /f

echo Installed! Shift + Right-click a video to use it.
pause
