#!/bin/bash

set -x

echo "Iniciando deploy..."

# usar carpeta actual donde CodeDeploy copió archivos
cd "$(dirname "$0")/.." || exit 1

pwd
ls -la

sudo systemctl start docker

sudo docker-compose down
sudo docker-compose up -d --build

echo "Deploy completado"
