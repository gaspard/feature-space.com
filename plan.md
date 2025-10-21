<!-- 0525b403-4616-41d7-9170-730451b1732d fb0482fd-a33d-40db-a622-8fbfb181d697 -->
# Migrate Stack Parsers to ReScript (BDD/TDD Approach)

**Workflow Rule**: After completing each subsection (1.1, 1.2, 1.3, 2.1, etc.), STOP and show work to user for validation before proceeding to the next subsection.

## Iteration 1: Stack Parser (Basic Frontmatter)

### 1.1 Write test for frontmatter parsing

- Create `src/domain/test/StackParser.feature` with scenario for parsing frontmatter
- Create `src/domain/test/StackParserSteps.res` with step definitions
- Test should verify Stack.info fields: id, title, kind (Cards/Quiz), level, course, chapter, tags
- Use existing `some-cards.cards` fixture

### 1.2 Implement YamlParser to pass frontmatter test

- Create `src/domain/api/service/YamlParser.res`
- Add external bindings to `gray-matter` npm package
- Parse YAML frontmatter and return metadata record matching `Stack.info`

### 1.3 Verify test passes

- Run tests, ensure frontmatter parsing works

## Iteration 2: Stack Parser (Cards Content)

### 2.1 Add test for cards content parsing

- Extend `StackParser.feature` with scenario for parsing cards from .cards file
- Test should verify: cards array length, content extraction, solution extraction
- Verify card IDs format: `c-{stackId}-{index}`
- Verify Stack contains correct `Card.Card` variants

### 2.2 Implement StackParser for Cards type

- Create `src/domain/api/service/StackParser.res`
- Parse frontmatter using YamlParser
- Split body by `\n---\n` separator
- Extract card content before `<details>` tag
- Extract solution from `<details><summary>` block
- Build `Card.Card` variant for each card
- Return `Stack.t` with `info.kind = Cards`

### 2.3 Verify test passes

- Run tests, ensure cards stack parsing works end-to-end

## Iteration 3: Stack Parser (Quiz Content)

### 3.1 Add test for quiz content parsing

- Extend `StackParser.feature` with scenario for parsing questions from .quiz file
- Test should verify: questions array length, options parsing, correct answer flags
- Verify question IDs format: `q-{stackId}-{index}`
- Verify option IDs format: `q-{stackId}-{qIndex}-{optIndex}`
- Use existing `some-quiz.quiz` fixture

### 3.2 Implement Quiz parsing in StackParser

- Extend `StackParser.res` to handle Quiz type
- Parse checkbox syntax: `- [x]` (correct) vs `- [ ]` (incorrect)
- Extract question content and options array
- Build `Card.Question` variant with options for each question
- Return `Stack.t` with `info.kind = Quiz`

### 3.3 Verify test passes

- Run tests, ensure quiz stack parsing works end-to-end

## Iteration 4: Build-Time JSON Generation

### 4.1 Write test for stack generation

- Create test that verifies JSON output matches `Stack.t` structure
- Test should verify one JSON file per .cards/.quiz file

### 4.2 Implement stack generator

- Create `scripts/generateStacks.ts`
- Import compiled ReScript StackParser (`.mjs` file)
- Find all `*.cards` and `*.quiz` files in `src/pages/`
- Call StackParser for each file
- **Serialize stacks to JSON** using Surya schema:
  ```rescript
  stack->S.reverseConvertOrThrow(Stack.stackSchema)->JSON.stringifyAny(~space=2)
  ```
- Generate JSON files in `src/generated/stacks/{stackId}.json`
- Generate index file mapping stack IDs to filenames

### 4.3 Integrate with build

- Update `package.json` with `generate:stacks` script
- Update `build` script to run generation before `astro build`
- Add Astro integration hook in `astro.config.mjs` for `astro:build:start`

## Iteration 5: React Dynamic Import Support

### 5.1 Create TypeScript types

- Create `src/domain/api/entity/stack.type.ts`
- Mirror ReScript `Stack.t` structure for TypeScript consumers

### 5.2 Create stack loader utility

- Create `src/utils/stackLoader.ts`
- Implement `loadStack(stackId)` with dynamic JSON imports
- Implement `loadAllStacks()` for batch loading
- Add error handling for missing stacks

### 5.3 Update Vite configuration

- Modify `astro.config.mjs` for JSON module support
- Keep backward compatibility with existing cards-loader plugin

### To-dos

- [x] Create YamlParser.res with gray-matter bindings
- [x] Create CardParser.res to parse .cards files into Stack.t
- [x] Create QuizParser.res to parse .quiz files into Stack.t
- [x] Migrate parser tests to ReScript
- [ ] Create generateStacks.ts build script
- [ ] Update package.json and astro.config.mjs for build integration
- [ ] Create stack.type.ts matching Stack.t structure
- [ ] Create stackLoader.ts for dynamic imports
