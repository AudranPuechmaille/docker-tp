# Étape 1 : Construction de l'application Angular
FROM node:18 AS build

# Définir le répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Copier le fichier package.json et package-lock.json pour installer les dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers de l'application
COPY . .

# Construire l'application Angular
RUN npm run build --prod

# Étape 2 : Serveur pour servir les fichiers construits
FROM nginx:alpine

# Copier les fichiers de build de l'étape précédente
COPY --from=build /app/dist/my-angular-app /usr/share/nginx/html

# Exposer le port sur lequel Nginx écoutera
EXPOSE 80

# Démarrer Nginx en mode premier plan
CMD ["nginx", "-g", "daemon off;"]
