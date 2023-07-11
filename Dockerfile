# build stage
FROM node:lts-alpine 

WORKDIR /app
COPY . .

RUN npm install

EXPOSE 3005

CMD ["node","index.js"]
