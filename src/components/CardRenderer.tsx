import React, { useState, useEffect, useRef } from 'react';
import type { Card, ParsedCards } from '../utils/cardParser';
import ReactMarkdown from 'react-markdown';
import remarkMath from 'remark-math';
import remarkGfm from 'remark-gfm';
import rehypeKatex from 'rehype-katex';
import rehypeRaw from 'rehype-raw';

interface CardRendererProps {
  cards: ParsedCards;
  static: boolean;
}

export default function CardRenderer({ cards, static: isStatic = false }: CardRendererProps) {
  const [currentIndex, setCurrentIndex] = useState(0);
  const [shuffledCards, setShuffledCards] = useState<Card[]>([]);
  const [cardFocus, setCardFocus] = useState(false);

  const nextCard = () => {
    setCurrentIndex((prev) => (prev + 1) % shuffledCards.length);
  };

  function toggleCardFocus() {
    setCardFocus(focus => !focus);
    setShuffledCards([...cards.cards].sort(() => Math.random() - 0.5));
  }

  useEffect(() => {
    document.getElementById("static-cards-container")?.remove();
  }, []);
  if (!cards.cards) {
    // no idea why this is happening
    return null;
  }

  // Render static cards for SEO
  if (!cardFocus) {
    return (
      <div id={isStatic ? "static-cards-container" : "dynamic-cards-container"}>
        <button onClick={toggleCardFocus} className="card-focus">Focus sur une carte</button>
        <div className="cards-container" >
          {cards.cards.map((card, index) => (
            <Card key={card.id} card={card} />
          ))}
        </div>
      </div>
    );
  }

  const currentCard = shuffledCards[currentIndex];

  if (!currentCard) {
    return null;
  }

  return (
    <>
      <button onClick={toggleCardFocus} className="card-focus">Retour aux cartes</button>
      <button onClick={nextCard} className="card-next">Carte suivante</button>
      <Card key={currentCard.id} card={currentCard} onClick={cards.type === 'cards' ? nextCard : undefined} />
    </>
  );
}

function Card({ card, onClick }: { card: Card, onClick?: () => void }) {
  const ref = useRef<HTMLDetailsElement>(null);
  const handleClick = onClick ? (e: React.MouseEvent<HTMLDivElement>) => {
    if (ref.current) {
      e.preventDefault();
      e.stopPropagation();
      if (ref.current.open) {
        onClick();
      } else {
        ref.current.open = true;
      }
    }
  } : undefined;
  return (
    <div key={card.id} className="card static" onClick={handleClick}>
      <div className="card-question">
        <ReactMarkdown
          remarkPlugins={[remarkMath, remarkGfm]}
          rehypePlugins={[rehypeRaw, rehypeKatex]}
          children={card.content}
        />
      </div>
      <details ref={ref}>
        <summary><strong>Solution</strong>
        </summary>
        <ReactMarkdown
          remarkPlugins={[remarkMath, remarkGfm]}
          rehypePlugins={[rehypeRaw, rehypeKatex]}
          children={card.solution}
        />
      </details>
    </div>
  );
}