
echo === Kiem tra moi truong ao ===
if not exist venv (
    echo Dang tao moi truong ao moi...
    python -m venv venv
) else (
    echo Da tim thay moi truong ao.
)

echo === Kich hoat moi truong ao ===
call .\venv\Scripts\activate

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

