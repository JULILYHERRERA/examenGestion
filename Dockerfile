
#aca podemos la imagen que vamos a usarr
FROM node:22-alpine

#indicamos el puerto
ENV PORT=4000

#indicamos la carpeta que vamos a trabajar 
WORKDIR /usr/src/app

#en el copy indicamos que se va a copiar, o sea el package.jsom
COPY package.json /usr/src/app/

#y en el run es para que instale las dependencias
RUN npm install

#indicamos donde va a correr nuestra aplicacionn
COPY server.js /usr/src/app

#
EXPOSE $PORT

#indicamos los comandos que va a correrr
CMD [ "npm", "start" ]
