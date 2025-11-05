import type { VFile } from 'vfile'
import { fileURLToPath } from 'url';

const LAYOUTS: Record<string, string> = {
  quiz: 'Quiz.astro',
  cards: 'Cards.astro',
  proofs: 'Proofs.astro',
  exercises: 'Exercises.astro',
  podcast: 'Podcast.astro',
  concepts: 'Concepts.astro',
  article: 'Article.astro',
};

export function layoutPlugin() {
  const basePath = process.cwd()
  return function (_root: unknown, file: VFile): void {
    if (!file || !file.data || !file.data.astro || !file.data.astro.frontmatter) {
      return;
    }

    const frontmatter = file.data.astro.frontmatter;
    const { type } = frontmatter;

    if (frontmatter.layout) {
      return;
    }

    const layout = LAYOUTS[type || 'article'] || LAYOUTS.article;
    const layoutPath = (file.path.replace(basePath, '')).split('/').slice(3).map(() => '..').join('/') + '/layouts/' + layout;

    frontmatter.layout = layoutPath;
  };
}
