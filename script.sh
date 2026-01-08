#!/bin/bash

REPO_URL="https://github.com/Dk054/dz2.git"
TARGET_DIR="/opt/zada4a_4"

if [ -d "$TARGET_DIR" ]; then
  echo "Обновление репозитория..."
  cd $TARGET_DIR
  git pull $REPO_URL
else
  echo "Клонирование репозитория..."
  git clone $REPO_URL $TARGET_DIR
  cd $TARGET_DIR
fi

echo "Запуск проекта..."
docker compose up -d