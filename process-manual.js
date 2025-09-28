import { readFileSync, writeFileSync } from 'fs';
import { parseQuizContent, validateParsedContent } from './src/utils/quizParser.js';
import { transformToReactFormat } from './src/utils/quizTransformer.js';

// Process the quiz file
const quizContent = readFileSync('src/pages/Mathématiques - L2/Algèbre/01 - Structures algébriques/_Algebre-01.basic.quiz', 'utf-8');
const quizParsed = parseQuizContent(quizContent, 'Algebre-01.basic.quiz');
const quizData = transformToReactFormat(quizParsed, 'Algebre-01.basic.quiz');

writeFileSync('src/generated/pages/Mathématiques - L2/Algèbre/01 - Structures algébriques/d4e1f07d.json', JSON.stringify(quizData, null, 2));

// Process the cards file
const cardsContent = readFileSync('src/pages/Mathématiques - L2/Algèbre/01 - Structures algébriques/_Algebre-01.basic.cards', 'utf-8');
const cardsParsed = parseQuizContent(cardsContent, 'Algebre-01.basic.cards');
const cardsData = transformToReactFormat(cardsParsed, 'Algebre-01.basic.cards');

writeFileSync('src/generated/pages/Mathématiques - L2/Algèbre/01 - Structures algébriques/b4c1a9d8-8e6f-4a3b-9c7d-5f01e2b6a9f1.json', JSON.stringify(cardsData, null, 2));

console.log('✅ Manual processing completed');
