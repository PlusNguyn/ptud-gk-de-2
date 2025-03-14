# Trần Thái Nguyên 22697051

### Hướng dẫn cài đặt

1. Clone repository này về máy:
```bash
git clone https://github.com/PlusNguyn/ptud-gk-de-2.git
```

2. Di chuyển vào thư mục ptud-gk-de-2
```bash
cd ptud-gk-de-2
```

3. Chạy file run.bat để tự động cài đặt và khởi động ứng dụng:
```bash
run.bat
```

4. Truy cập ứng dụng tại địa chỉ: http://127.0.0.1:8000/

### Để tạo admin hãy truy cập vào thư mục ptud-gk-de-2 (cùng cấp với manage.py) và chạy lệnh
```bash
py manage.py createsuperuser
```

Nhập tên đăng nhập, mật khẩu, và truy cập http://127.0.0.1:8000/admin để vào giao diện admin của django

Lưu ý cần chạy lại run.bat hoặc chạy lệnh py manage.py runserver để tái khởi động

