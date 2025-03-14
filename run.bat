@echo off
echo === Kiem tra Python ===
python --version > nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo Khong tim thay Python. Hay dam bao Python da duoc cai dat.
    pause
    exit
)

echo === Kiem tra moi truong ao ===
if not exist venv (
    echo Dang tao moi truong ao moi...
    python -m venv venv
    if %ERRORLEVEL% neq 0 (
        echo Loi: Khong the tao moi truong ao!
        echo Thu cai dat virtualenv: pip install virtualenv
        pause
        exit
    )
    echo Moi truong ao da duoc tao thanh cong.
) else (
    echo Da tim thay moi truong ao.
)

echo === Kich hoat moi truong ao ===
if exist venv\Scripts\activate (
    call venv\Scripts\activate
) else (
    echo Loi: Khong tim thay file kich hoat moi truong ao!
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

