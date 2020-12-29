@echo off
cd %~dp0

echo BackUp PATH
echo %PATH%
setx /M PATH "%PATH%;C:\Git\win-scripts\Scripts\bin;C:\Dev\Gow\bin"