import { defineConfig } from 'vitest/config';
import { vitestBdd } from "vitest-bdd";


export default defineConfig({
  plugins: [vitestBdd()],
  test: {
    include: ['src/**/*.feature'],
  }
});