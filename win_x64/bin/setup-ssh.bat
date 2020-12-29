@echo off
set "sshLocation=%APPDATA%\..\..\.ssh"
mkdir %sshLocation% || echo .

Echo Generating Key
ssh-keygen -t ed25519 -C "alexandrempdias@icloud.com" -f "%sshLocation%/id_rsa"
echo.
echo Adding Key
ssh-add "%sshLocation%/id_rsa"
echo.
echo Opening Github
explorer "https://github.com/settings/ssh/new"
echo.
echo Copying Key to clipboard
clip < "%sshLocation%/id_rsa.pub"