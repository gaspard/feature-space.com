import matter from 'gray-matter';
import type { ParsedCards, Card } from '../domain/api/entity/card.type';

export function parseCards(content: string, filename: string): ParsedCards {
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

  let cardIndex = 0;
  for (let i = 0; i < sections.length; i++) {
    const section = sections[i].trim();
    if (!section) continue;

    if (section.startsWith('#') && !section.startsWith('####')) continue;

    const detailsMatch = section.match(/^(.*?)\s*<details>/s);
    const cardContent = detailsMatch ? detailsMatch[1].trim() : section;

    const solutionMatch = section.match(/<details>[\s\S]*?<summary>.*?<\/summary>([\s\S]*?)<\/details>/);
    const solution = solutionMatch ? solutionMatch[1].trim() : '';

    if (cardContent) {
      cards.push({
        id: `c-${id}-${cardIndex}`,
        type: 'card',
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
    id,
    level: metadata.level,
    chapter: metadata.chapter,
    course: metadata.course,
    tags: metadata.tags || []
  };
}