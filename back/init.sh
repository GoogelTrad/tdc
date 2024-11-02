#!/bin/bash
sleep 3

python back/srcs/manage.py makemigrations
python back/srcs/manage.py migrate

python back/srcs/create_superuser.py
python back/srcs/manage.py runserver 0.0.0.0:8000