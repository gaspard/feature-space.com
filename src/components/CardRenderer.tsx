import React, { useState, useEffect } from 'react';
import type { Card } from '../utils/cardParser';
import ReactMarkdown from 'react-markdown';
import remarkMath from 'remark-math';
import rehypeKatex from 'rehype-katex';

interface CardRendererProps {
  cards: Card[];
  static: boolean;
}

export default function CardRenderer({ cards, static: isStatic = false }: CardRendererProps) {
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

  function toggleCardGame() {
    setCardGame(game => !game);
    setShuffledCards([...cards].sort(() => Math.random() - 0.5));
  }

  useEffect(() => {
    document.getElementById("static-cards-container")?.remove();
  }, []);

  // Render static cards for SEO
  if (!cardGame) {
    return (
      <div id={isStatic ? "static-cards-container" : "dynamic-cards-container"}>
        <button onClick={toggleCardGame} className="cursor-pointer rounded-md bg-gray-100 px-4 py-2 text-center text-sm text-gray-500 border-gray-400 border m-4">Focus sur une carte</button>
        <div className="cards-container" >
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
      </div>
    );
  }

  const currentCard = shuffledCards[currentIndex];

  return (
    <>
      <button onClick={toggleCardGame} className="cursor-pointer rounded-md bg-gray-100 px-4 py-2 text-center text-sm text-gray-500 border-gray-400 border m-4">Retour aux cartes</button>
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
    </>
  );
}