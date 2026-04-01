# Brief Vidéo : J'ai codé un jeu complet en 15 min avec Claude Code

**Date** : 2026-04-01
**Dossier** : output/sky-raptors-claude-code/
**Format** : Showcase + reveal de méthode (le jeu est DÉJÀ construit et fonctionnel)

## Informations

| Champ | Valeur |
|---|---|
| Outil | Claude Code (terminal / IDE) |
| Objectif | Le viewer comprend qu'il peut créer des applications complètes avec Claude Code sans coder, et il repart avec la méthode exacte (CLAUDE.md + prompts) |
| Public | Débutant / Intermédiaire (entrepreneurs, indépendants non-techniques) |
| Durée cible (long) | 10-12 min contenu + 3 min bridge = 13-15 min |
| Livrable clé | La méthode complète : le CLAUDE.md + les 10 prompts + le prompt de debug |
| Moment wow | Le jeu Sky Raptors complet qui tourne — boss, explosions, power-ups, sons — fait en 15 minutes |
| Bridge vidéo suivante | Comment installer Claude Code |

## Angle de la vidéo

**Le jeu est DÉJÀ construit et fonctionnel.** On ne refait PAS la construction en live étape par étape. On montre le résultat fini, puis on révèle la méthode.

Format : "Regardez ce que j'ai fait → voici exactement comment → vous pouvez le faire aussi"

**Ce qui change par rapport à un tuto live** :
- On MONTRE le jeu fini d'abord (pas de suspense sur le résultat)
- On EXPLIQUE la méthode (CLAUDE.md + prompts structurés)
- On PROUVE que ça marche en montrant des extraits du process (captures d'écran des prompts → résultats)
- On DONNE tout : les 10 prompts, le CLAUDE.md, le prompt de debug

## Contexte Cible

**Persona principal** : L'Idéateur (25-45 ans) — idée d'app/SaaS, bute sur le mur technique. Freelance Autonome (28-45 ans) — dépendant des prestataires tech.

**Frustration fondamentale** : "J'ai l'idée, mais pas les mains pour la construire."

**Croyances à désamorcer** :
- "Le code est pour les geeks" → Un jeu complet en 15 min sans taper une ligne
- "C'est trop complexe" → 10 prompts en français, c'est tout
- "L'IA génère des trucs bancals" → Boss, power-ups, sons, menus — tout marche

**Ton** : Direct, factuel, sobre, anti-gourou.

## Structure — 5 étapes

1. **La démo** — Jouer au jeu fini en live, montrer toutes les features
2. **Le secret** — Le CLAUDE.md : briefer Claude Code avant de coder (le vrai game-changer)
3. **Les prompts** ⭐ STAR STEP — Montrer les prompts clés + les résultats qu'ils ont produit (avant/après)
4. **Le polish** — Comment 3 prompts transforment un prototype moche en jeu fini
5. **Votre tour** — Résumé du process + bonus : modifier le jeu en live en 30s

## Le jeu Sky Raptors — Features

Shoot'em up 2D vertical en HTML Canvas + Vanilla JS. Fait avec 10 prompts :
- Avion joueur cyan avec flammes animées, contrôles clavier
- Système de tir avec bullets jaunes
- Ennemis rouges en patterns sinusoïdaux
- Collisions AABB avec explosions de particules (20 particules, 4 couleurs)
- Fond étoilé parallax (150 étoiles, 3 vitesses)
- HUD complet : score, niveau, vies (mini-avions), barre de progression
- Boss (500 HP, 2 phases, tire des bullets rouges)
- Power-ups : shield, double tir, triple tir
- Menus : écran titre, game over, highscore localStorage
- Sons Web Audio API : tir (square wave), explosion (sawtooth)

## Les 10 prompts (résumé)

1. Structure HTML + boucle de jeu (canvas 800×600, gameLoop)
2. Avion joueur (classe Player, fuselage/ailes/flammes animées)
3. Contrôles clavier (flèches + WASD, clamp aux bords)
4. Système de tir (classe Bullet, cooldown 200ms, Space)
5. Ennemis (classe Enemy, mouvement sinusoïdal, spawn 2s)
6. Collisions (AABB, score +100, vies -1, respawn)
7. Effets visuels (fond étoilé parallax, particules d'explosion)
8. HUD (score, LVL, vies mini-avions, barre progression, level up)
9. Boss + power-ups (500HP, 2 phases, shield/double/triple)
10. Menus + sons (titre, game over, highscore, Web Audio API)

**Bonus** : Prompt de debug ("Le jeu a un bug : [X]. Ne réécris pas tout. Montre uniquement la portion à modifier.")
