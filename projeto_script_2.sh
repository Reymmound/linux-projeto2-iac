#! /bin/bash

echo "Atualizando o Servidor"

apt install update -y
apt install upgrade -y

echo "Instalando APACHE"

apt install apache2 -y

echo "Instalando Unzip"

apt install unzip -y

echo "Baixando arquivos do Site"

cd /tmp
sudo wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Copiando os arquivos para  o APACHE"

unzip /tmp/main.zip
cd /tmp/linux-site-dio-main
cp -R * /var/www/html

echo "FIM"

