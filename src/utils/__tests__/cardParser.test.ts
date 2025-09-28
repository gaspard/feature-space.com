import { describe, it, expect } from 'vitest';
import { parseCards } from '../cardParser';

describe('cardParser', () => {
  it('should parse a basic cards file', () => {
    const cardsContent = `---
title: 'Test Cards'
id: 'test-cards-123'
level: basic
chapter: 'Test Chapter'
course: 'Test Course'
tags: ['math', 'basic']
---

# Test Cards

---

What is 2+2?

<details>
<summary>Réponse</summary>

2 + 2 = 4

</details>

---

What is 3+3?

<details>
<summary>Réponse</summary>

3 + 3 = 6

</details>`;

    const result = parseCards(cardsContent, 'test.cards');

    expect(result.title).toBe('Test Cards');
    expect(result.cards).toHaveLength(2);
    expect(result.metadata.id).toBe('test-cards-123');
    expect(result.metadata.level).toBe('basic');
    expect(result.metadata.tags).toEqual(['math', 'basic']);

    // Check first card
    expect(result.cards[0].id).toBe('card-0');
    expect(result.cards[0].content).toContain('What is 2+2?');
    expect(result.cards[0].solution).toContain('2 + 2 = 4');

    // Check second card
    expect(result.cards[1].id).toBe('card-1');
    expect(result.cards[1].content).toContain('What is 3+3?');
    expect(result.cards[1].solution).toContain('3 + 3 = 6');
  });

  it('should handle KaTeX math expressions', () => {
    const cardsContent = `---
title: 'Math Cards'
id: 'math-cards'
level: basic
chapter: 'Algebra'
course: 'Mathematics'
tags: ['math']
---

# Math Cards

---

Solve: $x^2 + 2x + 1 = 0$

<details>
<summary>Réponse</summary>

Using the quadratic formula: $x = \\frac{-b \\pm \\sqrt{b^2-4ac}}{2a}$

For $x^2 + 2x + 1 = 0$: $a=1, b=2, c=1$

$x = \\frac{-2 \\pm \\sqrt{4-4}}{2} = \\frac{-2}{2} = -1$

</details>`;

    const result = parseCards(cardsContent, 'math.cards');

    expect(result.cards[0].content).toContain('$x^2 + 2x + 1 = 0$');
    expect(result.cards[0].solution).toContain('$x = \\frac{-b \\pm \\sqrt{b^2-4ac}}{2a}$');
  });

  it('should handle empty cards gracefully', () => {
    const cardsContent = `---
title: 'Empty Cards'
id: 'empty-cards'
level: basic
chapter: 'Test'
course: 'Test'
tags: []
---

# Empty Cards

---

#### Card 1: Empty

<details>
<summary>Réponse</summary>

Empty answer

</details>

---

#### Card 2: Another empty

<details>
<summary>Réponse</summary>

Another empty answer

</details>

`;

    const result = parseCards(cardsContent, 'empty.cards');

    expect(result.cards).toHaveLength(2);
    expect(result.cards[0].content).toContain('Card 1: Empty');
    expect(result.cards[1].content).toContain('Card 2: Another empty');
  });

  it('should throw error for missing frontmatter', () => {
    const noFrontmatter = `# No Frontmatter Cards

Some content here`;

    expect(() => {
      parseCards(noFrontmatter, 'no-frontmatter.cards');
    }).toThrow('Invalid file format: missing frontmatter');
  });

  it('should handle special characters', () => {
    const cardsContent = `---
title: 'Special Cards'
id: 'special-cards'
level: basic
chapter: 'Test'
course: 'Test'
tags: ['special']
---

# Special Cards

---

What does "café" mean? (é, ñ, ü, ç)

<details>
<summary>Réponse</summary>

"Café" means coffee in French.

</details>`;

    const result = parseCards(cardsContent, 'special.cards');

    expect(result.cards[0].content).toContain('"café"');
    expect(result.cards[0].content).toContain('(é, ñ, ü, ç)');
  });
});
