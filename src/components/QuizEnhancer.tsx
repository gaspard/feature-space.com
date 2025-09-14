import React, { useEffect } from 'react';

const QuizEnhancer: React.FC = () => {
  useEffect(() => {
    const disabledCheckboxes = document.querySelectorAll('input[type="checkbox"]:disabled');
    
    disabledCheckboxes.forEach((checkbox, index) => {
      const input = checkbox as HTMLInputElement;
      const checkboxId = `quiz-${window.location.pathname}-${index}`;
      
      const savedState = localStorage.getItem(checkboxId);
      if (savedState !== null) {
        input.checked = JSON.parse(savedState);
      }
      
      input.disabled = false;
      
      input.addEventListener('change', (e) => {
        localStorage.setItem(checkboxId, JSON.stringify(input.checked));
      });
      const li = input.parentElement;
      if (li) {
        li.addEventListener('click', (e) => {
          if (e.target !== input) {
            input.checked = !input.checked;
          }
        });
      }
    });

    document.querySelectorAll('a#email').forEach((a) => {
      const emailLink = a as HTMLAnchorElement;
      emailLink.href = 'mailto:g.a.bucher@midasum.com?subject=feature-space.com';
      emailLink.innerHTML="g.a.bucher@midasum.com"
    });
  }, []);

  return null;
};

export default QuizEnhancer;