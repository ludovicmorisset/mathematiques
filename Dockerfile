FROM nginx:alpine

# Suppression de la configuration par défaut de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copie des fichiers de l'application
COPY . /usr/share/nginx/html/

# Exposition du port 80
EXPOSE 1987

# Démarrage de Nginx
CMD ["nginx", "-g", "daemon off;"] 
