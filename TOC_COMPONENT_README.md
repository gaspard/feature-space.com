# Table of Contents Component

## Overview

The `TableOfContents.astro` component automatically generates a comprehensive table of contents for all MDX files in your project, organized by type and difficulty level.

## Features

- **Automatic Organization**: Groups content by type (cards/quiz) and level (1-4)
- **Smart Inference**: Automatically detects type and level from filenames
- **Frontmatter Support**: Supports explicit `type` and `level` attributes in frontmatter
- **Responsive Design**: Works on all screen sizes
- **Beautiful Styling**: Modern, clean interface with hover effects

## Usage

### Basic Usage

```astro
---
import TableOfContents from '../components/TableOfContents.astro';
---

<TableOfContents />
```

### With Custom Layout

```astro
---
import Layout from '../layouts/Layout.astro';
import TableOfContents from '../components/TableOfContents.astro';
---

<Layout title="Table des matières">
  <main>
    <TableOfContents />
  </main>
</Layout>
```

## File Organization

The component automatically organizes content based on:

### Type Detection
- **Cards**: Files containing "cards" in the filename (e.g., `12-cards.mdx`)
- **Quiz**: Files containing "quiz" in the filename (e.g., `13-quiz.mdx`)

### Level Detection
- **Level 1 (Parcours doux)**: Files starting with `1x-` (e.g., `12-cards.mdx`, `13-quiz.mdx`)
- **Level 2 (Parcours intensif)**: Files starting with `2x-` (e.g., `22-cards.mdx`, `23-quiz.mdx`)

## Frontmatter Attributes

You can explicitly specify type and level in your MDX frontmatter:

```mdx
---
title: "Advanced Quiz"
type: "quiz"
level: 3
order: 1
---

# Your content here
```

### Supported Attributes

- `type`: "cards" or "quiz"
- `level`: 1 or 2
- `title`: Custom title (defaults to inferred title)
- `order`: Sort order within the same course and type

## Output Structure

The component generates a hierarchical structure:

```
Fiches de révision - Parcours doux
├── Algèbre
│   ├── Structures algébriques
│   └── ...
├── Géométrie
│   ├── Espaces euclidiens hermitiens
│   └── Groupes isométries
└── ...

Quiz - Parcours doux
├── Algèbre
│   ├── Structures algébriques
│   └── ...
└── ...

Fiches de révision - Parcours intensif
├── Algèbre
│   └── ...
└── ...
```

## Styling

The component includes comprehensive CSS with:

- **Modern Design**: Clean, professional appearance
- **Hover Effects**: Interactive elements with smooth transitions
- **Responsive Layout**: Adapts to mobile and desktop screens
- **Accessibility**: Proper focus states and semantic HTML

## Customization

You can customize the appearance by:

1. **Modifying the CSS** in the component's `<style>` section
2. **Changing level names** by updating the `getLevelName()` function
3. **Adjusting the layout** by modifying the HTML structure

## Example Files

The component works with your existing file structure:

```
src/pages/mathematiques-l2/
├── algebre/
│   └── 01-structures-algebriques/
│       ├── 12-cards.mdx      # Level 1 Cards
│       ├── 13-quiz.mdx       # Level 1 Quiz
│       ├── 22-cards.mdx      # Level 2 Cards
│       └── 23-quiz.mdx       # Level 2 Quiz
└── geometrie/
    └── 01-espaces-euclidiens-hermitiens/
        ├── 12-cards.mdx
        ├── 13-quiz.mdx
        ├── 22-cards.mdx
        └── 23-quiz.mdx
```

## Access

You can access the table of contents at `/toc` in your application.
