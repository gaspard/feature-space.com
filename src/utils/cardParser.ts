import matter from 'gray-matter';

export interface QuizOption {
  text: string;
  isCorrect: boolean;
}

export interface Card {
  id: string;
  content: string;
  options?: QuizOption[];
  solution: string;
}

export interface ParsedCards {
  title: string;
  cards: Card[];
  type: 'cards' | 'quiz';
  metadata: {
    id: string;
    level: string;
    chapter: string;
    course: string;
    tags: string[];
  };
}

export function parseCards(content: string, filename: string): ParsedCards {
  // Use gray-matter to parse front matter
  const { data: metadata, content: body } = matter(content);

  if (!metadata || Object.keys(metadata).length === 0) {
    throw new Error('Invalid file format: missing frontmatter');
  }

  // Split by --- to get individual cards
  const sections = body.split('---').filter(section => section.trim());

  const cards: Card[] = [];

  let cardIndex = 0;
  for (let i = 0; i < sections.length; i++) {
    const section = sections[i].trim();
    if (!section) continue;

    // Skip the main title section (starts with # but not ####)
    if (section.startsWith('#') && !section.startsWith('####')) continue;

    // Extract content before <details>
    const detailsMatch = section.match(/^(.*?)\s*<details>/s);
    const cardContent = detailsMatch ? detailsMatch[1].trim() : section;

    // Extract solution from <details>
    const solutionMatch = section.match(/<details>[\s\S]*?<summary>.*?<\/summary>([\s\S]*?)<\/details>/);
    const solution = solutionMatch ? solutionMatch[1].trim() : '';

    if (cardContent) {
      cards.push({
        id: `card-${cardIndex}`,
        content: cardContent,
        solution
      });
      cardIndex++;
    }
  }

  return {
    title: metadata.title || filename.replace(/\.cards$/, ''),
    cards,
    type: 'cards',
    metadata: {
      id: metadata.id,
      level: metadata.level,
      chapter: metadata.chapter,
      course: metadata.course,
      tags: metadata.tags || []
    }
  };
}