#!/bin/bash

python backend/manage.py make migrations
python backend/manage.py migrate
python backend/mamage.py runserver 0.0.0.0:8000