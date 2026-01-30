# Skell - Game Design Document

[![Version](https://img.shields.io/badge/version-0.3-blue)](https://github.com/OrigamingWasTaken/gdd/releases/tag/v0.3)

Travail de Maturité 2026

## Téléchargement

**Dernière version**: [v0.3](https://github.com/OrigamingWasTaken/gdd/releases/tag/v0.3)

## Structure

```
src/
├── template.typ    # Styles et fonctions (ne pas modifier)
├── main.typ        # Contenu du GDD (modifier ici)
└── plan.typ        # Plan de développement (modifier ici)
```

## Compilation locale

```bash
# Installer Typst
# https://github.com/typst/typst#installation

# Compiler le GDD
typst compile src/main.typ gdd.pdf

# Compiler le Plan
typst compile src/plan.typ plan.pdf

# Watch mode (recompile à chaque sauvegarde)
typst watch src/main.typ gdd.pdf
typst watch src/plan.typ plan.pdf
```

## Versioning

Pour créer une nouvelle release, modifier la version dans `src/main.typ` :

```typst
#let gdd-version = "0.4"  // <- Changer ici
```

Push sur `main` → GitHub Actions compile le PDF et crée automatiquement une release.

---

## Historique des versions

| Version | Date | PDF |
|---------|------|-----|
| v0.1 | 2025-01-30 | [Télécharger](https://github.com/OrigamingWasTaken/gdd/releases/download/v0.1/gdd-skell-v0.1.pdf) |
| v0.2 | 2026-01-30 | [Télécharger](https://github.com/OrigamingWasTaken/gdd/releases/download/v0.2/gdd-skell-v0.2.pdf) |
| v0.3 | 2026-01-30 | [Télécharger](https://github.com/OrigamingWasTaken/gdd/releases/download/v0.3/gdd-skell-v0.3.pdf) |
<!-- VERSIONS -->