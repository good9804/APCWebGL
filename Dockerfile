#build stage
#FROM node:lts-alpine 
#WORKDIR /app
#COPY . .
#RUN npm install

#EXPOSE 3005

#CMD ["node","index.js"]
# build stage
FROM node:lts-alpine as build

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install

COPY public ./public
COPY src ./src

RUN npm run build

# production stage
FROM nginx:stable-alpine

COPY --from=build /app/public /usr/share/nginx/html

EXPOSE 3005

CMD ["nginx", "-g", "daemon off;"]
