# Plan Long : Créer un jeu 2D en 10 min avec Claude Code (0 compétence technique)

**Durée cible** : ~7 minutes
**Nombre d'étapes** : 3
**Étape star** : #2 — Le prompt visuel en action (le moment où "rien" devient "un vrai jeu")
**Bridge** : Comment installer Claude Code (tuto d'installation)

## Recherche & Vérifications

- **Version actuelle de Claude Code** : 2.1.76 (mars 2026), modèle Opus 4.6 par défaut, fenêtre de contexte 1M tokens
- **Dernières mises à jour notables** : Mode voix (/voice), tâches récurrentes (/loop), contexte étendu 1M tokens, nouveau modèle Opus 4.6
- **Environnement** : Antigravity IDE (IDE Google, fork de VS Code) avec Claude Code intégré nativement — interface visuelle plus accessible pour un public non-technique
- **Tutos existants sur le sujet** :
  - "Build a Retro Game with Claude Code in 20 Minutes" (anglais, 20 min, public dev) — on se différencie par : français, 7 min, 0 compétence technique, angle entrepreneur pas dev
  - Plusieurs tutos "create a game with Claude" existent en anglais (space shooters, flappy bird, one-button games) — quasi aucun en français, et aucun ciblant des non-techniques
  - Tuto Claude 3.5 Sonnet "créer un jeu en 3 minutes" existe mais utilise l'interface web (artifacts), pas Claude Code dans un IDE
- **Différenciation** : Seul tuto FR montrant la création d'un jeu avec Claude Code dans Antigravity pour un public non-technique. Angle "je suis pas dev et regardez ce que j'ai fait" vs "voici comment coder un jeu". Deux vrais tips actionnables (CLAUDE.md + prompt visuel).
- **Points à vérifier pendant le tournage** :
  - Claude Code est bien intégré et à jour dans Antigravity
  - Le jeu choisi doit être visuellement parlant (couleurs vives, mouvements) — space shooter recommandé
  - Préparer le CLAUDE.md et les prompts à l'avance pour éviter les temps morts
  - Avoir un prompt vague ET un prompt visuel prêts pour montrer la différence

## Structure P.P.P. (0:00-0:30)

### PREUVE (0-5s) — [ÉCRAN]
Le jeu 2D tourne en plein écran : un space shooter coloré avec des ennemis, des explosions, un score qui défile. Le jeu est fluide, jouable, visuellement impressionnant.
Voix : "Ce jeu, je l'ai créé en 10 minutes. Sans écrire une seule ligne de code."

### PROMESSE (5-15s) — [FACE CAM]
"En 7 minutes, je te montre les 3 étapes exactes pour faire la même chose avec Claude Code. Zéro compétence technique. L'étape 2, c'est là que tout se passe — tu vas voir un jeu complet apparaître sous tes yeux."

"Et en fin de vidéo, je te file mon process complet pour que tu puisses refaire exactement la même chose chez toi."

### PÉRIL / CURIOSITÉ (15-30s) — [FACE CAM]
"Mais il y a un piège. Si tu ouvres Claude Code et tu lui dis juste 'fais-moi un jeu', tu vas obtenir un truc générique et cassé. Il y a deux choses que personne ne montre et qui changent tout — je te les révèle à l'étape 2."

<!-- MONTAGE : Roadmap visuel apparaît — 3 étapes avec barre de progression. Étapes 2 et 3 floutées. -->

---

## Étape 1 : Briefer Claude Code — le CLAUDE.md + le prompt vague (0:30-2:30)

**Objectif** : Le viewer comprend comment ouvrir Antigravity, créer un CLAUDE.md, et voir les limites d'un prompt vague
**Résultat visible** : Antigravity est ouvert, le CLAUDE.md est créé, un premier résultat moyen est montré (flash)
**Points clés** :
- Ouvrir Antigravity — montrer l'interface visuelle, Claude Code est déjà intégré
- Créer le fichier CLAUDE.md : décrire le projet (jeu 2D, style néon, mécanique de tir, score) — "C'est comme briefer un collègue avant de lui confier un projet"
- Montrer un prompt vague : "Crée-moi un jeu de tir spatial" → Claude Code travaille → résultat moyen/basique (flash 3 secondes)
- Le résultat fonctionne mais c'est générique, pas impressionnant
**Erreur courante** : "La plupart des gens en restent là. Ils disent juste 'fais-moi un jeu'. Ça marche, mais le résultat est générique. La vraie technique, c'est l'étape 2."
**Transition** → "Tu vois ? Ça tourne, mais c'est basique. Maintenant je vais te montrer la technique qui change tout — et c'est là que personne ne va…"

---

## Étape 2 : Le prompt visuel — le jeu prend forme (2:30-5:00) ⭐ STAR STEP

**Objectif** : Le viewer découvre la technique du prompt visuel et voit la différence spectaculaire avec le prompt vague
**Résultat visible** : Le jeu tourne dans le navigateur — visuellement supérieur, jouable, avec graphismes néon, score, ennemis
**Points clés** :
- Introduire la technique : "Au lieu de dire ce que tu veux, décris ce que tu VOIS"
- Taper le prompt visuel détaillé : décrire l'écran noir avec étoiles, le vaisseau, les ennemis par vagues, les explosions en particules, les couleurs néon
- Claude Code génère → ouvrir le navigateur → résultat visuellement supérieur (c'est le moment wow)
- La tension se résout : le viewer VOIT la différence entre prompt vague et prompt visuel
- Jouer au jeu 30 secondes (montrer que c'est réel)
- Puis : demander une modification en live ("Ajoute des power-ups et change les couleurs")
- Montrer Claude Code qui modifie le jeu, rafraîchir → le jeu a changé en 30 secondes
**Erreur courante** : "L'erreur serait de ne jamais itérer. Le premier résultat est rarement parfait — mais en 2-3 échanges, tu as exactement ce que tu voulais."
**Transition** → "On a un jeu qui tourne. Maintenant, je vais te montrer le truc qui fait la vraie différence entre quelqu'un qui teste et quelqu'un qui crée…"

---

## Étape 3 : Personnaliser et s'approprier le jeu (5:00-6:30)

**Objectif** : Le viewer comprend que Claude Code n'est pas un gadget — c'est un outil de création
**Résultat visible** : Le jeu est personnalisé, unique, avec boss final et écran de victoire
**Points clés** :
- Demander des modifications ambitieuses : "Ajoute un boss final", "Mets un écran de victoire avec le meilleur score"
- Montrer le résultat : le jeu ressemble maintenant à un vrai jeu personnel
- Message clé : "Ce jeu, c'est le mien. J'ai décidé de chaque détail. Et je l'ai fait en 10 minutes sans savoir coder."
- Ouvrir sur les possibilités : "Aujourd'hui c'est un jeu. Demain c'est une app, un site, un outil pour tes clients."
**Erreur courante** : Aucune erreur ici — c'est le moment d'inspirer.
**Transition** → (pas de transition classique — on enchaîne sur le bonus)

---

## Bonus (dans les 30 dernières secondes)

**Bonus** : "Un truc que personne ne montre : si tu enregistres tes meilleurs prompts et ton CLAUDE.md dans un dossier, tu peux recréer un jeu similaire en 2 minutes la prochaine fois. C'est comme avoir des templates de création."

---

## Outro + Bridge (6:30-7:00)

- "Comme promis, le lien est en description pour récupérer mon process complet — le CLAUDE.md, les prompts, tout ce que j'ai utilisé."
- "Maintenant tu as vu ce que Claude Code peut faire. Si tu veux l'installer chez toi, j'ai fait une vidéo qui t'explique tout — c'est juste là."
- Pas de conclusion formelle — end screen pendant qu'on parle

<!-- MONTAGE : End screen avec vidéo "Installer Claude Code" PENDANT qu'on parle encore -->

---

## Estimations de durée

| Section | Durée estimée |
|---|---|
| Intro P.P.P. | 0:30 |
| Étape 1 — Briefer Claude Code | 2:00 |
| Étape 2 — Le prompt visuel ⭐ | 2:30 |
| Étape 3 — Personnaliser | 1:30 |
| Outro + Bridge | 0:30 |
| **TOTAL** | **~7:00** |
