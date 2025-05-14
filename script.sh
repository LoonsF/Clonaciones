#!/bin/bash

# Actualizar paquetes
sudo apt-get update

# Instalar Apache
sudo apt-get install -y apache2

# Instalar Node.js
sudo apt-get install -y nodejs

# Instalar Git
sudo apt-get install -y git

# Verificar que Apache esté en ejecución
sudo systemctl enable apache2
sudo systemctl start apache2
sudo systemctl status apache2

# Limpiar carpeta HTML por defecto de Apache (opcional)
sudo rm -rf /var/www/html/*

# Clonar un repositorio de ejemplo con HTML, CSS y JS
sudo git clone https://github.com/mdn/beginner-html-site-styled.git /var/www/html

# Ajustar permisos
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

echo "✅ Proyecto HTML desplegado en http://localhost/entorno-pruebas25-main/Programa/"
