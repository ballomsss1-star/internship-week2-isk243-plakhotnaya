#!/bin/bash
echo "=== FinTax Pro Setup ==="

# Создание виртуального окружения
python3 -m venv venv
source venv/bin/activate

# Установка зависимостей
pip install -r backend/requirements.txt

# Настройка базы данных
docker-compose up -d postgres redis

# Применение миграций
alembic upgrade head

echo "Setup complete! Run 'docker-compose up' to start the application."
