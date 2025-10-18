import type { ParsedCards } from "../entity/card.type";

export type Repository = {
  getTableOfContents: () => Promise<Omit<ParsedCards, 'cards'>[]>;
  getCards: (id: string) => Promise<ParsedCards>;
}