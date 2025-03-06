FROM nginx:alpine

# Installation des outils nécessaires
RUN apk add --no-cache curl

# Suppression de la configuration par défaut de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copie des fichiers de l'application
COPY . /usr/share/nginx/html/

# Configuration de Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Création du dossier pour les images
RUN mkdir -p /usr/share/nginx/html/img && \
    chown -R nginx:nginx /usr/share/nginx/html

# Exposition du port 80
EXPOSE 80

# Vérification de la santé
HEALTHCHECK --interval=30s --timeout=3s \
    CMD curl -f http://localhost/ || exit 1

# Démarrage de Nginx
CMD ["nginx", "-g", "daemon off;"] 