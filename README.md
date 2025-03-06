# Application d'Exercices de Mathématiques

Application web interactive pour apprendre les mathématiques, incluant :
- Tables de multiplication
- Tables d'addition
- Addition aléatoire
- Tables de soustraction

## Prérequis

- Docker
- Docker Compose

## Installation

1. Clonez ce dépôt :
```bash
git clone [URL_DU_REPO]
cd maths-app
```

2. Créez le dossier pour les images :
```bash
mkdir -p img
```

3. Lancez l'application avec Docker Compose :
```bash
docker-compose up -d
```

L'application sera accessible à l'adresse : http://localhost:1987

## Configuration Nginx Proxy Manager

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
Pour mettre à jour l'application :
```bash
docker-compose pull
docker-compose up -d
```

### Logs
Pour voir les logs :
```bash
docker-compose logs -f
```

### Arrêt
Pour arrêter l'application :
```bash
docker-compose down
```

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