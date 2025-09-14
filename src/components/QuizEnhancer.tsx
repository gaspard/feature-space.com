import React, { useEffect } from 'react';

const QuizEnhancer: React.FC = () => {
  useEffect(() => {
    // Find all disabled checkboxes in the content
    const disabledCheckboxes = document.querySelectorAll('input[type="checkbox"]:disabled');
    
    disabledCheckboxes.forEach((checkbox, index) => {
      const input = checkbox as HTMLInputElement;
      const checkboxId = `quiz-${window.location.pathname}-${index}`;
      
      // Load saved state from localStorage
      const savedState = localStorage.getItem(checkboxId);
      if (savedState !== null) {
        input.checked = JSON.parse(savedState);
      }
      
      // Remove disabled attribute to make it interactive
      input.disabled = false;
      
      // Add event listener to save state
      input.addEventListener('change', () => {
        localStorage.setItem(checkboxId, JSON.stringify(input.checked));
      });
      const li = input.parentElement;
      if (li) {
        console.log(li);
        li.addEventListener('click', () => {
            input.checked = !input.checked;
            localStorage.setItem(checkboxId, JSON.stringify(input.checked));
        });
      }
    });
  }, []);

  return null; // This component doesn't render anything
};

export default QuizEnhancer;