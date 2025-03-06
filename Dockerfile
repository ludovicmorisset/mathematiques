FROM nginx:alpine

# Installation des outils nécessaires
RUN apk add --no-cache curl

# Suppression de la configuration par défaut de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Création des répertoires nécessaires
RUN mkdir -p /usr/share/nginx/html/img

# Copie des fichiers de l'application
COPY *.html /usr/share/nginx/html/
COPY *.js /usr/share/nginx/html/
COPY *.css /usr/share/nginx/html/
COPY img/* /usr/share/nginx/html/img/

# Configuration de Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Configuration des permissions
RUN chown -R nginx:nginx /usr/share/nginx/html && \
    chmod -R 755 /usr/share/nginx/html

# Exposition du port 80
EXPOSE 80

# Vérification de la santé
HEALTHCHECK --interval=30s --timeout=3s \
    CMD curl -f http://localhost/ || exit 1

# Démarrage de Nginx
CMD ["nginx", "-g", "daemon off;"] 