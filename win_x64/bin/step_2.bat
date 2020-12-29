@echo off

cd %~dp0
setx /M PATH "%PATH%;C:\Dev\win-scripts\Scripts\bin;C:\Dev\Gow\bin"


nvm install --lts
npm install -g https://github.com/AlexandreMPDias/wml alex-test-cli typescript yarn

nvm install 10.18.1