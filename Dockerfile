#build stage
#FROM node:lts-alpine 
#WORKDIR /app
#COPY . .
#RUN npm install

#EXPOSE 3005

#CMD ["node","index.js"]
FROM nginx:latest

COPY public /usr/share/nginx/html

EXPOSE 3005

CMD ["nginx", "-g", "daemon off;"]
