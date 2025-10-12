import { useStorage } from "../hooks/useStorage"
import { useEffect, useState } from "react"

export default function LLMWarning() {
  const [open, setOpen] = useStorage("llm-warning", false)
  const [isClient, setIsClient] = useState(true)

  useEffect(() => {
    setIsClient(true)
  }, [])

  function toggleOpen() {
    setOpen(!open)
  }

  return (
    <div
      id="llm-warning"
      className={`llm-warning ${isClient && open ? "open" : ""}`}
      onClick={toggleOpen}
    >
      <div className="warning-icon">
        <svg
          xmlns="http://www.w3.org/2000/svg"
          width="24"
          height="24"
          viewBox="0 0 24 24"
          fill="none"
          stroke="currentColor"
          strokeWidth="2"
          strokeLinecap="round"
          strokeLinejoin="round"
        >
          <path
            d="m21.73 18-8-14a2 2 0 0 0-3.48 0l-8 14A2 2 0 0 0 4 21h16a2 2 0 0 0 1.73-3"
          ></path>
          <path d="M12 9v4"></path>
          <path d="M12 17h.01"></path>
        </svg>
      </div>
      <div className="warning-content">
        <h3>Avertissement</h3>
        <p>
          Ce contenu a été généré par une intelligence artificielle (LLM) et peut
          contenir des imprécisions ou des erreurs malgré notre relecture attentive.
          Il s'agit d'un <strong>outil d'apprentissage</strong> et non d'une référence
          académique.
        </p>
        <p>
          Si vous constatez des erreurs, merci de nous les signaler via la page "À
          propos".
        </p>
      </div>
    </div>
  )
}
