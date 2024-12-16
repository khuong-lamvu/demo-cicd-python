# Sử dụng Python base image
FROM python:3.9

# Đặt thư mục làm việc
WORKDIR /app

# Copy source code và file requirements
COPY app/ app/
COPY app/requirements.txt .

# Cài đặt các thư viện cần thiết
RUN pip install --no-cache-dir -r requirements.txt

# Expose cổng 5050
EXPOSE 5050

# Chạy ứng dụng Flask
CMD ["python", "app/app.py"]
