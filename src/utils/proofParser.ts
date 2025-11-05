import matter from 'gray-matter';
import type { ParsedCards, Card } from '../domain/api/entity/card.type';

export function parseProofs(content: string, filename: string): ParsedCards {
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

    // Skip main title sections (starts with # but not ####)
    if (section.startsWith('#') && !section.startsWith('####')) continue;

    // Extract content up to the solution <details> (without class="hint")
    // This should include the <details class="hint"> section as part of content
    // We need to match content up to the last <details> that doesn't have class="hint"
    const solutionMatch = section.match(/<details(?!\s+class="hint">)[\s\S]*?<summary>.*?<\/summary>([\s\S]*?)<\/details>/);
    
    // Find the position of the solution details tag (without class="hint")
    let contentEnd = section.length;
    if (solutionMatch && solutionMatch.index !== undefined) {
      contentEnd = solutionMatch.index;
    }
    
    // Extract content up to the solution details (this includes hint details)
    const cardContent = section.substring(0, contentEnd).trim();
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
    title: metadata.title || filename.replace(/\.proofs$/, ''),
    cards,
    type: 'proofs',
    id,
    level: metadata.level,
    chapter: metadata.chapter,
    course: metadata.course,
    tags: metadata.tags || []
  };
}

