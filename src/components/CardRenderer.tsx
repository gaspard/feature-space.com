import React, { useState, useEffect } from 'react';
import type { Card } from '../utils/cardParser';
import ReactMarkdown from 'react-markdown';
import remarkMath from 'remark-math';
import rehypeKatex from 'rehype-katex';

interface CardRendererProps {
  cards: Card[];
  title: string;
}

export default function CardRenderer({ cards, title }: CardRendererProps) {
  const [currentIndex, setCurrentIndex] = useState(0);
  const [showSolution, setShowSolution] = useState(false);
  const [shuffledCards, setShuffledCards] = useState<Card[]>([]);
  const [cardGame, setCardGame] = useState(false);

  const toggleCard = (e: React.MouseEvent<HTMLDivElement>) => {
    e.preventDefault();
    e.stopPropagation();
    setShowSolution(!showSolution);
    if (showSolution) {
      setCurrentIndex((prev) => (prev + 1) % shuffledCards.length);
    }
  };

  useEffect(() => {
    console.log("Card game");
    setCardGame(true);
    setShuffledCards([...cards].sort(() => Math.random() - 0.5));
    document.getElementById("static-cards-container")?.remove();
  }, []);

  // Render static cards for SEO
  if (!cardGame) {
    return (
      <>
        <h1>{title}</h1>
        <div className="static-cards-container" id="static-cards-container">
          {cards.map((card, index) => (
            <div key={card.id} className="static-card">
              <details className="card-details">
                <summary className="card-summary">
                  <ReactMarkdown
                    remarkPlugins={[remarkMath]}
                    rehypePlugins={[rehypeKatex]}
                  >
                    {card.content}
                  </ReactMarkdown>
                </summary>
                <div className="card-solution">
                  <ReactMarkdown
                    remarkPlugins={[remarkMath]}
                    rehypePlugins={[rehypeKatex]}
                  >
                    {card.solution}
                  </ReactMarkdown>
                </div>
              </details>
            </div>
          ))}
        </div>
      </>
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