import React, { useState, useEffect, useRef } from 'react';
import type { Card, ParsedCards, QuizOption } from '../utils/cardParser';
import ReactMarkdown from 'react-markdown';
import remarkMath from 'remark-math';
import remarkGfm from 'remark-gfm';
import rehypeKatex from 'rehype-katex';
import rehypeRaw from 'rehype-raw';
import { toggleCheck } from './QuizEnhancer';

interface CardRendererProps {
  cards: ParsedCards;
  static: boolean;
}

export default function CardRenderer({ cards, static: isStatic = false }: CardRendererProps) {
  const [currentIndex, setCurrentIndex] = useState(0);
  const [shuffledCards, setShuffledCards] = useState<Card[]>([...cards.cards]);
  const [cardFocus, setCardFocus] = useState(false);

  const previousCard = () => {
    setCurrentIndex((prev) => (shuffledCards.length + prev - 1 + shuffledCards.length) % shuffledCards.length);
  };

  const nextCard = () => {
    setCurrentIndex((prev) => (prev + 1) % shuffledCards.length);
  };

  function toggleCardFocus() {
    setCardFocus(focus => !focus);
    if (cards.type === 'cards') {
      setShuffledCards([...cards.cards].sort(() => Math.random() - 0.5));
    }
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
        {cards.type === 'quiz' && <button className="toggle-check" onClick={toggleCheck}>Voir les solutions</button>}
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
      {cards.type === 'quiz' && <button className="toggle-check" onClick={toggleCheck}>Voir les solutions</button>}
      <button onClick={toggleCardFocus} className="card-focus">Retour aux cartes</button>
      <button onClick={previousCard} className="card-next">Carte précédente</button>
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
    <div key={card.id} className="card" onClick={handleClick}>
      <div className="card-question">
        <ReactMarkdown
          remarkPlugins={[remarkMath, remarkGfm]}
          rehypePlugins={[rehypeRaw, rehypeKatex]}
          children={card.content}
        />
        {card.options && <ul>{card.options.map((option) => (
          <Option key={option.id} option={option} />
        ))}</ul>}
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

function Option({ option }: { option: QuizOption }) {
  const [checked, setChecked] = useStorage(option.id, false);
  return (
    <li key={option.text} onClick={() => setChecked(!checked)}>
      <input type="checkbox" checked={checked} onChange={() => setChecked(!checked)} className={option.isCorrect ? "correct" : ""} />
      <ReactMarkdown
        remarkPlugins={[remarkMath, remarkGfm]}
        rehypePlugins={[rehypeRaw, rehypeKatex]}
        children={option.text}
      />
    </li>
  );
}

function useStorage(key: string, initialValue: any) {
  const v = localStorage.getItem(key);
  const [value, set] = useState(v ? JSON.parse(v) : initialValue);
  function setValue(value: any) {
    if (typeof window === 'undefined') return;
    localStorage.setItem(key, JSON.stringify(value));
    set(value);
  }
  useEffect(() => {
    if (typeof window === 'undefined') return;
    const item = localStorage.getItem(key);
    if (item) {
      setValue(JSON.parse(item));
    }
  }, [key]);
  return [value, setValue];
}