#!/bin/bash

python manage.py make migrations
python manage.py migrate
python mamage.py runserver 0.0.0.0:8000