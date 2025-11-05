
export interface QuizOption {
  id: string;
  text: string;
  isCorrect: boolean;
}

export interface Card {
  id: string;
  type: 'card' | 'question';
  content: string;
  options?: QuizOption[];
  solution: string;
}

export interface ParsedCards {
  title: string;
  cards: Card[];
  type: 'cards' | 'quiz' | 'proofs';
  id: string;
  level: string;
  chapter: string;
  course: string;
  tags: string[];
}