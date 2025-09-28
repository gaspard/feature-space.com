import type { AstroIntegration } from 'astro/integrations';
import { readFileSync, writeFileSync, existsSync, mkdirSync, readdirSync } from 'fs';
import { join, dirname, basename, extname } from 'path';
import { parseQuizContent, validateParsedContent } from '../utils/quizParser';
import { transformToReactFormat, generateSEOHTML, generateStructuredData } from '../utils/quizTransformer';

interface QuizIntegrationOptions {
  outputDir?: string;
  enableShuffling?: boolean;
  preserveOriginal?: boolean;
}

export default function quizIntegration(options: QuizIntegrationOptions = {}): AstroIntegration {
  const {
    outputDir = 'src/generated',
    enableShuffling = true,
    preserveOriginal = true
  } = options;

  return {
    name: 'quiz-processor',
    hooks: {
      'astro:build:start': async () => {
        console.log('🔄 Processing quiz and cards files...');

        const srcDir = join(process.cwd(), 'src');
        const outputPath = join(process.cwd(), outputDir);

        // Ensure output directory exists
        if (!existsSync(outputPath)) {
          mkdirSync(outputPath, { recursive: true });
        }

        // Process all .quiz and .cards files
        processQuizFiles(srcDir, outputPath, { enableShuffling, preserveOriginal });

        console.log('✅ Quiz processing completed');
      }
    }
  };
}

/**
 * Recursively processes all .quiz and .cards files in the source directory
 */
function processQuizFiles(
  srcDir: string,
  outputDir: string,
  options: { enableShuffling: boolean; preserveOriginal: boolean }
): void {
  const files = findQuizFiles(srcDir);

  for (const filePath of files) {
    try {
      processQuizFile(filePath, outputDir, options);
    } catch (error) {
      console.error(`❌ Error processing ${filePath}:`, error);
    }
  }
}

/**
 * Finds all .quiz and .cards files recursively
 */
function findQuizFiles(dir: string): string[] {
  const files: string[] = [];

  try {
    const entries = readdirSync(dir, { withFileTypes: true });

    for (const entry of entries) {
      const fullPath = join(dir, entry.name);

      if (entry.isDirectory()) {
        const subFiles = findQuizFiles(fullPath);
        files.push(...subFiles);
      } else if (entry.isFile() && (entry.name.endsWith('.quiz') || entry.name.endsWith('.cards')) && !entry.name.startsWith('_')) {
        files.push(fullPath);
      }
    }
  } catch (error) {
    console.warn(`Warning: Could not read directory ${dir}:`, error);
  }

  return files;
}

/**
 * Processes a single quiz or cards file
 */
function processQuizFile(
  filePath: string,
  outputDir: string,
  options: { enableShuffling: boolean; preserveOriginal: boolean }
): void {
  const content = readFileSync(filePath, 'utf-8');
  const filename = basename(filePath);

  try {
    // Parse the file
    const parsed = parseQuizContent(content, filename);

    if (!validateParsedContent(parsed)) {
      throw new Error('Invalid parsed content structure');
    }

    // Transform to React format
    const reactData = transformToReactFormat(parsed, filename);

    // Generate output files
    const baseName = filename.replace(/\.(quiz|cards)$/, '');
    const relativePath = filePath.replace(process.cwd(), '').replace(/^\/src/, '');
    const outputSubDir = join(outputDir, dirname(relativePath));

    // Ensure output subdirectory exists
    if (!existsSync(outputSubDir)) {
      mkdirSync(outputSubDir, { recursive: true });
    }

    // Generate JSON data file
    const jsonPath = join(outputSubDir, `${baseName}.json`);
    writeFileSync(jsonPath, JSON.stringify(reactData, null, 2));

    // Generate HTML fallback for SEO
    const htmlPath = join(outputSubDir, `${baseName}.html`);
    const seoHTML = generateSEOHTML(reactData);
    writeFileSync(htmlPath, seoHTML);

    // Generate structured data
    const structuredDataPath = join(outputSubDir, `${baseName}.structured.json`);
    const structuredData = generateStructuredData(reactData);
    writeFileSync(structuredDataPath, structuredData);

    // Generate TypeScript types for the data
    const typesPath = join(outputSubDir, `${baseName}.types.ts`);
    generateTypeDefinitions(reactData, typesPath);

    console.log(`✅ Processed ${filename} -> ${baseName}.json`);

  } catch (error) {
    console.error(`❌ Failed to process ${filename}:`, error);
    throw error;
  }
}

/**
 * Generates TypeScript type definitions for the processed data
 */
function generateTypeDefinitions(data: any, outputPath: string): void {
  const typeDef = `
// Auto-generated type definitions for ${data.title}
export interface ${data.type === 'quiz' ? 'Quiz' : 'Cards'}Data {
  id: string;
  title: string;
  type: '${data.type}';
  items: Array<{
    id: string;
    type: 'question' | 'card';
    title?: string;
    content: string;
    solution?: string;
    options?: Array<{
      id: string;
      text: string;
      isCorrect: boolean;
      isSelected?: boolean;
    }>;
    metadata: {
      order: number;
      originalOrder: number;
      tags: string[];
      difficulty: string;
      category: string;
      isShuffled: boolean;
    };
  }>;
  metadata: {
    quizId: string;
    level: string;
    chapter: string;
    course: string;
    order: number;
    tags: string[];
    totalItems: number;
  };
  seoData: {
    description: string;
    keywords: string[];
    structuredData: any;
  };
}

export const ${data.type === 'quiz' ? 'quiz' : 'cards'}Data: ${data.type === 'quiz' ? 'Quiz' : 'Cards'}Data = ${JSON.stringify(data, null, 2)};
`;

  writeFileSync(outputPath, typeDef);
}

/**
 * Utility function to get processed quiz data
 */
export async function getProcessedQuizData(quizId: string): Promise<any> {
  const outputDir = join(process.cwd(), 'src/generated');
  const jsonPath = join(outputDir, `${quizId}.json`);

  if (!existsSync(jsonPath)) {
    throw new Error(`Processed quiz data not found for ${quizId}`);
  }

  const content = readFileSync(jsonPath, 'utf-8');
  return JSON.parse(content);
}

/**
 * Utility function to get SEO HTML for a quiz
 */
export async function getSEOHTML(quizId: string): Promise<string> {
  const outputDir = join(process.cwd(), 'src/generated');
  const htmlPath = join(outputDir, `${quizId}.html`);

  if (!existsSync(htmlPath)) {
    throw new Error(`SEO HTML not found for ${quizId}`);
  }

  return readFileSync(htmlPath, 'utf-8');
}
