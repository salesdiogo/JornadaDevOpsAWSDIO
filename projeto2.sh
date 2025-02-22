#!/bin/bash

Echo "Atualizando SO"
apt-get update
apt-get upgrade -y

Echo "Instalando Apache"
apt-get install apache2 -y

Echo "Instalando Unzip"
apt-get install unzip -y

Echo "Baixando e descompactando arquivo"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/mani.zip
unzip main.zip
cd linux-site-dio

Echo "Copiando arquivos para a pasta do Apache"
cp -R * /var/www/html/