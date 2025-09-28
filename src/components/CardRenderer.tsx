import React, { useState, useEffect } from 'react';
import type { Card } from '../utils/cardParser';
import ReactMarkdown from 'react-markdown';
import remarkMath from 'remark-math';
import rehypeKatex from 'rehype-katex';

interface CardRendererProps {
  cards: Card[];
  enableShuffling?: boolean;
}

export default function CardRenderer({ cards, enableShuffling = true }: CardRendererProps) {
  const [currentIndex, setCurrentIndex] = useState(0);
  const [showSolution, setShowSolution] = useState(false);
  const [shuffledCards, setShuffledCards] = useState<Card[]>([]);

  useEffect(() => {
    setShuffledCards(enableShuffling ? [...cards].sort(() => Math.random() - 0.5) : cards);
  }, [cards, enableShuffling]);

  const toggleCard = () => {
    setShowSolution(!showSolution);
    if (showSolution) {
      setCurrentIndex((prev) => (prev + 1) % shuffledCards.length);
    }
  };

  if (shuffledCards.length === 0) {
    return (
      <div className="card-container">
        <div className="card-header">
          <span>Loading...</span>
        </div>
        <div className="card-content" onClick={toggleCard}>
          <div className="card-question">
            <ReactMarkdown
              remarkPlugins={[remarkMath]}
              rehypePlugins={[rehypeKatex]}
            >
              {cards[0]?.content || ''}
            </ReactMarkdown>
          </div>
        </div>
      </div>
    );
  }

  const currentCard = shuffledCards[currentIndex];

  return (
    <div className="card-container" onClick={toggleCard}>
      <div className={`card ${showSolution ? "card-solution" : "card-question"}`}>
        {/*<div className="card-header">
          <span>Carte <span className="font-semibold">{currentIndex + 1}</span> sur <span className="font-semibold">{shuffledCards.length}</span>
          </span>
        </div>
        */}

        <div className="card-content" >
          {!showSolution ? (
            <ReactMarkdown
              remarkPlugins={[remarkMath]}
              rehypePlugins={[rehypeKatex]}
            >
              {currentCard.content}
            </ReactMarkdown>
          ) : (
            <>
              <ReactMarkdown
                remarkPlugins={[remarkMath]}
                rehypePlugins={[rehypeKatex]}
              >
                {currentCard.solution}
              </ReactMarkdown>
            </>
          )}
        </div>
      </div>
    </div>
  );
}