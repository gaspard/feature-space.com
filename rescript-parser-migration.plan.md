<!-- 0525b403-4616-41d7-9170-730451b1732d 25bce62c-14fb-4ed6-8d6b-579f09020916 -->
# Vite Stack Generator Plugin

## Overview

Implement a Vite plugin in ReScript that generates JSON files for all `.cards` and `.quiz` files during the build process. The plugin will expose a single default export to TypeScript for use in `astro.config.mjs`.

## Implementation Steps

### 1. Create StackParserPlugin.res

Create `src/domain/feature/StackParserPlugin.res` that:

- Imports `makeStacksToJson` from `StackParser.res`
- Imports `System.make` for real file system operations
- Defines a Vite plugin object with `name` and `buildStart` hook
- Uses `@genType.import` and `@genType` to expose single `default` export to TypeScript
- In `buildStart` hook:
  - Gets system instance via `System.make()`
  - Creates generator via `makeStacksToJson(system.fs, system.path)`
  - Calls generator with: `('src/pages', 'dist', 'dist/stacks')`

**Key implementation details:**

```rescript
@genType
let default = {
  "name": "stack-json-generator",
  "buildStart": () => {
    // Call makeStacksToJson with real system
    let system = System.make()
    let generator = StackParser.makeStacksToJson(system.fs, system.path)
    generator("src/pages", "dist", "dist/stacks")
  }
}
```

### 2. Update astro.config.mjs

Import the plugin (using `.gen` for proper TypeScript types):

```javascript
import stackJsonPlugin from './src/domain/feature/StackParserPlugin.gen';
```

Add to Vite plugins array (after the existing `cards-loader` plugin):

```javascript
vite: {
  plugins: [
    tailwindcss(),
    { name: 'cards-loader', ... }, // existing plugin
    stackJsonPlugin, // new plugin
  ],
}
```

### 3. Build and test

- Run `pnpm res:build` to compile ReScript
- Run `pnpm build` to verify plugin executes
- Verify JSON files are generated in `dist/stacks/` directory
- Verify TOC files are generated in appropriate subdirectories

### 4. Create loader utility (optional, future step)

Create `src/domain/feature/StackLoader.res` with:

- `@genType let loadStack: string => Promise.t<Stack.t>` 
- Dynamic import function that fetches from `/stacks/{id}.json`

This can be deferred until React components need to dynamically load stacks.

## Files to Create/Modify

- **Create:** `src/domain/feature/StackParserPlugin.res`
- **Modify:** `astro.config.mjs`

## Notes

- Plugin runs during both `dev` and `build` via Vite's `buildStart` hook
- JSON files output to `dist/` (not committed to git)
- Individual stacks: `dist/stacks/{id}.json`
- TOC files: `dist/{path}/stacks-toc.json` (preserving source directory structure)
- Minimal TypeScript exposure: only the plugin default export

