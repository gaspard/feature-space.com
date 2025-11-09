# Quiz and Cards Processing Pipeline

This system transforms `.quiz` and `.cards` files into interactive React components while maintaining SEO-friendly static HTML.

## Overview

The pipeline processes markdown files with `---` separators and converts them into:

- Interactive React components for quizzes and flashcards
- SEO-friendly static HTML fallbacks
- Structured data for search engines
- Shuffled and filtered content options

## File Structure

```
src/
├── utils/
│   ├── quizParser.ts          # Parses .quiz and .cards files
│   └── quizTransformer.ts     # Transforms parsed data to React format
├── integrations/
│   └── quizProcessor.ts       # Astro integration for build-time processing
├── components/
│   ├── QuizRenderer.tsx       # React component for quizzes
│   ├── CardRenderer.tsx       # React component for flashcards
│   ├── InteractiveQuiz.tsx   # Wrapper component with view switching
│   └── QuizContainer.astro   # Astro component with SEO fallback
└── generated/                 # Auto-generated files (created during build)
    └── [processed files]
```

## Usage

### 1. Create Quiz/Cards Files

Create `.quiz` or `.cards` files with the following structure:

```markdown
---
title: 'Quiz Title'
layout: '../../layouts/Layout.astro'
quizId: 'unique-id'
order: 1
level: basic
chapter: 'Chapter Name'
course: 'Course Name'
---

# Quiz Title

---

#### Question Title

Question content here...

- [ ] **A)** Option A
- [x] **B)** Option B (correct)
- [ ] **C)** Option C

<details>
<summary>Solution</summary>

**Answer: B**

Explanation here...

</details>

---

#### Another Question

More content...
```

### 2. Use in Astro Pages

```astro
---
import QuizContainer from '../components/QuizContainer.astro';
---

<QuizContainer
  quizId="unique-id"
  enableShuffling={true}
  defaultView="quiz"
  showSolutions={false}
/>
```

### 3. Component Props

- `quizId`: Unique identifier matching the file's quizId
- `enableShuffling`: Enable/disable shuffling of items (default: true)
- `defaultView`: Initial view mode - 'quiz' or 'cards' (default: 'quiz')
- `showSolutions`: Show solutions by default (default: false)

## Features

### Quiz Mode

- Multiple choice questions with checkboxes
- Progress tracking
- Solution reveal
- Completion status

### Cards Mode

- Flashcard-style presentation
- Card navigation (previous/next)
- Answer reveal toggle
- Study progress tracking

### SEO Features

- Static HTML fallback for search engines
- Structured data (JSON-LD)
- Meta tags and descriptions
- Progressive enhancement

### Interactivity

- Shuffling with consistent seeds
- Local storage for progress
- Responsive design
- Accessibility support

## Build Process

The system automatically processes files during the Astro build:

1. **Parse**: Extract frontmatter and split content by `---`
2. **Transform**: Convert to React-compatible format
3. **Generate**: Create JSON data, HTML fallback, and TypeScript types
4. **Integrate**: Hook into Astro's build process

## File Format Requirements

### Frontmatter

- `title`: Display title
- `quizId`: Unique identifier
- `level`: Difficulty level (basic, intermediate, advanced)
- `chapter`: Chapter name
- `course`: Course name
- `order`: Display order

### Content Structure

- Main title after frontmatter (`# Title`)
- Items separated by `---`
- Each item can have a title (`#### Item Title`)
- Questions: Use `- [ ]` and `- [x]` for options
- Solutions: Wrap in `<details><summary>Solution</summary>...</details>`

## KaTeX Support

Mathematical expressions are preserved throughout the pipeline:

- Inline math: `$expression$`
- Display math: `$$expression$$`
- Renders correctly in both static HTML and React components

## Customization

### Styling

Components use Tailwind CSS classes. Customize by:

- Modifying component styles
- Adding custom CSS classes
- Overriding Tailwind configuration

### Behavior

- Modify shuffling algorithms in `quizTransformer.ts`
- Add new question types in `quizParser.ts`
- Extend React components for additional features

## Troubleshooting

### Common Issues

1. **Quiz not loading**: Check that `quizId` matches the file's frontmatter
2. **Math not rendering**: Ensure KaTeX CSS is loaded
3. **Build errors**: Check file format and frontmatter syntax
4. **Missing data**: Verify the integration is enabled in `astro.config.mjs`

### Debug Mode

Enable debug logging by setting environment variable:

```bash
DEBUG=quiz-processor npm run build
```

## Migration from Existing Files

Existing `.quiz` and `.cards` files should work without modification. The system:

- Preserves existing functionality
- Adds new interactive features
- Maintains SEO compatibility
- Supports progressive enhancement
