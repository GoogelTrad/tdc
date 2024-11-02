FROM python:3.11.0-slim

WORKDIR /home

COPY . .

RUN apt update -y && apt install -y libpq-dev gcc

RUN pip install --no-cache-dir -r ./requirements.txt
# RUN chmod +x /home/back/init.sh

EXPOSE 8000

CMD ["sh", "back/init.sh"]
# ENTRYPOINT ["tail", "-f", "/dev/null"]