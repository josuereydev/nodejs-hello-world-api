#Imagen oficial
FROM node:14

# Establece el directorio de trabajo
WORKDIR /usr/scr/app

#Copia los archivos package .json
COPY package*.json ./

#Instala las dependenciass
RUN npm install

#Copia el resto de los archivos
COPY . .

#Expone el puerto
EXPOSE 8080

#Comandos de ejecucion
CMD ["npm", "start"]