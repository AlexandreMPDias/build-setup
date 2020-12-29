@echo off

cd %~dp0

@REM python %~dp0..\..\common\essentials.py
@REM python %~dp0..\..\common\java.py

python -m pip install --upgrade pip
pip install virtualenv virtualenvwrapper-win

@REM explorer "https://github.com/downloads/bmatzelle/gow/Gow-0.7.0.exe"

@REM cd C:\Dev
@REM git clone https://github.com/AlexandreMPDias/win-scripts

call .\setup-ssh.bat
echo Finished. Open new terminal
pause
exit 0