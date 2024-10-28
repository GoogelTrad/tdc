FROM python:3.11.0-slim

WORKDIR /home

COPY . .

RUN apt update -y && apt install -y libpq-dev gcc

RUN pip install --no-cache-dir -r ./requirements.txt
# RUN python manage.py makemigrations
# RUN python manage.py migrate
# # RUN python manage.py runserver 0.0.0.0:8000
RUN chmod +x ./init.sh

EXPOSE 8000

ENTRYPOINT ["python", "/home/backend/manage.py", "runserver", "0.0.0.0:8000"]
# ENTRYPOINT ["tail", "-f", "/dev/null"]