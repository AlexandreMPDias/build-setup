@echo off

cd %~dp0

python %~dp0..\..\common\essentials.py
python %~dp0..\..\common\java.py

python -m pip install --upgrade pip
pip install virtualenv virtualenvwrapper-win

choco install -a -y nvm firacode

explorer "https://github.com/downloads/bmatzelle/gow/Gow-0.7.0.exe"

cd C:\Dev
git clone https://github.com/AlexandreMPDias/win-scripts
cd %~dp0

call .\setup-ssh.bat
echo Finished. Open new terminal
pause
exit 0