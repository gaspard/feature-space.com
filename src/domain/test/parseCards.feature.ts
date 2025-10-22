import { Given, toRecords } from 'vitest-bdd';
import { readFixture } from './utils';
import { parseCards } from '../../utils/cardParser';
import type { Card, ParsedCards } from '../api/entity/card.type';
import { expect } from 'vitest';

Given('the fixture file {string}', ({ And, Then }, filename: string) => {
  const fileContent = readFixture(filename);
  let list: Card[] = [];

  And('I parse the cards file', () => {
    const parsed = parseCards(fileContent, filename);
    list = parsed.cards
  });

  Then('the list should contain', (table: string[][]) => {
    const rec = toRecords(table);
    for (const record of rec) {
      const found = list.find((c) => c.id === record.id);
      expect(found).toBeDefined();
      expect(found?.content).toBe(record.content);
      expect(found?.solution).toBe(record.solution);
      expect(found?.type).toBe('card');
    }
  });
});
