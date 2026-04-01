# Sky Raptors -- Creer un jeu complet en 15 minutes avec Claude Code

## Introduction

Sky Raptors est un shoot'em up 2D vertical, entierement fonctionnel, cree en 15 minutes avec Claude Code. Le jeu tourne en HTML Canvas + JavaScript vanilla, sans aucune dependance externe. Aucune ligne de code n'a ete ecrite manuellement -- uniquement 10 prompts en francais, copies-colles dans Claude Code.

Le jeu comprend : un avion joueur cyan avec flammes animees, un systeme de tir, des ennemis rouges en mouvement sinusoidal, des collisions avec explosions de particules, un fond etoile parallax, un HUD complet (score, niveau, vies, barre de progression), un boss a deux phases avec 500 HP, des power-ups (shield, double tir, triple tir), des ecrans de menu et game over avec highscore en localStorage, et des effets sonores generes par Web Audio API.

## La methode : CLAUDE.md + 10 prompts

La methode repose sur deux elements :

### 1. Le fichier CLAUDE.md

Avant de taper le moindre prompt, on cree un fichier CLAUDE.md a la racine du projet. C'est un brief technique en Markdown que Claude Code lit automatiquement a chaque interaction. Il contient :

- **Le nom et le contexte du projet** : Sky Raptors, shoot'em up 2D vertical
- **L'architecture technique** : deux fichiers uniquement -- index.html et game.js
- **Les regles de code** : classes ES6, noms des classes (Player, Bullet, Enemy, Boss, PowerUp, Particle, Star, Game), boucle principale via requestAnimationFrame
- **Les constantes du jeu** : vitesse joueur 5 px/frame, vitesse tir 10 px/frame, cooldown tir 200ms, spawn ennemis toutes les 2000ms, HP boss 500, 3 vies, 150 etoiles, 20 particules par explosion
- **Une checklist des etapes** : Claude coche chaque etape au fur et a mesure, ce qui maintient la coherence
- **Des instructions de comportement** : ne pas reecrire les fichiers entiers, preferer ajouter du code, respecter les noms de classes existants

Sans ce fichier, Claude Code improvise : il change de style entre les prompts, reecrit des fichiers entiers, casse ce qui marchait. Avec ce fichier, chaque prompt s'integre proprement au code existant.

L'analogie : c'est comme briefer un collegue competent avant un projet. Plus le brief est clair, meilleur est le resultat.

### 2. Les 10 prompts

Chaque prompt est descriptif, precis, et inclut les valeurs numeriques (couleurs hex, vitesses en pixels, durees en millisecondes). Les prompts sont en francais et concus pour etre copies-colles.

## Les resultats cles -- Features du jeu

| Feature | Details techniques |
|---|---|
| Avion joueur | Formes geometriques (fuselage, ailes, cockpit, reacteurs), couleur cyan #00CFFF, flammes animees pulsantes |
| Systeme de tir | Classe Bullet, projectiles jaunes #FFE566, vitesse 10 px/frame, cooldown 200ms, touche Espace |
| Ennemis | Classe Enemy, avions rouges #FF4444, descente + mouvement sinusoidal (Math.sin), spawn toutes les 2000ms |
| Collisions | Detection AABB (rectsOverlap), destruction ennemis +100 points, perte de vie si ennemi atteint le bas |
| Explosions | 20 particules par explosion, 4 couleurs (orange, jaune, rouge, blanc), decay progressif, gravite |
| Fond etoile | 150 etoiles en parallax, 3 couches de vitesse differentes, effet de profondeur |
| HUD | Score en haut a gauche, niveau centre, vies en mini-avions en haut a droite, barre de progression du niveau en bas |
| Boss | 500 HP, barre de vie, 2 phases (accelere et tire plus vite sous 50% de vie), tire des bullets rouges |
| Power-ups | Shield (invincibilite temporaire), double tir, triple tir, drop 20% sur ennemis detruits |
| Menus | Ecran titre ("SKY RAPTORS" en cyan, Espace pour jouer), game over (overlay semi-transparent, score final) |
| Highscore | Stocke en localStorage, affiche sur ecran game over |
| Sons | Web Audio API : tir = square wave 880 a 220 Hz, explosion = sawtooth 150 a 40 Hz |

## Le process complet resume

Le process suit 5 etapes :

**Etape 1 -- La demo** : Le jeu est montre en action. Gameplay complet : tir, ennemis, explosions, boss, HUD, menus, sons. Le jeu est deja construit et fonctionnel.

**Etape 2 -- Le secret (le CLAUDE.md)** : Revelation du fichier CLAUDE.md. Explication de son role : briefer Claude Code avant de coder. Zoom sur les sections cles : architecture, regles de code, constantes, checklist. Sans ce fichier, le code part dans tous les sens apres 3-4 prompts.

**Etape 3 -- Les prompts (etape star)** : Demonstration des prompts cles et de leurs resultats. Format avant/apres : le prompt est montre a l'ecran, puis le resultat qu'il a produit. Les prompts les plus visuels sont mis en avant (avion, ennemis, collisions/explosions).

**Etape 4 -- Le polish** : Demonstration de la transformation "prototype vers jeu fini" en 3 prompts. Avant/apres : fond noir plat vers etoiles parallax, pas de HUD vers HUD complet, pas de boss vers boss a deux phases avec power-ups.

**Etape 5 -- Votre tour** : Recap du process (CLAUDE.md + 10 prompts + 15 minutes = jeu complet). Livraison du bonus : le prompt de debug.

## Les 10 prompts (version resumee)

1. **Structure HTML + boucle de jeu** : Creer index.html avec une page noire et un canvas 800x600 centre. Creer game.js avec une boucle de jeu via requestAnimationFrame. Le canvas affiche "SKY RAPTORS" en cyan au centre.

2. **Avion joueur** : Creer la classe Player qui dessine un avion de chasse en formes geometriques -- fuselage cyan, ailes pointues, cockpit bleu clair, deux reacteurs avec flammes animees qui pulsent.

3. **Controles clavier** : Ajouter le deplacement au clavier avec les fleches directionnelles et WASD. Clamper le joueur aux bords du canvas pour qu'il ne sorte pas.

4. **Systeme de tir** : Creer la classe Bullet. Projectiles jaunes #FFE566 qui montent a 10 px/frame. Cooldown de 200ms entre chaque tir. Declenchement avec la touche Espace.

5. **Ennemis** : Creer la classe Enemy. Avions rouges #FF4444 qui descendent avec un mouvement sinusoidal via Math.sin. Spawn toutes les 2000ms en haut du canvas a une position X aleatoire.

6. **Collisions** : Ajouter la detection de collision AABB entre les tirs et les ennemis. Destruction de l'ennemi = +100 points. Si un ennemi atteint le bas = perte d'une vie. 3 vies, game over a 0.

7. **Effets visuels** : Ajouter un fond etoile avec 150 etoiles reparties en 3 couches de vitesse (parallax). Ajouter des explosions de particules : 20 particules par explosion, couleurs orange/jaune/rouge/blanc, decay progressif.

8. **HUD** : Afficher le score en haut a gauche, le niveau au centre, les vies sous forme de mini-avions en haut a droite, une barre de progression du niveau en bas. Logique de niveau : +1 tous les 1000 points, les ennemis accelerent.

9. **Boss + power-ups** : Creer la classe Boss (500 HP, barre de vie, deux phases -- accelere et tire plus vite sous 50% HP). Creer la classe PowerUp (shield, double, triple tir) avec un drop rate de 20% sur les ennemis detruits.

10. **Menus + sons** : Ecran menu avec titre "SKY RAPTORS" en cyan et instruction pour demarrer. Ecran game over avec overlay semi-transparent, score final, highscore en localStorage. Sons via Web Audio API : tir = square wave 880 a 220 Hz, explosion = sawtooth 150 a 40 Hz.

## Le prompt de debug bonus

Quand un bug apparait dans le jeu, utiliser ce prompt :

"Le jeu a un bug : [description du bug]. Ne reecris pas tout le fichier. Montre-moi uniquement la portion de code a modifier, avec le nom de la methode et de la classe concernees. Explique en une phrase pourquoi c'est ce bug."

Ce prompt force Claude Code a corriger chirurgicalement au lieu de reecrire des blocs entiers, ce qui preserve le code existant et evite d'introduire de nouvelles regressions.

## Caracteristiques techniques

| Parametre | Valeur |
|---|---|
| Canvas | 800 x 600 px |
| Technologie | HTML Canvas 2D + Vanilla JS ES6 |
| Dependances | Aucune |
| Fichiers | index.html + game.js |
| Vitesse joueur | 5 px/frame |
| Vitesse tir | 10 px/frame |
| Cooldown tir | 200ms |
| Spawn ennemis | toutes les 2000ms |
| HP boss | 500 |
| Vies | 3 |
| Points par ennemi | 100 |
| Etoiles (fond) | 150 |
| Particules par explosion | 20 |

## Enseignements cles

1. **Briefer avant de coder** -- Le CLAUDE.md est l'equivalent d'un cahier des charges pour l'IA. Sans brief, l'IA improvise et le code diverge.
2. **Des prompts descriptifs et precis** -- Inclure les valeurs numeriques (vitesses, tailles, couleurs hex, comportements). Claude Code ne devine pas les intentions.
3. **Ajouter plutot que remplacer** -- Dire explicitement "ne touche pas au code existant, ajoute seulement" pour preserver le travail deja fait.
4. **Corriger chirurgicalement** -- Le prompt de debug est plus efficace que de redemander la fonctionnalite entiere.
5. **Le CLAUDE.md maintient la coherence** -- Sur 10 prompts, sans ce fichier, le style de code change, les noms de variables divergent, les fichiers sont reecrits. Avec ce fichier, tout reste coherent.

## A propos d'ISAO

ISAO est un organisme de formation specialise en Intelligence Artificielle et automatisation. On forme les entrepreneurs, independants et equipes a utiliser concretement l'IA pour gagner du temps, automatiser leurs process et developper leur activite.

- Formation IA : https://isao.io/formation-ia-b2c
- Communaute Skool : https://www.skool.com/isao-1009/about
