# Application de Tables de Multiplication

Application web interactive pour apprendre les tables de multiplication.

## Prérequis

- Docker
- Docker Compose
- Portainer (optionnel)
- Nginx Proxy Manager

## Installation

### 1. Préparation

Assurez-vous que le réseau `nginx-proxy` existe. Si ce n'est pas le cas, créez-le :
```bash
docker network create nginx-proxy
```

### 2. Déploiement

#### Option 1 : Via Portainer
1. Connectez-vous à votre interface Portainer
2. Allez dans "Stacks"
3. Cliquez sur "Add stack"
4. Donnez un nom à votre stack (par exemple "multiplication")
5. Copiez-collez le contenu du fichier `docker-compose.yml`
6. Cliquez sur "Deploy the stack"

#### Option 2 : Via la ligne de commande
```bash
docker-compose up -d
```

### 3. Configuration Nginx Proxy Manager

1. Connectez-vous à votre interface Nginx Proxy Manager
2. Allez dans "Proxy Hosts"
3. Cliquez sur "Add Proxy Host"
4. Configurez comme suit :
   - Domain Names : votre-domaine.com
   - Scheme : http
   - Forward Hostname / IP : multiplication-app
   - Forward Port : 80
   - SSL : Activez si vous avez un certificat SSL

## Maintenance

### Mise à jour
Pour mettre à jour l'application :
```bash
docker-compose pull
docker-compose up -d
```

### Arrêt
Pour arrêter l'application :
```bash
docker-compose down
```

### Logs
Pour voir les logs :
```bash
docker-compose logs -f
```

## Support

En cas de problème, vérifiez :
1. Que le réseau `nginx-proxy` existe
2. Que le container `multiplication-app` est bien en cours d'exécution
3. Les logs du container
4. La configuration dans Nginx Proxy Manager 
