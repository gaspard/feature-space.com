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

const QuizEnhancer = ({ quizId }: { quizId: string }) => {
	useEffect(() => {
		document.querySelectorAll("a#email").forEach((a) => {
			const emailLink = a as HTMLAnchorElement;
			emailLink.href =
				"mailto:g.a.bucher@midasum.com?subject=feature-space.com";
			emailLink.innerHTML = "g.a.bucher@midasum.com";
		});

		document.querySelectorAll("button.toggle-check").forEach((b) => {
			const button = b as HTMLButtonElement;
			button.addEventListener("click", toggleCheck);
		});
	}, [quizId]);

	return null;
};

export default QuizEnhancer;
