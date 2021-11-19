echo off
echo Enabling WSL Feature, might take a while...
echo.
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
echo "Reminder to ckeck if system is compatible with wsl 2."
echo.
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
echo "Download the Linux kernel update package."
echo https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi
echo.
echo "Waiting for confirmation to proceed..."
setlocal
:PROMPT 
SET /P INSTALLDISTRO=Did you install the software in the link? (Y/N):
IF /I "%INSTALLDISTRO%" NEQ "Y" GOTO END

echo "setting wsl 2 as the default version."
echo.
wsl --set-default-version 2
echo "Download your preferred Linux Distribution."
:END
endlocal