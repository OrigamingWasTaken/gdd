// ═══════════════════════════════════════════════════════════════════
// GDD SKELL — Contenu
// ═══════════════════════════════════════════════════════════════════

#import "template.typ": *

#let gdd-version = "0.1"

#show: gdd.with(
  title: "Skell",
  version: gdd-version,
)

// --- Config tables (modifier ici si besoin) ---
#let tbl(columns: (1fr, 1fr), ..rows) = table(
  columns: columns,
  inset: 12pt,
  stroke: 1pt + border,
  fill: (_, y) => if y == 0 { bg } else { white },
  ..rows
)
#let th(..cells) = table.header(..cells.pos().map(c => text(weight: "bold")[#c]))

// ═══════════════════════════════════════════════════════════════════
// VISION
// ═══════════════════════════════════════════════════════════════════

#section[Vision]

#subsection[Elevator Pitch]

#card[
  #text(size: 11pt, style: "italic", fill: muted)[
    "Skell est un action-platformer 2D où une hybride sans émotions traverse les ruines d'un monde détruit par la guerre entre humains et kreesh. À chaque chapitre, elle redécouvre une émotion — et débloque une nouvelle capacité."
  ]
]

#subsection[Piliers de Design]

Les trois éléments fondamentaux qui guident toutes les décisions de conception.

#tbl(columns: (1fr, 3fr),
  th[Pilier][Description],
  [Combat-mouvement fluide], [Style Dead Cells : enchaînements rapides, dash réactif, rebond sur ennemis. Difficulté exigeante mais fair — le joueur doit toujours pouvoir progresser.],
  [Découverte et lore], [Journaux dispersés, objets du quotidien émettant une aura qui déclenchent des mini-cutscenes. Le monde raconte son histoire par l'environnement.],
  [Progression émotionnelle], [Chaque chapitre correspond à une émotion retrouvée et à une capacité débloquée. La narration et le gameplay sont indissociables.],
)

#pagebreak()

#subsection[Références]

#tbl(columns: (1fr, 2fr, 2fr),
  th[Jeu][Ce qu'on retient][Ce qu'on évite],
  [Dead Cells], [Fluidité combat-mouvement, enchaînements satisfaisants], [Aspect roguelike],
  [Celeste], [Narration émotionnelle, précision du platforming], [Difficulté punitive sans options],
  [Hollow Knight], [Éléments de backtracking, direction artistique], [Backtracking excessif, monde trop vaste],
)

// ═══════════════════════════════════════════════════════════════════
// CORE LOOP
// ═══════════════════════════════════════════════════════════════════

#section[Core Loop]

#subsection[Boucle principale]

Le cycle que le joueur répète constamment au sein d'un niveau.

#align(center)[
  #card[
    #align(center)[
      #text(weight: "bold")[Explorer] #h(10pt) $arrow$ #h(10pt)
      #text(weight: "bold")[Combattre] #h(10pt) $arrow$ #h(10pt)
      #text(weight: "bold")[Découvrir] #h(10pt) $arrow$ #h(10pt)
      #text(weight: "bold")[Progresser] #h(10pt) $arrow.ccw$
    ]
  ]
]

#subsection[Boucle émotionnelle]

Chaque chapitre suit une progression narrative liée au gameplay.

#card[
  #align(center)[
    Traverser la zone #h(8pt) $arrow$ #h(8pt)
    Affronter le boss #h(8pt) $arrow$ #h(8pt)
    *Retrouver une émotion* #h(8pt) $arrow$ #h(8pt)
    Débloquer une capacité
  ]
]

#tbl(columns: (1fr, 1fr, 2fr),
  th[Chapitre][Émotion][Impact sur le jeu],
  [0 — Tutoriel], [Aucune], [Introduction des mécaniques de base],
  [1 — Forêt morte], [Tristesse], [Ambiance mélancolique, environnement décrépit],
  [2], [—], [Hors scope GDD v1],
  [3], [—], [Hors scope GDD v1],
)

#pagebreak()

#subsection[Échos du passé]

Objets dispersés dans les niveaux, émettant une aura visible lorsque le joueur s'approche. Ceux-ci révèlent des bribes de souvenirs à Skell, et lui octroient un buff (à définir).

#card[
  *Interaction :* Ramasser $arrow$ Mini-cutscene $arrow$ Ligne de dialogue $arrow$ Bonus

  *Introduction :* Le premier objet apparaît à la fin du Chapitre 0.
]

#note[Bonus accordé : buff permanent, temporaire, ou juste narratif ?]

// ═══════════════════════════════════════════════════════════════════
// MÉCANIQUES
// ═══════════════════════════════════════════════════════════════════

#section[Mécaniques]

#subsection[Mouvement]

#tbl(columns: (1fr, 3fr, 1fr),
  th[Capacité][Description][Obtention],
  [Déplacement], [Course au sol, réactive et précise], [Base],
  [Saut], [Hauteur variable selon la durée de pression], [Base],
  [Roulade], [Amortit les chutes, octroie des frames d'invincibilité], [Tutoriel N°1],
  [Double saut], [Saut supplémentaire utilisable en l'air], [Tutoriel N°2],
  [Dash], [Déplacement horizontal rapide, annulation de la vélocité verticale], [Tutoriel N°3],
)

#note[Coyote time, jump buffer, air control — valeurs à définir pendant le prototypage.]

#subsection[Combat]

Inspiration de Dead Cells : enchaînements rapides, agressivité récompensée.

#tbl(columns: (1fr, 0.8fr, 2.5fr, 1fr),
  th[Action][Type][Description][Obtention],
  [Épée], [Melee], [Attaque rapide avec possibilité de combo], [Tutoriel N°4],
  [Arc], [Distance], [Tir à distance], [Tutoriel N°5],
  [Parry], [Défense], [Contre une attaque, ouvre une fenêtre d'attaque], [Ch.1 Mini-Boss],
  [Greatsword], [Melee], [Dégâts élevés, vitesse réduite], [Ch.1 Mini-Boss],
)

#note[Système de vie : nombre de PV, durée d'invincibilité après dégât.]

#subsection[Soin]

Capacité de régénération obtenue à la fin du Chapitre 1, Niveau 1.

#note[Fonctionnement : charges limitées ou cooldown ?]

#subsection[Bracelet Temporel]

#card[
  *Effet :* Arrête le temps pendant son utilisation.

  *Usage :* Permet d'appliquer un vecteur de vélocité aux petits objets (pierres, bâtons) pour résoudre des puzzles environnementaux.

  *Obtention :* Tutoriel N°9, donné par le chevalier après la cinématique.
]

#note[Cooldown, portée d'effet, types d'objets affectés.]

#subsection[Le Chevalier]

#card[
  *Présence :* Accompagne Skell dans les niveaux. Parfois suit, parfois mène le chemin.

  *Rôle gameplay :* Peut intervenir contre les boss si le joueur subit trop de défaites.

  *Rôle narratif :* Son identité et son histoire seront révélées progressivement.
]

#pagebreak()

// ═══════════════════════════════════════════════════════════════════
// PROGRESSION ET CONTENU
// ═══════════════════════════════════════════════════════════════════

#section[Progression et Contenu]

#subsection[Chapitre 0 — Tutoriel]

Lieu : Vieilles maisons de campagne. Skell se réveille sans savoir où elle est.

#tbl(columns: (0.5fr, 3fr, 1.5fr),
  th[N°][Situation][Capacité débloquée],
  [1], [Skell se réveille en haut d'une tour, doit descendre], [Roulade],
  [2], [Allée avec un haut mur à franchir], [Double saut],
  [3], [Pont cassé à traverser], [Dash],
  [4], [Grotte, squelette tenant une épée à récupérer puis premier ennemi], [Épée],
  [5], [Ennemi à distance qui tire avec constance], [Arc],
  [6], [Campement, le chevalier apparaît avec barre de vie boss], [—],
  [7], [Combat : Phase 1 faisable, Phase 2 impossible], [—],
  [8], [Cinématique : le chevalier propose son aide], [Bracelet temporel],
)

À la fin du tutoriel : premier écho du passé (introduction de la mécanique).

#subsection[Chapitre 1 — Forêt morte]

Émotion : *Tristesse*. Ambiance mélancolique, arbres morts, lumière filtrée grise.

#card[
  *Niveau 1*
  - Cinématique avec le chevalier
  - Explication du lore pendant le parkour
  - Combat contre 3 types d'ennemis
  - Fin : obtention de la capacité de soin
]

#card[
  *Niveau 2*
  - Combats plus difficiles, utilisation intensive du soin
  - Introduction du parry
  - Mini-boss : obtention de la greatsword
]

#card[
  *Niveau 3*
  - Introduction de la statuette des malédictions
  - Salle du boss (le chevalier peut aider si trop de morts)
  - Obtention d'une nouvelle capacité
]

#note[Ennemis Ch.1 : types à définir. Boss et mini-boss : concepts à définir. Capacité fin Ch.1 N.3 : à définir.]

#subsection[Système de malédictions]

Statuettes placées au début des niveaux terminés. Permettent d'activer des modificateurs de difficulté en échange de récompenses.

#tbl(columns: (1fr, 2fr, 1.5fr),
  th[Malédiction][Effet][Récompense],
  [Verre], [−90% vie, +100% dégâts], [—],
  [—], [—], [—],
)

#note[Liste complète des malédictions et récompenses à définir.]

#pagebreak()

// ═══════════════════════════════════════════════════════════════════
// PERSONNAGES
// ═══════════════════════════════════════════════════════════════════

#section[Personnages]

#subsection[Skell — Protagoniste]

#card[
  *Nature :* Hybride créée par le roi humain à partir du fœtus de la reine kreesh.

  *État initial :* Consciente mais sans émotions. Se réveille sans souvenirs dans une tour.

  *Arc :* À chaque chapitre, elle retrouve une émotion, ce qui se traduit par une nouvelle capacité et une évolution de sa personnalité.
]

#subsection[Le Chevalier — Compagnon]

#card[
  *Apparence :* Chevalier en armure, mystérieux.

  *Introduction :* Apparaît au tutoriel comme un boss imbattable, puis devient allié.

  *Comportement :* Suit Skell dans les niveaux, parfois mène le chemin. Peut intervenir contre le boss Ch.1 si le joueur échoue trop.

  *Secret :* Son identité et son histoire seront révélées au fil du jeu.
]

#note[Nom du chevalier à définir. Background détaillé à définir.]

#subsection[PNJ]

#note[PNJ et quêtes secondaires à définir.]

#pagebreak()

// ═══════════════════════════════════════════════════════════════════
// DIRECTION ARTISTIQUE
// ═══════════════════════════════════════════════════════════════════

#section[Direction Artistique]

#subsection[Style visuel]

#note[Lea écrit si tu veux et t'as le temps]

#subsection[Ambiances par zone]

#tbl(columns: (1fr, 2fr),
  th[Zone][Ambiance],
  [Ch.0 — Tutoriel], [Ruines, vieilles maisons de campagne, tons gris/beige, crépuscule],
  [Ch.1 — Forêt morte], [Arbres morts, ambiance mélancolique, lumière filtrée grise, palette désaturée],
)

// ═══════════════════════════════════════════════════════════════════
// SCOPE ET PLANNING
// ═══════════════════════════════════════════════════════════════════

#section[Scope et Planning]

#subsection[Priorisation MoSCoW]

#tbl(columns: (1fr, 3fr),
  th[Priorité][Éléments],
  [Must Have], [Mouvement complet (marche, saut, double saut, dash, roulade) · Combat épée · Ch.0 tutoriel complet · Boss tutoriel (2 phases) · 1 type d'ennemi],
  [Should Have], [Arc · Bracelet temporel · Soin · Parry · Ch.1 complet (3 niveaux + boss) · Greatsword · 3+ types d'ennemis],
  [Could Have], [Malédictions · Objets du quotidien · Aide du chevalier contre boss],
  [Won't Have], [Chapitres 2 et 3 · Multijoueur · Traductions],
)