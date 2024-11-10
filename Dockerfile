# Usamos la imagen oficial de Node.js desde Docker Hub
FROM node:14

# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiamos el archivo package.json y package-lock.json (si está disponible)
COPY package*.json ./

# Instalamos las dependencias del proyecto
RUN npm install

# Copiamos el resto de los archivos de la aplicación
COPY . .

# Exponemos el puerto en el que la aplicación va a correr
EXPOSE 3000

# Definimos el comando para ejecutar la aplicación
CMD ["node", "app.js"]
