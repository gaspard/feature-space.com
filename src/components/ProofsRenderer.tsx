import React from 'react';
import type { ParsedCards } from '../domain/api/entity/card.type';
import CardRendererComponent from './CardRenderer';

interface ProofsRendererProps {
  proofs: ParsedCards;
  static?: boolean;
}

export default function ProofsRenderer({ proofs, static: isStatic = false }: ProofsRendererProps) {
  // Since hints are already in the content markdown, we can reuse CardRenderer
  return <CardRendererComponent cards={proofs} static={isStatic} />;
}

