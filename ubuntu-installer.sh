#!/bin/sh

# Crear local_settings.py

# Actualizamos la lista de indices
sudo apt update

# sudo add-apt-repository ppa:deadsnakes/ppa
# Paquetes necesarios para el proyecto
sudo apt install python3.8-dev python3.8-venv postgresql gcc chromium-browser chromium-chromedriver -y
sudo systemctl enable postgresql

# Creacion de usuario y base de datos
sudo su - postgres
psql -c "create user decide with password 'decide'"
psql -c "create database decide owner decide"
psql -c "alter user decide createdb;"
exit

# Crear y activar entorno
python3.8 -m venv .env
source .env/bin/activate

# Instalacion de requisitos
pip install -r requirements.txt

# Entramos a la carpeta de django
cd decide

python manage.py migrate

echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('decide', '', 'decide')" | python manage.py shell