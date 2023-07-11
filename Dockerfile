# build stage
FROM node:lts-alpine 

WORKDIR /app
COPY . .

RUN npm install

EXPOSE 3009

CMD ["node","index.js"]
