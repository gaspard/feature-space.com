// @ts-check
import tailwindcss from "@tailwindcss/vite";
import { defineConfig } from "astro/config";
import remarkMath from "remark-math";
import rehypeKatex from "rehype-katex";
import react from "@astrojs/react";
import sitemap from "@astrojs/sitemap";
import mdx from "@astrojs/mdx";
import { parseCards } from "./src/utils/cardParser.ts";
import { parseQuiz } from "./src/utils/quizParser.ts";

/**
 * @typedef {Object} Frontmatter
 * @property {string} [type] - Content type: 'quiz', 'cards', 'exercises', 'podcast', 'concepts', 'article'
 * @property {string} [layout] - Layout path
 */

// https://astro.build/config
export default defineConfig({
  site: 'https://feature-space.com',
  integrations: [
    react(),
    sitemap(),
    mdx()
  ],
  markdown: {
    remarkPlugins: [remarkMath, setDefaultLayoutPlugin()],
    rehypePlugins: [rehypeKatex]
  },
  vite: {
    plugins: [
      tailwindcss(),
      {
        name: 'cards-loader',
        transform(src, id) {
          const type = id.endsWith('.cards') ? 'cards' : id.endsWith('.quiz') ? 'quiz' : null;
          if (type === null) {
            return null;
          }
          const parse = type === 'cards' ? parseCards : parseQuiz;
          try {
            console.log('Parsing cards file:', id);
            const fileName = id.split('/').pop()
            if (!fileName) {
              throw new Error(`Could not get filename from '${id}'`)
            }
            const parsedContent = parse(src, fileName);
            return {
              code: `export default ${JSON.stringify(parsedContent)};`,
              map: null,
            };
          } catch (error) {
            console.error(`Error parsing cards file ${id}:`, error);
            return {
              code: `export default { title: "Error", cards: [], metadata: {} };`,
              map: null,
            };
          }
        }
      },
    ],
  },
});

/**
 * Remark plugin to inject the correct layout based on content type
 * @returns {any}
 */
function setDefaultLayoutPlugin() {
  return function (/** @type {any} */ _, /** @type {any} */ file) {
    // Check if file has the expected structure
    if (!file || !file.data || !file.data.astro || !file.data.astro.frontmatter) {
      return;
    }
    
    const frontmatter = file.data.astro.frontmatter;
    /** @type {Frontmatter} */
    const { type } = frontmatter;
    
    console.log('Processing file:', file.path, 'type:', type, 'current layout:', frontmatter.layout);
    
    // If layout is already set, don't override it
    if (frontmatter.layout) {
      return;
    }
    
    // Determine layout based on type
    /** @type {string} */
    let layoutPath;
    switch (type) {
      case 'quiz':
        layoutPath = './src/layouts/Quiz.astro';
        break;
      case 'cards':
        layoutPath = './src/layouts/Cards.astro';
        break;
      case 'exercises':
        layoutPath = './src/layouts/Exercises.astro';
        break;
      case 'podcast':
        layoutPath = './src/layouts/Podcast.astro';
        break;
      case 'concepts':
        layoutPath = './src/layouts/Concepts.astro';
        break;
      case 'article':
        layoutPath = './src/layouts/Article.astro';
        break;
      default:
        // Default to Article layout for unknown types
        layoutPath = './src/layouts/Article.astro';
        break;
    }
    
    // Set the layout path relative to the current file
    frontmatter.layout = layoutPath;
    console.log('Injected layout:', layoutPath);
  };
}
