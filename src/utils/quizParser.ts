import matter from 'gray-matter';
import type { Card, ParsedCards, QuizOption } from './cardParser';

export function parseQuiz(content: string, filename: string): ParsedCards {
  // Use gray-matter to parse front matter
  const { data: metadata, content: body } = matter(content);

  if (!metadata || Object.keys(metadata).length === 0) {
    throw new Error('Invalid file format: missing frontmatter');
  }
  const id = metadata.id
  if (!id) {
    throw new Error(`Invalid file format: missing id in frontmatter for ${filename}`);
  }

  const sections = body.split('\n---\n').filter(section => section.trim());

  const cards: Card[] = [];

  let questionIndex = 0;
  for (let i = 0; i < sections.length; i++) {
    const section = sections[i];
    if (!section.trim()) continue;

    // Skip the main title section (starts with # but not ####)
    if (section.trimStart().startsWith('# ')) continue;

    // Extract content before <details> (like cards)
    const detailsMatch = section.match(/^(.*?)\s*<details>/s);
    if (!detailsMatch) {
      throw new Error('Invalid file format: missing details');
    }
    const options: QuizOption[] = [];
    const content: string[] = [];
    for (const line of detailsMatch[1].split('\n')) {
      if (line.startsWith('- [x]')) {
        options.push({ id: `q-${id}-${questionIndex}-${options.length}`, text: line.replace('- [x]', '').trim(), isCorrect: true });
      } else if (line.startsWith('- [ ]')) {
        options.push({ id: `q-${id}-${questionIndex}-${options.length}`, text: line.replace('- [ ]', '').trim(), isCorrect: false });
      } else {
        content.push(line);
      }
    }
    const cardContent = content.join('\n');

    // Extract solution from <details>
    const solutionMatch = section.match(/<details>[\s\S]*?<summary>.*?<\/summary>([\s\S]*?)<\/details>/);
    if (!solutionMatch) {
      throw new Error('Invalid file format: missing solution');
    }
    const solution = solutionMatch[1];

    cards.push({
      id: `q-${id}-${questionIndex}`,
      type: 'question',
      content: cardContent,
      solution,
      options
    });
    questionIndex++;
  }

  return {
    title: metadata.title || filename.replace(/\.quiz$/, ''),
    cards: cards,
    type: 'quiz',
    id,
    level: metadata.level,
    chapter: metadata.chapter,
    course: metadata.course,
    tags: metadata.tags || []
  };
}
