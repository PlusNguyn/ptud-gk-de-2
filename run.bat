@echo off
cd /d %~dp0

echo Checking if virtual environment exists...
if not exist venv (
    echo Creating virtual environment...
    python -m venv venv
)

echo Activating virtual environment...
call .\venv\Scripts\activate

echo Installing dependencies...
python -m pip install --upgrade pip
pip install -r requirements.txt

echo Running Django server...

cd Django-ToDo-App

python manage.py makemigrations
python manage.py migrate

start http://127.0.0.1:8000/
python manage.py runserver

pause
