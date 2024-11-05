FROM node:23-alpine3.19

WORKDIR /home

COPY . .

WORKDIR /home/front/front

RUN npm install

CMD ["npm", "start"]
# ENTRYPOINT ["tail", "-f", "/dev/null"]