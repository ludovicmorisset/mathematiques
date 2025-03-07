# Application d'Exercices de Mathématiques

Application web interactive pour apprendre les mathématiques, incluant :
- Tables de multiplication
- Tables d'addition
- Addition aléatoire
- Tables de soustraction

## Prérequis

- Serveur VPS avec Docker
- Portainer
- Nginx Proxy Manager (optionnel)

## Installation via Portainer

1. **Préparation des fichiers** :
   - Téléchargez tous les fichiers du projet sur votre ordinateur
   - Créez un dossier `img` et placez-y l'image de fond `wallpaper.png`
   - Compressez tous les fichiers en un fichier ZIP

2. **Déploiement sur Portainer** :
   1. Connectez-vous à votre interface Portainer
   2. Allez dans "Stacks"
   3. Cliquez sur "Add stack"
   4. Donnez un nom à votre stack (par exemple "maths-app")
   5. Dans l'onglet "Build method", sélectionnez "Upload"
   6. Uploadez votre fichier ZIP
   7. Cliquez sur "Deploy the stack"

3. **Vérification** :
   - Accédez à http://[IP_DU_SERVEUR]:1987
   - Vérifiez que l'image de fond s'affiche correctement
   - Testez les différentes fonctionnalités

## Configuration Nginx Proxy Manager (optionnel)

1. Connectez-vous à votre interface Nginx Proxy Manager
2. Allez dans "Proxy Hosts"
3. Cliquez sur "Add Proxy Host"
4. Configurez comme suit :
   - Domain Names : votre-domaine.com
   - Scheme : http
   - Forward Hostname / IP : [IP_DU_SERVEUR]
   - Forward Port : 1987
   - SSL : Activez si vous avez un certificat SSL

## Maintenance

### Mise à jour
Pour mettre à jour l'application via Portainer :
1. Préparez une nouvelle version du ZIP
2. Dans Portainer, allez dans votre stack
3. Cliquez sur "Editor"
4. Uploadez le nouveau ZIP
5. Cliquez sur "Update the stack"

### Logs
Pour voir les logs dans Portainer :
1. Allez dans "Containers"
2. Cliquez sur le conteneur "maths-app"
3. Allez dans l'onglet "Logs"

### Arrêt
Pour arrêter l'application :
1. Dans Portainer, allez dans "Stacks"
2. Trouvez votre stack
3. Cliquez sur "Stop" ou "Remove" selon votre besoin

## Caractéristiques

- Interface responsive
- Design moderne et intuitif
- Pavé numérique virtuel
- Suivi des scores
- Différents niveaux de difficulté
- Feedback immédiat
- Support des nombres négatifs (soustraction)

## Sécurité

- Headers de sécurité configurés
- Compression gzip activée
- Cache optimisé pour les ressources statiques
- Healthcheck Docker configuré
- Permissions nginx correctement configurées

## Résolution des problèmes courants

1. **L'image de fond ne s'affiche pas** :
   - Vérifiez que le fichier `wallpaper.png` est bien présent dans le dossier `img`
   - Vérifiez les permissions du fichier (755)
   - Inspectez les logs du conteneur pour voir les erreurs 404 éventuelles

2. **Problèmes d'accès** :
   - Vérifiez que le port 1987 est ouvert sur votre VPS
   - Vérifiez les logs Nginx dans le conteneur
   - Vérifiez la configuration du pare-feu du VPS 