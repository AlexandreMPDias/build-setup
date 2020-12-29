@echo off
cd %~dp0

mkdir C:\Git || echo .
mkdir C:\Dev || echo .

echo Download Python
explorer "https://www.python.org/ftp/python/3.9.1/python-3.9.1-amd64.exe"