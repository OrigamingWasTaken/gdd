# Skell - Game Design Document

[![Version](https://img.shields.io/badge/version-0.1-blue)](https://github.com/USER/REPO/releases/tag/v0.1)

Travail de Maturité 2026

## Téléchargement

**Dernière version**: [v0.1](https://github.com/USER/REPO/releases/tag/v0.1)

## Structure

```
src/
├── template.typ    # Styles et fonctions (ne pas modifier)
└── main.typ        # Contenu du GDD (modifier ici)
```

## Compilation locale

```bash
# Installer Typst
# https://github.com/typst/typst#installation

# Compiler
typst compile src/main.typ gdd.pdf

# Watch mode (recompile à chaque sauvegarde)
typst watch src/main.typ gdd.pdf
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
<!-- VERSIONS -->