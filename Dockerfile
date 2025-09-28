FROM python:3.11-slim


# جلوگیری از باگ‌های locale

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1


# نصب ابزارهای سیستمی مورد نیاز برای کامپایل و کتابخانه‌های جنگو

RUN apt-get update && apt-get install -y \
    build-essential \        
    libpq-dev \             
    libjpeg-dev \            
    zlib1g-dev \             
    libpng-dev \             
    libfreetype6-dev \       
    libwebp-dev \            
    curl \                  
    netcat-traditional \     
    && rm -rf /var/lib/apt/lists/* \
    && pip install --upgrade pip
