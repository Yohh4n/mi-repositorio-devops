#!/bin/bash

echo "Iniciando deploy..."

cd /home/ec2-user/app || exit 1

sudo systemctl start docker

sudo docker-compose down
sudo docker-compose up -d --build

echo "Deploy completado"

