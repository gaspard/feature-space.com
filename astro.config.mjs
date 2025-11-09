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
import { parseProofs } from "./src/utils/proofParser.ts";
import stackJsonPlugin from './src/domain/feature/StackParserPlugin.gen';
import { layoutPlugin } from "./src/utils/layoutPlugin.ts";

// https://astro.build/config
export default defineConfig({
  site: 'https://feature-space.com',
  redirects: {
    '/mathematique-L1': '/mathematique-l1',
    '/mathematique-L1/:path*': '/mathematique-l1/:path*',
  },
  integrations: [
    react(),
    sitemap({
      filter: (page) => {
        // Filter out URLs with incorrect case (capital L in mathematiques-L1)
        const url = typeof page === 'string' ? page : page.url;
        if (url.includes('/mathematiques-L1') || url.includes('/mathematique-L1')) {
          return false;
        }
        return true;
      },
    }),
    mdx()
  ],
  markdown: {
    remarkPlugins: [remarkMath, layoutPlugin],
    rehypePlugins: [rehypeKatex]
  },
  vite: {
    plugins: [
      tailwindcss(),
      {
        name: 'cards-loader',
        transform(src, id) {
          const type = id.endsWith('.cards') ? 'cards' : id.endsWith('.quiz') ? 'quiz' : id.endsWith('.proofs') ? 'proofs' : null;
          if (type === null) {
            return null;
          }
          const parse = type === 'cards' ? parseCards : type === 'quiz' ? parseQuiz : parseProofs;
          try {
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
      stackJsonPlugin(),
    ],
  },
});
