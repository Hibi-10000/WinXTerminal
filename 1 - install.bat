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

::�R�}���h�v�����v�g��Windows PowerShell�̃����N����̃t�H���_�Ɉړ�
move "%folderPath%\01 - Command Prompt.lnk" %upfolderPath%
move "%folderPath%\02 - Command Prompt.lnk" %upfolderPath%
move "%folderPath%\01a - Windows PowerShell.lnk" %upfolderPath%
move "%folderPath%\02a - Windows PowerShell.lnk" %upfolderPath%

::Windows�^�[�~�i���̃����N���R�s�[
copy ".\00 - Windows Terminal.lnk" %folderPath%
copy ".\00a - Windows Terminal.lnk" %folderPath%

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