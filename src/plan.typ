// Configuration
#set document(title: "Planning TM", author: "Marlon")
#set page(paper: "a4", margin: 1.2cm)
#set text(font: "New Computer Modern", size: 9.5pt, lang: "fr")
#set heading(numbering: none)
#set par(justify: true, leading: 0.45em)
#set table(stroke: 0.4pt + luma(180))

#let accent = rgb("#2c3e50")
#let deadline-color = rgb("#aa0000")
#let light = luma(245)

// ============================================
// HEADER
// ============================================

#text(size: 18pt, weight: "bold")[Planning Rétroactif — TM 2026]
#v(2pt)
#text(fill: luma(100), size: 9pt)[Création d'un jeu vidéo | Platformer combat | Godot]

#v(8pt)

#table(
  columns: (65pt, 1fr, 70pt),
  inset: 5pt,
  align: (center, left, center),
  fill: (col, row) => if row == 0 { accent } else if calc.odd(row) { light } else { none },

  text(fill: white, weight: "bold", size: 8pt)[Phase],
  text(fill: white, weight: "bold", size: 8pt)[Objectif],
  text(fill: white, weight: "bold", size: 8pt)[Période],

  [1. Préprod], [Prototype + Niveau 1-1 graybox], [Jan — Mars],
  [2. Alpha], [Chapitre 1 complet], [Avr — Mai],
  table.cell(fill: rgb("#ffeeee"))[*Séminaire*], table.cell(fill: rgb("#ffeeee"))[Évaluation intermédiaire], table.cell(fill: rgb("#ffeeee"))[*8 juin*],
  [3. Beta], [Chapitres 2 & 3 + Audio], [Juin — mi-Août],
  [4. Playtest], [Tests (2 sem.) + Patch + Retest], [mi-Août — Sept],
  [5. Écrit], [Rédaction du dossier], [Sept — Oct],
  table.cell(fill: rgb("#ffeeee"))[*Reddition*], table.cell(fill: rgb("#ffeeee"))[Dépôt du TM], table.cell(fill: rgb("#ffeeee"))[*9 oct*],
  [6. Oral], [Soutenance], [Novembre],
)

#v(6pt)
#box(fill: light, inset: 6pt, radius: 2pt, width: 100%)[
  #text(size: 8pt)[*Principes :* _Règle de la Boucle_ (itérer) · _Règle des 50%_ (tout jouable fin mai) · _WUBALEW_ (test 1×/sem. pendant dev)]
]

#v(10pt)
#line(length: 100%, stroke: 0.4pt + luma(200))
#v(6pt)

// ============================================
// PHASES EN GRILLE COMPACTE
// ============================================

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,

  // PHASE 1
  [
    #text(weight: "bold", fill: accent)[Phase 1 : Préproduction] #h(1fr) #text(fill: luma(120), size: 8pt)[22 jan — 31 mars]
    #v(3pt)
    #set text(size: 8.5pt)

    *Sem. 1-2* — Fondations
    #set text(size: 8pt)
    - Setup Godot · GDD v1 · Prototype combat et mouvement
    - Croquis personnages·

    *Sem. 3-4* — Prototype "Jouet"
    - Dash, attaque, game feel · Sprites perso
    - Premier ennemi

    *Sem. 5-6* — Niveau 1-1
    - Level design papier → graybox
    - +2 ennemis · Système vie

    *Sem. 7-10* — Consolidation
    - Niveaux 1-2, 1-3 graybox · Boss Ch.1
    - Checkpoints · UI base

    #box(fill: luma(230), inset: 4pt, radius: 2pt, width: 100%)[
      #text(size: 7.5pt)[*Livrables :* GDD v1 · Ch.1 graybox (3 niv. + boss) · Characters]
    ]
  ],

  // PHASE 2
  [
    #text(weight: "bold", fill: accent)[Phase 2 : Alpha] #h(1fr) #text(fill: luma(120), size: 8pt)[1 avr — 7 juin]
    #v(3pt)
    #set text(size: 8.5pt)

    *Avril* — Finalisation Chapitre 1
    #set text(size: 8pt)
    - Graybox → tileset final · Animations complètes
    - Boss graphismes · VFX (particules, impacts)
    - Menu principal · Lore/univers · Audio Ch.1
    - _Playtests internes réguliers_

    *Mai* — Préparation Séminaire
    - Polish Ch.1 · Tutoriel in-game · GDD v2
    - Slides + démo · Répétitions
    - Level design Ch.2 (papier)

    #box(fill: luma(230), inset: 4pt, radius: 2pt, width: 100%)[
      #text(size: 7.5pt)[*Livrables :* Ch.1 complet · Tutoriel · Lore · Présentation]
    ]
    #v(4pt)
    #box(fill: rgb("#ffeeee"), stroke: 0.4pt + deadline-color, inset: 4pt, radius: 2pt, width: 100%)[
      #text(size: 8pt, weight: "bold")[8 juin — Séminaire intermédiaire]
    ]
  ],

  // PHASE 3
  [
    #text(weight: "bold", fill: accent)[Phase 3 : Beta] #h(1fr) #text(fill: luma(120), size: 8pt)[9 juin — 15 août]
    #v(3pt)
    #set text(size: 8.5pt)

    *Juin* — Post-séminaire + Ch.2
    #set text(size: 8pt)
    - Intégrer retours séminaire
    - Ch.2 : graybox → graphismes
    - Mécaniques + ennemis + boss Ch.2

    *Juillet* — Ch.3
    - Ch.3 : graybox → graphismes
    - Boss final · Audio complet

    *1-15 Août* — Finition contenu
    - Cutscenes/transitions · Contenu bonus
    - Équilibrage · Correction bugs évidents
    - _Build "feature complete"_

    #box(fill: luma(230), inset: 4pt, radius: 2pt, width: 100%)[
      #text(size: 7.5pt)[*Livrables :* Jeu complet (3 ch.) · Audio · Build beta]
    ]
  ],

  // PHASE 4 - PLAYTEST
  [
    #text(weight: "bold", fill: accent)[Phase 4 : Playtest] #h(1fr) #text(fill: luma(120), size: 8pt)[16 août — 14 sept]
    #v(3pt)
    #set text(size: 8pt)

    #table(
      columns: (70pt, 1fr),
      inset: 3pt,
      stroke: 0.3pt + luma(200),
      fill: (col, row) => if row == 0 { luma(230) } else { none },

      [*Période*], [*Activité*],
      [16 — 31 août], [Tests externes (2 sem.) — testeurs Kleenex],
      [1 — 7 sept], [Analyse retours + Patch],
      [8 — 14 sept], [Retest si nécessaire + Polish final],
    )

    #v(4pt)
    #set text(size: 8pt)
    *À tester :*
    - Difficulté / équilibrage
    - Clarté des objectifs
    - Bugs bloquants
    - Durée de jeu
    - Frustration vs satisfaction

    #box(fill: luma(230), inset: 4pt, radius: 2pt, width: 100%)[
      #text(size: 7.5pt)[*Livrables :* Rapport de playtest · Build finale]
    ]
  ],
)

#v(8pt)

// PHASE 5 - ÉCRIT
#box(stroke: 0.4pt + luma(200), inset: 8pt, radius: 2pt, width: 100%)[
  #grid(
    columns: (auto, 1fr),
    gutter: 16pt,

    text(weight: "bold", fill: accent)[Phase 5 : Écrit #text(fill: luma(120), weight: "regular", size: 8pt)[(15 sept — 8 oct)]],

    [
      #set text(size: 8pt)
      #table(
        columns: (80pt, 1fr),
        inset: 3pt,
        stroke: 0.3pt + luma(200),

        [15 — 21 sept], [Introduction · Problématique · Méthodologie],
        [22 — 28 sept], [Game Design · Développement technique · Direction artistique],
        [29 sept — 5 oct], [Playtesting · Conclusion · Bilan · Relecture],
        [6 — 8 oct], [Mise en page · Impression],
      )
    ]
  )
]

#v(4pt)
#box(fill: rgb("#ffeeee"), stroke: 0.4pt + deadline-color, inset: 5pt, radius: 2pt, width: 100%)[
  #text(size: 8pt, weight: "bold")[9 octobre — Reddition du TM]
]