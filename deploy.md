# Déploiement VPS — Règles & Procédures

> Ce fichier est référencé par `CLAUDE.md`. Il est lu quand on parle de déployer, pousser sur le VPS, ou mettre en prod.
> **⛔ Ce fichier ne s'applique QUE si `CLAUDE.md` indique "Cible : VPS".**

## Workflow

```
LOCAL (dev) → git push → GITHUB (backup) → deploy.sh → VPS (prod)
```

- **Save** (`git push`) et **Deploy** (`./deploy.sh`) sont deux actions séparées
- On peut push 20 fois sans que le VPS bouge — on déploie uniquement quand on décide
- `deploy.sh` fait automatiquement le push GitHub si on a oublié

## Identité Git — VÉRIFICATION OBLIGATOIRE

```bash
# TOUJOURS vérifier avant un push ou un deploy
git remote -v
# Doit afficher : git@github.com:JeremieChiari/[NOM-REPO].git

# Si incorrect, corriger :
git remote set-url origin git@github.com:JeremieChiari/[NOM-REPO].git
```

> ⛔ Le seul compte GitHub est **JeremieChiari**. Si le remote affiche un autre user, CORRIGE avant de push.
> ⛔ En cas d'erreur de push → documenter dans `ERRORS_LOG.md`.

## Accès VPS

- **Alias SSH** : `ssh isaoprod` (configuré dans `~/.ssh/config`)
- **Ne JAMAIS demander les identifiants** — l'alias gère tout
- **Racine des apps** : `/data/` sur le VPS

## Architecture VPS

```
/data/
├── caddy_isao/              ← Reverse proxy central (Caddy)
│   ├── docker-compose.yml
│   ├── Caddyfile            ← Config des domaines
│   └── data/                ← Certificats SSL (Let's Encrypt auto)
│
├── mon-app/                 ← App déployée (clone git)
│   ├── docker-compose.yml
│   ├── Dockerfile
│   ├── nginx.conf
│   ├── .env                 ← Config production (créé manuellement sur le VPS)
│   └── src/
│
└── GLOBAL_ERRORS_LOG.md
```

## Règles impératives

1. Tout dans `/data/` — aucune app en dehors
2. Tout est dockerisé — chaque app a `Dockerfile` + `docker-compose.yml`
3. Caddy = reverse proxy unique (`/data/caddy_isao/`), SSL auto via Let's Encrypt
4. Réseau Docker : `app-network` — toutes les apps et Caddy dessus
5. Jamais d'exposition de port inutile — seul Caddy expose 80/443, les apps utilisent `expose:` uniquement
6. Le code arrive via `git pull` — jamais de copie manuelle

## ⛔ Ce que SSH n'est PAS

SSH est un **tuyau**, pas un environnement de travail. On ne code JAMAIS sur le VPS.

| ✅ SSH sert à | ❌ SSH ne sert JAMAIS à |
|---|---|
| Lancer `deploy.sh` | Éditer du code sur le VPS |
| Créer le `.env` de prod (1ère fois) | Corriger un bug sur le serveur |
| Configurer Caddy (1ère fois) | Lancer `npm run dev` sur le VPS |
| Lire des logs (`docker logs`) | Modifier des fichiers source |
| Diagnostiquer un problème | Installer des packages |

**Bug à corriger → on corrige en LOCAL, on push, on deploy.**

## Script deploy.sh

À mettre à la racine de chaque projet. Adapter `APP_NAME`, `VPS`, `VPS_DIR`, `REPO_URL`.

> ⚠️ `REPO_URL` doit TOUJOURS utiliser le compte `JeremieChiari`. Vérifie avec `git remote -v`.

```bash
#!/bin/bash
set -e

# ============ CONFIG (à adapter par projet) ============
APP_NAME="[NOM-APP]"
VPS="isaoprod"
VPS_DIR="/data/$APP_NAME"
REPO_URL="git@github.com:JeremieChiari/$APP_NAME.git"
# ========================================================

echo "🚀 Déploiement de $APP_NAME"

# 0. Vérification du remote
ACTUAL_REMOTE=$(git remote get-url origin)
if [ "$ACTUAL_REMOTE" != "$REPO_URL" ]; then
    echo "❌ STOP : Remote incorrect !"
    echo "   Attendu : $REPO_URL"
    echo "   Actuel  : $ACTUAL_REMOTE"
    echo "   → Corrige avec : git remote set-url origin $REPO_URL"
    exit 1
fi

# 1. Vérifications locales
if [ -n "$(git status --porcelain)" ]; then
    echo "❌ STOP : Fichiers non commités !"
    git status --short
    exit 1
fi

LOCAL_HASH=$(git rev-parse HEAD)
REMOTE_HASH=$(git rev-parse origin/main 2>/dev/null || echo "none")
if [ "$LOCAL_HASH" != "$REMOTE_HASH" ]; then
    echo "📤 Push en cours..."
    git push origin main
fi

# 2. Build local de vérification
echo "🔨 Build local..."
npm run build

# 3. Déploiement VPS
echo "🖥️  Déploiement sur le VPS..."
ssh $VPS << DEPLOY
set -e
if [ ! -d "$VPS_DIR" ]; then
    git clone $REPO_URL $VPS_DIR
    cd $VPS_DIR
else
    cd $VPS_DIR
    git fetch origin
    git reset --hard origin/main
fi
docker network ls | grep -q app-network || docker network create app-network
docker compose up -d --build --force-recreate
sleep 3
if docker ps | grep -q "$APP_NAME"; then
    echo "✅ Container $APP_NAME tourne"
else
    echo "❌ Container $APP_NAME ne tourne pas !"
    docker logs $APP_NAME --tail 20
    exit 1
fi
DEPLOY

echo "✅ $APP_NAME déployé !"
echo "🔗 Pense à vérifier/ajouter l'entrée Caddy si premier deploy"
```

## Checklist pré-déploiement

Avant CHAQUE déploiement, vérifier :

- [ ] `git remote -v` affiche `JeremieChiari` (pas un autre user)
- [ ] `git status` est propre (rien de non commité)
- [ ] `pnpm build` passe en local
- [ ] `pnpm lint` passe sans erreur
- [ ] Les variables `.env` de prod sont à jour sur le VPS
- [ ] `ERRORS_LOG.md` a été consulté pour les pièges connus

## Premier déploiement d'une app

```bash
# 1. Vérifier que tout est pushé
git remote -v  # Vérifier JeremieChiari
git status && git push

# 2. Lancer le deploy
chmod +x deploy.sh
./deploy.sh

# 3. Créer le .env de production sur le VPS
ssh isaoprod "nano /data/mon-app/.env"

# 4. Ajouter l'entrée Caddy
ssh isaoprod "nano /data/caddy_isao/Caddyfile"
# mon-domaine.com {
#     reverse_proxy mon-app:80
# }

# 5. Redémarrer Caddy
ssh isaoprod "cd /data/caddy_isao && docker compose restart"

# 6. Vérifier
ssh isaoprod "curl -I https://mon-domaine.com"
```

## Déploiements suivants

```bash
./deploy.sh    # C'est tout.
```

## Templates Docker

### Dockerfile — Frontend (multi-stage)

```dockerfile
FROM node:20-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

FROM nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
```

### nginx.conf (SPA)

```nginx
server {
    listen 80;
    root /usr/share/nginx/html;
    index index.html;

    location / {
        try_files $uri $uri/ /index.html;
    }

    location ~* \.(js|css|png|jpg|jpeg|gif|ico|svg|webp|avif|woff2?)$ {
        expires 1y;
        add_header Cache-Control "public, immutable";
    }

    gzip on;
    gzip_types text/plain text/css application/json application/javascript text/xml;
}
```

### docker-compose.yml — Frontend

```yaml
services:
  mon-app:
    build: .
    container_name: mon-app
    restart: unless-stopped
    expose:
      - "80"
    networks:
      - app-network
    env_file:
      - .env

networks:
  app-network:
    external: true
```

### docker-compose.yml — Fullstack (front + back + BDD)

```yaml
services:
  frontend:
    build: ./frontend
    container_name: mon-app-front
    restart: unless-stopped
    expose:
      - "80"
    networks:
      - app-network

  backend:
    build: ./backend
    container_name: mon-app-api
    restart: unless-stopped
    expose:
      - "3000"
    networks:
      - app-network
    env_file:
      - .env

  db:
    image: postgres:16-alpine
    container_name: mon-app-db
    restart: unless-stopped
    expose:
      - "5432"
    networks:
      - app-network
    environment:
      POSTGRES_DB: ${DB_NAME}
      POSTGRES_USER: ${DB_USER}
      POSTGRES_PASSWORD: ${DB_PASSWORD}
    volumes:
      - ./db-data:/var/lib/postgresql/data

networks:
  app-network:
    external: true
```

### .dockerignore (obligatoire dans chaque projet)

```
node_modules
.git
.gitignore
.env
.env.example
CLAUDE.md
CONTEXT.md
ERRORS_LOG.md
CHANGELOG.md
README.md
deploy.sh
deploy-vercel.md
docker-compose.yml
docker-compose.override.yml
.DS_Store
*.md
```

## Caddy — Ajouter/modifier une app

```bash
# Éditer
ssh isaoprod "nano /data/caddy_isao/Caddyfile"

# Nouvelle app → restart complet
ssh isaoprod "cd /data/caddy_isao && docker compose restart"

# Modif config existante → reload à chaud
ssh isaoprod "docker exec caddy_isao caddy reload --config /etc/caddy/Caddyfile"

# Vérifier
ssh isaoprod "curl -I https://domaine.com"
```

## Commandes de diagnostic

```bash
# Logs d'une app
ssh isaoprod "docker logs mon-app --tail 50 -f"

# Logs Caddy
ssh isaoprod "docker logs caddy_isao --tail 50 -f"

# État containers
ssh isaoprod "docker ps -a"

# Ports en écoute
ssh isaoprod "ss -tlnp | grep LISTEN"
ssh isaoprod "docker ps --format 'table {{.Names}}\t{{.Ports}}'"

# Espace disque
ssh isaoprod "df -h /data"

# Nettoyage Docker
ssh isaoprod "docker system prune -f"
```

## Rollback

```bash
ssh isaoprod << 'EOF'
cd /data/mon-app
git log --oneline -5
git checkout [commit-hash]
docker compose up -d --build
EOF
```

## Garde-fous anti-perte de travail

| Cause | Protection |
|---|---|
| Fichiers non commités | `git status` obligatoire avant chaque deploy |
| `.gitignore` trop agressif | Vérifier les fichiers critiques |
| Cache Docker sur VPS | `docker compose build --no-cache` en cas de doute |
| `package-lock.json` non commité | TOUJOURS le commiter |
| `.env` différent local/VPS | `.env.example` toujours à jour |
| `git pull` oublié sur VPS | `deploy.sh` fait tout automatiquement |
| Remote GitHub incorrect | `deploy.sh` vérifie le remote avant de push |

## En cas d'erreur

> **Toute erreur de déploiement doit être documentée dans `ERRORS_LOG.md` du projet.**
> Format : voir la section ERRORS_LOG.md dans `CLAUDE.md`.

## Raccourcis

| Commande | Action |
|---|---|
| `"Deploy"` | Exécute deploy.sh |
| `"Ports"` | Liste les ports utilisés sur le VPS |
| `"Logs [app]"` | Logs du container sur le VPS |
| `"Caddy reload"` | Reload/restart Caddy sur le VPS |
| `"Docker local"` | docker compose up --build en local |
