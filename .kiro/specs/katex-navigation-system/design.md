# Design Document

## Overview

This design implements KaTeX mathematical rendering and a two-level file-based navigation system for the existing Astro project. The solution integrates seamlessly with the current Tailwind CSS setup and maintains the existing project structure while adding new capabilities.

## Architecture

### KaTeX Integration
- **Client-side rendering**: KaTeX will render math expressions in the browser for optimal performance
- **Astro integration**: Custom Astro component to handle math rendering
- **Markdown support**: Remark plugin to process LaTeX syntax in markdown files

### Navigation System
- **File-based generation**: Automatic navigation generation from `src/pages` directory structure
- **Two-level hierarchy**: Support for nested directories with parent/child relationships
- **Dynamic updates**: Navigation updates automatically when files are added/removed

## Components and Interfaces

### 1. KaTeX Components

#### `MathRenderer.astro`
```typescript
interface Props {
  expression: string;
  displayMode?: boolean;
}
```
- Renders individual math expressions
- Handles both inline (`$...$`) and display (`$$...$$`) modes
- Provides error handling for invalid LaTeX

#### `MathContent.astro`
```typescript
interface Props {
  content: string;
}
```
- Processes markdown content with embedded LaTeX
- Automatically detects and renders math expressions
- Maintains text formatting around math

### 2. Navigation Components

#### `Navigation.astro`
```typescript
interface NavigationItem {
  title: string;
  path: string;
  children?: NavigationItem[];
}

interface Props {
  currentPath: string;
}
```
- Renders the complete navigation menu
- Highlights current page
- Supports two-level hierarchy

#### Navigation Utilities
```typescript
interface PageInfo {
  title: string;
  path: string;
  order?: number;
}

function generateNavigation(): NavigationItem[]
function getPageTitle(filePath: string): string
function sortNavigationItems(items: NavigationItem[]): NavigationItem[]
```

## Data Models

### Page Metadata
```typescript
interface PageFrontmatter {
  title?: string;
  order?: number;
  hidden?: boolean;
}
```

### Navigation Structure
```typescript
interface NavigationTree {
  [key: string]: {
    title: string;
    path?: string;
    children: NavigationTree;
  }
}
```

## Error Handling

### KaTeX Errors
- Invalid LaTeX syntax displays user-friendly error messages
- Fallback to raw LaTeX text if rendering fails
- Console warnings for debugging during development

### Navigation Errors
- Missing frontmatter gracefully handled with filename-based titles
- Invalid file paths filtered out automatically
- Empty directories excluded from navigation

## Testing Strategy

### KaTeX Testing
- Unit tests for math rendering components
- Integration tests with various LaTeX expressions
- Visual regression tests for math display
- Error handling tests for invalid syntax

### Navigation Testing
- Unit tests for navigation generation utilities
- Integration tests with different file structures
- Tests for frontmatter parsing
- Current page highlighting verification

## Implementation Details

### Dependencies
- `katex`: Core mathematical rendering library
- `remark-math`: Markdown plugin for LaTeX syntax
- `rehype-katex`: HTML processing for KaTeX integration

### File Structure
```
src/
├── components/
│   ├── MathRenderer.astro
│   ├── MathContent.astro
│   └── Navigation.astro
├── utils/
│   └── navigation.ts
├── layouts/
│   └── Layout.astro (updated)
└── pages/
    ├── index.astro
    ├── math/
    │   ├── algebra.md
    │   └── calculus.md
    └── about.md
```

### Styling Integration
- KaTeX CSS integrated with existing Tailwind setup
- Navigation styled using Tailwind classes
- Responsive design for mobile and desktop
- Dark mode support if needed

### Performance Considerations
- KaTeX CSS loaded only when math content is present
- Navigation generated at build time for static sites
- Lazy loading for complex mathematical expressions
- Minimal JavaScript footprint

## Configuration

### Astro Config Updates
```javascript
export default defineConfig({
  markdown: {
    remarkPlugins: [remarkMath],
    rehypePlugins: [rehypeKatex]
  },
  vite: {
    plugins: [tailwindcss()],
  },
});
```

### Package Manager
All operations will use pnpm as specified in requirements:
- `pnpm add katex remark-math rehype-katex`
- `pnpm dev` for development
- `pnpm build` for production builds