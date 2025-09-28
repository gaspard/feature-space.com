import { describe, it, expect } from 'vitest';
import { parseQuizContent, validateParsedContent, QuizItem, ParsedQuiz, ParsedCards } from '../src/utils/quizParser';

describe('quizParser', () => {
  describe('parseQuizContent', () => {
    it('should parse a basic quiz file correctly', () => {
      const quizContent = `---
title: 'Test Quiz'
layout: '../../layouts/Layout.astro'
quizId: 'test-quiz-123'
order: 1
level: basic
chapter: 'Test Chapter'
course: 'Test Course'
---

# Test Quiz

---

#### Question 1: What is 2+2?

What is the result of 2 + 2?

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

#### Question 2: What is 3+3?

What is the result of 3 + 3?

- [ ] **A)** 5
- [ ] **B)** 6
- [x] **C)** 6
- [ ] **D)** 7

<details>
<summary>Solution</summary>

**Answer: C**

3 + 3 = 6

</details>`;

      const result = parseQuizContent(quizContent, 'test.quiz');

      expect(result).toBeDefined();
      expect(result.title).toBe('Test Quiz');
      expect(result.items).toHaveLength(2);

      // Check first question
      const question1 = result.items[0];
      expect(question1.type).toBe('question');
      expect(question1.title).toBe('Question 1: What is 2+2?');
      expect(question1.options).toHaveLength(4);
      expect(question1.options![0].text).toBe('3');
      expect(question1.options![0].isCorrect).toBe(false);
      expect(question1.options![1].text).toBe('4');
      expect(question1.options![1].isCorrect).toBe(true);
      expect(question1.solution).toContain('Answer: B');
    });

    it('should parse a cards file correctly', () => {
      const cardsContent = `---
title: 'Test Cards'
layout: '../../layouts/Layout.astro'
id: 'test-cards-456'
order: 1
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

      const result = parseQuizContent(cardsContent, 'test.cards');

      expect(result).toBeDefined();
      expect(result.title).toBe('Test Cards');
      expect(result.items).toHaveLength(2);

      // Check first card
      const card1 = result.items[0];
      expect(card1.type).toBe('card');
      expect(card1.content).toContain('What is 2+2?');
      expect(card1.solution).toContain('2 + 2 = 4');
      expect(card1.options).toBeUndefined();
    });

    it('should handle KaTeX math expressions', () => {
      const quizContent = `---
title: 'Math Quiz'
quizId: 'math-quiz'
level: basic
chapter: 'Algebra'
course: 'Mathematics'
---

# Math Quiz

---

#### Question 1: Solve for x

Solve the equation: $x^2 + 2x + 1 = 0$

- [ ] **A)** $x = 1$
- [x] **B)** $x = -1$
- [ ] **C)** $x = 2$
- [ ] **D)** No solution

<details>
<summary>Solution</summary>

**Answer: B**

Using the quadratic formula: $x = \\frac{-b \\pm \\sqrt{b^2-4ac}}{2a}$

For $x^2 + 2x + 1 = 0$: $a=1, b=2, c=1$

$x = \\frac{-2 \\pm \\sqrt{4-4}}{2} = \\frac{-2}{2} = -1$

</details>`;

      const result = parseQuizContent(quizContent, 'math.quiz');

      expect(result.items[0].content).toContain('$x^2 + 2x + 1 = 0$');
      expect(result.items[0].options![0].text).toContain('$x = 1$');
      expect(result.items[0].solution).toContain('$x = \\frac{-b \\pm \\sqrt{b^2-4ac}}{2a}$');
    });

    it('should handle multiple correct answers', () => {
      const quizContent = `---
title: 'Multiple Choice Quiz'
quizId: 'multi-quiz'
level: basic
chapter: 'Test'
course: 'Test'
---

# Multiple Choice Quiz

---

#### Question 1: Which are even numbers?

Which of the following are even numbers?

- [x] **A)** 2
- [ ] **B)** 3
- [x] **C)** 4
- [ ] **D)** 5

<details>
<summary>Solution</summary>

**Answers: A, C**

2 and 4 are even numbers.

</details>`;

      const result = parseQuizContent(quizContent, 'multi.quiz');

      const question = result.items[0];
      expect(question.options![0].isCorrect).toBe(true);  // A
      expect(question.options![1].isCorrect).toBe(false); // B
      expect(question.options![2].isCorrect).toBe(true);  // C
      expect(question.options![3].isCorrect).toBe(false); // D
    });

    it('should handle empty content gracefully', () => {
      const quizContent = `---
title: 'Empty Quiz'
quizId: 'empty-quiz'
level: basic
chapter: 'Test'
course: 'Test'
---

# Empty Quiz

---

#### Question 1: Empty question

---

#### Question 2: Another empty question

`;

      const result = parseQuizContent(quizContent, 'empty.quiz');

      expect(result.items).toHaveLength(2);
      expect(result.items[0].content).toBe('');
      expect(result.items[1].content).toBe('');
    });

    it('should throw error for invalid frontmatter', () => {
      const invalidContent = `---
title: 'Invalid Quiz'
invalid: yaml: [content
---

# Invalid Quiz`;

      expect(() => {
        parseQuizContent(invalidContent, 'invalid.quiz');
      }).toThrow();
    });

    it('should throw error for missing frontmatter', () => {
      const noFrontmatter = `# No Frontmatter Quiz

Some content here`;

      expect(() => {
        parseQuizContent(noFrontmatter, 'no-frontmatter.quiz');
      }).toThrow('Invalid file format: missing frontmatter');
    });
  });

  describe('validateParsedContent', () => {
    it('should validate correct quiz data', () => {
      const validQuiz: ParsedQuiz = {
        frontmatter: { quizId: 'test' },
        title: 'Test Quiz',
        items: [
          {
            id: 'item-1',
            type: 'question',
            title: 'Question 1',
            content: 'What is 2+2?',
            options: [
              { id: 'a', text: '3', isCorrect: false },
              { id: 'b', text: '4', isCorrect: true }
            ],
            metadata: { order: 0, tags: [], difficulty: 'basic', category: '' }
          }
        ],
        metadata: {
          quizId: 'test',
          level: 'basic',
          chapter: 'Test',
          course: 'Test',
          order: 1
        }
      };

      expect(validateParsedContent(validQuiz)).toBe(true);
    });

    it('should validate correct cards data', () => {
      const validCards: ParsedCards = {
        frontmatter: { id: 'test' },
        title: 'Test Cards',
        items: [
          {
            id: 'card-1',
            type: 'card',
            content: 'What is 2+2?',
            metadata: { order: 0, tags: [], difficulty: 'basic', category: '' }
          }
        ],
        metadata: {
          id: 'test',
          level: 'basic',
          chapter: 'Test',
          course: 'Test',
          order: 1,
          tags: ['math']
        }
      };

      expect(validateParsedContent(validCards)).toBe(true);
    });

    it('should reject invalid data - missing title', () => {
      const invalidQuiz: ParsedQuiz = {
        frontmatter: { quizId: 'test' },
        title: '',
        items: [],
        metadata: {
          quizId: 'test',
          level: 'basic',
          chapter: 'Test',
          course: 'Test',
          order: 1
        }
      };

      expect(validateParsedContent(invalidQuiz)).toBe(false);
    });

    it('should reject invalid data - question without options', () => {
      const invalidQuiz: ParsedQuiz = {
        frontmatter: { quizId: 'test' },
        title: 'Test Quiz',
        items: [
          {
            id: 'item-1',
            type: 'question',
            title: 'Question 1',
            content: 'What is 2+2?',
            metadata: { order: 0, tags: [], difficulty: 'basic', category: '' }
          }
        ],
        metadata: {
          quizId: 'test',
          level: 'basic',
          chapter: 'Test',
          course: 'Test',
          order: 1
        }
      };

      expect(validateParsedContent(invalidQuiz)).toBe(false);
    });

    it('should reject invalid data - missing content', () => {
      const invalidQuiz: ParsedQuiz = {
        frontmatter: { quizId: 'test' },
        title: 'Test Quiz',
        items: [
          {
            id: 'item-1',
            type: 'question',
            title: 'Question 1',
            content: '',
            options: [
              { id: 'a', text: '3', isCorrect: false },
              { id: 'b', text: '4', isCorrect: true }
            ],
            metadata: { order: 0, tags: [], difficulty: 'basic', category: '' }
          }
        ],
        metadata: {
          quizId: 'test',
          level: 'basic',
          chapter: 'Test',
          course: 'Test',
          order: 1
        }
      };

      expect(validateParsedContent(invalidQuiz)).toBe(false);
    });
  });

  describe('edge cases', () => {
    it('should handle special characters in content', () => {
      const quizContent = `---
title: 'Special Characters Quiz'
quizId: 'special-quiz'
level: basic
chapter: 'Test'
course: 'Test'
---

# Special Characters Quiz

---

#### Question 1: Special chars

What does "café" mean? (é, ñ, ü, ç)

- [x] **A)** Coffee
- [ ] **B)** Tea
- [ ] **C)** Water
- [ ] **D)** Juice

<details>
<summary>Solution</summary>

**Answer: A**

"Café" means coffee in French.

</details>`;

      const result = parseQuizContent(quizContent, 'special.quiz');

      expect(result.items[0].content).toContain('"café"');
      expect(result.items[0].content).toContain('(é, ñ, ü, ç)');
    });

    it('should handle very long content', () => {
      const longContent = 'A'.repeat(10000);
      const quizContent = `---
title: 'Long Content Quiz'
quizId: 'long-quiz'
level: basic
chapter: 'Test'
course: 'Test'
---

# Long Content Quiz

---

#### Question 1: Long question

${longContent}

- [x] **A)** Yes
- [ ] **B)** No

<details>
<summary>Solution</summary>

**Answer: A**

Long explanation here.

</details>`;

      const result = parseQuizContent(quizContent, 'long.quiz');

      expect(result.items[0].content).toHaveLength(10000);
    });

    it('should handle many questions', () => {
      let quizContent = `---
title: 'Many Questions Quiz'
quizId: 'many-quiz'
level: basic
chapter: 'Test'
course: 'Test'
---

# Many Questions Quiz

`;

      // Generate 100 questions
      for (let i = 1; i <= 100; i++) {
        quizContent += `---
#### Question ${i}: Question ${i}

What is ${i} + ${i}?

- [ ] **A)** ${i * 2 - 1}
- [x] **B)** ${i * 2}
- [ ] **C)** ${i * 2 + 1}
- [ ] **D)** ${i * 2 + 2}

<details>
<summary>Solution</summary>

**Answer: B**

${i} + ${i} = ${i * 2}

</details>

`;
      }

      const result = parseQuizContent(quizContent, 'many.quiz');

      expect(result.items).toHaveLength(100);
      expect(result.items[99].title).toBe('Question 100: Question 100');
    });
  });
});
