import type { AstroIntegration } from 'astro';

export function cardsIntegration(): AstroIntegration {
  return {
    name: 'cards-integration',
    hooks: {
      'astro:config:setup': ({ addPageExtension }) => {
        // Tell Astro to treat .cards files as pages
        addPageExtension('.cards');
      },
    },
  };
}
