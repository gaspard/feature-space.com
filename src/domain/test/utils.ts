import { readFileSync } from 'node:fs';
import { join } from 'node:path';

export function readFixture(filename: string) {
  return readFileSync(join(process.cwd(), 'src/domain/test/fixtures', filename), 'utf8');
}