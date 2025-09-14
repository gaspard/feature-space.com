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
	}, [quizId]);

	return null;
};

export default QuizEnhancer;
