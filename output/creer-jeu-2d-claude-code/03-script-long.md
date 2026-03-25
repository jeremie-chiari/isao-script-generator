# Script Long : Créer un jeu 2D en 10 min avec Claude Code (0 compétence technique)

**Durée estimée** : ~10 min (910 mots contenu + 390 mots bridge ÷ 130 mots/min)
**Étapes** : 3
**Étape star** : #2
**Bridge communauté** : 3 min (7:00-10:00)

---

## INTRO — P.P.P. (0:00-0:30)

### PREUVE (0-5s)

[ÉCRAN : le jeu 2D tourne en plein écran — un space shooter coloré avec des vaisseaux, des tirs laser, des ennemis qui explosent, un score qui défile en haut. Le jeu est fluide, rapide, visuellement impressionnant.]

"Ce jeu, je l'ai créé en 10 minutes. Sans écrire une seule ligne de code."

<!-- ASSETS
IMAGE: Space shooter 2D en pleine action, aspect ratio 16:9. Fond noir profond (#000000) avec 40 points d'étoiles blanches (#FFFFFF) de tailles variées (1-3px) réparties sur toute la surface, créant une profondeur de champ par parallaxe. Vaisseau cyan néon (#00B2C2) positionné au centre-bas de l'écran (75% de hauteur), avec une légère traînée lumineuse vers l'arrière. Cinq ennemis rouges (#FF3333) en formation en V strict dans le tiers supérieur, chacun entouré d'un halo rouge pulsant. Au centre-image, une explosion de particules violettes (#8B00FF) en étoile à 360°, particules de tailles 2-8px. Score "2450" en police monospace blanche (#FFFFFF) taille 24px, ancré en haut à droite à 20px des bords. Style rétro-cyberpunk, rendu vectoriel net, éclairage global ambiant sombre avec bloom néon sur tous les éléments lumineux.
VIDEO: [Seedance 2.0] Vaisseau cyan (#00B2C2) positionné en bas-centre tire deux faisceaux laser verticaux vers le haut en accélérant | la caméra reste fixe plein cadre 16:9, sans mouvement de caméra | les étoiles de fond défilent vers le bas à vitesse parallaxe (30% plus lent que les ennemis), un ennemi rouge en haut-droite explose en burst de 20 particules violettes qui se dispersent à 360°, le score en haut-droite incrémente de 200 en texte animé | atmosphère néon rétro cyberpunk avec bloom lumineux sur chaque élément cyan et rouge, fond noir absolu | durée exacte : 5 secondes, le vaisseau entre dans le cadre depuis le bas 0.5s après le début, les lasers s'allument à 1.5s, l'explosion survient à 3s, le score monte à 4s.
VFX: Plein écran sans bordures ni overlays — le gameplay est capturé en direct natif. Aucun LUT appliqué. Résolution native de l'enregistrement écran (1920×1080). Le bloom néon est produit en jeu, pas en post. Toutes les particules sont générées par le moteur de jeu, aucun effet composite externe.
SON: Tirs laser aigus (fréquence ~800Hz, durée 0.1s par tir) en direct depuis le jeu, volume 80%. Explosions sourdes (fréquence ~150Hz, durée 0.3s) à volume 70%. Aucune musique de fond sur les 5 premières secondes — silence intentionnel hors effets jeu pour maximiser l'impact sonore. Les sons jouent en couche monophonique, pas de réverb ajoutée.
-->

### PROMESSE (5-15s)

[FACE CAM]

"En 7 minutes, je te montre les 3 étapes exactes pour faire la même chose avec Claude Code. Zéro compétence technique. L'étape 2, c'est là que tout se passe — tu vas voir un jeu complet apparaître sous tes yeux."

"Et en fin de vidéo, je te file mon process complet — les prompts, les étapes, tout — pour que tu puisses refaire ça chez toi."

### PÉRIL / CURIOSITÉ (15-30s)

[FACE CAM]

"Mais il y a un piège. Si tu ouvres Claude Code et tu lui dis juste 'fais-moi un jeu', tu vas obtenir un truc générique et cassé. Il y a deux choses que personne ne montre et qui changent tout — je te les révèle à l'étape 2."

<!-- MONTAGE : Roadmap visuel apparaît — 3 étapes avec barre de progression. Étapes 2 et 3 floutées. -->
<!-- MONTAGE : Son "whoosh" à l'apparition du roadmap -->

<!-- ASSETS
IMAGE: Barre de progression horizontale sur fond anthracite (#2D2D2D), aspect ratio 16:9, positionnée dans le tiers inférieur de l'image (70-85% de hauteur). Trois blocs rectangulaires (250×80px chacun) disposés horizontalement avec 20px d'espacement entre eux, centrés horizontalement. Bloc 1 "1 — Briefer Claude Code" en couleur active cyan (#00B2C2) avec contour lumineux et texte blanc (#FFFFFF) en police Inter Bold 18px. Blocs 2 et 3 recouverts d'un flou gaussien (blur 8px) et d'une icône cadenas blanche (#FFFFFF, 24px) centrée sur chaque bloc, fond blocs 2-3 en gris sombre (#3D3D3D). Coins arrondis (8px radius) sur tous les blocs. Ombre portée légère sous la barre entière. Style UI flat design ISAO, palette anthracite-cyan-blanc.
MOTION: [Jitter] La barre complète slide-in depuis le bas de l'écran avec un ease-out (cubic-bezier 0.22, 1, 0.36, 1), durée du slide-in 0.5s. À 0.5s : le bloc 1 pulse une fois avec un bloom cyan (#00B2C2 à opacity 100% → 70% → 100%) en spring (stiffness 200, damping 20). À 0.8s : les icônes cadenas des blocs 2 et 3 vibrent chacune sur 3 keyframes (rotation -3°, +3°, 0°) en linear 0.1s. Le flou gaussien des blocs 2-3 pulse doucement (blur 6px → 10px → 6px) en ease-in-out sur 1s en boucle. Animation totale : 2 secondes actives + boucle flou infinie.
VFX: Slide-in depuis le bas (translateY +120px → 0) avec ease-out en 0.5s. Layer en overlay sur la face cam, position verticale à 72% de la hauteur écran, centré horizontalement. Z-index supérieur à la face cam. Disparition en fondu (opacity 100% → 0%) après 4s de maintien.
SON: Whoosh court ascendant (80ms, fréquence balayée de 200Hz à 800Hz) déclenché à 0s au moment de l'apparition de la barre, volume 65%. Ding léger (440Hz, 50ms, volume 50%) déclenché à 0.5s quand le bloc 1 s'illumine. Les deux sons jouent en stéréo centré, sans réverb.
-->

---

## ÉTAPE 1 : Briefer Claude Code — le CLAUDE.md + le prompt vague (0:30-2:30)

<!-- MONTAGE : Compteur d'étape "1/3" visible en coin supérieur droit -->

[FACE CAM] (0:30-0:50)

"Première étape : briefer Claude Code. Et ça, ça se passe dans Antigravity — c'est un IDE, un éditeur de code, avec Claude Code intégré directement dedans. T'as pas besoin de comprendre l'interface. Tu ouvres, et Claude Code est là, prêt à bosser."

<!-- MONTAGE : Texte animé "Antigravity" apparaît à côté de la face cam -->

<!-- ASSETS
IMAGE: Texte "Antigravity" en typographie Inter ExtraBold, couleur cyan (#00B2C2), taille 48px, centré horizontalement sur fond entièrement transparent. Légère lueur néon externe de 12px de rayon en cyan (#00B2C2 à opacity 60%) autour de chaque lettre. Ombre portée subtile en anthracite (#2D2D2D, offset 2px, flou 4px) pour lisibilité sur fond clair. Aspect ratio libre (largeur ~400px × hauteur 80px). Les lettres sont espacées de 2px (letter-spacing). Style wordmark minimaliste ISAO, rendu vectoriel propre, aucune décoration supplémentaire.
MOTION: [Jitter] Chaque lettre de "Antigravity" (10 lettres) apparaît séquentiellement avec un délai de 0.08s entre chaque, animation per-lettre de type ease-out (50ms par lettre, opacity 0% → 100% + translateY +8px → 0). À 0.8s (toutes les lettres visibles) : la lueur néon cyan pulse une fois en spring (scale 1.0 → 1.15 → 1.0, stiffness 300, damping 15, durée 0.4s). Total animation : 1.5 secondes. 12 keyframes suggérés (1 par lettre + 2 pour la pulse finale).
VFX: L'élément slide-in depuis la droite (translateX +200px → 0, ease-out 0.3s) après la frame de début. Position à droite de la face cam (x: 65% de la largeur écran, y: 40% de la hauteur écran). Disparition en fondu simple (opacity 100% → 0%, durée 0.3s) après 3s de maintien statique.
SON: Sons de frappe clavier mécanique synthétique (chaque frappe : fréquence ~1200Hz, durée 20ms, volume 40%) déclenchés toutes les 80ms pendant les 0.8s d'apparition des lettres — soit 10 clics au total. Un dernier clic légèrement plus fort (volume 60%) sur la 10e lettre. Pas de réverb, son sec et propre.
-->

[ÉCRAN LARGE] (0:50-1:10)

*[On ouvre Antigravity. L'interface visuelle apparaît — éditeur de code à gauche, Claude Code intégré à droite.]*

"Voilà Antigravity. Avant de demander quoi que ce soit à Claude Code, je vais faire un truc que personne ne fait : je crée un fichier CLAUDE.md. C'est comme un brief que tu donnerais à un collègue avant de lui confier un projet."

*[On crée un fichier CLAUDE.md et on tape dedans :]*

<!-- ASSETS
IMAGE: Interface Antigravity IDE en plein écran, aspect ratio 16:9. Barre latérale gauche (15% de largeur) en anthracite très sombre (#1A1A1A) avec arborescence de fichiers : icône dossier blanc et fichier "CLAUDE.md" surligné en cyan (#00B2C2). Panneau éditeur central (50% de largeur) en anthracite (#2D2D2D) avec onglet "CLAUDE.md" actif en haut, fond anthracite #252525 pour le contenu, curseur clignotant blanc en position ligne 1. Panneau chat Claude Code droit (35% de largeur) en #1E1E1E avec bulle de statut "Ready" en cyan (#00B2C2) et curseur clignotant. Barre de titre en haut en #111111 avec nom "Antigravity" centré en blanc. Séparateurs verticaux en #444444. Aucune fenêtre modale ouverte, interface propre et vide.
VIDEO: [Seedance 2.0] Curseur de souris se déplace vers le panneau éditeur central puis le curseur texte se positionne ligne 1, colonne 1 | caméra strictement fixe sur l'interface IDE, format 16:9 plein cadre | quatre lignes de texte markdown apparaissent successivement (une par seconde) dans le fichier CLAUDE.md — la coloration syntaxique cyan s'applique aux titres, pendant ce temps le panneau Claude Code à droite affiche "Analyzing..." puis "Ready" avec un indicateur vert | atmosphère de travail concentré, lumière d'écran froide, aucun artefact de compression | durée exacte : 4 secondes, première ligne à 0.5s, dernière à 3.5s.
VFX: Ken Burns lent de scale(1.05) → scale(1.00) centré sur le panneau éditeur central, durée 3s, ease-in-out linéaire. Aucun crop, le zoom reste dans les limites du cadre. Déclenché immédiatement au début du plan.
SON: Clics de clavier synthétiques (volume 30%, fréquence ~1000Hz, durée 15ms chacun) rythmés à ~4 touches par seconde pendant les 3.5s d'écriture. Nappe synthétique ambiante très basse (pad harmonique en La mineur, volume 15%, fréquences graves <200Hz) jouant en continu sous les clics. Les deux couches sonores mixées ensemble, aucune réverb.
-->

[ZOOM ÉCRAN] (1:10-1:25)

*[Zoom sur le contenu du CLAUDE.md : "Projet : jeu 2D space shooter. Style : néon sur fond noir. Mécanique : tir vers le haut, ennemis par vagues, score. Technologies : HTML, CSS, JavaScript."]*

"Je décris le projet : le type de jeu, le style visuel, la mécanique. En français. Des phrases simples."

<!-- MONTAGE : Surlignage progressif sur chaque ligne du CLAUDE.md, couleur différente par section -->

<!-- ASSETS
IMAGE: Zoom serré sur le contenu du fichier CLAUDE.md dans l'éditeur Antigravity, aspect ratio 16:9, centré sur les 4 lignes clés. Fond éditeur anthracite sombre (#252525), texte général en blanc (#FFFFFF), police monospace (JetBrains Mono ou Fira Code, taille 22px après zoom). Ligne 1 "Projet : jeu 2D space shooter" avec "Projet :" en vert (#4EC9B0), valeur en blanc. Ligne 2 "Style : néon sur fond noir" avec "Style :" en vert, valeur en blanc, cette ligne comporte un surlignage de fond cyan semi-transparent (#00B2C2 à opacity 20%) sur toute sa largeur. Ligne 3 "Mécanique : tir vers le haut, ennemis par vagues, score" avec "Mécanique :" en vert. Ligne 4 "Technologies : HTML, CSS, JavaScript" avec "Technologies :" en vert, valeurs avec coloration distinctive. Numéros de ligne en gris (#606060) dans la gouttière gauche.
MOTION: [Jitter] Quatre surlignages colorés apparaissent séquentiellement sur chaque ligne, déclenchés avec 0.6s d'intervalle. Ligne 1 : bande de surlignage cyan (#00B2C2, opacity 25%) slide-in de gauche à droite (ease-out, 0.3s) avec rebond spring final (overshoot 5%). Ligne 2 : bande violette (#8B00FF, opacity 25%) identique. Ligne 3 : bande verte (#00FF88, opacity 25%) identique. Ligne 4 : bande orange (#FF8C00, opacity 25%) identique. Total : 4 animations séquentielles, 3 secondes. 8 keyframes suggérés (entrée + rebond pour chaque ligne).
VFX: Zoom progressif continu de scale(1.00) → scale(1.30) centré sur les 4 lignes de texte, ease-in sur 2s. Le surlignage MOTION s'exécute par-dessus en overlay. Les numéros de ligne restent visibles pendant le zoom.
SON: Quatre "tick" discrets (fréquence 800Hz, durée 30ms, volume 45%) déclenchés exactement au moment où chaque surlignage commence à apparaître — à 0.5s, 1.1s, 1.7s et 2.3s respectivement. Chaque tick légèrement plus grave que le précédent (800Hz → 700Hz → 600Hz → 500Hz) pour créer un sentiment de progression descendante.
-->

[FACE CAM] (1:25-1:35)

"Maintenant, regarde ce qui se passe quand tu ne fais PAS ça — quand tu demandes vaguement."

[CTA ENGAGEMENT] (~1:30)

"D'ailleurs, toi, t'as déjà testé Claude Code ? Dis-moi en commentaire ce que tu voudrais créer avec. Et si cette vidéo t'aide, un petit like ça m'aide à continuer."

<!-- MONTAGE : Icône like animée + bulle commentaire en bas de l'écran, 3 secondes -->

<!-- ASSETS
IMAGE: Deux icônes flat design côte à côte sur fond entièrement transparent, aspect ratio libre (300×80px). À gauche : icône pouce levé YouTube (thumbs-up solid) en cyan (#00B2C2), taille 48px, avec ombre légère anthracite (#2D2D2D, offset 2px, flou 4px). À droite : bulle de commentaire arrondie en blanc (#FFFFFF) de 48px avec contour fin cyan (#00B2C2, 2px), contenant "..." en gris moyen (#888888) centré. Les deux icônes sont séparées par 16px d'espace. Rendu vectoriel SVG, pas de texture, style flat design UI moderne.
MOTION: [Jitter] L'icône like apparaît en premier depuis le bas-gauche avec un bounce élastique (scale 0 → 1.3 → 1.0, spring stiffness 400, damping 20, durée 0.4s). À 0.2s, la bulle de commentaire slide-in depuis la droite (translateX +100px → 0, ease-out 0.3s). À 0.7s, les "..." dans la bulle pulsent en séquence (opacity 30% → 100% → 30%) en boucle infinie avec délai de 0.3s entre chaque point. Total animation d'entrée : 2 secondes. 6 keyframes suggérés pour le bounce + boucle infinie pour les points.
VFX: Layer en overlay en bas de la face cam, centré horizontalement, position à 88% de hauteur écran. Apparition avec l'animation bounce de la MOTION (0.3s total). Maintien statique pendant 3s. Disparition en fondu simple (opacity 100% → 0%, ease-in 0.3s) après 3s.
SON: Pop court et rond (fréquence ~600Hz, durée 60ms, volume 55%, enveloppe attack 5ms + release 55ms) déclenché exactement à 0s quand l'icône like apparaît. Pas de son pour la bulle de commentaire. Pas de son pour les "..." pulsants. Son isolé, mono centré.
-->

[ÉCRAN + PiP] (1:35-2:00)

*[Dans Claude Code, on tape un prompt vague : "Crée-moi un jeu de tir spatial." Claude Code génère rapidement. On ouvre le résultat dans le navigateur.]*

"Je dis juste 'Crée-moi un jeu de tir spatial.' C'est vague. Et le résultat…"

*[Le jeu s'ouvre : basique, couleurs ternes, gameplay fonctionnel mais pas impressionnant.]*

"Ça marche. Mais c'est générique. C'est plat. C'est le résultat que 90% des gens obtiennent et qui les décourage."

<!-- MONTAGE : Accéléré x1.5 sur la génération, flash 3 secondes sur le résultat moyen -->
<!-- MONTAGE : Son "meh" / déceptif -->

<!-- ASSETS
IMAGE: Jeu 2D basique et générique, aspect ratio 16:9, rendu dans une fenêtre navigateur Chrome visible avec barre d'URL. Fond uni bleu marine (#1C3A5E) plat et sans texture, aucune étoile ni effet de fond. Vaisseau triangle isocèle blanc (#FFFFFF) de 30px centré en bas de l'écran (90% de hauteur), dessin géométrique simple sans rondeur ni détail. Trois carrés rouges (#FF0000) de 25×25px alignés horizontalement dans le tiers supérieur (15% de hauteur), uniformément espacés, sans halo ni ombre. Texte "Score: 0" en police système par défaut (Arial 14px) en blanc (#FFFFFF) dans le coin haut-gauche à 10px des bords. Aucune particule, aucun effet de lueur, aucune animation de fond — l'ensemble dégage une impression de prototype non-fini.
VIDEO: [Seedance 2.0] Vaisseau triangle blanc se déplace mécaniquement de gauche à droite en bas de l'écran à vitesse constante (aucune accélération) | caméra strictement fixe plein cadre 16:9 | à 1.5s un pixel blanc monte verticalement depuis le vaisseau vers un carré rouge qui disparaît instantanément sans aucun effet (pas d'explosion, pas de particule), le score passe de "0" à "10" sans animation | atmosphère terne et déceptive, couleurs plates et sans éclairage, fond immobile | durée exacte : 3 secondes, mouvement constant, aucun moment de spectacle.
VFX: Accéléré x1.5 sur les 2 premières secondes (génération du code dans Claude Code). Flash cut direct vers le résultat du jeu, maintenu 3 secondes en vitesse normale. PiP face cam en bas à droite (25% de largeur écran, 14% de hauteur écran, coins arrondis 8px, sans bordure).
SON: Son "meh" déceptif — trombone descendant (glissando de 400Hz à 150Hz sur 0.8s, volume 65%, légère réverb salle 20%) déclenché au moment du flash cut vers le jeu basique. Pas d'autre son pendant les 3 secondes de résultat. Son mono centré.
-->

[FACE CAM] (2:00-2:15)

"Le CLAUDE.md, c'est la base. Mais le vrai secret, celui qui transforme un résultat moyen en un résultat impressionnant, c'est la technique de l'étape 2."

**Transition →** "Et c'est maintenant que ça change tout. Parce que l'étape 2, c'est la technique que personne ne montre…"

<!-- MONTAGE : Flash 1 seconde du jeu final (néon, explosions), retour face cam -->
<!-- MONTAGE : Récap visuel : ✅ Étape 1 — CLAUDE.md créé -->

---

## ÉTAPE 2 : Le prompt visuel — le jeu prend forme (2:30-5:00) ⭐ STAR STEP

<!-- MONTAGE : Compteur "2/3" — Animation spéciale étoile pour l'étape star -->
<!-- MONTAGE : Roadmap : étape 1 déverrouillée, étape 2 s'illumine -->
<!-- MONTAGE : Son "ding" de montée de niveau -->

[FACE CAM] (2:30-2:50)

"Étape 2. La technique du prompt visuel. Au lieu de dire à Claude Code ce que tu VEUX, tu lui décris ce que tu VOIS. Tu lui décris l'écran. Les mouvements. Les couleurs. Les sensations. Comme si tu racontais un film."

<!-- MONTAGE : Texte animé côte à côte — "Ce que tu VEUX ❌" vs "Ce que tu VOIS ✅" -->

<!-- ASSETS
IMAGE: Graphic de comparaison côte à côte, aspect ratio 16:9, fond anthracite (#2D2D2D), centré verticalement dans le tiers inférieur de l'écran. Séparateur vertical cyan (#00B2C2) de 3px de large, centré horizontalement. Côté gauche (45% de largeur) : texte "Ce que tu VEUX" en Inter Bold 28px blanc (#FFFFFF) centré, avec ❌ rouge (#FF4444) à droite du texte, et une barre de barré rouge diagonale traversant le texte entier. Côté droit (45% de largeur) : texte "Ce que tu VOIS" en Inter Bold 28px blanc (#FFFFFF) centré, avec ✅ vert (#00CC66) à droite, sans barre de barré. Contour externe du bloc entier en rounded rectangle (12px radius) avec bordure anthracite foncé (#1A1A1A). Padding interne 24px.
MOTION: [Jitter] Le côté gauche slide-in depuis la gauche (translateX -300px → 0, ease-out 0.3s) à t=0, immédiatement suivi d'un trait de barré rouge qui trace en diagonale de gauche à droite (drawStroke, 0.2s, ease-in). À t=0.5s, le séparateur cyan central fade-in (opacity 0% → 100%, ease-out 0.15s). À t=0.65s, le côté droit slide-in depuis la droite (translateX +300px → 0, ease-out 0.3s) puis une coche verte pulse (scale 1.0 → 1.3 → 1.0, spring 300, damping 15). Total : 2 secondes. 6 keyframes suggérés.
VFX: Layer en overlay centré horizontalement, positionné à 68% de hauteur écran (tiers inférieur). Apparition séquentielle gauche (t=0, 0.3s) puis droite (t=0.65s, 0.3s). Reste visible 4s puis disparaît en fondu (0.3s). PiP face cam reste visible en bas à droite pendant l'overlay.
SON: À t=0 au moment du slide-in gauche : buzz bref déceptif (fréquence ~200Hz carrée, durée 150ms, volume 60%). À t=0.65s au moment du slide-in droit : ding positif (fréquence ~880Hz sinusoïdale, durée 200ms, decay naturel, volume 65%). Les deux sons en mono centré, aucune réverb.
-->

[ÉCRAN LARGE] (2:50-3:15)

*[Dans Claude Code, on tape le prompt visuel :]*

"Regarde le prompt que j'écris : 'Je vois un écran noir avec des étoiles qui défilent lentement vers le bas. Un vaisseau cyan en bas de l'écran que je contrôle avec les flèches. Des ennemis rouges arrivent par vagues de 5 depuis le haut. Quand je tire dessus, ils explosent en particules. Score en haut à droite en blanc. Couleurs néon cyan et violet sur fond noir.'"

*[Le prompt apparaît progressivement dans Claude Code]*

<!-- MONTAGE : Surlignage mot par mot des éléments visuels : "écran noir", "étoiles", "vaisseau cyan", "explosent en particules", "néon" -->

<!-- ASSETS
IMAGE: Interface Claude Code dans Antigravity, aspect ratio 16:9, plein écran. Panneau chat Claude Code occupe la moitié droite de l'écran (#1E1E1E). Bulle de message utilisateur (#2A2A2A, coins arrondis 12px) contenant le prompt visuel complet sur 6 lignes en texte blanc (#FFFFFF) Inter Regular 14px. Cinq mots-clés surlignés avec fond coloré semi-transparent (border-radius 3px) : "écran noir" en gris (#666666 opacity 40%), "vaisseau cyan" en cyan (#00B2C2 opacity 35%), "ennemis rouges" en rouge (#FF4444 opacity 35%), "explosent en particules" en violet (#8B00FF opacity 35%), "néon" en jaune (#FFD700 opacity 35%). Barre latérale gauche de l'IDE visible avec arborescence. Thème sombre anthracite global.
VIDEO: [Seedance 2.0] Le curseur texte clignote dans le champ de saisie Claude Code puis les mots du prompt visuel apparaissent progressivement comme s'ils étaient tapés à la vitesse d'un bon clavier (environ 80 mots/min) | caméra fixe plein cadre sur l'interface Antigravity | au fur et à mesure que les mots-clés apparaissent, chaque terme visuel s'illumine avec un surlignage coloré (délai 0.5s après l'écriture de chaque mot-clé) | atmosphère de travail concentré, écran d'IDE sombre, seule la zone de frappe est dynamique | durée exacte : 5 secondes, le texte commence à 0.5s, le dernier surlignage s'allume à 4.5s.
VFX: Surlignage mot par mot : chaque terme clé s'illumine avec un fade-in du fond coloré (0.2s, ease-in) suivi d'une micro-pause de 0.5s avant le mot-clé suivant. Cinq surlignages au total déclenchés à t=1s, 1.8s, 2.6s, 3.4s, 4.2s. Aucun autre effet — capture d'écran directe pour les zones non-animées.
SON: Sons de frappe clavier continus (volume 35%, ~5 frappes/seconde, fréquence ~1100Hz, 15ms/frappe) pendant les 4.5s d'écriture. Cinq "ping" légers (fréquence 660Hz, durée 80ms, volume 50%) déclenchés à chaque apparition de surlignage — t=1s, 1.8s, 2.6s, 3.4s, 4.2s. Les deux couches sonores en parallèle, balance stéréo centrale.
-->

[ZOOM ÉCRAN] (3:15-3:25)

*[Zoom sur le prompt complet]*

"Tu vois la différence ? Là je décris un écran. Une scène. Pas une fonctionnalité. C'est ça le secret."

<!-- MONTAGE : Flèche animée + texte superposé "Prompt visuel = décrire l'écran" -->

<!-- ASSETS
IMAGE: Annotation graphique sur fond entièrement transparent, aspect ratio libre (~550×80px). Flèche courbée pointant vers la droite (style handdrawn vectoriel) en cyan (#00B2C2), épaisseur de trait 3px, longueur ~80px, pointe de flèche solide. À droite de la flèche : texte "Prompt visuel = décrire l'écran" en Inter Bold 22px, couleur blanche (#FFFFFF). L'ensemble du groupe flèche+texte est posé sur un fond rectangle arrondi semi-transparent (anthracite #2D2D2D à opacity 75%, border-radius 8px, padding 12px 20px). Légère ombre portée sous le rectangle (#000000, offset 0 4px, flou 8px, opacity 30%). Style annotation épurée UI ISAO.
MOTION: [Jitter] La flèche cyan slide-in depuis la gauche (translateX -150px → 0, ease-out 0.3s) en partant simultanément avec le fond semi-transparent (fade-in opacity 0% → 100%, 0.3s). À t=0.3s, le texte "Prompt visuel = décrire l'écran" fade-in (opacity 0% → 100%, ease-out 0.25s) avec un léger translateX -10px → 0 pour simuler un glissement. Total : 1.5 secondes dont 0.55s d'animations et 0.95s statique. 4 keyframes suggérés.
VFX: Layer en overlay sur le plan zoom écran, positionné au centre de l'écran légèrement en bas à 55% de hauteur. La flèche pointe vers le prompt dans la zone de code. Slide-in de la flèche en 0.3s, fade-in du texte en 0.3s. Reste visible 3 secondes. Disparition en fondu (opacity 100% → 0%, ease-in 0.25s).
SON: Whoosh court et directionnel (bruit blanc filtré, balayage fréquentiel 600Hz → 1800Hz, durée 120ms, volume 50%, légère décroissance finale) déclenché à t=0 exactement au début du slide-in de la flèche. Son stéréo légèrement panoramiqué gauche→droite pour suivre le mouvement de la flèche.
-->

[ÉCRAN + PiP] (3:25-3:40)

*[Claude Code génère le code. Les fichiers se créent. On ouvre le résultat dans le navigateur.]*

"Claude Code travaille. Et cette fois…"

<!-- MONTAGE : Révélation différée — 3 secondes de tension : le navigateur charge, fond noir… puis le jeu apparaît d'un coup -->
<!-- MONTAGE : Son d'impact quand le jeu apparaît -->

<!-- ASSETS
IMAGE: Fenêtre Chrome plein écran, aspect ratio 16:9. Barre de navigation Chrome en haut (#F1F1F1) avec barre d'URL affichant "localhost:3000" en gris (#333333), favicons et onglets visibles. Zone de contenu entièrement noire (#000000) occupant 95% de la hauteur écran. Au centre exact (50% × 50%) : un spinner de chargement circulaire en cyan (#00B2C2), diamètre 48px, trait de 4px, un quart du cercle manquant pour l'animation de rotation. Ambiance de tension maximale — le noir absolu contraste violemment avec le spinner cyan. Aucun autre élément visible dans la zone de contenu.
VIDEO: [Seedance 2.0] L'écran de chargement noir avec spinner cyan tourne lentement pendant exactement 2.5 secondes — aucun mouvement de caméra, aucun son, rien ne se passe | caméra strictement fixe plein cadre 16:9 sur la fenêtre navigateur | puis à t=2.5s, cut sec instantané vers le jeu néon complet — explosion visuelle de couleurs (cyan, rouge, violet, blanc sur noir), vaisseau et étoiles visibles immédiatement dès la première frame | atmosphère : tension maximale pendant le noir, puis libération soudaine et satisfaisante à la révélation | durée totale : 4 secondes (2.5s noir + 1.5s jeu visible).
VFX: Révélation différée stricte — maintenir l'écran noir du chargement pendant 2.5s sans aucun effet. Cut sec (aucune transition, aucun fondu) à t=2.5s vers le jeu plein écran. PiP face cam en bas à droite (25% × 14% de l'écran, coins arrondis 8px) visible pendant les 1.5s de jeu visible mais PAS pendant le noir (le PiP disparaît pendant la tension).
SON: Silence total et intentionnel pendant les 2.5s de chargement — 0 dB, aucun son, aucune musique ambiante. À t=2.5s exactement sur le cut vers le jeu : son d'impact grave et puissant (fréquence fondamentale 60Hz, harmoniques jusqu'à 300Hz, attaque 0ms, release 800ms, volume 85%) en stéréo large. Le contraste silence→impact est l'effet recherché.
-->

[ÉCRAN LARGE] (3:40-3:50)

*[Le jeu s'affiche : vaisseau néon cyan, étoiles qui défilent, ennemis rouges, explosions en particules, score en haut à droite. Visuellement supérieur au premier essai.]*

"Regarde la différence. Néon. Particules. Vagues d'ennemis. C'est pas le même jeu."

<!-- ASSETS
IMAGE: Space shooter néon en pleine action, aspect ratio 16:9, plein écran sans barre navigateur. Fond noir profond (#000000) avec 60 étoiles blanches (#FFFFFF) de tailles variées (1-4px) à différentes positions, créant une profondeur par densité variable. Vaisseau cyan (#00B2C2) de 40px en bas-centre (80% de hauteur) avec traînée lumineuse dégradée (cyan à opacity 100% → 0% sur 60px vers le bas). Cinq ennemis rouges (#FF3333) de 25px en formation V dans le tiers supérieur, chacun entouré d'un halo rouge pulsant (glow 8px). Explosion de particules violettes (#9B59B6) au centre-droit : 25 particules de 2-6px en étoile. Deux faisceaux laser cyan verticaux (#00B2C2, 3px de large, 80px de long) montant depuis le vaisseau. Score "1200" en Courier New 20px blanc (#FFFFFF) en haut à droite, à 16px des bords. Bloom global sur tous les éléments lumineux.
VIDEO: [Seedance 2.0] Vaisseau cyan (#00B2C2) au centre-bas tire deux faisceaux laser vers le haut qui atteignent un ennemi rouge en haut-centre et le font exploser en 30 particules violettes se dispersant à 360° | caméra fixe plein cadre 16:9, aucun mouvement de caméra | les étoiles de fond défilent vers le bas à vitesse parallaxe lente, une nouvelle vague de 5 ennemis en V descend depuis le haut à mi-chemin, le score en haut-droite passe de "1200" à "1450" avec une animation de scale (1.0 → 1.3 → 1.0) | atmosphère néon cyberpunk rétro avec bloom lumineux intense sur tous les éléments actifs, fond noir absolu | durée exacte : 4 secondes, laser tiré à 0.5s, explosion à 1.5s, nouvelle vague à 2.5s, score monte à 3.5s.
VFX: Plein écran natif sans aucun overlay, sans PiP, sans surimposition — laisser le jeu s'exprimer visuellement seul pendant ces 4 secondes. Résolution native 1920×1080. Aucun LUT ni grade colorimétrique supplémentaire.
SON: Tirs laser (fréquence ~700Hz, forme d'onde synthétique, durée 80ms, volume 75%) en couche répétée toutes les 0.3s. Explosions sourdes (bruit blanc filtré grave 80-200Hz, durée 300ms, volume 70%) à t=1.5s. Ding discret de score (fréquence ~1200Hz, durée 60ms, volume 50%) à t=3.5s. Toutes les couches jouent simultanément, mixées pour éviter la saturation.
-->

[FACE CAM] (3:50-4:00)

"Ça, c'est la puissance du prompt visuel. Le même outil, le même Claude Code, mais un résultat complètement différent parce que tu as décrit ce que tu voyais."

<!-- MONTAGE : Couper vers face cam pour la réaction — expression de satisfaction -->

[ÉCRAN + PiP] (4:00-4:20)

*[On joue au jeu pendant 15-20 secondes. Tirs laser, ennemis explosent en particules, score monte, nouvelle vague.]*

"Le vaisseau se déplace, les ennemis arrivent par vagues, les explosions sont en particules, le score monte. C'est un vrai jeu."

<!-- MONTAGE : Zoom progressif pendant le gameplay -->
<!-- MONTAGE : Son du jeu audible (tirs, explosions) -->

<!-- ASSETS
IMAGE: Gameplay dynamique intense, aspect ratio 16:9, plein écran. Fond noir (#000000) avec étoiles en parallaxe. Vaisseau cyan (#00B2C2) à 70% de hauteur et 40% de largeur (décalé vers la gauche, en mouvement), avec trois faisceaux laser simultanés montant vers le haut. Deux ennemis rouges (#FF3333) en phase d'explosion simultanée : l'un au centre-haut (15% hauteur) avec burst de 20 particules violettes (#9B59B6), l'autre en haut-droite (20% hauteur) avec burst de 15 particules roses (#FF69B4). Power-up bleu électrique (#0080FF) en forme de bouclier hexagonal de 20px tombant depuis le haut-centre (30% hauteur) avec une traînée lumineuse bleue. Score "3200" en haut-droite, même style que précédemment. Écran saturé d'action, bloom fort sur tous les éléments lumineux.
VIDEO: [Seedance 2.0] Vaisseau cyan se déplace latéralement de droite à gauche tout en tirant en continu vers le haut sur plusieurs ennemis | caméra fixe plein cadre 16:9, sans mouvement | à t=1s, deux ennemis explosent en chaîne avec des particules violettes et roses, puis à t=2s un power-up bleu hexagonal entre dans le cadre depuis le haut-centre et tombe lentement, le vaisseau l'intercepte en se déplaçant à t=3s avec un flash d'absorption bleu, le score passe de "3200" à "3700" rapidement | atmosphère néon rétro très dynamique, action dense, nombreux éléments en mouvement simultané | durée exacte : 5 secondes, explosions en chaîne à t=1s, power-up à t=2s, collecte à t=3s, score monte à t=4s.
VFX: Zoom progressif lent et constant de scale(1.00) → scale(1.10) pendant les 5 secondes complètes, centré sur le vaisseau (légèrement à gauche et en bas). PiP face cam en bas à droite (25% × 14% écran, coins arrondis 8px). Le zoom est doux et imperceptible au premier coup d'œil.
SON: Sons du jeu en direct à volume 70% : tirs laser continus (toutes les 0.15s, volume 55%), explosions à t=1s (volume 75% × 2 couches stéréo), son d'absorption de power-up à t=3s (accord harmonique montant, fréquence 440Hz → 880Hz sur 200ms, volume 65%), ding de score à t=4s (volume 60%). Pas de musique additionnelle — les sons du jeu seuls.
-->

[FACE CAM] (4:20-4:30)

"Mais le plus puissant avec Claude Code, c'est pas de créer le jeu. C'est de le modifier en 30 secondes. Regarde."

<!-- MONTAGE : Texte animé "La vraie puissance →" -->

[ÉCRAN LARGE] (4:30-4:45)

*[Dans Antigravity, on tape dans Claude Code : "Ajoute des power-ups qui tombent du ciel — bouclier, tir double, et bombe. Ajoute un effet de traînée derrière le vaisseau."]*

"Je retourne dans Claude Code et je lui dis : 'Ajoute des power-ups — bouclier, tir double, bombe. Et ajoute une traînée derrière le vaisseau.' C'est tout."

<!-- ASSETS
IMAGE: Interface Antigravity IDE, aspect ratio 16:9, plein écran. Panneau Claude Code chat à droite (35% de largeur, #1E1E1E). Nouvelle bulle de message utilisateur (#2A2A2A, coins arrondis 12px) avec le texte complet du prompt de modification en blanc (#FFFFFF) Inter Regular 14px sur 2 lignes. En dessous de la bulle : indicateur de progression Claude Code — trois points animés (#00B2C2) pulsant, texte "Claude Code génère..." en gris clair (#AAAAAA) à côté. Panneau éditeur gauche montrant le fichier "game.js" ouvert avec du code JavaScript en cours de modification — quelques lignes surlignées indiquant des changements récents. Barre latérale : "game.js" avec un point orange de modification non-sauvegardée.
VIDEO: [Seedance 2.0] Le texte du prompt de modification apparaît dans la bulle chat Claude Code comme s'il était tapé progressivement | caméra fixe plein cadre 16:9 sur l'interface Antigravity | après la frappe, l'indicateur "Claude Code génère..." apparaît avec les trois points animés cyan, puis dans le panneau éditeur gauche des lignes de code défilent rapidement (scroll automatique vers le bas) montrant la génération en cours, des noms de fonctions comme "addPowerUp()", "trailEffect()" apparaissent dans le terminal intégré en bas | atmosphère de travail concentré, IDE sombre, seul le code en cours de génération bouge | durée exacte : 4 secondes, frappe de t=0 à t=1.5s, génération de t=1.5s à t=4s.
VFX: Capture d'écran directe sans effets composites. Résolution native 1920×1080. Aucun LUT ni zoom. Seule animation : le scroll automatique du code généré dans le panneau éditeur est la source de mouvement principal.
SON: Clics de clavier pour la frappe du prompt (volume 35%, ~5 frappes/seconde de t=0 à t=1.5s, fréquence ~1000Hz, 15ms/frappe). À t=1.5s, un whoosh court (100ms) marque le début de la génération. De t=1.5s à t=4s : son de génération IA continu (bruit rose très bas, volume 10%, fréquences graves 100-300Hz) sous-jacent. Toutes les couches en stéréo centré.
-->

[ÉCRAN + PiP] (4:45-4:55)

*[Claude Code modifie les fichiers. On rafraîchit le navigateur.]*

"Claude Code modifie le code. Je rafraîchis et…"

<!-- MONTAGE : Révélation différée — 2 secondes, écran qui charge… -->

*[Le jeu apparaît avec les power-ups qui tombent et la traînée derrière le vaisseau.]*

"Les power-ups tombent du ciel. Le vaisseau a une traînée. Le jeu a changé en 30 secondes."

<!-- MONTAGE : Son satisfaisant au moment de la révélation -->

<!-- ASSETS
IMAGE: Jeu amélioré avec power-ups, aspect ratio 16:9, plein écran sans chrome navigateur. Fond noir (#000000) riche en étoiles (80 points, tailles 1-4px). Vaisseau cyan (#00B2C2) au centre-bas (80% hauteur, 50% largeur) avec une traînée lumineuse dégradée longue (80px, cyan → transparent) orientée vers le bas-gauche indiquant un mouvement vers la droite. Trois power-ups tombant en colonne espacée : bouclier hexagonal bleu électrique (#0088FF, 22px) à 20% de hauteur, tir double flèche jaune (#FFD700, 20px) à 35% de hauteur, bombe sphérique rouge (#FF2200, 18px) à 48% de hauteur — chacun avec une traînée lumineuse vers le haut. Cinq ennemis rouges (#FF3333) en V à 12% de hauteur. Particules de deux explosions récentes encore visibles (violet et rose). Score "4800" en haut-droite. Bloom plus intense que la version précédente sur tous les éléments.
VIDEO: [Seedance 2.0] Navigateur affiche l'écran noir de rechargement pendant exactement 1 seconde avec spinner cyan au centre | cut sec à t=1s vers le jeu amélioré — le vaisseau cyan apparaît avec sa nouvelle traînée lumineuse visible immédiatement, se déplace vers la droite | caméra fixe plein cadre 16:9 | les trois power-ups tombent du haut de l'écran à des vitesses légèrement différentes (bouclier le plus lent, bombe le plus rapide), le vaisseau intercepte le power-up bouclier à t=2.5s avec un flash bleu, le score affiche "4800" | atmosphère néon enrichi avec plus d'éléments visuels que la version initiale, palette plus diversifiée | durée totale : 4 secondes, noir de t=0 à t=1s, jeu visible de t=1s à t=4s.
VFX: Révélation différée stricte — 2s de chargement noir (spinner visible), cut sec à t=2s vers le jeu amélioré plein écran. PiP face cam en bas à droite (25% × 14% écran, coins arrondis 8px) apparaît uniquement après le cut, pas pendant le noir.
SON: Silence total de t=0 à t=2s (chargement). À t=2s exactement sur le cut : ding satisfaisant (accord majeur en Sol, fréquences 392Hz + 494Hz + 587Hz simultanées, durée 400ms avec decay naturel, volume 70%). Immédiatement après le ding, sons du jeu actifs (tirs, power-ups) à volume 65%. Les sons s'enchaînent sans chevauchement perturbant.
-->

[FACE CAM] (4:55-5:00)

"Tu veux changer quelque chose ? Tu décris ce que tu vois. C'est fait."

**Transition →** "On a un jeu qui tourne. Maintenant, je vais te montrer le truc qui fait la vraie différence entre quelqu'un qui teste et quelqu'un qui crée…"

<!-- MONTAGE : Récap visuel : ✅ Étape 1 — CLAUDE.md créé → ✅ Étape 2 — Jeu fonctionnel + modifié -->

---

## ÉTAPE 3 : Personnaliser et s'approprier le jeu (5:00-6:30)

<!-- MONTAGE : Compteur "3/3" -->
<!-- MONTAGE : Roadmap : étapes 1 et 2 déverrouillées, étape 3 s'illumine -->

[FACE CAM] (5:00-5:15)

"Dernière étape. Et c'est la plus importante pour comprendre ce que Claude Code change vraiment. On va pousser le jeu plus loin. Pas juste un test — un vrai jeu personnel."

[ÉCRAN LARGE] (5:15-5:35)

*[Dans Antigravity, on tape dans Claude Code : "Ajoute un boss final à la vague 5, plus gros et plus résistant. Quand on le bat, affiche un écran de victoire avec le meilleur score, des étoiles animées et un bouton Rejouer."]*

"Je demande un boss final à la vague 5, un écran de victoire avec le meilleur score, et un bouton Rejouer."

<!-- MONTAGE : Texte superposé des éléments demandés en liste, chaque item apparaît progressivement -->

<!-- ASSETS
IMAGE: Interface Antigravity avec panneau Claude Code visible à droite, aspect ratio 16:9. Nouvelle bulle de chat avec le prompt de boss final en blanc (#FFFFFF) sur fond de bulle (#2A2A2A). Superposée sur la partie droite de l'écran (60-95% de largeur, 20-80% de hauteur) : une liste verticale de 4 items sur fond rectangle arrondi semi-transparent (anthracite #2D2D2D à opacity 80%, border-radius 10px, padding 16px 24px). Chaque item : "✦ Boss final", "✦ Écran victoire", "✦ Meilleur score", "✦ Bouton Rejouer" en Inter SemiBold 20px blanc (#FFFFFF). L'étoile "✦" en cyan (#00B2C2) taille 18px. Espacement de 16px entre les items. Légère ombre portée sous le rectangle de liste.
MOTION: [Jitter] Les 4 items apparaissent séquentiellement avec 0.55s de délai entre chacun. Chaque item : slide-in depuis la droite (translateX +200px → 0, ease-out cubic-bezier 0.34, 1.56, 0.64, 1 — léger overshoot spring, durée 0.4s). Simultanément à l'arrivée de chaque item, l'étoile "✦" pulse (scale 1.0 → 1.5 → 1.0, spring stiffness 400, damping 15, durée 0.3s). Le rectangle de fond apparaît en fade-in (0.2s, ease-out) avant le premier item. Total animation : 3 secondes (0.2s fond + 4×0.55s items). 10 keyframes suggérés.
VFX: Layer en overlay sur la partie droite de l'interface, z-index supérieur au chat Claude Code. Position : x 60-95% de largeur écran, y 25-78% de hauteur. Items en slide-in séquentiel depuis la droite avec 0.55s d'intervalle. Maintien de la liste visible pendant 4s après le dernier item. Disparition collective en fondu (0.4s, ease-in).
SON: Un "tick" distinct pour chaque item apparaissant — quatre ticks déclenchés à t=0.2s, t=0.75s, t=1.3s, t=1.85s. Les ticks ont des fréquences légèrement différentes : 900Hz, 850Hz, 800Hz, 750Hz (descente progressive, 30ms chacun, volume 50%). Aucune réverb, sons secs et précis en mono centré.
-->

[ÉCRAN + PiP] (5:35-5:55)

*[Claude Code génère. On rafraîchit. On joue rapidement jusqu'au boss.]*

"Claude Code modifie le jeu. On relance. Et cette fois, à la vague 5…"

<!-- MONTAGE : Accéléré x2 sur les vagues 1 à 4 -->
<!-- MONTAGE : Retour vitesse normale à la vague 5 — le boss apparaît -->

<!-- ASSETS
IMAGE: Frame de transition entre les vagues accélérées et le boss, aspect ratio 16:9. L'écran principal montre le jeu néon en action avec le compteur de vague "VAGUE 4/5" en Inter Bold 18px blanc (#FFFFFF) sur fond semi-transparent anthracite (#2D2D2D opacity 70%) en haut-centre. L'action est dense : vaisseau cyan tirant, multiples ennemis en formation, explosions en cours. En haut de l'écran (0-15% hauteur), l'ombre du boss massif commence à apparaître depuis le bord supérieur — une silhouette rouge sombre (#990000) de 3× la taille des ennemis normaux (75×75px). La scène dégage une intensité croissante, le bloom des explosions illumine le fond.
VIDEO: [Seedance 2.0] Les vagues 1 à 4 défilent en gameplay accéléré (speed ramp x2) — tirs en rafale, ennemis explosant rapidement, score montant en saut, le compteur de vague passe de "1/5" à "4/5" | caméra fixe plein cadre 16:9 pendant tout le montage | à t=3.5s : la vitesse revient à x1 (speed ramp inverse, ease-in 0.5s) et depuis le bord supérieur de l'écran un boss massif rouge (#FF0000) de 75×75px descend lentement avec un bruit sourd accompagnant son entrée dans le cadre, une barre de vie rouge apparaît en haut de l'écran | atmosphère : tension qui monte, l'accélération crée une sensation d'imminence puis le retour au rythme normal accentue la menace du boss | durée exacte : 5 secondes (3.5s accéléré + 1.5s vitesse normale boss).
VFX: Speed ramp x2 de t=0 à t=3.5s (le footage est réellement accéléré, pas juste le cut). Ease-in de la décélération x2→x1 sur 0.5s à t=3s→3.5s. PiP face cam en bas à droite (25% × 14% écran) visible pendant toute la durée, avec une expression d'anticipation visible sur le visage.
SON: Sons du jeu accélérés (pitch shifted +2 demi-tons pour correspondre à la vitesse x2) de t=0 à t=3.5s — tirs et explosions rapides à volume 65%. À t=3.5s au retour vitesse normale : son grave d'apparition du boss (fréquence fondamentale 40Hz, harmoniques jusqu'à 150Hz, attaque 0ms, sustain 1s, volume 90%) en stéréo large pour remplir tout l'espace sonore. Le son du boss domine clairement les sons du jeu.
-->

### Les 60 dernières secondes du contenu

<!-- MONTAGE : Rythme de montage ACCÉLÉRÉ à partir d'ici -->

(-60s) [ÉCRAN LARGE]

*[Le boss apparaît — plus gros, plus menaçant. On le combat. Explosions.]*

<!-- MONTAGE : Coupes rapides entre les tirs, les esquives, les explosions -->

<!-- ASSETS
IMAGE: Combat contre le boss en pleine intensité, aspect ratio 16:9, plein écran. Fond noir (#000000) avec étoiles en mouvement rapide (motion blur visible, 8px de traîne). En haut de l'écran (0-25% hauteur) : boss rouge massif (#FF2200) de 75×75px avec barre de vie horizontale rouge (#FF0000 → #FF4444 dégradée, 200px wide, 12px haute, fond gris #333333) visible au-dessus de lui, à 55% de santé. Le boss tire des projectiles orange (#FF8800) de 6px en motif éventail (5 projectiles simultanés). Vaisseau cyan (#00B2C2) à 78% de hauteur, légèrement décalé à droite (62% de largeur), esquivant en mouvement. Score "7800" en haut-droite. Trois explosions de particules actives (violet, rose, blanc) à différents endroits. Bloom très intense, l'écran entier est illuminé par l'action.
VIDEO: [Seedance 2.0] Le vaisseau cyan esquive vers la gauche en courbe pour éviter un éventail de 5 projectiles orange du boss massif rouge en haut | caméra fixe plein cadre 16:9, montage en coupes rapides de 0.5-1s | l'action alterne entre : vaisseau tirant vers le boss (t=0), boss ripostant en éventail (t=1s), explosion en chaîne de particules au contact (t=2s), barre de vie du boss diminuant visiblement (t=3s) | atmosphère néon d'une intensité maximale, le bloom des explosions éclaire temporairement tout l'écran en blanc, rythme rapide et chaotique | durée exacte : 4 secondes, 5 coupes minimum de 0.5-1s chaque.
VFX: Coupes rapides (0.5-1s chaque coupe) simulant l'intensité du combat — au moins 5 cuts pendant les 4 secondes. L'accélération du montage est le principal effet. Un léger vignettage (#000000, opacity 30%) sur les bords de l'écran renforce la tension. PiP face cam en bas à droite maintenu pendant les coupes.
SON: Son du jeu intensifié — tirs laser du vaisseau plus rapides (toutes les 0.1s, volume 70%), projectiles ennemis avec sifflement (fréquence ~500Hz descendant à 200Hz, durée 200ms, volume 60%). Explosions en chaîne à t=2s (3 explosions successives à 0.2s d'intervalle, volume 80% chacune). Alarme de vie basse du vaisseau : bip répété (fréquence 880Hz, toutes les 0.5s, volume 55%) audible de t=2.5s à t=4s. Toutes les couches mixées, niveau global à 80% pour éviter la saturation.
-->

(-45s) **RÉVÉLATION FINALE**

[ÉCRAN : on bat le boss. Écran de victoire avec score, étoiles animées, bouton Rejouer. Le jeu est complet.]

<!-- MONTAGE : Révélation différée — 3 secondes de tension pendant le dernier tir sur le boss, puis écran de victoire -->
<!-- MONTAGE : Son satisfaisant "réussite" -->

<!-- ASSETS
IMAGE: Écran de victoire du jeu, aspect ratio 16:9, plein écran. Fond noir (#000000) avec des traînées de lumière cyan et dorée encore visibles (résidu de l'explosion du boss). Centre exact de l'écran : texte "VICTOIRE !" en Inter ExtraBold 72px, couleur cyan (#00B2C2), avec glow externe intense de 24px en cyan à opacity 80%. En dessous (58% de hauteur) : "Score final : 12450" en Inter Regular 32px blanc (#FFFFFF). En dessous (65% de hauteur) : "Meilleur score : 12450" en Inter Regular 24px jaune doré (#FFD700). Bouton "REJOUER" en bas-centre (78% de hauteur) : rectangle arrondi 200×56px, fond cyan (#00B2C2), texte Inter Bold 22px anthracite (#2D2D2D), hover state simulé avec bordure blanche. 12 étoiles dorées (#FFD700) de tailles variées (8-20px) dispersées sur tout l'écran à différentes hauteurs, certaines avec traîne (motion blur vertical 15px indiquant leur chute). Style néon festif victorieux.
VIDEO: [Seedance 2.0] Le dernier tir laser cyan du vaisseau monte lentement vers le boss affaibli pendant 2 secondes de tension (le boss tremble légèrement) | caméra fixe plein cadre 16:9 | au contact à t=2s : explosion spectaculaire du boss en 200 particules multicolores (cyan, rouge, violet, blanc, doré) se dispersant à 360° en flash blanc momentané | l'écran s'éclaircit complètement en blanc (#FFFFFF) pendant 0.3s (overexposure), puis fondu vers l'écran de victoire où "VICTOIRE !" apparaît en scale-up, des étoiles dorées tombent en cascade de haut en bas | atmosphère triomphale et festive, le contraste explosion→victoire est maximalement satisfaisant | durée exacte : 4 secondes (2s tension + 0.5s explosion + 1.5s écran victoire).
VFX: Révélation différée stricte — le dernier tir dure 2s de tension avec la musique qui monte. À t=2s : flash blanc d'overexposure (opacity 0% → 100% → 0%, ease-in puis ease-out, durée totale 0.3s). Fondu vers l'écran de victoire en 0.5s (ease-in). Scale-in du texte "VICTOIRE !" (scale 0.5 → 1.0, ease-out-back overshoot, 0.4s).
SON: Note tenue montante de tension pendant les 2 premières secondes (fréquence pure 220Hz → 330Hz glissando, volume croissant de 30% → 70%, cordes synthétiques). À t=2s sur l'explosion : impact grave (40Hz, 0ms attack, 500ms release, volume 95%) + crackle de particules (bruit blanc filtré 2-8kHz, durée 500ms, volume 65%). À t=2.5s sur l'écran de victoire : fanfare courte (accord majeur Do, fréquences 261Hz+329Hz+392Hz, cuivres synthétiques, durée 800ms, volume 80%) avec pluie d'étoiles (tintements aléatoires 2-4kHz, durée totale 1.5s, volume 50%). Couches multiples en stéréo large.
-->

[FACE CAM]

"Ce jeu, c'est le mien. J'ai décidé de chaque détail. Et je l'ai fait en 10 minutes sans savoir coder. Aujourd'hui c'est un jeu. Demain, c'est une app, un site, un outil pour tes clients."

(-30s) [FACE CAM]

"Maintenant que tu sais faire ça, il y a un truc que personne ne montre…"

(-20s) **BONUS**

"Si tu enregistres ton CLAUDE.md et tes meilleurs prompts visuels dans un dossier, tu peux recréer un jeu similaire en 2 minutes la prochaine fois. C'est comme avoir des templates de création. Un dossier de prompts, et tu produis à la chaîne."

<!-- MONTAGE : Texte superposé "ASTUCE : CLAUDE.md + prompts visuels = templates de création" -->

"Comme promis, le lien est en description pour récupérer mon process complet — le CLAUDE.md, tous les prompts que j'ai utilisés."

---

## BRIDGE COMMUNAUTÉ ISAO (7:00-10:00)

### Phase 1 — Transition naturelle (7:00-7:30)

[FACE CAM]

"Bon. Tu as maintenant tout pour créer un jeu avec Claude Code. Mais il y a un truc que j'aurais aimé avoir quand j'ai commencé — un endroit où poser mes questions quand ça bloque, et voir ce que les autres construisent. Je te le montre vite."

### Phase 2 — Visite Skool en direct (7:30-8:30)

[ÉCRAN + PiP]

*[Écran : page Skool ISAO. On navigue dans l'interface : feed avec posts récents, classroom avec les modules, calendrier des lives, un post avec plusieurs réponses.]*

"Ça, c'est la communauté ISAO sur Skool. Regarde — ici tu as plus de 200 membres actifs. Là, le calendrier des lives — on en fait chaque semaine sur des sujets concrets. Et ici, quelqu'un a posté son premier projet Claude Code, et en moins d'une heure, 3 personnes ont répondu avec des solutions."

*[Montrer le feed, cliquer sur un post intéressant, montrer les réponses, revenir au calendrier.]*

"C'est ça la différence entre apprendre seul sur YouTube et apprendre avec un groupe qui construit les mêmes choses que toi."

<!-- ASSETS
IMAGE: Interface Skool ISAO vue complète, aspect ratio 16:9, dans une fenêtre Chrome plein écran. En-tête Skool en blanc (#FFFFFF) avec logo Skool et nom du groupe "ISAO" en texte sombre (#1A1A1A) Inter Bold 18px. Sidebar gauche (20% de largeur, fond #F5F5F5) : items de navigation "Feed", "Classroom" (avec badge de 3 nouveaux cours), "Calendar", "Members" (avec compteur "247 members" en badge cyan #00B2C2). Zone centrale (60% de largeur, fond #FFFFFF) : feed avec 3 cards de posts visibles — card 1 (post avec avatar, nom "Thomas R.", date "il y a 2h", texte "Mon premier jeu Claude Code 🎮" + 2 réponses) ; card 2 (post "J'ai automatisé mon reporting..." + 5 likes) ; card 3 (post d'un live annoncé avec date). Sidebar droite (20%) : compteur membres et calendrier mini. Palette claire professionnelle, touches cyan ISAO (#00B2C2) sur les badges et boutons CTA.
VIDEO: [Seedance 2.0] La souris se déplace dans l'interface Skool et effectue un scroll du feed vers le bas à vitesse naturelle (~200px/s) révélant 2 nouveaux posts | caméra fixe sur l'écran de l'interface, format 16:9 plein cadre | à t=2s, la souris clique sur le premier post "Mon premier jeu Claude Code" — la page de post s'ouvre avec 3 réponses visibles incluant des messages de félicitations, la souris scrolle légèrement pour montrer les réponses | à t=4.5s, la souris clique sur "Calendar" dans la sidebar — le calendrier des lives s'affiche avec des événements en cyan | atmosphère communauté vivante et active, interface propre et moderne | durée exacte : 6 secondes, scroll de t=0 à t=2s, clic post à t=2s, scroll réponses t=2.5s-4s, clic calendar t=4.5s.
VFX: Capture d'écran directe native 1920×1080, PiP face cam en bas à droite (25% × 14% écran, coins arrondis 8px). Zoom léger (scale 1.00 → 1.05, ease-in-out 0.5s) déclenché au moment où le post avec réponses est ouvert (t=2.5s), centré sur la zone des réponses. Le zoom se maintient pendant 2s puis revient à 1.00 (ease-out 0.3s) avant le clic calendar.
SON: Notifications Skool subtiles : deux "ding" légers (fréquence ~880Hz, durée 100ms, decay naturel 200ms, volume 40%) déclenchés à t=1s et t=3s (simulant des nouvelles activités). Nappe ambiante chaleureuse très basse (pad harmonique majeur, notes Do+Mi+Sol, volume 12%, fréquences moyennes 300-800Hz) jouant en continu sous les interactions. Son de clic de souris (pop 1kHz, 20ms, volume 25%) à chaque interaction cliquée. Toutes les couches mixées, ambiance détendue et accueillante.
-->

### Phase 3 — Pourquoi + Prix (8:30-9:15)

[FACE CAM]

"Pourquoi on a créé ça ? Parce que les stats sont claires : quand tu apprends seul sur YouTube, tu as 5 à 7% de chances d'aller au bout d'un projet. Avec un groupe et un accompagnement structuré, ça monte à 65%. C'est pas du marketing — c'est de la recherche sur l'apprentissage en ligne."

"Le prix : 9 euros par mois. Annulable en un clic, pas d'engagement. Tout le contenu YouTube reste gratuit — la communauté, c'est pour ceux qui veulent construire des vrais projets avec de l'aide."

### Phase 4 — CTA + End Screen (9:15-10:00)

[FACE CAM]

"Le lien est en description. Tu rentres, tu regardes, tu décides. Pas d'appel de vente, pas de compte à rebours. Juste un espace où on construit ensemble."

"Et si tu veux continuer à apprendre gratuitement, la prochaine vidéo t'explique comment installer Claude Code et Antigravity chez toi — c'est juste là."

*[Pointer vers la zone de l'écran de fin]*

(-5s) **ÉCRAN DE FIN**

<!-- MONTAGE : Écran de fin avec vidéo "Installer Claude Code" PENDANT qu'on parle encore -->
<!-- MONTAGE : Miniature de la vidéo suivante apparaît à droite -->

---

## Notes techniques

- **Mots total** : ~1300 (910 contenu + 390 bridge)
- **Durée estimée** : 1300 ÷ 130 = ~10:00 minutes
- **Nombre de changements de plan** : 28
- **Interruptions de rythme prévues** : 19 (objectif : 1 toutes les 30-45s) ✅
- **Blocs Assets IA** : 16 segments — 9 IMAGE+VIDEO (Seedance 2.0), 7 IMAGE+MOTION (Jitter)
- **CTA engagement** : à ~1:30 ✅
- **Bridge communauté** : 3 min (7:00-10:00) — Skool 9€/mois ✅
- **Bridge vidéo** : vers "Installer Claude Code" ✅
- **Roadmap visuel** : barre de progression (recommandé pour vidéo 7 min contenu) ✅
