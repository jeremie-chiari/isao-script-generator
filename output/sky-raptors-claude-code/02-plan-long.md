# Plan Long — J'ai codé un jeu en 15 min avec Claude Code (Sky Raptors)

**Durée cible** : 11 min contenu + 3 min bridge = **14 min total**
**Structure** : 5 étapes
**Star step** : Étape 3 (Les prompts — montrer les prompts + résultats)
**Format** : Showcase + reveal (le jeu est déjà fait)

---

## INTRO (0:00-0:30) — P.P.P.

### PREUVE (0:00-0:05)
`[ÉCRAN LARGE]` — Le jeu Sky Raptors tourne en plein écran. Gameplay intense : tirs, ennemis, explosions, boss, HUD complet.
→ "Ça, c'est Sky Raptors. Tir, ennemis, boss, power-ups, explosions, sons. Un jeu complet."

### PROMESSE (5-15s)
`[FACE CAM]` — Annoncer la méthode.
→ "Je l'ai fait en 15 minutes. Sans écrire une seule ligne de code. Juste 10 prompts dans Claude Code. Aujourd'hui je vous montre la méthode en 5 étapes. L'étape 3 c'est la plus intéressante — c'est là que vous allez comprendre comment ça marche vraiment."

### PÉRIL (15-30s)
`[FACE CAM]` — Créer la tension.
→ "Mais il y a un truc que 90% des gens ne font pas avec Claude Code. Résultat : au bout de 3-4 prompts, le code part dans tous les sens et plus rien ne marche. Je vous montre le secret à l'étape 2."

**Pattern interrupt** : Mention des chapitres ("J'ai mis des chapitres si tu veux sauter à une partie")

---

## ÉTAPE 1 — La démo (0:30-2:30)

**Objectif** : Le viewer VOIT que le jeu est réel, complet, jouable. C'est pas un prototype, c'est un vrai jeu.
**Plan** : `[ÉCRAN LARGE]` → `[ZOOM ÉCRAN]` → `[ÉCRAN + PiP]` → `[FACE CAM]`

**Contenu** :
- Jouer au jeu EN LIVE — montrer le gameplay
- Pointer les features une par une : tir, ennemis sinusoïdaux, fond étoilé parallax
- Montrer les explosions de particules (20 particules, 4 couleurs)
- Montrer le HUD (score, niveau, vies en mini-avions, barre de progression)
- Montrer un power-up (shield/double tir)
- Montrer l'arrivée du boss (descend, barre de vie, tire des bullets)
- Montrer l'écran de menu + game over + highscore
- Résumé face cam : "Tout ça, c'est 10 prompts en français et un fichier secret."

**CTA ENGAGEMENT (~1:30)** :
"D'ailleurs, est-ce que vous avez déjà utilisé Claude Code ? Dites-moi dans les commentaires — et si vous avez un projet que vous n'avez jamais osé lancer parce que vous ne savez pas coder, dites-le aussi. Mettez un like si le concept vous intéresse, et abonnez-vous pour ne pas rater les tutos."

→ **Tease transition** : "Ok, le jeu est là. Maintenant le vrai sujet : comment j'ai fait. Et tout commence par un fichier que personne ne montre."

---

## ÉTAPE 2 — Le secret : le CLAUDE.md (2:30-4:30)

**Objectif** : Révéler le CLAUDE.md comme LA technique qui fait la différence. C'est le "secret" teasé en intro.
**Plan** : `[FACE CAM]` → `[ÉCRAN LARGE]` → `[ZOOM ÉCRAN]` → `[FACE CAM]`

**Contenu** :
- Face cam : "Le secret, c'est ce fichier. Le CLAUDE.md. C'est un brief technique que vous donnez à Claude Code AVANT de coder."
- Montrer le fichier CLAUDE.md à l'écran (scroll lent)
- Zoomer sur les sections clés :
  - **Architecture** : "Ici, je lui dis exactement quels fichiers créer et comment les organiser"
  - **Règles de code** : "Là, je lui dis d'utiliser des classes ES6, les noms des classes, la boucle principale"
  - **Constantes** : "Toutes les valeurs du jeu — vitesses, tailles, HP — c'est défini ici"
  - **Checklist** : "Et ça, c'est la liste des étapes. Claude coche au fur et à mesure."
- Face cam : "Sans ce fichier, Claude Code improvise. Il change de style entre les prompts, il réécrit des fichiers entiers, il casse ce qui marchait. Avec ce fichier, il sait exactement quoi faire."
- Analogie : "C'est comme briefer un collègue avant un projet. Plus le brief est clair, meilleur est le résultat."

→ **Tease transition** : "Ok, le brief est posé. Maintenant les prompts. Et c'est là que ça devient vraiment satisfaisant — vous allez voir le jeu se construire sous vos yeux."

---

## ÉTAPE 3 — Les prompts ⭐ STAR STEP (4:30-7:30)

**Objectif** : Montrer les prompts clés et les résultats qu'ils produisent. Le viewer VOIT la transformation prompt → résultat.
**Plan** : `[FACE CAM]` → `[ÉCRAN LARGE]` → `[ZOOM ÉCRAN]` → `[ÉCRAN + PiP]` → `[B-ROLL]` → `[FACE CAM]`

**Contenu** (montrer 4-5 prompts sur les 10, les plus visuels) :
- "10 prompts au total. Je vais vous montrer les plus importants — ceux qui produisent les résultats les plus visibles."

- **Prompt 1 (structure)** : Montrer le prompt → montrer le résultat (canvas noir avec "SKY RAPTORS" en cyan). "Un prompt, et la base est là."

- **Prompt 2 (avion)** : Montrer le prompt → résultat (avion cyan avec flammes animées). "Deux prompts, et on a un avion qui bouge avec les flèches."

- **Prompt 5 (ennemis)** : Montrer le prompt → résultat (ennemis rouges en sinusoïde). "Et là c'est le moment satisfaisant — les ennemis apparaissent."

- **Prompt 6 (collisions)** : Le moment clé — montrer le prompt → tirer sur un ennemi → EXPLOSION de particules. "Là, le jeu prend vie. C'est le moment où on passe de prototype à jeu."
  - Delayed reveal : ne pas montrer l'explosion immédiatement, face cam "et là..." → coupe vers l'écran → explosion

- Face cam : "10 prompts comme ça, en français, copiés-collés. Pas une ligne de code. Et je vous donne les 10 en fin de vidéo."

→ **Tease transition** : "On a un jeu qui marche. Mais regardez la différence entre ce qu'on a maintenant... et le résultat final. Les 3 prochains prompts transforment tout."

---

## ÉTAPE 4 — Le polish (7:30-9:30)

**Objectif** : Montrer l'avant/après des prompts de polish. La transformation de "prototype" à "jeu fini".
**Plan** : `[FACE CAM]` → `[ÉCRAN LARGE]` (split screen) → `[ZOOM ÉCRAN]` → `[B-ROLL]` → `[FACE CAM]`

**Contenu** (prompts 7, 8, 9) :
- **Avant/après fond étoilé** (prompt 7) : split screen — à gauche fond noir plat, à droite 150 étoiles en parallax. "Un prompt, et le fond passe de ça... à ça."
- **Avant/après HUD** (prompt 8) : split screen — sans HUD (pas de score, pas de vies) vs avec HUD complet. "Score, niveau, vies en mini-avions, barre de progression. Un prompt."
- **Le boss** (prompt 9) : Montrer le boss qui arrive, sa barre de vie, ses tirs, la phase 2 accélérée. "Et le boss final. 500 points de vie, deux phases, des power-ups qui tombent."
- Face cam : "3 prompts. C'est la différence entre un prototype et un jeu que tu as envie de montrer."

→ **Tease transition** : "Dernière étape. Et je vous ai gardé un bonus que personne ne montre — comment modifier le jeu APRÈS, en 30 secondes."

---

## ÉTAPE 5 — Votre tour (9:30-11:00)

**Objectif** : Résumer le process, donner le guide, et prouver que c'est itérable avec une modif en live.
**Plan** : `[FACE CAM]` → `[B-ROLL]` (récap visuel) → `[ÉCRAN LARGE]` → `[FACE CAM]`

**Contenu** :
- Récap visuel rapide : "Un CLAUDE.md + 10 prompts + 15 minutes = un jeu complet."
- Value stack : ✅ Structure → ✅ Joueur → ✅ Tir → ✅ Ennemis → ✅ Collisions → ✅ Effets → ✅ HUD → ✅ Boss → ✅ Menus → ✅ Sons
- "Le guide avec les 10 prompts et le CLAUDE.md, c'est en description."

### FIN — Les 60 dernières secondes

**-60s** : Rythme accéléré
**-45s** : Reveal final — récap rapide du process
**-30s** : Face cam — "Maintenant que vous avez la méthode, il y a un truc que personne ne montre..."
**-20s** : **BONUS** — Le prompt de debug. "Quand ça casse — et ça arrive — vous collez ce prompt : 'Le jeu a un bug, ne réécris pas tout, montre uniquement la portion à modifier.' Claude corrige chirurgicalement."

---

## BRIDGE COMMUNAUTÉ ISAO (11:00-14:00)

### Phase 1 — Transition naturelle (30s) `[FACE CAM]`
"Tu as maintenant tout pour créer ton propre jeu avec Claude Code. Mais il y a un endroit que j'aurais aimé avoir quand j'ai commencé — un espace pour poser mes questions et voir ce que les autres construisent. Je te le montre."

### Phase 2 — Visite Skool en direct (60s) `[ÉCRAN + PiP]`
Navigation dans la communauté ISAO sur Skool. Montrer le feed actif, le calendrier des lives, un post récent avec des réponses. "C'est la différence entre apprendre seul et apprendre avec un groupe."

### Phase 3 — Pourquoi + Prix (45s) `[FACE CAM]`
Stats : 5-7% de complétion solo vs 65% accompagné. Prix : 9€/mois, annulable en un clic. Contenu YouTube reste gratuit.

### Phase 4 — CTA + End Screen (45s) `[FACE CAM → END SCREEN]`
"Le lien est en description. Tu regardes, tu décides. Et si tu veux continuer gratuitement, la prochaine vidéo est juste là — je t'explique comment installer Claude Code."
End screen apparaît 5-10s avant la fin.
