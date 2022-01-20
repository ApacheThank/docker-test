# specify the node base image with your desired version node:<version>
FROM node:alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install && npm cache clean --force

# copier tout de répertoire de à répertoire
COPY . . 


# replace this with your application's default port
EXPOSE 8080
# commande lancé par défaut lors de lancement
CMD [ "node","app.js"]