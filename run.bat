@echo off
cd /d %~dp0

echo === Kiem tra Python ===
python --version >nul 2>&1
if errorlevel 1 (
    echo Khong tim thay Python. Hay cai dat Python va them vao PATH
    pause
    exit
)


echo === Kiem tra moi truong ao ===
if not exist venv (
    echo Dang tao moi truong ao moi...
    python -m venv venv
) else (
    echo Da tim thay moi truong ao.
)

echo === Kich hoat moi truong ao ===
call .\venv\Scripts\activate
if errorlevel 1 (
    echo Loi kich hoat moi truong ao!
    pause
    exit
)

echo === Cai dat cac goi can thiet ===
python -m pip install --upgrade pip
pip install -r requirements.txt


echo === Thuc hien migrate database ===
python manage.py makemigrations
python manage.py migrate

echo === Mo trinh duyet ===
start http://127.0.0.1:8000/

echo === Khoi dong server ===
python manage.py runserver

pause
