FROM python:3.8-slim

# Çalışma dizinini ayarla
WORKDIR /app

# Bağımlılıkları kopyala ve yükle
COPY requirements-d.txt .
RUN pip install --no-cache-dir -r requirements-d.txt

# Uygulama dosyalarını kopyala
COPY . .

# Uygulamayı çalıştır
CMD ["python", "./hello.py"]