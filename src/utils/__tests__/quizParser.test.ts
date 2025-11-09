import { describe, it, expect } from 'vitest';
import { parseQuiz } from '../quizParser';

describe('quizParser', () => {
  it('should parse a basic quiz file', () => {
    const quizContent = `---
title: 'Test Quiz'
quizId: 'test-quiz-123'
level: basic
chapter: 'Test Chapter'
course: 'Test Course'
order: 1
---

# Test Quiz

---

#### Test Question

What is 2+2?

- [ ] **A)** 3
- [x] **B)** 4
- [ ] **C)** 5
- [ ] **D)** 6

<details>
<summary>Solution</summary>

**Answer: B**

2 + 2 = 4

</details>

---

#### Another Question

What is 3+3?

- [ ] **A)** 5
- [ ] **B)** 6
- [x] **C)** 6
- [ ] **D)** 7

<details>
<summary>Solution</summary>

**Answer: C**

3 + 3 = 6

</details>`;

    const result = parseQuiz(quizContent, 'test.quiz');

    expect(result.title).toBe('Test Quiz');
    expect(result.cards).toHaveLength(2);
    expect(result.metadata.id).toBe('test-quiz-123');
    expect(result.metadata.level).toBe('basic');
    expect(result.metadata.tags).toEqual([]);

    // Check first question
    expect(result.cards[0].id).toBe('card-0');
    expect(result.cards[0].content).toContain('What is 2+2?');
    expect(result.cards[0].options).toHaveLength(4);
    expect(result.cards[0].options?.[1].isCorrect).toBe(true);
    expect(result.cards[0].options?.[1].text).toBe('4');
    expect(result.cards[0].solution).toContain('2 + 2 = 4');

    // Check second question
    expect(result.cards[1].id).toBe('card-1');
    expect(result.cards[1].content).toContain('What is 3+3?');
    expect(result.cards[1].options).toHaveLength(4);
    expect(result.cards[1].options?.[2].isCorrect).toBe(true);
    expect(result.cards[1].options?.[2].text).toBe('6');
  });

  it('should handle KaTeX math expressions', () => {
    const quizContent = `---
title: 'Math Quiz'
quizId: 'math-quiz'
level: basic
chapter: 'Algebra'
course: 'Mathematics'
order: 1
---

# Math Quiz

---

#### Math Question

Solve: $x^2 + 2x + 1 = 0$

- [ ] **A)** $x = 1$
- [x] **B)** $x = -1$
- [ ] **C)** $x = 0$
- [ ] **D)** No solution

<details>
<summary>Solution</summary>

**Answer: B**

Using the quadratic formula: $x = \\frac{-b \\pm \\sqrt{b^2-4ac}}{2a}$

For $x^2 + 2x + 1 = 0$: $a=1, b=2, c=1$

$x = \\frac{-2 \\pm \\sqrt{4-4}}{2} = \\frac{-2}{2} = -1$

</details>`;

    const result = parseQuiz(quizContent, 'math.quiz');

    expect(result.cards[0].content).toContain('$x^2 + 2x + 1 = 0$');
    expect(result.cards[0].options?.[1].text).toContain('$x = -1$');
    expect(result.cards[0].solution).toContain('$x = \\frac{-b \\pm \\sqrt{b^2-4ac}}{2a}$');
  });

  it('should handle empty quiz gracefully', () => {
    const quizContent = `---
title: 'Empty Quiz'
quizId: 'empty-quiz'
level: basic
chapter: 'Test'
course: 'Test'
order: 1
---

# Empty Quiz

---

#### Empty Question

No content here.

- [ ] **A)** Option A
- [ ] **B)** Option B

<details>
<summary>Solution</summary>

Empty solution

</details>`;

    const result = parseQuiz(quizContent, 'empty.quiz');

    expect(result.cards).toHaveLength(1);
    expect(result.cards[0].content).toContain('No content here.');
    expect(result.cards[0].options).toHaveLength(2);
  });

  it('should throw error for missing frontmatter', () => {
    const noFrontmatter = `# No Frontmatter Quiz

Some content here`;

    expect(() => {
      parseQuiz(noFrontmatter, 'no-frontmatter.quiz');
    }).toThrow('Invalid file format: missing frontmatter');
  });

  it('should handle special characters', () => {
    const quizContent = `---
title: 'Special Quiz'
quizId: 'special-quiz'
level: basic
chapter: 'Test'
course: 'Test'
order: 1
---

# Special Quiz

---

#### Special Characters

What does "café" mean? (é, ñ, ü, ç)

- [x] **A)** Coffee in French
- [ ] **B)** Tea in Spanish
- [ ] **C)** Water in German
- [ ] **D)** Milk in Italian

<details>
<summary>Solution</summary>

**Answer: A**

"Café" means coffee in French.

</details>`;

    const result = parseQuiz(quizContent, 'special.quiz');

    expect(result.cards[0].content).toContain('"café"');
    expect(result.cards[0].content).toContain('(é, ñ, ü, ç)');
  });
});
