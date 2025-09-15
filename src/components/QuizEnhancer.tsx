import React, { useEffect } from "react";

/*
const quizId = (): string => {
  const quizIdMeta = document.querySelector('meta[name="quiz-id"]');
  if (quizIdMeta) {
    return quizIdMeta.getAttribute("content") || "default";
  }

  return decodeURIComponent(window.location.pathname);
};
*/

const QuizEnhancer = ({quizId}: {quizId: string}) => {
	useEffect(() => {
		// const id = quizId();
		const disabledCheckboxes = document.querySelectorAll(
			'input[type="checkbox"]:disabled',
		);

		disabledCheckboxes.forEach((checkbox, index) => {
			const input = checkbox as HTMLInputElement;
			const checkboxId = `quiz-${quizId}-${index}`;

			const savedState = localStorage.getItem(checkboxId);
			if (savedState !== null) {
				input.checked = JSON.parse(savedState);
			}

			input.disabled = false;

			input.addEventListener("change", () => {
				localStorage.setItem(checkboxId, JSON.stringify(input.checked));
			});
			const li = input.parentElement;
			if (li) {
				li.addEventListener("click", (e) => {
					if (e.target !== input) {
						input.checked = !input.checked;
						localStorage.setItem(checkboxId, JSON.stringify(input.checked));
					}
				});
			}
		});

		document.querySelectorAll("a#email").forEach((a) => {
			const emailLink = a as HTMLAnchorElement;
			emailLink.href =
				"mailto:g.a.bucher@midasum.com?subject=feature-space.com";
			emailLink.innerHTML = "g.a.bucher@midasum.com";
		});

		document.querySelectorAll("button.toggle-check").forEach((b) => {
			const button = b as HTMLButtonElement;
      button.addEventListener("click", (e) => {
e.preventDefault();
        if (!button.classList.contains("high")) {
          document.documentElement.classList.add("check");
		      document.querySelectorAll("button.toggle-check").forEach((b) => {
            b.classList.add("high");
          })
          document.querySelectorAll("details").forEach((details) => {
            details.open = true;
          });
        } else {
          document.documentElement.classList.remove("check");
		      document.querySelectorAll("button.toggle-check").forEach((b) => {
            b.classList.remove("high");
          })
          document.querySelectorAll("details").forEach((details) => {
            details.open = false;
          });
        }
      })
		});
	}, [quizId]);

	return null;
};

export default QuizEnhancer;
