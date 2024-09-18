@echo off

:: קרא את תוכן לוח הגזירים ישירות לתוך המשתנה

for /f "delims=" %%i in ('powershell.exe -command "Get-Clipboard"') do set "clipboard=%%i"

echo The clipboard content: %clipboard%

:: הורד את הקובץ כשמע MP3

yt-dlp -x --audio-format mp3 --audio-quality 0 %clipboard%
::pause