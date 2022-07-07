@echo off
::@echo on

echo.
echo WinXTerminal [ver1.0] Uninstaller
echo.
echo Copyright (c) 2022 Hibi_10000 GNU General Public License Version 3
echo.

setlocal
set folderPath=%LOCALAPPDATA%\Microsoft\Windows\WinX\Group3
set upfolderPath=%LOCALAPPDATA%\Microsoft\Windows\WinX

::Windowsターミナルのリンクを削除
del /q "%folderPath%\00 - Windows Terminal.lnk"
del /q "%folderPath%\00a - Windows Terminal.lnk"

::コマンドプロンプトとWindows PowerShellのリンクを元のフォルダに移動
move "%upfolderPath%\01 - Command Prompt.lnk" %folderPath%
move "%upfolderPath%\02 - Command Prompt.lnk" %folderPath%
move "%upfolderPath%\01a - Windows PowerShell.lnk" %folderPath%
move "%upfolderPath%\02a - Windows PowerShell.lnk" %folderPath%

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