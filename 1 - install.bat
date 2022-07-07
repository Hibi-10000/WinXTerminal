@echo off
::@echo on

echo.
echo WinXTerminal [ver1.0] Installer
echo.
echo Copyright (c) 2022 Hibi_10000 GNU General Public License Version 3
echo.

setlocal
set folderPath=%LOCALAPPDATA%\Microsoft\Windows\WinX\Group3
set upfolderPath=%LOCALAPPDATA%\Microsoft\Windows\WinX

::コマンドプロンプトとWindows PowerShellのリンクを上のフォルダに移動
move "%folderPath%\01 - Command Prompt.lnk" %upfolderPath%
move "%folderPath%\02 - Command Prompt.lnk" %upfolderPath%
move "%folderPath%\01a - Windows PowerShell.lnk" %upfolderPath%
move "%folderPath%\02a - Windows PowerShell.lnk" %upfolderPath%

::Windowsターミナルのリンクをコピー
copy ".\00 - Windows Terminal.lnk" %folderPath%
copy ".\00a - Windows Terminal.lnk" %folderPath%

::Explorerを再起動するか
echo.
echo 注意:開いているエクスプローラーのウィンドウがすべて閉じます
set /p yn_check="変更を適用するためにエクスプローラーを再起動しますか? (y/n) "
IF %yn_check:N=N%==N (goto end)

taskkill /f /im explorer.exe
start explorer.exe

:end
PAUSE
endlocal
exit