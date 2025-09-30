// @ts-check
import tailwindcss from "@tailwindcss/vite";
import { defineConfig } from "astro/config";
import remarkMath from "remark-math";
import rehypeKatex from "rehype-katex";
import react from "@astrojs/react";
import sitemap from "@astrojs/sitemap";
import mdx from "@astrojs/mdx";
import { parseCards } from "./src/utils/cardParser.ts";

// https://astro.build/config
export default defineConfig({
  site: 'https://feature-space.com',
  integrations: [
    react(),
    sitemap(),
    mdx()
  ],
  markdown: {
    remarkPlugins: [remarkMath],
    rehypePlugins: [rehypeKatex]
  },
  vite: {
    plugins: [
      tailwindcss(),
      {
        name: 'cards-loader',
        transform(src, id) {
          if (id.endsWith('.cards.md')) {
            try {
              const fileName = id.split('/').pop()
              if (!fileName) {
                throw new Error(`Could not get filename from '${id}'`)
              }
              const parsedContent = parseCards(src, fileName);
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
      },
    ],
  },
});