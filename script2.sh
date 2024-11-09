#!/bin/bash

echo " Atualizar sistema operacional e dependeências. "

apt-get update -y
apt-get upgrade -y

echo "Instalando sistma de servidor e compactador de arquivos. " 
apt-get install apache2  -y
apt-get install unzip -y

echo " Insralando arquivos nescessários."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html
chmod +x scrip2.sh
echo "Finalizando atividade."
