@ECHO OFF

python --version 2>NUL
if errorlevel 1 goto errorNoPython

PAUSE

:install
pip3 install -r requirements.txt

PAUSE

streamlit run main.py

ECHO "Launching Streamlit GUI"

PAUSE

goto:eof

:errorNoPython
echo.
echo Error^: Python not installed

curl ""https://www.python.org/ftp/python/3.9.0/python-3.9.0-amd64.exe"" --output python.exe
python.exe /passive InstallAllUsers=1 PrependPath=1 Include_test=0 SimpleInstall=1
cls

goto install

PAUSE