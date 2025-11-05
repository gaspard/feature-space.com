import React, { useState, useEffect, useRef } from 'react';
import type { ParsedCards, Card, QuizOption } from '../domain/api/entity/card.type';
import ReactMarkdown from 'react-markdown';
import remarkMath from 'remark-math';
import remarkGfm from 'remark-gfm';
import rehypeKatex from 'rehype-katex';
import rehypeRaw from 'rehype-raw';
import { useQuizStorage } from '../hooks/useStorage';

interface CardRendererProps {
  cards: ParsedCards;
  static: boolean;
}

export function toggleCheck() {
  if (!document.documentElement.classList.contains("check")) {
    document.documentElement.classList.add("check");
    document.querySelectorAll("details").forEach((details) => {
      details.open = true;
    });
  } else {
    document.documentElement.classList.remove("check");
    document.querySelectorAll("details").forEach((details) => {
      details.open = false;
    });
  }
}


export default function CardRenderer({ cards, static: isStatic = false }: CardRendererProps) {
  const [quiz, setOption, resetQuiz] = useQuizStorage(cards.id);
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
        {cards.type === 'quiz' &&
          (<>
            <button className="reset" onClick={resetQuiz}>Réinitialiser</button>
            <button className="toggle-check" onClick={toggleCheck}>Voir les solutions</button>
          </>)}
        <button onClick={toggleCardFocus} className="card-focus">Focus sur une carte</button>
        <div className="cards-container" >
          {cards.cards.map((card, index) => (
            <Card key={card.id} card={card} quiz={quiz} setOption={setOption} />
          ))}
        </div>
        {cards.type === 'quiz' &&
          (<button className="toggle-check" onClick={toggleCheck}>Voir les solutions</button>
          )}
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
      <Card key={currentCard.id} card={currentCard} onClick={cards.type === 'cards' ? nextCard : undefined} quiz={quiz} setOption={setOption} />
    </>
  );
}

function Card({ card, onClick, quiz, setOption }: { card: Card, onClick?: () => void, quiz: Record<string, boolean>, setOption: (key: string, value: boolean) => void }) {
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
          <Option key={option.id} option={option} quiz={quiz} setOption={setOption} />
        ))}</ul>}
      </div>
      <details ref={ref}>
        <summary>Solution</summary>
        <ReactMarkdown
          remarkPlugins={[remarkMath, remarkGfm]}
          rehypePlugins={[rehypeRaw, rehypeKatex]}
          children={card.solution}
        />
      </details>
    </div>
  );
}

function Option({ option, quiz, setOption }: { option: QuizOption, quiz: Record<string, boolean>, setOption: (key: string, value: boolean) => void }) {
  return (
    <li key={option.text} onClick={() => setOption(option.id, !quiz[option.id])}>
      <input type="checkbox" checked={quiz[option.id] || false} onChange={() => setOption(option.id, !quiz[option.id])} className={option.isCorrect ? "correct" : ""} />
      <ReactMarkdown
        remarkPlugins={[remarkMath, remarkGfm]}
        rehypePlugins={[rehypeRaw, rehypeKatex]}
        children={option.text}
      />
    </li>
  );
}
