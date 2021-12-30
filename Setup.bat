@Echo Off
copy "shortcuts.xml" "%APPDATA%\Notepad++\shortcuts.xml" /Y
if %ERRORLEVEL% neq 0 goto ProcessError
Echo Successfully copied shortcuts file
exit /b 0

:ProcessError
@rem Let user know this failed and they need to manually update shortcut file.
Echo Copy failed. You must manually update the shortcut file. 
Pause
exit /b 1