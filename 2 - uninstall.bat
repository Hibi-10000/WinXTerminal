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

::Windows�^�[�~�i���̃����N���폜
del /q "%folderPath%\00 - Windows Terminal.lnk"
del /q "%folderPath%\00a - Windows Terminal.lnk"

::�R�}���h�v�����v�g��Windows PowerShell�̃����N�����̃t�H���_�Ɉړ�
move "%upfolderPath%\01 - Command Prompt.lnk" %folderPath%
move "%upfolderPath%\02 - Command Prompt.lnk" %folderPath%
move "%upfolderPath%\01a - Windows PowerShell.lnk" %folderPath%
move "%upfolderPath%\02a - Windows PowerShell.lnk" %folderPath%

::Explorer���ċN�����邩
echo.
echo ����:�J���Ă���G�N�X�v���[���[�̃E�B���h�E�����ׂĕ��܂�
set /p yn_check="�ύX��K�p���邽�߂ɃG�N�X�v���[���[���ċN�����܂���? (y/n) "
IF %yn_check:N=N%==N (goto end)

taskkill /f /im explorer.exe
start explorer.exe

:end
PAUSE
endlocal
exit