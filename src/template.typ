// ═══════════════════════════════════════════════════════════════════
// TEMPLATE GDD — Configuration et styles
// ═══════════════════════════════════════════════════════════════════

// --- Couleurs ---
#let accent = rgb("#18181b")
#let muted = rgb("#71717a")
#let border = rgb("#e4e4e7")
#let bg = rgb("#fafafa")

// --- Configuration du document ---
#let gdd(
  title: "GDD",
  version: "0.1",
  font: "SN Pro",
  body
) = {
  set document(title: title + " — GDD", author: "TM")
  set text(font: font, size: 10pt, lang: "fr")
  set page(margin: (x: 2.2cm, y: 2cm), numbering: "1 / 1", number-align: right)
  set heading(numbering: none)
  set par(justify: true, leading: 0.7em)
  
  // Titre
  align(center)[
    #v(1cm)
    #text(size: 48pt, weight: "bold", fill: accent, tracking: -0.02em)[#upper(title)]
    #v(0.4cm)
    #text(size: 11pt, fill: muted)[Action-Platformer 2D · Godot 4 · PC]
    #v(0.2cm)
    #box(fill: bg, stroke: 1pt + border, inset: (x: 8pt, y: 4pt), radius: 4pt, text(size: 8pt, fill: muted)[v#version])
    #h(6pt)
    #box(fill: bg, stroke: 1pt + border, inset: (x: 8pt, y: 4pt), radius: 4pt, text(size: 8pt, fill: muted)[#datetime.today().display()])
    #v(1cm)
  ]
  
  body
}

// --- Composants ---

// Section principale
#let section(title) = {
  v(1.2cm)
  block(width: 100%, below: 0.6cm)[
    #text(size: 20pt, weight: "bold", fill: accent)[#title]
    #v(0.1cm)
    #line(length: 100%, stroke: 1pt + border)
  ]
}

// Sous-section
#let subsection(title) = {
  v(0.5cm)
  text(size: 12pt, weight: "bold", fill: accent)[#title]
  v(0.2cm)
}

// Note "À définir"
#let note(body) = block(
  width: 100%,
  stroke: 1pt + rgb("#fbbf24"),
  inset: 12pt,
  radius: 6pt,
  below: 0.5cm,
)[
  #text(size: 9pt, weight: "medium", fill: rgb("#b45309"))[À définir :] #text(size: 9pt, fill: rgb("#78350f"))[#body]
]

// Carte/encadré
#let card(body) = block(
  width: 100%,
  stroke: 1pt + border,
  inset: 14pt,
  radius: 8pt,
  below: 0.5cm,
  body
)